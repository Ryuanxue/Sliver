; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_10.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@globalTrue = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@globalFalse = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_10_bad() #0 !dbg !10 {
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
  %1 = load i32, i32* @globalTrue, align 4, !dbg !24
  %tobool = icmp ne i32 %1, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.end20, !dbg !26

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !27, metadata !DIExpression()), !dbg !33
  %2 = load i8*, i8** %data, align 8, !dbg !34
  %call = call i64 @strlen(i8* %2) #6, !dbg !35
  store i64 %call, i64* %dataLen, align 8, !dbg !33
  %3 = load i64, i64* %dataLen, align 8, !dbg !36
  %sub = sub i64 100, %3, !dbg !38
  %cmp = icmp ugt i64 %sub, 1, !dbg !39
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !40

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !41
  %5 = load i64, i64* %dataLen, align 8, !dbg !44
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !45
  %6 = load i64, i64* %dataLen, align 8, !dbg !46
  %sub2 = sub i64 100, %6, !dbg !47
  %conv = trunc i64 %sub2 to i32, !dbg !48
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !49
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !50
  %cmp4 = icmp ne i8* %call3, null, !dbg !51
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !52

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !53
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !55
  store i64 %call7, i64* %dataLen, align 8, !dbg !56
  %9 = load i64, i64* %dataLen, align 8, !dbg !57
  %cmp8 = icmp ugt i64 %9, 0, !dbg !59
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !60

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !61
  %11 = load i64, i64* %dataLen, align 8, !dbg !62
  %sub10 = sub i64 %11, 1, !dbg !63
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !61
  %12 = load i8, i8* %arrayidx, align 1, !dbg !61
  %conv11 = sext i8 %12 to i32, !dbg !61
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !64
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !65

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !66
  %14 = load i64, i64* %dataLen, align 8, !dbg !68
  %sub15 = sub i64 %14, 1, !dbg !69
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !66
  store i8 0, i8* %arrayidx16, align 1, !dbg !70
  br label %if.end, !dbg !71

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !72

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !73
  %15 = load i8*, i8** %data, align 8, !dbg !75
  %16 = load i64, i64* %dataLen, align 8, !dbg !76
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !75
  store i8 0, i8* %arrayidx17, align 1, !dbg !77
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !78

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !79

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @globalTrue, align 4, !dbg !80
  %tobool21 = icmp ne i32 %17, 0, !dbg !80
  br i1 %tobool21, label %if.then22, label %if.end31, !dbg !82

if.then22:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !83, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %n, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !89, metadata !DIExpression()), !dbg !90
  %18 = load i8*, i8** %data, align 8, !dbg !91
  %call23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !93
  %cmp24 = icmp eq i32 %call23, 1, !dbg !94
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !95

if.then26:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !96
  store i32 0, i32* %i, align 4, !dbg !98
  br label %for.cond, !dbg !100

for.cond:                                         ; preds = %for.inc, %if.then26
  %19 = load i32, i32* %i, align 4, !dbg !101
  %20 = load i32, i32* %n, align 4, !dbg !103
  %cmp27 = icmp slt i32 %19, %20, !dbg !104
  br i1 %cmp27, label %for.body, label %for.end, !dbg !105

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !106
  %inc = add nsw i32 %21, 1, !dbg !106
  store i32 %inc, i32* %intVariable, align 4, !dbg !106
  br label %for.inc, !dbg !108

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !109
  %inc29 = add nsw i32 %22, 1, !dbg !109
  store i32 %inc29, i32* %i, align 4, !dbg !109
  br label %for.cond, !dbg !110, !llvm.loop !111

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %intVariable, align 4, !dbg !114
  call void @printIntLine(i32 %23), !dbg !115
  br label %if.end30, !dbg !116

if.end30:                                         ; preds = %for.end, %if.then22
  br label %if.end31, !dbg !117

if.end31:                                         ; preds = %if.end30, %if.end20
  ret void, !dbg !118
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
define dso_local void @goodB2G1() #0 !dbg !119 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !122, metadata !DIExpression()), !dbg !123
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !123
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !123
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !124
  store i8* %arraydecay, i8** %data, align 8, !dbg !125
  %1 = load i32, i32* @globalTrue, align 4, !dbg !126
  %tobool = icmp ne i32 %1, 0, !dbg !126
  br i1 %tobool, label %if.then, label %if.end20, !dbg !128

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !129, metadata !DIExpression()), !dbg !132
  %2 = load i8*, i8** %data, align 8, !dbg !133
  %call = call i64 @strlen(i8* %2) #6, !dbg !134
  store i64 %call, i64* %dataLen, align 8, !dbg !132
  %3 = load i64, i64* %dataLen, align 8, !dbg !135
  %sub = sub i64 100, %3, !dbg !137
  %cmp = icmp ugt i64 %sub, 1, !dbg !138
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !139

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !140
  %5 = load i64, i64* %dataLen, align 8, !dbg !143
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !144
  %6 = load i64, i64* %dataLen, align 8, !dbg !145
  %sub2 = sub i64 100, %6, !dbg !146
  %conv = trunc i64 %sub2 to i32, !dbg !147
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !148
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !149
  %cmp4 = icmp ne i8* %call3, null, !dbg !150
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !151

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !152
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !154
  store i64 %call7, i64* %dataLen, align 8, !dbg !155
  %9 = load i64, i64* %dataLen, align 8, !dbg !156
  %cmp8 = icmp ugt i64 %9, 0, !dbg !158
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !159

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !160
  %11 = load i64, i64* %dataLen, align 8, !dbg !161
  %sub10 = sub i64 %11, 1, !dbg !162
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !160
  %12 = load i8, i8* %arrayidx, align 1, !dbg !160
  %conv11 = sext i8 %12 to i32, !dbg !160
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !163
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !164

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !165
  %14 = load i64, i64* %dataLen, align 8, !dbg !167
  %sub15 = sub i64 %14, 1, !dbg !168
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !165
  store i8 0, i8* %arrayidx16, align 1, !dbg !169
  br label %if.end, !dbg !170

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !171

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !172
  %15 = load i8*, i8** %data, align 8, !dbg !174
  %16 = load i64, i64* %dataLen, align 8, !dbg !175
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !174
  store i8 0, i8* %arrayidx17, align 1, !dbg !176
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !177

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !178

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @globalFalse, align 4, !dbg !179
  %tobool21 = icmp ne i32 %17, 0, !dbg !179
  br i1 %tobool21, label %if.then22, label %if.else23, !dbg !181

if.then22:                                        ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !182
  br label %if.end36, !dbg !184

if.else23:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !185, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata i32* %n, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !191, metadata !DIExpression()), !dbg !192
  %18 = load i8*, i8** %data, align 8, !dbg !193
  %call24 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !195
  %cmp25 = icmp eq i32 %call24, 1, !dbg !196
  br i1 %cmp25, label %if.then27, label %if.end35, !dbg !197

if.then27:                                        ; preds = %if.else23
  %19 = load i32, i32* %n, align 4, !dbg !198
  %cmp28 = icmp slt i32 %19, 10000, !dbg !201
  br i1 %cmp28, label %if.then30, label %if.end34, !dbg !202

if.then30:                                        ; preds = %if.then27
  store i32 0, i32* %intVariable, align 4, !dbg !203
  store i32 0, i32* %i, align 4, !dbg !205
  br label %for.cond, !dbg !207

for.cond:                                         ; preds = %for.inc, %if.then30
  %20 = load i32, i32* %i, align 4, !dbg !208
  %21 = load i32, i32* %n, align 4, !dbg !210
  %cmp31 = icmp slt i32 %20, %21, !dbg !211
  br i1 %cmp31, label %for.body, label %for.end, !dbg !212

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !213
  %inc = add nsw i32 %22, 1, !dbg !213
  store i32 %inc, i32* %intVariable, align 4, !dbg !213
  br label %for.inc, !dbg !215

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !216
  %inc33 = add nsw i32 %23, 1, !dbg !216
  store i32 %inc33, i32* %i, align 4, !dbg !216
  br label %for.cond, !dbg !217, !llvm.loop !218

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !220
  call void @printIntLine(i32 %24), !dbg !221
  br label %if.end34, !dbg !222

if.end34:                                         ; preds = %for.end, %if.then27
  br label %if.end35, !dbg !223

if.end35:                                         ; preds = %if.end34, %if.else23
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then22
  ret void, !dbg !224
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !225 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !228, metadata !DIExpression()), !dbg !229
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !229
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !229
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !230
  store i8* %arraydecay, i8** %data, align 8, !dbg !231
  %1 = load i32, i32* @globalTrue, align 4, !dbg !232
  %tobool = icmp ne i32 %1, 0, !dbg !232
  br i1 %tobool, label %if.then, label %if.end20, !dbg !234

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !235, metadata !DIExpression()), !dbg !238
  %2 = load i8*, i8** %data, align 8, !dbg !239
  %call = call i64 @strlen(i8* %2) #6, !dbg !240
  store i64 %call, i64* %dataLen, align 8, !dbg !238
  %3 = load i64, i64* %dataLen, align 8, !dbg !241
  %sub = sub i64 100, %3, !dbg !243
  %cmp = icmp ugt i64 %sub, 1, !dbg !244
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !245

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !246
  %5 = load i64, i64* %dataLen, align 8, !dbg !249
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !250
  %6 = load i64, i64* %dataLen, align 8, !dbg !251
  %sub2 = sub i64 100, %6, !dbg !252
  %conv = trunc i64 %sub2 to i32, !dbg !253
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !254
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !255
  %cmp4 = icmp ne i8* %call3, null, !dbg !256
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !257

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !258
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !260
  store i64 %call7, i64* %dataLen, align 8, !dbg !261
  %9 = load i64, i64* %dataLen, align 8, !dbg !262
  %cmp8 = icmp ugt i64 %9, 0, !dbg !264
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !265

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !266
  %11 = load i64, i64* %dataLen, align 8, !dbg !267
  %sub10 = sub i64 %11, 1, !dbg !268
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !266
  %12 = load i8, i8* %arrayidx, align 1, !dbg !266
  %conv11 = sext i8 %12 to i32, !dbg !266
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !269
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !270

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !271
  %14 = load i64, i64* %dataLen, align 8, !dbg !273
  %sub15 = sub i64 %14, 1, !dbg !274
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !271
  store i8 0, i8* %arrayidx16, align 1, !dbg !275
  br label %if.end, !dbg !276

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !277

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !278
  %15 = load i8*, i8** %data, align 8, !dbg !280
  %16 = load i64, i64* %dataLen, align 8, !dbg !281
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !280
  store i8 0, i8* %arrayidx17, align 1, !dbg !282
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !283

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !284

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @globalTrue, align 4, !dbg !285
  %tobool21 = icmp ne i32 %17, 0, !dbg !285
  br i1 %tobool21, label %if.then22, label %if.end35, !dbg !287

if.then22:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !288, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata i32* %n, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !294, metadata !DIExpression()), !dbg !295
  %18 = load i8*, i8** %data, align 8, !dbg !296
  %call23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !298
  %cmp24 = icmp eq i32 %call23, 1, !dbg !299
  br i1 %cmp24, label %if.then26, label %if.end34, !dbg !300

if.then26:                                        ; preds = %if.then22
  %19 = load i32, i32* %n, align 4, !dbg !301
  %cmp27 = icmp slt i32 %19, 10000, !dbg !304
  br i1 %cmp27, label %if.then29, label %if.end33, !dbg !305

if.then29:                                        ; preds = %if.then26
  store i32 0, i32* %intVariable, align 4, !dbg !306
  store i32 0, i32* %i, align 4, !dbg !308
  br label %for.cond, !dbg !310

for.cond:                                         ; preds = %for.inc, %if.then29
  %20 = load i32, i32* %i, align 4, !dbg !311
  %21 = load i32, i32* %n, align 4, !dbg !313
  %cmp30 = icmp slt i32 %20, %21, !dbg !314
  br i1 %cmp30, label %for.body, label %for.end, !dbg !315

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !316
  %inc = add nsw i32 %22, 1, !dbg !316
  store i32 %inc, i32* %intVariable, align 4, !dbg !316
  br label %for.inc, !dbg !318

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !319
  %inc32 = add nsw i32 %23, 1, !dbg !319
  store i32 %inc32, i32* %i, align 4, !dbg !319
  br label %for.cond, !dbg !320, !llvm.loop !321

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !323
  call void @printIntLine(i32 %24), !dbg !324
  br label %if.end33, !dbg !325

if.end33:                                         ; preds = %for.end, %if.then26
  br label %if.end34, !dbg !326

if.end34:                                         ; preds = %if.end33, %if.then22
  br label %if.end35, !dbg !327

if.end35:                                         ; preds = %if.end34, %if.end20
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !329 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !333
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !333
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !334
  store i8* %arraydecay, i8** %data, align 8, !dbg !335
  %1 = load i32, i32* @globalFalse, align 4, !dbg !336
  %tobool = icmp ne i32 %1, 0, !dbg !336
  br i1 %tobool, label %if.then, label %if.else, !dbg !338

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !339
  br label %if.end, !dbg !341

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !342
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !344
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalTrue, align 4, !dbg !345
  %tobool1 = icmp ne i32 %3, 0, !dbg !345
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !347

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !348, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata i32* %n, metadata !352, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !354, metadata !DIExpression()), !dbg !355
  %4 = load i8*, i8** %data, align 8, !dbg !356
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !358
  %cmp = icmp eq i32 %call3, 1, !dbg !359
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !360

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !361
  store i32 0, i32* %i, align 4, !dbg !363
  br label %for.cond, !dbg !365

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !366
  %6 = load i32, i32* %n, align 4, !dbg !368
  %cmp5 = icmp slt i32 %5, %6, !dbg !369
  br i1 %cmp5, label %for.body, label %for.end, !dbg !370

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !371
  %inc = add nsw i32 %7, 1, !dbg !371
  store i32 %inc, i32* %intVariable, align 4, !dbg !371
  br label %for.inc, !dbg !373

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !374
  %inc6 = add nsw i32 %8, 1, !dbg !374
  store i32 %inc6, i32* %i, align 4, !dbg !374
  br label %for.cond, !dbg !375, !llvm.loop !376

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !378
  call void @printIntLine(i32 %9), !dbg !379
  br label %if.end7, !dbg !380

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !381

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !382
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !383 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !387
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !387
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !388
  store i8* %arraydecay, i8** %data, align 8, !dbg !389
  %1 = load i32, i32* @globalTrue, align 4, !dbg !390
  %tobool = icmp ne i32 %1, 0, !dbg !390
  br i1 %tobool, label %if.then, label %if.end, !dbg !392

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !393
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !395
  br label %if.end, !dbg !396

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalTrue, align 4, !dbg !397
  %tobool1 = icmp ne i32 %3, 0, !dbg !397
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !399

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !400, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.declare(metadata i32* %n, metadata !404, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !406, metadata !DIExpression()), !dbg !407
  %4 = load i8*, i8** %data, align 8, !dbg !408
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !410
  %cmp = icmp eq i32 %call3, 1, !dbg !411
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !412

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !413
  store i32 0, i32* %i, align 4, !dbg !415
  br label %for.cond, !dbg !417

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !418
  %6 = load i32, i32* %n, align 4, !dbg !420
  %cmp5 = icmp slt i32 %5, %6, !dbg !421
  br i1 %cmp5, label %for.body, label %for.end, !dbg !422

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !423
  %inc = add nsw i32 %7, 1, !dbg !423
  store i32 %inc, i32* %intVariable, align 4, !dbg !423
  br label %for.inc, !dbg !425

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !426
  %inc6 = add nsw i32 %8, 1, !dbg !426
  store i32 %inc6, i32* %i, align 4, !dbg !426
  br label %for.cond, !dbg !427, !llvm.loop !428

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !430
  call void @printIntLine(i32 %9), !dbg !431
  br label %if.end7, !dbg !432

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !433

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_10_good() #0 !dbg !435 {
entry:
  call void @goodB2G1(), !dbg !436
  call void @goodB2G2(), !dbg !437
  call void @goodG2B1(), !dbg !438
  call void @goodG2B2(), !dbg !439
  ret void, !dbg !440
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_10.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_987/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_10_bad", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!26 = !DILocation(line: 34, column: 8, scope: !10)
!27 = !DILocalVariable(name: "dataLen", scope: !28, file: !1, line: 38, type: !30)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 36, column: 9)
!29 = distinct !DILexicalBlock(scope: !25, file: !1, line: 35, column: 5)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 38, column: 20, scope: !28)
!34 = !DILocation(line: 38, column: 37, scope: !28)
!35 = !DILocation(line: 38, column: 30, scope: !28)
!36 = !DILocation(line: 40, column: 21, scope: !37)
!37 = distinct !DILexicalBlock(scope: !28, file: !1, line: 40, column: 17)
!38 = !DILocation(line: 40, column: 20, scope: !37)
!39 = !DILocation(line: 40, column: 29, scope: !37)
!40 = !DILocation(line: 40, column: 17, scope: !28)
!41 = !DILocation(line: 43, column: 27, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 43, column: 21)
!43 = distinct !DILexicalBlock(scope: !37, file: !1, line: 41, column: 13)
!44 = !DILocation(line: 43, column: 32, scope: !42)
!45 = !DILocation(line: 43, column: 31, scope: !42)
!46 = !DILocation(line: 43, column: 51, scope: !42)
!47 = !DILocation(line: 43, column: 50, scope: !42)
!48 = !DILocation(line: 43, column: 41, scope: !42)
!49 = !DILocation(line: 43, column: 61, scope: !42)
!50 = !DILocation(line: 43, column: 21, scope: !42)
!51 = !DILocation(line: 43, column: 68, scope: !42)
!52 = !DILocation(line: 43, column: 21, scope: !43)
!53 = !DILocation(line: 47, column: 38, scope: !54)
!54 = distinct !DILexicalBlock(scope: !42, file: !1, line: 44, column: 17)
!55 = !DILocation(line: 47, column: 31, scope: !54)
!56 = !DILocation(line: 47, column: 29, scope: !54)
!57 = !DILocation(line: 48, column: 25, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 48, column: 25)
!59 = !DILocation(line: 48, column: 33, scope: !58)
!60 = !DILocation(line: 48, column: 37, scope: !58)
!61 = !DILocation(line: 48, column: 40, scope: !58)
!62 = !DILocation(line: 48, column: 45, scope: !58)
!63 = !DILocation(line: 48, column: 52, scope: !58)
!64 = !DILocation(line: 48, column: 56, scope: !58)
!65 = !DILocation(line: 48, column: 25, scope: !54)
!66 = !DILocation(line: 50, column: 25, scope: !67)
!67 = distinct !DILexicalBlock(scope: !58, file: !1, line: 49, column: 21)
!68 = !DILocation(line: 50, column: 30, scope: !67)
!69 = !DILocation(line: 50, column: 37, scope: !67)
!70 = !DILocation(line: 50, column: 41, scope: !67)
!71 = !DILocation(line: 51, column: 21, scope: !67)
!72 = !DILocation(line: 52, column: 17, scope: !54)
!73 = !DILocation(line: 55, column: 21, scope: !74)
!74 = distinct !DILexicalBlock(scope: !42, file: !1, line: 54, column: 17)
!75 = !DILocation(line: 57, column: 21, scope: !74)
!76 = !DILocation(line: 57, column: 26, scope: !74)
!77 = !DILocation(line: 57, column: 35, scope: !74)
!78 = !DILocation(line: 59, column: 13, scope: !43)
!79 = !DILocation(line: 61, column: 5, scope: !29)
!80 = !DILocation(line: 62, column: 8, scope: !81)
!81 = distinct !DILexicalBlock(scope: !10, file: !1, line: 62, column: 8)
!82 = !DILocation(line: 62, column: 8, scope: !10)
!83 = !DILocalVariable(name: "i", scope: !84, file: !1, line: 65, type: !4)
!84 = distinct !DILexicalBlock(scope: !85, file: !1, line: 64, column: 9)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 63, column: 5)
!86 = !DILocation(line: 65, column: 17, scope: !84)
!87 = !DILocalVariable(name: "n", scope: !84, file: !1, line: 65, type: !4)
!88 = !DILocation(line: 65, column: 20, scope: !84)
!89 = !DILocalVariable(name: "intVariable", scope: !84, file: !1, line: 65, type: !4)
!90 = !DILocation(line: 65, column: 23, scope: !84)
!91 = !DILocation(line: 66, column: 24, scope: !92)
!92 = distinct !DILexicalBlock(scope: !84, file: !1, line: 66, column: 17)
!93 = !DILocation(line: 66, column: 17, scope: !92)
!94 = !DILocation(line: 66, column: 40, scope: !92)
!95 = !DILocation(line: 66, column: 17, scope: !84)
!96 = !DILocation(line: 69, column: 29, scope: !97)
!97 = distinct !DILexicalBlock(scope: !92, file: !1, line: 67, column: 13)
!98 = !DILocation(line: 70, column: 24, scope: !99)
!99 = distinct !DILexicalBlock(scope: !97, file: !1, line: 70, column: 17)
!100 = !DILocation(line: 70, column: 22, scope: !99)
!101 = !DILocation(line: 70, column: 29, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !1, line: 70, column: 17)
!103 = !DILocation(line: 70, column: 33, scope: !102)
!104 = !DILocation(line: 70, column: 31, scope: !102)
!105 = !DILocation(line: 70, column: 17, scope: !99)
!106 = !DILocation(line: 73, column: 32, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 71, column: 17)
!108 = !DILocation(line: 74, column: 17, scope: !107)
!109 = !DILocation(line: 70, column: 37, scope: !102)
!110 = !DILocation(line: 70, column: 17, scope: !102)
!111 = distinct !{!111, !105, !112, !113}
!112 = !DILocation(line: 74, column: 17, scope: !99)
!113 = !{!"llvm.loop.mustprogress"}
!114 = !DILocation(line: 75, column: 30, scope: !97)
!115 = !DILocation(line: 75, column: 17, scope: !97)
!116 = !DILocation(line: 76, column: 13, scope: !97)
!117 = !DILocation(line: 78, column: 5, scope: !85)
!118 = !DILocation(line: 79, column: 1, scope: !10)
!119 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 86, type: !11, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!120 = !DILocalVariable(name: "data", scope: !119, file: !1, line: 88, type: !14)
!121 = !DILocation(line: 88, column: 12, scope: !119)
!122 = !DILocalVariable(name: "dataBuffer", scope: !119, file: !1, line: 89, type: !18)
!123 = !DILocation(line: 89, column: 10, scope: !119)
!124 = !DILocation(line: 90, column: 12, scope: !119)
!125 = !DILocation(line: 90, column: 10, scope: !119)
!126 = !DILocation(line: 91, column: 8, scope: !127)
!127 = distinct !DILexicalBlock(scope: !119, file: !1, line: 91, column: 8)
!128 = !DILocation(line: 91, column: 8, scope: !119)
!129 = !DILocalVariable(name: "dataLen", scope: !130, file: !1, line: 95, type: !30)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 93, column: 9)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 92, column: 5)
!132 = !DILocation(line: 95, column: 20, scope: !130)
!133 = !DILocation(line: 95, column: 37, scope: !130)
!134 = !DILocation(line: 95, column: 30, scope: !130)
!135 = !DILocation(line: 97, column: 21, scope: !136)
!136 = distinct !DILexicalBlock(scope: !130, file: !1, line: 97, column: 17)
!137 = !DILocation(line: 97, column: 20, scope: !136)
!138 = !DILocation(line: 97, column: 29, scope: !136)
!139 = !DILocation(line: 97, column: 17, scope: !130)
!140 = !DILocation(line: 100, column: 27, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 100, column: 21)
!142 = distinct !DILexicalBlock(scope: !136, file: !1, line: 98, column: 13)
!143 = !DILocation(line: 100, column: 32, scope: !141)
!144 = !DILocation(line: 100, column: 31, scope: !141)
!145 = !DILocation(line: 100, column: 51, scope: !141)
!146 = !DILocation(line: 100, column: 50, scope: !141)
!147 = !DILocation(line: 100, column: 41, scope: !141)
!148 = !DILocation(line: 100, column: 61, scope: !141)
!149 = !DILocation(line: 100, column: 21, scope: !141)
!150 = !DILocation(line: 100, column: 68, scope: !141)
!151 = !DILocation(line: 100, column: 21, scope: !142)
!152 = !DILocation(line: 104, column: 38, scope: !153)
!153 = distinct !DILexicalBlock(scope: !141, file: !1, line: 101, column: 17)
!154 = !DILocation(line: 104, column: 31, scope: !153)
!155 = !DILocation(line: 104, column: 29, scope: !153)
!156 = !DILocation(line: 105, column: 25, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !1, line: 105, column: 25)
!158 = !DILocation(line: 105, column: 33, scope: !157)
!159 = !DILocation(line: 105, column: 37, scope: !157)
!160 = !DILocation(line: 105, column: 40, scope: !157)
!161 = !DILocation(line: 105, column: 45, scope: !157)
!162 = !DILocation(line: 105, column: 52, scope: !157)
!163 = !DILocation(line: 105, column: 56, scope: !157)
!164 = !DILocation(line: 105, column: 25, scope: !153)
!165 = !DILocation(line: 107, column: 25, scope: !166)
!166 = distinct !DILexicalBlock(scope: !157, file: !1, line: 106, column: 21)
!167 = !DILocation(line: 107, column: 30, scope: !166)
!168 = !DILocation(line: 107, column: 37, scope: !166)
!169 = !DILocation(line: 107, column: 41, scope: !166)
!170 = !DILocation(line: 108, column: 21, scope: !166)
!171 = !DILocation(line: 109, column: 17, scope: !153)
!172 = !DILocation(line: 112, column: 21, scope: !173)
!173 = distinct !DILexicalBlock(scope: !141, file: !1, line: 111, column: 17)
!174 = !DILocation(line: 114, column: 21, scope: !173)
!175 = !DILocation(line: 114, column: 26, scope: !173)
!176 = !DILocation(line: 114, column: 35, scope: !173)
!177 = !DILocation(line: 116, column: 13, scope: !142)
!178 = !DILocation(line: 118, column: 5, scope: !131)
!179 = !DILocation(line: 119, column: 8, scope: !180)
!180 = distinct !DILexicalBlock(scope: !119, file: !1, line: 119, column: 8)
!181 = !DILocation(line: 119, column: 8, scope: !119)
!182 = !DILocation(line: 122, column: 9, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !1, line: 120, column: 5)
!184 = !DILocation(line: 123, column: 5, scope: !183)
!185 = !DILocalVariable(name: "i", scope: !186, file: !1, line: 127, type: !4)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 126, column: 9)
!187 = distinct !DILexicalBlock(scope: !180, file: !1, line: 125, column: 5)
!188 = !DILocation(line: 127, column: 17, scope: !186)
!189 = !DILocalVariable(name: "n", scope: !186, file: !1, line: 127, type: !4)
!190 = !DILocation(line: 127, column: 20, scope: !186)
!191 = !DILocalVariable(name: "intVariable", scope: !186, file: !1, line: 127, type: !4)
!192 = !DILocation(line: 127, column: 23, scope: !186)
!193 = !DILocation(line: 128, column: 24, scope: !194)
!194 = distinct !DILexicalBlock(scope: !186, file: !1, line: 128, column: 17)
!195 = !DILocation(line: 128, column: 17, scope: !194)
!196 = !DILocation(line: 128, column: 40, scope: !194)
!197 = !DILocation(line: 128, column: 17, scope: !186)
!198 = !DILocation(line: 131, column: 21, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 131, column: 21)
!200 = distinct !DILexicalBlock(scope: !194, file: !1, line: 129, column: 13)
!201 = !DILocation(line: 131, column: 23, scope: !199)
!202 = !DILocation(line: 131, column: 21, scope: !200)
!203 = !DILocation(line: 133, column: 33, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !1, line: 132, column: 17)
!205 = !DILocation(line: 134, column: 28, scope: !206)
!206 = distinct !DILexicalBlock(scope: !204, file: !1, line: 134, column: 21)
!207 = !DILocation(line: 134, column: 26, scope: !206)
!208 = !DILocation(line: 134, column: 33, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !1, line: 134, column: 21)
!210 = !DILocation(line: 134, column: 37, scope: !209)
!211 = !DILocation(line: 134, column: 35, scope: !209)
!212 = !DILocation(line: 134, column: 21, scope: !206)
!213 = !DILocation(line: 137, column: 36, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !1, line: 135, column: 21)
!215 = !DILocation(line: 138, column: 21, scope: !214)
!216 = !DILocation(line: 134, column: 41, scope: !209)
!217 = !DILocation(line: 134, column: 21, scope: !209)
!218 = distinct !{!218, !212, !219, !113}
!219 = !DILocation(line: 138, column: 21, scope: !206)
!220 = !DILocation(line: 139, column: 34, scope: !204)
!221 = !DILocation(line: 139, column: 21, scope: !204)
!222 = !DILocation(line: 140, column: 17, scope: !204)
!223 = !DILocation(line: 141, column: 13, scope: !200)
!224 = !DILocation(line: 144, column: 1, scope: !119)
!225 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 147, type: !11, scopeLine: 148, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!226 = !DILocalVariable(name: "data", scope: !225, file: !1, line: 149, type: !14)
!227 = !DILocation(line: 149, column: 12, scope: !225)
!228 = !DILocalVariable(name: "dataBuffer", scope: !225, file: !1, line: 150, type: !18)
!229 = !DILocation(line: 150, column: 10, scope: !225)
!230 = !DILocation(line: 151, column: 12, scope: !225)
!231 = !DILocation(line: 151, column: 10, scope: !225)
!232 = !DILocation(line: 152, column: 8, scope: !233)
!233 = distinct !DILexicalBlock(scope: !225, file: !1, line: 152, column: 8)
!234 = !DILocation(line: 152, column: 8, scope: !225)
!235 = !DILocalVariable(name: "dataLen", scope: !236, file: !1, line: 156, type: !30)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 154, column: 9)
!237 = distinct !DILexicalBlock(scope: !233, file: !1, line: 153, column: 5)
!238 = !DILocation(line: 156, column: 20, scope: !236)
!239 = !DILocation(line: 156, column: 37, scope: !236)
!240 = !DILocation(line: 156, column: 30, scope: !236)
!241 = !DILocation(line: 158, column: 21, scope: !242)
!242 = distinct !DILexicalBlock(scope: !236, file: !1, line: 158, column: 17)
!243 = !DILocation(line: 158, column: 20, scope: !242)
!244 = !DILocation(line: 158, column: 29, scope: !242)
!245 = !DILocation(line: 158, column: 17, scope: !236)
!246 = !DILocation(line: 161, column: 27, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !1, line: 161, column: 21)
!248 = distinct !DILexicalBlock(scope: !242, file: !1, line: 159, column: 13)
!249 = !DILocation(line: 161, column: 32, scope: !247)
!250 = !DILocation(line: 161, column: 31, scope: !247)
!251 = !DILocation(line: 161, column: 51, scope: !247)
!252 = !DILocation(line: 161, column: 50, scope: !247)
!253 = !DILocation(line: 161, column: 41, scope: !247)
!254 = !DILocation(line: 161, column: 61, scope: !247)
!255 = !DILocation(line: 161, column: 21, scope: !247)
!256 = !DILocation(line: 161, column: 68, scope: !247)
!257 = !DILocation(line: 161, column: 21, scope: !248)
!258 = !DILocation(line: 165, column: 38, scope: !259)
!259 = distinct !DILexicalBlock(scope: !247, file: !1, line: 162, column: 17)
!260 = !DILocation(line: 165, column: 31, scope: !259)
!261 = !DILocation(line: 165, column: 29, scope: !259)
!262 = !DILocation(line: 166, column: 25, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !1, line: 166, column: 25)
!264 = !DILocation(line: 166, column: 33, scope: !263)
!265 = !DILocation(line: 166, column: 37, scope: !263)
!266 = !DILocation(line: 166, column: 40, scope: !263)
!267 = !DILocation(line: 166, column: 45, scope: !263)
!268 = !DILocation(line: 166, column: 52, scope: !263)
!269 = !DILocation(line: 166, column: 56, scope: !263)
!270 = !DILocation(line: 166, column: 25, scope: !259)
!271 = !DILocation(line: 168, column: 25, scope: !272)
!272 = distinct !DILexicalBlock(scope: !263, file: !1, line: 167, column: 21)
!273 = !DILocation(line: 168, column: 30, scope: !272)
!274 = !DILocation(line: 168, column: 37, scope: !272)
!275 = !DILocation(line: 168, column: 41, scope: !272)
!276 = !DILocation(line: 169, column: 21, scope: !272)
!277 = !DILocation(line: 170, column: 17, scope: !259)
!278 = !DILocation(line: 173, column: 21, scope: !279)
!279 = distinct !DILexicalBlock(scope: !247, file: !1, line: 172, column: 17)
!280 = !DILocation(line: 175, column: 21, scope: !279)
!281 = !DILocation(line: 175, column: 26, scope: !279)
!282 = !DILocation(line: 175, column: 35, scope: !279)
!283 = !DILocation(line: 177, column: 13, scope: !248)
!284 = !DILocation(line: 179, column: 5, scope: !237)
!285 = !DILocation(line: 180, column: 8, scope: !286)
!286 = distinct !DILexicalBlock(scope: !225, file: !1, line: 180, column: 8)
!287 = !DILocation(line: 180, column: 8, scope: !225)
!288 = !DILocalVariable(name: "i", scope: !289, file: !1, line: 183, type: !4)
!289 = distinct !DILexicalBlock(scope: !290, file: !1, line: 182, column: 9)
!290 = distinct !DILexicalBlock(scope: !286, file: !1, line: 181, column: 5)
!291 = !DILocation(line: 183, column: 17, scope: !289)
!292 = !DILocalVariable(name: "n", scope: !289, file: !1, line: 183, type: !4)
!293 = !DILocation(line: 183, column: 20, scope: !289)
!294 = !DILocalVariable(name: "intVariable", scope: !289, file: !1, line: 183, type: !4)
!295 = !DILocation(line: 183, column: 23, scope: !289)
!296 = !DILocation(line: 184, column: 24, scope: !297)
!297 = distinct !DILexicalBlock(scope: !289, file: !1, line: 184, column: 17)
!298 = !DILocation(line: 184, column: 17, scope: !297)
!299 = !DILocation(line: 184, column: 40, scope: !297)
!300 = !DILocation(line: 184, column: 17, scope: !289)
!301 = !DILocation(line: 187, column: 21, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 187, column: 21)
!303 = distinct !DILexicalBlock(scope: !297, file: !1, line: 185, column: 13)
!304 = !DILocation(line: 187, column: 23, scope: !302)
!305 = !DILocation(line: 187, column: 21, scope: !303)
!306 = !DILocation(line: 189, column: 33, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !1, line: 188, column: 17)
!308 = !DILocation(line: 190, column: 28, scope: !309)
!309 = distinct !DILexicalBlock(scope: !307, file: !1, line: 190, column: 21)
!310 = !DILocation(line: 190, column: 26, scope: !309)
!311 = !DILocation(line: 190, column: 33, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !1, line: 190, column: 21)
!313 = !DILocation(line: 190, column: 37, scope: !312)
!314 = !DILocation(line: 190, column: 35, scope: !312)
!315 = !DILocation(line: 190, column: 21, scope: !309)
!316 = !DILocation(line: 193, column: 36, scope: !317)
!317 = distinct !DILexicalBlock(scope: !312, file: !1, line: 191, column: 21)
!318 = !DILocation(line: 194, column: 21, scope: !317)
!319 = !DILocation(line: 190, column: 41, scope: !312)
!320 = !DILocation(line: 190, column: 21, scope: !312)
!321 = distinct !{!321, !315, !322, !113}
!322 = !DILocation(line: 194, column: 21, scope: !309)
!323 = !DILocation(line: 195, column: 34, scope: !307)
!324 = !DILocation(line: 195, column: 21, scope: !307)
!325 = !DILocation(line: 196, column: 17, scope: !307)
!326 = !DILocation(line: 197, column: 13, scope: !303)
!327 = !DILocation(line: 199, column: 5, scope: !290)
!328 = !DILocation(line: 200, column: 1, scope: !225)
!329 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 203, type: !11, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!330 = !DILocalVariable(name: "data", scope: !329, file: !1, line: 205, type: !14)
!331 = !DILocation(line: 205, column: 12, scope: !329)
!332 = !DILocalVariable(name: "dataBuffer", scope: !329, file: !1, line: 206, type: !18)
!333 = !DILocation(line: 206, column: 10, scope: !329)
!334 = !DILocation(line: 207, column: 12, scope: !329)
!335 = !DILocation(line: 207, column: 10, scope: !329)
!336 = !DILocation(line: 208, column: 8, scope: !337)
!337 = distinct !DILexicalBlock(scope: !329, file: !1, line: 208, column: 8)
!338 = !DILocation(line: 208, column: 8, scope: !329)
!339 = !DILocation(line: 211, column: 9, scope: !340)
!340 = distinct !DILexicalBlock(scope: !337, file: !1, line: 209, column: 5)
!341 = !DILocation(line: 212, column: 5, scope: !340)
!342 = !DILocation(line: 216, column: 16, scope: !343)
!343 = distinct !DILexicalBlock(scope: !337, file: !1, line: 214, column: 5)
!344 = !DILocation(line: 216, column: 9, scope: !343)
!345 = !DILocation(line: 218, column: 8, scope: !346)
!346 = distinct !DILexicalBlock(scope: !329, file: !1, line: 218, column: 8)
!347 = !DILocation(line: 218, column: 8, scope: !329)
!348 = !DILocalVariable(name: "i", scope: !349, file: !1, line: 221, type: !4)
!349 = distinct !DILexicalBlock(scope: !350, file: !1, line: 220, column: 9)
!350 = distinct !DILexicalBlock(scope: !346, file: !1, line: 219, column: 5)
!351 = !DILocation(line: 221, column: 17, scope: !349)
!352 = !DILocalVariable(name: "n", scope: !349, file: !1, line: 221, type: !4)
!353 = !DILocation(line: 221, column: 20, scope: !349)
!354 = !DILocalVariable(name: "intVariable", scope: !349, file: !1, line: 221, type: !4)
!355 = !DILocation(line: 221, column: 23, scope: !349)
!356 = !DILocation(line: 222, column: 24, scope: !357)
!357 = distinct !DILexicalBlock(scope: !349, file: !1, line: 222, column: 17)
!358 = !DILocation(line: 222, column: 17, scope: !357)
!359 = !DILocation(line: 222, column: 40, scope: !357)
!360 = !DILocation(line: 222, column: 17, scope: !349)
!361 = !DILocation(line: 225, column: 29, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !1, line: 223, column: 13)
!363 = !DILocation(line: 226, column: 24, scope: !364)
!364 = distinct !DILexicalBlock(scope: !362, file: !1, line: 226, column: 17)
!365 = !DILocation(line: 226, column: 22, scope: !364)
!366 = !DILocation(line: 226, column: 29, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !1, line: 226, column: 17)
!368 = !DILocation(line: 226, column: 33, scope: !367)
!369 = !DILocation(line: 226, column: 31, scope: !367)
!370 = !DILocation(line: 226, column: 17, scope: !364)
!371 = !DILocation(line: 229, column: 32, scope: !372)
!372 = distinct !DILexicalBlock(scope: !367, file: !1, line: 227, column: 17)
!373 = !DILocation(line: 230, column: 17, scope: !372)
!374 = !DILocation(line: 226, column: 37, scope: !367)
!375 = !DILocation(line: 226, column: 17, scope: !367)
!376 = distinct !{!376, !370, !377, !113}
!377 = !DILocation(line: 230, column: 17, scope: !364)
!378 = !DILocation(line: 231, column: 30, scope: !362)
!379 = !DILocation(line: 231, column: 17, scope: !362)
!380 = !DILocation(line: 232, column: 13, scope: !362)
!381 = !DILocation(line: 234, column: 5, scope: !350)
!382 = !DILocation(line: 235, column: 1, scope: !329)
!383 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 238, type: !11, scopeLine: 239, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!384 = !DILocalVariable(name: "data", scope: !383, file: !1, line: 240, type: !14)
!385 = !DILocation(line: 240, column: 12, scope: !383)
!386 = !DILocalVariable(name: "dataBuffer", scope: !383, file: !1, line: 241, type: !18)
!387 = !DILocation(line: 241, column: 10, scope: !383)
!388 = !DILocation(line: 242, column: 12, scope: !383)
!389 = !DILocation(line: 242, column: 10, scope: !383)
!390 = !DILocation(line: 243, column: 8, scope: !391)
!391 = distinct !DILexicalBlock(scope: !383, file: !1, line: 243, column: 8)
!392 = !DILocation(line: 243, column: 8, scope: !383)
!393 = !DILocation(line: 246, column: 16, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !1, line: 244, column: 5)
!395 = !DILocation(line: 246, column: 9, scope: !394)
!396 = !DILocation(line: 247, column: 5, scope: !394)
!397 = !DILocation(line: 248, column: 8, scope: !398)
!398 = distinct !DILexicalBlock(scope: !383, file: !1, line: 248, column: 8)
!399 = !DILocation(line: 248, column: 8, scope: !383)
!400 = !DILocalVariable(name: "i", scope: !401, file: !1, line: 251, type: !4)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 250, column: 9)
!402 = distinct !DILexicalBlock(scope: !398, file: !1, line: 249, column: 5)
!403 = !DILocation(line: 251, column: 17, scope: !401)
!404 = !DILocalVariable(name: "n", scope: !401, file: !1, line: 251, type: !4)
!405 = !DILocation(line: 251, column: 20, scope: !401)
!406 = !DILocalVariable(name: "intVariable", scope: !401, file: !1, line: 251, type: !4)
!407 = !DILocation(line: 251, column: 23, scope: !401)
!408 = !DILocation(line: 252, column: 24, scope: !409)
!409 = distinct !DILexicalBlock(scope: !401, file: !1, line: 252, column: 17)
!410 = !DILocation(line: 252, column: 17, scope: !409)
!411 = !DILocation(line: 252, column: 40, scope: !409)
!412 = !DILocation(line: 252, column: 17, scope: !401)
!413 = !DILocation(line: 255, column: 29, scope: !414)
!414 = distinct !DILexicalBlock(scope: !409, file: !1, line: 253, column: 13)
!415 = !DILocation(line: 256, column: 24, scope: !416)
!416 = distinct !DILexicalBlock(scope: !414, file: !1, line: 256, column: 17)
!417 = !DILocation(line: 256, column: 22, scope: !416)
!418 = !DILocation(line: 256, column: 29, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !1, line: 256, column: 17)
!420 = !DILocation(line: 256, column: 33, scope: !419)
!421 = !DILocation(line: 256, column: 31, scope: !419)
!422 = !DILocation(line: 256, column: 17, scope: !416)
!423 = !DILocation(line: 259, column: 32, scope: !424)
!424 = distinct !DILexicalBlock(scope: !419, file: !1, line: 257, column: 17)
!425 = !DILocation(line: 260, column: 17, scope: !424)
!426 = !DILocation(line: 256, column: 37, scope: !419)
!427 = !DILocation(line: 256, column: 17, scope: !419)
!428 = distinct !{!428, !422, !429, !113}
!429 = !DILocation(line: 260, column: 17, scope: !416)
!430 = !DILocation(line: 261, column: 30, scope: !414)
!431 = !DILocation(line: 261, column: 17, scope: !414)
!432 = !DILocation(line: 262, column: 13, scope: !414)
!433 = !DILocation(line: 264, column: 5, scope: !402)
!434 = !DILocation(line: 265, column: 1, scope: !383)
!435 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_10_good", scope: !1, file: !1, line: 267, type: !11, scopeLine: 268, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!436 = !DILocation(line: 269, column: 5, scope: !435)
!437 = !DILocation(line: 270, column: 5, scope: !435)
!438 = !DILocation(line: 271, column: 5, scope: !435)
!439 = !DILocation(line: 272, column: 5, scope: !435)
!440 = !DILocation(line: 273, column: 1, scope: !435)
