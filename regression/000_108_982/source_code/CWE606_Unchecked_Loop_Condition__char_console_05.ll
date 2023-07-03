; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_05.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_05.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@staticTrue = dso_local global i32 1, align 4, !dbg !0
@staticFalse = dso_local global i32 0, align 4, !dbg !9
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_05_bad() #0 !dbg !15 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %data, align 8, !dbg !28
  %1 = load i32, i32* @staticTrue, align 4, !dbg !29
  %tobool = icmp ne i32 %1, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end20, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !32, metadata !DIExpression()), !dbg !38
  %2 = load i8*, i8** %data, align 8, !dbg !39
  %call = call i64 @strlen(i8* %2) #6, !dbg !40
  store i64 %call, i64* %dataLen, align 8, !dbg !38
  %3 = load i64, i64* %dataLen, align 8, !dbg !41
  %sub = sub i64 100, %3, !dbg !43
  %cmp = icmp ugt i64 %sub, 1, !dbg !44
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !45

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !46
  %5 = load i64, i64* %dataLen, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !50
  %6 = load i64, i64* %dataLen, align 8, !dbg !51
  %sub2 = sub i64 100, %6, !dbg !52
  %conv = trunc i64 %sub2 to i32, !dbg !53
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !55
  %cmp4 = icmp ne i8* %call3, null, !dbg !56
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !57

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !58
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !60
  store i64 %call7, i64* %dataLen, align 8, !dbg !61
  %9 = load i64, i64* %dataLen, align 8, !dbg !62
  %cmp8 = icmp ugt i64 %9, 0, !dbg !64
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !65

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !66
  %11 = load i64, i64* %dataLen, align 8, !dbg !67
  %sub10 = sub i64 %11, 1, !dbg !68
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !66
  %12 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv11 = sext i8 %12 to i32, !dbg !66
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !69
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !70

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !71
  %14 = load i64, i64* %dataLen, align 8, !dbg !73
  %sub15 = sub i64 %14, 1, !dbg !74
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !71
  store i8 0, i8* %arrayidx16, align 1, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !77

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %15 = load i8*, i8** %data, align 8, !dbg !80
  %16 = load i64, i64* %dataLen, align 8, !dbg !81
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !80
  store i8 0, i8* %arrayidx17, align 1, !dbg !82
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !83

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !84

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @staticTrue, align 4, !dbg !85
  %tobool21 = icmp ne i32 %17, 0, !dbg !85
  br i1 %tobool21, label %if.then22, label %if.end31, !dbg !87

if.then22:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !88, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %n, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !94, metadata !DIExpression()), !dbg !95
  %18 = load i8*, i8** %data, align 8, !dbg !96
  %call23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !98
  %cmp24 = icmp eq i32 %call23, 1, !dbg !99
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !100

if.then26:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !101
  store i32 0, i32* %i, align 4, !dbg !103
  br label %for.cond, !dbg !105

for.cond:                                         ; preds = %for.inc, %if.then26
  %19 = load i32, i32* %i, align 4, !dbg !106
  %20 = load i32, i32* %n, align 4, !dbg !108
  %cmp27 = icmp slt i32 %19, %20, !dbg !109
  br i1 %cmp27, label %for.body, label %for.end, !dbg !110

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !111
  %inc = add nsw i32 %21, 1, !dbg !111
  store i32 %inc, i32* %intVariable, align 4, !dbg !111
  br label %for.inc, !dbg !113

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !114
  %inc29 = add nsw i32 %22, 1, !dbg !114
  store i32 %inc29, i32* %i, align 4, !dbg !114
  br label %for.cond, !dbg !115, !llvm.loop !116

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %intVariable, align 4, !dbg !119
  call void @printIntLine(i32 %23), !dbg !120
  br label %if.end30, !dbg !121

if.end30:                                         ; preds = %for.end, %if.then22
  br label %if.end31, !dbg !122

if.end31:                                         ; preds = %if.end30, %if.end20
  ret void, !dbg !123
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
define dso_local void @goodB2G1() #0 !dbg !124 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !127, metadata !DIExpression()), !dbg !128
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !128
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !128
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !129
  store i8* %arraydecay, i8** %data, align 8, !dbg !130
  %1 = load i32, i32* @staticTrue, align 4, !dbg !131
  %tobool = icmp ne i32 %1, 0, !dbg !131
  br i1 %tobool, label %if.then, label %if.end20, !dbg !133

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !134, metadata !DIExpression()), !dbg !137
  %2 = load i8*, i8** %data, align 8, !dbg !138
  %call = call i64 @strlen(i8* %2) #6, !dbg !139
  store i64 %call, i64* %dataLen, align 8, !dbg !137
  %3 = load i64, i64* %dataLen, align 8, !dbg !140
  %sub = sub i64 100, %3, !dbg !142
  %cmp = icmp ugt i64 %sub, 1, !dbg !143
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !144

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !145
  %5 = load i64, i64* %dataLen, align 8, !dbg !148
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !149
  %6 = load i64, i64* %dataLen, align 8, !dbg !150
  %sub2 = sub i64 100, %6, !dbg !151
  %conv = trunc i64 %sub2 to i32, !dbg !152
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !153
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !154
  %cmp4 = icmp ne i8* %call3, null, !dbg !155
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !156

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !157
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !159
  store i64 %call7, i64* %dataLen, align 8, !dbg !160
  %9 = load i64, i64* %dataLen, align 8, !dbg !161
  %cmp8 = icmp ugt i64 %9, 0, !dbg !163
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !164

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !165
  %11 = load i64, i64* %dataLen, align 8, !dbg !166
  %sub10 = sub i64 %11, 1, !dbg !167
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !165
  %12 = load i8, i8* %arrayidx, align 1, !dbg !165
  %conv11 = sext i8 %12 to i32, !dbg !165
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !168
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !169

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !170
  %14 = load i64, i64* %dataLen, align 8, !dbg !172
  %sub15 = sub i64 %14, 1, !dbg !173
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !170
  store i8 0, i8* %arrayidx16, align 1, !dbg !174
  br label %if.end, !dbg !175

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !176

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !177
  %15 = load i8*, i8** %data, align 8, !dbg !179
  %16 = load i64, i64* %dataLen, align 8, !dbg !180
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !179
  store i8 0, i8* %arrayidx17, align 1, !dbg !181
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !182

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !183

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @staticFalse, align 4, !dbg !184
  %tobool21 = icmp ne i32 %17, 0, !dbg !184
  br i1 %tobool21, label %if.then22, label %if.else23, !dbg !186

if.then22:                                        ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !187
  br label %if.end36, !dbg !189

if.else23:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !190, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata i32* %n, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !196, metadata !DIExpression()), !dbg !197
  %18 = load i8*, i8** %data, align 8, !dbg !198
  %call24 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !200
  %cmp25 = icmp eq i32 %call24, 1, !dbg !201
  br i1 %cmp25, label %if.then27, label %if.end35, !dbg !202

if.then27:                                        ; preds = %if.else23
  %19 = load i32, i32* %n, align 4, !dbg !203
  %cmp28 = icmp slt i32 %19, 10000, !dbg !206
  br i1 %cmp28, label %if.then30, label %if.end34, !dbg !207

if.then30:                                        ; preds = %if.then27
  store i32 0, i32* %intVariable, align 4, !dbg !208
  store i32 0, i32* %i, align 4, !dbg !210
  br label %for.cond, !dbg !212

for.cond:                                         ; preds = %for.inc, %if.then30
  %20 = load i32, i32* %i, align 4, !dbg !213
  %21 = load i32, i32* %n, align 4, !dbg !215
  %cmp31 = icmp slt i32 %20, %21, !dbg !216
  br i1 %cmp31, label %for.body, label %for.end, !dbg !217

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !218
  %inc = add nsw i32 %22, 1, !dbg !218
  store i32 %inc, i32* %intVariable, align 4, !dbg !218
  br label %for.inc, !dbg !220

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !221
  %inc33 = add nsw i32 %23, 1, !dbg !221
  store i32 %inc33, i32* %i, align 4, !dbg !221
  br label %for.cond, !dbg !222, !llvm.loop !223

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !225
  call void @printIntLine(i32 %24), !dbg !226
  br label %if.end34, !dbg !227

if.end34:                                         ; preds = %for.end, %if.then27
  br label %if.end35, !dbg !228

if.end35:                                         ; preds = %if.end34, %if.else23
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then22
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !230 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !233, metadata !DIExpression()), !dbg !234
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !234
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !234
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !235
  store i8* %arraydecay, i8** %data, align 8, !dbg !236
  %1 = load i32, i32* @staticTrue, align 4, !dbg !237
  %tobool = icmp ne i32 %1, 0, !dbg !237
  br i1 %tobool, label %if.then, label %if.end20, !dbg !239

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !240, metadata !DIExpression()), !dbg !243
  %2 = load i8*, i8** %data, align 8, !dbg !244
  %call = call i64 @strlen(i8* %2) #6, !dbg !245
  store i64 %call, i64* %dataLen, align 8, !dbg !243
  %3 = load i64, i64* %dataLen, align 8, !dbg !246
  %sub = sub i64 100, %3, !dbg !248
  %cmp = icmp ugt i64 %sub, 1, !dbg !249
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !250

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !251
  %5 = load i64, i64* %dataLen, align 8, !dbg !254
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !255
  %6 = load i64, i64* %dataLen, align 8, !dbg !256
  %sub2 = sub i64 100, %6, !dbg !257
  %conv = trunc i64 %sub2 to i32, !dbg !258
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !259
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !260
  %cmp4 = icmp ne i8* %call3, null, !dbg !261
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !262

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !263
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !265
  store i64 %call7, i64* %dataLen, align 8, !dbg !266
  %9 = load i64, i64* %dataLen, align 8, !dbg !267
  %cmp8 = icmp ugt i64 %9, 0, !dbg !269
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !270

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !271
  %11 = load i64, i64* %dataLen, align 8, !dbg !272
  %sub10 = sub i64 %11, 1, !dbg !273
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !271
  %12 = load i8, i8* %arrayidx, align 1, !dbg !271
  %conv11 = sext i8 %12 to i32, !dbg !271
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !274
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !275

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !276
  %14 = load i64, i64* %dataLen, align 8, !dbg !278
  %sub15 = sub i64 %14, 1, !dbg !279
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !276
  store i8 0, i8* %arrayidx16, align 1, !dbg !280
  br label %if.end, !dbg !281

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !282

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !283
  %15 = load i8*, i8** %data, align 8, !dbg !285
  %16 = load i64, i64* %dataLen, align 8, !dbg !286
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !285
  store i8 0, i8* %arrayidx17, align 1, !dbg !287
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !288

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !289

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @staticTrue, align 4, !dbg !290
  %tobool21 = icmp ne i32 %17, 0, !dbg !290
  br i1 %tobool21, label %if.then22, label %if.end35, !dbg !292

if.then22:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !293, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata i32* %n, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !299, metadata !DIExpression()), !dbg !300
  %18 = load i8*, i8** %data, align 8, !dbg !301
  %call23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !303
  %cmp24 = icmp eq i32 %call23, 1, !dbg !304
  br i1 %cmp24, label %if.then26, label %if.end34, !dbg !305

if.then26:                                        ; preds = %if.then22
  %19 = load i32, i32* %n, align 4, !dbg !306
  %cmp27 = icmp slt i32 %19, 10000, !dbg !309
  br i1 %cmp27, label %if.then29, label %if.end33, !dbg !310

if.then29:                                        ; preds = %if.then26
  store i32 0, i32* %intVariable, align 4, !dbg !311
  store i32 0, i32* %i, align 4, !dbg !313
  br label %for.cond, !dbg !315

for.cond:                                         ; preds = %for.inc, %if.then29
  %20 = load i32, i32* %i, align 4, !dbg !316
  %21 = load i32, i32* %n, align 4, !dbg !318
  %cmp30 = icmp slt i32 %20, %21, !dbg !319
  br i1 %cmp30, label %for.body, label %for.end, !dbg !320

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !321
  %inc = add nsw i32 %22, 1, !dbg !321
  store i32 %inc, i32* %intVariable, align 4, !dbg !321
  br label %for.inc, !dbg !323

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !324
  %inc32 = add nsw i32 %23, 1, !dbg !324
  store i32 %inc32, i32* %i, align 4, !dbg !324
  br label %for.cond, !dbg !325, !llvm.loop !326

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !328
  call void @printIntLine(i32 %24), !dbg !329
  br label %if.end33, !dbg !330

if.end33:                                         ; preds = %for.end, %if.then26
  br label %if.end34, !dbg !331

if.end34:                                         ; preds = %if.end33, %if.then22
  br label %if.end35, !dbg !332

if.end35:                                         ; preds = %if.end34, %if.end20
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !334 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !338
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !338
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !339
  store i8* %arraydecay, i8** %data, align 8, !dbg !340
  %1 = load i32, i32* @staticFalse, align 4, !dbg !341
  %tobool = icmp ne i32 %1, 0, !dbg !341
  br i1 %tobool, label %if.then, label %if.else, !dbg !343

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !344
  br label %if.end, !dbg !346

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !347
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !349
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @staticTrue, align 4, !dbg !350
  %tobool1 = icmp ne i32 %3, 0, !dbg !350
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !352

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !353, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata i32* %n, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !359, metadata !DIExpression()), !dbg !360
  %4 = load i8*, i8** %data, align 8, !dbg !361
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !363
  %cmp = icmp eq i32 %call3, 1, !dbg !364
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !365

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !366
  store i32 0, i32* %i, align 4, !dbg !368
  br label %for.cond, !dbg !370

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !371
  %6 = load i32, i32* %n, align 4, !dbg !373
  %cmp5 = icmp slt i32 %5, %6, !dbg !374
  br i1 %cmp5, label %for.body, label %for.end, !dbg !375

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !376
  %inc = add nsw i32 %7, 1, !dbg !376
  store i32 %inc, i32* %intVariable, align 4, !dbg !376
  br label %for.inc, !dbg !378

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !379
  %inc6 = add nsw i32 %8, 1, !dbg !379
  store i32 %inc6, i32* %i, align 4, !dbg !379
  br label %for.cond, !dbg !380, !llvm.loop !381

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !383
  call void @printIntLine(i32 %9), !dbg !384
  br label %if.end7, !dbg !385

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !386

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !387
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !388 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !392
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !392
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !393
  store i8* %arraydecay, i8** %data, align 8, !dbg !394
  %1 = load i32, i32* @staticTrue, align 4, !dbg !395
  %tobool = icmp ne i32 %1, 0, !dbg !395
  br i1 %tobool, label %if.then, label %if.end, !dbg !397

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !398
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !400
  br label %if.end, !dbg !401

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @staticTrue, align 4, !dbg !402
  %tobool1 = icmp ne i32 %3, 0, !dbg !402
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !404

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !405, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.declare(metadata i32* %n, metadata !409, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !411, metadata !DIExpression()), !dbg !412
  %4 = load i8*, i8** %data, align 8, !dbg !413
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !415
  %cmp = icmp eq i32 %call3, 1, !dbg !416
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !417

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !418
  store i32 0, i32* %i, align 4, !dbg !420
  br label %for.cond, !dbg !422

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !423
  %6 = load i32, i32* %n, align 4, !dbg !425
  %cmp5 = icmp slt i32 %5, %6, !dbg !426
  br i1 %cmp5, label %for.body, label %for.end, !dbg !427

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !428
  %inc = add nsw i32 %7, 1, !dbg !428
  store i32 %inc, i32* %intVariable, align 4, !dbg !428
  br label %for.inc, !dbg !430

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !431
  %inc6 = add nsw i32 %8, 1, !dbg !431
  store i32 %inc6, i32* %i, align 4, !dbg !431
  br label %for.cond, !dbg !432, !llvm.loop !433

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !435
  call void @printIntLine(i32 %9), !dbg !436
  br label %if.end7, !dbg !437

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !438

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_05_good() #0 !dbg !440 {
entry:
  call void @goodB2G1(), !dbg !441
  call void @goodB2G2(), !dbg !442
  call void @goodG2B1(), !dbg !443
  call void @goodG2B2(), !dbg !444
  ret void, !dbg !445
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticTrue", scope: !2, file: !3, line: 30, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_05.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_982/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "staticFalse", scope: !2, file: !3, line: 31, type: !6, isLocal: false, isDefinition: true)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 12.0.0"}
!15 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_05_bad", scope: !3, file: !3, line: 35, type: !16, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !DILocalVariable(name: "data", scope: !15, file: !3, line: 37, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DILocation(line: 37, column: 12, scope: !15)
!22 = !DILocalVariable(name: "dataBuffer", scope: !15, file: !3, line: 38, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 38, column: 10, scope: !15)
!27 = !DILocation(line: 39, column: 12, scope: !15)
!28 = !DILocation(line: 39, column: 10, scope: !15)
!29 = !DILocation(line: 40, column: 8, scope: !30)
!30 = distinct !DILexicalBlock(scope: !15, file: !3, line: 40, column: 8)
!31 = !DILocation(line: 40, column: 8, scope: !15)
!32 = !DILocalVariable(name: "dataLen", scope: !33, file: !3, line: 44, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !3, line: 42, column: 9)
!34 = distinct !DILexicalBlock(scope: !30, file: !3, line: 41, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 44, column: 20, scope: !33)
!39 = !DILocation(line: 44, column: 37, scope: !33)
!40 = !DILocation(line: 44, column: 30, scope: !33)
!41 = !DILocation(line: 46, column: 21, scope: !42)
!42 = distinct !DILexicalBlock(scope: !33, file: !3, line: 46, column: 17)
!43 = !DILocation(line: 46, column: 20, scope: !42)
!44 = !DILocation(line: 46, column: 29, scope: !42)
!45 = !DILocation(line: 46, column: 17, scope: !33)
!46 = !DILocation(line: 49, column: 27, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !3, line: 49, column: 21)
!48 = distinct !DILexicalBlock(scope: !42, file: !3, line: 47, column: 13)
!49 = !DILocation(line: 49, column: 32, scope: !47)
!50 = !DILocation(line: 49, column: 31, scope: !47)
!51 = !DILocation(line: 49, column: 51, scope: !47)
!52 = !DILocation(line: 49, column: 50, scope: !47)
!53 = !DILocation(line: 49, column: 41, scope: !47)
!54 = !DILocation(line: 49, column: 61, scope: !47)
!55 = !DILocation(line: 49, column: 21, scope: !47)
!56 = !DILocation(line: 49, column: 68, scope: !47)
!57 = !DILocation(line: 49, column: 21, scope: !48)
!58 = !DILocation(line: 53, column: 38, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !3, line: 50, column: 17)
!60 = !DILocation(line: 53, column: 31, scope: !59)
!61 = !DILocation(line: 53, column: 29, scope: !59)
!62 = !DILocation(line: 54, column: 25, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !3, line: 54, column: 25)
!64 = !DILocation(line: 54, column: 33, scope: !63)
!65 = !DILocation(line: 54, column: 37, scope: !63)
!66 = !DILocation(line: 54, column: 40, scope: !63)
!67 = !DILocation(line: 54, column: 45, scope: !63)
!68 = !DILocation(line: 54, column: 52, scope: !63)
!69 = !DILocation(line: 54, column: 56, scope: !63)
!70 = !DILocation(line: 54, column: 25, scope: !59)
!71 = !DILocation(line: 56, column: 25, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !3, line: 55, column: 21)
!73 = !DILocation(line: 56, column: 30, scope: !72)
!74 = !DILocation(line: 56, column: 37, scope: !72)
!75 = !DILocation(line: 56, column: 41, scope: !72)
!76 = !DILocation(line: 57, column: 21, scope: !72)
!77 = !DILocation(line: 58, column: 17, scope: !59)
!78 = !DILocation(line: 61, column: 21, scope: !79)
!79 = distinct !DILexicalBlock(scope: !47, file: !3, line: 60, column: 17)
!80 = !DILocation(line: 63, column: 21, scope: !79)
!81 = !DILocation(line: 63, column: 26, scope: !79)
!82 = !DILocation(line: 63, column: 35, scope: !79)
!83 = !DILocation(line: 65, column: 13, scope: !48)
!84 = !DILocation(line: 67, column: 5, scope: !34)
!85 = !DILocation(line: 68, column: 8, scope: !86)
!86 = distinct !DILexicalBlock(scope: !15, file: !3, line: 68, column: 8)
!87 = !DILocation(line: 68, column: 8, scope: !15)
!88 = !DILocalVariable(name: "i", scope: !89, file: !3, line: 71, type: !6)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 70, column: 9)
!90 = distinct !DILexicalBlock(scope: !86, file: !3, line: 69, column: 5)
!91 = !DILocation(line: 71, column: 17, scope: !89)
!92 = !DILocalVariable(name: "n", scope: !89, file: !3, line: 71, type: !6)
!93 = !DILocation(line: 71, column: 20, scope: !89)
!94 = !DILocalVariable(name: "intVariable", scope: !89, file: !3, line: 71, type: !6)
!95 = !DILocation(line: 71, column: 23, scope: !89)
!96 = !DILocation(line: 72, column: 24, scope: !97)
!97 = distinct !DILexicalBlock(scope: !89, file: !3, line: 72, column: 17)
!98 = !DILocation(line: 72, column: 17, scope: !97)
!99 = !DILocation(line: 72, column: 40, scope: !97)
!100 = !DILocation(line: 72, column: 17, scope: !89)
!101 = !DILocation(line: 75, column: 29, scope: !102)
!102 = distinct !DILexicalBlock(scope: !97, file: !3, line: 73, column: 13)
!103 = !DILocation(line: 76, column: 24, scope: !104)
!104 = distinct !DILexicalBlock(scope: !102, file: !3, line: 76, column: 17)
!105 = !DILocation(line: 76, column: 22, scope: !104)
!106 = !DILocation(line: 76, column: 29, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !3, line: 76, column: 17)
!108 = !DILocation(line: 76, column: 33, scope: !107)
!109 = !DILocation(line: 76, column: 31, scope: !107)
!110 = !DILocation(line: 76, column: 17, scope: !104)
!111 = !DILocation(line: 79, column: 32, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !3, line: 77, column: 17)
!113 = !DILocation(line: 80, column: 17, scope: !112)
!114 = !DILocation(line: 76, column: 37, scope: !107)
!115 = !DILocation(line: 76, column: 17, scope: !107)
!116 = distinct !{!116, !110, !117, !118}
!117 = !DILocation(line: 80, column: 17, scope: !104)
!118 = !{!"llvm.loop.mustprogress"}
!119 = !DILocation(line: 81, column: 30, scope: !102)
!120 = !DILocation(line: 81, column: 17, scope: !102)
!121 = !DILocation(line: 82, column: 13, scope: !102)
!122 = !DILocation(line: 84, column: 5, scope: !90)
!123 = !DILocation(line: 85, column: 1, scope: !15)
!124 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 92, type: !16, scopeLine: 93, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!125 = !DILocalVariable(name: "data", scope: !124, file: !3, line: 94, type: !19)
!126 = !DILocation(line: 94, column: 12, scope: !124)
!127 = !DILocalVariable(name: "dataBuffer", scope: !124, file: !3, line: 95, type: !23)
!128 = !DILocation(line: 95, column: 10, scope: !124)
!129 = !DILocation(line: 96, column: 12, scope: !124)
!130 = !DILocation(line: 96, column: 10, scope: !124)
!131 = !DILocation(line: 97, column: 8, scope: !132)
!132 = distinct !DILexicalBlock(scope: !124, file: !3, line: 97, column: 8)
!133 = !DILocation(line: 97, column: 8, scope: !124)
!134 = !DILocalVariable(name: "dataLen", scope: !135, file: !3, line: 101, type: !35)
!135 = distinct !DILexicalBlock(scope: !136, file: !3, line: 99, column: 9)
!136 = distinct !DILexicalBlock(scope: !132, file: !3, line: 98, column: 5)
!137 = !DILocation(line: 101, column: 20, scope: !135)
!138 = !DILocation(line: 101, column: 37, scope: !135)
!139 = !DILocation(line: 101, column: 30, scope: !135)
!140 = !DILocation(line: 103, column: 21, scope: !141)
!141 = distinct !DILexicalBlock(scope: !135, file: !3, line: 103, column: 17)
!142 = !DILocation(line: 103, column: 20, scope: !141)
!143 = !DILocation(line: 103, column: 29, scope: !141)
!144 = !DILocation(line: 103, column: 17, scope: !135)
!145 = !DILocation(line: 106, column: 27, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !3, line: 106, column: 21)
!147 = distinct !DILexicalBlock(scope: !141, file: !3, line: 104, column: 13)
!148 = !DILocation(line: 106, column: 32, scope: !146)
!149 = !DILocation(line: 106, column: 31, scope: !146)
!150 = !DILocation(line: 106, column: 51, scope: !146)
!151 = !DILocation(line: 106, column: 50, scope: !146)
!152 = !DILocation(line: 106, column: 41, scope: !146)
!153 = !DILocation(line: 106, column: 61, scope: !146)
!154 = !DILocation(line: 106, column: 21, scope: !146)
!155 = !DILocation(line: 106, column: 68, scope: !146)
!156 = !DILocation(line: 106, column: 21, scope: !147)
!157 = !DILocation(line: 110, column: 38, scope: !158)
!158 = distinct !DILexicalBlock(scope: !146, file: !3, line: 107, column: 17)
!159 = !DILocation(line: 110, column: 31, scope: !158)
!160 = !DILocation(line: 110, column: 29, scope: !158)
!161 = !DILocation(line: 111, column: 25, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 111, column: 25)
!163 = !DILocation(line: 111, column: 33, scope: !162)
!164 = !DILocation(line: 111, column: 37, scope: !162)
!165 = !DILocation(line: 111, column: 40, scope: !162)
!166 = !DILocation(line: 111, column: 45, scope: !162)
!167 = !DILocation(line: 111, column: 52, scope: !162)
!168 = !DILocation(line: 111, column: 56, scope: !162)
!169 = !DILocation(line: 111, column: 25, scope: !158)
!170 = !DILocation(line: 113, column: 25, scope: !171)
!171 = distinct !DILexicalBlock(scope: !162, file: !3, line: 112, column: 21)
!172 = !DILocation(line: 113, column: 30, scope: !171)
!173 = !DILocation(line: 113, column: 37, scope: !171)
!174 = !DILocation(line: 113, column: 41, scope: !171)
!175 = !DILocation(line: 114, column: 21, scope: !171)
!176 = !DILocation(line: 115, column: 17, scope: !158)
!177 = !DILocation(line: 118, column: 21, scope: !178)
!178 = distinct !DILexicalBlock(scope: !146, file: !3, line: 117, column: 17)
!179 = !DILocation(line: 120, column: 21, scope: !178)
!180 = !DILocation(line: 120, column: 26, scope: !178)
!181 = !DILocation(line: 120, column: 35, scope: !178)
!182 = !DILocation(line: 122, column: 13, scope: !147)
!183 = !DILocation(line: 124, column: 5, scope: !136)
!184 = !DILocation(line: 125, column: 8, scope: !185)
!185 = distinct !DILexicalBlock(scope: !124, file: !3, line: 125, column: 8)
!186 = !DILocation(line: 125, column: 8, scope: !124)
!187 = !DILocation(line: 128, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 126, column: 5)
!189 = !DILocation(line: 129, column: 5, scope: !188)
!190 = !DILocalVariable(name: "i", scope: !191, file: !3, line: 133, type: !6)
!191 = distinct !DILexicalBlock(scope: !192, file: !3, line: 132, column: 9)
!192 = distinct !DILexicalBlock(scope: !185, file: !3, line: 131, column: 5)
!193 = !DILocation(line: 133, column: 17, scope: !191)
!194 = !DILocalVariable(name: "n", scope: !191, file: !3, line: 133, type: !6)
!195 = !DILocation(line: 133, column: 20, scope: !191)
!196 = !DILocalVariable(name: "intVariable", scope: !191, file: !3, line: 133, type: !6)
!197 = !DILocation(line: 133, column: 23, scope: !191)
!198 = !DILocation(line: 134, column: 24, scope: !199)
!199 = distinct !DILexicalBlock(scope: !191, file: !3, line: 134, column: 17)
!200 = !DILocation(line: 134, column: 17, scope: !199)
!201 = !DILocation(line: 134, column: 40, scope: !199)
!202 = !DILocation(line: 134, column: 17, scope: !191)
!203 = !DILocation(line: 137, column: 21, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !3, line: 137, column: 21)
!205 = distinct !DILexicalBlock(scope: !199, file: !3, line: 135, column: 13)
!206 = !DILocation(line: 137, column: 23, scope: !204)
!207 = !DILocation(line: 137, column: 21, scope: !205)
!208 = !DILocation(line: 139, column: 33, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !3, line: 138, column: 17)
!210 = !DILocation(line: 140, column: 28, scope: !211)
!211 = distinct !DILexicalBlock(scope: !209, file: !3, line: 140, column: 21)
!212 = !DILocation(line: 140, column: 26, scope: !211)
!213 = !DILocation(line: 140, column: 33, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !3, line: 140, column: 21)
!215 = !DILocation(line: 140, column: 37, scope: !214)
!216 = !DILocation(line: 140, column: 35, scope: !214)
!217 = !DILocation(line: 140, column: 21, scope: !211)
!218 = !DILocation(line: 143, column: 36, scope: !219)
!219 = distinct !DILexicalBlock(scope: !214, file: !3, line: 141, column: 21)
!220 = !DILocation(line: 144, column: 21, scope: !219)
!221 = !DILocation(line: 140, column: 41, scope: !214)
!222 = !DILocation(line: 140, column: 21, scope: !214)
!223 = distinct !{!223, !217, !224, !118}
!224 = !DILocation(line: 144, column: 21, scope: !211)
!225 = !DILocation(line: 145, column: 34, scope: !209)
!226 = !DILocation(line: 145, column: 21, scope: !209)
!227 = !DILocation(line: 146, column: 17, scope: !209)
!228 = !DILocation(line: 147, column: 13, scope: !205)
!229 = !DILocation(line: 150, column: 1, scope: !124)
!230 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 153, type: !16, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!231 = !DILocalVariable(name: "data", scope: !230, file: !3, line: 155, type: !19)
!232 = !DILocation(line: 155, column: 12, scope: !230)
!233 = !DILocalVariable(name: "dataBuffer", scope: !230, file: !3, line: 156, type: !23)
!234 = !DILocation(line: 156, column: 10, scope: !230)
!235 = !DILocation(line: 157, column: 12, scope: !230)
!236 = !DILocation(line: 157, column: 10, scope: !230)
!237 = !DILocation(line: 158, column: 8, scope: !238)
!238 = distinct !DILexicalBlock(scope: !230, file: !3, line: 158, column: 8)
!239 = !DILocation(line: 158, column: 8, scope: !230)
!240 = !DILocalVariable(name: "dataLen", scope: !241, file: !3, line: 162, type: !35)
!241 = distinct !DILexicalBlock(scope: !242, file: !3, line: 160, column: 9)
!242 = distinct !DILexicalBlock(scope: !238, file: !3, line: 159, column: 5)
!243 = !DILocation(line: 162, column: 20, scope: !241)
!244 = !DILocation(line: 162, column: 37, scope: !241)
!245 = !DILocation(line: 162, column: 30, scope: !241)
!246 = !DILocation(line: 164, column: 21, scope: !247)
!247 = distinct !DILexicalBlock(scope: !241, file: !3, line: 164, column: 17)
!248 = !DILocation(line: 164, column: 20, scope: !247)
!249 = !DILocation(line: 164, column: 29, scope: !247)
!250 = !DILocation(line: 164, column: 17, scope: !241)
!251 = !DILocation(line: 167, column: 27, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 167, column: 21)
!253 = distinct !DILexicalBlock(scope: !247, file: !3, line: 165, column: 13)
!254 = !DILocation(line: 167, column: 32, scope: !252)
!255 = !DILocation(line: 167, column: 31, scope: !252)
!256 = !DILocation(line: 167, column: 51, scope: !252)
!257 = !DILocation(line: 167, column: 50, scope: !252)
!258 = !DILocation(line: 167, column: 41, scope: !252)
!259 = !DILocation(line: 167, column: 61, scope: !252)
!260 = !DILocation(line: 167, column: 21, scope: !252)
!261 = !DILocation(line: 167, column: 68, scope: !252)
!262 = !DILocation(line: 167, column: 21, scope: !253)
!263 = !DILocation(line: 171, column: 38, scope: !264)
!264 = distinct !DILexicalBlock(scope: !252, file: !3, line: 168, column: 17)
!265 = !DILocation(line: 171, column: 31, scope: !264)
!266 = !DILocation(line: 171, column: 29, scope: !264)
!267 = !DILocation(line: 172, column: 25, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !3, line: 172, column: 25)
!269 = !DILocation(line: 172, column: 33, scope: !268)
!270 = !DILocation(line: 172, column: 37, scope: !268)
!271 = !DILocation(line: 172, column: 40, scope: !268)
!272 = !DILocation(line: 172, column: 45, scope: !268)
!273 = !DILocation(line: 172, column: 52, scope: !268)
!274 = !DILocation(line: 172, column: 56, scope: !268)
!275 = !DILocation(line: 172, column: 25, scope: !264)
!276 = !DILocation(line: 174, column: 25, scope: !277)
!277 = distinct !DILexicalBlock(scope: !268, file: !3, line: 173, column: 21)
!278 = !DILocation(line: 174, column: 30, scope: !277)
!279 = !DILocation(line: 174, column: 37, scope: !277)
!280 = !DILocation(line: 174, column: 41, scope: !277)
!281 = !DILocation(line: 175, column: 21, scope: !277)
!282 = !DILocation(line: 176, column: 17, scope: !264)
!283 = !DILocation(line: 179, column: 21, scope: !284)
!284 = distinct !DILexicalBlock(scope: !252, file: !3, line: 178, column: 17)
!285 = !DILocation(line: 181, column: 21, scope: !284)
!286 = !DILocation(line: 181, column: 26, scope: !284)
!287 = !DILocation(line: 181, column: 35, scope: !284)
!288 = !DILocation(line: 183, column: 13, scope: !253)
!289 = !DILocation(line: 185, column: 5, scope: !242)
!290 = !DILocation(line: 186, column: 8, scope: !291)
!291 = distinct !DILexicalBlock(scope: !230, file: !3, line: 186, column: 8)
!292 = !DILocation(line: 186, column: 8, scope: !230)
!293 = !DILocalVariable(name: "i", scope: !294, file: !3, line: 189, type: !6)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 188, column: 9)
!295 = distinct !DILexicalBlock(scope: !291, file: !3, line: 187, column: 5)
!296 = !DILocation(line: 189, column: 17, scope: !294)
!297 = !DILocalVariable(name: "n", scope: !294, file: !3, line: 189, type: !6)
!298 = !DILocation(line: 189, column: 20, scope: !294)
!299 = !DILocalVariable(name: "intVariable", scope: !294, file: !3, line: 189, type: !6)
!300 = !DILocation(line: 189, column: 23, scope: !294)
!301 = !DILocation(line: 190, column: 24, scope: !302)
!302 = distinct !DILexicalBlock(scope: !294, file: !3, line: 190, column: 17)
!303 = !DILocation(line: 190, column: 17, scope: !302)
!304 = !DILocation(line: 190, column: 40, scope: !302)
!305 = !DILocation(line: 190, column: 17, scope: !294)
!306 = !DILocation(line: 193, column: 21, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 193, column: 21)
!308 = distinct !DILexicalBlock(scope: !302, file: !3, line: 191, column: 13)
!309 = !DILocation(line: 193, column: 23, scope: !307)
!310 = !DILocation(line: 193, column: 21, scope: !308)
!311 = !DILocation(line: 195, column: 33, scope: !312)
!312 = distinct !DILexicalBlock(scope: !307, file: !3, line: 194, column: 17)
!313 = !DILocation(line: 196, column: 28, scope: !314)
!314 = distinct !DILexicalBlock(scope: !312, file: !3, line: 196, column: 21)
!315 = !DILocation(line: 196, column: 26, scope: !314)
!316 = !DILocation(line: 196, column: 33, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !3, line: 196, column: 21)
!318 = !DILocation(line: 196, column: 37, scope: !317)
!319 = !DILocation(line: 196, column: 35, scope: !317)
!320 = !DILocation(line: 196, column: 21, scope: !314)
!321 = !DILocation(line: 199, column: 36, scope: !322)
!322 = distinct !DILexicalBlock(scope: !317, file: !3, line: 197, column: 21)
!323 = !DILocation(line: 200, column: 21, scope: !322)
!324 = !DILocation(line: 196, column: 41, scope: !317)
!325 = !DILocation(line: 196, column: 21, scope: !317)
!326 = distinct !{!326, !320, !327, !118}
!327 = !DILocation(line: 200, column: 21, scope: !314)
!328 = !DILocation(line: 201, column: 34, scope: !312)
!329 = !DILocation(line: 201, column: 21, scope: !312)
!330 = !DILocation(line: 202, column: 17, scope: !312)
!331 = !DILocation(line: 203, column: 13, scope: !308)
!332 = !DILocation(line: 205, column: 5, scope: !295)
!333 = !DILocation(line: 206, column: 1, scope: !230)
!334 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 209, type: !16, scopeLine: 210, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!335 = !DILocalVariable(name: "data", scope: !334, file: !3, line: 211, type: !19)
!336 = !DILocation(line: 211, column: 12, scope: !334)
!337 = !DILocalVariable(name: "dataBuffer", scope: !334, file: !3, line: 212, type: !23)
!338 = !DILocation(line: 212, column: 10, scope: !334)
!339 = !DILocation(line: 213, column: 12, scope: !334)
!340 = !DILocation(line: 213, column: 10, scope: !334)
!341 = !DILocation(line: 214, column: 8, scope: !342)
!342 = distinct !DILexicalBlock(scope: !334, file: !3, line: 214, column: 8)
!343 = !DILocation(line: 214, column: 8, scope: !334)
!344 = !DILocation(line: 217, column: 9, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !3, line: 215, column: 5)
!346 = !DILocation(line: 218, column: 5, scope: !345)
!347 = !DILocation(line: 222, column: 16, scope: !348)
!348 = distinct !DILexicalBlock(scope: !342, file: !3, line: 220, column: 5)
!349 = !DILocation(line: 222, column: 9, scope: !348)
!350 = !DILocation(line: 224, column: 8, scope: !351)
!351 = distinct !DILexicalBlock(scope: !334, file: !3, line: 224, column: 8)
!352 = !DILocation(line: 224, column: 8, scope: !334)
!353 = !DILocalVariable(name: "i", scope: !354, file: !3, line: 227, type: !6)
!354 = distinct !DILexicalBlock(scope: !355, file: !3, line: 226, column: 9)
!355 = distinct !DILexicalBlock(scope: !351, file: !3, line: 225, column: 5)
!356 = !DILocation(line: 227, column: 17, scope: !354)
!357 = !DILocalVariable(name: "n", scope: !354, file: !3, line: 227, type: !6)
!358 = !DILocation(line: 227, column: 20, scope: !354)
!359 = !DILocalVariable(name: "intVariable", scope: !354, file: !3, line: 227, type: !6)
!360 = !DILocation(line: 227, column: 23, scope: !354)
!361 = !DILocation(line: 228, column: 24, scope: !362)
!362 = distinct !DILexicalBlock(scope: !354, file: !3, line: 228, column: 17)
!363 = !DILocation(line: 228, column: 17, scope: !362)
!364 = !DILocation(line: 228, column: 40, scope: !362)
!365 = !DILocation(line: 228, column: 17, scope: !354)
!366 = !DILocation(line: 231, column: 29, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !3, line: 229, column: 13)
!368 = !DILocation(line: 232, column: 24, scope: !369)
!369 = distinct !DILexicalBlock(scope: !367, file: !3, line: 232, column: 17)
!370 = !DILocation(line: 232, column: 22, scope: !369)
!371 = !DILocation(line: 232, column: 29, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !3, line: 232, column: 17)
!373 = !DILocation(line: 232, column: 33, scope: !372)
!374 = !DILocation(line: 232, column: 31, scope: !372)
!375 = !DILocation(line: 232, column: 17, scope: !369)
!376 = !DILocation(line: 235, column: 32, scope: !377)
!377 = distinct !DILexicalBlock(scope: !372, file: !3, line: 233, column: 17)
!378 = !DILocation(line: 236, column: 17, scope: !377)
!379 = !DILocation(line: 232, column: 37, scope: !372)
!380 = !DILocation(line: 232, column: 17, scope: !372)
!381 = distinct !{!381, !375, !382, !118}
!382 = !DILocation(line: 236, column: 17, scope: !369)
!383 = !DILocation(line: 237, column: 30, scope: !367)
!384 = !DILocation(line: 237, column: 17, scope: !367)
!385 = !DILocation(line: 238, column: 13, scope: !367)
!386 = !DILocation(line: 240, column: 5, scope: !355)
!387 = !DILocation(line: 241, column: 1, scope: !334)
!388 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 244, type: !16, scopeLine: 245, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!389 = !DILocalVariable(name: "data", scope: !388, file: !3, line: 246, type: !19)
!390 = !DILocation(line: 246, column: 12, scope: !388)
!391 = !DILocalVariable(name: "dataBuffer", scope: !388, file: !3, line: 247, type: !23)
!392 = !DILocation(line: 247, column: 10, scope: !388)
!393 = !DILocation(line: 248, column: 12, scope: !388)
!394 = !DILocation(line: 248, column: 10, scope: !388)
!395 = !DILocation(line: 249, column: 8, scope: !396)
!396 = distinct !DILexicalBlock(scope: !388, file: !3, line: 249, column: 8)
!397 = !DILocation(line: 249, column: 8, scope: !388)
!398 = !DILocation(line: 252, column: 16, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !3, line: 250, column: 5)
!400 = !DILocation(line: 252, column: 9, scope: !399)
!401 = !DILocation(line: 253, column: 5, scope: !399)
!402 = !DILocation(line: 254, column: 8, scope: !403)
!403 = distinct !DILexicalBlock(scope: !388, file: !3, line: 254, column: 8)
!404 = !DILocation(line: 254, column: 8, scope: !388)
!405 = !DILocalVariable(name: "i", scope: !406, file: !3, line: 257, type: !6)
!406 = distinct !DILexicalBlock(scope: !407, file: !3, line: 256, column: 9)
!407 = distinct !DILexicalBlock(scope: !403, file: !3, line: 255, column: 5)
!408 = !DILocation(line: 257, column: 17, scope: !406)
!409 = !DILocalVariable(name: "n", scope: !406, file: !3, line: 257, type: !6)
!410 = !DILocation(line: 257, column: 20, scope: !406)
!411 = !DILocalVariable(name: "intVariable", scope: !406, file: !3, line: 257, type: !6)
!412 = !DILocation(line: 257, column: 23, scope: !406)
!413 = !DILocation(line: 258, column: 24, scope: !414)
!414 = distinct !DILexicalBlock(scope: !406, file: !3, line: 258, column: 17)
!415 = !DILocation(line: 258, column: 17, scope: !414)
!416 = !DILocation(line: 258, column: 40, scope: !414)
!417 = !DILocation(line: 258, column: 17, scope: !406)
!418 = !DILocation(line: 261, column: 29, scope: !419)
!419 = distinct !DILexicalBlock(scope: !414, file: !3, line: 259, column: 13)
!420 = !DILocation(line: 262, column: 24, scope: !421)
!421 = distinct !DILexicalBlock(scope: !419, file: !3, line: 262, column: 17)
!422 = !DILocation(line: 262, column: 22, scope: !421)
!423 = !DILocation(line: 262, column: 29, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !3, line: 262, column: 17)
!425 = !DILocation(line: 262, column: 33, scope: !424)
!426 = !DILocation(line: 262, column: 31, scope: !424)
!427 = !DILocation(line: 262, column: 17, scope: !421)
!428 = !DILocation(line: 265, column: 32, scope: !429)
!429 = distinct !DILexicalBlock(scope: !424, file: !3, line: 263, column: 17)
!430 = !DILocation(line: 266, column: 17, scope: !429)
!431 = !DILocation(line: 262, column: 37, scope: !424)
!432 = !DILocation(line: 262, column: 17, scope: !424)
!433 = distinct !{!433, !427, !434, !118}
!434 = !DILocation(line: 266, column: 17, scope: !421)
!435 = !DILocation(line: 267, column: 30, scope: !419)
!436 = !DILocation(line: 267, column: 17, scope: !419)
!437 = !DILocation(line: 268, column: 13, scope: !419)
!438 = !DILocation(line: 270, column: 5, scope: !407)
!439 = !DILocation(line: 271, column: 1, scope: !388)
!440 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_05_good", scope: !3, file: !3, line: 273, type: !16, scopeLine: 274, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!441 = !DILocation(line: 275, column: 5, scope: !440)
!442 = !DILocation(line: 276, column: 5, scope: !440)
!443 = !DILocation(line: 277, column: 5, scope: !440)
!444 = !DILocation(line: 278, column: 5, scope: !440)
!445 = !DILocation(line: 279, column: 1, scope: !440)
