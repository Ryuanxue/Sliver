; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_10.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@globalTrue = external dso_local global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@globalFalse = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_10_bad() #0 !dbg !9 {
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
  %1 = load i32, i32* @globalTrue, align 4, !dbg !23
  %tobool = icmp ne i32 %1, 0, !dbg !23
  br i1 %tobool, label %if.then, label %if.end5, !dbg !25

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !26, metadata !DIExpression()), !dbg !32
  %2 = load i8*, i8** %data, align 8, !dbg !33
  %call = call i64 @strlen(i8* %2) #6, !dbg !34
  store i64 %call, i64* %dataLen, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !35, metadata !DIExpression()), !dbg !36
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !37
  store i8* %call1, i8** %environment, align 8, !dbg !36
  %3 = load i8*, i8** %environment, align 8, !dbg !38
  %cmp = icmp ne i8* %3, null, !dbg !40
  br i1 %cmp, label %if.then2, label %if.end, !dbg !41

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !42
  %5 = load i64, i64* %dataLen, align 8, !dbg !44
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !45
  %6 = load i8*, i8** %environment, align 8, !dbg !46
  %7 = load i64, i64* %dataLen, align 8, !dbg !47
  %sub = sub i64 100, %7, !dbg !48
  %sub3 = sub i64 %sub, 1, !dbg !49
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !50
  br label %if.end, !dbg !51

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !52

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @globalTrue, align 4, !dbg !53
  %tobool6 = icmp ne i32 %8, 0, !dbg !53
  br i1 %tobool6, label %if.then7, label %if.end14, !dbg !55

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !56, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %n, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !63, metadata !DIExpression()), !dbg !64
  %9 = load i8*, i8** %data, align 8, !dbg !65
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !67
  %cmp9 = icmp eq i32 %call8, 1, !dbg !68
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !69

if.then10:                                        ; preds = %if.then7
  store i32 0, i32* %intVariable, align 4, !dbg !70
  store i32 0, i32* %i, align 4, !dbg !72
  br label %for.cond, !dbg !74

for.cond:                                         ; preds = %for.inc, %if.then10
  %10 = load i32, i32* %i, align 4, !dbg !75
  %11 = load i32, i32* %n, align 4, !dbg !77
  %cmp11 = icmp slt i32 %10, %11, !dbg !78
  br i1 %cmp11, label %for.body, label %for.end, !dbg !79

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !80
  %inc = add nsw i32 %12, 1, !dbg !80
  store i32 %inc, i32* %intVariable, align 4, !dbg !80
  br label %for.inc, !dbg !82

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !83
  %inc12 = add nsw i32 %13, 1, !dbg !83
  store i32 %inc12, i32* %i, align 4, !dbg !83
  br label %for.cond, !dbg !84, !llvm.loop !85

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !88
  call void @printIntLine(i32 %14), !dbg !89
  br label %if.end13, !dbg !90

if.end13:                                         ; preds = %for.end, %if.then7
  br label %if.end14, !dbg !91

if.end14:                                         ; preds = %if.end13, %if.end5
  ret void, !dbg !92
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
define dso_local void @goodB2G1() #0 !dbg !93 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !96, metadata !DIExpression()), !dbg !97
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !97
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !97
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !98
  store i8* %arraydecay, i8** %data, align 8, !dbg !99
  %1 = load i32, i32* @globalTrue, align 4, !dbg !100
  %tobool = icmp ne i32 %1, 0, !dbg !100
  br i1 %tobool, label %if.then, label %if.end5, !dbg !102

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !103, metadata !DIExpression()), !dbg !106
  %2 = load i8*, i8** %data, align 8, !dbg !107
  %call = call i64 @strlen(i8* %2) #6, !dbg !108
  store i64 %call, i64* %dataLen, align 8, !dbg !106
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !109, metadata !DIExpression()), !dbg !110
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !111
  store i8* %call1, i8** %environment, align 8, !dbg !110
  %3 = load i8*, i8** %environment, align 8, !dbg !112
  %cmp = icmp ne i8* %3, null, !dbg !114
  br i1 %cmp, label %if.then2, label %if.end, !dbg !115

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !116
  %5 = load i64, i64* %dataLen, align 8, !dbg !118
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !119
  %6 = load i8*, i8** %environment, align 8, !dbg !120
  %7 = load i64, i64* %dataLen, align 8, !dbg !121
  %sub = sub i64 100, %7, !dbg !122
  %sub3 = sub i64 %sub, 1, !dbg !123
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !124
  br label %if.end, !dbg !125

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !126

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @globalFalse, align 4, !dbg !127
  %tobool6 = icmp ne i32 %8, 0, !dbg !127
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !129

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !130
  br label %if.end17, !dbg !132

if.else:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !133, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %n, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !139, metadata !DIExpression()), !dbg !140
  %9 = load i8*, i8** %data, align 8, !dbg !141
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !143
  %cmp9 = icmp eq i32 %call8, 1, !dbg !144
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !145

if.then10:                                        ; preds = %if.else
  %10 = load i32, i32* %n, align 4, !dbg !146
  %cmp11 = icmp slt i32 %10, 10000, !dbg !149
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !150

if.then12:                                        ; preds = %if.then10
  store i32 0, i32* %intVariable, align 4, !dbg !151
  store i32 0, i32* %i, align 4, !dbg !153
  br label %for.cond, !dbg !155

for.cond:                                         ; preds = %for.inc, %if.then12
  %11 = load i32, i32* %i, align 4, !dbg !156
  %12 = load i32, i32* %n, align 4, !dbg !158
  %cmp13 = icmp slt i32 %11, %12, !dbg !159
  br i1 %cmp13, label %for.body, label %for.end, !dbg !160

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !161
  %inc = add nsw i32 %13, 1, !dbg !161
  store i32 %inc, i32* %intVariable, align 4, !dbg !161
  br label %for.inc, !dbg !163

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !164
  %inc14 = add nsw i32 %14, 1, !dbg !164
  store i32 %inc14, i32* %i, align 4, !dbg !164
  br label %for.cond, !dbg !165, !llvm.loop !166

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !168
  call void @printIntLine(i32 %15), !dbg !169
  br label %if.end15, !dbg !170

if.end15:                                         ; preds = %for.end, %if.then10
  br label %if.end16, !dbg !171

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  ret void, !dbg !172
}

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !173 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !176, metadata !DIExpression()), !dbg !177
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !177
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !177
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !178
  store i8* %arraydecay, i8** %data, align 8, !dbg !179
  %1 = load i32, i32* @globalTrue, align 4, !dbg !180
  %tobool = icmp ne i32 %1, 0, !dbg !180
  br i1 %tobool, label %if.then, label %if.end5, !dbg !182

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !183, metadata !DIExpression()), !dbg !186
  %2 = load i8*, i8** %data, align 8, !dbg !187
  %call = call i64 @strlen(i8* %2) #6, !dbg !188
  store i64 %call, i64* %dataLen, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !189, metadata !DIExpression()), !dbg !190
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !191
  store i8* %call1, i8** %environment, align 8, !dbg !190
  %3 = load i8*, i8** %environment, align 8, !dbg !192
  %cmp = icmp ne i8* %3, null, !dbg !194
  br i1 %cmp, label %if.then2, label %if.end, !dbg !195

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !196
  %5 = load i64, i64* %dataLen, align 8, !dbg !198
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !199
  %6 = load i8*, i8** %environment, align 8, !dbg !200
  %7 = load i64, i64* %dataLen, align 8, !dbg !201
  %sub = sub i64 100, %7, !dbg !202
  %sub3 = sub i64 %sub, 1, !dbg !203
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !204
  br label %if.end, !dbg !205

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !206

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @globalTrue, align 4, !dbg !207
  %tobool6 = icmp ne i32 %8, 0, !dbg !207
  br i1 %tobool6, label %if.then7, label %if.end17, !dbg !209

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !210, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %n, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !216, metadata !DIExpression()), !dbg !217
  %9 = load i8*, i8** %data, align 8, !dbg !218
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !220
  %cmp9 = icmp eq i32 %call8, 1, !dbg !221
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !222

if.then10:                                        ; preds = %if.then7
  %10 = load i32, i32* %n, align 4, !dbg !223
  %cmp11 = icmp slt i32 %10, 10000, !dbg !226
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !227

if.then12:                                        ; preds = %if.then10
  store i32 0, i32* %intVariable, align 4, !dbg !228
  store i32 0, i32* %i, align 4, !dbg !230
  br label %for.cond, !dbg !232

for.cond:                                         ; preds = %for.inc, %if.then12
  %11 = load i32, i32* %i, align 4, !dbg !233
  %12 = load i32, i32* %n, align 4, !dbg !235
  %cmp13 = icmp slt i32 %11, %12, !dbg !236
  br i1 %cmp13, label %for.body, label %for.end, !dbg !237

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !238
  %inc = add nsw i32 %13, 1, !dbg !238
  store i32 %inc, i32* %intVariable, align 4, !dbg !238
  br label %for.inc, !dbg !240

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !241
  %inc14 = add nsw i32 %14, 1, !dbg !241
  store i32 %inc14, i32* %i, align 4, !dbg !241
  br label %for.cond, !dbg !242, !llvm.loop !243

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !245
  call void @printIntLine(i32 %15), !dbg !246
  br label %if.end15, !dbg !247

if.end15:                                         ; preds = %for.end, %if.then10
  br label %if.end16, !dbg !248

if.end16:                                         ; preds = %if.end15, %if.then7
  br label %if.end17, !dbg !249

if.end17:                                         ; preds = %if.end16, %if.end5
  ret void, !dbg !250
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !251 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !254, metadata !DIExpression()), !dbg !255
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !255
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !255
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !256
  store i8* %arraydecay, i8** %data, align 8, !dbg !257
  %1 = load i32, i32* @globalFalse, align 4, !dbg !258
  %tobool = icmp ne i32 %1, 0, !dbg !258
  br i1 %tobool, label %if.then, label %if.else, !dbg !260

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !261
  br label %if.end, !dbg !263

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !264
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !266
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalTrue, align 4, !dbg !267
  %tobool1 = icmp ne i32 %3, 0, !dbg !267
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !269

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !270, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata i32* %n, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !276, metadata !DIExpression()), !dbg !277
  %4 = load i8*, i8** %data, align 8, !dbg !278
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !280
  %cmp = icmp eq i32 %call3, 1, !dbg !281
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !282

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !283
  store i32 0, i32* %i, align 4, !dbg !285
  br label %for.cond, !dbg !287

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !288
  %6 = load i32, i32* %n, align 4, !dbg !290
  %cmp5 = icmp slt i32 %5, %6, !dbg !291
  br i1 %cmp5, label %for.body, label %for.end, !dbg !292

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !293
  %inc = add nsw i32 %7, 1, !dbg !293
  store i32 %inc, i32* %intVariable, align 4, !dbg !293
  br label %for.inc, !dbg !295

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !296
  %inc6 = add nsw i32 %8, 1, !dbg !296
  store i32 %inc6, i32* %i, align 4, !dbg !296
  br label %for.cond, !dbg !297, !llvm.loop !298

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !300
  call void @printIntLine(i32 %9), !dbg !301
  br label %if.end7, !dbg !302

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !303

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !304
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !305 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !308, metadata !DIExpression()), !dbg !309
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !309
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !309
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !310
  store i8* %arraydecay, i8** %data, align 8, !dbg !311
  %1 = load i32, i32* @globalTrue, align 4, !dbg !312
  %tobool = icmp ne i32 %1, 0, !dbg !312
  br i1 %tobool, label %if.then, label %if.end, !dbg !314

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !315
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !317
  br label %if.end, !dbg !318

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalTrue, align 4, !dbg !319
  %tobool1 = icmp ne i32 %3, 0, !dbg !319
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !321

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !322, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.declare(metadata i32* %n, metadata !326, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !328, metadata !DIExpression()), !dbg !329
  %4 = load i8*, i8** %data, align 8, !dbg !330
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !332
  %cmp = icmp eq i32 %call3, 1, !dbg !333
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !334

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !335
  store i32 0, i32* %i, align 4, !dbg !337
  br label %for.cond, !dbg !339

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !340
  %6 = load i32, i32* %n, align 4, !dbg !342
  %cmp5 = icmp slt i32 %5, %6, !dbg !343
  br i1 %cmp5, label %for.body, label %for.end, !dbg !344

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !345
  %inc = add nsw i32 %7, 1, !dbg !345
  store i32 %inc, i32* %intVariable, align 4, !dbg !345
  br label %for.inc, !dbg !347

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !348
  %inc6 = add nsw i32 %8, 1, !dbg !348
  store i32 %inc6, i32* %i, align 4, !dbg !348
  br label %for.cond, !dbg !349, !llvm.loop !350

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !352
  call void @printIntLine(i32 %9), !dbg !353
  br label %if.end7, !dbg !354

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !355

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !356
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_10_good() #0 !dbg !357 {
entry:
  call void @goodB2G1(), !dbg !358
  call void @goodB2G2(), !dbg !359
  call void @goodG2B1(), !dbg !360
  call void @goodG2B2(), !dbg !361
  ret void, !dbg !362
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_10.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_035/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_10_bad", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!25 = !DILocation(line: 42, column: 8, scope: !9)
!26 = !DILocalVariable(name: "dataLen", scope: !27, file: !1, line: 46, type: !29)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 44, column: 9)
!28 = distinct !DILexicalBlock(scope: !24, file: !1, line: 43, column: 5)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DILocation(line: 46, column: 20, scope: !27)
!33 = !DILocation(line: 46, column: 37, scope: !27)
!34 = !DILocation(line: 46, column: 30, scope: !27)
!35 = !DILocalVariable(name: "environment", scope: !27, file: !1, line: 47, type: !13)
!36 = !DILocation(line: 47, column: 20, scope: !27)
!37 = !DILocation(line: 47, column: 34, scope: !27)
!38 = !DILocation(line: 49, column: 17, scope: !39)
!39 = distinct !DILexicalBlock(scope: !27, file: !1, line: 49, column: 17)
!40 = !DILocation(line: 49, column: 29, scope: !39)
!41 = !DILocation(line: 49, column: 17, scope: !27)
!42 = !DILocation(line: 52, column: 25, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 50, column: 13)
!44 = !DILocation(line: 52, column: 30, scope: !43)
!45 = !DILocation(line: 52, column: 29, scope: !43)
!46 = !DILocation(line: 52, column: 39, scope: !43)
!47 = !DILocation(line: 52, column: 56, scope: !43)
!48 = !DILocation(line: 52, column: 55, scope: !43)
!49 = !DILocation(line: 52, column: 63, scope: !43)
!50 = !DILocation(line: 52, column: 17, scope: !43)
!51 = !DILocation(line: 53, column: 13, scope: !43)
!52 = !DILocation(line: 55, column: 5, scope: !28)
!53 = !DILocation(line: 56, column: 8, scope: !54)
!54 = distinct !DILexicalBlock(scope: !9, file: !1, line: 56, column: 8)
!55 = !DILocation(line: 56, column: 8, scope: !9)
!56 = !DILocalVariable(name: "i", scope: !57, file: !1, line: 59, type: !59)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 58, column: 9)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 57, column: 5)
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DILocation(line: 59, column: 17, scope: !57)
!61 = !DILocalVariable(name: "n", scope: !57, file: !1, line: 59, type: !59)
!62 = !DILocation(line: 59, column: 20, scope: !57)
!63 = !DILocalVariable(name: "intVariable", scope: !57, file: !1, line: 59, type: !59)
!64 = !DILocation(line: 59, column: 23, scope: !57)
!65 = !DILocation(line: 60, column: 24, scope: !66)
!66 = distinct !DILexicalBlock(scope: !57, file: !1, line: 60, column: 17)
!67 = !DILocation(line: 60, column: 17, scope: !66)
!68 = !DILocation(line: 60, column: 40, scope: !66)
!69 = !DILocation(line: 60, column: 17, scope: !57)
!70 = !DILocation(line: 63, column: 29, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 61, column: 13)
!72 = !DILocation(line: 64, column: 24, scope: !73)
!73 = distinct !DILexicalBlock(scope: !71, file: !1, line: 64, column: 17)
!74 = !DILocation(line: 64, column: 22, scope: !73)
!75 = !DILocation(line: 64, column: 29, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !1, line: 64, column: 17)
!77 = !DILocation(line: 64, column: 33, scope: !76)
!78 = !DILocation(line: 64, column: 31, scope: !76)
!79 = !DILocation(line: 64, column: 17, scope: !73)
!80 = !DILocation(line: 67, column: 32, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !1, line: 65, column: 17)
!82 = !DILocation(line: 68, column: 17, scope: !81)
!83 = !DILocation(line: 64, column: 37, scope: !76)
!84 = !DILocation(line: 64, column: 17, scope: !76)
!85 = distinct !{!85, !79, !86, !87}
!86 = !DILocation(line: 68, column: 17, scope: !73)
!87 = !{!"llvm.loop.mustprogress"}
!88 = !DILocation(line: 69, column: 30, scope: !71)
!89 = !DILocation(line: 69, column: 17, scope: !71)
!90 = !DILocation(line: 70, column: 13, scope: !71)
!91 = !DILocation(line: 72, column: 5, scope: !58)
!92 = !DILocation(line: 73, column: 1, scope: !9)
!93 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 80, type: !10, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!94 = !DILocalVariable(name: "data", scope: !93, file: !1, line: 82, type: !13)
!95 = !DILocation(line: 82, column: 12, scope: !93)
!96 = !DILocalVariable(name: "dataBuffer", scope: !93, file: !1, line: 83, type: !17)
!97 = !DILocation(line: 83, column: 10, scope: !93)
!98 = !DILocation(line: 84, column: 12, scope: !93)
!99 = !DILocation(line: 84, column: 10, scope: !93)
!100 = !DILocation(line: 85, column: 8, scope: !101)
!101 = distinct !DILexicalBlock(scope: !93, file: !1, line: 85, column: 8)
!102 = !DILocation(line: 85, column: 8, scope: !93)
!103 = !DILocalVariable(name: "dataLen", scope: !104, file: !1, line: 89, type: !29)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 87, column: 9)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 86, column: 5)
!106 = !DILocation(line: 89, column: 20, scope: !104)
!107 = !DILocation(line: 89, column: 37, scope: !104)
!108 = !DILocation(line: 89, column: 30, scope: !104)
!109 = !DILocalVariable(name: "environment", scope: !104, file: !1, line: 90, type: !13)
!110 = !DILocation(line: 90, column: 20, scope: !104)
!111 = !DILocation(line: 90, column: 34, scope: !104)
!112 = !DILocation(line: 92, column: 17, scope: !113)
!113 = distinct !DILexicalBlock(scope: !104, file: !1, line: 92, column: 17)
!114 = !DILocation(line: 92, column: 29, scope: !113)
!115 = !DILocation(line: 92, column: 17, scope: !104)
!116 = !DILocation(line: 95, column: 25, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 93, column: 13)
!118 = !DILocation(line: 95, column: 30, scope: !117)
!119 = !DILocation(line: 95, column: 29, scope: !117)
!120 = !DILocation(line: 95, column: 39, scope: !117)
!121 = !DILocation(line: 95, column: 56, scope: !117)
!122 = !DILocation(line: 95, column: 55, scope: !117)
!123 = !DILocation(line: 95, column: 63, scope: !117)
!124 = !DILocation(line: 95, column: 17, scope: !117)
!125 = !DILocation(line: 96, column: 13, scope: !117)
!126 = !DILocation(line: 98, column: 5, scope: !105)
!127 = !DILocation(line: 99, column: 8, scope: !128)
!128 = distinct !DILexicalBlock(scope: !93, file: !1, line: 99, column: 8)
!129 = !DILocation(line: 99, column: 8, scope: !93)
!130 = !DILocation(line: 102, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !1, line: 100, column: 5)
!132 = !DILocation(line: 103, column: 5, scope: !131)
!133 = !DILocalVariable(name: "i", scope: !134, file: !1, line: 107, type: !59)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 106, column: 9)
!135 = distinct !DILexicalBlock(scope: !128, file: !1, line: 105, column: 5)
!136 = !DILocation(line: 107, column: 17, scope: !134)
!137 = !DILocalVariable(name: "n", scope: !134, file: !1, line: 107, type: !59)
!138 = !DILocation(line: 107, column: 20, scope: !134)
!139 = !DILocalVariable(name: "intVariable", scope: !134, file: !1, line: 107, type: !59)
!140 = !DILocation(line: 107, column: 23, scope: !134)
!141 = !DILocation(line: 108, column: 24, scope: !142)
!142 = distinct !DILexicalBlock(scope: !134, file: !1, line: 108, column: 17)
!143 = !DILocation(line: 108, column: 17, scope: !142)
!144 = !DILocation(line: 108, column: 40, scope: !142)
!145 = !DILocation(line: 108, column: 17, scope: !134)
!146 = !DILocation(line: 111, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 111, column: 21)
!148 = distinct !DILexicalBlock(scope: !142, file: !1, line: 109, column: 13)
!149 = !DILocation(line: 111, column: 23, scope: !147)
!150 = !DILocation(line: 111, column: 21, scope: !148)
!151 = !DILocation(line: 113, column: 33, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !1, line: 112, column: 17)
!153 = !DILocation(line: 114, column: 28, scope: !154)
!154 = distinct !DILexicalBlock(scope: !152, file: !1, line: 114, column: 21)
!155 = !DILocation(line: 114, column: 26, scope: !154)
!156 = !DILocation(line: 114, column: 33, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !1, line: 114, column: 21)
!158 = !DILocation(line: 114, column: 37, scope: !157)
!159 = !DILocation(line: 114, column: 35, scope: !157)
!160 = !DILocation(line: 114, column: 21, scope: !154)
!161 = !DILocation(line: 117, column: 36, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !1, line: 115, column: 21)
!163 = !DILocation(line: 118, column: 21, scope: !162)
!164 = !DILocation(line: 114, column: 41, scope: !157)
!165 = !DILocation(line: 114, column: 21, scope: !157)
!166 = distinct !{!166, !160, !167, !87}
!167 = !DILocation(line: 118, column: 21, scope: !154)
!168 = !DILocation(line: 119, column: 34, scope: !152)
!169 = !DILocation(line: 119, column: 21, scope: !152)
!170 = !DILocation(line: 120, column: 17, scope: !152)
!171 = !DILocation(line: 121, column: 13, scope: !148)
!172 = !DILocation(line: 124, column: 1, scope: !93)
!173 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 127, type: !10, scopeLine: 128, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!174 = !DILocalVariable(name: "data", scope: !173, file: !1, line: 129, type: !13)
!175 = !DILocation(line: 129, column: 12, scope: !173)
!176 = !DILocalVariable(name: "dataBuffer", scope: !173, file: !1, line: 130, type: !17)
!177 = !DILocation(line: 130, column: 10, scope: !173)
!178 = !DILocation(line: 131, column: 12, scope: !173)
!179 = !DILocation(line: 131, column: 10, scope: !173)
!180 = !DILocation(line: 132, column: 8, scope: !181)
!181 = distinct !DILexicalBlock(scope: !173, file: !1, line: 132, column: 8)
!182 = !DILocation(line: 132, column: 8, scope: !173)
!183 = !DILocalVariable(name: "dataLen", scope: !184, file: !1, line: 136, type: !29)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 134, column: 9)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 133, column: 5)
!186 = !DILocation(line: 136, column: 20, scope: !184)
!187 = !DILocation(line: 136, column: 37, scope: !184)
!188 = !DILocation(line: 136, column: 30, scope: !184)
!189 = !DILocalVariable(name: "environment", scope: !184, file: !1, line: 137, type: !13)
!190 = !DILocation(line: 137, column: 20, scope: !184)
!191 = !DILocation(line: 137, column: 34, scope: !184)
!192 = !DILocation(line: 139, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !184, file: !1, line: 139, column: 17)
!194 = !DILocation(line: 139, column: 29, scope: !193)
!195 = !DILocation(line: 139, column: 17, scope: !184)
!196 = !DILocation(line: 142, column: 25, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !1, line: 140, column: 13)
!198 = !DILocation(line: 142, column: 30, scope: !197)
!199 = !DILocation(line: 142, column: 29, scope: !197)
!200 = !DILocation(line: 142, column: 39, scope: !197)
!201 = !DILocation(line: 142, column: 56, scope: !197)
!202 = !DILocation(line: 142, column: 55, scope: !197)
!203 = !DILocation(line: 142, column: 63, scope: !197)
!204 = !DILocation(line: 142, column: 17, scope: !197)
!205 = !DILocation(line: 143, column: 13, scope: !197)
!206 = !DILocation(line: 145, column: 5, scope: !185)
!207 = !DILocation(line: 146, column: 8, scope: !208)
!208 = distinct !DILexicalBlock(scope: !173, file: !1, line: 146, column: 8)
!209 = !DILocation(line: 146, column: 8, scope: !173)
!210 = !DILocalVariable(name: "i", scope: !211, file: !1, line: 149, type: !59)
!211 = distinct !DILexicalBlock(scope: !212, file: !1, line: 148, column: 9)
!212 = distinct !DILexicalBlock(scope: !208, file: !1, line: 147, column: 5)
!213 = !DILocation(line: 149, column: 17, scope: !211)
!214 = !DILocalVariable(name: "n", scope: !211, file: !1, line: 149, type: !59)
!215 = !DILocation(line: 149, column: 20, scope: !211)
!216 = !DILocalVariable(name: "intVariable", scope: !211, file: !1, line: 149, type: !59)
!217 = !DILocation(line: 149, column: 23, scope: !211)
!218 = !DILocation(line: 150, column: 24, scope: !219)
!219 = distinct !DILexicalBlock(scope: !211, file: !1, line: 150, column: 17)
!220 = !DILocation(line: 150, column: 17, scope: !219)
!221 = !DILocation(line: 150, column: 40, scope: !219)
!222 = !DILocation(line: 150, column: 17, scope: !211)
!223 = !DILocation(line: 153, column: 21, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !1, line: 153, column: 21)
!225 = distinct !DILexicalBlock(scope: !219, file: !1, line: 151, column: 13)
!226 = !DILocation(line: 153, column: 23, scope: !224)
!227 = !DILocation(line: 153, column: 21, scope: !225)
!228 = !DILocation(line: 155, column: 33, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !1, line: 154, column: 17)
!230 = !DILocation(line: 156, column: 28, scope: !231)
!231 = distinct !DILexicalBlock(scope: !229, file: !1, line: 156, column: 21)
!232 = !DILocation(line: 156, column: 26, scope: !231)
!233 = !DILocation(line: 156, column: 33, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !1, line: 156, column: 21)
!235 = !DILocation(line: 156, column: 37, scope: !234)
!236 = !DILocation(line: 156, column: 35, scope: !234)
!237 = !DILocation(line: 156, column: 21, scope: !231)
!238 = !DILocation(line: 159, column: 36, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !1, line: 157, column: 21)
!240 = !DILocation(line: 160, column: 21, scope: !239)
!241 = !DILocation(line: 156, column: 41, scope: !234)
!242 = !DILocation(line: 156, column: 21, scope: !234)
!243 = distinct !{!243, !237, !244, !87}
!244 = !DILocation(line: 160, column: 21, scope: !231)
!245 = !DILocation(line: 161, column: 34, scope: !229)
!246 = !DILocation(line: 161, column: 21, scope: !229)
!247 = !DILocation(line: 162, column: 17, scope: !229)
!248 = !DILocation(line: 163, column: 13, scope: !225)
!249 = !DILocation(line: 165, column: 5, scope: !212)
!250 = !DILocation(line: 166, column: 1, scope: !173)
!251 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 169, type: !10, scopeLine: 170, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!252 = !DILocalVariable(name: "data", scope: !251, file: !1, line: 171, type: !13)
!253 = !DILocation(line: 171, column: 12, scope: !251)
!254 = !DILocalVariable(name: "dataBuffer", scope: !251, file: !1, line: 172, type: !17)
!255 = !DILocation(line: 172, column: 10, scope: !251)
!256 = !DILocation(line: 173, column: 12, scope: !251)
!257 = !DILocation(line: 173, column: 10, scope: !251)
!258 = !DILocation(line: 174, column: 8, scope: !259)
!259 = distinct !DILexicalBlock(scope: !251, file: !1, line: 174, column: 8)
!260 = !DILocation(line: 174, column: 8, scope: !251)
!261 = !DILocation(line: 177, column: 9, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !1, line: 175, column: 5)
!263 = !DILocation(line: 178, column: 5, scope: !262)
!264 = !DILocation(line: 182, column: 16, scope: !265)
!265 = distinct !DILexicalBlock(scope: !259, file: !1, line: 180, column: 5)
!266 = !DILocation(line: 182, column: 9, scope: !265)
!267 = !DILocation(line: 184, column: 8, scope: !268)
!268 = distinct !DILexicalBlock(scope: !251, file: !1, line: 184, column: 8)
!269 = !DILocation(line: 184, column: 8, scope: !251)
!270 = !DILocalVariable(name: "i", scope: !271, file: !1, line: 187, type: !59)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 186, column: 9)
!272 = distinct !DILexicalBlock(scope: !268, file: !1, line: 185, column: 5)
!273 = !DILocation(line: 187, column: 17, scope: !271)
!274 = !DILocalVariable(name: "n", scope: !271, file: !1, line: 187, type: !59)
!275 = !DILocation(line: 187, column: 20, scope: !271)
!276 = !DILocalVariable(name: "intVariable", scope: !271, file: !1, line: 187, type: !59)
!277 = !DILocation(line: 187, column: 23, scope: !271)
!278 = !DILocation(line: 188, column: 24, scope: !279)
!279 = distinct !DILexicalBlock(scope: !271, file: !1, line: 188, column: 17)
!280 = !DILocation(line: 188, column: 17, scope: !279)
!281 = !DILocation(line: 188, column: 40, scope: !279)
!282 = !DILocation(line: 188, column: 17, scope: !271)
!283 = !DILocation(line: 191, column: 29, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !1, line: 189, column: 13)
!285 = !DILocation(line: 192, column: 24, scope: !286)
!286 = distinct !DILexicalBlock(scope: !284, file: !1, line: 192, column: 17)
!287 = !DILocation(line: 192, column: 22, scope: !286)
!288 = !DILocation(line: 192, column: 29, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !1, line: 192, column: 17)
!290 = !DILocation(line: 192, column: 33, scope: !289)
!291 = !DILocation(line: 192, column: 31, scope: !289)
!292 = !DILocation(line: 192, column: 17, scope: !286)
!293 = !DILocation(line: 195, column: 32, scope: !294)
!294 = distinct !DILexicalBlock(scope: !289, file: !1, line: 193, column: 17)
!295 = !DILocation(line: 196, column: 17, scope: !294)
!296 = !DILocation(line: 192, column: 37, scope: !289)
!297 = !DILocation(line: 192, column: 17, scope: !289)
!298 = distinct !{!298, !292, !299, !87}
!299 = !DILocation(line: 196, column: 17, scope: !286)
!300 = !DILocation(line: 197, column: 30, scope: !284)
!301 = !DILocation(line: 197, column: 17, scope: !284)
!302 = !DILocation(line: 198, column: 13, scope: !284)
!303 = !DILocation(line: 200, column: 5, scope: !272)
!304 = !DILocation(line: 201, column: 1, scope: !251)
!305 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 204, type: !10, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!306 = !DILocalVariable(name: "data", scope: !305, file: !1, line: 206, type: !13)
!307 = !DILocation(line: 206, column: 12, scope: !305)
!308 = !DILocalVariable(name: "dataBuffer", scope: !305, file: !1, line: 207, type: !17)
!309 = !DILocation(line: 207, column: 10, scope: !305)
!310 = !DILocation(line: 208, column: 12, scope: !305)
!311 = !DILocation(line: 208, column: 10, scope: !305)
!312 = !DILocation(line: 209, column: 8, scope: !313)
!313 = distinct !DILexicalBlock(scope: !305, file: !1, line: 209, column: 8)
!314 = !DILocation(line: 209, column: 8, scope: !305)
!315 = !DILocation(line: 212, column: 16, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !1, line: 210, column: 5)
!317 = !DILocation(line: 212, column: 9, scope: !316)
!318 = !DILocation(line: 213, column: 5, scope: !316)
!319 = !DILocation(line: 214, column: 8, scope: !320)
!320 = distinct !DILexicalBlock(scope: !305, file: !1, line: 214, column: 8)
!321 = !DILocation(line: 214, column: 8, scope: !305)
!322 = !DILocalVariable(name: "i", scope: !323, file: !1, line: 217, type: !59)
!323 = distinct !DILexicalBlock(scope: !324, file: !1, line: 216, column: 9)
!324 = distinct !DILexicalBlock(scope: !320, file: !1, line: 215, column: 5)
!325 = !DILocation(line: 217, column: 17, scope: !323)
!326 = !DILocalVariable(name: "n", scope: !323, file: !1, line: 217, type: !59)
!327 = !DILocation(line: 217, column: 20, scope: !323)
!328 = !DILocalVariable(name: "intVariable", scope: !323, file: !1, line: 217, type: !59)
!329 = !DILocation(line: 217, column: 23, scope: !323)
!330 = !DILocation(line: 218, column: 24, scope: !331)
!331 = distinct !DILexicalBlock(scope: !323, file: !1, line: 218, column: 17)
!332 = !DILocation(line: 218, column: 17, scope: !331)
!333 = !DILocation(line: 218, column: 40, scope: !331)
!334 = !DILocation(line: 218, column: 17, scope: !323)
!335 = !DILocation(line: 221, column: 29, scope: !336)
!336 = distinct !DILexicalBlock(scope: !331, file: !1, line: 219, column: 13)
!337 = !DILocation(line: 222, column: 24, scope: !338)
!338 = distinct !DILexicalBlock(scope: !336, file: !1, line: 222, column: 17)
!339 = !DILocation(line: 222, column: 22, scope: !338)
!340 = !DILocation(line: 222, column: 29, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !1, line: 222, column: 17)
!342 = !DILocation(line: 222, column: 33, scope: !341)
!343 = !DILocation(line: 222, column: 31, scope: !341)
!344 = !DILocation(line: 222, column: 17, scope: !338)
!345 = !DILocation(line: 225, column: 32, scope: !346)
!346 = distinct !DILexicalBlock(scope: !341, file: !1, line: 223, column: 17)
!347 = !DILocation(line: 226, column: 17, scope: !346)
!348 = !DILocation(line: 222, column: 37, scope: !341)
!349 = !DILocation(line: 222, column: 17, scope: !341)
!350 = distinct !{!350, !344, !351, !87}
!351 = !DILocation(line: 226, column: 17, scope: !338)
!352 = !DILocation(line: 227, column: 30, scope: !336)
!353 = !DILocation(line: 227, column: 17, scope: !336)
!354 = !DILocation(line: 228, column: 13, scope: !336)
!355 = !DILocation(line: 230, column: 5, scope: !324)
!356 = !DILocation(line: 231, column: 1, scope: !305)
!357 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_10_good", scope: !1, file: !1, line: 233, type: !10, scopeLine: 234, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!358 = !DILocation(line: 235, column: 5, scope: !357)
!359 = !DILocation(line: 236, column: 5, scope: !357)
!360 = !DILocation(line: 237, column: 5, scope: !357)
!361 = !DILocation(line: 238, column: 5, scope: !357)
!362 = !DILocation(line: 239, column: 1, scope: !357)
