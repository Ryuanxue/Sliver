; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_18.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_18.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_18_bad() #0 !dbg !10 {
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
  br label %source, !dbg !24

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !25), !dbg !26
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !27, metadata !DIExpression()), !dbg !32
  %1 = load i8*, i8** %data, align 8, !dbg !33
  %call = call i64 @strlen(i8* %1) #6, !dbg !34
  store i64 %call, i64* %dataLen, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !35, metadata !DIExpression()), !dbg !92
  %2 = load i64, i64* %dataLen, align 8, !dbg !93
  %sub = sub i64 100, %2, !dbg !95
  %cmp = icmp ugt i64 %sub, 1, !dbg !96
  br i1 %cmp, label %if.then, label %if.end11, !dbg !97

if.then:                                          ; preds = %source
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !98
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !100
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !101
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !103
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !104

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !105
  %5 = load i64, i64* %dataLen, align 8, !dbg !108
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !109
  %6 = load i64, i64* %dataLen, align 8, !dbg !110
  %sub4 = sub i64 100, %6, !dbg !111
  %conv = trunc i64 %sub4 to i32, !dbg !112
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !113
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !114
  %cmp6 = icmp eq i8* %call5, null, !dbg !115
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !116

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !117
  %8 = load i8*, i8** %data, align 8, !dbg !119
  %9 = load i64, i64* %dataLen, align 8, !dbg !120
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !119
  store i8 0, i8* %arrayidx, align 1, !dbg !121
  br label %if.end, !dbg !122

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !123
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !124
  br label %if.end10, !dbg !125

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !126

if.end11:                                         ; preds = %if.end10, %source
  br label %sink, !dbg !127

sink:                                             ; preds = %if.end11
  call void @llvm.dbg.label(metadata !128), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %i, metadata !130, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i32* %n, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !135, metadata !DIExpression()), !dbg !136
  %11 = load i8*, i8** %data, align 8, !dbg !137
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !139
  %cmp13 = icmp eq i32 %call12, 1, !dbg !140
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !141

if.then15:                                        ; preds = %sink
  store i32 0, i32* %intVariable, align 4, !dbg !142
  store i32 0, i32* %i, align 4, !dbg !144
  br label %for.cond, !dbg !146

for.cond:                                         ; preds = %for.inc, %if.then15
  %12 = load i32, i32* %i, align 4, !dbg !147
  %13 = load i32, i32* %n, align 4, !dbg !149
  %cmp16 = icmp slt i32 %12, %13, !dbg !150
  br i1 %cmp16, label %for.body, label %for.end, !dbg !151

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !152
  %inc = add nsw i32 %14, 1, !dbg !152
  store i32 %inc, i32* %intVariable, align 4, !dbg !152
  br label %for.inc, !dbg !154

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !155
  %inc18 = add nsw i32 %15, 1, !dbg !155
  store i32 %inc18, i32* %i, align 4, !dbg !155
  br label %for.cond, !dbg !156, !llvm.loop !157

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !160
  call void @printIntLine(i32 %16), !dbg !161
  br label %if.end19, !dbg !162

if.end19:                                         ; preds = %for.end, %sink
  ret void, !dbg !163
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
define dso_local void @goodB2G() #0 !dbg !164 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !167, metadata !DIExpression()), !dbg !168
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !168
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !168
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !169
  store i8* %arraydecay, i8** %data, align 8, !dbg !170
  br label %source, !dbg !171

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !172), !dbg !173
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !174, metadata !DIExpression()), !dbg !176
  %1 = load i8*, i8** %data, align 8, !dbg !177
  %call = call i64 @strlen(i8* %1) #6, !dbg !178
  store i64 %call, i64* %dataLen, align 8, !dbg !176
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !179, metadata !DIExpression()), !dbg !180
  %2 = load i64, i64* %dataLen, align 8, !dbg !181
  %sub = sub i64 100, %2, !dbg !183
  %cmp = icmp ugt i64 %sub, 1, !dbg !184
  br i1 %cmp, label %if.then, label %if.end11, !dbg !185

if.then:                                          ; preds = %source
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !186
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !188
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !189
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !191
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !192

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !193
  %5 = load i64, i64* %dataLen, align 8, !dbg !196
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !197
  %6 = load i64, i64* %dataLen, align 8, !dbg !198
  %sub4 = sub i64 100, %6, !dbg !199
  %conv = trunc i64 %sub4 to i32, !dbg !200
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !201
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !202
  %cmp6 = icmp eq i8* %call5, null, !dbg !203
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !204

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !205
  %8 = load i8*, i8** %data, align 8, !dbg !207
  %9 = load i64, i64* %dataLen, align 8, !dbg !208
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !207
  store i8 0, i8* %arrayidx, align 1, !dbg !209
  br label %if.end, !dbg !210

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !211
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !212
  br label %if.end10, !dbg !213

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !214

if.end11:                                         ; preds = %if.end10, %source
  br label %sink, !dbg !215

sink:                                             ; preds = %if.end11
  call void @llvm.dbg.label(metadata !216), !dbg !217
  call void @llvm.dbg.declare(metadata i32* %i, metadata !218, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i32* %n, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !223, metadata !DIExpression()), !dbg !224
  %11 = load i8*, i8** %data, align 8, !dbg !225
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !227
  %cmp13 = icmp eq i32 %call12, 1, !dbg !228
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !229

if.then15:                                        ; preds = %sink
  %12 = load i32, i32* %n, align 4, !dbg !230
  %cmp16 = icmp slt i32 %12, 10000, !dbg !233
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !234

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !235
  store i32 0, i32* %i, align 4, !dbg !237
  br label %for.cond, !dbg !239

for.cond:                                         ; preds = %for.inc, %if.then18
  %13 = load i32, i32* %i, align 4, !dbg !240
  %14 = load i32, i32* %n, align 4, !dbg !242
  %cmp19 = icmp slt i32 %13, %14, !dbg !243
  br i1 %cmp19, label %for.body, label %for.end, !dbg !244

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !245
  %inc = add nsw i32 %15, 1, !dbg !245
  store i32 %inc, i32* %intVariable, align 4, !dbg !245
  br label %for.inc, !dbg !247

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !248
  %inc21 = add nsw i32 %16, 1, !dbg !248
  store i32 %inc21, i32* %i, align 4, !dbg !248
  br label %for.cond, !dbg !249, !llvm.loop !250

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !252
  call void @printIntLine(i32 %17), !dbg !253
  br label %if.end22, !dbg !254

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !255

if.end23:                                         ; preds = %if.end22, %sink
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !257 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !261
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !261
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !262
  store i8* %arraydecay, i8** %data, align 8, !dbg !263
  br label %source, !dbg !264

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !265), !dbg !266
  %1 = load i8*, i8** %data, align 8, !dbg !267
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !268
  br label %sink, !dbg !269

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !270), !dbg !271
  call void @llvm.dbg.declare(metadata i32* %i, metadata !272, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata i32* %n, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !277, metadata !DIExpression()), !dbg !278
  %2 = load i8*, i8** %data, align 8, !dbg !279
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !281
  %cmp = icmp eq i32 %call1, 1, !dbg !282
  br i1 %cmp, label %if.then, label %if.end, !dbg !283

if.then:                                          ; preds = %sink
  store i32 0, i32* %intVariable, align 4, !dbg !284
  store i32 0, i32* %i, align 4, !dbg !286
  br label %for.cond, !dbg !288

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !289
  %4 = load i32, i32* %n, align 4, !dbg !291
  %cmp2 = icmp slt i32 %3, %4, !dbg !292
  br i1 %cmp2, label %for.body, label %for.end, !dbg !293

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !294
  %inc = add nsw i32 %5, 1, !dbg !294
  store i32 %inc, i32* %intVariable, align 4, !dbg !294
  br label %for.inc, !dbg !296

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !297
  %inc3 = add nsw i32 %6, 1, !dbg !297
  store i32 %inc3, i32* %i, align 4, !dbg !297
  br label %for.cond, !dbg !298, !llvm.loop !299

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !301
  call void @printIntLine(i32 %7), !dbg !302
  br label %if.end, !dbg !303

if.end:                                           ; preds = %for.end, %sink
  ret void, !dbg !304
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_18_good() #0 !dbg !305 {
entry:
  call void @goodB2G(), !dbg !306
  call void @goodG2B(), !dbg !307
  ret void, !dbg !308
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_091/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_18_bad", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILocation(line: 40, column: 5, scope: !10)
!25 = !DILabel(scope: !10, name: "source", file: !1, line: 41)
!26 = !DILocation(line: 41, column: 1, scope: !10)
!27 = !DILocalVariable(name: "dataLen", scope: !28, file: !1, line: 44, type: !29)
!28 = distinct !DILexicalBlock(scope: !10, file: !1, line: 42, column: 5)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DILocation(line: 44, column: 16, scope: !28)
!33 = !DILocation(line: 44, column: 33, scope: !28)
!34 = !DILocation(line: 44, column: 26, scope: !28)
!35 = !DILocalVariable(name: "pFile", scope: !28, file: !1, line: 45, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !38, line: 7, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !40, line: 49, size: 1728, elements: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !57, !59, !60, !61, !65, !67, !69, !73, !76, !78, !81, !84, !85, !86, !87, !88}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !39, file: !40, line: 51, baseType: !5, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !39, file: !40, line: 54, baseType: !14, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !39, file: !40, line: 55, baseType: !14, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !39, file: !40, line: 56, baseType: !14, size: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !39, file: !40, line: 57, baseType: !14, size: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !39, file: !40, line: 58, baseType: !14, size: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !39, file: !40, line: 59, baseType: !14, size: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !39, file: !40, line: 60, baseType: !14, size: 64, offset: 448)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !39, file: !40, line: 61, baseType: !14, size: 64, offset: 512)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !39, file: !40, line: 64, baseType: !14, size: 64, offset: 576)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !39, file: !40, line: 65, baseType: !14, size: 64, offset: 640)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !39, file: !40, line: 66, baseType: !14, size: 64, offset: 704)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !39, file: !40, line: 68, baseType: !55, size: 64, offset: 768)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !40, line: 36, flags: DIFlagFwdDecl)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !39, file: !40, line: 70, baseType: !58, size: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !39, file: !40, line: 72, baseType: !5, size: 32, offset: 896)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !39, file: !40, line: 73, baseType: !5, size: 32, offset: 928)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !39, file: !40, line: 74, baseType: !62, size: 64, offset: 960)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !63, line: 152, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!64 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !39, file: !40, line: 77, baseType: !66, size: 16, offset: 1024)
!66 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !39, file: !40, line: 78, baseType: !68, size: 8, offset: 1040)
!68 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !39, file: !40, line: 79, baseType: !70, size: 8, offset: 1048)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !39, file: !40, line: 81, baseType: !74, size: 64, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !40, line: 43, baseType: null)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !39, file: !40, line: 89, baseType: !77, size: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !63, line: 153, baseType: !64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !39, file: !40, line: 91, baseType: !79, size: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !40, line: 37, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !39, file: !40, line: 92, baseType: !82, size: 64, offset: 1280)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !40, line: 38, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !39, file: !40, line: 93, baseType: !58, size: 64, offset: 1344)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !39, file: !40, line: 94, baseType: !4, size: 64, offset: 1408)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !39, file: !40, line: 95, baseType: !29, size: 64, offset: 1472)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !39, file: !40, line: 96, baseType: !5, size: 32, offset: 1536)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !39, file: !40, line: 98, baseType: !89, size: 160, offset: 1568)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 20)
!92 = !DILocation(line: 45, column: 16, scope: !28)
!93 = !DILocation(line: 47, column: 17, scope: !94)
!94 = distinct !DILexicalBlock(scope: !28, file: !1, line: 47, column: 13)
!95 = !DILocation(line: 47, column: 16, scope: !94)
!96 = !DILocation(line: 47, column: 25, scope: !94)
!97 = !DILocation(line: 47, column: 13, scope: !28)
!98 = !DILocation(line: 49, column: 21, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !1, line: 48, column: 9)
!100 = !DILocation(line: 49, column: 19, scope: !99)
!101 = !DILocation(line: 50, column: 17, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !1, line: 50, column: 17)
!103 = !DILocation(line: 50, column: 23, scope: !102)
!104 = !DILocation(line: 50, column: 17, scope: !99)
!105 = !DILocation(line: 53, column: 27, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 53, column: 21)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 51, column: 13)
!108 = !DILocation(line: 53, column: 32, scope: !106)
!109 = !DILocation(line: 53, column: 31, scope: !106)
!110 = !DILocation(line: 53, column: 51, scope: !106)
!111 = !DILocation(line: 53, column: 50, scope: !106)
!112 = !DILocation(line: 53, column: 41, scope: !106)
!113 = !DILocation(line: 53, column: 61, scope: !106)
!114 = !DILocation(line: 53, column: 21, scope: !106)
!115 = !DILocation(line: 53, column: 68, scope: !106)
!116 = !DILocation(line: 53, column: 21, scope: !107)
!117 = !DILocation(line: 55, column: 21, scope: !118)
!118 = distinct !DILexicalBlock(scope: !106, file: !1, line: 54, column: 17)
!119 = !DILocation(line: 57, column: 21, scope: !118)
!120 = !DILocation(line: 57, column: 26, scope: !118)
!121 = !DILocation(line: 57, column: 35, scope: !118)
!122 = !DILocation(line: 58, column: 17, scope: !118)
!123 = !DILocation(line: 59, column: 24, scope: !107)
!124 = !DILocation(line: 59, column: 17, scope: !107)
!125 = !DILocation(line: 60, column: 13, scope: !107)
!126 = !DILocation(line: 61, column: 9, scope: !99)
!127 = !DILocation(line: 63, column: 5, scope: !10)
!128 = !DILabel(scope: !10, name: "sink", file: !1, line: 64)
!129 = !DILocation(line: 64, column: 1, scope: !10)
!130 = !DILocalVariable(name: "i", scope: !131, file: !1, line: 66, type: !5)
!131 = distinct !DILexicalBlock(scope: !10, file: !1, line: 65, column: 5)
!132 = !DILocation(line: 66, column: 13, scope: !131)
!133 = !DILocalVariable(name: "n", scope: !131, file: !1, line: 66, type: !5)
!134 = !DILocation(line: 66, column: 16, scope: !131)
!135 = !DILocalVariable(name: "intVariable", scope: !131, file: !1, line: 66, type: !5)
!136 = !DILocation(line: 66, column: 19, scope: !131)
!137 = !DILocation(line: 67, column: 20, scope: !138)
!138 = distinct !DILexicalBlock(scope: !131, file: !1, line: 67, column: 13)
!139 = !DILocation(line: 67, column: 13, scope: !138)
!140 = !DILocation(line: 67, column: 36, scope: !138)
!141 = !DILocation(line: 67, column: 13, scope: !131)
!142 = !DILocation(line: 70, column: 25, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !1, line: 68, column: 9)
!144 = !DILocation(line: 71, column: 20, scope: !145)
!145 = distinct !DILexicalBlock(scope: !143, file: !1, line: 71, column: 13)
!146 = !DILocation(line: 71, column: 18, scope: !145)
!147 = !DILocation(line: 71, column: 25, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !1, line: 71, column: 13)
!149 = !DILocation(line: 71, column: 29, scope: !148)
!150 = !DILocation(line: 71, column: 27, scope: !148)
!151 = !DILocation(line: 71, column: 13, scope: !145)
!152 = !DILocation(line: 74, column: 28, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !1, line: 72, column: 13)
!154 = !DILocation(line: 75, column: 13, scope: !153)
!155 = !DILocation(line: 71, column: 33, scope: !148)
!156 = !DILocation(line: 71, column: 13, scope: !148)
!157 = distinct !{!157, !151, !158, !159}
!158 = !DILocation(line: 75, column: 13, scope: !145)
!159 = !{!"llvm.loop.mustprogress"}
!160 = !DILocation(line: 76, column: 26, scope: !143)
!161 = !DILocation(line: 76, column: 13, scope: !143)
!162 = !DILocation(line: 77, column: 9, scope: !143)
!163 = !DILocation(line: 79, column: 1, scope: !10)
!164 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 86, type: !11, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!165 = !DILocalVariable(name: "data", scope: !164, file: !1, line: 88, type: !14)
!166 = !DILocation(line: 88, column: 12, scope: !164)
!167 = !DILocalVariable(name: "dataBuffer", scope: !164, file: !1, line: 89, type: !18)
!168 = !DILocation(line: 89, column: 10, scope: !164)
!169 = !DILocation(line: 90, column: 12, scope: !164)
!170 = !DILocation(line: 90, column: 10, scope: !164)
!171 = !DILocation(line: 91, column: 5, scope: !164)
!172 = !DILabel(scope: !164, name: "source", file: !1, line: 92)
!173 = !DILocation(line: 92, column: 1, scope: !164)
!174 = !DILocalVariable(name: "dataLen", scope: !175, file: !1, line: 95, type: !29)
!175 = distinct !DILexicalBlock(scope: !164, file: !1, line: 93, column: 5)
!176 = !DILocation(line: 95, column: 16, scope: !175)
!177 = !DILocation(line: 95, column: 33, scope: !175)
!178 = !DILocation(line: 95, column: 26, scope: !175)
!179 = !DILocalVariable(name: "pFile", scope: !175, file: !1, line: 96, type: !36)
!180 = !DILocation(line: 96, column: 16, scope: !175)
!181 = !DILocation(line: 98, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !175, file: !1, line: 98, column: 13)
!183 = !DILocation(line: 98, column: 16, scope: !182)
!184 = !DILocation(line: 98, column: 25, scope: !182)
!185 = !DILocation(line: 98, column: 13, scope: !175)
!186 = !DILocation(line: 100, column: 21, scope: !187)
!187 = distinct !DILexicalBlock(scope: !182, file: !1, line: 99, column: 9)
!188 = !DILocation(line: 100, column: 19, scope: !187)
!189 = !DILocation(line: 101, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !1, line: 101, column: 17)
!191 = !DILocation(line: 101, column: 23, scope: !190)
!192 = !DILocation(line: 101, column: 17, scope: !187)
!193 = !DILocation(line: 104, column: 27, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 104, column: 21)
!195 = distinct !DILexicalBlock(scope: !190, file: !1, line: 102, column: 13)
!196 = !DILocation(line: 104, column: 32, scope: !194)
!197 = !DILocation(line: 104, column: 31, scope: !194)
!198 = !DILocation(line: 104, column: 51, scope: !194)
!199 = !DILocation(line: 104, column: 50, scope: !194)
!200 = !DILocation(line: 104, column: 41, scope: !194)
!201 = !DILocation(line: 104, column: 61, scope: !194)
!202 = !DILocation(line: 104, column: 21, scope: !194)
!203 = !DILocation(line: 104, column: 68, scope: !194)
!204 = !DILocation(line: 104, column: 21, scope: !195)
!205 = !DILocation(line: 106, column: 21, scope: !206)
!206 = distinct !DILexicalBlock(scope: !194, file: !1, line: 105, column: 17)
!207 = !DILocation(line: 108, column: 21, scope: !206)
!208 = !DILocation(line: 108, column: 26, scope: !206)
!209 = !DILocation(line: 108, column: 35, scope: !206)
!210 = !DILocation(line: 109, column: 17, scope: !206)
!211 = !DILocation(line: 110, column: 24, scope: !195)
!212 = !DILocation(line: 110, column: 17, scope: !195)
!213 = !DILocation(line: 111, column: 13, scope: !195)
!214 = !DILocation(line: 112, column: 9, scope: !187)
!215 = !DILocation(line: 114, column: 5, scope: !164)
!216 = !DILabel(scope: !164, name: "sink", file: !1, line: 115)
!217 = !DILocation(line: 115, column: 1, scope: !164)
!218 = !DILocalVariable(name: "i", scope: !219, file: !1, line: 117, type: !5)
!219 = distinct !DILexicalBlock(scope: !164, file: !1, line: 116, column: 5)
!220 = !DILocation(line: 117, column: 13, scope: !219)
!221 = !DILocalVariable(name: "n", scope: !219, file: !1, line: 117, type: !5)
!222 = !DILocation(line: 117, column: 16, scope: !219)
!223 = !DILocalVariable(name: "intVariable", scope: !219, file: !1, line: 117, type: !5)
!224 = !DILocation(line: 117, column: 19, scope: !219)
!225 = !DILocation(line: 118, column: 20, scope: !226)
!226 = distinct !DILexicalBlock(scope: !219, file: !1, line: 118, column: 13)
!227 = !DILocation(line: 118, column: 13, scope: !226)
!228 = !DILocation(line: 118, column: 36, scope: !226)
!229 = !DILocation(line: 118, column: 13, scope: !219)
!230 = !DILocation(line: 121, column: 17, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !1, line: 121, column: 17)
!232 = distinct !DILexicalBlock(scope: !226, file: !1, line: 119, column: 9)
!233 = !DILocation(line: 121, column: 19, scope: !231)
!234 = !DILocation(line: 121, column: 17, scope: !232)
!235 = !DILocation(line: 123, column: 29, scope: !236)
!236 = distinct !DILexicalBlock(scope: !231, file: !1, line: 122, column: 13)
!237 = !DILocation(line: 124, column: 24, scope: !238)
!238 = distinct !DILexicalBlock(scope: !236, file: !1, line: 124, column: 17)
!239 = !DILocation(line: 124, column: 22, scope: !238)
!240 = !DILocation(line: 124, column: 29, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !1, line: 124, column: 17)
!242 = !DILocation(line: 124, column: 33, scope: !241)
!243 = !DILocation(line: 124, column: 31, scope: !241)
!244 = !DILocation(line: 124, column: 17, scope: !238)
!245 = !DILocation(line: 127, column: 32, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !1, line: 125, column: 17)
!247 = !DILocation(line: 128, column: 17, scope: !246)
!248 = !DILocation(line: 124, column: 37, scope: !241)
!249 = !DILocation(line: 124, column: 17, scope: !241)
!250 = distinct !{!250, !244, !251, !159}
!251 = !DILocation(line: 128, column: 17, scope: !238)
!252 = !DILocation(line: 129, column: 30, scope: !236)
!253 = !DILocation(line: 129, column: 17, scope: !236)
!254 = !DILocation(line: 130, column: 13, scope: !236)
!255 = !DILocation(line: 131, column: 9, scope: !232)
!256 = !DILocation(line: 133, column: 1, scope: !164)
!257 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 136, type: !11, scopeLine: 137, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!258 = !DILocalVariable(name: "data", scope: !257, file: !1, line: 138, type: !14)
!259 = !DILocation(line: 138, column: 12, scope: !257)
!260 = !DILocalVariable(name: "dataBuffer", scope: !257, file: !1, line: 139, type: !18)
!261 = !DILocation(line: 139, column: 10, scope: !257)
!262 = !DILocation(line: 140, column: 12, scope: !257)
!263 = !DILocation(line: 140, column: 10, scope: !257)
!264 = !DILocation(line: 141, column: 5, scope: !257)
!265 = !DILabel(scope: !257, name: "source", file: !1, line: 142)
!266 = !DILocation(line: 142, column: 1, scope: !257)
!267 = !DILocation(line: 144, column: 12, scope: !257)
!268 = !DILocation(line: 144, column: 5, scope: !257)
!269 = !DILocation(line: 145, column: 5, scope: !257)
!270 = !DILabel(scope: !257, name: "sink", file: !1, line: 146)
!271 = !DILocation(line: 146, column: 1, scope: !257)
!272 = !DILocalVariable(name: "i", scope: !273, file: !1, line: 148, type: !5)
!273 = distinct !DILexicalBlock(scope: !257, file: !1, line: 147, column: 5)
!274 = !DILocation(line: 148, column: 13, scope: !273)
!275 = !DILocalVariable(name: "n", scope: !273, file: !1, line: 148, type: !5)
!276 = !DILocation(line: 148, column: 16, scope: !273)
!277 = !DILocalVariable(name: "intVariable", scope: !273, file: !1, line: 148, type: !5)
!278 = !DILocation(line: 148, column: 19, scope: !273)
!279 = !DILocation(line: 149, column: 20, scope: !280)
!280 = distinct !DILexicalBlock(scope: !273, file: !1, line: 149, column: 13)
!281 = !DILocation(line: 149, column: 13, scope: !280)
!282 = !DILocation(line: 149, column: 36, scope: !280)
!283 = !DILocation(line: 149, column: 13, scope: !273)
!284 = !DILocation(line: 152, column: 25, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !1, line: 150, column: 9)
!286 = !DILocation(line: 153, column: 20, scope: !287)
!287 = distinct !DILexicalBlock(scope: !285, file: !1, line: 153, column: 13)
!288 = !DILocation(line: 153, column: 18, scope: !287)
!289 = !DILocation(line: 153, column: 25, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !1, line: 153, column: 13)
!291 = !DILocation(line: 153, column: 29, scope: !290)
!292 = !DILocation(line: 153, column: 27, scope: !290)
!293 = !DILocation(line: 153, column: 13, scope: !287)
!294 = !DILocation(line: 156, column: 28, scope: !295)
!295 = distinct !DILexicalBlock(scope: !290, file: !1, line: 154, column: 13)
!296 = !DILocation(line: 157, column: 13, scope: !295)
!297 = !DILocation(line: 153, column: 33, scope: !290)
!298 = !DILocation(line: 153, column: 13, scope: !290)
!299 = distinct !{!299, !293, !300, !159}
!300 = !DILocation(line: 157, column: 13, scope: !287)
!301 = !DILocation(line: 158, column: 26, scope: !285)
!302 = !DILocation(line: 158, column: 13, scope: !285)
!303 = !DILocation(line: 159, column: 9, scope: !285)
!304 = !DILocation(line: 161, column: 1, scope: !257)
!305 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_18_good", scope: !1, file: !1, line: 163, type: !11, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!306 = !DILocation(line: 165, column: 5, scope: !305)
!307 = !DILocation(line: 166, column: 5, scope: !305)
!308 = !DILocation(line: 167, column: 1, scope: !305)
