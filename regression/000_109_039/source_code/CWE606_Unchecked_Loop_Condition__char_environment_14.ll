; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_14.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@globalFive = external dso_local global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_14_bad() #0 !dbg !9 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !12, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !16, metadata !DIExpression()), !dbg !20
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !20
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !20
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !21
  store i8* %arraydecay, i8** %data, align 8, !dbg !22
  %1 = load i32, i32* @globalFive, align 4, !dbg !23
  %cmp = icmp eq i32 %1, 5, !dbg !25
  br i1 %cmp, label %if.then, label %if.end6, !dbg !26

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !27, metadata !DIExpression()), !dbg !33
  %2 = load i8*, i8** %data, align 8, !dbg !34
  %call = call i64 @strlen(i8* %2) #6, !dbg !35
  store i64 %call, i64* %dataLen, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !36, metadata !DIExpression()), !dbg !37
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !38
  store i8* %call1, i8** %environment, align 8, !dbg !37
  %3 = load i8*, i8** %environment, align 8, !dbg !39
  %cmp2 = icmp ne i8* %3, null, !dbg !41
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !42

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !43
  %5 = load i64, i64* %dataLen, align 8, !dbg !45
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !46
  %6 = load i8*, i8** %environment, align 8, !dbg !47
  %7 = load i64, i64* %dataLen, align 8, !dbg !48
  %sub = sub i64 100, %7, !dbg !49
  %sub4 = sub i64 %sub, 1, !dbg !50
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #7, !dbg !51
  br label %if.end, !dbg !52

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !53

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @globalFive, align 4, !dbg !54
  %cmp7 = icmp eq i32 %8, 5, !dbg !56
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !57

if.then8:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !58, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %n, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !65, metadata !DIExpression()), !dbg !66
  %9 = load i8*, i8** %data, align 8, !dbg !67
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !69
  %cmp10 = icmp eq i32 %call9, 1, !dbg !70
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !71

if.then11:                                        ; preds = %if.then8
  store i32 0, i32* %intVariable, align 4, !dbg !72
  store i32 0, i32* %i, align 4, !dbg !74
  br label %for.cond, !dbg !76

for.cond:                                         ; preds = %for.inc, %if.then11
  %10 = load i32, i32* %i, align 4, !dbg !77
  %11 = load i32, i32* %n, align 4, !dbg !79
  %cmp12 = icmp slt i32 %10, %11, !dbg !80
  br i1 %cmp12, label %for.body, label %for.end, !dbg !81

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !82
  %inc = add nsw i32 %12, 1, !dbg !82
  store i32 %inc, i32* %intVariable, align 4, !dbg !82
  br label %for.inc, !dbg !84

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !85
  %inc13 = add nsw i32 %13, 1, !dbg !85
  store i32 %inc13, i32* %i, align 4, !dbg !85
  br label %for.cond, !dbg !86, !llvm.loop !87

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !90
  call void @printIntLine(i32 %14), !dbg !91
  br label %if.end14, !dbg !92

if.end14:                                         ; preds = %for.end, %if.then8
  br label %if.end15, !dbg !93

if.end15:                                         ; preds = %if.end14, %if.end6
  ret void, !dbg !94
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
define dso_local void @goodB2G1() #0 !dbg !95 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !98, metadata !DIExpression()), !dbg !99
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !99
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !99
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !100
  store i8* %arraydecay, i8** %data, align 8, !dbg !101
  %1 = load i32, i32* @globalFive, align 4, !dbg !102
  %cmp = icmp eq i32 %1, 5, !dbg !104
  br i1 %cmp, label %if.then, label %if.end6, !dbg !105

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !106, metadata !DIExpression()), !dbg !109
  %2 = load i8*, i8** %data, align 8, !dbg !110
  %call = call i64 @strlen(i8* %2) #6, !dbg !111
  store i64 %call, i64* %dataLen, align 8, !dbg !109
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !112, metadata !DIExpression()), !dbg !113
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !114
  store i8* %call1, i8** %environment, align 8, !dbg !113
  %3 = load i8*, i8** %environment, align 8, !dbg !115
  %cmp2 = icmp ne i8* %3, null, !dbg !117
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !118

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !119
  %5 = load i64, i64* %dataLen, align 8, !dbg !121
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !122
  %6 = load i8*, i8** %environment, align 8, !dbg !123
  %7 = load i64, i64* %dataLen, align 8, !dbg !124
  %sub = sub i64 100, %7, !dbg !125
  %sub4 = sub i64 %sub, 1, !dbg !126
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #7, !dbg !127
  br label %if.end, !dbg !128

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !129

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @globalFive, align 4, !dbg !130
  %cmp7 = icmp ne i32 %8, 5, !dbg !132
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !133

if.then8:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !134
  br label %if.end18, !dbg !136

if.else:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !137, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %n, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !143, metadata !DIExpression()), !dbg !144
  %9 = load i8*, i8** %data, align 8, !dbg !145
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !147
  %cmp10 = icmp eq i32 %call9, 1, !dbg !148
  br i1 %cmp10, label %if.then11, label %if.end17, !dbg !149

if.then11:                                        ; preds = %if.else
  %10 = load i32, i32* %n, align 4, !dbg !150
  %cmp12 = icmp slt i32 %10, 10000, !dbg !153
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !154

if.then13:                                        ; preds = %if.then11
  store i32 0, i32* %intVariable, align 4, !dbg !155
  store i32 0, i32* %i, align 4, !dbg !157
  br label %for.cond, !dbg !159

for.cond:                                         ; preds = %for.inc, %if.then13
  %11 = load i32, i32* %i, align 4, !dbg !160
  %12 = load i32, i32* %n, align 4, !dbg !162
  %cmp14 = icmp slt i32 %11, %12, !dbg !163
  br i1 %cmp14, label %for.body, label %for.end, !dbg !164

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !165
  %inc = add nsw i32 %13, 1, !dbg !165
  store i32 %inc, i32* %intVariable, align 4, !dbg !165
  br label %for.inc, !dbg !167

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !168
  %inc15 = add nsw i32 %14, 1, !dbg !168
  store i32 %inc15, i32* %i, align 4, !dbg !168
  br label %for.cond, !dbg !169, !llvm.loop !170

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !172
  call void @printIntLine(i32 %15), !dbg !173
  br label %if.end16, !dbg !174

if.end16:                                         ; preds = %for.end, %if.then11
  br label %if.end17, !dbg !175

if.end17:                                         ; preds = %if.end16, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  ret void, !dbg !176
}

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !177 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !180, metadata !DIExpression()), !dbg !181
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !181
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !181
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !182
  store i8* %arraydecay, i8** %data, align 8, !dbg !183
  %1 = load i32, i32* @globalFive, align 4, !dbg !184
  %cmp = icmp eq i32 %1, 5, !dbg !186
  br i1 %cmp, label %if.then, label %if.end6, !dbg !187

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !188, metadata !DIExpression()), !dbg !191
  %2 = load i8*, i8** %data, align 8, !dbg !192
  %call = call i64 @strlen(i8* %2) #6, !dbg !193
  store i64 %call, i64* %dataLen, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !194, metadata !DIExpression()), !dbg !195
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !196
  store i8* %call1, i8** %environment, align 8, !dbg !195
  %3 = load i8*, i8** %environment, align 8, !dbg !197
  %cmp2 = icmp ne i8* %3, null, !dbg !199
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !200

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !201
  %5 = load i64, i64* %dataLen, align 8, !dbg !203
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !204
  %6 = load i8*, i8** %environment, align 8, !dbg !205
  %7 = load i64, i64* %dataLen, align 8, !dbg !206
  %sub = sub i64 100, %7, !dbg !207
  %sub4 = sub i64 %sub, 1, !dbg !208
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #7, !dbg !209
  br label %if.end, !dbg !210

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !211

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @globalFive, align 4, !dbg !212
  %cmp7 = icmp eq i32 %8, 5, !dbg !214
  br i1 %cmp7, label %if.then8, label %if.end18, !dbg !215

if.then8:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !216, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i32* %n, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !222, metadata !DIExpression()), !dbg !223
  %9 = load i8*, i8** %data, align 8, !dbg !224
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !226
  %cmp10 = icmp eq i32 %call9, 1, !dbg !227
  br i1 %cmp10, label %if.then11, label %if.end17, !dbg !228

if.then11:                                        ; preds = %if.then8
  %10 = load i32, i32* %n, align 4, !dbg !229
  %cmp12 = icmp slt i32 %10, 10000, !dbg !232
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !233

if.then13:                                        ; preds = %if.then11
  store i32 0, i32* %intVariable, align 4, !dbg !234
  store i32 0, i32* %i, align 4, !dbg !236
  br label %for.cond, !dbg !238

for.cond:                                         ; preds = %for.inc, %if.then13
  %11 = load i32, i32* %i, align 4, !dbg !239
  %12 = load i32, i32* %n, align 4, !dbg !241
  %cmp14 = icmp slt i32 %11, %12, !dbg !242
  br i1 %cmp14, label %for.body, label %for.end, !dbg !243

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !244
  %inc = add nsw i32 %13, 1, !dbg !244
  store i32 %inc, i32* %intVariable, align 4, !dbg !244
  br label %for.inc, !dbg !246

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !247
  %inc15 = add nsw i32 %14, 1, !dbg !247
  store i32 %inc15, i32* %i, align 4, !dbg !247
  br label %for.cond, !dbg !248, !llvm.loop !249

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !251
  call void @printIntLine(i32 %15), !dbg !252
  br label %if.end16, !dbg !253

if.end16:                                         ; preds = %for.end, %if.then11
  br label %if.end17, !dbg !254

if.end17:                                         ; preds = %if.end16, %if.then8
  br label %if.end18, !dbg !255

if.end18:                                         ; preds = %if.end17, %if.end6
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !257 {
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
  %1 = load i32, i32* @globalFive, align 4, !dbg !264
  %cmp = icmp ne i32 %1, 5, !dbg !266
  br i1 %cmp, label %if.then, label %if.else, !dbg !267

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !268
  br label %if.end, !dbg !270

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !271
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !273
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalFive, align 4, !dbg !274
  %cmp1 = icmp eq i32 %3, 5, !dbg !276
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !277

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !278, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata i32* %n, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !284, metadata !DIExpression()), !dbg !285
  %4 = load i8*, i8** %data, align 8, !dbg !286
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !288
  %cmp4 = icmp eq i32 %call3, 1, !dbg !289
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !290

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !291
  store i32 0, i32* %i, align 4, !dbg !293
  br label %for.cond, !dbg !295

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !296
  %6 = load i32, i32* %n, align 4, !dbg !298
  %cmp6 = icmp slt i32 %5, %6, !dbg !299
  br i1 %cmp6, label %for.body, label %for.end, !dbg !300

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !301
  %inc = add nsw i32 %7, 1, !dbg !301
  store i32 %inc, i32* %intVariable, align 4, !dbg !301
  br label %for.inc, !dbg !303

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !304
  %inc7 = add nsw i32 %8, 1, !dbg !304
  store i32 %inc7, i32* %i, align 4, !dbg !304
  br label %for.cond, !dbg !305, !llvm.loop !306

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !308
  call void @printIntLine(i32 %9), !dbg !309
  br label %if.end8, !dbg !310

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !311

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !312
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !313 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !314, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !316, metadata !DIExpression()), !dbg !317
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !317
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !317
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !318
  store i8* %arraydecay, i8** %data, align 8, !dbg !319
  %1 = load i32, i32* @globalFive, align 4, !dbg !320
  %cmp = icmp eq i32 %1, 5, !dbg !322
  br i1 %cmp, label %if.then, label %if.end, !dbg !323

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !324
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !326
  br label %if.end, !dbg !327

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalFive, align 4, !dbg !328
  %cmp1 = icmp eq i32 %3, 5, !dbg !330
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !331

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !332, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata i32* %n, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !338, metadata !DIExpression()), !dbg !339
  %4 = load i8*, i8** %data, align 8, !dbg !340
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !342
  %cmp4 = icmp eq i32 %call3, 1, !dbg !343
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !344

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !345
  store i32 0, i32* %i, align 4, !dbg !347
  br label %for.cond, !dbg !349

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !350
  %6 = load i32, i32* %n, align 4, !dbg !352
  %cmp6 = icmp slt i32 %5, %6, !dbg !353
  br i1 %cmp6, label %for.body, label %for.end, !dbg !354

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !355
  %inc = add nsw i32 %7, 1, !dbg !355
  store i32 %inc, i32* %intVariable, align 4, !dbg !355
  br label %for.inc, !dbg !357

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !358
  %inc7 = add nsw i32 %8, 1, !dbg !358
  store i32 %inc7, i32* %i, align 4, !dbg !358
  br label %for.cond, !dbg !359, !llvm.loop !360

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !362
  call void @printIntLine(i32 %9), !dbg !363
  br label %if.end8, !dbg !364

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !365

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_14_good() #0 !dbg !367 {
entry:
  call void @goodB2G1(), !dbg !368
  call void @goodB2G2(), !dbg !369
  call void @goodG2B1(), !dbg !370
  call void @goodG2B2(), !dbg !371
  ret void, !dbg !372
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_14.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_039/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_14_bad", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 39, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocation(line: 39, column: 12, scope: !9)
!16 = !DILocalVariable(name: "dataBuffer", scope: !9, file: !1, line: 40, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 100)
!20 = !DILocation(line: 40, column: 10, scope: !9)
!21 = !DILocation(line: 41, column: 12, scope: !9)
!22 = !DILocation(line: 41, column: 10, scope: !9)
!23 = !DILocation(line: 42, column: 8, scope: !24)
!24 = distinct !DILexicalBlock(scope: !9, file: !1, line: 42, column: 8)
!25 = !DILocation(line: 42, column: 18, scope: !24)
!26 = !DILocation(line: 42, column: 8, scope: !9)
!27 = !DILocalVariable(name: "dataLen", scope: !28, file: !1, line: 46, type: !30)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 44, column: 9)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 43, column: 5)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 46, column: 20, scope: !28)
!34 = !DILocation(line: 46, column: 37, scope: !28)
!35 = !DILocation(line: 46, column: 30, scope: !28)
!36 = !DILocalVariable(name: "environment", scope: !28, file: !1, line: 47, type: !13)
!37 = !DILocation(line: 47, column: 20, scope: !28)
!38 = !DILocation(line: 47, column: 34, scope: !28)
!39 = !DILocation(line: 49, column: 17, scope: !40)
!40 = distinct !DILexicalBlock(scope: !28, file: !1, line: 49, column: 17)
!41 = !DILocation(line: 49, column: 29, scope: !40)
!42 = !DILocation(line: 49, column: 17, scope: !28)
!43 = !DILocation(line: 52, column: 25, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 50, column: 13)
!45 = !DILocation(line: 52, column: 30, scope: !44)
!46 = !DILocation(line: 52, column: 29, scope: !44)
!47 = !DILocation(line: 52, column: 39, scope: !44)
!48 = !DILocation(line: 52, column: 56, scope: !44)
!49 = !DILocation(line: 52, column: 55, scope: !44)
!50 = !DILocation(line: 52, column: 63, scope: !44)
!51 = !DILocation(line: 52, column: 17, scope: !44)
!52 = !DILocation(line: 53, column: 13, scope: !44)
!53 = !DILocation(line: 55, column: 5, scope: !29)
!54 = !DILocation(line: 56, column: 8, scope: !55)
!55 = distinct !DILexicalBlock(scope: !9, file: !1, line: 56, column: 8)
!56 = !DILocation(line: 56, column: 18, scope: !55)
!57 = !DILocation(line: 56, column: 8, scope: !9)
!58 = !DILocalVariable(name: "i", scope: !59, file: !1, line: 59, type: !61)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 58, column: 9)
!60 = distinct !DILexicalBlock(scope: !55, file: !1, line: 57, column: 5)
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !DILocation(line: 59, column: 17, scope: !59)
!63 = !DILocalVariable(name: "n", scope: !59, file: !1, line: 59, type: !61)
!64 = !DILocation(line: 59, column: 20, scope: !59)
!65 = !DILocalVariable(name: "intVariable", scope: !59, file: !1, line: 59, type: !61)
!66 = !DILocation(line: 59, column: 23, scope: !59)
!67 = !DILocation(line: 60, column: 24, scope: !68)
!68 = distinct !DILexicalBlock(scope: !59, file: !1, line: 60, column: 17)
!69 = !DILocation(line: 60, column: 17, scope: !68)
!70 = !DILocation(line: 60, column: 40, scope: !68)
!71 = !DILocation(line: 60, column: 17, scope: !59)
!72 = !DILocation(line: 63, column: 29, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !1, line: 61, column: 13)
!74 = !DILocation(line: 64, column: 24, scope: !75)
!75 = distinct !DILexicalBlock(scope: !73, file: !1, line: 64, column: 17)
!76 = !DILocation(line: 64, column: 22, scope: !75)
!77 = !DILocation(line: 64, column: 29, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !1, line: 64, column: 17)
!79 = !DILocation(line: 64, column: 33, scope: !78)
!80 = !DILocation(line: 64, column: 31, scope: !78)
!81 = !DILocation(line: 64, column: 17, scope: !75)
!82 = !DILocation(line: 67, column: 32, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !1, line: 65, column: 17)
!84 = !DILocation(line: 68, column: 17, scope: !83)
!85 = !DILocation(line: 64, column: 37, scope: !78)
!86 = !DILocation(line: 64, column: 17, scope: !78)
!87 = distinct !{!87, !81, !88, !89}
!88 = !DILocation(line: 68, column: 17, scope: !75)
!89 = !{!"llvm.loop.mustprogress"}
!90 = !DILocation(line: 69, column: 30, scope: !73)
!91 = !DILocation(line: 69, column: 17, scope: !73)
!92 = !DILocation(line: 70, column: 13, scope: !73)
!93 = !DILocation(line: 72, column: 5, scope: !60)
!94 = !DILocation(line: 73, column: 1, scope: !9)
!95 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 80, type: !10, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!96 = !DILocalVariable(name: "data", scope: !95, file: !1, line: 82, type: !13)
!97 = !DILocation(line: 82, column: 12, scope: !95)
!98 = !DILocalVariable(name: "dataBuffer", scope: !95, file: !1, line: 83, type: !17)
!99 = !DILocation(line: 83, column: 10, scope: !95)
!100 = !DILocation(line: 84, column: 12, scope: !95)
!101 = !DILocation(line: 84, column: 10, scope: !95)
!102 = !DILocation(line: 85, column: 8, scope: !103)
!103 = distinct !DILexicalBlock(scope: !95, file: !1, line: 85, column: 8)
!104 = !DILocation(line: 85, column: 18, scope: !103)
!105 = !DILocation(line: 85, column: 8, scope: !95)
!106 = !DILocalVariable(name: "dataLen", scope: !107, file: !1, line: 89, type: !30)
!107 = distinct !DILexicalBlock(scope: !108, file: !1, line: 87, column: 9)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 86, column: 5)
!109 = !DILocation(line: 89, column: 20, scope: !107)
!110 = !DILocation(line: 89, column: 37, scope: !107)
!111 = !DILocation(line: 89, column: 30, scope: !107)
!112 = !DILocalVariable(name: "environment", scope: !107, file: !1, line: 90, type: !13)
!113 = !DILocation(line: 90, column: 20, scope: !107)
!114 = !DILocation(line: 90, column: 34, scope: !107)
!115 = !DILocation(line: 92, column: 17, scope: !116)
!116 = distinct !DILexicalBlock(scope: !107, file: !1, line: 92, column: 17)
!117 = !DILocation(line: 92, column: 29, scope: !116)
!118 = !DILocation(line: 92, column: 17, scope: !107)
!119 = !DILocation(line: 95, column: 25, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 93, column: 13)
!121 = !DILocation(line: 95, column: 30, scope: !120)
!122 = !DILocation(line: 95, column: 29, scope: !120)
!123 = !DILocation(line: 95, column: 39, scope: !120)
!124 = !DILocation(line: 95, column: 56, scope: !120)
!125 = !DILocation(line: 95, column: 55, scope: !120)
!126 = !DILocation(line: 95, column: 63, scope: !120)
!127 = !DILocation(line: 95, column: 17, scope: !120)
!128 = !DILocation(line: 96, column: 13, scope: !120)
!129 = !DILocation(line: 98, column: 5, scope: !108)
!130 = !DILocation(line: 99, column: 8, scope: !131)
!131 = distinct !DILexicalBlock(scope: !95, file: !1, line: 99, column: 8)
!132 = !DILocation(line: 99, column: 18, scope: !131)
!133 = !DILocation(line: 99, column: 8, scope: !95)
!134 = !DILocation(line: 102, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !1, line: 100, column: 5)
!136 = !DILocation(line: 103, column: 5, scope: !135)
!137 = !DILocalVariable(name: "i", scope: !138, file: !1, line: 107, type: !61)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 106, column: 9)
!139 = distinct !DILexicalBlock(scope: !131, file: !1, line: 105, column: 5)
!140 = !DILocation(line: 107, column: 17, scope: !138)
!141 = !DILocalVariable(name: "n", scope: !138, file: !1, line: 107, type: !61)
!142 = !DILocation(line: 107, column: 20, scope: !138)
!143 = !DILocalVariable(name: "intVariable", scope: !138, file: !1, line: 107, type: !61)
!144 = !DILocation(line: 107, column: 23, scope: !138)
!145 = !DILocation(line: 108, column: 24, scope: !146)
!146 = distinct !DILexicalBlock(scope: !138, file: !1, line: 108, column: 17)
!147 = !DILocation(line: 108, column: 17, scope: !146)
!148 = !DILocation(line: 108, column: 40, scope: !146)
!149 = !DILocation(line: 108, column: 17, scope: !138)
!150 = !DILocation(line: 111, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 111, column: 21)
!152 = distinct !DILexicalBlock(scope: !146, file: !1, line: 109, column: 13)
!153 = !DILocation(line: 111, column: 23, scope: !151)
!154 = !DILocation(line: 111, column: 21, scope: !152)
!155 = !DILocation(line: 113, column: 33, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !1, line: 112, column: 17)
!157 = !DILocation(line: 114, column: 28, scope: !158)
!158 = distinct !DILexicalBlock(scope: !156, file: !1, line: 114, column: 21)
!159 = !DILocation(line: 114, column: 26, scope: !158)
!160 = !DILocation(line: 114, column: 33, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !1, line: 114, column: 21)
!162 = !DILocation(line: 114, column: 37, scope: !161)
!163 = !DILocation(line: 114, column: 35, scope: !161)
!164 = !DILocation(line: 114, column: 21, scope: !158)
!165 = !DILocation(line: 117, column: 36, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !1, line: 115, column: 21)
!167 = !DILocation(line: 118, column: 21, scope: !166)
!168 = !DILocation(line: 114, column: 41, scope: !161)
!169 = !DILocation(line: 114, column: 21, scope: !161)
!170 = distinct !{!170, !164, !171, !89}
!171 = !DILocation(line: 118, column: 21, scope: !158)
!172 = !DILocation(line: 119, column: 34, scope: !156)
!173 = !DILocation(line: 119, column: 21, scope: !156)
!174 = !DILocation(line: 120, column: 17, scope: !156)
!175 = !DILocation(line: 121, column: 13, scope: !152)
!176 = !DILocation(line: 124, column: 1, scope: !95)
!177 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 127, type: !10, scopeLine: 128, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!178 = !DILocalVariable(name: "data", scope: !177, file: !1, line: 129, type: !13)
!179 = !DILocation(line: 129, column: 12, scope: !177)
!180 = !DILocalVariable(name: "dataBuffer", scope: !177, file: !1, line: 130, type: !17)
!181 = !DILocation(line: 130, column: 10, scope: !177)
!182 = !DILocation(line: 131, column: 12, scope: !177)
!183 = !DILocation(line: 131, column: 10, scope: !177)
!184 = !DILocation(line: 132, column: 8, scope: !185)
!185 = distinct !DILexicalBlock(scope: !177, file: !1, line: 132, column: 8)
!186 = !DILocation(line: 132, column: 18, scope: !185)
!187 = !DILocation(line: 132, column: 8, scope: !177)
!188 = !DILocalVariable(name: "dataLen", scope: !189, file: !1, line: 136, type: !30)
!189 = distinct !DILexicalBlock(scope: !190, file: !1, line: 134, column: 9)
!190 = distinct !DILexicalBlock(scope: !185, file: !1, line: 133, column: 5)
!191 = !DILocation(line: 136, column: 20, scope: !189)
!192 = !DILocation(line: 136, column: 37, scope: !189)
!193 = !DILocation(line: 136, column: 30, scope: !189)
!194 = !DILocalVariable(name: "environment", scope: !189, file: !1, line: 137, type: !13)
!195 = !DILocation(line: 137, column: 20, scope: !189)
!196 = !DILocation(line: 137, column: 34, scope: !189)
!197 = !DILocation(line: 139, column: 17, scope: !198)
!198 = distinct !DILexicalBlock(scope: !189, file: !1, line: 139, column: 17)
!199 = !DILocation(line: 139, column: 29, scope: !198)
!200 = !DILocation(line: 139, column: 17, scope: !189)
!201 = !DILocation(line: 142, column: 25, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 140, column: 13)
!203 = !DILocation(line: 142, column: 30, scope: !202)
!204 = !DILocation(line: 142, column: 29, scope: !202)
!205 = !DILocation(line: 142, column: 39, scope: !202)
!206 = !DILocation(line: 142, column: 56, scope: !202)
!207 = !DILocation(line: 142, column: 55, scope: !202)
!208 = !DILocation(line: 142, column: 63, scope: !202)
!209 = !DILocation(line: 142, column: 17, scope: !202)
!210 = !DILocation(line: 143, column: 13, scope: !202)
!211 = !DILocation(line: 145, column: 5, scope: !190)
!212 = !DILocation(line: 146, column: 8, scope: !213)
!213 = distinct !DILexicalBlock(scope: !177, file: !1, line: 146, column: 8)
!214 = !DILocation(line: 146, column: 18, scope: !213)
!215 = !DILocation(line: 146, column: 8, scope: !177)
!216 = !DILocalVariable(name: "i", scope: !217, file: !1, line: 149, type: !61)
!217 = distinct !DILexicalBlock(scope: !218, file: !1, line: 148, column: 9)
!218 = distinct !DILexicalBlock(scope: !213, file: !1, line: 147, column: 5)
!219 = !DILocation(line: 149, column: 17, scope: !217)
!220 = !DILocalVariable(name: "n", scope: !217, file: !1, line: 149, type: !61)
!221 = !DILocation(line: 149, column: 20, scope: !217)
!222 = !DILocalVariable(name: "intVariable", scope: !217, file: !1, line: 149, type: !61)
!223 = !DILocation(line: 149, column: 23, scope: !217)
!224 = !DILocation(line: 150, column: 24, scope: !225)
!225 = distinct !DILexicalBlock(scope: !217, file: !1, line: 150, column: 17)
!226 = !DILocation(line: 150, column: 17, scope: !225)
!227 = !DILocation(line: 150, column: 40, scope: !225)
!228 = !DILocation(line: 150, column: 17, scope: !217)
!229 = !DILocation(line: 153, column: 21, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !1, line: 153, column: 21)
!231 = distinct !DILexicalBlock(scope: !225, file: !1, line: 151, column: 13)
!232 = !DILocation(line: 153, column: 23, scope: !230)
!233 = !DILocation(line: 153, column: 21, scope: !231)
!234 = !DILocation(line: 155, column: 33, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !1, line: 154, column: 17)
!236 = !DILocation(line: 156, column: 28, scope: !237)
!237 = distinct !DILexicalBlock(scope: !235, file: !1, line: 156, column: 21)
!238 = !DILocation(line: 156, column: 26, scope: !237)
!239 = !DILocation(line: 156, column: 33, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !1, line: 156, column: 21)
!241 = !DILocation(line: 156, column: 37, scope: !240)
!242 = !DILocation(line: 156, column: 35, scope: !240)
!243 = !DILocation(line: 156, column: 21, scope: !237)
!244 = !DILocation(line: 159, column: 36, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !1, line: 157, column: 21)
!246 = !DILocation(line: 160, column: 21, scope: !245)
!247 = !DILocation(line: 156, column: 41, scope: !240)
!248 = !DILocation(line: 156, column: 21, scope: !240)
!249 = distinct !{!249, !243, !250, !89}
!250 = !DILocation(line: 160, column: 21, scope: !237)
!251 = !DILocation(line: 161, column: 34, scope: !235)
!252 = !DILocation(line: 161, column: 21, scope: !235)
!253 = !DILocation(line: 162, column: 17, scope: !235)
!254 = !DILocation(line: 163, column: 13, scope: !231)
!255 = !DILocation(line: 165, column: 5, scope: !218)
!256 = !DILocation(line: 166, column: 1, scope: !177)
!257 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 169, type: !10, scopeLine: 170, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!258 = !DILocalVariable(name: "data", scope: !257, file: !1, line: 171, type: !13)
!259 = !DILocation(line: 171, column: 12, scope: !257)
!260 = !DILocalVariable(name: "dataBuffer", scope: !257, file: !1, line: 172, type: !17)
!261 = !DILocation(line: 172, column: 10, scope: !257)
!262 = !DILocation(line: 173, column: 12, scope: !257)
!263 = !DILocation(line: 173, column: 10, scope: !257)
!264 = !DILocation(line: 174, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !257, file: !1, line: 174, column: 8)
!266 = !DILocation(line: 174, column: 18, scope: !265)
!267 = !DILocation(line: 174, column: 8, scope: !257)
!268 = !DILocation(line: 177, column: 9, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !1, line: 175, column: 5)
!270 = !DILocation(line: 178, column: 5, scope: !269)
!271 = !DILocation(line: 182, column: 16, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !1, line: 180, column: 5)
!273 = !DILocation(line: 182, column: 9, scope: !272)
!274 = !DILocation(line: 184, column: 8, scope: !275)
!275 = distinct !DILexicalBlock(scope: !257, file: !1, line: 184, column: 8)
!276 = !DILocation(line: 184, column: 18, scope: !275)
!277 = !DILocation(line: 184, column: 8, scope: !257)
!278 = !DILocalVariable(name: "i", scope: !279, file: !1, line: 187, type: !61)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 186, column: 9)
!280 = distinct !DILexicalBlock(scope: !275, file: !1, line: 185, column: 5)
!281 = !DILocation(line: 187, column: 17, scope: !279)
!282 = !DILocalVariable(name: "n", scope: !279, file: !1, line: 187, type: !61)
!283 = !DILocation(line: 187, column: 20, scope: !279)
!284 = !DILocalVariable(name: "intVariable", scope: !279, file: !1, line: 187, type: !61)
!285 = !DILocation(line: 187, column: 23, scope: !279)
!286 = !DILocation(line: 188, column: 24, scope: !287)
!287 = distinct !DILexicalBlock(scope: !279, file: !1, line: 188, column: 17)
!288 = !DILocation(line: 188, column: 17, scope: !287)
!289 = !DILocation(line: 188, column: 40, scope: !287)
!290 = !DILocation(line: 188, column: 17, scope: !279)
!291 = !DILocation(line: 191, column: 29, scope: !292)
!292 = distinct !DILexicalBlock(scope: !287, file: !1, line: 189, column: 13)
!293 = !DILocation(line: 192, column: 24, scope: !294)
!294 = distinct !DILexicalBlock(scope: !292, file: !1, line: 192, column: 17)
!295 = !DILocation(line: 192, column: 22, scope: !294)
!296 = !DILocation(line: 192, column: 29, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !1, line: 192, column: 17)
!298 = !DILocation(line: 192, column: 33, scope: !297)
!299 = !DILocation(line: 192, column: 31, scope: !297)
!300 = !DILocation(line: 192, column: 17, scope: !294)
!301 = !DILocation(line: 195, column: 32, scope: !302)
!302 = distinct !DILexicalBlock(scope: !297, file: !1, line: 193, column: 17)
!303 = !DILocation(line: 196, column: 17, scope: !302)
!304 = !DILocation(line: 192, column: 37, scope: !297)
!305 = !DILocation(line: 192, column: 17, scope: !297)
!306 = distinct !{!306, !300, !307, !89}
!307 = !DILocation(line: 196, column: 17, scope: !294)
!308 = !DILocation(line: 197, column: 30, scope: !292)
!309 = !DILocation(line: 197, column: 17, scope: !292)
!310 = !DILocation(line: 198, column: 13, scope: !292)
!311 = !DILocation(line: 200, column: 5, scope: !280)
!312 = !DILocation(line: 201, column: 1, scope: !257)
!313 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 204, type: !10, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!314 = !DILocalVariable(name: "data", scope: !313, file: !1, line: 206, type: !13)
!315 = !DILocation(line: 206, column: 12, scope: !313)
!316 = !DILocalVariable(name: "dataBuffer", scope: !313, file: !1, line: 207, type: !17)
!317 = !DILocation(line: 207, column: 10, scope: !313)
!318 = !DILocation(line: 208, column: 12, scope: !313)
!319 = !DILocation(line: 208, column: 10, scope: !313)
!320 = !DILocation(line: 209, column: 8, scope: !321)
!321 = distinct !DILexicalBlock(scope: !313, file: !1, line: 209, column: 8)
!322 = !DILocation(line: 209, column: 18, scope: !321)
!323 = !DILocation(line: 209, column: 8, scope: !313)
!324 = !DILocation(line: 212, column: 16, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !1, line: 210, column: 5)
!326 = !DILocation(line: 212, column: 9, scope: !325)
!327 = !DILocation(line: 213, column: 5, scope: !325)
!328 = !DILocation(line: 214, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !313, file: !1, line: 214, column: 8)
!330 = !DILocation(line: 214, column: 18, scope: !329)
!331 = !DILocation(line: 214, column: 8, scope: !313)
!332 = !DILocalVariable(name: "i", scope: !333, file: !1, line: 217, type: !61)
!333 = distinct !DILexicalBlock(scope: !334, file: !1, line: 216, column: 9)
!334 = distinct !DILexicalBlock(scope: !329, file: !1, line: 215, column: 5)
!335 = !DILocation(line: 217, column: 17, scope: !333)
!336 = !DILocalVariable(name: "n", scope: !333, file: !1, line: 217, type: !61)
!337 = !DILocation(line: 217, column: 20, scope: !333)
!338 = !DILocalVariable(name: "intVariable", scope: !333, file: !1, line: 217, type: !61)
!339 = !DILocation(line: 217, column: 23, scope: !333)
!340 = !DILocation(line: 218, column: 24, scope: !341)
!341 = distinct !DILexicalBlock(scope: !333, file: !1, line: 218, column: 17)
!342 = !DILocation(line: 218, column: 17, scope: !341)
!343 = !DILocation(line: 218, column: 40, scope: !341)
!344 = !DILocation(line: 218, column: 17, scope: !333)
!345 = !DILocation(line: 221, column: 29, scope: !346)
!346 = distinct !DILexicalBlock(scope: !341, file: !1, line: 219, column: 13)
!347 = !DILocation(line: 222, column: 24, scope: !348)
!348 = distinct !DILexicalBlock(scope: !346, file: !1, line: 222, column: 17)
!349 = !DILocation(line: 222, column: 22, scope: !348)
!350 = !DILocation(line: 222, column: 29, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !1, line: 222, column: 17)
!352 = !DILocation(line: 222, column: 33, scope: !351)
!353 = !DILocation(line: 222, column: 31, scope: !351)
!354 = !DILocation(line: 222, column: 17, scope: !348)
!355 = !DILocation(line: 225, column: 32, scope: !356)
!356 = distinct !DILexicalBlock(scope: !351, file: !1, line: 223, column: 17)
!357 = !DILocation(line: 226, column: 17, scope: !356)
!358 = !DILocation(line: 222, column: 37, scope: !351)
!359 = !DILocation(line: 222, column: 17, scope: !351)
!360 = distinct !{!360, !354, !361, !89}
!361 = !DILocation(line: 226, column: 17, scope: !348)
!362 = !DILocation(line: 227, column: 30, scope: !346)
!363 = !DILocation(line: 227, column: 17, scope: !346)
!364 = !DILocation(line: 228, column: 13, scope: !346)
!365 = !DILocation(line: 230, column: 5, scope: !334)
!366 = !DILocation(line: 231, column: 1, scope: !313)
!367 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_14_good", scope: !1, file: !1, line: 233, type: !10, scopeLine: 234, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!368 = !DILocation(line: 235, column: 5, scope: !367)
!369 = !DILocation(line: 236, column: 5, scope: !367)
!370 = !DILocation(line: 237, column: 5, scope: !367)
!371 = !DILocation(line: 238, column: 5, scope: !367)
!372 = !DILocation(line: 239, column: 1, scope: !367)
