; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_16.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_16.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_16_bad() #0 !dbg !10 {
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
  br label %while.body, !dbg !24

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !25, metadata !DIExpression()), !dbg !31
  %1 = load i8*, i8** %data, align 8, !dbg !32
  %call = call i64 @strlen(i8* %1) #6, !dbg !33
  store i64 %call, i64* %dataLen, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !34, metadata !DIExpression()), !dbg !91
  %2 = load i64, i64* %dataLen, align 8, !dbg !92
  %sub = sub i64 100, %2, !dbg !94
  %cmp = icmp ugt i64 %sub, 1, !dbg !95
  br i1 %cmp, label %if.then, label %if.end11, !dbg !96

if.then:                                          ; preds = %while.body
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !97
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !99
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !100
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !102
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !103

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !104
  %5 = load i64, i64* %dataLen, align 8, !dbg !107
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !108
  %6 = load i64, i64* %dataLen, align 8, !dbg !109
  %sub4 = sub i64 100, %6, !dbg !110
  %conv = trunc i64 %sub4 to i32, !dbg !111
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !112
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !113
  %cmp6 = icmp eq i8* %call5, null, !dbg !114
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !115

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !116
  %8 = load i8*, i8** %data, align 8, !dbg !118
  %9 = load i64, i64* %dataLen, align 8, !dbg !119
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !118
  store i8 0, i8* %arrayidx, align 1, !dbg !120
  br label %if.end, !dbg !121

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !122
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !123
  br label %if.end10, !dbg !124

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !125

if.end11:                                         ; preds = %if.end10, %while.body
  br label %while.end, !dbg !126

while.end:                                        ; preds = %if.end11
  br label %while.body12, !dbg !127

while.body12:                                     ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !128, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %n, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !134, metadata !DIExpression()), !dbg !135
  %11 = load i8*, i8** %data, align 8, !dbg !136
  %call13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !138
  %cmp14 = icmp eq i32 %call13, 1, !dbg !139
  br i1 %cmp14, label %if.then16, label %if.end20, !dbg !140

if.then16:                                        ; preds = %while.body12
  store i32 0, i32* %intVariable, align 4, !dbg !141
  store i32 0, i32* %i, align 4, !dbg !143
  br label %for.cond, !dbg !145

for.cond:                                         ; preds = %for.inc, %if.then16
  %12 = load i32, i32* %i, align 4, !dbg !146
  %13 = load i32, i32* %n, align 4, !dbg !148
  %cmp17 = icmp slt i32 %12, %13, !dbg !149
  br i1 %cmp17, label %for.body, label %for.end, !dbg !150

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !151
  %inc = add nsw i32 %14, 1, !dbg !151
  store i32 %inc, i32* %intVariable, align 4, !dbg !151
  br label %for.inc, !dbg !153

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !154
  %inc19 = add nsw i32 %15, 1, !dbg !154
  store i32 %inc19, i32* %i, align 4, !dbg !154
  br label %for.cond, !dbg !155, !llvm.loop !156

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !159
  call void @printIntLine(i32 %16), !dbg !160
  br label %if.end20, !dbg !161

if.end20:                                         ; preds = %for.end, %while.body12
  br label %while.end21, !dbg !162

while.end21:                                      ; preds = %if.end20
  ret void, !dbg !163
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
  br label %while.body, !dbg !171

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !172, metadata !DIExpression()), !dbg !175
  %1 = load i8*, i8** %data, align 8, !dbg !176
  %call = call i64 @strlen(i8* %1) #6, !dbg !177
  store i64 %call, i64* %dataLen, align 8, !dbg !175
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !178, metadata !DIExpression()), !dbg !179
  %2 = load i64, i64* %dataLen, align 8, !dbg !180
  %sub = sub i64 100, %2, !dbg !182
  %cmp = icmp ugt i64 %sub, 1, !dbg !183
  br i1 %cmp, label %if.then, label %if.end11, !dbg !184

if.then:                                          ; preds = %while.body
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !185
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !187
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !188
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !190
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !191

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !192
  %5 = load i64, i64* %dataLen, align 8, !dbg !195
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !196
  %6 = load i64, i64* %dataLen, align 8, !dbg !197
  %sub4 = sub i64 100, %6, !dbg !198
  %conv = trunc i64 %sub4 to i32, !dbg !199
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !200
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !201
  %cmp6 = icmp eq i8* %call5, null, !dbg !202
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !203

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !204
  %8 = load i8*, i8** %data, align 8, !dbg !206
  %9 = load i64, i64* %dataLen, align 8, !dbg !207
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !206
  store i8 0, i8* %arrayidx, align 1, !dbg !208
  br label %if.end, !dbg !209

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !210
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !211
  br label %if.end10, !dbg !212

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !213

if.end11:                                         ; preds = %if.end10, %while.body
  br label %while.end, !dbg !214

while.end:                                        ; preds = %if.end11
  br label %while.body12, !dbg !215

while.body12:                                     ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !216, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i32* %n, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !222, metadata !DIExpression()), !dbg !223
  %11 = load i8*, i8** %data, align 8, !dbg !224
  %call13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !226
  %cmp14 = icmp eq i32 %call13, 1, !dbg !227
  br i1 %cmp14, label %if.then16, label %if.end24, !dbg !228

if.then16:                                        ; preds = %while.body12
  %12 = load i32, i32* %n, align 4, !dbg !229
  %cmp17 = icmp slt i32 %12, 10000, !dbg !232
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !233

if.then19:                                        ; preds = %if.then16
  store i32 0, i32* %intVariable, align 4, !dbg !234
  store i32 0, i32* %i, align 4, !dbg !236
  br label %for.cond, !dbg !238

for.cond:                                         ; preds = %for.inc, %if.then19
  %13 = load i32, i32* %i, align 4, !dbg !239
  %14 = load i32, i32* %n, align 4, !dbg !241
  %cmp20 = icmp slt i32 %13, %14, !dbg !242
  br i1 %cmp20, label %for.body, label %for.end, !dbg !243

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !244
  %inc = add nsw i32 %15, 1, !dbg !244
  store i32 %inc, i32* %intVariable, align 4, !dbg !244
  br label %for.inc, !dbg !246

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !247
  %inc22 = add nsw i32 %16, 1, !dbg !247
  store i32 %inc22, i32* %i, align 4, !dbg !247
  br label %for.cond, !dbg !248, !llvm.loop !249

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !251
  call void @printIntLine(i32 %17), !dbg !252
  br label %if.end23, !dbg !253

if.end23:                                         ; preds = %for.end, %if.then16
  br label %if.end24, !dbg !254

if.end24:                                         ; preds = %if.end23, %while.body12
  br label %while.end25, !dbg !255

while.end25:                                      ; preds = %if.end24
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
  br label %while.body, !dbg !264

while.body:                                       ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !265
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !267
  br label %while.end, !dbg !268

while.end:                                        ; preds = %while.body
  br label %while.body1, !dbg !269

while.body1:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !270, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata i32* %n, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !276, metadata !DIExpression()), !dbg !277
  %2 = load i8*, i8** %data, align 8, !dbg !278
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !280
  %cmp = icmp eq i32 %call2, 1, !dbg !281
  br i1 %cmp, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %while.body1
  store i32 0, i32* %intVariable, align 4, !dbg !283
  store i32 0, i32* %i, align 4, !dbg !285
  br label %for.cond, !dbg !287

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !288
  %4 = load i32, i32* %n, align 4, !dbg !290
  %cmp3 = icmp slt i32 %3, %4, !dbg !291
  br i1 %cmp3, label %for.body, label %for.end, !dbg !292

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !293
  %inc = add nsw i32 %5, 1, !dbg !293
  store i32 %inc, i32* %intVariable, align 4, !dbg !293
  br label %for.inc, !dbg !295

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !296
  %inc4 = add nsw i32 %6, 1, !dbg !296
  store i32 %inc4, i32* %i, align 4, !dbg !296
  br label %for.cond, !dbg !297, !llvm.loop !298

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !300
  call void @printIntLine(i32 %7), !dbg !301
  br label %if.end, !dbg !302

if.end:                                           ; preds = %for.end, %while.body1
  br label %while.end5, !dbg !303

while.end5:                                       ; preds = %if.end
  ret void, !dbg !304
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_16_good() #0 !dbg !305 {
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_16.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_089/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_16_bad", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!25 = !DILocalVariable(name: "dataLen", scope: !26, file: !1, line: 44, type: !28)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 42, column: 9)
!27 = distinct !DILexicalBlock(scope: !10, file: !1, line: 41, column: 5)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 44, column: 20, scope: !26)
!32 = !DILocation(line: 44, column: 37, scope: !26)
!33 = !DILocation(line: 44, column: 30, scope: !26)
!34 = !DILocalVariable(name: "pFile", scope: !26, file: !1, line: 45, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !37, line: 7, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !39, line: 49, size: 1728, elements: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !56, !58, !59, !60, !64, !66, !68, !72, !75, !77, !80, !83, !84, !85, !86, !87}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !38, file: !39, line: 51, baseType: !5, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !38, file: !39, line: 54, baseType: !14, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !38, file: !39, line: 55, baseType: !14, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !38, file: !39, line: 56, baseType: !14, size: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !38, file: !39, line: 57, baseType: !14, size: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !38, file: !39, line: 58, baseType: !14, size: 64, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !38, file: !39, line: 59, baseType: !14, size: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !38, file: !39, line: 60, baseType: !14, size: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !38, file: !39, line: 61, baseType: !14, size: 64, offset: 512)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !38, file: !39, line: 64, baseType: !14, size: 64, offset: 576)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !38, file: !39, line: 65, baseType: !14, size: 64, offset: 640)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !38, file: !39, line: 66, baseType: !14, size: 64, offset: 704)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !38, file: !39, line: 68, baseType: !54, size: 64, offset: 768)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !39, line: 36, flags: DIFlagFwdDecl)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !38, file: !39, line: 70, baseType: !57, size: 64, offset: 832)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !38, file: !39, line: 72, baseType: !5, size: 32, offset: 896)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !38, file: !39, line: 73, baseType: !5, size: 32, offset: 928)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !38, file: !39, line: 74, baseType: !61, size: 64, offset: 960)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !62, line: 152, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!63 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !38, file: !39, line: 77, baseType: !65, size: 16, offset: 1024)
!65 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !38, file: !39, line: 78, baseType: !67, size: 8, offset: 1040)
!67 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !38, file: !39, line: 79, baseType: !69, size: 8, offset: 1048)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !38, file: !39, line: 81, baseType: !73, size: 64, offset: 1088)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !39, line: 43, baseType: null)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !38, file: !39, line: 89, baseType: !76, size: 64, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !62, line: 153, baseType: !63)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !38, file: !39, line: 91, baseType: !78, size: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !39, line: 37, flags: DIFlagFwdDecl)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !38, file: !39, line: 92, baseType: !81, size: 64, offset: 1280)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !39, line: 38, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !38, file: !39, line: 93, baseType: !57, size: 64, offset: 1344)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !38, file: !39, line: 94, baseType: !4, size: 64, offset: 1408)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !38, file: !39, line: 95, baseType: !28, size: 64, offset: 1472)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !38, file: !39, line: 96, baseType: !5, size: 32, offset: 1536)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !38, file: !39, line: 98, baseType: !88, size: 160, offset: 1568)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 20)
!91 = !DILocation(line: 45, column: 20, scope: !26)
!92 = !DILocation(line: 47, column: 21, scope: !93)
!93 = distinct !DILexicalBlock(scope: !26, file: !1, line: 47, column: 17)
!94 = !DILocation(line: 47, column: 20, scope: !93)
!95 = !DILocation(line: 47, column: 29, scope: !93)
!96 = !DILocation(line: 47, column: 17, scope: !26)
!97 = !DILocation(line: 49, column: 25, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 48, column: 13)
!99 = !DILocation(line: 49, column: 23, scope: !98)
!100 = !DILocation(line: 50, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 50, column: 21)
!102 = !DILocation(line: 50, column: 27, scope: !101)
!103 = !DILocation(line: 50, column: 21, scope: !98)
!104 = !DILocation(line: 53, column: 31, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 53, column: 25)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 51, column: 17)
!107 = !DILocation(line: 53, column: 36, scope: !105)
!108 = !DILocation(line: 53, column: 35, scope: !105)
!109 = !DILocation(line: 53, column: 55, scope: !105)
!110 = !DILocation(line: 53, column: 54, scope: !105)
!111 = !DILocation(line: 53, column: 45, scope: !105)
!112 = !DILocation(line: 53, column: 65, scope: !105)
!113 = !DILocation(line: 53, column: 25, scope: !105)
!114 = !DILocation(line: 53, column: 72, scope: !105)
!115 = !DILocation(line: 53, column: 25, scope: !106)
!116 = !DILocation(line: 55, column: 25, scope: !117)
!117 = distinct !DILexicalBlock(scope: !105, file: !1, line: 54, column: 21)
!118 = !DILocation(line: 57, column: 25, scope: !117)
!119 = !DILocation(line: 57, column: 30, scope: !117)
!120 = !DILocation(line: 57, column: 39, scope: !117)
!121 = !DILocation(line: 58, column: 21, scope: !117)
!122 = !DILocation(line: 59, column: 28, scope: !106)
!123 = !DILocation(line: 59, column: 21, scope: !106)
!124 = !DILocation(line: 60, column: 17, scope: !106)
!125 = !DILocation(line: 61, column: 13, scope: !98)
!126 = !DILocation(line: 63, column: 9, scope: !27)
!127 = !DILocation(line: 65, column: 5, scope: !10)
!128 = !DILocalVariable(name: "i", scope: !129, file: !1, line: 68, type: !5)
!129 = distinct !DILexicalBlock(scope: !130, file: !1, line: 67, column: 9)
!130 = distinct !DILexicalBlock(scope: !10, file: !1, line: 66, column: 5)
!131 = !DILocation(line: 68, column: 17, scope: !129)
!132 = !DILocalVariable(name: "n", scope: !129, file: !1, line: 68, type: !5)
!133 = !DILocation(line: 68, column: 20, scope: !129)
!134 = !DILocalVariable(name: "intVariable", scope: !129, file: !1, line: 68, type: !5)
!135 = !DILocation(line: 68, column: 23, scope: !129)
!136 = !DILocation(line: 69, column: 24, scope: !137)
!137 = distinct !DILexicalBlock(scope: !129, file: !1, line: 69, column: 17)
!138 = !DILocation(line: 69, column: 17, scope: !137)
!139 = !DILocation(line: 69, column: 40, scope: !137)
!140 = !DILocation(line: 69, column: 17, scope: !129)
!141 = !DILocation(line: 72, column: 29, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !1, line: 70, column: 13)
!143 = !DILocation(line: 73, column: 24, scope: !144)
!144 = distinct !DILexicalBlock(scope: !142, file: !1, line: 73, column: 17)
!145 = !DILocation(line: 73, column: 22, scope: !144)
!146 = !DILocation(line: 73, column: 29, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !1, line: 73, column: 17)
!148 = !DILocation(line: 73, column: 33, scope: !147)
!149 = !DILocation(line: 73, column: 31, scope: !147)
!150 = !DILocation(line: 73, column: 17, scope: !144)
!151 = !DILocation(line: 76, column: 32, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !1, line: 74, column: 17)
!153 = !DILocation(line: 77, column: 17, scope: !152)
!154 = !DILocation(line: 73, column: 37, scope: !147)
!155 = !DILocation(line: 73, column: 17, scope: !147)
!156 = distinct !{!156, !150, !157, !158}
!157 = !DILocation(line: 77, column: 17, scope: !144)
!158 = !{!"llvm.loop.mustprogress"}
!159 = !DILocation(line: 78, column: 30, scope: !142)
!160 = !DILocation(line: 78, column: 17, scope: !142)
!161 = !DILocation(line: 79, column: 13, scope: !142)
!162 = !DILocation(line: 81, column: 9, scope: !130)
!163 = !DILocation(line: 83, column: 1, scope: !10)
!164 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 90, type: !11, scopeLine: 91, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!165 = !DILocalVariable(name: "data", scope: !164, file: !1, line: 92, type: !14)
!166 = !DILocation(line: 92, column: 12, scope: !164)
!167 = !DILocalVariable(name: "dataBuffer", scope: !164, file: !1, line: 93, type: !18)
!168 = !DILocation(line: 93, column: 10, scope: !164)
!169 = !DILocation(line: 94, column: 12, scope: !164)
!170 = !DILocation(line: 94, column: 10, scope: !164)
!171 = !DILocation(line: 95, column: 5, scope: !164)
!172 = !DILocalVariable(name: "dataLen", scope: !173, file: !1, line: 99, type: !28)
!173 = distinct !DILexicalBlock(scope: !174, file: !1, line: 97, column: 9)
!174 = distinct !DILexicalBlock(scope: !164, file: !1, line: 96, column: 5)
!175 = !DILocation(line: 99, column: 20, scope: !173)
!176 = !DILocation(line: 99, column: 37, scope: !173)
!177 = !DILocation(line: 99, column: 30, scope: !173)
!178 = !DILocalVariable(name: "pFile", scope: !173, file: !1, line: 100, type: !35)
!179 = !DILocation(line: 100, column: 20, scope: !173)
!180 = !DILocation(line: 102, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !173, file: !1, line: 102, column: 17)
!182 = !DILocation(line: 102, column: 20, scope: !181)
!183 = !DILocation(line: 102, column: 29, scope: !181)
!184 = !DILocation(line: 102, column: 17, scope: !173)
!185 = !DILocation(line: 104, column: 25, scope: !186)
!186 = distinct !DILexicalBlock(scope: !181, file: !1, line: 103, column: 13)
!187 = !DILocation(line: 104, column: 23, scope: !186)
!188 = !DILocation(line: 105, column: 21, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !1, line: 105, column: 21)
!190 = !DILocation(line: 105, column: 27, scope: !189)
!191 = !DILocation(line: 105, column: 21, scope: !186)
!192 = !DILocation(line: 108, column: 31, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 108, column: 25)
!194 = distinct !DILexicalBlock(scope: !189, file: !1, line: 106, column: 17)
!195 = !DILocation(line: 108, column: 36, scope: !193)
!196 = !DILocation(line: 108, column: 35, scope: !193)
!197 = !DILocation(line: 108, column: 55, scope: !193)
!198 = !DILocation(line: 108, column: 54, scope: !193)
!199 = !DILocation(line: 108, column: 45, scope: !193)
!200 = !DILocation(line: 108, column: 65, scope: !193)
!201 = !DILocation(line: 108, column: 25, scope: !193)
!202 = !DILocation(line: 108, column: 72, scope: !193)
!203 = !DILocation(line: 108, column: 25, scope: !194)
!204 = !DILocation(line: 110, column: 25, scope: !205)
!205 = distinct !DILexicalBlock(scope: !193, file: !1, line: 109, column: 21)
!206 = !DILocation(line: 112, column: 25, scope: !205)
!207 = !DILocation(line: 112, column: 30, scope: !205)
!208 = !DILocation(line: 112, column: 39, scope: !205)
!209 = !DILocation(line: 113, column: 21, scope: !205)
!210 = !DILocation(line: 114, column: 28, scope: !194)
!211 = !DILocation(line: 114, column: 21, scope: !194)
!212 = !DILocation(line: 115, column: 17, scope: !194)
!213 = !DILocation(line: 116, column: 13, scope: !186)
!214 = !DILocation(line: 118, column: 9, scope: !174)
!215 = !DILocation(line: 120, column: 5, scope: !164)
!216 = !DILocalVariable(name: "i", scope: !217, file: !1, line: 123, type: !5)
!217 = distinct !DILexicalBlock(scope: !218, file: !1, line: 122, column: 9)
!218 = distinct !DILexicalBlock(scope: !164, file: !1, line: 121, column: 5)
!219 = !DILocation(line: 123, column: 17, scope: !217)
!220 = !DILocalVariable(name: "n", scope: !217, file: !1, line: 123, type: !5)
!221 = !DILocation(line: 123, column: 20, scope: !217)
!222 = !DILocalVariable(name: "intVariable", scope: !217, file: !1, line: 123, type: !5)
!223 = !DILocation(line: 123, column: 23, scope: !217)
!224 = !DILocation(line: 124, column: 24, scope: !225)
!225 = distinct !DILexicalBlock(scope: !217, file: !1, line: 124, column: 17)
!226 = !DILocation(line: 124, column: 17, scope: !225)
!227 = !DILocation(line: 124, column: 40, scope: !225)
!228 = !DILocation(line: 124, column: 17, scope: !217)
!229 = !DILocation(line: 127, column: 21, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !1, line: 127, column: 21)
!231 = distinct !DILexicalBlock(scope: !225, file: !1, line: 125, column: 13)
!232 = !DILocation(line: 127, column: 23, scope: !230)
!233 = !DILocation(line: 127, column: 21, scope: !231)
!234 = !DILocation(line: 129, column: 33, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !1, line: 128, column: 17)
!236 = !DILocation(line: 130, column: 28, scope: !237)
!237 = distinct !DILexicalBlock(scope: !235, file: !1, line: 130, column: 21)
!238 = !DILocation(line: 130, column: 26, scope: !237)
!239 = !DILocation(line: 130, column: 33, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !1, line: 130, column: 21)
!241 = !DILocation(line: 130, column: 37, scope: !240)
!242 = !DILocation(line: 130, column: 35, scope: !240)
!243 = !DILocation(line: 130, column: 21, scope: !237)
!244 = !DILocation(line: 133, column: 36, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !1, line: 131, column: 21)
!246 = !DILocation(line: 134, column: 21, scope: !245)
!247 = !DILocation(line: 130, column: 41, scope: !240)
!248 = !DILocation(line: 130, column: 21, scope: !240)
!249 = distinct !{!249, !243, !250, !158}
!250 = !DILocation(line: 134, column: 21, scope: !237)
!251 = !DILocation(line: 135, column: 34, scope: !235)
!252 = !DILocation(line: 135, column: 21, scope: !235)
!253 = !DILocation(line: 136, column: 17, scope: !235)
!254 = !DILocation(line: 137, column: 13, scope: !231)
!255 = !DILocation(line: 139, column: 9, scope: !218)
!256 = !DILocation(line: 141, column: 1, scope: !164)
!257 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 144, type: !11, scopeLine: 145, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!258 = !DILocalVariable(name: "data", scope: !257, file: !1, line: 146, type: !14)
!259 = !DILocation(line: 146, column: 12, scope: !257)
!260 = !DILocalVariable(name: "dataBuffer", scope: !257, file: !1, line: 147, type: !18)
!261 = !DILocation(line: 147, column: 10, scope: !257)
!262 = !DILocation(line: 148, column: 12, scope: !257)
!263 = !DILocation(line: 148, column: 10, scope: !257)
!264 = !DILocation(line: 149, column: 5, scope: !257)
!265 = !DILocation(line: 152, column: 16, scope: !266)
!266 = distinct !DILexicalBlock(scope: !257, file: !1, line: 150, column: 5)
!267 = !DILocation(line: 152, column: 9, scope: !266)
!268 = !DILocation(line: 153, column: 9, scope: !266)
!269 = !DILocation(line: 155, column: 5, scope: !257)
!270 = !DILocalVariable(name: "i", scope: !271, file: !1, line: 158, type: !5)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 157, column: 9)
!272 = distinct !DILexicalBlock(scope: !257, file: !1, line: 156, column: 5)
!273 = !DILocation(line: 158, column: 17, scope: !271)
!274 = !DILocalVariable(name: "n", scope: !271, file: !1, line: 158, type: !5)
!275 = !DILocation(line: 158, column: 20, scope: !271)
!276 = !DILocalVariable(name: "intVariable", scope: !271, file: !1, line: 158, type: !5)
!277 = !DILocation(line: 158, column: 23, scope: !271)
!278 = !DILocation(line: 159, column: 24, scope: !279)
!279 = distinct !DILexicalBlock(scope: !271, file: !1, line: 159, column: 17)
!280 = !DILocation(line: 159, column: 17, scope: !279)
!281 = !DILocation(line: 159, column: 40, scope: !279)
!282 = !DILocation(line: 159, column: 17, scope: !271)
!283 = !DILocation(line: 162, column: 29, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !1, line: 160, column: 13)
!285 = !DILocation(line: 163, column: 24, scope: !286)
!286 = distinct !DILexicalBlock(scope: !284, file: !1, line: 163, column: 17)
!287 = !DILocation(line: 163, column: 22, scope: !286)
!288 = !DILocation(line: 163, column: 29, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !1, line: 163, column: 17)
!290 = !DILocation(line: 163, column: 33, scope: !289)
!291 = !DILocation(line: 163, column: 31, scope: !289)
!292 = !DILocation(line: 163, column: 17, scope: !286)
!293 = !DILocation(line: 166, column: 32, scope: !294)
!294 = distinct !DILexicalBlock(scope: !289, file: !1, line: 164, column: 17)
!295 = !DILocation(line: 167, column: 17, scope: !294)
!296 = !DILocation(line: 163, column: 37, scope: !289)
!297 = !DILocation(line: 163, column: 17, scope: !289)
!298 = distinct !{!298, !292, !299, !158}
!299 = !DILocation(line: 167, column: 17, scope: !286)
!300 = !DILocation(line: 168, column: 30, scope: !284)
!301 = !DILocation(line: 168, column: 17, scope: !284)
!302 = !DILocation(line: 169, column: 13, scope: !284)
!303 = !DILocation(line: 171, column: 9, scope: !272)
!304 = !DILocation(line: 173, column: 1, scope: !257)
!305 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_16_good", scope: !1, file: !1, line: 175, type: !11, scopeLine: 176, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!306 = !DILocation(line: 177, column: 5, scope: !305)
!307 = !DILocation(line: 178, column: 5, scope: !305)
!308 = !DILocation(line: 179, column: 1, scope: !305)
