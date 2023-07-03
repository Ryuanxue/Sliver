; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_03.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_03.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_03_bad() #0 !dbg !10 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !24, metadata !DIExpression()), !dbg !31
  %1 = load i8*, i8** %data, align 8, !dbg !32
  %call = call i64 @strlen(i8* %1) #6, !dbg !33
  store i64 %call, i64* %dataLen, align 8, !dbg !31
  %2 = load i64, i64* %dataLen, align 8, !dbg !34
  %sub = sub i64 100, %2, !dbg !36
  %cmp = icmp ugt i64 %sub, 1, !dbg !37
  br i1 %cmp, label %if.then, label %if.end18, !dbg !38

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !39
  %4 = load i64, i64* %dataLen, align 8, !dbg !42
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !43
  %5 = load i64, i64* %dataLen, align 8, !dbg !44
  %sub1 = sub i64 100, %5, !dbg !45
  %conv = trunc i64 %sub1 to i32, !dbg !46
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !47
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !48
  %cmp3 = icmp ne i8* %call2, null, !dbg !49
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !50

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !51
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !53
  store i64 %call6, i64* %dataLen, align 8, !dbg !54
  %8 = load i64, i64* %dataLen, align 8, !dbg !55
  %cmp7 = icmp ugt i64 %8, 0, !dbg !57
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !58

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !59
  %10 = load i64, i64* %dataLen, align 8, !dbg !60
  %sub9 = sub i64 %10, 1, !dbg !61
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !59
  %11 = load i8, i8* %arrayidx, align 1, !dbg !59
  %conv10 = sext i8 %11 to i32, !dbg !59
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !62
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !63

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !64
  %13 = load i64, i64* %dataLen, align 8, !dbg !66
  %sub14 = sub i64 %13, 1, !dbg !67
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !64
  store i8 0, i8* %arrayidx15, align 1, !dbg !68
  br label %if.end, !dbg !69

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !70

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !71
  %14 = load i8*, i8** %data, align 8, !dbg !73
  %15 = load i64, i64* %dataLen, align 8, !dbg !74
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !73
  store i8 0, i8* %arrayidx16, align 1, !dbg !75
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !76

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !77, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %n, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !84, metadata !DIExpression()), !dbg !85
  %16 = load i8*, i8** %data, align 8, !dbg !86
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !88
  %cmp20 = icmp eq i32 %call19, 1, !dbg !89
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !90

if.then22:                                        ; preds = %if.end18
  store i32 0, i32* %intVariable, align 4, !dbg !91
  store i32 0, i32* %i, align 4, !dbg !93
  br label %for.cond, !dbg !95

for.cond:                                         ; preds = %for.inc, %if.then22
  %17 = load i32, i32* %i, align 4, !dbg !96
  %18 = load i32, i32* %n, align 4, !dbg !98
  %cmp23 = icmp slt i32 %17, %18, !dbg !99
  br i1 %cmp23, label %for.body, label %for.end, !dbg !100

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !101
  %inc = add nsw i32 %19, 1, !dbg !101
  store i32 %inc, i32* %intVariable, align 4, !dbg !101
  br label %for.inc, !dbg !103

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !104
  %inc25 = add nsw i32 %20, 1, !dbg !104
  store i32 %inc25, i32* %i, align 4, !dbg !104
  br label %for.cond, !dbg !105, !llvm.loop !106

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !109
  call void @printIntLine(i32 %21), !dbg !110
  br label %if.end26, !dbg !111

if.end26:                                         ; preds = %for.end, %if.end18
  ret void, !dbg !112
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
define dso_local void @goodB2G1() #0 !dbg !113 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !116, metadata !DIExpression()), !dbg !117
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !117
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !117
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !118
  store i8* %arraydecay, i8** %data, align 8, !dbg !119
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !120, metadata !DIExpression()), !dbg !124
  %1 = load i8*, i8** %data, align 8, !dbg !125
  %call = call i64 @strlen(i8* %1) #6, !dbg !126
  store i64 %call, i64* %dataLen, align 8, !dbg !124
  %2 = load i64, i64* %dataLen, align 8, !dbg !127
  %sub = sub i64 100, %2, !dbg !129
  %cmp = icmp ugt i64 %sub, 1, !dbg !130
  br i1 %cmp, label %if.then, label %if.end18, !dbg !131

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !132
  %4 = load i64, i64* %dataLen, align 8, !dbg !135
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !136
  %5 = load i64, i64* %dataLen, align 8, !dbg !137
  %sub1 = sub i64 100, %5, !dbg !138
  %conv = trunc i64 %sub1 to i32, !dbg !139
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !140
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !141
  %cmp3 = icmp ne i8* %call2, null, !dbg !142
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !143

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !144
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !146
  store i64 %call6, i64* %dataLen, align 8, !dbg !147
  %8 = load i64, i64* %dataLen, align 8, !dbg !148
  %cmp7 = icmp ugt i64 %8, 0, !dbg !150
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !151

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !152
  %10 = load i64, i64* %dataLen, align 8, !dbg !153
  %sub9 = sub i64 %10, 1, !dbg !154
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !152
  %11 = load i8, i8* %arrayidx, align 1, !dbg !152
  %conv10 = sext i8 %11 to i32, !dbg !152
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !155
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !156

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !157
  %13 = load i64, i64* %dataLen, align 8, !dbg !159
  %sub14 = sub i64 %13, 1, !dbg !160
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !157
  store i8 0, i8* %arrayidx15, align 1, !dbg !161
  br label %if.end, !dbg !162

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !163

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !164
  %14 = load i8*, i8** %data, align 8, !dbg !166
  %15 = load i64, i64* %dataLen, align 8, !dbg !167
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !166
  store i8 0, i8* %arrayidx16, align 1, !dbg !168
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !169

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !170, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %n, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !177, metadata !DIExpression()), !dbg !178
  %16 = load i8*, i8** %data, align 8, !dbg !179
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !181
  %cmp20 = icmp eq i32 %call19, 1, !dbg !182
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !183

if.then22:                                        ; preds = %if.end18
  %17 = load i32, i32* %n, align 4, !dbg !184
  %cmp23 = icmp slt i32 %17, 10000, !dbg !187
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !188

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !189
  store i32 0, i32* %i, align 4, !dbg !191
  br label %for.cond, !dbg !193

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %i, align 4, !dbg !194
  %19 = load i32, i32* %n, align 4, !dbg !196
  %cmp26 = icmp slt i32 %18, %19, !dbg !197
  br i1 %cmp26, label %for.body, label %for.end, !dbg !198

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !199
  %inc = add nsw i32 %20, 1, !dbg !199
  store i32 %inc, i32* %intVariable, align 4, !dbg !199
  br label %for.inc, !dbg !201

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !202
  %inc28 = add nsw i32 %21, 1, !dbg !202
  store i32 %inc28, i32* %i, align 4, !dbg !202
  br label %for.cond, !dbg !203, !llvm.loop !204

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !206
  call void @printIntLine(i32 %22), !dbg !207
  br label %if.end29, !dbg !208

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !209

if.end30:                                         ; preds = %if.end29, %if.end18
  ret void, !dbg !210
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !211 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !214, metadata !DIExpression()), !dbg !215
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !215
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !215
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !216
  store i8* %arraydecay, i8** %data, align 8, !dbg !217
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !218, metadata !DIExpression()), !dbg !222
  %1 = load i8*, i8** %data, align 8, !dbg !223
  %call = call i64 @strlen(i8* %1) #6, !dbg !224
  store i64 %call, i64* %dataLen, align 8, !dbg !222
  %2 = load i64, i64* %dataLen, align 8, !dbg !225
  %sub = sub i64 100, %2, !dbg !227
  %cmp = icmp ugt i64 %sub, 1, !dbg !228
  br i1 %cmp, label %if.then, label %if.end18, !dbg !229

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !230
  %4 = load i64, i64* %dataLen, align 8, !dbg !233
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !234
  %5 = load i64, i64* %dataLen, align 8, !dbg !235
  %sub1 = sub i64 100, %5, !dbg !236
  %conv = trunc i64 %sub1 to i32, !dbg !237
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !238
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !239
  %cmp3 = icmp ne i8* %call2, null, !dbg !240
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !241

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !242
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !244
  store i64 %call6, i64* %dataLen, align 8, !dbg !245
  %8 = load i64, i64* %dataLen, align 8, !dbg !246
  %cmp7 = icmp ugt i64 %8, 0, !dbg !248
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !249

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !250
  %10 = load i64, i64* %dataLen, align 8, !dbg !251
  %sub9 = sub i64 %10, 1, !dbg !252
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !250
  %11 = load i8, i8* %arrayidx, align 1, !dbg !250
  %conv10 = sext i8 %11 to i32, !dbg !250
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !253
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !254

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !255
  %13 = load i64, i64* %dataLen, align 8, !dbg !257
  %sub14 = sub i64 %13, 1, !dbg !258
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !255
  store i8 0, i8* %arrayidx15, align 1, !dbg !259
  br label %if.end, !dbg !260

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !261

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !262
  %14 = load i8*, i8** %data, align 8, !dbg !264
  %15 = load i64, i64* %dataLen, align 8, !dbg !265
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !264
  store i8 0, i8* %arrayidx16, align 1, !dbg !266
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !267

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !268, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata i32* %n, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !275, metadata !DIExpression()), !dbg !276
  %16 = load i8*, i8** %data, align 8, !dbg !277
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !279
  %cmp20 = icmp eq i32 %call19, 1, !dbg !280
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !281

if.then22:                                        ; preds = %if.end18
  %17 = load i32, i32* %n, align 4, !dbg !282
  %cmp23 = icmp slt i32 %17, 10000, !dbg !285
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !286

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !287
  store i32 0, i32* %i, align 4, !dbg !289
  br label %for.cond, !dbg !291

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %i, align 4, !dbg !292
  %19 = load i32, i32* %n, align 4, !dbg !294
  %cmp26 = icmp slt i32 %18, %19, !dbg !295
  br i1 %cmp26, label %for.body, label %for.end, !dbg !296

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !297
  %inc = add nsw i32 %20, 1, !dbg !297
  store i32 %inc, i32* %intVariable, align 4, !dbg !297
  br label %for.inc, !dbg !299

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !300
  %inc28 = add nsw i32 %21, 1, !dbg !300
  store i32 %inc28, i32* %i, align 4, !dbg !300
  br label %for.cond, !dbg !301, !llvm.loop !302

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !304
  call void @printIntLine(i32 %22), !dbg !305
  br label %if.end29, !dbg !306

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !307

if.end30:                                         ; preds = %if.end29, %if.end18
  ret void, !dbg !308
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !309 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !310, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !313
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !313
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !314
  store i8* %arraydecay, i8** %data, align 8, !dbg !315
  %1 = load i8*, i8** %data, align 8, !dbg !316
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !319
  call void @llvm.dbg.declare(metadata i32* %i, metadata !320, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata i32* %n, metadata !325, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !327, metadata !DIExpression()), !dbg !328
  %2 = load i8*, i8** %data, align 8, !dbg !329
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !331
  %cmp = icmp eq i32 %call1, 1, !dbg !332
  br i1 %cmp, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !334
  store i32 0, i32* %i, align 4, !dbg !336
  br label %for.cond, !dbg !338

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !339
  %4 = load i32, i32* %n, align 4, !dbg !341
  %cmp2 = icmp slt i32 %3, %4, !dbg !342
  br i1 %cmp2, label %for.body, label %for.end, !dbg !343

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !344
  %inc = add nsw i32 %5, 1, !dbg !344
  store i32 %inc, i32* %intVariable, align 4, !dbg !344
  br label %for.inc, !dbg !346

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !347
  %inc3 = add nsw i32 %6, 1, !dbg !347
  store i32 %inc3, i32* %i, align 4, !dbg !347
  br label %for.cond, !dbg !348, !llvm.loop !349

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !351
  call void @printIntLine(i32 %7), !dbg !352
  br label %if.end, !dbg !353

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !354
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !355 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !356, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !359
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !359
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !360
  store i8* %arraydecay, i8** %data, align 8, !dbg !361
  %1 = load i8*, i8** %data, align 8, !dbg !362
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !365
  call void @llvm.dbg.declare(metadata i32* %i, metadata !366, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata i32* %n, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !373, metadata !DIExpression()), !dbg !374
  %2 = load i8*, i8** %data, align 8, !dbg !375
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !377
  %cmp = icmp eq i32 %call1, 1, !dbg !378
  br i1 %cmp, label %if.then, label %if.end, !dbg !379

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !380
  store i32 0, i32* %i, align 4, !dbg !382
  br label %for.cond, !dbg !384

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !385
  %4 = load i32, i32* %n, align 4, !dbg !387
  %cmp2 = icmp slt i32 %3, %4, !dbg !388
  br i1 %cmp2, label %for.body, label %for.end, !dbg !389

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !390
  %inc = add nsw i32 %5, 1, !dbg !390
  store i32 %inc, i32* %intVariable, align 4, !dbg !390
  br label %for.inc, !dbg !392

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !393
  %inc3 = add nsw i32 %6, 1, !dbg !393
  store i32 %inc3, i32* %i, align 4, !dbg !393
  br label %for.cond, !dbg !394, !llvm.loop !395

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !397
  call void @printIntLine(i32 %7), !dbg !398
  br label %if.end, !dbg !399

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_03_good() #0 !dbg !401 {
entry:
  call void @goodB2G1(), !dbg !402
  call void @goodB2G2(), !dbg !403
  call void @goodG2B1(), !dbg !404
  call void @goodG2B2(), !dbg !405
  ret void, !dbg !406
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_03.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_980/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_03_bad", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 38, type: !28)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 36, column: 9)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 35, column: 5)
!27 = distinct !DILexicalBlock(scope: !10, file: !1, line: 34, column: 8)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 38, column: 20, scope: !25)
!32 = !DILocation(line: 38, column: 37, scope: !25)
!33 = !DILocation(line: 38, column: 30, scope: !25)
!34 = !DILocation(line: 40, column: 21, scope: !35)
!35 = distinct !DILexicalBlock(scope: !25, file: !1, line: 40, column: 17)
!36 = !DILocation(line: 40, column: 20, scope: !35)
!37 = !DILocation(line: 40, column: 29, scope: !35)
!38 = !DILocation(line: 40, column: 17, scope: !25)
!39 = !DILocation(line: 43, column: 27, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 43, column: 21)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 41, column: 13)
!42 = !DILocation(line: 43, column: 32, scope: !40)
!43 = !DILocation(line: 43, column: 31, scope: !40)
!44 = !DILocation(line: 43, column: 51, scope: !40)
!45 = !DILocation(line: 43, column: 50, scope: !40)
!46 = !DILocation(line: 43, column: 41, scope: !40)
!47 = !DILocation(line: 43, column: 61, scope: !40)
!48 = !DILocation(line: 43, column: 21, scope: !40)
!49 = !DILocation(line: 43, column: 68, scope: !40)
!50 = !DILocation(line: 43, column: 21, scope: !41)
!51 = !DILocation(line: 47, column: 38, scope: !52)
!52 = distinct !DILexicalBlock(scope: !40, file: !1, line: 44, column: 17)
!53 = !DILocation(line: 47, column: 31, scope: !52)
!54 = !DILocation(line: 47, column: 29, scope: !52)
!55 = !DILocation(line: 48, column: 25, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !1, line: 48, column: 25)
!57 = !DILocation(line: 48, column: 33, scope: !56)
!58 = !DILocation(line: 48, column: 37, scope: !56)
!59 = !DILocation(line: 48, column: 40, scope: !56)
!60 = !DILocation(line: 48, column: 45, scope: !56)
!61 = !DILocation(line: 48, column: 52, scope: !56)
!62 = !DILocation(line: 48, column: 56, scope: !56)
!63 = !DILocation(line: 48, column: 25, scope: !52)
!64 = !DILocation(line: 50, column: 25, scope: !65)
!65 = distinct !DILexicalBlock(scope: !56, file: !1, line: 49, column: 21)
!66 = !DILocation(line: 50, column: 30, scope: !65)
!67 = !DILocation(line: 50, column: 37, scope: !65)
!68 = !DILocation(line: 50, column: 41, scope: !65)
!69 = !DILocation(line: 51, column: 21, scope: !65)
!70 = !DILocation(line: 52, column: 17, scope: !52)
!71 = !DILocation(line: 55, column: 21, scope: !72)
!72 = distinct !DILexicalBlock(scope: !40, file: !1, line: 54, column: 17)
!73 = !DILocation(line: 57, column: 21, scope: !72)
!74 = !DILocation(line: 57, column: 26, scope: !72)
!75 = !DILocation(line: 57, column: 35, scope: !72)
!76 = !DILocation(line: 59, column: 13, scope: !41)
!77 = !DILocalVariable(name: "i", scope: !78, file: !1, line: 65, type: !4)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 64, column: 9)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 63, column: 5)
!80 = distinct !DILexicalBlock(scope: !10, file: !1, line: 62, column: 8)
!81 = !DILocation(line: 65, column: 17, scope: !78)
!82 = !DILocalVariable(name: "n", scope: !78, file: !1, line: 65, type: !4)
!83 = !DILocation(line: 65, column: 20, scope: !78)
!84 = !DILocalVariable(name: "intVariable", scope: !78, file: !1, line: 65, type: !4)
!85 = !DILocation(line: 65, column: 23, scope: !78)
!86 = !DILocation(line: 66, column: 24, scope: !87)
!87 = distinct !DILexicalBlock(scope: !78, file: !1, line: 66, column: 17)
!88 = !DILocation(line: 66, column: 17, scope: !87)
!89 = !DILocation(line: 66, column: 40, scope: !87)
!90 = !DILocation(line: 66, column: 17, scope: !78)
!91 = !DILocation(line: 69, column: 29, scope: !92)
!92 = distinct !DILexicalBlock(scope: !87, file: !1, line: 67, column: 13)
!93 = !DILocation(line: 70, column: 24, scope: !94)
!94 = distinct !DILexicalBlock(scope: !92, file: !1, line: 70, column: 17)
!95 = !DILocation(line: 70, column: 22, scope: !94)
!96 = !DILocation(line: 70, column: 29, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 70, column: 17)
!98 = !DILocation(line: 70, column: 33, scope: !97)
!99 = !DILocation(line: 70, column: 31, scope: !97)
!100 = !DILocation(line: 70, column: 17, scope: !94)
!101 = !DILocation(line: 73, column: 32, scope: !102)
!102 = distinct !DILexicalBlock(scope: !97, file: !1, line: 71, column: 17)
!103 = !DILocation(line: 74, column: 17, scope: !102)
!104 = !DILocation(line: 70, column: 37, scope: !97)
!105 = !DILocation(line: 70, column: 17, scope: !97)
!106 = distinct !{!106, !100, !107, !108}
!107 = !DILocation(line: 74, column: 17, scope: !94)
!108 = !{!"llvm.loop.mustprogress"}
!109 = !DILocation(line: 75, column: 30, scope: !92)
!110 = !DILocation(line: 75, column: 17, scope: !92)
!111 = !DILocation(line: 76, column: 13, scope: !92)
!112 = !DILocation(line: 79, column: 1, scope: !10)
!113 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 86, type: !11, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!114 = !DILocalVariable(name: "data", scope: !113, file: !1, line: 88, type: !14)
!115 = !DILocation(line: 88, column: 12, scope: !113)
!116 = !DILocalVariable(name: "dataBuffer", scope: !113, file: !1, line: 89, type: !18)
!117 = !DILocation(line: 89, column: 10, scope: !113)
!118 = !DILocation(line: 90, column: 12, scope: !113)
!119 = !DILocation(line: 90, column: 10, scope: !113)
!120 = !DILocalVariable(name: "dataLen", scope: !121, file: !1, line: 95, type: !28)
!121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 93, column: 9)
!122 = distinct !DILexicalBlock(scope: !123, file: !1, line: 92, column: 5)
!123 = distinct !DILexicalBlock(scope: !113, file: !1, line: 91, column: 8)
!124 = !DILocation(line: 95, column: 20, scope: !121)
!125 = !DILocation(line: 95, column: 37, scope: !121)
!126 = !DILocation(line: 95, column: 30, scope: !121)
!127 = !DILocation(line: 97, column: 21, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !1, line: 97, column: 17)
!129 = !DILocation(line: 97, column: 20, scope: !128)
!130 = !DILocation(line: 97, column: 29, scope: !128)
!131 = !DILocation(line: 97, column: 17, scope: !121)
!132 = !DILocation(line: 100, column: 27, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 100, column: 21)
!134 = distinct !DILexicalBlock(scope: !128, file: !1, line: 98, column: 13)
!135 = !DILocation(line: 100, column: 32, scope: !133)
!136 = !DILocation(line: 100, column: 31, scope: !133)
!137 = !DILocation(line: 100, column: 51, scope: !133)
!138 = !DILocation(line: 100, column: 50, scope: !133)
!139 = !DILocation(line: 100, column: 41, scope: !133)
!140 = !DILocation(line: 100, column: 61, scope: !133)
!141 = !DILocation(line: 100, column: 21, scope: !133)
!142 = !DILocation(line: 100, column: 68, scope: !133)
!143 = !DILocation(line: 100, column: 21, scope: !134)
!144 = !DILocation(line: 104, column: 38, scope: !145)
!145 = distinct !DILexicalBlock(scope: !133, file: !1, line: 101, column: 17)
!146 = !DILocation(line: 104, column: 31, scope: !145)
!147 = !DILocation(line: 104, column: 29, scope: !145)
!148 = !DILocation(line: 105, column: 25, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 105, column: 25)
!150 = !DILocation(line: 105, column: 33, scope: !149)
!151 = !DILocation(line: 105, column: 37, scope: !149)
!152 = !DILocation(line: 105, column: 40, scope: !149)
!153 = !DILocation(line: 105, column: 45, scope: !149)
!154 = !DILocation(line: 105, column: 52, scope: !149)
!155 = !DILocation(line: 105, column: 56, scope: !149)
!156 = !DILocation(line: 105, column: 25, scope: !145)
!157 = !DILocation(line: 107, column: 25, scope: !158)
!158 = distinct !DILexicalBlock(scope: !149, file: !1, line: 106, column: 21)
!159 = !DILocation(line: 107, column: 30, scope: !158)
!160 = !DILocation(line: 107, column: 37, scope: !158)
!161 = !DILocation(line: 107, column: 41, scope: !158)
!162 = !DILocation(line: 108, column: 21, scope: !158)
!163 = !DILocation(line: 109, column: 17, scope: !145)
!164 = !DILocation(line: 112, column: 21, scope: !165)
!165 = distinct !DILexicalBlock(scope: !133, file: !1, line: 111, column: 17)
!166 = !DILocation(line: 114, column: 21, scope: !165)
!167 = !DILocation(line: 114, column: 26, scope: !165)
!168 = !DILocation(line: 114, column: 35, scope: !165)
!169 = !DILocation(line: 116, column: 13, scope: !134)
!170 = !DILocalVariable(name: "i", scope: !171, file: !1, line: 127, type: !4)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 126, column: 9)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 125, column: 5)
!173 = distinct !DILexicalBlock(scope: !113, file: !1, line: 119, column: 8)
!174 = !DILocation(line: 127, column: 17, scope: !171)
!175 = !DILocalVariable(name: "n", scope: !171, file: !1, line: 127, type: !4)
!176 = !DILocation(line: 127, column: 20, scope: !171)
!177 = !DILocalVariable(name: "intVariable", scope: !171, file: !1, line: 127, type: !4)
!178 = !DILocation(line: 127, column: 23, scope: !171)
!179 = !DILocation(line: 128, column: 24, scope: !180)
!180 = distinct !DILexicalBlock(scope: !171, file: !1, line: 128, column: 17)
!181 = !DILocation(line: 128, column: 17, scope: !180)
!182 = !DILocation(line: 128, column: 40, scope: !180)
!183 = !DILocation(line: 128, column: 17, scope: !171)
!184 = !DILocation(line: 131, column: 21, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 131, column: 21)
!186 = distinct !DILexicalBlock(scope: !180, file: !1, line: 129, column: 13)
!187 = !DILocation(line: 131, column: 23, scope: !185)
!188 = !DILocation(line: 131, column: 21, scope: !186)
!189 = !DILocation(line: 133, column: 33, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !1, line: 132, column: 17)
!191 = !DILocation(line: 134, column: 28, scope: !192)
!192 = distinct !DILexicalBlock(scope: !190, file: !1, line: 134, column: 21)
!193 = !DILocation(line: 134, column: 26, scope: !192)
!194 = !DILocation(line: 134, column: 33, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 134, column: 21)
!196 = !DILocation(line: 134, column: 37, scope: !195)
!197 = !DILocation(line: 134, column: 35, scope: !195)
!198 = !DILocation(line: 134, column: 21, scope: !192)
!199 = !DILocation(line: 137, column: 36, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !1, line: 135, column: 21)
!201 = !DILocation(line: 138, column: 21, scope: !200)
!202 = !DILocation(line: 134, column: 41, scope: !195)
!203 = !DILocation(line: 134, column: 21, scope: !195)
!204 = distinct !{!204, !198, !205, !108}
!205 = !DILocation(line: 138, column: 21, scope: !192)
!206 = !DILocation(line: 139, column: 34, scope: !190)
!207 = !DILocation(line: 139, column: 21, scope: !190)
!208 = !DILocation(line: 140, column: 17, scope: !190)
!209 = !DILocation(line: 141, column: 13, scope: !186)
!210 = !DILocation(line: 144, column: 1, scope: !113)
!211 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 147, type: !11, scopeLine: 148, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!212 = !DILocalVariable(name: "data", scope: !211, file: !1, line: 149, type: !14)
!213 = !DILocation(line: 149, column: 12, scope: !211)
!214 = !DILocalVariable(name: "dataBuffer", scope: !211, file: !1, line: 150, type: !18)
!215 = !DILocation(line: 150, column: 10, scope: !211)
!216 = !DILocation(line: 151, column: 12, scope: !211)
!217 = !DILocation(line: 151, column: 10, scope: !211)
!218 = !DILocalVariable(name: "dataLen", scope: !219, file: !1, line: 156, type: !28)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 154, column: 9)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 153, column: 5)
!221 = distinct !DILexicalBlock(scope: !211, file: !1, line: 152, column: 8)
!222 = !DILocation(line: 156, column: 20, scope: !219)
!223 = !DILocation(line: 156, column: 37, scope: !219)
!224 = !DILocation(line: 156, column: 30, scope: !219)
!225 = !DILocation(line: 158, column: 21, scope: !226)
!226 = distinct !DILexicalBlock(scope: !219, file: !1, line: 158, column: 17)
!227 = !DILocation(line: 158, column: 20, scope: !226)
!228 = !DILocation(line: 158, column: 29, scope: !226)
!229 = !DILocation(line: 158, column: 17, scope: !219)
!230 = !DILocation(line: 161, column: 27, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !1, line: 161, column: 21)
!232 = distinct !DILexicalBlock(scope: !226, file: !1, line: 159, column: 13)
!233 = !DILocation(line: 161, column: 32, scope: !231)
!234 = !DILocation(line: 161, column: 31, scope: !231)
!235 = !DILocation(line: 161, column: 51, scope: !231)
!236 = !DILocation(line: 161, column: 50, scope: !231)
!237 = !DILocation(line: 161, column: 41, scope: !231)
!238 = !DILocation(line: 161, column: 61, scope: !231)
!239 = !DILocation(line: 161, column: 21, scope: !231)
!240 = !DILocation(line: 161, column: 68, scope: !231)
!241 = !DILocation(line: 161, column: 21, scope: !232)
!242 = !DILocation(line: 165, column: 38, scope: !243)
!243 = distinct !DILexicalBlock(scope: !231, file: !1, line: 162, column: 17)
!244 = !DILocation(line: 165, column: 31, scope: !243)
!245 = !DILocation(line: 165, column: 29, scope: !243)
!246 = !DILocation(line: 166, column: 25, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !1, line: 166, column: 25)
!248 = !DILocation(line: 166, column: 33, scope: !247)
!249 = !DILocation(line: 166, column: 37, scope: !247)
!250 = !DILocation(line: 166, column: 40, scope: !247)
!251 = !DILocation(line: 166, column: 45, scope: !247)
!252 = !DILocation(line: 166, column: 52, scope: !247)
!253 = !DILocation(line: 166, column: 56, scope: !247)
!254 = !DILocation(line: 166, column: 25, scope: !243)
!255 = !DILocation(line: 168, column: 25, scope: !256)
!256 = distinct !DILexicalBlock(scope: !247, file: !1, line: 167, column: 21)
!257 = !DILocation(line: 168, column: 30, scope: !256)
!258 = !DILocation(line: 168, column: 37, scope: !256)
!259 = !DILocation(line: 168, column: 41, scope: !256)
!260 = !DILocation(line: 169, column: 21, scope: !256)
!261 = !DILocation(line: 170, column: 17, scope: !243)
!262 = !DILocation(line: 173, column: 21, scope: !263)
!263 = distinct !DILexicalBlock(scope: !231, file: !1, line: 172, column: 17)
!264 = !DILocation(line: 175, column: 21, scope: !263)
!265 = !DILocation(line: 175, column: 26, scope: !263)
!266 = !DILocation(line: 175, column: 35, scope: !263)
!267 = !DILocation(line: 177, column: 13, scope: !232)
!268 = !DILocalVariable(name: "i", scope: !269, file: !1, line: 183, type: !4)
!269 = distinct !DILexicalBlock(scope: !270, file: !1, line: 182, column: 9)
!270 = distinct !DILexicalBlock(scope: !271, file: !1, line: 181, column: 5)
!271 = distinct !DILexicalBlock(scope: !211, file: !1, line: 180, column: 8)
!272 = !DILocation(line: 183, column: 17, scope: !269)
!273 = !DILocalVariable(name: "n", scope: !269, file: !1, line: 183, type: !4)
!274 = !DILocation(line: 183, column: 20, scope: !269)
!275 = !DILocalVariable(name: "intVariable", scope: !269, file: !1, line: 183, type: !4)
!276 = !DILocation(line: 183, column: 23, scope: !269)
!277 = !DILocation(line: 184, column: 24, scope: !278)
!278 = distinct !DILexicalBlock(scope: !269, file: !1, line: 184, column: 17)
!279 = !DILocation(line: 184, column: 17, scope: !278)
!280 = !DILocation(line: 184, column: 40, scope: !278)
!281 = !DILocation(line: 184, column: 17, scope: !269)
!282 = !DILocation(line: 187, column: 21, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 187, column: 21)
!284 = distinct !DILexicalBlock(scope: !278, file: !1, line: 185, column: 13)
!285 = !DILocation(line: 187, column: 23, scope: !283)
!286 = !DILocation(line: 187, column: 21, scope: !284)
!287 = !DILocation(line: 189, column: 33, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !1, line: 188, column: 17)
!289 = !DILocation(line: 190, column: 28, scope: !290)
!290 = distinct !DILexicalBlock(scope: !288, file: !1, line: 190, column: 21)
!291 = !DILocation(line: 190, column: 26, scope: !290)
!292 = !DILocation(line: 190, column: 33, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !1, line: 190, column: 21)
!294 = !DILocation(line: 190, column: 37, scope: !293)
!295 = !DILocation(line: 190, column: 35, scope: !293)
!296 = !DILocation(line: 190, column: 21, scope: !290)
!297 = !DILocation(line: 193, column: 36, scope: !298)
!298 = distinct !DILexicalBlock(scope: !293, file: !1, line: 191, column: 21)
!299 = !DILocation(line: 194, column: 21, scope: !298)
!300 = !DILocation(line: 190, column: 41, scope: !293)
!301 = !DILocation(line: 190, column: 21, scope: !293)
!302 = distinct !{!302, !296, !303, !108}
!303 = !DILocation(line: 194, column: 21, scope: !290)
!304 = !DILocation(line: 195, column: 34, scope: !288)
!305 = !DILocation(line: 195, column: 21, scope: !288)
!306 = !DILocation(line: 196, column: 17, scope: !288)
!307 = !DILocation(line: 197, column: 13, scope: !284)
!308 = !DILocation(line: 200, column: 1, scope: !211)
!309 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 203, type: !11, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!310 = !DILocalVariable(name: "data", scope: !309, file: !1, line: 205, type: !14)
!311 = !DILocation(line: 205, column: 12, scope: !309)
!312 = !DILocalVariable(name: "dataBuffer", scope: !309, file: !1, line: 206, type: !18)
!313 = !DILocation(line: 206, column: 10, scope: !309)
!314 = !DILocation(line: 207, column: 12, scope: !309)
!315 = !DILocation(line: 207, column: 10, scope: !309)
!316 = !DILocation(line: 216, column: 16, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 214, column: 5)
!318 = distinct !DILexicalBlock(scope: !309, file: !1, line: 208, column: 8)
!319 = !DILocation(line: 216, column: 9, scope: !317)
!320 = !DILocalVariable(name: "i", scope: !321, file: !1, line: 221, type: !4)
!321 = distinct !DILexicalBlock(scope: !322, file: !1, line: 220, column: 9)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 219, column: 5)
!323 = distinct !DILexicalBlock(scope: !309, file: !1, line: 218, column: 8)
!324 = !DILocation(line: 221, column: 17, scope: !321)
!325 = !DILocalVariable(name: "n", scope: !321, file: !1, line: 221, type: !4)
!326 = !DILocation(line: 221, column: 20, scope: !321)
!327 = !DILocalVariable(name: "intVariable", scope: !321, file: !1, line: 221, type: !4)
!328 = !DILocation(line: 221, column: 23, scope: !321)
!329 = !DILocation(line: 222, column: 24, scope: !330)
!330 = distinct !DILexicalBlock(scope: !321, file: !1, line: 222, column: 17)
!331 = !DILocation(line: 222, column: 17, scope: !330)
!332 = !DILocation(line: 222, column: 40, scope: !330)
!333 = !DILocation(line: 222, column: 17, scope: !321)
!334 = !DILocation(line: 225, column: 29, scope: !335)
!335 = distinct !DILexicalBlock(scope: !330, file: !1, line: 223, column: 13)
!336 = !DILocation(line: 226, column: 24, scope: !337)
!337 = distinct !DILexicalBlock(scope: !335, file: !1, line: 226, column: 17)
!338 = !DILocation(line: 226, column: 22, scope: !337)
!339 = !DILocation(line: 226, column: 29, scope: !340)
!340 = distinct !DILexicalBlock(scope: !337, file: !1, line: 226, column: 17)
!341 = !DILocation(line: 226, column: 33, scope: !340)
!342 = !DILocation(line: 226, column: 31, scope: !340)
!343 = !DILocation(line: 226, column: 17, scope: !337)
!344 = !DILocation(line: 229, column: 32, scope: !345)
!345 = distinct !DILexicalBlock(scope: !340, file: !1, line: 227, column: 17)
!346 = !DILocation(line: 230, column: 17, scope: !345)
!347 = !DILocation(line: 226, column: 37, scope: !340)
!348 = !DILocation(line: 226, column: 17, scope: !340)
!349 = distinct !{!349, !343, !350, !108}
!350 = !DILocation(line: 230, column: 17, scope: !337)
!351 = !DILocation(line: 231, column: 30, scope: !335)
!352 = !DILocation(line: 231, column: 17, scope: !335)
!353 = !DILocation(line: 232, column: 13, scope: !335)
!354 = !DILocation(line: 235, column: 1, scope: !309)
!355 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 238, type: !11, scopeLine: 239, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!356 = !DILocalVariable(name: "data", scope: !355, file: !1, line: 240, type: !14)
!357 = !DILocation(line: 240, column: 12, scope: !355)
!358 = !DILocalVariable(name: "dataBuffer", scope: !355, file: !1, line: 241, type: !18)
!359 = !DILocation(line: 241, column: 10, scope: !355)
!360 = !DILocation(line: 242, column: 12, scope: !355)
!361 = !DILocation(line: 242, column: 10, scope: !355)
!362 = !DILocation(line: 246, column: 16, scope: !363)
!363 = distinct !DILexicalBlock(scope: !364, file: !1, line: 244, column: 5)
!364 = distinct !DILexicalBlock(scope: !355, file: !1, line: 243, column: 8)
!365 = !DILocation(line: 246, column: 9, scope: !363)
!366 = !DILocalVariable(name: "i", scope: !367, file: !1, line: 251, type: !4)
!367 = distinct !DILexicalBlock(scope: !368, file: !1, line: 250, column: 9)
!368 = distinct !DILexicalBlock(scope: !369, file: !1, line: 249, column: 5)
!369 = distinct !DILexicalBlock(scope: !355, file: !1, line: 248, column: 8)
!370 = !DILocation(line: 251, column: 17, scope: !367)
!371 = !DILocalVariable(name: "n", scope: !367, file: !1, line: 251, type: !4)
!372 = !DILocation(line: 251, column: 20, scope: !367)
!373 = !DILocalVariable(name: "intVariable", scope: !367, file: !1, line: 251, type: !4)
!374 = !DILocation(line: 251, column: 23, scope: !367)
!375 = !DILocation(line: 252, column: 24, scope: !376)
!376 = distinct !DILexicalBlock(scope: !367, file: !1, line: 252, column: 17)
!377 = !DILocation(line: 252, column: 17, scope: !376)
!378 = !DILocation(line: 252, column: 40, scope: !376)
!379 = !DILocation(line: 252, column: 17, scope: !367)
!380 = !DILocation(line: 255, column: 29, scope: !381)
!381 = distinct !DILexicalBlock(scope: !376, file: !1, line: 253, column: 13)
!382 = !DILocation(line: 256, column: 24, scope: !383)
!383 = distinct !DILexicalBlock(scope: !381, file: !1, line: 256, column: 17)
!384 = !DILocation(line: 256, column: 22, scope: !383)
!385 = !DILocation(line: 256, column: 29, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !1, line: 256, column: 17)
!387 = !DILocation(line: 256, column: 33, scope: !386)
!388 = !DILocation(line: 256, column: 31, scope: !386)
!389 = !DILocation(line: 256, column: 17, scope: !383)
!390 = !DILocation(line: 259, column: 32, scope: !391)
!391 = distinct !DILexicalBlock(scope: !386, file: !1, line: 257, column: 17)
!392 = !DILocation(line: 260, column: 17, scope: !391)
!393 = !DILocation(line: 256, column: 37, scope: !386)
!394 = !DILocation(line: 256, column: 17, scope: !386)
!395 = distinct !{!395, !389, !396, !108}
!396 = !DILocation(line: 260, column: 17, scope: !383)
!397 = !DILocation(line: 261, column: 30, scope: !381)
!398 = !DILocation(line: 261, column: 17, scope: !381)
!399 = !DILocation(line: 262, column: 13, scope: !381)
!400 = !DILocation(line: 265, column: 1, scope: !355)
!401 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_03_good", scope: !1, file: !1, line: 267, type: !11, scopeLine: 268, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!402 = !DILocation(line: 269, column: 5, scope: !401)
!403 = !DILocation(line: 270, column: 5, scope: !401)
!404 = !DILocation(line: 271, column: 5, scope: !401)
!405 = !DILocation(line: 272, column: 5, scope: !401)
!406 = !DILocation(line: 273, column: 1, scope: !401)
