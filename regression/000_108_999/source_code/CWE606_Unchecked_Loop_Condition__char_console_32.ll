; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_32.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_32_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %data20 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !17, metadata !DIExpression()), !dbg !19
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !19
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !20, metadata !DIExpression()), !dbg !21
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %data, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !29, metadata !DIExpression()), !dbg !31
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !32
  %2 = load i8*, i8** %1, align 8, !dbg !33
  store i8* %2, i8** %data1, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !34, metadata !DIExpression()), !dbg !39
  %3 = load i8*, i8** %data1, align 8, !dbg !40
  %call = call i64 @strlen(i8* %3) #6, !dbg !41
  store i64 %call, i64* %dataLen, align 8, !dbg !39
  %4 = load i64, i64* %dataLen, align 8, !dbg !42
  %sub = sub i64 100, %4, !dbg !44
  %cmp = icmp ugt i64 %sub, 1, !dbg !45
  br i1 %cmp, label %if.then, label %if.end19, !dbg !46

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !47
  %6 = load i64, i64* %dataLen, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !51
  %7 = load i64, i64* %dataLen, align 8, !dbg !52
  %sub2 = sub i64 100, %7, !dbg !53
  %conv = trunc i64 %sub2 to i32, !dbg !54
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !55
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !56
  %cmp4 = icmp ne i8* %call3, null, !dbg !57
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !58

if.then6:                                         ; preds = %if.then
  %9 = load i8*, i8** %data1, align 8, !dbg !59
  %call7 = call i64 @strlen(i8* %9) #6, !dbg !61
  store i64 %call7, i64* %dataLen, align 8, !dbg !62
  %10 = load i64, i64* %dataLen, align 8, !dbg !63
  %cmp8 = icmp ugt i64 %10, 0, !dbg !65
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !66

land.lhs.true:                                    ; preds = %if.then6
  %11 = load i8*, i8** %data1, align 8, !dbg !67
  %12 = load i64, i64* %dataLen, align 8, !dbg !68
  %sub10 = sub i64 %12, 1, !dbg !69
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub10, !dbg !67
  %13 = load i8, i8* %arrayidx, align 1, !dbg !67
  %conv11 = sext i8 %13 to i32, !dbg !67
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !70
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !71

if.then14:                                        ; preds = %land.lhs.true
  %14 = load i8*, i8** %data1, align 8, !dbg !72
  %15 = load i64, i64* %dataLen, align 8, !dbg !74
  %sub15 = sub i64 %15, 1, !dbg !75
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %sub15, !dbg !72
  store i8 0, i8* %arrayidx16, align 1, !dbg !76
  br label %if.end, !dbg !77

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !78

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !79
  %16 = load i8*, i8** %data1, align 8, !dbg !81
  %17 = load i64, i64* %dataLen, align 8, !dbg !82
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !81
  store i8 0, i8* %arrayidx17, align 1, !dbg !83
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !84

if.end19:                                         ; preds = %if.end18, %entry
  %18 = load i8*, i8** %data1, align 8, !dbg !85
  %19 = load i8**, i8*** %dataPtr1, align 8, !dbg !86
  store i8* %18, i8** %19, align 8, !dbg !87
  call void @llvm.dbg.declare(metadata i8** %data20, metadata !88, metadata !DIExpression()), !dbg !90
  %20 = load i8**, i8*** %dataPtr2, align 8, !dbg !91
  %21 = load i8*, i8** %20, align 8, !dbg !92
  store i8* %21, i8** %data20, align 8, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %i, metadata !93, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %n, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !98, metadata !DIExpression()), !dbg !99
  %22 = load i8*, i8** %data20, align 8, !dbg !100
  %call21 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !102
  %cmp22 = icmp eq i32 %call21, 1, !dbg !103
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !104

if.then24:                                        ; preds = %if.end19
  store i32 0, i32* %intVariable, align 4, !dbg !105
  store i32 0, i32* %i, align 4, !dbg !107
  br label %for.cond, !dbg !109

for.cond:                                         ; preds = %for.inc, %if.then24
  %23 = load i32, i32* %i, align 4, !dbg !110
  %24 = load i32, i32* %n, align 4, !dbg !112
  %cmp25 = icmp slt i32 %23, %24, !dbg !113
  br i1 %cmp25, label %for.body, label %for.end, !dbg !114

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %intVariable, align 4, !dbg !115
  %inc = add nsw i32 %25, 1, !dbg !115
  store i32 %inc, i32* %intVariable, align 4, !dbg !115
  br label %for.inc, !dbg !117

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !dbg !118
  %inc27 = add nsw i32 %26, 1, !dbg !118
  store i32 %inc27, i32* %i, align 4, !dbg !118
  br label %for.cond, !dbg !119, !llvm.loop !120

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !123
  call void @printIntLine(i32 %27), !dbg !124
  br label %if.end28, !dbg !125

if.end28:                                         ; preds = %for.end, %if.end19
  ret void, !dbg !126
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
define dso_local void @goodG2B() #0 !dbg !127 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !130, metadata !DIExpression()), !dbg !131
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !131
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !132, metadata !DIExpression()), !dbg !133
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !133
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !135
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !136
  store i8* %arraydecay, i8** %data, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !138, metadata !DIExpression()), !dbg !140
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !141
  %2 = load i8*, i8** %1, align 8, !dbg !142
  store i8* %2, i8** %data1, align 8, !dbg !140
  %3 = load i8*, i8** %data1, align 8, !dbg !143
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !144
  %4 = load i8*, i8** %data1, align 8, !dbg !145
  %5 = load i8**, i8*** %dataPtr1, align 8, !dbg !146
  store i8* %4, i8** %5, align 8, !dbg !147
  call void @llvm.dbg.declare(metadata i8** %data2, metadata !148, metadata !DIExpression()), !dbg !150
  %6 = load i8**, i8*** %dataPtr2, align 8, !dbg !151
  %7 = load i8*, i8** %6, align 8, !dbg !152
  store i8* %7, i8** %data2, align 8, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %i, metadata !153, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata i32* %n, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !158, metadata !DIExpression()), !dbg !159
  %8 = load i8*, i8** %data2, align 8, !dbg !160
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !162
  %cmp = icmp eq i32 %call3, 1, !dbg !163
  br i1 %cmp, label %if.then, label %if.end, !dbg !164

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !165
  store i32 0, i32* %i, align 4, !dbg !167
  br label %for.cond, !dbg !169

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !dbg !170
  %10 = load i32, i32* %n, align 4, !dbg !172
  %cmp4 = icmp slt i32 %9, %10, !dbg !173
  br i1 %cmp4, label %for.body, label %for.end, !dbg !174

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !175
  %inc = add nsw i32 %11, 1, !dbg !175
  store i32 %inc, i32* %intVariable, align 4, !dbg !175
  br label %for.inc, !dbg !177

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !178
  %inc5 = add nsw i32 %12, 1, !dbg !178
  store i32 %inc5, i32* %i, align 4, !dbg !178
  br label %for.cond, !dbg !179, !llvm.loop !180

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !182
  call void @printIntLine(i32 %13), !dbg !183
  br label %if.end, !dbg !184

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !185
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !186 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %data20 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !189, metadata !DIExpression()), !dbg !190
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !191, metadata !DIExpression()), !dbg !192
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !193, metadata !DIExpression()), !dbg !194
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !194
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !194
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !195
  store i8* %arraydecay, i8** %data, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !197, metadata !DIExpression()), !dbg !199
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !200
  %2 = load i8*, i8** %1, align 8, !dbg !201
  store i8* %2, i8** %data1, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !202, metadata !DIExpression()), !dbg !204
  %3 = load i8*, i8** %data1, align 8, !dbg !205
  %call = call i64 @strlen(i8* %3) #6, !dbg !206
  store i64 %call, i64* %dataLen, align 8, !dbg !204
  %4 = load i64, i64* %dataLen, align 8, !dbg !207
  %sub = sub i64 100, %4, !dbg !209
  %cmp = icmp ugt i64 %sub, 1, !dbg !210
  br i1 %cmp, label %if.then, label %if.end19, !dbg !211

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !212
  %6 = load i64, i64* %dataLen, align 8, !dbg !215
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !216
  %7 = load i64, i64* %dataLen, align 8, !dbg !217
  %sub2 = sub i64 100, %7, !dbg !218
  %conv = trunc i64 %sub2 to i32, !dbg !219
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !220
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !221
  %cmp4 = icmp ne i8* %call3, null, !dbg !222
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !223

if.then6:                                         ; preds = %if.then
  %9 = load i8*, i8** %data1, align 8, !dbg !224
  %call7 = call i64 @strlen(i8* %9) #6, !dbg !226
  store i64 %call7, i64* %dataLen, align 8, !dbg !227
  %10 = load i64, i64* %dataLen, align 8, !dbg !228
  %cmp8 = icmp ugt i64 %10, 0, !dbg !230
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !231

land.lhs.true:                                    ; preds = %if.then6
  %11 = load i8*, i8** %data1, align 8, !dbg !232
  %12 = load i64, i64* %dataLen, align 8, !dbg !233
  %sub10 = sub i64 %12, 1, !dbg !234
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub10, !dbg !232
  %13 = load i8, i8* %arrayidx, align 1, !dbg !232
  %conv11 = sext i8 %13 to i32, !dbg !232
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !235
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !236

if.then14:                                        ; preds = %land.lhs.true
  %14 = load i8*, i8** %data1, align 8, !dbg !237
  %15 = load i64, i64* %dataLen, align 8, !dbg !239
  %sub15 = sub i64 %15, 1, !dbg !240
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %sub15, !dbg !237
  store i8 0, i8* %arrayidx16, align 1, !dbg !241
  br label %if.end, !dbg !242

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !243

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !244
  %16 = load i8*, i8** %data1, align 8, !dbg !246
  %17 = load i64, i64* %dataLen, align 8, !dbg !247
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !246
  store i8 0, i8* %arrayidx17, align 1, !dbg !248
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !249

if.end19:                                         ; preds = %if.end18, %entry
  %18 = load i8*, i8** %data1, align 8, !dbg !250
  %19 = load i8**, i8*** %dataPtr1, align 8, !dbg !251
  store i8* %18, i8** %19, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata i8** %data20, metadata !253, metadata !DIExpression()), !dbg !255
  %20 = load i8**, i8*** %dataPtr2, align 8, !dbg !256
  %21 = load i8*, i8** %20, align 8, !dbg !257
  store i8* %21, i8** %data20, align 8, !dbg !255
  call void @llvm.dbg.declare(metadata i32* %i, metadata !258, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %n, metadata !261, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !263, metadata !DIExpression()), !dbg !264
  %22 = load i8*, i8** %data20, align 8, !dbg !265
  %call21 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !267
  %cmp22 = icmp eq i32 %call21, 1, !dbg !268
  br i1 %cmp22, label %if.then24, label %if.end32, !dbg !269

if.then24:                                        ; preds = %if.end19
  %23 = load i32, i32* %n, align 4, !dbg !270
  %cmp25 = icmp slt i32 %23, 10000, !dbg !273
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !274

if.then27:                                        ; preds = %if.then24
  store i32 0, i32* %intVariable, align 4, !dbg !275
  store i32 0, i32* %i, align 4, !dbg !277
  br label %for.cond, !dbg !279

for.cond:                                         ; preds = %for.inc, %if.then27
  %24 = load i32, i32* %i, align 4, !dbg !280
  %25 = load i32, i32* %n, align 4, !dbg !282
  %cmp28 = icmp slt i32 %24, %25, !dbg !283
  br i1 %cmp28, label %for.body, label %for.end, !dbg !284

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %intVariable, align 4, !dbg !285
  %inc = add nsw i32 %26, 1, !dbg !285
  store i32 %inc, i32* %intVariable, align 4, !dbg !285
  br label %for.inc, !dbg !287

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !288
  %inc30 = add nsw i32 %27, 1, !dbg !288
  store i32 %inc30, i32* %i, align 4, !dbg !288
  br label %for.cond, !dbg !289, !llvm.loop !290

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !292
  call void @printIntLine(i32 %28), !dbg !293
  br label %if.end31, !dbg !294

if.end31:                                         ; preds = %for.end, %if.then24
  br label %if.end32, !dbg !295

if.end32:                                         ; preds = %if.end31, %if.end19
  ret void, !dbg !296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_32_good() #0 !dbg !297 {
entry:
  call void @goodG2B(), !dbg !298
  call void @goodB2G(), !dbg !299
  ret void, !dbg !300
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_999/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_32_bad", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 31, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 31, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataPtr1", scope: !10, file: !1, line: 32, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!19 = !DILocation(line: 32, column: 13, scope: !10)
!20 = !DILocalVariable(name: "dataPtr2", scope: !10, file: !1, line: 33, type: !18)
!21 = !DILocation(line: 33, column: 13, scope: !10)
!22 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 34, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 34, column: 10, scope: !10)
!27 = !DILocation(line: 35, column: 12, scope: !10)
!28 = !DILocation(line: 35, column: 10, scope: !10)
!29 = !DILocalVariable(name: "data", scope: !30, file: !1, line: 37, type: !14)
!30 = distinct !DILexicalBlock(scope: !10, file: !1, line: 36, column: 5)
!31 = !DILocation(line: 37, column: 16, scope: !30)
!32 = !DILocation(line: 37, column: 24, scope: !30)
!33 = !DILocation(line: 37, column: 23, scope: !30)
!34 = !DILocalVariable(name: "dataLen", scope: !35, file: !1, line: 40, type: !36)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 38, column: 9)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 40, column: 20, scope: !35)
!40 = !DILocation(line: 40, column: 37, scope: !35)
!41 = !DILocation(line: 40, column: 30, scope: !35)
!42 = !DILocation(line: 42, column: 21, scope: !43)
!43 = distinct !DILexicalBlock(scope: !35, file: !1, line: 42, column: 17)
!44 = !DILocation(line: 42, column: 20, scope: !43)
!45 = !DILocation(line: 42, column: 29, scope: !43)
!46 = !DILocation(line: 42, column: 17, scope: !35)
!47 = !DILocation(line: 45, column: 27, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 45, column: 21)
!49 = distinct !DILexicalBlock(scope: !43, file: !1, line: 43, column: 13)
!50 = !DILocation(line: 45, column: 32, scope: !48)
!51 = !DILocation(line: 45, column: 31, scope: !48)
!52 = !DILocation(line: 45, column: 51, scope: !48)
!53 = !DILocation(line: 45, column: 50, scope: !48)
!54 = !DILocation(line: 45, column: 41, scope: !48)
!55 = !DILocation(line: 45, column: 61, scope: !48)
!56 = !DILocation(line: 45, column: 21, scope: !48)
!57 = !DILocation(line: 45, column: 68, scope: !48)
!58 = !DILocation(line: 45, column: 21, scope: !49)
!59 = !DILocation(line: 49, column: 38, scope: !60)
!60 = distinct !DILexicalBlock(scope: !48, file: !1, line: 46, column: 17)
!61 = !DILocation(line: 49, column: 31, scope: !60)
!62 = !DILocation(line: 49, column: 29, scope: !60)
!63 = !DILocation(line: 50, column: 25, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 50, column: 25)
!65 = !DILocation(line: 50, column: 33, scope: !64)
!66 = !DILocation(line: 50, column: 37, scope: !64)
!67 = !DILocation(line: 50, column: 40, scope: !64)
!68 = !DILocation(line: 50, column: 45, scope: !64)
!69 = !DILocation(line: 50, column: 52, scope: !64)
!70 = !DILocation(line: 50, column: 56, scope: !64)
!71 = !DILocation(line: 50, column: 25, scope: !60)
!72 = !DILocation(line: 52, column: 25, scope: !73)
!73 = distinct !DILexicalBlock(scope: !64, file: !1, line: 51, column: 21)
!74 = !DILocation(line: 52, column: 30, scope: !73)
!75 = !DILocation(line: 52, column: 37, scope: !73)
!76 = !DILocation(line: 52, column: 41, scope: !73)
!77 = !DILocation(line: 53, column: 21, scope: !73)
!78 = !DILocation(line: 54, column: 17, scope: !60)
!79 = !DILocation(line: 57, column: 21, scope: !80)
!80 = distinct !DILexicalBlock(scope: !48, file: !1, line: 56, column: 17)
!81 = !DILocation(line: 59, column: 21, scope: !80)
!82 = !DILocation(line: 59, column: 26, scope: !80)
!83 = !DILocation(line: 59, column: 35, scope: !80)
!84 = !DILocation(line: 61, column: 13, scope: !49)
!85 = !DILocation(line: 63, column: 21, scope: !30)
!86 = !DILocation(line: 63, column: 10, scope: !30)
!87 = !DILocation(line: 63, column: 19, scope: !30)
!88 = !DILocalVariable(name: "data", scope: !89, file: !1, line: 66, type: !14)
!89 = distinct !DILexicalBlock(scope: !10, file: !1, line: 65, column: 5)
!90 = !DILocation(line: 66, column: 16, scope: !89)
!91 = !DILocation(line: 66, column: 24, scope: !89)
!92 = !DILocation(line: 66, column: 23, scope: !89)
!93 = !DILocalVariable(name: "i", scope: !94, file: !1, line: 68, type: !4)
!94 = distinct !DILexicalBlock(scope: !89, file: !1, line: 67, column: 9)
!95 = !DILocation(line: 68, column: 17, scope: !94)
!96 = !DILocalVariable(name: "n", scope: !94, file: !1, line: 68, type: !4)
!97 = !DILocation(line: 68, column: 20, scope: !94)
!98 = !DILocalVariable(name: "intVariable", scope: !94, file: !1, line: 68, type: !4)
!99 = !DILocation(line: 68, column: 23, scope: !94)
!100 = !DILocation(line: 69, column: 24, scope: !101)
!101 = distinct !DILexicalBlock(scope: !94, file: !1, line: 69, column: 17)
!102 = !DILocation(line: 69, column: 17, scope: !101)
!103 = !DILocation(line: 69, column: 40, scope: !101)
!104 = !DILocation(line: 69, column: 17, scope: !94)
!105 = !DILocation(line: 72, column: 29, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 70, column: 13)
!107 = !DILocation(line: 73, column: 24, scope: !108)
!108 = distinct !DILexicalBlock(scope: !106, file: !1, line: 73, column: 17)
!109 = !DILocation(line: 73, column: 22, scope: !108)
!110 = !DILocation(line: 73, column: 29, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 73, column: 17)
!112 = !DILocation(line: 73, column: 33, scope: !111)
!113 = !DILocation(line: 73, column: 31, scope: !111)
!114 = !DILocation(line: 73, column: 17, scope: !108)
!115 = !DILocation(line: 76, column: 32, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 74, column: 17)
!117 = !DILocation(line: 77, column: 17, scope: !116)
!118 = !DILocation(line: 73, column: 37, scope: !111)
!119 = !DILocation(line: 73, column: 17, scope: !111)
!120 = distinct !{!120, !114, !121, !122}
!121 = !DILocation(line: 77, column: 17, scope: !108)
!122 = !{!"llvm.loop.mustprogress"}
!123 = !DILocation(line: 78, column: 30, scope: !106)
!124 = !DILocation(line: 78, column: 17, scope: !106)
!125 = !DILocation(line: 79, column: 13, scope: !106)
!126 = !DILocation(line: 82, column: 1, scope: !10)
!127 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 89, type: !11, scopeLine: 90, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!128 = !DILocalVariable(name: "data", scope: !127, file: !1, line: 91, type: !14)
!129 = !DILocation(line: 91, column: 12, scope: !127)
!130 = !DILocalVariable(name: "dataPtr1", scope: !127, file: !1, line: 92, type: !18)
!131 = !DILocation(line: 92, column: 13, scope: !127)
!132 = !DILocalVariable(name: "dataPtr2", scope: !127, file: !1, line: 93, type: !18)
!133 = !DILocation(line: 93, column: 13, scope: !127)
!134 = !DILocalVariable(name: "dataBuffer", scope: !127, file: !1, line: 94, type: !23)
!135 = !DILocation(line: 94, column: 10, scope: !127)
!136 = !DILocation(line: 95, column: 12, scope: !127)
!137 = !DILocation(line: 95, column: 10, scope: !127)
!138 = !DILocalVariable(name: "data", scope: !139, file: !1, line: 97, type: !14)
!139 = distinct !DILexicalBlock(scope: !127, file: !1, line: 96, column: 5)
!140 = !DILocation(line: 97, column: 16, scope: !139)
!141 = !DILocation(line: 97, column: 24, scope: !139)
!142 = !DILocation(line: 97, column: 23, scope: !139)
!143 = !DILocation(line: 99, column: 16, scope: !139)
!144 = !DILocation(line: 99, column: 9, scope: !139)
!145 = !DILocation(line: 100, column: 21, scope: !139)
!146 = !DILocation(line: 100, column: 10, scope: !139)
!147 = !DILocation(line: 100, column: 19, scope: !139)
!148 = !DILocalVariable(name: "data", scope: !149, file: !1, line: 103, type: !14)
!149 = distinct !DILexicalBlock(scope: !127, file: !1, line: 102, column: 5)
!150 = !DILocation(line: 103, column: 16, scope: !149)
!151 = !DILocation(line: 103, column: 24, scope: !149)
!152 = !DILocation(line: 103, column: 23, scope: !149)
!153 = !DILocalVariable(name: "i", scope: !154, file: !1, line: 105, type: !4)
!154 = distinct !DILexicalBlock(scope: !149, file: !1, line: 104, column: 9)
!155 = !DILocation(line: 105, column: 17, scope: !154)
!156 = !DILocalVariable(name: "n", scope: !154, file: !1, line: 105, type: !4)
!157 = !DILocation(line: 105, column: 20, scope: !154)
!158 = !DILocalVariable(name: "intVariable", scope: !154, file: !1, line: 105, type: !4)
!159 = !DILocation(line: 105, column: 23, scope: !154)
!160 = !DILocation(line: 106, column: 24, scope: !161)
!161 = distinct !DILexicalBlock(scope: !154, file: !1, line: 106, column: 17)
!162 = !DILocation(line: 106, column: 17, scope: !161)
!163 = !DILocation(line: 106, column: 40, scope: !161)
!164 = !DILocation(line: 106, column: 17, scope: !154)
!165 = !DILocation(line: 109, column: 29, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !1, line: 107, column: 13)
!167 = !DILocation(line: 110, column: 24, scope: !168)
!168 = distinct !DILexicalBlock(scope: !166, file: !1, line: 110, column: 17)
!169 = !DILocation(line: 110, column: 22, scope: !168)
!170 = !DILocation(line: 110, column: 29, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !1, line: 110, column: 17)
!172 = !DILocation(line: 110, column: 33, scope: !171)
!173 = !DILocation(line: 110, column: 31, scope: !171)
!174 = !DILocation(line: 110, column: 17, scope: !168)
!175 = !DILocation(line: 113, column: 32, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !1, line: 111, column: 17)
!177 = !DILocation(line: 114, column: 17, scope: !176)
!178 = !DILocation(line: 110, column: 37, scope: !171)
!179 = !DILocation(line: 110, column: 17, scope: !171)
!180 = distinct !{!180, !174, !181, !122}
!181 = !DILocation(line: 114, column: 17, scope: !168)
!182 = !DILocation(line: 115, column: 30, scope: !166)
!183 = !DILocation(line: 115, column: 17, scope: !166)
!184 = !DILocation(line: 116, column: 13, scope: !166)
!185 = !DILocation(line: 119, column: 1, scope: !127)
!186 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 122, type: !11, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!187 = !DILocalVariable(name: "data", scope: !186, file: !1, line: 124, type: !14)
!188 = !DILocation(line: 124, column: 12, scope: !186)
!189 = !DILocalVariable(name: "dataPtr1", scope: !186, file: !1, line: 125, type: !18)
!190 = !DILocation(line: 125, column: 13, scope: !186)
!191 = !DILocalVariable(name: "dataPtr2", scope: !186, file: !1, line: 126, type: !18)
!192 = !DILocation(line: 126, column: 13, scope: !186)
!193 = !DILocalVariable(name: "dataBuffer", scope: !186, file: !1, line: 127, type: !23)
!194 = !DILocation(line: 127, column: 10, scope: !186)
!195 = !DILocation(line: 128, column: 12, scope: !186)
!196 = !DILocation(line: 128, column: 10, scope: !186)
!197 = !DILocalVariable(name: "data", scope: !198, file: !1, line: 130, type: !14)
!198 = distinct !DILexicalBlock(scope: !186, file: !1, line: 129, column: 5)
!199 = !DILocation(line: 130, column: 16, scope: !198)
!200 = !DILocation(line: 130, column: 24, scope: !198)
!201 = !DILocation(line: 130, column: 23, scope: !198)
!202 = !DILocalVariable(name: "dataLen", scope: !203, file: !1, line: 133, type: !36)
!203 = distinct !DILexicalBlock(scope: !198, file: !1, line: 131, column: 9)
!204 = !DILocation(line: 133, column: 20, scope: !203)
!205 = !DILocation(line: 133, column: 37, scope: !203)
!206 = !DILocation(line: 133, column: 30, scope: !203)
!207 = !DILocation(line: 135, column: 21, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !1, line: 135, column: 17)
!209 = !DILocation(line: 135, column: 20, scope: !208)
!210 = !DILocation(line: 135, column: 29, scope: !208)
!211 = !DILocation(line: 135, column: 17, scope: !203)
!212 = !DILocation(line: 138, column: 27, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !1, line: 138, column: 21)
!214 = distinct !DILexicalBlock(scope: !208, file: !1, line: 136, column: 13)
!215 = !DILocation(line: 138, column: 32, scope: !213)
!216 = !DILocation(line: 138, column: 31, scope: !213)
!217 = !DILocation(line: 138, column: 51, scope: !213)
!218 = !DILocation(line: 138, column: 50, scope: !213)
!219 = !DILocation(line: 138, column: 41, scope: !213)
!220 = !DILocation(line: 138, column: 61, scope: !213)
!221 = !DILocation(line: 138, column: 21, scope: !213)
!222 = !DILocation(line: 138, column: 68, scope: !213)
!223 = !DILocation(line: 138, column: 21, scope: !214)
!224 = !DILocation(line: 142, column: 38, scope: !225)
!225 = distinct !DILexicalBlock(scope: !213, file: !1, line: 139, column: 17)
!226 = !DILocation(line: 142, column: 31, scope: !225)
!227 = !DILocation(line: 142, column: 29, scope: !225)
!228 = !DILocation(line: 143, column: 25, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !1, line: 143, column: 25)
!230 = !DILocation(line: 143, column: 33, scope: !229)
!231 = !DILocation(line: 143, column: 37, scope: !229)
!232 = !DILocation(line: 143, column: 40, scope: !229)
!233 = !DILocation(line: 143, column: 45, scope: !229)
!234 = !DILocation(line: 143, column: 52, scope: !229)
!235 = !DILocation(line: 143, column: 56, scope: !229)
!236 = !DILocation(line: 143, column: 25, scope: !225)
!237 = !DILocation(line: 145, column: 25, scope: !238)
!238 = distinct !DILexicalBlock(scope: !229, file: !1, line: 144, column: 21)
!239 = !DILocation(line: 145, column: 30, scope: !238)
!240 = !DILocation(line: 145, column: 37, scope: !238)
!241 = !DILocation(line: 145, column: 41, scope: !238)
!242 = !DILocation(line: 146, column: 21, scope: !238)
!243 = !DILocation(line: 147, column: 17, scope: !225)
!244 = !DILocation(line: 150, column: 21, scope: !245)
!245 = distinct !DILexicalBlock(scope: !213, file: !1, line: 149, column: 17)
!246 = !DILocation(line: 152, column: 21, scope: !245)
!247 = !DILocation(line: 152, column: 26, scope: !245)
!248 = !DILocation(line: 152, column: 35, scope: !245)
!249 = !DILocation(line: 154, column: 13, scope: !214)
!250 = !DILocation(line: 156, column: 21, scope: !198)
!251 = !DILocation(line: 156, column: 10, scope: !198)
!252 = !DILocation(line: 156, column: 19, scope: !198)
!253 = !DILocalVariable(name: "data", scope: !254, file: !1, line: 159, type: !14)
!254 = distinct !DILexicalBlock(scope: !186, file: !1, line: 158, column: 5)
!255 = !DILocation(line: 159, column: 16, scope: !254)
!256 = !DILocation(line: 159, column: 24, scope: !254)
!257 = !DILocation(line: 159, column: 23, scope: !254)
!258 = !DILocalVariable(name: "i", scope: !259, file: !1, line: 161, type: !4)
!259 = distinct !DILexicalBlock(scope: !254, file: !1, line: 160, column: 9)
!260 = !DILocation(line: 161, column: 17, scope: !259)
!261 = !DILocalVariable(name: "n", scope: !259, file: !1, line: 161, type: !4)
!262 = !DILocation(line: 161, column: 20, scope: !259)
!263 = !DILocalVariable(name: "intVariable", scope: !259, file: !1, line: 161, type: !4)
!264 = !DILocation(line: 161, column: 23, scope: !259)
!265 = !DILocation(line: 162, column: 24, scope: !266)
!266 = distinct !DILexicalBlock(scope: !259, file: !1, line: 162, column: 17)
!267 = !DILocation(line: 162, column: 17, scope: !266)
!268 = !DILocation(line: 162, column: 40, scope: !266)
!269 = !DILocation(line: 162, column: 17, scope: !259)
!270 = !DILocation(line: 165, column: 21, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 165, column: 21)
!272 = distinct !DILexicalBlock(scope: !266, file: !1, line: 163, column: 13)
!273 = !DILocation(line: 165, column: 23, scope: !271)
!274 = !DILocation(line: 165, column: 21, scope: !272)
!275 = !DILocation(line: 167, column: 33, scope: !276)
!276 = distinct !DILexicalBlock(scope: !271, file: !1, line: 166, column: 17)
!277 = !DILocation(line: 168, column: 28, scope: !278)
!278 = distinct !DILexicalBlock(scope: !276, file: !1, line: 168, column: 21)
!279 = !DILocation(line: 168, column: 26, scope: !278)
!280 = !DILocation(line: 168, column: 33, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !1, line: 168, column: 21)
!282 = !DILocation(line: 168, column: 37, scope: !281)
!283 = !DILocation(line: 168, column: 35, scope: !281)
!284 = !DILocation(line: 168, column: 21, scope: !278)
!285 = !DILocation(line: 171, column: 36, scope: !286)
!286 = distinct !DILexicalBlock(scope: !281, file: !1, line: 169, column: 21)
!287 = !DILocation(line: 172, column: 21, scope: !286)
!288 = !DILocation(line: 168, column: 41, scope: !281)
!289 = !DILocation(line: 168, column: 21, scope: !281)
!290 = distinct !{!290, !284, !291, !122}
!291 = !DILocation(line: 172, column: 21, scope: !278)
!292 = !DILocation(line: 173, column: 34, scope: !276)
!293 = !DILocation(line: 173, column: 21, scope: !276)
!294 = !DILocation(line: 174, column: 17, scope: !276)
!295 = !DILocation(line: 175, column: 13, scope: !272)
!296 = !DILocation(line: 178, column: 1, scope: !186)
!297 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_32_good", scope: !1, file: !1, line: 180, type: !11, scopeLine: 181, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!298 = !DILocation(line: 182, column: 5, scope: !297)
!299 = !DILocation(line: 183, column: 5, scope: !297)
!300 = !DILocation(line: 184, column: 1, scope: !297)
