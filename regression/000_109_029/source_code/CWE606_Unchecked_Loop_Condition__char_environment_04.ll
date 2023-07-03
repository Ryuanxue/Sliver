; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_04.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_04.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATIC_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@STATIC_CONST_FALSE = dso_local global i32 0, align 4, !dbg !8
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_04_bad() #0 !dbg !15 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %data, align 8, !dbg !28
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !29
  %tobool = icmp ne i32 %1, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end5, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !32, metadata !DIExpression()), !dbg !38
  %2 = load i8*, i8** %data, align 8, !dbg !39
  %call = call i64 @strlen(i8* %2) #6, !dbg !40
  store i64 %call, i64* %dataLen, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !41, metadata !DIExpression()), !dbg !42
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !43
  store i8* %call1, i8** %environment, align 8, !dbg !42
  %3 = load i8*, i8** %environment, align 8, !dbg !44
  %cmp = icmp ne i8* %3, null, !dbg !46
  br i1 %cmp, label %if.then2, label %if.end, !dbg !47

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !48
  %5 = load i64, i64* %dataLen, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !51
  %6 = load i8*, i8** %environment, align 8, !dbg !52
  %7 = load i64, i64* %dataLen, align 8, !dbg !53
  %sub = sub i64 100, %7, !dbg !54
  %sub3 = sub i64 %sub, 1, !dbg !55
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !56
  br label %if.end, !dbg !57

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !58

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !59
  %tobool6 = icmp ne i32 %8, 0, !dbg !59
  br i1 %tobool6, label %if.then7, label %if.end14, !dbg !61

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !62, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %n, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !68, metadata !DIExpression()), !dbg !69
  %9 = load i8*, i8** %data, align 8, !dbg !70
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !72
  %cmp9 = icmp eq i32 %call8, 1, !dbg !73
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !74

if.then10:                                        ; preds = %if.then7
  store i32 0, i32* %intVariable, align 4, !dbg !75
  store i32 0, i32* %i, align 4, !dbg !77
  br label %for.cond, !dbg !79

for.cond:                                         ; preds = %for.inc, %if.then10
  %10 = load i32, i32* %i, align 4, !dbg !80
  %11 = load i32, i32* %n, align 4, !dbg !82
  %cmp11 = icmp slt i32 %10, %11, !dbg !83
  br i1 %cmp11, label %for.body, label %for.end, !dbg !84

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !85
  %inc = add nsw i32 %12, 1, !dbg !85
  store i32 %inc, i32* %intVariable, align 4, !dbg !85
  br label %for.inc, !dbg !87

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !88
  %inc12 = add nsw i32 %13, 1, !dbg !88
  store i32 %inc12, i32* %i, align 4, !dbg !88
  br label %for.cond, !dbg !89, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !93
  call void @printIntLine(i32 %14), !dbg !94
  br label %if.end13, !dbg !95

if.end13:                                         ; preds = %for.end, %if.then7
  br label %if.end14, !dbg !96

if.end14:                                         ; preds = %if.end13, %if.end5
  ret void, !dbg !97
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
define dso_local void @goodB2G1() #0 !dbg !98 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !102
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !102
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !103
  store i8* %arraydecay, i8** %data, align 8, !dbg !104
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !105
  %tobool = icmp ne i32 %1, 0, !dbg !105
  br i1 %tobool, label %if.then, label %if.end5, !dbg !107

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !108, metadata !DIExpression()), !dbg !111
  %2 = load i8*, i8** %data, align 8, !dbg !112
  %call = call i64 @strlen(i8* %2) #6, !dbg !113
  store i64 %call, i64* %dataLen, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !114, metadata !DIExpression()), !dbg !115
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !116
  store i8* %call1, i8** %environment, align 8, !dbg !115
  %3 = load i8*, i8** %environment, align 8, !dbg !117
  %cmp = icmp ne i8* %3, null, !dbg !119
  br i1 %cmp, label %if.then2, label %if.end, !dbg !120

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !121
  %5 = load i64, i64* %dataLen, align 8, !dbg !123
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !124
  %6 = load i8*, i8** %environment, align 8, !dbg !125
  %7 = load i64, i64* %dataLen, align 8, !dbg !126
  %sub = sub i64 100, %7, !dbg !127
  %sub3 = sub i64 %sub, 1, !dbg !128
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !129
  br label %if.end, !dbg !130

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !131

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !132
  %tobool6 = icmp ne i32 %8, 0, !dbg !132
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !134

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !135
  br label %if.end17, !dbg !137

if.else:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !138, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %n, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !144, metadata !DIExpression()), !dbg !145
  %9 = load i8*, i8** %data, align 8, !dbg !146
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !148
  %cmp9 = icmp eq i32 %call8, 1, !dbg !149
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !150

if.then10:                                        ; preds = %if.else
  %10 = load i32, i32* %n, align 4, !dbg !151
  %cmp11 = icmp slt i32 %10, 10000, !dbg !154
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !155

if.then12:                                        ; preds = %if.then10
  store i32 0, i32* %intVariable, align 4, !dbg !156
  store i32 0, i32* %i, align 4, !dbg !158
  br label %for.cond, !dbg !160

for.cond:                                         ; preds = %for.inc, %if.then12
  %11 = load i32, i32* %i, align 4, !dbg !161
  %12 = load i32, i32* %n, align 4, !dbg !163
  %cmp13 = icmp slt i32 %11, %12, !dbg !164
  br i1 %cmp13, label %for.body, label %for.end, !dbg !165

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !166
  %inc = add nsw i32 %13, 1, !dbg !166
  store i32 %inc, i32* %intVariable, align 4, !dbg !166
  br label %for.inc, !dbg !168

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !169
  %inc14 = add nsw i32 %14, 1, !dbg !169
  store i32 %inc14, i32* %i, align 4, !dbg !169
  br label %for.cond, !dbg !170, !llvm.loop !171

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !173
  call void @printIntLine(i32 %15), !dbg !174
  br label %if.end15, !dbg !175

if.end15:                                         ; preds = %for.end, %if.then10
  br label %if.end16, !dbg !176

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  ret void, !dbg !177
}

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !178 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !181, metadata !DIExpression()), !dbg !182
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !182
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !182
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !183
  store i8* %arraydecay, i8** %data, align 8, !dbg !184
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !185
  %tobool = icmp ne i32 %1, 0, !dbg !185
  br i1 %tobool, label %if.then, label %if.end5, !dbg !187

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !188, metadata !DIExpression()), !dbg !191
  %2 = load i8*, i8** %data, align 8, !dbg !192
  %call = call i64 @strlen(i8* %2) #6, !dbg !193
  store i64 %call, i64* %dataLen, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !194, metadata !DIExpression()), !dbg !195
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !196
  store i8* %call1, i8** %environment, align 8, !dbg !195
  %3 = load i8*, i8** %environment, align 8, !dbg !197
  %cmp = icmp ne i8* %3, null, !dbg !199
  br i1 %cmp, label %if.then2, label %if.end, !dbg !200

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !201
  %5 = load i64, i64* %dataLen, align 8, !dbg !203
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !204
  %6 = load i8*, i8** %environment, align 8, !dbg !205
  %7 = load i64, i64* %dataLen, align 8, !dbg !206
  %sub = sub i64 100, %7, !dbg !207
  %sub3 = sub i64 %sub, 1, !dbg !208
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !209
  br label %if.end, !dbg !210

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !211

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !212
  %tobool6 = icmp ne i32 %8, 0, !dbg !212
  br i1 %tobool6, label %if.then7, label %if.end17, !dbg !214

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !215, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %n, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !221, metadata !DIExpression()), !dbg !222
  %9 = load i8*, i8** %data, align 8, !dbg !223
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !225
  %cmp9 = icmp eq i32 %call8, 1, !dbg !226
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !227

if.then10:                                        ; preds = %if.then7
  %10 = load i32, i32* %n, align 4, !dbg !228
  %cmp11 = icmp slt i32 %10, 10000, !dbg !231
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !232

if.then12:                                        ; preds = %if.then10
  store i32 0, i32* %intVariable, align 4, !dbg !233
  store i32 0, i32* %i, align 4, !dbg !235
  br label %for.cond, !dbg !237

for.cond:                                         ; preds = %for.inc, %if.then12
  %11 = load i32, i32* %i, align 4, !dbg !238
  %12 = load i32, i32* %n, align 4, !dbg !240
  %cmp13 = icmp slt i32 %11, %12, !dbg !241
  br i1 %cmp13, label %for.body, label %for.end, !dbg !242

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !243
  %inc = add nsw i32 %13, 1, !dbg !243
  store i32 %inc, i32* %intVariable, align 4, !dbg !243
  br label %for.inc, !dbg !245

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !246
  %inc14 = add nsw i32 %14, 1, !dbg !246
  store i32 %inc14, i32* %i, align 4, !dbg !246
  br label %for.cond, !dbg !247, !llvm.loop !248

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !250
  call void @printIntLine(i32 %15), !dbg !251
  br label %if.end15, !dbg !252

if.end15:                                         ; preds = %for.end, %if.then10
  br label %if.end16, !dbg !253

if.end16:                                         ; preds = %if.end15, %if.then7
  br label %if.end17, !dbg !254

if.end17:                                         ; preds = %if.end16, %if.end5
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !256 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !260
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !260
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !261
  store i8* %arraydecay, i8** %data, align 8, !dbg !262
  %1 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !263
  %tobool = icmp ne i32 %1, 0, !dbg !263
  br i1 %tobool, label %if.then, label %if.else, !dbg !265

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !266
  br label %if.end, !dbg !268

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !269
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !271
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !272
  %tobool1 = icmp ne i32 %3, 0, !dbg !272
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !274

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !275, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i32* %n, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !281, metadata !DIExpression()), !dbg !282
  %4 = load i8*, i8** %data, align 8, !dbg !283
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !285
  %cmp = icmp eq i32 %call3, 1, !dbg !286
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !287

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !288
  store i32 0, i32* %i, align 4, !dbg !290
  br label %for.cond, !dbg !292

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !293
  %6 = load i32, i32* %n, align 4, !dbg !295
  %cmp5 = icmp slt i32 %5, %6, !dbg !296
  br i1 %cmp5, label %for.body, label %for.end, !dbg !297

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !298
  %inc = add nsw i32 %7, 1, !dbg !298
  store i32 %inc, i32* %intVariable, align 4, !dbg !298
  br label %for.inc, !dbg !300

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !301
  %inc6 = add nsw i32 %8, 1, !dbg !301
  store i32 %inc6, i32* %i, align 4, !dbg !301
  br label %for.cond, !dbg !302, !llvm.loop !303

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !305
  call void @printIntLine(i32 %9), !dbg !306
  br label %if.end7, !dbg !307

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !308

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !309
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !310 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !311, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !313, metadata !DIExpression()), !dbg !314
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !314
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !314
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !315
  store i8* %arraydecay, i8** %data, align 8, !dbg !316
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !317
  %tobool = icmp ne i32 %1, 0, !dbg !317
  br i1 %tobool, label %if.then, label %if.end, !dbg !319

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !320
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !322
  br label %if.end, !dbg !323

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !324
  %tobool1 = icmp ne i32 %3, 0, !dbg !324
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !326

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.declare(metadata i32* %n, metadata !331, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !333, metadata !DIExpression()), !dbg !334
  %4 = load i8*, i8** %data, align 8, !dbg !335
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !337
  %cmp = icmp eq i32 %call3, 1, !dbg !338
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !339

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !340
  store i32 0, i32* %i, align 4, !dbg !342
  br label %for.cond, !dbg !344

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !345
  %6 = load i32, i32* %n, align 4, !dbg !347
  %cmp5 = icmp slt i32 %5, %6, !dbg !348
  br i1 %cmp5, label %for.body, label %for.end, !dbg !349

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !350
  %inc = add nsw i32 %7, 1, !dbg !350
  store i32 %inc, i32* %intVariable, align 4, !dbg !350
  br label %for.inc, !dbg !352

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !353
  %inc6 = add nsw i32 %8, 1, !dbg !353
  store i32 %inc6, i32* %i, align 4, !dbg !353
  br label %for.cond, !dbg !354, !llvm.loop !355

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !357
  call void @printIntLine(i32 %9), !dbg !358
  br label %if.end7, !dbg !359

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !360

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !361
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_04_good() #0 !dbg !362 {
entry:
  call void @goodB2G1(), !dbg !363
  call void @goodB2G2(), !dbg !364
  call void @goodG2B1(), !dbg !365
  call void @goodG2B2(), !dbg !366
  ret void, !dbg !367
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_TRUE", scope: !2, file: !3, line: 38, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_04.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_029/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "STATIC_CONST_FALSE", scope: !2, file: !3, line: 39, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 12.0.0"}
!15 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_04_bad", scope: !3, file: !3, line: 43, type: !16, scopeLine: 44, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !DILocalVariable(name: "data", scope: !15, file: !3, line: 45, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DILocation(line: 45, column: 12, scope: !15)
!22 = !DILocalVariable(name: "dataBuffer", scope: !15, file: !3, line: 46, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 46, column: 10, scope: !15)
!27 = !DILocation(line: 47, column: 12, scope: !15)
!28 = !DILocation(line: 47, column: 10, scope: !15)
!29 = !DILocation(line: 48, column: 8, scope: !30)
!30 = distinct !DILexicalBlock(scope: !15, file: !3, line: 48, column: 8)
!31 = !DILocation(line: 48, column: 8, scope: !15)
!32 = !DILocalVariable(name: "dataLen", scope: !33, file: !3, line: 52, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !3, line: 50, column: 9)
!34 = distinct !DILexicalBlock(scope: !30, file: !3, line: 49, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 52, column: 20, scope: !33)
!39 = !DILocation(line: 52, column: 37, scope: !33)
!40 = !DILocation(line: 52, column: 30, scope: !33)
!41 = !DILocalVariable(name: "environment", scope: !33, file: !3, line: 53, type: !19)
!42 = !DILocation(line: 53, column: 20, scope: !33)
!43 = !DILocation(line: 53, column: 34, scope: !33)
!44 = !DILocation(line: 55, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !33, file: !3, line: 55, column: 17)
!46 = !DILocation(line: 55, column: 29, scope: !45)
!47 = !DILocation(line: 55, column: 17, scope: !33)
!48 = !DILocation(line: 58, column: 25, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !3, line: 56, column: 13)
!50 = !DILocation(line: 58, column: 30, scope: !49)
!51 = !DILocation(line: 58, column: 29, scope: !49)
!52 = !DILocation(line: 58, column: 39, scope: !49)
!53 = !DILocation(line: 58, column: 56, scope: !49)
!54 = !DILocation(line: 58, column: 55, scope: !49)
!55 = !DILocation(line: 58, column: 63, scope: !49)
!56 = !DILocation(line: 58, column: 17, scope: !49)
!57 = !DILocation(line: 59, column: 13, scope: !49)
!58 = !DILocation(line: 61, column: 5, scope: !34)
!59 = !DILocation(line: 62, column: 8, scope: !60)
!60 = distinct !DILexicalBlock(scope: !15, file: !3, line: 62, column: 8)
!61 = !DILocation(line: 62, column: 8, scope: !15)
!62 = !DILocalVariable(name: "i", scope: !63, file: !3, line: 65, type: !10)
!63 = distinct !DILexicalBlock(scope: !64, file: !3, line: 64, column: 9)
!64 = distinct !DILexicalBlock(scope: !60, file: !3, line: 63, column: 5)
!65 = !DILocation(line: 65, column: 17, scope: !63)
!66 = !DILocalVariable(name: "n", scope: !63, file: !3, line: 65, type: !10)
!67 = !DILocation(line: 65, column: 20, scope: !63)
!68 = !DILocalVariable(name: "intVariable", scope: !63, file: !3, line: 65, type: !10)
!69 = !DILocation(line: 65, column: 23, scope: !63)
!70 = !DILocation(line: 66, column: 24, scope: !71)
!71 = distinct !DILexicalBlock(scope: !63, file: !3, line: 66, column: 17)
!72 = !DILocation(line: 66, column: 17, scope: !71)
!73 = !DILocation(line: 66, column: 40, scope: !71)
!74 = !DILocation(line: 66, column: 17, scope: !63)
!75 = !DILocation(line: 69, column: 29, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !3, line: 67, column: 13)
!77 = !DILocation(line: 70, column: 24, scope: !78)
!78 = distinct !DILexicalBlock(scope: !76, file: !3, line: 70, column: 17)
!79 = !DILocation(line: 70, column: 22, scope: !78)
!80 = !DILocation(line: 70, column: 29, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !3, line: 70, column: 17)
!82 = !DILocation(line: 70, column: 33, scope: !81)
!83 = !DILocation(line: 70, column: 31, scope: !81)
!84 = !DILocation(line: 70, column: 17, scope: !78)
!85 = !DILocation(line: 73, column: 32, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !3, line: 71, column: 17)
!87 = !DILocation(line: 74, column: 17, scope: !86)
!88 = !DILocation(line: 70, column: 37, scope: !81)
!89 = !DILocation(line: 70, column: 17, scope: !81)
!90 = distinct !{!90, !84, !91, !92}
!91 = !DILocation(line: 74, column: 17, scope: !78)
!92 = !{!"llvm.loop.mustprogress"}
!93 = !DILocation(line: 75, column: 30, scope: !76)
!94 = !DILocation(line: 75, column: 17, scope: !76)
!95 = !DILocation(line: 76, column: 13, scope: !76)
!96 = !DILocation(line: 78, column: 5, scope: !64)
!97 = !DILocation(line: 79, column: 1, scope: !15)
!98 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 86, type: !16, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!99 = !DILocalVariable(name: "data", scope: !98, file: !3, line: 88, type: !19)
!100 = !DILocation(line: 88, column: 12, scope: !98)
!101 = !DILocalVariable(name: "dataBuffer", scope: !98, file: !3, line: 89, type: !23)
!102 = !DILocation(line: 89, column: 10, scope: !98)
!103 = !DILocation(line: 90, column: 12, scope: !98)
!104 = !DILocation(line: 90, column: 10, scope: !98)
!105 = !DILocation(line: 91, column: 8, scope: !106)
!106 = distinct !DILexicalBlock(scope: !98, file: !3, line: 91, column: 8)
!107 = !DILocation(line: 91, column: 8, scope: !98)
!108 = !DILocalVariable(name: "dataLen", scope: !109, file: !3, line: 95, type: !35)
!109 = distinct !DILexicalBlock(scope: !110, file: !3, line: 93, column: 9)
!110 = distinct !DILexicalBlock(scope: !106, file: !3, line: 92, column: 5)
!111 = !DILocation(line: 95, column: 20, scope: !109)
!112 = !DILocation(line: 95, column: 37, scope: !109)
!113 = !DILocation(line: 95, column: 30, scope: !109)
!114 = !DILocalVariable(name: "environment", scope: !109, file: !3, line: 96, type: !19)
!115 = !DILocation(line: 96, column: 20, scope: !109)
!116 = !DILocation(line: 96, column: 34, scope: !109)
!117 = !DILocation(line: 98, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !109, file: !3, line: 98, column: 17)
!119 = !DILocation(line: 98, column: 29, scope: !118)
!120 = !DILocation(line: 98, column: 17, scope: !109)
!121 = !DILocation(line: 101, column: 25, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !3, line: 99, column: 13)
!123 = !DILocation(line: 101, column: 30, scope: !122)
!124 = !DILocation(line: 101, column: 29, scope: !122)
!125 = !DILocation(line: 101, column: 39, scope: !122)
!126 = !DILocation(line: 101, column: 56, scope: !122)
!127 = !DILocation(line: 101, column: 55, scope: !122)
!128 = !DILocation(line: 101, column: 63, scope: !122)
!129 = !DILocation(line: 101, column: 17, scope: !122)
!130 = !DILocation(line: 102, column: 13, scope: !122)
!131 = !DILocation(line: 104, column: 5, scope: !110)
!132 = !DILocation(line: 105, column: 8, scope: !133)
!133 = distinct !DILexicalBlock(scope: !98, file: !3, line: 105, column: 8)
!134 = !DILocation(line: 105, column: 8, scope: !98)
!135 = !DILocation(line: 108, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !3, line: 106, column: 5)
!137 = !DILocation(line: 109, column: 5, scope: !136)
!138 = !DILocalVariable(name: "i", scope: !139, file: !3, line: 113, type: !10)
!139 = distinct !DILexicalBlock(scope: !140, file: !3, line: 112, column: 9)
!140 = distinct !DILexicalBlock(scope: !133, file: !3, line: 111, column: 5)
!141 = !DILocation(line: 113, column: 17, scope: !139)
!142 = !DILocalVariable(name: "n", scope: !139, file: !3, line: 113, type: !10)
!143 = !DILocation(line: 113, column: 20, scope: !139)
!144 = !DILocalVariable(name: "intVariable", scope: !139, file: !3, line: 113, type: !10)
!145 = !DILocation(line: 113, column: 23, scope: !139)
!146 = !DILocation(line: 114, column: 24, scope: !147)
!147 = distinct !DILexicalBlock(scope: !139, file: !3, line: 114, column: 17)
!148 = !DILocation(line: 114, column: 17, scope: !147)
!149 = !DILocation(line: 114, column: 40, scope: !147)
!150 = !DILocation(line: 114, column: 17, scope: !139)
!151 = !DILocation(line: 117, column: 21, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 117, column: 21)
!153 = distinct !DILexicalBlock(scope: !147, file: !3, line: 115, column: 13)
!154 = !DILocation(line: 117, column: 23, scope: !152)
!155 = !DILocation(line: 117, column: 21, scope: !153)
!156 = !DILocation(line: 119, column: 33, scope: !157)
!157 = distinct !DILexicalBlock(scope: !152, file: !3, line: 118, column: 17)
!158 = !DILocation(line: 120, column: 28, scope: !159)
!159 = distinct !DILexicalBlock(scope: !157, file: !3, line: 120, column: 21)
!160 = !DILocation(line: 120, column: 26, scope: !159)
!161 = !DILocation(line: 120, column: 33, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !3, line: 120, column: 21)
!163 = !DILocation(line: 120, column: 37, scope: !162)
!164 = !DILocation(line: 120, column: 35, scope: !162)
!165 = !DILocation(line: 120, column: 21, scope: !159)
!166 = !DILocation(line: 123, column: 36, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !3, line: 121, column: 21)
!168 = !DILocation(line: 124, column: 21, scope: !167)
!169 = !DILocation(line: 120, column: 41, scope: !162)
!170 = !DILocation(line: 120, column: 21, scope: !162)
!171 = distinct !{!171, !165, !172, !92}
!172 = !DILocation(line: 124, column: 21, scope: !159)
!173 = !DILocation(line: 125, column: 34, scope: !157)
!174 = !DILocation(line: 125, column: 21, scope: !157)
!175 = !DILocation(line: 126, column: 17, scope: !157)
!176 = !DILocation(line: 127, column: 13, scope: !153)
!177 = !DILocation(line: 130, column: 1, scope: !98)
!178 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 133, type: !16, scopeLine: 134, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!179 = !DILocalVariable(name: "data", scope: !178, file: !3, line: 135, type: !19)
!180 = !DILocation(line: 135, column: 12, scope: !178)
!181 = !DILocalVariable(name: "dataBuffer", scope: !178, file: !3, line: 136, type: !23)
!182 = !DILocation(line: 136, column: 10, scope: !178)
!183 = !DILocation(line: 137, column: 12, scope: !178)
!184 = !DILocation(line: 137, column: 10, scope: !178)
!185 = !DILocation(line: 138, column: 8, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !3, line: 138, column: 8)
!187 = !DILocation(line: 138, column: 8, scope: !178)
!188 = !DILocalVariable(name: "dataLen", scope: !189, file: !3, line: 142, type: !35)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 140, column: 9)
!190 = distinct !DILexicalBlock(scope: !186, file: !3, line: 139, column: 5)
!191 = !DILocation(line: 142, column: 20, scope: !189)
!192 = !DILocation(line: 142, column: 37, scope: !189)
!193 = !DILocation(line: 142, column: 30, scope: !189)
!194 = !DILocalVariable(name: "environment", scope: !189, file: !3, line: 143, type: !19)
!195 = !DILocation(line: 143, column: 20, scope: !189)
!196 = !DILocation(line: 143, column: 34, scope: !189)
!197 = !DILocation(line: 145, column: 17, scope: !198)
!198 = distinct !DILexicalBlock(scope: !189, file: !3, line: 145, column: 17)
!199 = !DILocation(line: 145, column: 29, scope: !198)
!200 = !DILocation(line: 145, column: 17, scope: !189)
!201 = !DILocation(line: 148, column: 25, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !3, line: 146, column: 13)
!203 = !DILocation(line: 148, column: 30, scope: !202)
!204 = !DILocation(line: 148, column: 29, scope: !202)
!205 = !DILocation(line: 148, column: 39, scope: !202)
!206 = !DILocation(line: 148, column: 56, scope: !202)
!207 = !DILocation(line: 148, column: 55, scope: !202)
!208 = !DILocation(line: 148, column: 63, scope: !202)
!209 = !DILocation(line: 148, column: 17, scope: !202)
!210 = !DILocation(line: 149, column: 13, scope: !202)
!211 = !DILocation(line: 151, column: 5, scope: !190)
!212 = !DILocation(line: 152, column: 8, scope: !213)
!213 = distinct !DILexicalBlock(scope: !178, file: !3, line: 152, column: 8)
!214 = !DILocation(line: 152, column: 8, scope: !178)
!215 = !DILocalVariable(name: "i", scope: !216, file: !3, line: 155, type: !10)
!216 = distinct !DILexicalBlock(scope: !217, file: !3, line: 154, column: 9)
!217 = distinct !DILexicalBlock(scope: !213, file: !3, line: 153, column: 5)
!218 = !DILocation(line: 155, column: 17, scope: !216)
!219 = !DILocalVariable(name: "n", scope: !216, file: !3, line: 155, type: !10)
!220 = !DILocation(line: 155, column: 20, scope: !216)
!221 = !DILocalVariable(name: "intVariable", scope: !216, file: !3, line: 155, type: !10)
!222 = !DILocation(line: 155, column: 23, scope: !216)
!223 = !DILocation(line: 156, column: 24, scope: !224)
!224 = distinct !DILexicalBlock(scope: !216, file: !3, line: 156, column: 17)
!225 = !DILocation(line: 156, column: 17, scope: !224)
!226 = !DILocation(line: 156, column: 40, scope: !224)
!227 = !DILocation(line: 156, column: 17, scope: !216)
!228 = !DILocation(line: 159, column: 21, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 159, column: 21)
!230 = distinct !DILexicalBlock(scope: !224, file: !3, line: 157, column: 13)
!231 = !DILocation(line: 159, column: 23, scope: !229)
!232 = !DILocation(line: 159, column: 21, scope: !230)
!233 = !DILocation(line: 161, column: 33, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !3, line: 160, column: 17)
!235 = !DILocation(line: 162, column: 28, scope: !236)
!236 = distinct !DILexicalBlock(scope: !234, file: !3, line: 162, column: 21)
!237 = !DILocation(line: 162, column: 26, scope: !236)
!238 = !DILocation(line: 162, column: 33, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !3, line: 162, column: 21)
!240 = !DILocation(line: 162, column: 37, scope: !239)
!241 = !DILocation(line: 162, column: 35, scope: !239)
!242 = !DILocation(line: 162, column: 21, scope: !236)
!243 = !DILocation(line: 165, column: 36, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !3, line: 163, column: 21)
!245 = !DILocation(line: 166, column: 21, scope: !244)
!246 = !DILocation(line: 162, column: 41, scope: !239)
!247 = !DILocation(line: 162, column: 21, scope: !239)
!248 = distinct !{!248, !242, !249, !92}
!249 = !DILocation(line: 166, column: 21, scope: !236)
!250 = !DILocation(line: 167, column: 34, scope: !234)
!251 = !DILocation(line: 167, column: 21, scope: !234)
!252 = !DILocation(line: 168, column: 17, scope: !234)
!253 = !DILocation(line: 169, column: 13, scope: !230)
!254 = !DILocation(line: 171, column: 5, scope: !217)
!255 = !DILocation(line: 172, column: 1, scope: !178)
!256 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 175, type: !16, scopeLine: 176, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!257 = !DILocalVariable(name: "data", scope: !256, file: !3, line: 177, type: !19)
!258 = !DILocation(line: 177, column: 12, scope: !256)
!259 = !DILocalVariable(name: "dataBuffer", scope: !256, file: !3, line: 178, type: !23)
!260 = !DILocation(line: 178, column: 10, scope: !256)
!261 = !DILocation(line: 179, column: 12, scope: !256)
!262 = !DILocation(line: 179, column: 10, scope: !256)
!263 = !DILocation(line: 180, column: 8, scope: !264)
!264 = distinct !DILexicalBlock(scope: !256, file: !3, line: 180, column: 8)
!265 = !DILocation(line: 180, column: 8, scope: !256)
!266 = !DILocation(line: 183, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !3, line: 181, column: 5)
!268 = !DILocation(line: 184, column: 5, scope: !267)
!269 = !DILocation(line: 188, column: 16, scope: !270)
!270 = distinct !DILexicalBlock(scope: !264, file: !3, line: 186, column: 5)
!271 = !DILocation(line: 188, column: 9, scope: !270)
!272 = !DILocation(line: 190, column: 8, scope: !273)
!273 = distinct !DILexicalBlock(scope: !256, file: !3, line: 190, column: 8)
!274 = !DILocation(line: 190, column: 8, scope: !256)
!275 = !DILocalVariable(name: "i", scope: !276, file: !3, line: 193, type: !10)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 192, column: 9)
!277 = distinct !DILexicalBlock(scope: !273, file: !3, line: 191, column: 5)
!278 = !DILocation(line: 193, column: 17, scope: !276)
!279 = !DILocalVariable(name: "n", scope: !276, file: !3, line: 193, type: !10)
!280 = !DILocation(line: 193, column: 20, scope: !276)
!281 = !DILocalVariable(name: "intVariable", scope: !276, file: !3, line: 193, type: !10)
!282 = !DILocation(line: 193, column: 23, scope: !276)
!283 = !DILocation(line: 194, column: 24, scope: !284)
!284 = distinct !DILexicalBlock(scope: !276, file: !3, line: 194, column: 17)
!285 = !DILocation(line: 194, column: 17, scope: !284)
!286 = !DILocation(line: 194, column: 40, scope: !284)
!287 = !DILocation(line: 194, column: 17, scope: !276)
!288 = !DILocation(line: 197, column: 29, scope: !289)
!289 = distinct !DILexicalBlock(scope: !284, file: !3, line: 195, column: 13)
!290 = !DILocation(line: 198, column: 24, scope: !291)
!291 = distinct !DILexicalBlock(scope: !289, file: !3, line: 198, column: 17)
!292 = !DILocation(line: 198, column: 22, scope: !291)
!293 = !DILocation(line: 198, column: 29, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !3, line: 198, column: 17)
!295 = !DILocation(line: 198, column: 33, scope: !294)
!296 = !DILocation(line: 198, column: 31, scope: !294)
!297 = !DILocation(line: 198, column: 17, scope: !291)
!298 = !DILocation(line: 201, column: 32, scope: !299)
!299 = distinct !DILexicalBlock(scope: !294, file: !3, line: 199, column: 17)
!300 = !DILocation(line: 202, column: 17, scope: !299)
!301 = !DILocation(line: 198, column: 37, scope: !294)
!302 = !DILocation(line: 198, column: 17, scope: !294)
!303 = distinct !{!303, !297, !304, !92}
!304 = !DILocation(line: 202, column: 17, scope: !291)
!305 = !DILocation(line: 203, column: 30, scope: !289)
!306 = !DILocation(line: 203, column: 17, scope: !289)
!307 = !DILocation(line: 204, column: 13, scope: !289)
!308 = !DILocation(line: 206, column: 5, scope: !277)
!309 = !DILocation(line: 207, column: 1, scope: !256)
!310 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 210, type: !16, scopeLine: 211, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!311 = !DILocalVariable(name: "data", scope: !310, file: !3, line: 212, type: !19)
!312 = !DILocation(line: 212, column: 12, scope: !310)
!313 = !DILocalVariable(name: "dataBuffer", scope: !310, file: !3, line: 213, type: !23)
!314 = !DILocation(line: 213, column: 10, scope: !310)
!315 = !DILocation(line: 214, column: 12, scope: !310)
!316 = !DILocation(line: 214, column: 10, scope: !310)
!317 = !DILocation(line: 215, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !310, file: !3, line: 215, column: 8)
!319 = !DILocation(line: 215, column: 8, scope: !310)
!320 = !DILocation(line: 218, column: 16, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !3, line: 216, column: 5)
!322 = !DILocation(line: 218, column: 9, scope: !321)
!323 = !DILocation(line: 219, column: 5, scope: !321)
!324 = !DILocation(line: 220, column: 8, scope: !325)
!325 = distinct !DILexicalBlock(scope: !310, file: !3, line: 220, column: 8)
!326 = !DILocation(line: 220, column: 8, scope: !310)
!327 = !DILocalVariable(name: "i", scope: !328, file: !3, line: 223, type: !10)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 222, column: 9)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 221, column: 5)
!330 = !DILocation(line: 223, column: 17, scope: !328)
!331 = !DILocalVariable(name: "n", scope: !328, file: !3, line: 223, type: !10)
!332 = !DILocation(line: 223, column: 20, scope: !328)
!333 = !DILocalVariable(name: "intVariable", scope: !328, file: !3, line: 223, type: !10)
!334 = !DILocation(line: 223, column: 23, scope: !328)
!335 = !DILocation(line: 224, column: 24, scope: !336)
!336 = distinct !DILexicalBlock(scope: !328, file: !3, line: 224, column: 17)
!337 = !DILocation(line: 224, column: 17, scope: !336)
!338 = !DILocation(line: 224, column: 40, scope: !336)
!339 = !DILocation(line: 224, column: 17, scope: !328)
!340 = !DILocation(line: 227, column: 29, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !3, line: 225, column: 13)
!342 = !DILocation(line: 228, column: 24, scope: !343)
!343 = distinct !DILexicalBlock(scope: !341, file: !3, line: 228, column: 17)
!344 = !DILocation(line: 228, column: 22, scope: !343)
!345 = !DILocation(line: 228, column: 29, scope: !346)
!346 = distinct !DILexicalBlock(scope: !343, file: !3, line: 228, column: 17)
!347 = !DILocation(line: 228, column: 33, scope: !346)
!348 = !DILocation(line: 228, column: 31, scope: !346)
!349 = !DILocation(line: 228, column: 17, scope: !343)
!350 = !DILocation(line: 231, column: 32, scope: !351)
!351 = distinct !DILexicalBlock(scope: !346, file: !3, line: 229, column: 17)
!352 = !DILocation(line: 232, column: 17, scope: !351)
!353 = !DILocation(line: 228, column: 37, scope: !346)
!354 = !DILocation(line: 228, column: 17, scope: !346)
!355 = distinct !{!355, !349, !356, !92}
!356 = !DILocation(line: 232, column: 17, scope: !343)
!357 = !DILocation(line: 233, column: 30, scope: !341)
!358 = !DILocation(line: 233, column: 17, scope: !341)
!359 = !DILocation(line: 234, column: 13, scope: !341)
!360 = !DILocation(line: 236, column: 5, scope: !329)
!361 = !DILocation(line: 237, column: 1, scope: !310)
!362 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_04_good", scope: !3, file: !3, line: 239, type: !16, scopeLine: 240, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!363 = !DILocation(line: 241, column: 5, scope: !362)
!364 = !DILocation(line: 242, column: 5, scope: !362)
!365 = !DILocation(line: 243, column: 5, scope: !362)
!366 = !DILocation(line: 244, column: 5, scope: !362)
!367 = !DILocation(line: 245, column: 1, scope: !362)
