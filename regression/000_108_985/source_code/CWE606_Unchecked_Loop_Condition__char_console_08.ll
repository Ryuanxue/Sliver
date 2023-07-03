; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_08.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_08.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsTrue() #0 !dbg !10 {
entry:
  ret i32 1, !dbg !13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsFalse() #0 !dbg !14 {
entry:
  ret i32 0, !dbg !15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_08_bad() #0 !dbg !16 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !19, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !23, metadata !DIExpression()), !dbg !27
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !27
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !28
  store i8* %arraydecay, i8** %data, align 8, !dbg !29
  %call = call i32 @staticReturnsTrue(), !dbg !30
  %tobool = icmp ne i32 %call, 0, !dbg !30
  br i1 %tobool, label %if.then, label %if.end21, !dbg !32

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !33, metadata !DIExpression()), !dbg !39
  %1 = load i8*, i8** %data, align 8, !dbg !40
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !41
  store i64 %call1, i64* %dataLen, align 8, !dbg !39
  %2 = load i64, i64* %dataLen, align 8, !dbg !42
  %sub = sub i64 100, %2, !dbg !44
  %cmp = icmp ugt i64 %sub, 1, !dbg !45
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !46

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !47
  %4 = load i64, i64* %dataLen, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !51
  %5 = load i64, i64* %dataLen, align 8, !dbg !52
  %sub3 = sub i64 100, %5, !dbg !53
  %conv = trunc i64 %sub3 to i32, !dbg !54
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !55
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !56
  %cmp5 = icmp ne i8* %call4, null, !dbg !57
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !58

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !59
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !61
  store i64 %call8, i64* %dataLen, align 8, !dbg !62
  %8 = load i64, i64* %dataLen, align 8, !dbg !63
  %cmp9 = icmp ugt i64 %8, 0, !dbg !65
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !66

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !67
  %10 = load i64, i64* %dataLen, align 8, !dbg !68
  %sub11 = sub i64 %10, 1, !dbg !69
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !67
  %11 = load i8, i8* %arrayidx, align 1, !dbg !67
  %conv12 = sext i8 %11 to i32, !dbg !67
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !70
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !71

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !72
  %13 = load i64, i64* %dataLen, align 8, !dbg !74
  %sub16 = sub i64 %13, 1, !dbg !75
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !72
  store i8 0, i8* %arrayidx17, align 1, !dbg !76
  br label %if.end, !dbg !77

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !78

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !79
  %14 = load i8*, i8** %data, align 8, !dbg !81
  %15 = load i64, i64* %dataLen, align 8, !dbg !82
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !81
  store i8 0, i8* %arrayidx18, align 1, !dbg !83
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !84

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !85

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 @staticReturnsTrue(), !dbg !86
  %tobool23 = icmp ne i32 %call22, 0, !dbg !86
  br i1 %tobool23, label %if.then24, label %if.end33, !dbg !88

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !89, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %n, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !95, metadata !DIExpression()), !dbg !96
  %16 = load i8*, i8** %data, align 8, !dbg !97
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !99
  %cmp26 = icmp eq i32 %call25, 1, !dbg !100
  br i1 %cmp26, label %if.then28, label %if.end32, !dbg !101

if.then28:                                        ; preds = %if.then24
  store i32 0, i32* %intVariable, align 4, !dbg !102
  store i32 0, i32* %i, align 4, !dbg !104
  br label %for.cond, !dbg !106

for.cond:                                         ; preds = %for.inc, %if.then28
  %17 = load i32, i32* %i, align 4, !dbg !107
  %18 = load i32, i32* %n, align 4, !dbg !109
  %cmp29 = icmp slt i32 %17, %18, !dbg !110
  br i1 %cmp29, label %for.body, label %for.end, !dbg !111

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !112
  %inc = add nsw i32 %19, 1, !dbg !112
  store i32 %inc, i32* %intVariable, align 4, !dbg !112
  br label %for.inc, !dbg !114

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !115
  %inc31 = add nsw i32 %20, 1, !dbg !115
  store i32 %inc31, i32* %i, align 4, !dbg !115
  br label %for.cond, !dbg !116, !llvm.loop !117

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !120
  call void @printIntLine(i32 %21), !dbg !121
  br label %if.end32, !dbg !122

if.end32:                                         ; preds = %for.end, %if.then24
  br label %if.end33, !dbg !123

if.end33:                                         ; preds = %if.end32, %if.end21
  ret void, !dbg !124
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
define dso_local void @goodB2G1() #0 !dbg !125 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !128, metadata !DIExpression()), !dbg !129
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !129
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !129
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !130
  store i8* %arraydecay, i8** %data, align 8, !dbg !131
  %call = call i32 @staticReturnsTrue(), !dbg !132
  %tobool = icmp ne i32 %call, 0, !dbg !132
  br i1 %tobool, label %if.then, label %if.end21, !dbg !134

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !135, metadata !DIExpression()), !dbg !138
  %1 = load i8*, i8** %data, align 8, !dbg !139
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !140
  store i64 %call1, i64* %dataLen, align 8, !dbg !138
  %2 = load i64, i64* %dataLen, align 8, !dbg !141
  %sub = sub i64 100, %2, !dbg !143
  %cmp = icmp ugt i64 %sub, 1, !dbg !144
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !145

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !146
  %4 = load i64, i64* %dataLen, align 8, !dbg !149
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !150
  %5 = load i64, i64* %dataLen, align 8, !dbg !151
  %sub3 = sub i64 100, %5, !dbg !152
  %conv = trunc i64 %sub3 to i32, !dbg !153
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !154
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !155
  %cmp5 = icmp ne i8* %call4, null, !dbg !156
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !157

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !158
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !160
  store i64 %call8, i64* %dataLen, align 8, !dbg !161
  %8 = load i64, i64* %dataLen, align 8, !dbg !162
  %cmp9 = icmp ugt i64 %8, 0, !dbg !164
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !165

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !166
  %10 = load i64, i64* %dataLen, align 8, !dbg !167
  %sub11 = sub i64 %10, 1, !dbg !168
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !166
  %11 = load i8, i8* %arrayidx, align 1, !dbg !166
  %conv12 = sext i8 %11 to i32, !dbg !166
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !169
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !170

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !171
  %13 = load i64, i64* %dataLen, align 8, !dbg !173
  %sub16 = sub i64 %13, 1, !dbg !174
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !171
  store i8 0, i8* %arrayidx17, align 1, !dbg !175
  br label %if.end, !dbg !176

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !177

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !178
  %14 = load i8*, i8** %data, align 8, !dbg !180
  %15 = load i64, i64* %dataLen, align 8, !dbg !181
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !180
  store i8 0, i8* %arrayidx18, align 1, !dbg !182
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !183

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !184

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 @staticReturnsFalse(), !dbg !185
  %tobool23 = icmp ne i32 %call22, 0, !dbg !185
  br i1 %tobool23, label %if.then24, label %if.else25, !dbg !187

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !188
  br label %if.end38, !dbg !190

if.else25:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !191, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i32* %n, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !197, metadata !DIExpression()), !dbg !198
  %16 = load i8*, i8** %data, align 8, !dbg !199
  %call26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !201
  %cmp27 = icmp eq i32 %call26, 1, !dbg !202
  br i1 %cmp27, label %if.then29, label %if.end37, !dbg !203

if.then29:                                        ; preds = %if.else25
  %17 = load i32, i32* %n, align 4, !dbg !204
  %cmp30 = icmp slt i32 %17, 10000, !dbg !207
  br i1 %cmp30, label %if.then32, label %if.end36, !dbg !208

if.then32:                                        ; preds = %if.then29
  store i32 0, i32* %intVariable, align 4, !dbg !209
  store i32 0, i32* %i, align 4, !dbg !211
  br label %for.cond, !dbg !213

for.cond:                                         ; preds = %for.inc, %if.then32
  %18 = load i32, i32* %i, align 4, !dbg !214
  %19 = load i32, i32* %n, align 4, !dbg !216
  %cmp33 = icmp slt i32 %18, %19, !dbg !217
  br i1 %cmp33, label %for.body, label %for.end, !dbg !218

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !219
  %inc = add nsw i32 %20, 1, !dbg !219
  store i32 %inc, i32* %intVariable, align 4, !dbg !219
  br label %for.inc, !dbg !221

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !222
  %inc35 = add nsw i32 %21, 1, !dbg !222
  store i32 %inc35, i32* %i, align 4, !dbg !222
  br label %for.cond, !dbg !223, !llvm.loop !224

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !226
  call void @printIntLine(i32 %22), !dbg !227
  br label %if.end36, !dbg !228

if.end36:                                         ; preds = %for.end, %if.then29
  br label %if.end37, !dbg !229

if.end37:                                         ; preds = %if.end36, %if.else25
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  ret void, !dbg !230
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !231 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !235
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !235
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !236
  store i8* %arraydecay, i8** %data, align 8, !dbg !237
  %call = call i32 @staticReturnsTrue(), !dbg !238
  %tobool = icmp ne i32 %call, 0, !dbg !238
  br i1 %tobool, label %if.then, label %if.end21, !dbg !240

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !241, metadata !DIExpression()), !dbg !244
  %1 = load i8*, i8** %data, align 8, !dbg !245
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !246
  store i64 %call1, i64* %dataLen, align 8, !dbg !244
  %2 = load i64, i64* %dataLen, align 8, !dbg !247
  %sub = sub i64 100, %2, !dbg !249
  %cmp = icmp ugt i64 %sub, 1, !dbg !250
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !251

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !252
  %4 = load i64, i64* %dataLen, align 8, !dbg !255
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !256
  %5 = load i64, i64* %dataLen, align 8, !dbg !257
  %sub3 = sub i64 100, %5, !dbg !258
  %conv = trunc i64 %sub3 to i32, !dbg !259
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !260
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !261
  %cmp5 = icmp ne i8* %call4, null, !dbg !262
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !263

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !264
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !266
  store i64 %call8, i64* %dataLen, align 8, !dbg !267
  %8 = load i64, i64* %dataLen, align 8, !dbg !268
  %cmp9 = icmp ugt i64 %8, 0, !dbg !270
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !271

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !272
  %10 = load i64, i64* %dataLen, align 8, !dbg !273
  %sub11 = sub i64 %10, 1, !dbg !274
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !272
  %11 = load i8, i8* %arrayidx, align 1, !dbg !272
  %conv12 = sext i8 %11 to i32, !dbg !272
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !275
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !276

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !277
  %13 = load i64, i64* %dataLen, align 8, !dbg !279
  %sub16 = sub i64 %13, 1, !dbg !280
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !277
  store i8 0, i8* %arrayidx17, align 1, !dbg !281
  br label %if.end, !dbg !282

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !283

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !284
  %14 = load i8*, i8** %data, align 8, !dbg !286
  %15 = load i64, i64* %dataLen, align 8, !dbg !287
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !286
  store i8 0, i8* %arrayidx18, align 1, !dbg !288
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !289

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !290

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 @staticReturnsTrue(), !dbg !291
  %tobool23 = icmp ne i32 %call22, 0, !dbg !291
  br i1 %tobool23, label %if.then24, label %if.end37, !dbg !293

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !294, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata i32* %n, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !300, metadata !DIExpression()), !dbg !301
  %16 = load i8*, i8** %data, align 8, !dbg !302
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !304
  %cmp26 = icmp eq i32 %call25, 1, !dbg !305
  br i1 %cmp26, label %if.then28, label %if.end36, !dbg !306

if.then28:                                        ; preds = %if.then24
  %17 = load i32, i32* %n, align 4, !dbg !307
  %cmp29 = icmp slt i32 %17, 10000, !dbg !310
  br i1 %cmp29, label %if.then31, label %if.end35, !dbg !311

if.then31:                                        ; preds = %if.then28
  store i32 0, i32* %intVariable, align 4, !dbg !312
  store i32 0, i32* %i, align 4, !dbg !314
  br label %for.cond, !dbg !316

for.cond:                                         ; preds = %for.inc, %if.then31
  %18 = load i32, i32* %i, align 4, !dbg !317
  %19 = load i32, i32* %n, align 4, !dbg !319
  %cmp32 = icmp slt i32 %18, %19, !dbg !320
  br i1 %cmp32, label %for.body, label %for.end, !dbg !321

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !322
  %inc = add nsw i32 %20, 1, !dbg !322
  store i32 %inc, i32* %intVariable, align 4, !dbg !322
  br label %for.inc, !dbg !324

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !325
  %inc34 = add nsw i32 %21, 1, !dbg !325
  store i32 %inc34, i32* %i, align 4, !dbg !325
  br label %for.cond, !dbg !326, !llvm.loop !327

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !329
  call void @printIntLine(i32 %22), !dbg !330
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
  %call = call i32 @staticReturnsFalse(), !dbg !342
  %tobool = icmp ne i32 %call, 0, !dbg !342
  br i1 %tobool, label %if.then, label %if.else, !dbg !344

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !345
  br label %if.end, !dbg !347

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !348
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !350
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @staticReturnsTrue(), !dbg !351
  %tobool3 = icmp ne i32 %call2, 0, !dbg !351
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !353

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !354, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.declare(metadata i32* %n, metadata !358, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !360, metadata !DIExpression()), !dbg !361
  %2 = load i8*, i8** %data, align 8, !dbg !362
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !364
  %cmp = icmp eq i32 %call5, 1, !dbg !365
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !366

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !367
  store i32 0, i32* %i, align 4, !dbg !369
  br label %for.cond, !dbg !371

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !372
  %4 = load i32, i32* %n, align 4, !dbg !374
  %cmp7 = icmp slt i32 %3, %4, !dbg !375
  br i1 %cmp7, label %for.body, label %for.end, !dbg !376

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !377
  %inc = add nsw i32 %5, 1, !dbg !377
  store i32 %inc, i32* %intVariable, align 4, !dbg !377
  br label %for.inc, !dbg !379

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !380
  %inc8 = add nsw i32 %6, 1, !dbg !380
  store i32 %inc8, i32* %i, align 4, !dbg !380
  br label %for.cond, !dbg !381, !llvm.loop !382

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !384
  call void @printIntLine(i32 %7), !dbg !385
  br label %if.end9, !dbg !386

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !387

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !388
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !389 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !390, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !393
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !393
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !394
  store i8* %arraydecay, i8** %data, align 8, !dbg !395
  %call = call i32 @staticReturnsTrue(), !dbg !396
  %tobool = icmp ne i32 %call, 0, !dbg !396
  br i1 %tobool, label %if.then, label %if.end, !dbg !398

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !399
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !401
  br label %if.end, !dbg !402

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @staticReturnsTrue(), !dbg !403
  %tobool3 = icmp ne i32 %call2, 0, !dbg !403
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !405

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !406, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.declare(metadata i32* %n, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !412, metadata !DIExpression()), !dbg !413
  %2 = load i8*, i8** %data, align 8, !dbg !414
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !416
  %cmp = icmp eq i32 %call5, 1, !dbg !417
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !418

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !419
  store i32 0, i32* %i, align 4, !dbg !421
  br label %for.cond, !dbg !423

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !424
  %4 = load i32, i32* %n, align 4, !dbg !426
  %cmp7 = icmp slt i32 %3, %4, !dbg !427
  br i1 %cmp7, label %for.body, label %for.end, !dbg !428

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !429
  %inc = add nsw i32 %5, 1, !dbg !429
  store i32 %inc, i32* %intVariable, align 4, !dbg !429
  br label %for.inc, !dbg !431

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !432
  %inc8 = add nsw i32 %6, 1, !dbg !432
  store i32 %inc8, i32* %i, align 4, !dbg !432
  br label %for.cond, !dbg !433, !llvm.loop !434

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !436
  call void @printIntLine(i32 %7), !dbg !437
  br label %if.end9, !dbg !438

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !439

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_08_good() #0 !dbg !441 {
entry:
  call void @goodB2G1(), !dbg !442
  call void @goodB2G2(), !dbg !443
  call void @goodG2B1(), !dbg !444
  call void @goodG2B2(), !dbg !445
  ret void, !dbg !446
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_985/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !1, file: !1, line: 30, type: !11, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!4}
!13 = !DILocation(line: 32, column: 5, scope: !10)
!14 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 37, column: 5, scope: !14)
!16 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_08_bad", scope: !1, file: !1, line: 42, type: !17, scopeLine: 43, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !DILocalVariable(name: "data", scope: !16, file: !1, line: 44, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DILocation(line: 44, column: 12, scope: !16)
!23 = !DILocalVariable(name: "dataBuffer", scope: !16, file: !1, line: 45, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 45, column: 10, scope: !16)
!28 = !DILocation(line: 46, column: 12, scope: !16)
!29 = !DILocation(line: 46, column: 10, scope: !16)
!30 = !DILocation(line: 47, column: 8, scope: !31)
!31 = distinct !DILexicalBlock(scope: !16, file: !1, line: 47, column: 8)
!32 = !DILocation(line: 47, column: 8, scope: !16)
!33 = !DILocalVariable(name: "dataLen", scope: !34, file: !1, line: 51, type: !36)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 49, column: 9)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 48, column: 5)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 51, column: 20, scope: !34)
!40 = !DILocation(line: 51, column: 37, scope: !34)
!41 = !DILocation(line: 51, column: 30, scope: !34)
!42 = !DILocation(line: 53, column: 21, scope: !43)
!43 = distinct !DILexicalBlock(scope: !34, file: !1, line: 53, column: 17)
!44 = !DILocation(line: 53, column: 20, scope: !43)
!45 = !DILocation(line: 53, column: 29, scope: !43)
!46 = !DILocation(line: 53, column: 17, scope: !34)
!47 = !DILocation(line: 56, column: 27, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 56, column: 21)
!49 = distinct !DILexicalBlock(scope: !43, file: !1, line: 54, column: 13)
!50 = !DILocation(line: 56, column: 32, scope: !48)
!51 = !DILocation(line: 56, column: 31, scope: !48)
!52 = !DILocation(line: 56, column: 51, scope: !48)
!53 = !DILocation(line: 56, column: 50, scope: !48)
!54 = !DILocation(line: 56, column: 41, scope: !48)
!55 = !DILocation(line: 56, column: 61, scope: !48)
!56 = !DILocation(line: 56, column: 21, scope: !48)
!57 = !DILocation(line: 56, column: 68, scope: !48)
!58 = !DILocation(line: 56, column: 21, scope: !49)
!59 = !DILocation(line: 60, column: 38, scope: !60)
!60 = distinct !DILexicalBlock(scope: !48, file: !1, line: 57, column: 17)
!61 = !DILocation(line: 60, column: 31, scope: !60)
!62 = !DILocation(line: 60, column: 29, scope: !60)
!63 = !DILocation(line: 61, column: 25, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 61, column: 25)
!65 = !DILocation(line: 61, column: 33, scope: !64)
!66 = !DILocation(line: 61, column: 37, scope: !64)
!67 = !DILocation(line: 61, column: 40, scope: !64)
!68 = !DILocation(line: 61, column: 45, scope: !64)
!69 = !DILocation(line: 61, column: 52, scope: !64)
!70 = !DILocation(line: 61, column: 56, scope: !64)
!71 = !DILocation(line: 61, column: 25, scope: !60)
!72 = !DILocation(line: 63, column: 25, scope: !73)
!73 = distinct !DILexicalBlock(scope: !64, file: !1, line: 62, column: 21)
!74 = !DILocation(line: 63, column: 30, scope: !73)
!75 = !DILocation(line: 63, column: 37, scope: !73)
!76 = !DILocation(line: 63, column: 41, scope: !73)
!77 = !DILocation(line: 64, column: 21, scope: !73)
!78 = !DILocation(line: 65, column: 17, scope: !60)
!79 = !DILocation(line: 68, column: 21, scope: !80)
!80 = distinct !DILexicalBlock(scope: !48, file: !1, line: 67, column: 17)
!81 = !DILocation(line: 70, column: 21, scope: !80)
!82 = !DILocation(line: 70, column: 26, scope: !80)
!83 = !DILocation(line: 70, column: 35, scope: !80)
!84 = !DILocation(line: 72, column: 13, scope: !49)
!85 = !DILocation(line: 74, column: 5, scope: !35)
!86 = !DILocation(line: 75, column: 8, scope: !87)
!87 = distinct !DILexicalBlock(scope: !16, file: !1, line: 75, column: 8)
!88 = !DILocation(line: 75, column: 8, scope: !16)
!89 = !DILocalVariable(name: "i", scope: !90, file: !1, line: 78, type: !4)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 77, column: 9)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 76, column: 5)
!92 = !DILocation(line: 78, column: 17, scope: !90)
!93 = !DILocalVariable(name: "n", scope: !90, file: !1, line: 78, type: !4)
!94 = !DILocation(line: 78, column: 20, scope: !90)
!95 = !DILocalVariable(name: "intVariable", scope: !90, file: !1, line: 78, type: !4)
!96 = !DILocation(line: 78, column: 23, scope: !90)
!97 = !DILocation(line: 79, column: 24, scope: !98)
!98 = distinct !DILexicalBlock(scope: !90, file: !1, line: 79, column: 17)
!99 = !DILocation(line: 79, column: 17, scope: !98)
!100 = !DILocation(line: 79, column: 40, scope: !98)
!101 = !DILocation(line: 79, column: 17, scope: !90)
!102 = !DILocation(line: 82, column: 29, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 80, column: 13)
!104 = !DILocation(line: 83, column: 24, scope: !105)
!105 = distinct !DILexicalBlock(scope: !103, file: !1, line: 83, column: 17)
!106 = !DILocation(line: 83, column: 22, scope: !105)
!107 = !DILocation(line: 83, column: 29, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !1, line: 83, column: 17)
!109 = !DILocation(line: 83, column: 33, scope: !108)
!110 = !DILocation(line: 83, column: 31, scope: !108)
!111 = !DILocation(line: 83, column: 17, scope: !105)
!112 = !DILocation(line: 86, column: 32, scope: !113)
!113 = distinct !DILexicalBlock(scope: !108, file: !1, line: 84, column: 17)
!114 = !DILocation(line: 87, column: 17, scope: !113)
!115 = !DILocation(line: 83, column: 37, scope: !108)
!116 = !DILocation(line: 83, column: 17, scope: !108)
!117 = distinct !{!117, !111, !118, !119}
!118 = !DILocation(line: 87, column: 17, scope: !105)
!119 = !{!"llvm.loop.mustprogress"}
!120 = !DILocation(line: 88, column: 30, scope: !103)
!121 = !DILocation(line: 88, column: 17, scope: !103)
!122 = !DILocation(line: 89, column: 13, scope: !103)
!123 = !DILocation(line: 91, column: 5, scope: !91)
!124 = !DILocation(line: 92, column: 1, scope: !16)
!125 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 99, type: !17, scopeLine: 100, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!126 = !DILocalVariable(name: "data", scope: !125, file: !1, line: 101, type: !20)
!127 = !DILocation(line: 101, column: 12, scope: !125)
!128 = !DILocalVariable(name: "dataBuffer", scope: !125, file: !1, line: 102, type: !24)
!129 = !DILocation(line: 102, column: 10, scope: !125)
!130 = !DILocation(line: 103, column: 12, scope: !125)
!131 = !DILocation(line: 103, column: 10, scope: !125)
!132 = !DILocation(line: 104, column: 8, scope: !133)
!133 = distinct !DILexicalBlock(scope: !125, file: !1, line: 104, column: 8)
!134 = !DILocation(line: 104, column: 8, scope: !125)
!135 = !DILocalVariable(name: "dataLen", scope: !136, file: !1, line: 108, type: !36)
!136 = distinct !DILexicalBlock(scope: !137, file: !1, line: 106, column: 9)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 105, column: 5)
!138 = !DILocation(line: 108, column: 20, scope: !136)
!139 = !DILocation(line: 108, column: 37, scope: !136)
!140 = !DILocation(line: 108, column: 30, scope: !136)
!141 = !DILocation(line: 110, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !136, file: !1, line: 110, column: 17)
!143 = !DILocation(line: 110, column: 20, scope: !142)
!144 = !DILocation(line: 110, column: 29, scope: !142)
!145 = !DILocation(line: 110, column: 17, scope: !136)
!146 = !DILocation(line: 113, column: 27, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 113, column: 21)
!148 = distinct !DILexicalBlock(scope: !142, file: !1, line: 111, column: 13)
!149 = !DILocation(line: 113, column: 32, scope: !147)
!150 = !DILocation(line: 113, column: 31, scope: !147)
!151 = !DILocation(line: 113, column: 51, scope: !147)
!152 = !DILocation(line: 113, column: 50, scope: !147)
!153 = !DILocation(line: 113, column: 41, scope: !147)
!154 = !DILocation(line: 113, column: 61, scope: !147)
!155 = !DILocation(line: 113, column: 21, scope: !147)
!156 = !DILocation(line: 113, column: 68, scope: !147)
!157 = !DILocation(line: 113, column: 21, scope: !148)
!158 = !DILocation(line: 117, column: 38, scope: !159)
!159 = distinct !DILexicalBlock(scope: !147, file: !1, line: 114, column: 17)
!160 = !DILocation(line: 117, column: 31, scope: !159)
!161 = !DILocation(line: 117, column: 29, scope: !159)
!162 = !DILocation(line: 118, column: 25, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !1, line: 118, column: 25)
!164 = !DILocation(line: 118, column: 33, scope: !163)
!165 = !DILocation(line: 118, column: 37, scope: !163)
!166 = !DILocation(line: 118, column: 40, scope: !163)
!167 = !DILocation(line: 118, column: 45, scope: !163)
!168 = !DILocation(line: 118, column: 52, scope: !163)
!169 = !DILocation(line: 118, column: 56, scope: !163)
!170 = !DILocation(line: 118, column: 25, scope: !159)
!171 = !DILocation(line: 120, column: 25, scope: !172)
!172 = distinct !DILexicalBlock(scope: !163, file: !1, line: 119, column: 21)
!173 = !DILocation(line: 120, column: 30, scope: !172)
!174 = !DILocation(line: 120, column: 37, scope: !172)
!175 = !DILocation(line: 120, column: 41, scope: !172)
!176 = !DILocation(line: 121, column: 21, scope: !172)
!177 = !DILocation(line: 122, column: 17, scope: !159)
!178 = !DILocation(line: 125, column: 21, scope: !179)
!179 = distinct !DILexicalBlock(scope: !147, file: !1, line: 124, column: 17)
!180 = !DILocation(line: 127, column: 21, scope: !179)
!181 = !DILocation(line: 127, column: 26, scope: !179)
!182 = !DILocation(line: 127, column: 35, scope: !179)
!183 = !DILocation(line: 129, column: 13, scope: !148)
!184 = !DILocation(line: 131, column: 5, scope: !137)
!185 = !DILocation(line: 132, column: 8, scope: !186)
!186 = distinct !DILexicalBlock(scope: !125, file: !1, line: 132, column: 8)
!187 = !DILocation(line: 132, column: 8, scope: !125)
!188 = !DILocation(line: 135, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !1, line: 133, column: 5)
!190 = !DILocation(line: 136, column: 5, scope: !189)
!191 = !DILocalVariable(name: "i", scope: !192, file: !1, line: 140, type: !4)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 139, column: 9)
!193 = distinct !DILexicalBlock(scope: !186, file: !1, line: 138, column: 5)
!194 = !DILocation(line: 140, column: 17, scope: !192)
!195 = !DILocalVariable(name: "n", scope: !192, file: !1, line: 140, type: !4)
!196 = !DILocation(line: 140, column: 20, scope: !192)
!197 = !DILocalVariable(name: "intVariable", scope: !192, file: !1, line: 140, type: !4)
!198 = !DILocation(line: 140, column: 23, scope: !192)
!199 = !DILocation(line: 141, column: 24, scope: !200)
!200 = distinct !DILexicalBlock(scope: !192, file: !1, line: 141, column: 17)
!201 = !DILocation(line: 141, column: 17, scope: !200)
!202 = !DILocation(line: 141, column: 40, scope: !200)
!203 = !DILocation(line: 141, column: 17, scope: !192)
!204 = !DILocation(line: 144, column: 21, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 144, column: 21)
!206 = distinct !DILexicalBlock(scope: !200, file: !1, line: 142, column: 13)
!207 = !DILocation(line: 144, column: 23, scope: !205)
!208 = !DILocation(line: 144, column: 21, scope: !206)
!209 = !DILocation(line: 146, column: 33, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !1, line: 145, column: 17)
!211 = !DILocation(line: 147, column: 28, scope: !212)
!212 = distinct !DILexicalBlock(scope: !210, file: !1, line: 147, column: 21)
!213 = !DILocation(line: 147, column: 26, scope: !212)
!214 = !DILocation(line: 147, column: 33, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !1, line: 147, column: 21)
!216 = !DILocation(line: 147, column: 37, scope: !215)
!217 = !DILocation(line: 147, column: 35, scope: !215)
!218 = !DILocation(line: 147, column: 21, scope: !212)
!219 = !DILocation(line: 150, column: 36, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 148, column: 21)
!221 = !DILocation(line: 151, column: 21, scope: !220)
!222 = !DILocation(line: 147, column: 41, scope: !215)
!223 = !DILocation(line: 147, column: 21, scope: !215)
!224 = distinct !{!224, !218, !225, !119}
!225 = !DILocation(line: 151, column: 21, scope: !212)
!226 = !DILocation(line: 152, column: 34, scope: !210)
!227 = !DILocation(line: 152, column: 21, scope: !210)
!228 = !DILocation(line: 153, column: 17, scope: !210)
!229 = !DILocation(line: 154, column: 13, scope: !206)
!230 = !DILocation(line: 157, column: 1, scope: !125)
!231 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 160, type: !17, scopeLine: 161, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!232 = !DILocalVariable(name: "data", scope: !231, file: !1, line: 162, type: !20)
!233 = !DILocation(line: 162, column: 12, scope: !231)
!234 = !DILocalVariable(name: "dataBuffer", scope: !231, file: !1, line: 163, type: !24)
!235 = !DILocation(line: 163, column: 10, scope: !231)
!236 = !DILocation(line: 164, column: 12, scope: !231)
!237 = !DILocation(line: 164, column: 10, scope: !231)
!238 = !DILocation(line: 165, column: 8, scope: !239)
!239 = distinct !DILexicalBlock(scope: !231, file: !1, line: 165, column: 8)
!240 = !DILocation(line: 165, column: 8, scope: !231)
!241 = !DILocalVariable(name: "dataLen", scope: !242, file: !1, line: 169, type: !36)
!242 = distinct !DILexicalBlock(scope: !243, file: !1, line: 167, column: 9)
!243 = distinct !DILexicalBlock(scope: !239, file: !1, line: 166, column: 5)
!244 = !DILocation(line: 169, column: 20, scope: !242)
!245 = !DILocation(line: 169, column: 37, scope: !242)
!246 = !DILocation(line: 169, column: 30, scope: !242)
!247 = !DILocation(line: 171, column: 21, scope: !248)
!248 = distinct !DILexicalBlock(scope: !242, file: !1, line: 171, column: 17)
!249 = !DILocation(line: 171, column: 20, scope: !248)
!250 = !DILocation(line: 171, column: 29, scope: !248)
!251 = !DILocation(line: 171, column: 17, scope: !242)
!252 = !DILocation(line: 174, column: 27, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !1, line: 174, column: 21)
!254 = distinct !DILexicalBlock(scope: !248, file: !1, line: 172, column: 13)
!255 = !DILocation(line: 174, column: 32, scope: !253)
!256 = !DILocation(line: 174, column: 31, scope: !253)
!257 = !DILocation(line: 174, column: 51, scope: !253)
!258 = !DILocation(line: 174, column: 50, scope: !253)
!259 = !DILocation(line: 174, column: 41, scope: !253)
!260 = !DILocation(line: 174, column: 61, scope: !253)
!261 = !DILocation(line: 174, column: 21, scope: !253)
!262 = !DILocation(line: 174, column: 68, scope: !253)
!263 = !DILocation(line: 174, column: 21, scope: !254)
!264 = !DILocation(line: 178, column: 38, scope: !265)
!265 = distinct !DILexicalBlock(scope: !253, file: !1, line: 175, column: 17)
!266 = !DILocation(line: 178, column: 31, scope: !265)
!267 = !DILocation(line: 178, column: 29, scope: !265)
!268 = !DILocation(line: 179, column: 25, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !1, line: 179, column: 25)
!270 = !DILocation(line: 179, column: 33, scope: !269)
!271 = !DILocation(line: 179, column: 37, scope: !269)
!272 = !DILocation(line: 179, column: 40, scope: !269)
!273 = !DILocation(line: 179, column: 45, scope: !269)
!274 = !DILocation(line: 179, column: 52, scope: !269)
!275 = !DILocation(line: 179, column: 56, scope: !269)
!276 = !DILocation(line: 179, column: 25, scope: !265)
!277 = !DILocation(line: 181, column: 25, scope: !278)
!278 = distinct !DILexicalBlock(scope: !269, file: !1, line: 180, column: 21)
!279 = !DILocation(line: 181, column: 30, scope: !278)
!280 = !DILocation(line: 181, column: 37, scope: !278)
!281 = !DILocation(line: 181, column: 41, scope: !278)
!282 = !DILocation(line: 182, column: 21, scope: !278)
!283 = !DILocation(line: 183, column: 17, scope: !265)
!284 = !DILocation(line: 186, column: 21, scope: !285)
!285 = distinct !DILexicalBlock(scope: !253, file: !1, line: 185, column: 17)
!286 = !DILocation(line: 188, column: 21, scope: !285)
!287 = !DILocation(line: 188, column: 26, scope: !285)
!288 = !DILocation(line: 188, column: 35, scope: !285)
!289 = !DILocation(line: 190, column: 13, scope: !254)
!290 = !DILocation(line: 192, column: 5, scope: !243)
!291 = !DILocation(line: 193, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !231, file: !1, line: 193, column: 8)
!293 = !DILocation(line: 193, column: 8, scope: !231)
!294 = !DILocalVariable(name: "i", scope: !295, file: !1, line: 196, type: !4)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 195, column: 9)
!296 = distinct !DILexicalBlock(scope: !292, file: !1, line: 194, column: 5)
!297 = !DILocation(line: 196, column: 17, scope: !295)
!298 = !DILocalVariable(name: "n", scope: !295, file: !1, line: 196, type: !4)
!299 = !DILocation(line: 196, column: 20, scope: !295)
!300 = !DILocalVariable(name: "intVariable", scope: !295, file: !1, line: 196, type: !4)
!301 = !DILocation(line: 196, column: 23, scope: !295)
!302 = !DILocation(line: 197, column: 24, scope: !303)
!303 = distinct !DILexicalBlock(scope: !295, file: !1, line: 197, column: 17)
!304 = !DILocation(line: 197, column: 17, scope: !303)
!305 = !DILocation(line: 197, column: 40, scope: !303)
!306 = !DILocation(line: 197, column: 17, scope: !295)
!307 = !DILocation(line: 200, column: 21, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 200, column: 21)
!309 = distinct !DILexicalBlock(scope: !303, file: !1, line: 198, column: 13)
!310 = !DILocation(line: 200, column: 23, scope: !308)
!311 = !DILocation(line: 200, column: 21, scope: !309)
!312 = !DILocation(line: 202, column: 33, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !1, line: 201, column: 17)
!314 = !DILocation(line: 203, column: 28, scope: !315)
!315 = distinct !DILexicalBlock(scope: !313, file: !1, line: 203, column: 21)
!316 = !DILocation(line: 203, column: 26, scope: !315)
!317 = !DILocation(line: 203, column: 33, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !1, line: 203, column: 21)
!319 = !DILocation(line: 203, column: 37, scope: !318)
!320 = !DILocation(line: 203, column: 35, scope: !318)
!321 = !DILocation(line: 203, column: 21, scope: !315)
!322 = !DILocation(line: 206, column: 36, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !1, line: 204, column: 21)
!324 = !DILocation(line: 207, column: 21, scope: !323)
!325 = !DILocation(line: 203, column: 41, scope: !318)
!326 = !DILocation(line: 203, column: 21, scope: !318)
!327 = distinct !{!327, !321, !328, !119}
!328 = !DILocation(line: 207, column: 21, scope: !315)
!329 = !DILocation(line: 208, column: 34, scope: !313)
!330 = !DILocation(line: 208, column: 21, scope: !313)
!331 = !DILocation(line: 209, column: 17, scope: !313)
!332 = !DILocation(line: 210, column: 13, scope: !309)
!333 = !DILocation(line: 212, column: 5, scope: !296)
!334 = !DILocation(line: 213, column: 1, scope: !231)
!335 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 216, type: !17, scopeLine: 217, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!336 = !DILocalVariable(name: "data", scope: !335, file: !1, line: 218, type: !20)
!337 = !DILocation(line: 218, column: 12, scope: !335)
!338 = !DILocalVariable(name: "dataBuffer", scope: !335, file: !1, line: 219, type: !24)
!339 = !DILocation(line: 219, column: 10, scope: !335)
!340 = !DILocation(line: 220, column: 12, scope: !335)
!341 = !DILocation(line: 220, column: 10, scope: !335)
!342 = !DILocation(line: 221, column: 8, scope: !343)
!343 = distinct !DILexicalBlock(scope: !335, file: !1, line: 221, column: 8)
!344 = !DILocation(line: 221, column: 8, scope: !335)
!345 = !DILocation(line: 224, column: 9, scope: !346)
!346 = distinct !DILexicalBlock(scope: !343, file: !1, line: 222, column: 5)
!347 = !DILocation(line: 225, column: 5, scope: !346)
!348 = !DILocation(line: 229, column: 16, scope: !349)
!349 = distinct !DILexicalBlock(scope: !343, file: !1, line: 227, column: 5)
!350 = !DILocation(line: 229, column: 9, scope: !349)
!351 = !DILocation(line: 231, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !335, file: !1, line: 231, column: 8)
!353 = !DILocation(line: 231, column: 8, scope: !335)
!354 = !DILocalVariable(name: "i", scope: !355, file: !1, line: 234, type: !4)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 233, column: 9)
!356 = distinct !DILexicalBlock(scope: !352, file: !1, line: 232, column: 5)
!357 = !DILocation(line: 234, column: 17, scope: !355)
!358 = !DILocalVariable(name: "n", scope: !355, file: !1, line: 234, type: !4)
!359 = !DILocation(line: 234, column: 20, scope: !355)
!360 = !DILocalVariable(name: "intVariable", scope: !355, file: !1, line: 234, type: !4)
!361 = !DILocation(line: 234, column: 23, scope: !355)
!362 = !DILocation(line: 235, column: 24, scope: !363)
!363 = distinct !DILexicalBlock(scope: !355, file: !1, line: 235, column: 17)
!364 = !DILocation(line: 235, column: 17, scope: !363)
!365 = !DILocation(line: 235, column: 40, scope: !363)
!366 = !DILocation(line: 235, column: 17, scope: !355)
!367 = !DILocation(line: 238, column: 29, scope: !368)
!368 = distinct !DILexicalBlock(scope: !363, file: !1, line: 236, column: 13)
!369 = !DILocation(line: 239, column: 24, scope: !370)
!370 = distinct !DILexicalBlock(scope: !368, file: !1, line: 239, column: 17)
!371 = !DILocation(line: 239, column: 22, scope: !370)
!372 = !DILocation(line: 239, column: 29, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !1, line: 239, column: 17)
!374 = !DILocation(line: 239, column: 33, scope: !373)
!375 = !DILocation(line: 239, column: 31, scope: !373)
!376 = !DILocation(line: 239, column: 17, scope: !370)
!377 = !DILocation(line: 242, column: 32, scope: !378)
!378 = distinct !DILexicalBlock(scope: !373, file: !1, line: 240, column: 17)
!379 = !DILocation(line: 243, column: 17, scope: !378)
!380 = !DILocation(line: 239, column: 37, scope: !373)
!381 = !DILocation(line: 239, column: 17, scope: !373)
!382 = distinct !{!382, !376, !383, !119}
!383 = !DILocation(line: 243, column: 17, scope: !370)
!384 = !DILocation(line: 244, column: 30, scope: !368)
!385 = !DILocation(line: 244, column: 17, scope: !368)
!386 = !DILocation(line: 245, column: 13, scope: !368)
!387 = !DILocation(line: 247, column: 5, scope: !356)
!388 = !DILocation(line: 248, column: 1, scope: !335)
!389 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 251, type: !17, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!390 = !DILocalVariable(name: "data", scope: !389, file: !1, line: 253, type: !20)
!391 = !DILocation(line: 253, column: 12, scope: !389)
!392 = !DILocalVariable(name: "dataBuffer", scope: !389, file: !1, line: 254, type: !24)
!393 = !DILocation(line: 254, column: 10, scope: !389)
!394 = !DILocation(line: 255, column: 12, scope: !389)
!395 = !DILocation(line: 255, column: 10, scope: !389)
!396 = !DILocation(line: 256, column: 8, scope: !397)
!397 = distinct !DILexicalBlock(scope: !389, file: !1, line: 256, column: 8)
!398 = !DILocation(line: 256, column: 8, scope: !389)
!399 = !DILocation(line: 259, column: 16, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !1, line: 257, column: 5)
!401 = !DILocation(line: 259, column: 9, scope: !400)
!402 = !DILocation(line: 260, column: 5, scope: !400)
!403 = !DILocation(line: 261, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !389, file: !1, line: 261, column: 8)
!405 = !DILocation(line: 261, column: 8, scope: !389)
!406 = !DILocalVariable(name: "i", scope: !407, file: !1, line: 264, type: !4)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 263, column: 9)
!408 = distinct !DILexicalBlock(scope: !404, file: !1, line: 262, column: 5)
!409 = !DILocation(line: 264, column: 17, scope: !407)
!410 = !DILocalVariable(name: "n", scope: !407, file: !1, line: 264, type: !4)
!411 = !DILocation(line: 264, column: 20, scope: !407)
!412 = !DILocalVariable(name: "intVariable", scope: !407, file: !1, line: 264, type: !4)
!413 = !DILocation(line: 264, column: 23, scope: !407)
!414 = !DILocation(line: 265, column: 24, scope: !415)
!415 = distinct !DILexicalBlock(scope: !407, file: !1, line: 265, column: 17)
!416 = !DILocation(line: 265, column: 17, scope: !415)
!417 = !DILocation(line: 265, column: 40, scope: !415)
!418 = !DILocation(line: 265, column: 17, scope: !407)
!419 = !DILocation(line: 268, column: 29, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !1, line: 266, column: 13)
!421 = !DILocation(line: 269, column: 24, scope: !422)
!422 = distinct !DILexicalBlock(scope: !420, file: !1, line: 269, column: 17)
!423 = !DILocation(line: 269, column: 22, scope: !422)
!424 = !DILocation(line: 269, column: 29, scope: !425)
!425 = distinct !DILexicalBlock(scope: !422, file: !1, line: 269, column: 17)
!426 = !DILocation(line: 269, column: 33, scope: !425)
!427 = !DILocation(line: 269, column: 31, scope: !425)
!428 = !DILocation(line: 269, column: 17, scope: !422)
!429 = !DILocation(line: 272, column: 32, scope: !430)
!430 = distinct !DILexicalBlock(scope: !425, file: !1, line: 270, column: 17)
!431 = !DILocation(line: 273, column: 17, scope: !430)
!432 = !DILocation(line: 269, column: 37, scope: !425)
!433 = !DILocation(line: 269, column: 17, scope: !425)
!434 = distinct !{!434, !428, !435, !119}
!435 = !DILocation(line: 273, column: 17, scope: !422)
!436 = !DILocation(line: 274, column: 30, scope: !420)
!437 = !DILocation(line: 274, column: 17, scope: !420)
!438 = !DILocation(line: 275, column: 13, scope: !420)
!439 = !DILocation(line: 277, column: 5, scope: !408)
!440 = !DILocation(line: 278, column: 1, scope: !389)
!441 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_08_good", scope: !1, file: !1, line: 280, type: !17, scopeLine: 281, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!442 = !DILocation(line: 282, column: 5, scope: !441)
!443 = !DILocation(line: 283, column: 5, scope: !441)
!444 = !DILocation(line: 284, column: 5, scope: !441)
!445 = !DILocation(line: 285, column: 5, scope: !441)
!446 = !DILocation(line: 286, column: 1, scope: !441)
