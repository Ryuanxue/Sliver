; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_13.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@GLOBAL_CONST_FIVE = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_13_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !21
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !22
  store i8* %arraydecay, i8** %data, align 8, !dbg !23
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !24
  %cmp = icmp eq i32 %1, 5, !dbg !26
  br i1 %cmp, label %if.then, label %if.end21, !dbg !27

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !28, metadata !DIExpression()), !dbg !34
  %2 = load i8*, i8** %data, align 8, !dbg !35
  %call = call i64 @strlen(i8* %2) #6, !dbg !36
  store i64 %call, i64* %dataLen, align 8, !dbg !34
  %3 = load i64, i64* %dataLen, align 8, !dbg !37
  %sub = sub i64 100, %3, !dbg !39
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !40
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !41

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !42
  %5 = load i64, i64* %dataLen, align 8, !dbg !45
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !46
  %6 = load i64, i64* %dataLen, align 8, !dbg !47
  %sub3 = sub i64 100, %6, !dbg !48
  %conv = trunc i64 %sub3 to i32, !dbg !49
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !50
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !51
  %cmp5 = icmp ne i8* %call4, null, !dbg !52
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !53

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !54
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !56
  store i64 %call8, i64* %dataLen, align 8, !dbg !57
  %9 = load i64, i64* %dataLen, align 8, !dbg !58
  %cmp9 = icmp ugt i64 %9, 0, !dbg !60
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !61

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !62
  %11 = load i64, i64* %dataLen, align 8, !dbg !63
  %sub11 = sub i64 %11, 1, !dbg !64
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !62
  %12 = load i8, i8* %arrayidx, align 1, !dbg !62
  %conv12 = sext i8 %12 to i32, !dbg !62
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !65
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !66

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !67
  %14 = load i64, i64* %dataLen, align 8, !dbg !69
  %sub16 = sub i64 %14, 1, !dbg !70
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !67
  store i8 0, i8* %arrayidx17, align 1, !dbg !71
  br label %if.end, !dbg !72

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !73

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !74
  %15 = load i8*, i8** %data, align 8, !dbg !76
  %16 = load i64, i64* %dataLen, align 8, !dbg !77
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !76
  store i8 0, i8* %arrayidx18, align 1, !dbg !78
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !79

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !80

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !81
  %cmp22 = icmp eq i32 %17, 5, !dbg !83
  br i1 %cmp22, label %if.then24, label %if.end33, !dbg !84

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !85, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %n, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !91, metadata !DIExpression()), !dbg !92
  %18 = load i8*, i8** %data, align 8, !dbg !93
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !95
  %cmp26 = icmp eq i32 %call25, 1, !dbg !96
  br i1 %cmp26, label %if.then28, label %if.end32, !dbg !97

if.then28:                                        ; preds = %if.then24
  store i32 0, i32* %intVariable, align 4, !dbg !98
  store i32 0, i32* %i, align 4, !dbg !100
  br label %for.cond, !dbg !102

for.cond:                                         ; preds = %for.inc, %if.then28
  %19 = load i32, i32* %i, align 4, !dbg !103
  %20 = load i32, i32* %n, align 4, !dbg !105
  %cmp29 = icmp slt i32 %19, %20, !dbg !106
  br i1 %cmp29, label %for.body, label %for.end, !dbg !107

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !108
  %inc = add nsw i32 %21, 1, !dbg !108
  store i32 %inc, i32* %intVariable, align 4, !dbg !108
  br label %for.inc, !dbg !110

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !111
  %inc31 = add nsw i32 %22, 1, !dbg !111
  store i32 %inc31, i32* %i, align 4, !dbg !111
  br label %for.cond, !dbg !112, !llvm.loop !113

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %intVariable, align 4, !dbg !116
  call void @printIntLine(i32 %23), !dbg !117
  br label %if.end32, !dbg !118

if.end32:                                         ; preds = %for.end, %if.then24
  br label %if.end33, !dbg !119

if.end33:                                         ; preds = %if.end32, %if.end21
  ret void, !dbg !120
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !121 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !125
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !125
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !126
  store i8* %arraydecay, i8** %data, align 8, !dbg !127
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !128
  %cmp = icmp eq i32 %1, 5, !dbg !130
  br i1 %cmp, label %if.then, label %if.end21, !dbg !131

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !132, metadata !DIExpression()), !dbg !135
  %2 = load i8*, i8** %data, align 8, !dbg !136
  %call = call i64 @strlen(i8* %2) #6, !dbg !137
  store i64 %call, i64* %dataLen, align 8, !dbg !135
  %3 = load i64, i64* %dataLen, align 8, !dbg !138
  %sub = sub i64 100, %3, !dbg !140
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !141
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !142

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !143
  %5 = load i64, i64* %dataLen, align 8, !dbg !146
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !147
  %6 = load i64, i64* %dataLen, align 8, !dbg !148
  %sub3 = sub i64 100, %6, !dbg !149
  %conv = trunc i64 %sub3 to i32, !dbg !150
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !151
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !152
  %cmp5 = icmp ne i8* %call4, null, !dbg !153
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !154

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !155
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !157
  store i64 %call8, i64* %dataLen, align 8, !dbg !158
  %9 = load i64, i64* %dataLen, align 8, !dbg !159
  %cmp9 = icmp ugt i64 %9, 0, !dbg !161
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !162

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !163
  %11 = load i64, i64* %dataLen, align 8, !dbg !164
  %sub11 = sub i64 %11, 1, !dbg !165
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !163
  %12 = load i8, i8* %arrayidx, align 1, !dbg !163
  %conv12 = sext i8 %12 to i32, !dbg !163
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !166
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !167

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !168
  %14 = load i64, i64* %dataLen, align 8, !dbg !170
  %sub16 = sub i64 %14, 1, !dbg !171
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !168
  store i8 0, i8* %arrayidx17, align 1, !dbg !172
  br label %if.end, !dbg !173

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !174

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !175
  %15 = load i8*, i8** %data, align 8, !dbg !177
  %16 = load i64, i64* %dataLen, align 8, !dbg !178
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !177
  store i8 0, i8* %arrayidx18, align 1, !dbg !179
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !180

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !181

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !182
  %cmp22 = icmp ne i32 %17, 5, !dbg !184
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !185

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !186
  br label %if.end38, !dbg !188

if.else25:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !189, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata i32* %n, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !195, metadata !DIExpression()), !dbg !196
  %18 = load i8*, i8** %data, align 8, !dbg !197
  %call26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !199
  %cmp27 = icmp eq i32 %call26, 1, !dbg !200
  br i1 %cmp27, label %if.then29, label %if.end37, !dbg !201

if.then29:                                        ; preds = %if.else25
  %19 = load i32, i32* %n, align 4, !dbg !202
  %cmp30 = icmp slt i32 %19, 10000, !dbg !205
  br i1 %cmp30, label %if.then32, label %if.end36, !dbg !206

if.then32:                                        ; preds = %if.then29
  store i32 0, i32* %intVariable, align 4, !dbg !207
  store i32 0, i32* %i, align 4, !dbg !209
  br label %for.cond, !dbg !211

for.cond:                                         ; preds = %for.inc, %if.then32
  %20 = load i32, i32* %i, align 4, !dbg !212
  %21 = load i32, i32* %n, align 4, !dbg !214
  %cmp33 = icmp slt i32 %20, %21, !dbg !215
  br i1 %cmp33, label %for.body, label %for.end, !dbg !216

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !217
  %inc = add nsw i32 %22, 1, !dbg !217
  store i32 %inc, i32* %intVariable, align 4, !dbg !217
  br label %for.inc, !dbg !219

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !220
  %inc35 = add nsw i32 %23, 1, !dbg !220
  store i32 %inc35, i32* %i, align 4, !dbg !220
  br label %for.cond, !dbg !221, !llvm.loop !222

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !224
  call void @printIntLine(i32 %24), !dbg !225
  br label %if.end36, !dbg !226

if.end36:                                         ; preds = %for.end, %if.then29
  br label %if.end37, !dbg !227

if.end37:                                         ; preds = %if.end36, %if.else25
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  ret void, !dbg !228
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !229 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !233
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !233
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !234
  store i8* %arraydecay, i8** %data, align 8, !dbg !235
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !236
  %cmp = icmp eq i32 %1, 5, !dbg !238
  br i1 %cmp, label %if.then, label %if.end21, !dbg !239

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !240, metadata !DIExpression()), !dbg !243
  %2 = load i8*, i8** %data, align 8, !dbg !244
  %call = call i64 @strlen(i8* %2) #6, !dbg !245
  store i64 %call, i64* %dataLen, align 8, !dbg !243
  %3 = load i64, i64* %dataLen, align 8, !dbg !246
  %sub = sub i64 100, %3, !dbg !248
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !249
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !250

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !251
  %5 = load i64, i64* %dataLen, align 8, !dbg !254
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !255
  %6 = load i64, i64* %dataLen, align 8, !dbg !256
  %sub3 = sub i64 100, %6, !dbg !257
  %conv = trunc i64 %sub3 to i32, !dbg !258
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !259
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !260
  %cmp5 = icmp ne i8* %call4, null, !dbg !261
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !262

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !263
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !265
  store i64 %call8, i64* %dataLen, align 8, !dbg !266
  %9 = load i64, i64* %dataLen, align 8, !dbg !267
  %cmp9 = icmp ugt i64 %9, 0, !dbg !269
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !270

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !271
  %11 = load i64, i64* %dataLen, align 8, !dbg !272
  %sub11 = sub i64 %11, 1, !dbg !273
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !271
  %12 = load i8, i8* %arrayidx, align 1, !dbg !271
  %conv12 = sext i8 %12 to i32, !dbg !271
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !274
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !275

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !276
  %14 = load i64, i64* %dataLen, align 8, !dbg !278
  %sub16 = sub i64 %14, 1, !dbg !279
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !276
  store i8 0, i8* %arrayidx17, align 1, !dbg !280
  br label %if.end, !dbg !281

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !282

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !283
  %15 = load i8*, i8** %data, align 8, !dbg !285
  %16 = load i64, i64* %dataLen, align 8, !dbg !286
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !285
  store i8 0, i8* %arrayidx18, align 1, !dbg !287
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !288

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !289

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !290
  %cmp22 = icmp eq i32 %17, 5, !dbg !292
  br i1 %cmp22, label %if.then24, label %if.end37, !dbg !293

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !294, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata i32* %n, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !300, metadata !DIExpression()), !dbg !301
  %18 = load i8*, i8** %data, align 8, !dbg !302
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !304
  %cmp26 = icmp eq i32 %call25, 1, !dbg !305
  br i1 %cmp26, label %if.then28, label %if.end36, !dbg !306

if.then28:                                        ; preds = %if.then24
  %19 = load i32, i32* %n, align 4, !dbg !307
  %cmp29 = icmp slt i32 %19, 10000, !dbg !310
  br i1 %cmp29, label %if.then31, label %if.end35, !dbg !311

if.then31:                                        ; preds = %if.then28
  store i32 0, i32* %intVariable, align 4, !dbg !312
  store i32 0, i32* %i, align 4, !dbg !314
  br label %for.cond, !dbg !316

for.cond:                                         ; preds = %for.inc, %if.then31
  %20 = load i32, i32* %i, align 4, !dbg !317
  %21 = load i32, i32* %n, align 4, !dbg !319
  %cmp32 = icmp slt i32 %20, %21, !dbg !320
  br i1 %cmp32, label %for.body, label %for.end, !dbg !321

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !322
  %inc = add nsw i32 %22, 1, !dbg !322
  store i32 %inc, i32* %intVariable, align 4, !dbg !322
  br label %for.inc, !dbg !324

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !325
  %inc34 = add nsw i32 %23, 1, !dbg !325
  store i32 %inc34, i32* %i, align 4, !dbg !325
  br label %for.cond, !dbg !326, !llvm.loop !327

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !329
  call void @printIntLine(i32 %24), !dbg !330
  br label %if.end35, !dbg !331

if.end35:                                         ; preds = %for.end, %if.then28
  br label %if.end36, !dbg !332

if.end36:                                         ; preds = %if.end35, %if.then24
  br label %if.end37, !dbg !333

if.end37:                                         ; preds = %if.end36, %if.end21
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !335 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !339
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !339
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !340
  store i8* %arraydecay, i8** %data, align 8, !dbg !341
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !342
  %cmp = icmp ne i32 %1, 5, !dbg !344
  br i1 %cmp, label %if.then, label %if.else, !dbg !345

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !346
  br label %if.end, !dbg !348

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !349
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !351
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !352
  %cmp1 = icmp eq i32 %3, 5, !dbg !354
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !355

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !356, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata i32* %n, metadata !360, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !362, metadata !DIExpression()), !dbg !363
  %4 = load i8*, i8** %data, align 8, !dbg !364
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !366
  %cmp4 = icmp eq i32 %call3, 1, !dbg !367
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !368

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !369
  store i32 0, i32* %i, align 4, !dbg !371
  br label %for.cond, !dbg !373

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !374
  %6 = load i32, i32* %n, align 4, !dbg !376
  %cmp6 = icmp slt i32 %5, %6, !dbg !377
  br i1 %cmp6, label %for.body, label %for.end, !dbg !378

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !379
  %inc = add nsw i32 %7, 1, !dbg !379
  store i32 %inc, i32* %intVariable, align 4, !dbg !379
  br label %for.inc, !dbg !381

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !382
  %inc7 = add nsw i32 %8, 1, !dbg !382
  store i32 %inc7, i32* %i, align 4, !dbg !382
  br label %for.cond, !dbg !383, !llvm.loop !384

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !386
  call void @printIntLine(i32 %9), !dbg !387
  br label %if.end8, !dbg !388

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !389

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !390
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !391 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !392, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !395
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !395
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !396
  store i8* %arraydecay, i8** %data, align 8, !dbg !397
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !398
  %cmp = icmp eq i32 %1, 5, !dbg !400
  br i1 %cmp, label %if.then, label %if.end, !dbg !401

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !402
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !404
  br label %if.end, !dbg !405

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !406
  %cmp1 = icmp eq i32 %3, 5, !dbg !408
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !409

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !410, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata i32* %n, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !416, metadata !DIExpression()), !dbg !417
  %4 = load i8*, i8** %data, align 8, !dbg !418
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !420
  %cmp4 = icmp eq i32 %call3, 1, !dbg !421
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !422

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !423
  store i32 0, i32* %i, align 4, !dbg !425
  br label %for.cond, !dbg !427

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !428
  %6 = load i32, i32* %n, align 4, !dbg !430
  %cmp6 = icmp slt i32 %5, %6, !dbg !431
  br i1 %cmp6, label %for.body, label %for.end, !dbg !432

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !433
  %inc = add nsw i32 %7, 1, !dbg !433
  store i32 %inc, i32* %intVariable, align 4, !dbg !433
  br label %for.inc, !dbg !435

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !436
  %inc7 = add nsw i32 %8, 1, !dbg !436
  store i32 %inc7, i32* %i, align 4, !dbg !436
  br label %for.cond, !dbg !437, !llvm.loop !438

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !440
  call void @printIntLine(i32 %9), !dbg !441
  br label %if.end8, !dbg !442

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !443

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_13_good() #0 !dbg !445 {
entry:
  call void @goodB2G1(), !dbg !446
  call void @goodB2G2(), !dbg !447
  call void @goodG2B1(), !dbg !448
  call void @goodG2B2(), !dbg !449
  ret void, !dbg !450
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_13.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_990/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_13_bad", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 31, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 31, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 32, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 32, column: 10, scope: !10)
!22 = !DILocation(line: 33, column: 12, scope: !10)
!23 = !DILocation(line: 33, column: 10, scope: !10)
!24 = !DILocation(line: 34, column: 8, scope: !25)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 34, column: 8)
!26 = !DILocation(line: 34, column: 25, scope: !25)
!27 = !DILocation(line: 34, column: 8, scope: !10)
!28 = !DILocalVariable(name: "dataLen", scope: !29, file: !1, line: 38, type: !31)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 36, column: 9)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 35, column: 5)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 38, column: 20, scope: !29)
!35 = !DILocation(line: 38, column: 37, scope: !29)
!36 = !DILocation(line: 38, column: 30, scope: !29)
!37 = !DILocation(line: 40, column: 21, scope: !38)
!38 = distinct !DILexicalBlock(scope: !29, file: !1, line: 40, column: 17)
!39 = !DILocation(line: 40, column: 20, scope: !38)
!40 = !DILocation(line: 40, column: 29, scope: !38)
!41 = !DILocation(line: 40, column: 17, scope: !29)
!42 = !DILocation(line: 43, column: 27, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 43, column: 21)
!44 = distinct !DILexicalBlock(scope: !38, file: !1, line: 41, column: 13)
!45 = !DILocation(line: 43, column: 32, scope: !43)
!46 = !DILocation(line: 43, column: 31, scope: !43)
!47 = !DILocation(line: 43, column: 51, scope: !43)
!48 = !DILocation(line: 43, column: 50, scope: !43)
!49 = !DILocation(line: 43, column: 41, scope: !43)
!50 = !DILocation(line: 43, column: 61, scope: !43)
!51 = !DILocation(line: 43, column: 21, scope: !43)
!52 = !DILocation(line: 43, column: 68, scope: !43)
!53 = !DILocation(line: 43, column: 21, scope: !44)
!54 = !DILocation(line: 47, column: 38, scope: !55)
!55 = distinct !DILexicalBlock(scope: !43, file: !1, line: 44, column: 17)
!56 = !DILocation(line: 47, column: 31, scope: !55)
!57 = !DILocation(line: 47, column: 29, scope: !55)
!58 = !DILocation(line: 48, column: 25, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 48, column: 25)
!60 = !DILocation(line: 48, column: 33, scope: !59)
!61 = !DILocation(line: 48, column: 37, scope: !59)
!62 = !DILocation(line: 48, column: 40, scope: !59)
!63 = !DILocation(line: 48, column: 45, scope: !59)
!64 = !DILocation(line: 48, column: 52, scope: !59)
!65 = !DILocation(line: 48, column: 56, scope: !59)
!66 = !DILocation(line: 48, column: 25, scope: !55)
!67 = !DILocation(line: 50, column: 25, scope: !68)
!68 = distinct !DILexicalBlock(scope: !59, file: !1, line: 49, column: 21)
!69 = !DILocation(line: 50, column: 30, scope: !68)
!70 = !DILocation(line: 50, column: 37, scope: !68)
!71 = !DILocation(line: 50, column: 41, scope: !68)
!72 = !DILocation(line: 51, column: 21, scope: !68)
!73 = !DILocation(line: 52, column: 17, scope: !55)
!74 = !DILocation(line: 55, column: 21, scope: !75)
!75 = distinct !DILexicalBlock(scope: !43, file: !1, line: 54, column: 17)
!76 = !DILocation(line: 57, column: 21, scope: !75)
!77 = !DILocation(line: 57, column: 26, scope: !75)
!78 = !DILocation(line: 57, column: 35, scope: !75)
!79 = !DILocation(line: 59, column: 13, scope: !44)
!80 = !DILocation(line: 61, column: 5, scope: !30)
!81 = !DILocation(line: 62, column: 8, scope: !82)
!82 = distinct !DILexicalBlock(scope: !10, file: !1, line: 62, column: 8)
!83 = !DILocation(line: 62, column: 25, scope: !82)
!84 = !DILocation(line: 62, column: 8, scope: !10)
!85 = !DILocalVariable(name: "i", scope: !86, file: !1, line: 65, type: !4)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 64, column: 9)
!87 = distinct !DILexicalBlock(scope: !82, file: !1, line: 63, column: 5)
!88 = !DILocation(line: 65, column: 17, scope: !86)
!89 = !DILocalVariable(name: "n", scope: !86, file: !1, line: 65, type: !4)
!90 = !DILocation(line: 65, column: 20, scope: !86)
!91 = !DILocalVariable(name: "intVariable", scope: !86, file: !1, line: 65, type: !4)
!92 = !DILocation(line: 65, column: 23, scope: !86)
!93 = !DILocation(line: 66, column: 24, scope: !94)
!94 = distinct !DILexicalBlock(scope: !86, file: !1, line: 66, column: 17)
!95 = !DILocation(line: 66, column: 17, scope: !94)
!96 = !DILocation(line: 66, column: 40, scope: !94)
!97 = !DILocation(line: 66, column: 17, scope: !86)
!98 = !DILocation(line: 69, column: 29, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !1, line: 67, column: 13)
!100 = !DILocation(line: 70, column: 24, scope: !101)
!101 = distinct !DILexicalBlock(scope: !99, file: !1, line: 70, column: 17)
!102 = !DILocation(line: 70, column: 22, scope: !101)
!103 = !DILocation(line: 70, column: 29, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 70, column: 17)
!105 = !DILocation(line: 70, column: 33, scope: !104)
!106 = !DILocation(line: 70, column: 31, scope: !104)
!107 = !DILocation(line: 70, column: 17, scope: !101)
!108 = !DILocation(line: 73, column: 32, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 71, column: 17)
!110 = !DILocation(line: 74, column: 17, scope: !109)
!111 = !DILocation(line: 70, column: 37, scope: !104)
!112 = !DILocation(line: 70, column: 17, scope: !104)
!113 = distinct !{!113, !107, !114, !115}
!114 = !DILocation(line: 74, column: 17, scope: !101)
!115 = !{!"llvm.loop.mustprogress"}
!116 = !DILocation(line: 75, column: 30, scope: !99)
!117 = !DILocation(line: 75, column: 17, scope: !99)
!118 = !DILocation(line: 76, column: 13, scope: !99)
!119 = !DILocation(line: 78, column: 5, scope: !87)
!120 = !DILocation(line: 79, column: 1, scope: !10)
!121 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 86, type: !11, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!122 = !DILocalVariable(name: "data", scope: !121, file: !1, line: 88, type: !14)
!123 = !DILocation(line: 88, column: 12, scope: !121)
!124 = !DILocalVariable(name: "dataBuffer", scope: !121, file: !1, line: 89, type: !18)
!125 = !DILocation(line: 89, column: 10, scope: !121)
!126 = !DILocation(line: 90, column: 12, scope: !121)
!127 = !DILocation(line: 90, column: 10, scope: !121)
!128 = !DILocation(line: 91, column: 8, scope: !129)
!129 = distinct !DILexicalBlock(scope: !121, file: !1, line: 91, column: 8)
!130 = !DILocation(line: 91, column: 25, scope: !129)
!131 = !DILocation(line: 91, column: 8, scope: !121)
!132 = !DILocalVariable(name: "dataLen", scope: !133, file: !1, line: 95, type: !31)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 93, column: 9)
!134 = distinct !DILexicalBlock(scope: !129, file: !1, line: 92, column: 5)
!135 = !DILocation(line: 95, column: 20, scope: !133)
!136 = !DILocation(line: 95, column: 37, scope: !133)
!137 = !DILocation(line: 95, column: 30, scope: !133)
!138 = !DILocation(line: 97, column: 21, scope: !139)
!139 = distinct !DILexicalBlock(scope: !133, file: !1, line: 97, column: 17)
!140 = !DILocation(line: 97, column: 20, scope: !139)
!141 = !DILocation(line: 97, column: 29, scope: !139)
!142 = !DILocation(line: 97, column: 17, scope: !133)
!143 = !DILocation(line: 100, column: 27, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !1, line: 100, column: 21)
!145 = distinct !DILexicalBlock(scope: !139, file: !1, line: 98, column: 13)
!146 = !DILocation(line: 100, column: 32, scope: !144)
!147 = !DILocation(line: 100, column: 31, scope: !144)
!148 = !DILocation(line: 100, column: 51, scope: !144)
!149 = !DILocation(line: 100, column: 50, scope: !144)
!150 = !DILocation(line: 100, column: 41, scope: !144)
!151 = !DILocation(line: 100, column: 61, scope: !144)
!152 = !DILocation(line: 100, column: 21, scope: !144)
!153 = !DILocation(line: 100, column: 68, scope: !144)
!154 = !DILocation(line: 100, column: 21, scope: !145)
!155 = !DILocation(line: 104, column: 38, scope: !156)
!156 = distinct !DILexicalBlock(scope: !144, file: !1, line: 101, column: 17)
!157 = !DILocation(line: 104, column: 31, scope: !156)
!158 = !DILocation(line: 104, column: 29, scope: !156)
!159 = !DILocation(line: 105, column: 25, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !1, line: 105, column: 25)
!161 = !DILocation(line: 105, column: 33, scope: !160)
!162 = !DILocation(line: 105, column: 37, scope: !160)
!163 = !DILocation(line: 105, column: 40, scope: !160)
!164 = !DILocation(line: 105, column: 45, scope: !160)
!165 = !DILocation(line: 105, column: 52, scope: !160)
!166 = !DILocation(line: 105, column: 56, scope: !160)
!167 = !DILocation(line: 105, column: 25, scope: !156)
!168 = !DILocation(line: 107, column: 25, scope: !169)
!169 = distinct !DILexicalBlock(scope: !160, file: !1, line: 106, column: 21)
!170 = !DILocation(line: 107, column: 30, scope: !169)
!171 = !DILocation(line: 107, column: 37, scope: !169)
!172 = !DILocation(line: 107, column: 41, scope: !169)
!173 = !DILocation(line: 108, column: 21, scope: !169)
!174 = !DILocation(line: 109, column: 17, scope: !156)
!175 = !DILocation(line: 112, column: 21, scope: !176)
!176 = distinct !DILexicalBlock(scope: !144, file: !1, line: 111, column: 17)
!177 = !DILocation(line: 114, column: 21, scope: !176)
!178 = !DILocation(line: 114, column: 26, scope: !176)
!179 = !DILocation(line: 114, column: 35, scope: !176)
!180 = !DILocation(line: 116, column: 13, scope: !145)
!181 = !DILocation(line: 118, column: 5, scope: !134)
!182 = !DILocation(line: 119, column: 8, scope: !183)
!183 = distinct !DILexicalBlock(scope: !121, file: !1, line: 119, column: 8)
!184 = !DILocation(line: 119, column: 25, scope: !183)
!185 = !DILocation(line: 119, column: 8, scope: !121)
!186 = !DILocation(line: 122, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 120, column: 5)
!188 = !DILocation(line: 123, column: 5, scope: !187)
!189 = !DILocalVariable(name: "i", scope: !190, file: !1, line: 127, type: !4)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 126, column: 9)
!191 = distinct !DILexicalBlock(scope: !183, file: !1, line: 125, column: 5)
!192 = !DILocation(line: 127, column: 17, scope: !190)
!193 = !DILocalVariable(name: "n", scope: !190, file: !1, line: 127, type: !4)
!194 = !DILocation(line: 127, column: 20, scope: !190)
!195 = !DILocalVariable(name: "intVariable", scope: !190, file: !1, line: 127, type: !4)
!196 = !DILocation(line: 127, column: 23, scope: !190)
!197 = !DILocation(line: 128, column: 24, scope: !198)
!198 = distinct !DILexicalBlock(scope: !190, file: !1, line: 128, column: 17)
!199 = !DILocation(line: 128, column: 17, scope: !198)
!200 = !DILocation(line: 128, column: 40, scope: !198)
!201 = !DILocation(line: 128, column: 17, scope: !190)
!202 = !DILocation(line: 131, column: 21, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !1, line: 131, column: 21)
!204 = distinct !DILexicalBlock(scope: !198, file: !1, line: 129, column: 13)
!205 = !DILocation(line: 131, column: 23, scope: !203)
!206 = !DILocation(line: 131, column: 21, scope: !204)
!207 = !DILocation(line: 133, column: 33, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !1, line: 132, column: 17)
!209 = !DILocation(line: 134, column: 28, scope: !210)
!210 = distinct !DILexicalBlock(scope: !208, file: !1, line: 134, column: 21)
!211 = !DILocation(line: 134, column: 26, scope: !210)
!212 = !DILocation(line: 134, column: 33, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !1, line: 134, column: 21)
!214 = !DILocation(line: 134, column: 37, scope: !213)
!215 = !DILocation(line: 134, column: 35, scope: !213)
!216 = !DILocation(line: 134, column: 21, scope: !210)
!217 = !DILocation(line: 137, column: 36, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !1, line: 135, column: 21)
!219 = !DILocation(line: 138, column: 21, scope: !218)
!220 = !DILocation(line: 134, column: 41, scope: !213)
!221 = !DILocation(line: 134, column: 21, scope: !213)
!222 = distinct !{!222, !216, !223, !115}
!223 = !DILocation(line: 138, column: 21, scope: !210)
!224 = !DILocation(line: 139, column: 34, scope: !208)
!225 = !DILocation(line: 139, column: 21, scope: !208)
!226 = !DILocation(line: 140, column: 17, scope: !208)
!227 = !DILocation(line: 141, column: 13, scope: !204)
!228 = !DILocation(line: 144, column: 1, scope: !121)
!229 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 147, type: !11, scopeLine: 148, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!230 = !DILocalVariable(name: "data", scope: !229, file: !1, line: 149, type: !14)
!231 = !DILocation(line: 149, column: 12, scope: !229)
!232 = !DILocalVariable(name: "dataBuffer", scope: !229, file: !1, line: 150, type: !18)
!233 = !DILocation(line: 150, column: 10, scope: !229)
!234 = !DILocation(line: 151, column: 12, scope: !229)
!235 = !DILocation(line: 151, column: 10, scope: !229)
!236 = !DILocation(line: 152, column: 8, scope: !237)
!237 = distinct !DILexicalBlock(scope: !229, file: !1, line: 152, column: 8)
!238 = !DILocation(line: 152, column: 25, scope: !237)
!239 = !DILocation(line: 152, column: 8, scope: !229)
!240 = !DILocalVariable(name: "dataLen", scope: !241, file: !1, line: 156, type: !31)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 154, column: 9)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 153, column: 5)
!243 = !DILocation(line: 156, column: 20, scope: !241)
!244 = !DILocation(line: 156, column: 37, scope: !241)
!245 = !DILocation(line: 156, column: 30, scope: !241)
!246 = !DILocation(line: 158, column: 21, scope: !247)
!247 = distinct !DILexicalBlock(scope: !241, file: !1, line: 158, column: 17)
!248 = !DILocation(line: 158, column: 20, scope: !247)
!249 = !DILocation(line: 158, column: 29, scope: !247)
!250 = !DILocation(line: 158, column: 17, scope: !241)
!251 = !DILocation(line: 161, column: 27, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 161, column: 21)
!253 = distinct !DILexicalBlock(scope: !247, file: !1, line: 159, column: 13)
!254 = !DILocation(line: 161, column: 32, scope: !252)
!255 = !DILocation(line: 161, column: 31, scope: !252)
!256 = !DILocation(line: 161, column: 51, scope: !252)
!257 = !DILocation(line: 161, column: 50, scope: !252)
!258 = !DILocation(line: 161, column: 41, scope: !252)
!259 = !DILocation(line: 161, column: 61, scope: !252)
!260 = !DILocation(line: 161, column: 21, scope: !252)
!261 = !DILocation(line: 161, column: 68, scope: !252)
!262 = !DILocation(line: 161, column: 21, scope: !253)
!263 = !DILocation(line: 165, column: 38, scope: !264)
!264 = distinct !DILexicalBlock(scope: !252, file: !1, line: 162, column: 17)
!265 = !DILocation(line: 165, column: 31, scope: !264)
!266 = !DILocation(line: 165, column: 29, scope: !264)
!267 = !DILocation(line: 166, column: 25, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !1, line: 166, column: 25)
!269 = !DILocation(line: 166, column: 33, scope: !268)
!270 = !DILocation(line: 166, column: 37, scope: !268)
!271 = !DILocation(line: 166, column: 40, scope: !268)
!272 = !DILocation(line: 166, column: 45, scope: !268)
!273 = !DILocation(line: 166, column: 52, scope: !268)
!274 = !DILocation(line: 166, column: 56, scope: !268)
!275 = !DILocation(line: 166, column: 25, scope: !264)
!276 = !DILocation(line: 168, column: 25, scope: !277)
!277 = distinct !DILexicalBlock(scope: !268, file: !1, line: 167, column: 21)
!278 = !DILocation(line: 168, column: 30, scope: !277)
!279 = !DILocation(line: 168, column: 37, scope: !277)
!280 = !DILocation(line: 168, column: 41, scope: !277)
!281 = !DILocation(line: 169, column: 21, scope: !277)
!282 = !DILocation(line: 170, column: 17, scope: !264)
!283 = !DILocation(line: 173, column: 21, scope: !284)
!284 = distinct !DILexicalBlock(scope: !252, file: !1, line: 172, column: 17)
!285 = !DILocation(line: 175, column: 21, scope: !284)
!286 = !DILocation(line: 175, column: 26, scope: !284)
!287 = !DILocation(line: 175, column: 35, scope: !284)
!288 = !DILocation(line: 177, column: 13, scope: !253)
!289 = !DILocation(line: 179, column: 5, scope: !242)
!290 = !DILocation(line: 180, column: 8, scope: !291)
!291 = distinct !DILexicalBlock(scope: !229, file: !1, line: 180, column: 8)
!292 = !DILocation(line: 180, column: 25, scope: !291)
!293 = !DILocation(line: 180, column: 8, scope: !229)
!294 = !DILocalVariable(name: "i", scope: !295, file: !1, line: 183, type: !4)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 182, column: 9)
!296 = distinct !DILexicalBlock(scope: !291, file: !1, line: 181, column: 5)
!297 = !DILocation(line: 183, column: 17, scope: !295)
!298 = !DILocalVariable(name: "n", scope: !295, file: !1, line: 183, type: !4)
!299 = !DILocation(line: 183, column: 20, scope: !295)
!300 = !DILocalVariable(name: "intVariable", scope: !295, file: !1, line: 183, type: !4)
!301 = !DILocation(line: 183, column: 23, scope: !295)
!302 = !DILocation(line: 184, column: 24, scope: !303)
!303 = distinct !DILexicalBlock(scope: !295, file: !1, line: 184, column: 17)
!304 = !DILocation(line: 184, column: 17, scope: !303)
!305 = !DILocation(line: 184, column: 40, scope: !303)
!306 = !DILocation(line: 184, column: 17, scope: !295)
!307 = !DILocation(line: 187, column: 21, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 187, column: 21)
!309 = distinct !DILexicalBlock(scope: !303, file: !1, line: 185, column: 13)
!310 = !DILocation(line: 187, column: 23, scope: !308)
!311 = !DILocation(line: 187, column: 21, scope: !309)
!312 = !DILocation(line: 189, column: 33, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !1, line: 188, column: 17)
!314 = !DILocation(line: 190, column: 28, scope: !315)
!315 = distinct !DILexicalBlock(scope: !313, file: !1, line: 190, column: 21)
!316 = !DILocation(line: 190, column: 26, scope: !315)
!317 = !DILocation(line: 190, column: 33, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !1, line: 190, column: 21)
!319 = !DILocation(line: 190, column: 37, scope: !318)
!320 = !DILocation(line: 190, column: 35, scope: !318)
!321 = !DILocation(line: 190, column: 21, scope: !315)
!322 = !DILocation(line: 193, column: 36, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !1, line: 191, column: 21)
!324 = !DILocation(line: 194, column: 21, scope: !323)
!325 = !DILocation(line: 190, column: 41, scope: !318)
!326 = !DILocation(line: 190, column: 21, scope: !318)
!327 = distinct !{!327, !321, !328, !115}
!328 = !DILocation(line: 194, column: 21, scope: !315)
!329 = !DILocation(line: 195, column: 34, scope: !313)
!330 = !DILocation(line: 195, column: 21, scope: !313)
!331 = !DILocation(line: 196, column: 17, scope: !313)
!332 = !DILocation(line: 197, column: 13, scope: !309)
!333 = !DILocation(line: 199, column: 5, scope: !296)
!334 = !DILocation(line: 200, column: 1, scope: !229)
!335 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 203, type: !11, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!336 = !DILocalVariable(name: "data", scope: !335, file: !1, line: 205, type: !14)
!337 = !DILocation(line: 205, column: 12, scope: !335)
!338 = !DILocalVariable(name: "dataBuffer", scope: !335, file: !1, line: 206, type: !18)
!339 = !DILocation(line: 206, column: 10, scope: !335)
!340 = !DILocation(line: 207, column: 12, scope: !335)
!341 = !DILocation(line: 207, column: 10, scope: !335)
!342 = !DILocation(line: 208, column: 8, scope: !343)
!343 = distinct !DILexicalBlock(scope: !335, file: !1, line: 208, column: 8)
!344 = !DILocation(line: 208, column: 25, scope: !343)
!345 = !DILocation(line: 208, column: 8, scope: !335)
!346 = !DILocation(line: 211, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !1, line: 209, column: 5)
!348 = !DILocation(line: 212, column: 5, scope: !347)
!349 = !DILocation(line: 216, column: 16, scope: !350)
!350 = distinct !DILexicalBlock(scope: !343, file: !1, line: 214, column: 5)
!351 = !DILocation(line: 216, column: 9, scope: !350)
!352 = !DILocation(line: 218, column: 8, scope: !353)
!353 = distinct !DILexicalBlock(scope: !335, file: !1, line: 218, column: 8)
!354 = !DILocation(line: 218, column: 25, scope: !353)
!355 = !DILocation(line: 218, column: 8, scope: !335)
!356 = !DILocalVariable(name: "i", scope: !357, file: !1, line: 221, type: !4)
!357 = distinct !DILexicalBlock(scope: !358, file: !1, line: 220, column: 9)
!358 = distinct !DILexicalBlock(scope: !353, file: !1, line: 219, column: 5)
!359 = !DILocation(line: 221, column: 17, scope: !357)
!360 = !DILocalVariable(name: "n", scope: !357, file: !1, line: 221, type: !4)
!361 = !DILocation(line: 221, column: 20, scope: !357)
!362 = !DILocalVariable(name: "intVariable", scope: !357, file: !1, line: 221, type: !4)
!363 = !DILocation(line: 221, column: 23, scope: !357)
!364 = !DILocation(line: 222, column: 24, scope: !365)
!365 = distinct !DILexicalBlock(scope: !357, file: !1, line: 222, column: 17)
!366 = !DILocation(line: 222, column: 17, scope: !365)
!367 = !DILocation(line: 222, column: 40, scope: !365)
!368 = !DILocation(line: 222, column: 17, scope: !357)
!369 = !DILocation(line: 225, column: 29, scope: !370)
!370 = distinct !DILexicalBlock(scope: !365, file: !1, line: 223, column: 13)
!371 = !DILocation(line: 226, column: 24, scope: !372)
!372 = distinct !DILexicalBlock(scope: !370, file: !1, line: 226, column: 17)
!373 = !DILocation(line: 226, column: 22, scope: !372)
!374 = !DILocation(line: 226, column: 29, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !1, line: 226, column: 17)
!376 = !DILocation(line: 226, column: 33, scope: !375)
!377 = !DILocation(line: 226, column: 31, scope: !375)
!378 = !DILocation(line: 226, column: 17, scope: !372)
!379 = !DILocation(line: 229, column: 32, scope: !380)
!380 = distinct !DILexicalBlock(scope: !375, file: !1, line: 227, column: 17)
!381 = !DILocation(line: 230, column: 17, scope: !380)
!382 = !DILocation(line: 226, column: 37, scope: !375)
!383 = !DILocation(line: 226, column: 17, scope: !375)
!384 = distinct !{!384, !378, !385, !115}
!385 = !DILocation(line: 230, column: 17, scope: !372)
!386 = !DILocation(line: 231, column: 30, scope: !370)
!387 = !DILocation(line: 231, column: 17, scope: !370)
!388 = !DILocation(line: 232, column: 13, scope: !370)
!389 = !DILocation(line: 234, column: 5, scope: !358)
!390 = !DILocation(line: 235, column: 1, scope: !335)
!391 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 238, type: !11, scopeLine: 239, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!392 = !DILocalVariable(name: "data", scope: !391, file: !1, line: 240, type: !14)
!393 = !DILocation(line: 240, column: 12, scope: !391)
!394 = !DILocalVariable(name: "dataBuffer", scope: !391, file: !1, line: 241, type: !18)
!395 = !DILocation(line: 241, column: 10, scope: !391)
!396 = !DILocation(line: 242, column: 12, scope: !391)
!397 = !DILocation(line: 242, column: 10, scope: !391)
!398 = !DILocation(line: 243, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !391, file: !1, line: 243, column: 8)
!400 = !DILocation(line: 243, column: 25, scope: !399)
!401 = !DILocation(line: 243, column: 8, scope: !391)
!402 = !DILocation(line: 246, column: 16, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !1, line: 244, column: 5)
!404 = !DILocation(line: 246, column: 9, scope: !403)
!405 = !DILocation(line: 247, column: 5, scope: !403)
!406 = !DILocation(line: 248, column: 8, scope: !407)
!407 = distinct !DILexicalBlock(scope: !391, file: !1, line: 248, column: 8)
!408 = !DILocation(line: 248, column: 25, scope: !407)
!409 = !DILocation(line: 248, column: 8, scope: !391)
!410 = !DILocalVariable(name: "i", scope: !411, file: !1, line: 251, type: !4)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 250, column: 9)
!412 = distinct !DILexicalBlock(scope: !407, file: !1, line: 249, column: 5)
!413 = !DILocation(line: 251, column: 17, scope: !411)
!414 = !DILocalVariable(name: "n", scope: !411, file: !1, line: 251, type: !4)
!415 = !DILocation(line: 251, column: 20, scope: !411)
!416 = !DILocalVariable(name: "intVariable", scope: !411, file: !1, line: 251, type: !4)
!417 = !DILocation(line: 251, column: 23, scope: !411)
!418 = !DILocation(line: 252, column: 24, scope: !419)
!419 = distinct !DILexicalBlock(scope: !411, file: !1, line: 252, column: 17)
!420 = !DILocation(line: 252, column: 17, scope: !419)
!421 = !DILocation(line: 252, column: 40, scope: !419)
!422 = !DILocation(line: 252, column: 17, scope: !411)
!423 = !DILocation(line: 255, column: 29, scope: !424)
!424 = distinct !DILexicalBlock(scope: !419, file: !1, line: 253, column: 13)
!425 = !DILocation(line: 256, column: 24, scope: !426)
!426 = distinct !DILexicalBlock(scope: !424, file: !1, line: 256, column: 17)
!427 = !DILocation(line: 256, column: 22, scope: !426)
!428 = !DILocation(line: 256, column: 29, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !1, line: 256, column: 17)
!430 = !DILocation(line: 256, column: 33, scope: !429)
!431 = !DILocation(line: 256, column: 31, scope: !429)
!432 = !DILocation(line: 256, column: 17, scope: !426)
!433 = !DILocation(line: 259, column: 32, scope: !434)
!434 = distinct !DILexicalBlock(scope: !429, file: !1, line: 257, column: 17)
!435 = !DILocation(line: 260, column: 17, scope: !434)
!436 = !DILocation(line: 256, column: 37, scope: !429)
!437 = !DILocation(line: 256, column: 17, scope: !429)
!438 = distinct !{!438, !432, !439, !115}
!439 = !DILocation(line: 260, column: 17, scope: !426)
!440 = !DILocation(line: 261, column: 30, scope: !424)
!441 = !DILocation(line: 261, column: 17, scope: !424)
!442 = !DILocation(line: 262, column: 13, scope: !424)
!443 = !DILocation(line: 264, column: 5, scope: !412)
!444 = !DILocation(line: 265, column: 1, scope: !391)
!445 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_13_good", scope: !1, file: !1, line: 267, type: !11, scopeLine: 268, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!446 = !DILocation(line: 269, column: 5, scope: !445)
!447 = !DILocation(line: 270, column: 5, scope: !445)
!448 = !DILocation(line: 271, column: 5, scope: !445)
!449 = !DILocation(line: 272, column: 5, scope: !445)
!450 = !DILocation(line: 273, column: 1, scope: !445)
