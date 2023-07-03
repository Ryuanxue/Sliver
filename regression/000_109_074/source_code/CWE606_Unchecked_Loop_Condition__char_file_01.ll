; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_01.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_01_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !32, metadata !DIExpression()), !dbg !89
  %2 = load i64, i64* %dataLen, align 8, !dbg !90
  %sub = sub i64 100, %2, !dbg !92
  %cmp = icmp ugt i64 %sub, 1, !dbg !93
  br i1 %cmp, label %if.then, label %if.end11, !dbg !94

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !95
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !97
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !98
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !100
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !101

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !102
  %5 = load i64, i64* %dataLen, align 8, !dbg !105
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !106
  %6 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub4 = sub i64 100, %6, !dbg !108
  %conv = trunc i64 %sub4 to i32, !dbg !109
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !110
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !111
  %cmp6 = icmp eq i8* %call5, null, !dbg !112
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !113

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !114
  %8 = load i8*, i8** %data, align 8, !dbg !116
  %9 = load i64, i64* %dataLen, align 8, !dbg !117
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !116
  store i8 0, i8* %arrayidx, align 1, !dbg !118
  br label %if.end, !dbg !119

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !120
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !121
  br label %if.end10, !dbg !122

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !123

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !124, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata i32* %n, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !129, metadata !DIExpression()), !dbg !130
  %11 = load i8*, i8** %data, align 8, !dbg !131
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !133
  %cmp13 = icmp eq i32 %call12, 1, !dbg !134
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !135

if.then15:                                        ; preds = %if.end11
  store i32 0, i32* %intVariable, align 4, !dbg !136
  store i32 0, i32* %i, align 4, !dbg !138
  br label %for.cond, !dbg !140

for.cond:                                         ; preds = %for.inc, %if.then15
  %12 = load i32, i32* %i, align 4, !dbg !141
  %13 = load i32, i32* %n, align 4, !dbg !143
  %cmp16 = icmp slt i32 %12, %13, !dbg !144
  br i1 %cmp16, label %for.body, label %for.end, !dbg !145

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !146
  %inc = add nsw i32 %14, 1, !dbg !146
  store i32 %inc, i32* %intVariable, align 4, !dbg !146
  br label %for.inc, !dbg !148

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !149
  %inc18 = add nsw i32 %15, 1, !dbg !149
  store i32 %inc18, i32* %i, align 4, !dbg !149
  br label %for.cond, !dbg !150, !llvm.loop !151

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !154
  call void @printIntLine(i32 %16), !dbg !155
  br label %if.end19, !dbg !156

if.end19:                                         ; preds = %for.end, %if.end11
  ret void, !dbg !157
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !158 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !162
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !162
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !163
  store i8* %arraydecay, i8** %data, align 8, !dbg !164
  %1 = load i8*, i8** %data, align 8, !dbg !165
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %i, metadata !167, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i32* %n, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !172, metadata !DIExpression()), !dbg !173
  %2 = load i8*, i8** %data, align 8, !dbg !174
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !176
  %cmp = icmp eq i32 %call1, 1, !dbg !177
  br i1 %cmp, label %if.then, label %if.end, !dbg !178

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !179
  store i32 0, i32* %i, align 4, !dbg !181
  br label %for.cond, !dbg !183

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !184
  %4 = load i32, i32* %n, align 4, !dbg !186
  %cmp2 = icmp slt i32 %3, %4, !dbg !187
  br i1 %cmp2, label %for.body, label %for.end, !dbg !188

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !189
  %inc = add nsw i32 %5, 1, !dbg !189
  store i32 %inc, i32* %intVariable, align 4, !dbg !189
  br label %for.inc, !dbg !191

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !192
  %inc3 = add nsw i32 %6, 1, !dbg !192
  store i32 %inc3, i32* %i, align 4, !dbg !192
  br label %for.cond, !dbg !193, !llvm.loop !194

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !196
  call void @printIntLine(i32 %7), !dbg !197
  br label %if.end, !dbg !198

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !199
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !200 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !203, metadata !DIExpression()), !dbg !204
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !204
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !204
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !205
  store i8* %arraydecay, i8** %data, align 8, !dbg !206
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !207, metadata !DIExpression()), !dbg !209
  %1 = load i8*, i8** %data, align 8, !dbg !210
  %call = call i64 @strlen(i8* %1) #6, !dbg !211
  store i64 %call, i64* %dataLen, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !212, metadata !DIExpression()), !dbg !213
  %2 = load i64, i64* %dataLen, align 8, !dbg !214
  %sub = sub i64 100, %2, !dbg !216
  %cmp = icmp ugt i64 %sub, 1, !dbg !217
  br i1 %cmp, label %if.then, label %if.end11, !dbg !218

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !219
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !221
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !222
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !224
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !225

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !226
  %5 = load i64, i64* %dataLen, align 8, !dbg !229
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !230
  %6 = load i64, i64* %dataLen, align 8, !dbg !231
  %sub4 = sub i64 100, %6, !dbg !232
  %conv = trunc i64 %sub4 to i32, !dbg !233
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !234
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !235
  %cmp6 = icmp eq i8* %call5, null, !dbg !236
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !237

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !238
  %8 = load i8*, i8** %data, align 8, !dbg !240
  %9 = load i64, i64* %dataLen, align 8, !dbg !241
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !240
  store i8 0, i8* %arrayidx, align 1, !dbg !242
  br label %if.end, !dbg !243

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !244
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !245
  br label %if.end10, !dbg !246

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !247

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !248, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata i32* %n, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !253, metadata !DIExpression()), !dbg !254
  %11 = load i8*, i8** %data, align 8, !dbg !255
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !257
  %cmp13 = icmp eq i32 %call12, 1, !dbg !258
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !259

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %n, align 4, !dbg !260
  %cmp16 = icmp slt i32 %12, 10000, !dbg !263
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !264

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !265
  store i32 0, i32* %i, align 4, !dbg !267
  br label %for.cond, !dbg !269

for.cond:                                         ; preds = %for.inc, %if.then18
  %13 = load i32, i32* %i, align 4, !dbg !270
  %14 = load i32, i32* %n, align 4, !dbg !272
  %cmp19 = icmp slt i32 %13, %14, !dbg !273
  br i1 %cmp19, label %for.body, label %for.end, !dbg !274

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !275
  %inc = add nsw i32 %15, 1, !dbg !275
  store i32 %inc, i32* %intVariable, align 4, !dbg !275
  br label %for.inc, !dbg !277

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !278
  %inc21 = add nsw i32 %16, 1, !dbg !278
  store i32 %inc21, i32* %i, align 4, !dbg !278
  br label %for.cond, !dbg !279, !llvm.loop !280

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !282
  call void @printIntLine(i32 %17), !dbg !283
  br label %if.end22, !dbg !284

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !285

if.end23:                                         ; preds = %if.end22, %if.end11
  ret void, !dbg !286
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_01_good() #0 !dbg !287 {
entry:
  call void @goodG2B(), !dbg !288
  call void @goodB2G(), !dbg !289
  ret void, !dbg !290
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_01.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_074/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_01_bad", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 37, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 37, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 38, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 38, column: 10, scope: !10)
!22 = !DILocation(line: 39, column: 12, scope: !10)
!23 = !DILocation(line: 39, column: 10, scope: !10)
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 42, type: !26)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 40, column: 5)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 42, column: 16, scope: !25)
!30 = !DILocation(line: 42, column: 33, scope: !25)
!31 = !DILocation(line: 42, column: 26, scope: !25)
!32 = !DILocalVariable(name: "pFile", scope: !25, file: !1, line: 43, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !35, line: 7, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !54, !56, !57, !58, !62, !64, !66, !70, !73, !75, !78, !81, !82, !83, !84, !85}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !36, file: !37, line: 51, baseType: !5, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !36, file: !37, line: 54, baseType: !14, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !36, file: !37, line: 55, baseType: !14, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !36, file: !37, line: 56, baseType: !14, size: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !36, file: !37, line: 57, baseType: !14, size: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !36, file: !37, line: 58, baseType: !14, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !36, file: !37, line: 59, baseType: !14, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !36, file: !37, line: 60, baseType: !14, size: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !36, file: !37, line: 61, baseType: !14, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !36, file: !37, line: 64, baseType: !14, size: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !36, file: !37, line: 65, baseType: !14, size: 64, offset: 640)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !36, file: !37, line: 66, baseType: !14, size: 64, offset: 704)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !36, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !37, line: 36, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !36, file: !37, line: 70, baseType: !55, size: 64, offset: 832)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !36, file: !37, line: 72, baseType: !5, size: 32, offset: 896)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !36, file: !37, line: 73, baseType: !5, size: 32, offset: 928)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !36, file: !37, line: 74, baseType: !59, size: 64, offset: 960)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !60, line: 152, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!61 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !36, file: !37, line: 77, baseType: !63, size: 16, offset: 1024)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !36, file: !37, line: 78, baseType: !65, size: 8, offset: 1040)
!65 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !36, file: !37, line: 79, baseType: !67, size: 8, offset: 1048)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !36, file: !37, line: 81, baseType: !71, size: 64, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !37, line: 43, baseType: null)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !36, file: !37, line: 89, baseType: !74, size: 64, offset: 1152)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !60, line: 153, baseType: !61)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !36, file: !37, line: 91, baseType: !76, size: 64, offset: 1216)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !37, line: 37, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !36, file: !37, line: 92, baseType: !79, size: 64, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !37, line: 38, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !36, file: !37, line: 93, baseType: !55, size: 64, offset: 1344)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !36, file: !37, line: 94, baseType: !4, size: 64, offset: 1408)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !36, file: !37, line: 95, baseType: !26, size: 64, offset: 1472)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !36, file: !37, line: 96, baseType: !5, size: 32, offset: 1536)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !36, file: !37, line: 98, baseType: !86, size: 160, offset: 1568)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 20)
!89 = !DILocation(line: 43, column: 16, scope: !25)
!90 = !DILocation(line: 45, column: 17, scope: !91)
!91 = distinct !DILexicalBlock(scope: !25, file: !1, line: 45, column: 13)
!92 = !DILocation(line: 45, column: 16, scope: !91)
!93 = !DILocation(line: 45, column: 25, scope: !91)
!94 = !DILocation(line: 45, column: 13, scope: !25)
!95 = !DILocation(line: 47, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 46, column: 9)
!97 = !DILocation(line: 47, column: 19, scope: !96)
!98 = !DILocation(line: 48, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 48, column: 17)
!100 = !DILocation(line: 48, column: 23, scope: !99)
!101 = !DILocation(line: 48, column: 17, scope: !96)
!102 = !DILocation(line: 51, column: 27, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 51, column: 21)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 49, column: 13)
!105 = !DILocation(line: 51, column: 32, scope: !103)
!106 = !DILocation(line: 51, column: 31, scope: !103)
!107 = !DILocation(line: 51, column: 51, scope: !103)
!108 = !DILocation(line: 51, column: 50, scope: !103)
!109 = !DILocation(line: 51, column: 41, scope: !103)
!110 = !DILocation(line: 51, column: 61, scope: !103)
!111 = !DILocation(line: 51, column: 21, scope: !103)
!112 = !DILocation(line: 51, column: 68, scope: !103)
!113 = !DILocation(line: 51, column: 21, scope: !104)
!114 = !DILocation(line: 53, column: 21, scope: !115)
!115 = distinct !DILexicalBlock(scope: !103, file: !1, line: 52, column: 17)
!116 = !DILocation(line: 55, column: 21, scope: !115)
!117 = !DILocation(line: 55, column: 26, scope: !115)
!118 = !DILocation(line: 55, column: 35, scope: !115)
!119 = !DILocation(line: 56, column: 17, scope: !115)
!120 = !DILocation(line: 57, column: 24, scope: !104)
!121 = !DILocation(line: 57, column: 17, scope: !104)
!122 = !DILocation(line: 58, column: 13, scope: !104)
!123 = !DILocation(line: 59, column: 9, scope: !96)
!124 = !DILocalVariable(name: "i", scope: !125, file: !1, line: 62, type: !5)
!125 = distinct !DILexicalBlock(scope: !10, file: !1, line: 61, column: 5)
!126 = !DILocation(line: 62, column: 13, scope: !125)
!127 = !DILocalVariable(name: "n", scope: !125, file: !1, line: 62, type: !5)
!128 = !DILocation(line: 62, column: 16, scope: !125)
!129 = !DILocalVariable(name: "intVariable", scope: !125, file: !1, line: 62, type: !5)
!130 = !DILocation(line: 62, column: 19, scope: !125)
!131 = !DILocation(line: 63, column: 20, scope: !132)
!132 = distinct !DILexicalBlock(scope: !125, file: !1, line: 63, column: 13)
!133 = !DILocation(line: 63, column: 13, scope: !132)
!134 = !DILocation(line: 63, column: 36, scope: !132)
!135 = !DILocation(line: 63, column: 13, scope: !125)
!136 = !DILocation(line: 66, column: 25, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !1, line: 64, column: 9)
!138 = !DILocation(line: 67, column: 20, scope: !139)
!139 = distinct !DILexicalBlock(scope: !137, file: !1, line: 67, column: 13)
!140 = !DILocation(line: 67, column: 18, scope: !139)
!141 = !DILocation(line: 67, column: 25, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !1, line: 67, column: 13)
!143 = !DILocation(line: 67, column: 29, scope: !142)
!144 = !DILocation(line: 67, column: 27, scope: !142)
!145 = !DILocation(line: 67, column: 13, scope: !139)
!146 = !DILocation(line: 70, column: 28, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !1, line: 68, column: 13)
!148 = !DILocation(line: 71, column: 13, scope: !147)
!149 = !DILocation(line: 67, column: 33, scope: !142)
!150 = !DILocation(line: 67, column: 13, scope: !142)
!151 = distinct !{!151, !145, !152, !153}
!152 = !DILocation(line: 71, column: 13, scope: !139)
!153 = !{!"llvm.loop.mustprogress"}
!154 = !DILocation(line: 72, column: 26, scope: !137)
!155 = !DILocation(line: 72, column: 13, scope: !137)
!156 = !DILocation(line: 73, column: 9, scope: !137)
!157 = !DILocation(line: 75, column: 1, scope: !10)
!158 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 82, type: !11, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!159 = !DILocalVariable(name: "data", scope: !158, file: !1, line: 84, type: !14)
!160 = !DILocation(line: 84, column: 12, scope: !158)
!161 = !DILocalVariable(name: "dataBuffer", scope: !158, file: !1, line: 85, type: !18)
!162 = !DILocation(line: 85, column: 10, scope: !158)
!163 = !DILocation(line: 86, column: 12, scope: !158)
!164 = !DILocation(line: 86, column: 10, scope: !158)
!165 = !DILocation(line: 88, column: 12, scope: !158)
!166 = !DILocation(line: 88, column: 5, scope: !158)
!167 = !DILocalVariable(name: "i", scope: !168, file: !1, line: 90, type: !5)
!168 = distinct !DILexicalBlock(scope: !158, file: !1, line: 89, column: 5)
!169 = !DILocation(line: 90, column: 13, scope: !168)
!170 = !DILocalVariable(name: "n", scope: !168, file: !1, line: 90, type: !5)
!171 = !DILocation(line: 90, column: 16, scope: !168)
!172 = !DILocalVariable(name: "intVariable", scope: !168, file: !1, line: 90, type: !5)
!173 = !DILocation(line: 90, column: 19, scope: !168)
!174 = !DILocation(line: 91, column: 20, scope: !175)
!175 = distinct !DILexicalBlock(scope: !168, file: !1, line: 91, column: 13)
!176 = !DILocation(line: 91, column: 13, scope: !175)
!177 = !DILocation(line: 91, column: 36, scope: !175)
!178 = !DILocation(line: 91, column: 13, scope: !168)
!179 = !DILocation(line: 94, column: 25, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !1, line: 92, column: 9)
!181 = !DILocation(line: 95, column: 20, scope: !182)
!182 = distinct !DILexicalBlock(scope: !180, file: !1, line: 95, column: 13)
!183 = !DILocation(line: 95, column: 18, scope: !182)
!184 = !DILocation(line: 95, column: 25, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 95, column: 13)
!186 = !DILocation(line: 95, column: 29, scope: !185)
!187 = !DILocation(line: 95, column: 27, scope: !185)
!188 = !DILocation(line: 95, column: 13, scope: !182)
!189 = !DILocation(line: 98, column: 28, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !1, line: 96, column: 13)
!191 = !DILocation(line: 99, column: 13, scope: !190)
!192 = !DILocation(line: 95, column: 33, scope: !185)
!193 = !DILocation(line: 95, column: 13, scope: !185)
!194 = distinct !{!194, !188, !195, !153}
!195 = !DILocation(line: 99, column: 13, scope: !182)
!196 = !DILocation(line: 100, column: 26, scope: !180)
!197 = !DILocation(line: 100, column: 13, scope: !180)
!198 = !DILocation(line: 101, column: 9, scope: !180)
!199 = !DILocation(line: 103, column: 1, scope: !158)
!200 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 106, type: !11, scopeLine: 107, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!201 = !DILocalVariable(name: "data", scope: !200, file: !1, line: 108, type: !14)
!202 = !DILocation(line: 108, column: 12, scope: !200)
!203 = !DILocalVariable(name: "dataBuffer", scope: !200, file: !1, line: 109, type: !18)
!204 = !DILocation(line: 109, column: 10, scope: !200)
!205 = !DILocation(line: 110, column: 12, scope: !200)
!206 = !DILocation(line: 110, column: 10, scope: !200)
!207 = !DILocalVariable(name: "dataLen", scope: !208, file: !1, line: 113, type: !26)
!208 = distinct !DILexicalBlock(scope: !200, file: !1, line: 111, column: 5)
!209 = !DILocation(line: 113, column: 16, scope: !208)
!210 = !DILocation(line: 113, column: 33, scope: !208)
!211 = !DILocation(line: 113, column: 26, scope: !208)
!212 = !DILocalVariable(name: "pFile", scope: !208, file: !1, line: 114, type: !33)
!213 = !DILocation(line: 114, column: 16, scope: !208)
!214 = !DILocation(line: 116, column: 17, scope: !215)
!215 = distinct !DILexicalBlock(scope: !208, file: !1, line: 116, column: 13)
!216 = !DILocation(line: 116, column: 16, scope: !215)
!217 = !DILocation(line: 116, column: 25, scope: !215)
!218 = !DILocation(line: 116, column: 13, scope: !208)
!219 = !DILocation(line: 118, column: 21, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 117, column: 9)
!221 = !DILocation(line: 118, column: 19, scope: !220)
!222 = !DILocation(line: 119, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !1, line: 119, column: 17)
!224 = !DILocation(line: 119, column: 23, scope: !223)
!225 = !DILocation(line: 119, column: 17, scope: !220)
!226 = !DILocation(line: 122, column: 27, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 122, column: 21)
!228 = distinct !DILexicalBlock(scope: !223, file: !1, line: 120, column: 13)
!229 = !DILocation(line: 122, column: 32, scope: !227)
!230 = !DILocation(line: 122, column: 31, scope: !227)
!231 = !DILocation(line: 122, column: 51, scope: !227)
!232 = !DILocation(line: 122, column: 50, scope: !227)
!233 = !DILocation(line: 122, column: 41, scope: !227)
!234 = !DILocation(line: 122, column: 61, scope: !227)
!235 = !DILocation(line: 122, column: 21, scope: !227)
!236 = !DILocation(line: 122, column: 68, scope: !227)
!237 = !DILocation(line: 122, column: 21, scope: !228)
!238 = !DILocation(line: 124, column: 21, scope: !239)
!239 = distinct !DILexicalBlock(scope: !227, file: !1, line: 123, column: 17)
!240 = !DILocation(line: 126, column: 21, scope: !239)
!241 = !DILocation(line: 126, column: 26, scope: !239)
!242 = !DILocation(line: 126, column: 35, scope: !239)
!243 = !DILocation(line: 127, column: 17, scope: !239)
!244 = !DILocation(line: 128, column: 24, scope: !228)
!245 = !DILocation(line: 128, column: 17, scope: !228)
!246 = !DILocation(line: 129, column: 13, scope: !228)
!247 = !DILocation(line: 130, column: 9, scope: !220)
!248 = !DILocalVariable(name: "i", scope: !249, file: !1, line: 133, type: !5)
!249 = distinct !DILexicalBlock(scope: !200, file: !1, line: 132, column: 5)
!250 = !DILocation(line: 133, column: 13, scope: !249)
!251 = !DILocalVariable(name: "n", scope: !249, file: !1, line: 133, type: !5)
!252 = !DILocation(line: 133, column: 16, scope: !249)
!253 = !DILocalVariable(name: "intVariable", scope: !249, file: !1, line: 133, type: !5)
!254 = !DILocation(line: 133, column: 19, scope: !249)
!255 = !DILocation(line: 134, column: 20, scope: !256)
!256 = distinct !DILexicalBlock(scope: !249, file: !1, line: 134, column: 13)
!257 = !DILocation(line: 134, column: 13, scope: !256)
!258 = !DILocation(line: 134, column: 36, scope: !256)
!259 = !DILocation(line: 134, column: 13, scope: !249)
!260 = !DILocation(line: 137, column: 17, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 137, column: 17)
!262 = distinct !DILexicalBlock(scope: !256, file: !1, line: 135, column: 9)
!263 = !DILocation(line: 137, column: 19, scope: !261)
!264 = !DILocation(line: 137, column: 17, scope: !262)
!265 = !DILocation(line: 139, column: 29, scope: !266)
!266 = distinct !DILexicalBlock(scope: !261, file: !1, line: 138, column: 13)
!267 = !DILocation(line: 140, column: 24, scope: !268)
!268 = distinct !DILexicalBlock(scope: !266, file: !1, line: 140, column: 17)
!269 = !DILocation(line: 140, column: 22, scope: !268)
!270 = !DILocation(line: 140, column: 29, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !1, line: 140, column: 17)
!272 = !DILocation(line: 140, column: 33, scope: !271)
!273 = !DILocation(line: 140, column: 31, scope: !271)
!274 = !DILocation(line: 140, column: 17, scope: !268)
!275 = !DILocation(line: 143, column: 32, scope: !276)
!276 = distinct !DILexicalBlock(scope: !271, file: !1, line: 141, column: 17)
!277 = !DILocation(line: 144, column: 17, scope: !276)
!278 = !DILocation(line: 140, column: 37, scope: !271)
!279 = !DILocation(line: 140, column: 17, scope: !271)
!280 = distinct !{!280, !274, !281, !153}
!281 = !DILocation(line: 144, column: 17, scope: !268)
!282 = !DILocation(line: 145, column: 30, scope: !266)
!283 = !DILocation(line: 145, column: 17, scope: !266)
!284 = !DILocation(line: 146, column: 13, scope: !266)
!285 = !DILocation(line: 147, column: 9, scope: !262)
!286 = !DILocation(line: 149, column: 1, scope: !200)
!287 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_01_good", scope: !1, file: !1, line: 151, type: !11, scopeLine: 152, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!288 = !DILocation(line: 153, column: 5, scope: !287)
!289 = !DILocation(line: 154, column: 5, scope: !287)
!290 = !DILocation(line: 155, column: 1, scope: !287)
