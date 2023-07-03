; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_15.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_15.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_15_bad() #0 !dbg !10 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !24, metadata !DIExpression()), !dbg !29
  %1 = load i8*, i8** %data, align 8, !dbg !30
  %call = call i64 @strlen(i8* %1) #6, !dbg !31
  store i64 %call, i64* %dataLen, align 8, !dbg !29
  %2 = load i64, i64* %dataLen, align 8, !dbg !32
  %sub = sub i64 100, %2, !dbg !34
  %cmp = icmp ugt i64 %sub, 1, !dbg !35
  br i1 %cmp, label %if.then, label %if.end18, !dbg !36

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !37
  %4 = load i64, i64* %dataLen, align 8, !dbg !40
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !41
  %5 = load i64, i64* %dataLen, align 8, !dbg !42
  %sub1 = sub i64 100, %5, !dbg !43
  %conv = trunc i64 %sub1 to i32, !dbg !44
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !45
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !46
  %cmp3 = icmp ne i8* %call2, null, !dbg !47
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !48

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !49
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !51
  store i64 %call6, i64* %dataLen, align 8, !dbg !52
  %8 = load i64, i64* %dataLen, align 8, !dbg !53
  %cmp7 = icmp ugt i64 %8, 0, !dbg !55
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !56

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !57
  %10 = load i64, i64* %dataLen, align 8, !dbg !58
  %sub9 = sub i64 %10, 1, !dbg !59
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !57
  %11 = load i8, i8* %arrayidx, align 1, !dbg !57
  %conv10 = sext i8 %11 to i32, !dbg !57
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !60
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !61

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !62
  %13 = load i64, i64* %dataLen, align 8, !dbg !64
  %sub14 = sub i64 %13, 1, !dbg !65
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !62
  store i8 0, i8* %arrayidx15, align 1, !dbg !66
  br label %if.end, !dbg !67

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !68

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !69
  %14 = load i8*, i8** %data, align 8, !dbg !71
  %15 = load i64, i64* %dataLen, align 8, !dbg !72
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !71
  store i8 0, i8* %arrayidx16, align 1, !dbg !73
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !74

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !75, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %n, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !80, metadata !DIExpression()), !dbg !81
  %16 = load i8*, i8** %data, align 8, !dbg !82
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !84
  %cmp20 = icmp eq i32 %call19, 1, !dbg !85
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !86

if.then22:                                        ; preds = %if.end18
  store i32 0, i32* %intVariable, align 4, !dbg !87
  store i32 0, i32* %i, align 4, !dbg !89
  br label %for.cond, !dbg !91

for.cond:                                         ; preds = %for.inc, %if.then22
  %17 = load i32, i32* %i, align 4, !dbg !92
  %18 = load i32, i32* %n, align 4, !dbg !94
  %cmp23 = icmp slt i32 %17, %18, !dbg !95
  br i1 %cmp23, label %for.body, label %for.end, !dbg !96

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !97
  %inc = add nsw i32 %19, 1, !dbg !97
  store i32 %inc, i32* %intVariable, align 4, !dbg !97
  br label %for.inc, !dbg !99

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !100
  %inc25 = add nsw i32 %20, 1, !dbg !100
  store i32 %inc25, i32* %i, align 4, !dbg !100
  br label %for.cond, !dbg !101, !llvm.loop !102

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !105
  call void @printIntLine(i32 %21), !dbg !106
  br label %if.end26, !dbg !107

if.end26:                                         ; preds = %for.end, %if.end18
  ret void, !dbg !108
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
define dso_local void @goodB2G1() #0 !dbg !109 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !112, metadata !DIExpression()), !dbg !113
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !113
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !113
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !114
  store i8* %arraydecay, i8** %data, align 8, !dbg !115
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !116, metadata !DIExpression()), !dbg !118
  %1 = load i8*, i8** %data, align 8, !dbg !119
  %call = call i64 @strlen(i8* %1) #6, !dbg !120
  store i64 %call, i64* %dataLen, align 8, !dbg !118
  %2 = load i64, i64* %dataLen, align 8, !dbg !121
  %sub = sub i64 100, %2, !dbg !123
  %cmp = icmp ugt i64 %sub, 1, !dbg !124
  br i1 %cmp, label %if.then, label %if.end18, !dbg !125

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !126
  %4 = load i64, i64* %dataLen, align 8, !dbg !129
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !130
  %5 = load i64, i64* %dataLen, align 8, !dbg !131
  %sub1 = sub i64 100, %5, !dbg !132
  %conv = trunc i64 %sub1 to i32, !dbg !133
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !134
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !135
  %cmp3 = icmp ne i8* %call2, null, !dbg !136
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !137

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !138
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !140
  store i64 %call6, i64* %dataLen, align 8, !dbg !141
  %8 = load i64, i64* %dataLen, align 8, !dbg !142
  %cmp7 = icmp ugt i64 %8, 0, !dbg !144
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !145

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !146
  %10 = load i64, i64* %dataLen, align 8, !dbg !147
  %sub9 = sub i64 %10, 1, !dbg !148
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !146
  %11 = load i8, i8* %arrayidx, align 1, !dbg !146
  %conv10 = sext i8 %11 to i32, !dbg !146
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !149
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !150

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !151
  %13 = load i64, i64* %dataLen, align 8, !dbg !153
  %sub14 = sub i64 %13, 1, !dbg !154
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !151
  store i8 0, i8* %arrayidx15, align 1, !dbg !155
  br label %if.end, !dbg !156

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !157

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !158
  %14 = load i8*, i8** %data, align 8, !dbg !160
  %15 = load i64, i64* %dataLen, align 8, !dbg !161
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !160
  store i8 0, i8* %arrayidx16, align 1, !dbg !162
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !163

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !164, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i32* %n, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !169, metadata !DIExpression()), !dbg !170
  %16 = load i8*, i8** %data, align 8, !dbg !171
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !173
  %cmp20 = icmp eq i32 %call19, 1, !dbg !174
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !175

if.then22:                                        ; preds = %if.end18
  %17 = load i32, i32* %n, align 4, !dbg !176
  %cmp23 = icmp slt i32 %17, 10000, !dbg !179
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !180

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !181
  store i32 0, i32* %i, align 4, !dbg !183
  br label %for.cond, !dbg !185

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %i, align 4, !dbg !186
  %19 = load i32, i32* %n, align 4, !dbg !188
  %cmp26 = icmp slt i32 %18, %19, !dbg !189
  br i1 %cmp26, label %for.body, label %for.end, !dbg !190

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !191
  %inc = add nsw i32 %20, 1, !dbg !191
  store i32 %inc, i32* %intVariable, align 4, !dbg !191
  br label %for.inc, !dbg !193

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !194
  %inc28 = add nsw i32 %21, 1, !dbg !194
  store i32 %inc28, i32* %i, align 4, !dbg !194
  br label %for.cond, !dbg !195, !llvm.loop !196

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !198
  call void @printIntLine(i32 %22), !dbg !199
  br label %if.end29, !dbg !200

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !201

if.end30:                                         ; preds = %if.end29, %if.end18
  ret void, !dbg !202
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !203 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !206, metadata !DIExpression()), !dbg !207
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !207
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !207
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !208
  store i8* %arraydecay, i8** %data, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !210, metadata !DIExpression()), !dbg !212
  %1 = load i8*, i8** %data, align 8, !dbg !213
  %call = call i64 @strlen(i8* %1) #6, !dbg !214
  store i64 %call, i64* %dataLen, align 8, !dbg !212
  %2 = load i64, i64* %dataLen, align 8, !dbg !215
  %sub = sub i64 100, %2, !dbg !217
  %cmp = icmp ugt i64 %sub, 1, !dbg !218
  br i1 %cmp, label %if.then, label %if.end18, !dbg !219

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !220
  %4 = load i64, i64* %dataLen, align 8, !dbg !223
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !224
  %5 = load i64, i64* %dataLen, align 8, !dbg !225
  %sub1 = sub i64 100, %5, !dbg !226
  %conv = trunc i64 %sub1 to i32, !dbg !227
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !228
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !229
  %cmp3 = icmp ne i8* %call2, null, !dbg !230
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !231

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !232
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !234
  store i64 %call6, i64* %dataLen, align 8, !dbg !235
  %8 = load i64, i64* %dataLen, align 8, !dbg !236
  %cmp7 = icmp ugt i64 %8, 0, !dbg !238
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !239

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !240
  %10 = load i64, i64* %dataLen, align 8, !dbg !241
  %sub9 = sub i64 %10, 1, !dbg !242
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !240
  %11 = load i8, i8* %arrayidx, align 1, !dbg !240
  %conv10 = sext i8 %11 to i32, !dbg !240
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !243
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !244

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !245
  %13 = load i64, i64* %dataLen, align 8, !dbg !247
  %sub14 = sub i64 %13, 1, !dbg !248
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !245
  store i8 0, i8* %arrayidx15, align 1, !dbg !249
  br label %if.end, !dbg !250

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !251

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !252
  %14 = load i8*, i8** %data, align 8, !dbg !254
  %15 = load i64, i64* %dataLen, align 8, !dbg !255
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !254
  store i8 0, i8* %arrayidx16, align 1, !dbg !256
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !257

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !258, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %n, metadata !261, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !263, metadata !DIExpression()), !dbg !264
  %16 = load i8*, i8** %data, align 8, !dbg !265
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !267
  %cmp20 = icmp eq i32 %call19, 1, !dbg !268
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !269

if.then22:                                        ; preds = %if.end18
  %17 = load i32, i32* %n, align 4, !dbg !270
  %cmp23 = icmp slt i32 %17, 10000, !dbg !273
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !274

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !275
  store i32 0, i32* %i, align 4, !dbg !277
  br label %for.cond, !dbg !279

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %i, align 4, !dbg !280
  %19 = load i32, i32* %n, align 4, !dbg !282
  %cmp26 = icmp slt i32 %18, %19, !dbg !283
  br i1 %cmp26, label %for.body, label %for.end, !dbg !284

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !285
  %inc = add nsw i32 %20, 1, !dbg !285
  store i32 %inc, i32* %intVariable, align 4, !dbg !285
  br label %for.inc, !dbg !287

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !288
  %inc28 = add nsw i32 %21, 1, !dbg !288
  store i32 %inc28, i32* %i, align 4, !dbg !288
  br label %for.cond, !dbg !289, !llvm.loop !290

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !292
  call void @printIntLine(i32 %22), !dbg !293
  br label %if.end29, !dbg !294

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !295

if.end30:                                         ; preds = %if.end29, %if.end18
  ret void, !dbg !296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !297 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !301
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !301
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !302
  store i8* %arraydecay, i8** %data, align 8, !dbg !303
  %1 = load i8*, i8** %data, align 8, !dbg !304
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !305
  call void @llvm.dbg.declare(metadata i32* %i, metadata !306, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.declare(metadata i32* %n, metadata !309, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !311, metadata !DIExpression()), !dbg !312
  %2 = load i8*, i8** %data, align 8, !dbg !313
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !315
  %cmp = icmp eq i32 %call1, 1, !dbg !316
  br i1 %cmp, label %if.then, label %if.end, !dbg !317

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !318
  store i32 0, i32* %i, align 4, !dbg !320
  br label %for.cond, !dbg !322

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !323
  %4 = load i32, i32* %n, align 4, !dbg !325
  %cmp2 = icmp slt i32 %3, %4, !dbg !326
  br i1 %cmp2, label %for.body, label %for.end, !dbg !327

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !328
  %inc = add nsw i32 %5, 1, !dbg !328
  store i32 %inc, i32* %intVariable, align 4, !dbg !328
  br label %for.inc, !dbg !330

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !331
  %inc3 = add nsw i32 %6, 1, !dbg !331
  store i32 %inc3, i32* %i, align 4, !dbg !331
  br label %for.cond, !dbg !332, !llvm.loop !333

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !335
  call void @printIntLine(i32 %7), !dbg !336
  br label %if.end, !dbg !337

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !338
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !339 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !340, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !343
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !343
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !344
  store i8* %arraydecay, i8** %data, align 8, !dbg !345
  %1 = load i8*, i8** %data, align 8, !dbg !346
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !347
  call void @llvm.dbg.declare(metadata i32* %i, metadata !348, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata i32* %n, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !353, metadata !DIExpression()), !dbg !354
  %2 = load i8*, i8** %data, align 8, !dbg !355
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !357
  %cmp = icmp eq i32 %call1, 1, !dbg !358
  br i1 %cmp, label %if.then, label %if.end, !dbg !359

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !360
  store i32 0, i32* %i, align 4, !dbg !362
  br label %for.cond, !dbg !364

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !365
  %4 = load i32, i32* %n, align 4, !dbg !367
  %cmp2 = icmp slt i32 %3, %4, !dbg !368
  br i1 %cmp2, label %for.body, label %for.end, !dbg !369

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !370
  %inc = add nsw i32 %5, 1, !dbg !370
  store i32 %inc, i32* %intVariable, align 4, !dbg !370
  br label %for.inc, !dbg !372

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !373
  %inc3 = add nsw i32 %6, 1, !dbg !373
  store i32 %inc3, i32* %i, align 4, !dbg !373
  br label %for.cond, !dbg !374, !llvm.loop !375

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !377
  call void @printIntLine(i32 %7), !dbg !378
  br label %if.end, !dbg !379

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_15_good() #0 !dbg !381 {
entry:
  call void @goodB2G1(), !dbg !382
  call void @goodB2G2(), !dbg !383
  call void @goodG2B1(), !dbg !384
  call void @goodG2B2(), !dbg !385
  ret void, !dbg !386
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_992/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_15_bad", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 39, type: !26)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 37, column: 5)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 39, column: 16, scope: !25)
!30 = !DILocation(line: 39, column: 33, scope: !25)
!31 = !DILocation(line: 39, column: 26, scope: !25)
!32 = !DILocation(line: 41, column: 17, scope: !33)
!33 = distinct !DILexicalBlock(scope: !25, file: !1, line: 41, column: 13)
!34 = !DILocation(line: 41, column: 16, scope: !33)
!35 = !DILocation(line: 41, column: 25, scope: !33)
!36 = !DILocation(line: 41, column: 13, scope: !25)
!37 = !DILocation(line: 44, column: 23, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 44, column: 17)
!39 = distinct !DILexicalBlock(scope: !33, file: !1, line: 42, column: 9)
!40 = !DILocation(line: 44, column: 28, scope: !38)
!41 = !DILocation(line: 44, column: 27, scope: !38)
!42 = !DILocation(line: 44, column: 47, scope: !38)
!43 = !DILocation(line: 44, column: 46, scope: !38)
!44 = !DILocation(line: 44, column: 37, scope: !38)
!45 = !DILocation(line: 44, column: 57, scope: !38)
!46 = !DILocation(line: 44, column: 17, scope: !38)
!47 = !DILocation(line: 44, column: 64, scope: !38)
!48 = !DILocation(line: 44, column: 17, scope: !39)
!49 = !DILocation(line: 48, column: 34, scope: !50)
!50 = distinct !DILexicalBlock(scope: !38, file: !1, line: 45, column: 13)
!51 = !DILocation(line: 48, column: 27, scope: !50)
!52 = !DILocation(line: 48, column: 25, scope: !50)
!53 = !DILocation(line: 49, column: 21, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 49, column: 21)
!55 = !DILocation(line: 49, column: 29, scope: !54)
!56 = !DILocation(line: 49, column: 33, scope: !54)
!57 = !DILocation(line: 49, column: 36, scope: !54)
!58 = !DILocation(line: 49, column: 41, scope: !54)
!59 = !DILocation(line: 49, column: 48, scope: !54)
!60 = !DILocation(line: 49, column: 52, scope: !54)
!61 = !DILocation(line: 49, column: 21, scope: !50)
!62 = !DILocation(line: 51, column: 21, scope: !63)
!63 = distinct !DILexicalBlock(scope: !54, file: !1, line: 50, column: 17)
!64 = !DILocation(line: 51, column: 26, scope: !63)
!65 = !DILocation(line: 51, column: 33, scope: !63)
!66 = !DILocation(line: 51, column: 37, scope: !63)
!67 = !DILocation(line: 52, column: 17, scope: !63)
!68 = !DILocation(line: 53, column: 13, scope: !50)
!69 = !DILocation(line: 56, column: 17, scope: !70)
!70 = distinct !DILexicalBlock(scope: !38, file: !1, line: 55, column: 13)
!71 = !DILocation(line: 58, column: 17, scope: !70)
!72 = !DILocation(line: 58, column: 22, scope: !70)
!73 = !DILocation(line: 58, column: 31, scope: !70)
!74 = !DILocation(line: 60, column: 9, scope: !39)
!75 = !DILocalVariable(name: "i", scope: !76, file: !1, line: 72, type: !4)
!76 = distinct !DILexicalBlock(scope: !10, file: !1, line: 71, column: 5)
!77 = !DILocation(line: 72, column: 13, scope: !76)
!78 = !DILocalVariable(name: "n", scope: !76, file: !1, line: 72, type: !4)
!79 = !DILocation(line: 72, column: 16, scope: !76)
!80 = !DILocalVariable(name: "intVariable", scope: !76, file: !1, line: 72, type: !4)
!81 = !DILocation(line: 72, column: 19, scope: !76)
!82 = !DILocation(line: 73, column: 20, scope: !83)
!83 = distinct !DILexicalBlock(scope: !76, file: !1, line: 73, column: 13)
!84 = !DILocation(line: 73, column: 13, scope: !83)
!85 = !DILocation(line: 73, column: 36, scope: !83)
!86 = !DILocation(line: 73, column: 13, scope: !76)
!87 = !DILocation(line: 76, column: 25, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 74, column: 9)
!89 = !DILocation(line: 77, column: 20, scope: !90)
!90 = distinct !DILexicalBlock(scope: !88, file: !1, line: 77, column: 13)
!91 = !DILocation(line: 77, column: 18, scope: !90)
!92 = !DILocation(line: 77, column: 25, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !1, line: 77, column: 13)
!94 = !DILocation(line: 77, column: 29, scope: !93)
!95 = !DILocation(line: 77, column: 27, scope: !93)
!96 = !DILocation(line: 77, column: 13, scope: !90)
!97 = !DILocation(line: 80, column: 28, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 78, column: 13)
!99 = !DILocation(line: 81, column: 13, scope: !98)
!100 = !DILocation(line: 77, column: 33, scope: !93)
!101 = !DILocation(line: 77, column: 13, scope: !93)
!102 = distinct !{!102, !96, !103, !104}
!103 = !DILocation(line: 81, column: 13, scope: !90)
!104 = !{!"llvm.loop.mustprogress"}
!105 = !DILocation(line: 82, column: 26, scope: !88)
!106 = !DILocation(line: 82, column: 13, scope: !88)
!107 = !DILocation(line: 83, column: 9, scope: !88)
!108 = !DILocation(line: 91, column: 1, scope: !10)
!109 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 98, type: !11, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!110 = !DILocalVariable(name: "data", scope: !109, file: !1, line: 100, type: !14)
!111 = !DILocation(line: 100, column: 12, scope: !109)
!112 = !DILocalVariable(name: "dataBuffer", scope: !109, file: !1, line: 101, type: !18)
!113 = !DILocation(line: 101, column: 10, scope: !109)
!114 = !DILocation(line: 102, column: 12, scope: !109)
!115 = !DILocation(line: 102, column: 10, scope: !109)
!116 = !DILocalVariable(name: "dataLen", scope: !117, file: !1, line: 108, type: !26)
!117 = distinct !DILexicalBlock(scope: !109, file: !1, line: 106, column: 5)
!118 = !DILocation(line: 108, column: 16, scope: !117)
!119 = !DILocation(line: 108, column: 33, scope: !117)
!120 = !DILocation(line: 108, column: 26, scope: !117)
!121 = !DILocation(line: 110, column: 17, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !1, line: 110, column: 13)
!123 = !DILocation(line: 110, column: 16, scope: !122)
!124 = !DILocation(line: 110, column: 25, scope: !122)
!125 = !DILocation(line: 110, column: 13, scope: !117)
!126 = !DILocation(line: 113, column: 23, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !1, line: 113, column: 17)
!128 = distinct !DILexicalBlock(scope: !122, file: !1, line: 111, column: 9)
!129 = !DILocation(line: 113, column: 28, scope: !127)
!130 = !DILocation(line: 113, column: 27, scope: !127)
!131 = !DILocation(line: 113, column: 47, scope: !127)
!132 = !DILocation(line: 113, column: 46, scope: !127)
!133 = !DILocation(line: 113, column: 37, scope: !127)
!134 = !DILocation(line: 113, column: 57, scope: !127)
!135 = !DILocation(line: 113, column: 17, scope: !127)
!136 = !DILocation(line: 113, column: 64, scope: !127)
!137 = !DILocation(line: 113, column: 17, scope: !128)
!138 = !DILocation(line: 117, column: 34, scope: !139)
!139 = distinct !DILexicalBlock(scope: !127, file: !1, line: 114, column: 13)
!140 = !DILocation(line: 117, column: 27, scope: !139)
!141 = !DILocation(line: 117, column: 25, scope: !139)
!142 = !DILocation(line: 118, column: 21, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 118, column: 21)
!144 = !DILocation(line: 118, column: 29, scope: !143)
!145 = !DILocation(line: 118, column: 33, scope: !143)
!146 = !DILocation(line: 118, column: 36, scope: !143)
!147 = !DILocation(line: 118, column: 41, scope: !143)
!148 = !DILocation(line: 118, column: 48, scope: !143)
!149 = !DILocation(line: 118, column: 52, scope: !143)
!150 = !DILocation(line: 118, column: 21, scope: !139)
!151 = !DILocation(line: 120, column: 21, scope: !152)
!152 = distinct !DILexicalBlock(scope: !143, file: !1, line: 119, column: 17)
!153 = !DILocation(line: 120, column: 26, scope: !152)
!154 = !DILocation(line: 120, column: 33, scope: !152)
!155 = !DILocation(line: 120, column: 37, scope: !152)
!156 = !DILocation(line: 121, column: 17, scope: !152)
!157 = !DILocation(line: 122, column: 13, scope: !139)
!158 = !DILocation(line: 125, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !127, file: !1, line: 124, column: 13)
!160 = !DILocation(line: 127, column: 17, scope: !159)
!161 = !DILocation(line: 127, column: 22, scope: !159)
!162 = !DILocation(line: 127, column: 31, scope: !159)
!163 = !DILocation(line: 129, column: 9, scope: !128)
!164 = !DILocalVariable(name: "i", scope: !165, file: !1, line: 145, type: !4)
!165 = distinct !DILexicalBlock(scope: !109, file: !1, line: 144, column: 5)
!166 = !DILocation(line: 145, column: 13, scope: !165)
!167 = !DILocalVariable(name: "n", scope: !165, file: !1, line: 145, type: !4)
!168 = !DILocation(line: 145, column: 16, scope: !165)
!169 = !DILocalVariable(name: "intVariable", scope: !165, file: !1, line: 145, type: !4)
!170 = !DILocation(line: 145, column: 19, scope: !165)
!171 = !DILocation(line: 146, column: 20, scope: !172)
!172 = distinct !DILexicalBlock(scope: !165, file: !1, line: 146, column: 13)
!173 = !DILocation(line: 146, column: 13, scope: !172)
!174 = !DILocation(line: 146, column: 36, scope: !172)
!175 = !DILocation(line: 146, column: 13, scope: !165)
!176 = !DILocation(line: 149, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 149, column: 17)
!178 = distinct !DILexicalBlock(scope: !172, file: !1, line: 147, column: 9)
!179 = !DILocation(line: 149, column: 19, scope: !177)
!180 = !DILocation(line: 149, column: 17, scope: !178)
!181 = !DILocation(line: 151, column: 29, scope: !182)
!182 = distinct !DILexicalBlock(scope: !177, file: !1, line: 150, column: 13)
!183 = !DILocation(line: 152, column: 24, scope: !184)
!184 = distinct !DILexicalBlock(scope: !182, file: !1, line: 152, column: 17)
!185 = !DILocation(line: 152, column: 22, scope: !184)
!186 = !DILocation(line: 152, column: 29, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !1, line: 152, column: 17)
!188 = !DILocation(line: 152, column: 33, scope: !187)
!189 = !DILocation(line: 152, column: 31, scope: !187)
!190 = !DILocation(line: 152, column: 17, scope: !184)
!191 = !DILocation(line: 155, column: 32, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !1, line: 153, column: 17)
!193 = !DILocation(line: 156, column: 17, scope: !192)
!194 = !DILocation(line: 152, column: 37, scope: !187)
!195 = !DILocation(line: 152, column: 17, scope: !187)
!196 = distinct !{!196, !190, !197, !104}
!197 = !DILocation(line: 156, column: 17, scope: !184)
!198 = !DILocation(line: 157, column: 30, scope: !182)
!199 = !DILocation(line: 157, column: 17, scope: !182)
!200 = !DILocation(line: 158, column: 13, scope: !182)
!201 = !DILocation(line: 159, column: 9, scope: !178)
!202 = !DILocation(line: 163, column: 1, scope: !109)
!203 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 166, type: !11, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!204 = !DILocalVariable(name: "data", scope: !203, file: !1, line: 168, type: !14)
!205 = !DILocation(line: 168, column: 12, scope: !203)
!206 = !DILocalVariable(name: "dataBuffer", scope: !203, file: !1, line: 169, type: !18)
!207 = !DILocation(line: 169, column: 10, scope: !203)
!208 = !DILocation(line: 170, column: 12, scope: !203)
!209 = !DILocation(line: 170, column: 10, scope: !203)
!210 = !DILocalVariable(name: "dataLen", scope: !211, file: !1, line: 176, type: !26)
!211 = distinct !DILexicalBlock(scope: !203, file: !1, line: 174, column: 5)
!212 = !DILocation(line: 176, column: 16, scope: !211)
!213 = !DILocation(line: 176, column: 33, scope: !211)
!214 = !DILocation(line: 176, column: 26, scope: !211)
!215 = !DILocation(line: 178, column: 17, scope: !216)
!216 = distinct !DILexicalBlock(scope: !211, file: !1, line: 178, column: 13)
!217 = !DILocation(line: 178, column: 16, scope: !216)
!218 = !DILocation(line: 178, column: 25, scope: !216)
!219 = !DILocation(line: 178, column: 13, scope: !211)
!220 = !DILocation(line: 181, column: 23, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !1, line: 181, column: 17)
!222 = distinct !DILexicalBlock(scope: !216, file: !1, line: 179, column: 9)
!223 = !DILocation(line: 181, column: 28, scope: !221)
!224 = !DILocation(line: 181, column: 27, scope: !221)
!225 = !DILocation(line: 181, column: 47, scope: !221)
!226 = !DILocation(line: 181, column: 46, scope: !221)
!227 = !DILocation(line: 181, column: 37, scope: !221)
!228 = !DILocation(line: 181, column: 57, scope: !221)
!229 = !DILocation(line: 181, column: 17, scope: !221)
!230 = !DILocation(line: 181, column: 64, scope: !221)
!231 = !DILocation(line: 181, column: 17, scope: !222)
!232 = !DILocation(line: 185, column: 34, scope: !233)
!233 = distinct !DILexicalBlock(scope: !221, file: !1, line: 182, column: 13)
!234 = !DILocation(line: 185, column: 27, scope: !233)
!235 = !DILocation(line: 185, column: 25, scope: !233)
!236 = !DILocation(line: 186, column: 21, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !1, line: 186, column: 21)
!238 = !DILocation(line: 186, column: 29, scope: !237)
!239 = !DILocation(line: 186, column: 33, scope: !237)
!240 = !DILocation(line: 186, column: 36, scope: !237)
!241 = !DILocation(line: 186, column: 41, scope: !237)
!242 = !DILocation(line: 186, column: 48, scope: !237)
!243 = !DILocation(line: 186, column: 52, scope: !237)
!244 = !DILocation(line: 186, column: 21, scope: !233)
!245 = !DILocation(line: 188, column: 21, scope: !246)
!246 = distinct !DILexicalBlock(scope: !237, file: !1, line: 187, column: 17)
!247 = !DILocation(line: 188, column: 26, scope: !246)
!248 = !DILocation(line: 188, column: 33, scope: !246)
!249 = !DILocation(line: 188, column: 37, scope: !246)
!250 = !DILocation(line: 189, column: 17, scope: !246)
!251 = !DILocation(line: 190, column: 13, scope: !233)
!252 = !DILocation(line: 193, column: 17, scope: !253)
!253 = distinct !DILexicalBlock(scope: !221, file: !1, line: 192, column: 13)
!254 = !DILocation(line: 195, column: 17, scope: !253)
!255 = !DILocation(line: 195, column: 22, scope: !253)
!256 = !DILocation(line: 195, column: 31, scope: !253)
!257 = !DILocation(line: 197, column: 9, scope: !222)
!258 = !DILocalVariable(name: "i", scope: !259, file: !1, line: 209, type: !4)
!259 = distinct !DILexicalBlock(scope: !203, file: !1, line: 208, column: 5)
!260 = !DILocation(line: 209, column: 13, scope: !259)
!261 = !DILocalVariable(name: "n", scope: !259, file: !1, line: 209, type: !4)
!262 = !DILocation(line: 209, column: 16, scope: !259)
!263 = !DILocalVariable(name: "intVariable", scope: !259, file: !1, line: 209, type: !4)
!264 = !DILocation(line: 209, column: 19, scope: !259)
!265 = !DILocation(line: 210, column: 20, scope: !266)
!266 = distinct !DILexicalBlock(scope: !259, file: !1, line: 210, column: 13)
!267 = !DILocation(line: 210, column: 13, scope: !266)
!268 = !DILocation(line: 210, column: 36, scope: !266)
!269 = !DILocation(line: 210, column: 13, scope: !259)
!270 = !DILocation(line: 213, column: 17, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 213, column: 17)
!272 = distinct !DILexicalBlock(scope: !266, file: !1, line: 211, column: 9)
!273 = !DILocation(line: 213, column: 19, scope: !271)
!274 = !DILocation(line: 213, column: 17, scope: !272)
!275 = !DILocation(line: 215, column: 29, scope: !276)
!276 = distinct !DILexicalBlock(scope: !271, file: !1, line: 214, column: 13)
!277 = !DILocation(line: 216, column: 24, scope: !278)
!278 = distinct !DILexicalBlock(scope: !276, file: !1, line: 216, column: 17)
!279 = !DILocation(line: 216, column: 22, scope: !278)
!280 = !DILocation(line: 216, column: 29, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !1, line: 216, column: 17)
!282 = !DILocation(line: 216, column: 33, scope: !281)
!283 = !DILocation(line: 216, column: 31, scope: !281)
!284 = !DILocation(line: 216, column: 17, scope: !278)
!285 = !DILocation(line: 219, column: 32, scope: !286)
!286 = distinct !DILexicalBlock(scope: !281, file: !1, line: 217, column: 17)
!287 = !DILocation(line: 220, column: 17, scope: !286)
!288 = !DILocation(line: 216, column: 37, scope: !281)
!289 = !DILocation(line: 216, column: 17, scope: !281)
!290 = distinct !{!290, !284, !291, !104}
!291 = !DILocation(line: 220, column: 17, scope: !278)
!292 = !DILocation(line: 221, column: 30, scope: !276)
!293 = !DILocation(line: 221, column: 17, scope: !276)
!294 = !DILocation(line: 222, column: 13, scope: !276)
!295 = !DILocation(line: 223, column: 9, scope: !272)
!296 = !DILocation(line: 231, column: 1, scope: !203)
!297 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 234, type: !11, scopeLine: 235, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!298 = !DILocalVariable(name: "data", scope: !297, file: !1, line: 236, type: !14)
!299 = !DILocation(line: 236, column: 12, scope: !297)
!300 = !DILocalVariable(name: "dataBuffer", scope: !297, file: !1, line: 237, type: !18)
!301 = !DILocation(line: 237, column: 10, scope: !297)
!302 = !DILocation(line: 238, column: 12, scope: !297)
!303 = !DILocation(line: 238, column: 10, scope: !297)
!304 = !DILocation(line: 247, column: 16, scope: !297)
!305 = !DILocation(line: 247, column: 9, scope: !297)
!306 = !DILocalVariable(name: "i", scope: !307, file: !1, line: 254, type: !4)
!307 = distinct !DILexicalBlock(scope: !297, file: !1, line: 253, column: 5)
!308 = !DILocation(line: 254, column: 13, scope: !307)
!309 = !DILocalVariable(name: "n", scope: !307, file: !1, line: 254, type: !4)
!310 = !DILocation(line: 254, column: 16, scope: !307)
!311 = !DILocalVariable(name: "intVariable", scope: !307, file: !1, line: 254, type: !4)
!312 = !DILocation(line: 254, column: 19, scope: !307)
!313 = !DILocation(line: 255, column: 20, scope: !314)
!314 = distinct !DILexicalBlock(scope: !307, file: !1, line: 255, column: 13)
!315 = !DILocation(line: 255, column: 13, scope: !314)
!316 = !DILocation(line: 255, column: 36, scope: !314)
!317 = !DILocation(line: 255, column: 13, scope: !307)
!318 = !DILocation(line: 258, column: 25, scope: !319)
!319 = distinct !DILexicalBlock(scope: !314, file: !1, line: 256, column: 9)
!320 = !DILocation(line: 259, column: 20, scope: !321)
!321 = distinct !DILexicalBlock(scope: !319, file: !1, line: 259, column: 13)
!322 = !DILocation(line: 259, column: 18, scope: !321)
!323 = !DILocation(line: 259, column: 25, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !1, line: 259, column: 13)
!325 = !DILocation(line: 259, column: 29, scope: !324)
!326 = !DILocation(line: 259, column: 27, scope: !324)
!327 = !DILocation(line: 259, column: 13, scope: !321)
!328 = !DILocation(line: 262, column: 28, scope: !329)
!329 = distinct !DILexicalBlock(scope: !324, file: !1, line: 260, column: 13)
!330 = !DILocation(line: 263, column: 13, scope: !329)
!331 = !DILocation(line: 259, column: 33, scope: !324)
!332 = !DILocation(line: 259, column: 13, scope: !324)
!333 = distinct !{!333, !327, !334, !104}
!334 = !DILocation(line: 263, column: 13, scope: !321)
!335 = !DILocation(line: 264, column: 26, scope: !319)
!336 = !DILocation(line: 264, column: 13, scope: !319)
!337 = !DILocation(line: 265, column: 9, scope: !319)
!338 = !DILocation(line: 273, column: 1, scope: !297)
!339 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 276, type: !11, scopeLine: 277, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!340 = !DILocalVariable(name: "data", scope: !339, file: !1, line: 278, type: !14)
!341 = !DILocation(line: 278, column: 12, scope: !339)
!342 = !DILocalVariable(name: "dataBuffer", scope: !339, file: !1, line: 279, type: !18)
!343 = !DILocation(line: 279, column: 10, scope: !339)
!344 = !DILocation(line: 280, column: 12, scope: !339)
!345 = !DILocation(line: 280, column: 10, scope: !339)
!346 = !DILocation(line: 285, column: 16, scope: !339)
!347 = !DILocation(line: 285, column: 9, scope: !339)
!348 = !DILocalVariable(name: "i", scope: !349, file: !1, line: 296, type: !4)
!349 = distinct !DILexicalBlock(scope: !339, file: !1, line: 295, column: 5)
!350 = !DILocation(line: 296, column: 13, scope: !349)
!351 = !DILocalVariable(name: "n", scope: !349, file: !1, line: 296, type: !4)
!352 = !DILocation(line: 296, column: 16, scope: !349)
!353 = !DILocalVariable(name: "intVariable", scope: !349, file: !1, line: 296, type: !4)
!354 = !DILocation(line: 296, column: 19, scope: !349)
!355 = !DILocation(line: 297, column: 20, scope: !356)
!356 = distinct !DILexicalBlock(scope: !349, file: !1, line: 297, column: 13)
!357 = !DILocation(line: 297, column: 13, scope: !356)
!358 = !DILocation(line: 297, column: 36, scope: !356)
!359 = !DILocation(line: 297, column: 13, scope: !349)
!360 = !DILocation(line: 300, column: 25, scope: !361)
!361 = distinct !DILexicalBlock(scope: !356, file: !1, line: 298, column: 9)
!362 = !DILocation(line: 301, column: 20, scope: !363)
!363 = distinct !DILexicalBlock(scope: !361, file: !1, line: 301, column: 13)
!364 = !DILocation(line: 301, column: 18, scope: !363)
!365 = !DILocation(line: 301, column: 25, scope: !366)
!366 = distinct !DILexicalBlock(scope: !363, file: !1, line: 301, column: 13)
!367 = !DILocation(line: 301, column: 29, scope: !366)
!368 = !DILocation(line: 301, column: 27, scope: !366)
!369 = !DILocation(line: 301, column: 13, scope: !363)
!370 = !DILocation(line: 304, column: 28, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !1, line: 302, column: 13)
!372 = !DILocation(line: 305, column: 13, scope: !371)
!373 = !DILocation(line: 301, column: 33, scope: !366)
!374 = !DILocation(line: 301, column: 13, scope: !366)
!375 = distinct !{!375, !369, !376, !104}
!376 = !DILocation(line: 305, column: 13, scope: !363)
!377 = !DILocation(line: 306, column: 26, scope: !361)
!378 = !DILocation(line: 306, column: 13, scope: !361)
!379 = !DILocation(line: 307, column: 9, scope: !361)
!380 = !DILocation(line: 315, column: 1, scope: !339)
!381 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_15_good", scope: !1, file: !1, line: 317, type: !11, scopeLine: 318, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!382 = !DILocation(line: 319, column: 5, scope: !381)
!383 = !DILocation(line: 320, column: 5, scope: !381)
!384 = !DILocation(line: 321, column: 5, scope: !381)
!385 = !DILocation(line: 322, column: 5, scope: !381)
!386 = !DILocation(line: 323, column: 1, scope: !381)
