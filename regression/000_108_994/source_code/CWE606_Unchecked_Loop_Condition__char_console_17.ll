; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_17.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_17.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_17_bad() #0 !dbg !10 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i24 = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %j, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !17, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %data, align 8, !dbg !27
  store i32 0, i32* %i, align 4, !dbg !28
  br label %for.cond, !dbg !30

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !31
  %cmp = icmp slt i32 %1, 1, !dbg !33
  br i1 %cmp, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !35, metadata !DIExpression()), !dbg !41
  %2 = load i8*, i8** %data, align 8, !dbg !42
  %call = call i64 @strlen(i8* %2) #6, !dbg !43
  store i64 %call, i64* %dataLen, align 8, !dbg !41
  %3 = load i64, i64* %dataLen, align 8, !dbg !44
  %sub = sub i64 100, %3, !dbg !46
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !47
  br i1 %cmp1, label %if.then, label %if.end19, !dbg !48

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %data, align 8, !dbg !49
  %5 = load i64, i64* %dataLen, align 8, !dbg !52
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !53
  %6 = load i64, i64* %dataLen, align 8, !dbg !54
  %sub2 = sub i64 100, %6, !dbg !55
  %conv = trunc i64 %sub2 to i32, !dbg !56
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !57
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !58
  %cmp4 = icmp ne i8* %call3, null, !dbg !59
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !60

if.then6:                                         ; preds = %if.then
  %8 = load i8*, i8** %data, align 8, !dbg !61
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !63
  store i64 %call7, i64* %dataLen, align 8, !dbg !64
  %9 = load i64, i64* %dataLen, align 8, !dbg !65
  %cmp8 = icmp ugt i64 %9, 0, !dbg !67
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !68

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !69
  %11 = load i64, i64* %dataLen, align 8, !dbg !70
  %sub10 = sub i64 %11, 1, !dbg !71
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !69
  %12 = load i8, i8* %arrayidx, align 1, !dbg !69
  %conv11 = sext i8 %12 to i32, !dbg !69
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !72
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !73

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !74
  %14 = load i64, i64* %dataLen, align 8, !dbg !76
  %sub15 = sub i64 %14, 1, !dbg !77
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !74
  store i8 0, i8* %arrayidx16, align 1, !dbg !78
  br label %if.end, !dbg !79

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !80

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !81
  %15 = load i8*, i8** %data, align 8, !dbg !83
  %16 = load i64, i64* %dataLen, align 8, !dbg !84
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !83
  store i8 0, i8* %arrayidx17, align 1, !dbg !85
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !86

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc, !dbg !87

for.inc:                                          ; preds = %if.end19
  %17 = load i32, i32* %i, align 4, !dbg !88
  %inc = add nsw i32 %17, 1, !dbg !88
  store i32 %inc, i32* %i, align 4, !dbg !88
  br label %for.cond, !dbg !89, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !93
  br label %for.cond20, !dbg !95

for.cond20:                                       ; preds = %for.inc38, %for.end
  %18 = load i32, i32* %j, align 4, !dbg !96
  %cmp21 = icmp slt i32 %18, 1, !dbg !98
  br i1 %cmp21, label %for.body23, label %for.end40, !dbg !99

for.body23:                                       ; preds = %for.cond20
  call void @llvm.dbg.declare(metadata i32* %i24, metadata !100, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %n, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !106, metadata !DIExpression()), !dbg !107
  %19 = load i8*, i8** %data, align 8, !dbg !108
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !110
  %cmp26 = icmp eq i32 %call25, 1, !dbg !111
  br i1 %cmp26, label %if.then28, label %if.end37, !dbg !112

if.then28:                                        ; preds = %for.body23
  store i32 0, i32* %intVariable, align 4, !dbg !113
  store i32 0, i32* %i24, align 4, !dbg !115
  br label %for.cond29, !dbg !117

for.cond29:                                       ; preds = %for.inc34, %if.then28
  %20 = load i32, i32* %i24, align 4, !dbg !118
  %21 = load i32, i32* %n, align 4, !dbg !120
  %cmp30 = icmp slt i32 %20, %21, !dbg !121
  br i1 %cmp30, label %for.body32, label %for.end36, !dbg !122

for.body32:                                       ; preds = %for.cond29
  %22 = load i32, i32* %intVariable, align 4, !dbg !123
  %inc33 = add nsw i32 %22, 1, !dbg !123
  store i32 %inc33, i32* %intVariable, align 4, !dbg !123
  br label %for.inc34, !dbg !125

for.inc34:                                        ; preds = %for.body32
  %23 = load i32, i32* %i24, align 4, !dbg !126
  %inc35 = add nsw i32 %23, 1, !dbg !126
  store i32 %inc35, i32* %i24, align 4, !dbg !126
  br label %for.cond29, !dbg !127, !llvm.loop !128

for.end36:                                        ; preds = %for.cond29
  %24 = load i32, i32* %intVariable, align 4, !dbg !130
  call void @printIntLine(i32 %24), !dbg !131
  br label %if.end37, !dbg !132

if.end37:                                         ; preds = %for.end36, %for.body23
  br label %for.inc38, !dbg !133

for.inc38:                                        ; preds = %if.end37
  %25 = load i32, i32* %j, align 4, !dbg !134
  %inc39 = add nsw i32 %25, 1, !dbg !134
  store i32 %inc39, i32* %j, align 4, !dbg !134
  br label %for.cond20, !dbg !135, !llvm.loop !136

for.end40:                                        ; preds = %for.cond20
  ret void, !dbg !138
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
define dso_local void @goodB2G() #0 !dbg !139 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i24 = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %k, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i8** %data, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !147
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !147
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !148
  store i8* %arraydecay, i8** %data, align 8, !dbg !149
  store i32 0, i32* %i, align 4, !dbg !150
  br label %for.cond, !dbg !152

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !153
  %cmp = icmp slt i32 %1, 1, !dbg !155
  br i1 %cmp, label %for.body, label %for.end, !dbg !156

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !157, metadata !DIExpression()), !dbg !160
  %2 = load i8*, i8** %data, align 8, !dbg !161
  %call = call i64 @strlen(i8* %2) #6, !dbg !162
  store i64 %call, i64* %dataLen, align 8, !dbg !160
  %3 = load i64, i64* %dataLen, align 8, !dbg !163
  %sub = sub i64 100, %3, !dbg !165
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !166
  br i1 %cmp1, label %if.then, label %if.end19, !dbg !167

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %data, align 8, !dbg !168
  %5 = load i64, i64* %dataLen, align 8, !dbg !171
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !172
  %6 = load i64, i64* %dataLen, align 8, !dbg !173
  %sub2 = sub i64 100, %6, !dbg !174
  %conv = trunc i64 %sub2 to i32, !dbg !175
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !176
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !177
  %cmp4 = icmp ne i8* %call3, null, !dbg !178
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !179

if.then6:                                         ; preds = %if.then
  %8 = load i8*, i8** %data, align 8, !dbg !180
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !182
  store i64 %call7, i64* %dataLen, align 8, !dbg !183
  %9 = load i64, i64* %dataLen, align 8, !dbg !184
  %cmp8 = icmp ugt i64 %9, 0, !dbg !186
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !187

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !188
  %11 = load i64, i64* %dataLen, align 8, !dbg !189
  %sub10 = sub i64 %11, 1, !dbg !190
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !188
  %12 = load i8, i8* %arrayidx, align 1, !dbg !188
  %conv11 = sext i8 %12 to i32, !dbg !188
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !191
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !192

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !193
  %14 = load i64, i64* %dataLen, align 8, !dbg !195
  %sub15 = sub i64 %14, 1, !dbg !196
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !193
  store i8 0, i8* %arrayidx16, align 1, !dbg !197
  br label %if.end, !dbg !198

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !199

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !200
  %15 = load i8*, i8** %data, align 8, !dbg !202
  %16 = load i64, i64* %dataLen, align 8, !dbg !203
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !202
  store i8 0, i8* %arrayidx17, align 1, !dbg !204
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !205

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc, !dbg !206

for.inc:                                          ; preds = %if.end19
  %17 = load i32, i32* %i, align 4, !dbg !207
  %inc = add nsw i32 %17, 1, !dbg !207
  store i32 %inc, i32* %i, align 4, !dbg !207
  br label %for.cond, !dbg !208, !llvm.loop !209

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !211
  br label %for.cond20, !dbg !213

for.cond20:                                       ; preds = %for.inc42, %for.end
  %18 = load i32, i32* %k, align 4, !dbg !214
  %cmp21 = icmp slt i32 %18, 1, !dbg !216
  br i1 %cmp21, label %for.body23, label %for.end44, !dbg !217

for.body23:                                       ; preds = %for.cond20
  call void @llvm.dbg.declare(metadata i32* %i24, metadata !218, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %n, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !224, metadata !DIExpression()), !dbg !225
  %19 = load i8*, i8** %data, align 8, !dbg !226
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !228
  %cmp26 = icmp eq i32 %call25, 1, !dbg !229
  br i1 %cmp26, label %if.then28, label %if.end41, !dbg !230

if.then28:                                        ; preds = %for.body23
  %20 = load i32, i32* %n, align 4, !dbg !231
  %cmp29 = icmp slt i32 %20, 10000, !dbg !234
  br i1 %cmp29, label %if.then31, label %if.end40, !dbg !235

if.then31:                                        ; preds = %if.then28
  store i32 0, i32* %intVariable, align 4, !dbg !236
  store i32 0, i32* %i24, align 4, !dbg !238
  br label %for.cond32, !dbg !240

for.cond32:                                       ; preds = %for.inc37, %if.then31
  %21 = load i32, i32* %i24, align 4, !dbg !241
  %22 = load i32, i32* %n, align 4, !dbg !243
  %cmp33 = icmp slt i32 %21, %22, !dbg !244
  br i1 %cmp33, label %for.body35, label %for.end39, !dbg !245

for.body35:                                       ; preds = %for.cond32
  %23 = load i32, i32* %intVariable, align 4, !dbg !246
  %inc36 = add nsw i32 %23, 1, !dbg !246
  store i32 %inc36, i32* %intVariable, align 4, !dbg !246
  br label %for.inc37, !dbg !248

for.inc37:                                        ; preds = %for.body35
  %24 = load i32, i32* %i24, align 4, !dbg !249
  %inc38 = add nsw i32 %24, 1, !dbg !249
  store i32 %inc38, i32* %i24, align 4, !dbg !249
  br label %for.cond32, !dbg !250, !llvm.loop !251

for.end39:                                        ; preds = %for.cond32
  %25 = load i32, i32* %intVariable, align 4, !dbg !253
  call void @printIntLine(i32 %25), !dbg !254
  br label %if.end40, !dbg !255

if.end40:                                         ; preds = %for.end39, %if.then28
  br label %if.end41, !dbg !256

if.end41:                                         ; preds = %if.end40, %for.body23
  br label %for.inc42, !dbg !257

for.inc42:                                        ; preds = %if.end41
  %26 = load i32, i32* %k, align 4, !dbg !258
  %inc43 = add nsw i32 %26, 1, !dbg !258
  store i32 %inc43, i32* %k, align 4, !dbg !258
  br label %for.cond20, !dbg !259, !llvm.loop !260

for.end44:                                        ; preds = %for.cond20
  ret void, !dbg !262
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !263 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %h, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i32* %j, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata i8** %data, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !270, metadata !DIExpression()), !dbg !271
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !271
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !271
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !272
  store i8* %arraydecay, i8** %data, align 8, !dbg !273
  store i32 0, i32* %h, align 4, !dbg !274
  br label %for.cond, !dbg !276

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %h, align 4, !dbg !277
  %cmp = icmp slt i32 %1, 1, !dbg !279
  br i1 %cmp, label %for.body, label %for.end, !dbg !280

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data, align 8, !dbg !281
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !283
  br label %for.inc, !dbg !284

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %h, align 4, !dbg !285
  %inc = add nsw i32 %3, 1, !dbg !285
  store i32 %inc, i32* %h, align 4, !dbg !285
  br label %for.cond, !dbg !286, !llvm.loop !287

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !289
  br label %for.cond1, !dbg !291

for.cond1:                                        ; preds = %for.inc13, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !292
  %cmp2 = icmp slt i32 %4, 1, !dbg !294
  br i1 %cmp2, label %for.body3, label %for.end15, !dbg !295

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !296, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i32* %n, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !302, metadata !DIExpression()), !dbg !303
  %5 = load i8*, i8** %data, align 8, !dbg !304
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !306
  %cmp5 = icmp eq i32 %call4, 1, !dbg !307
  br i1 %cmp5, label %if.then, label %if.end, !dbg !308

if.then:                                          ; preds = %for.body3
  store i32 0, i32* %intVariable, align 4, !dbg !309
  store i32 0, i32* %i, align 4, !dbg !311
  br label %for.cond6, !dbg !313

for.cond6:                                        ; preds = %for.inc10, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !314
  %7 = load i32, i32* %n, align 4, !dbg !316
  %cmp7 = icmp slt i32 %6, %7, !dbg !317
  br i1 %cmp7, label %for.body8, label %for.end12, !dbg !318

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, i32* %intVariable, align 4, !dbg !319
  %inc9 = add nsw i32 %8, 1, !dbg !319
  store i32 %inc9, i32* %intVariable, align 4, !dbg !319
  br label %for.inc10, !dbg !321

for.inc10:                                        ; preds = %for.body8
  %9 = load i32, i32* %i, align 4, !dbg !322
  %inc11 = add nsw i32 %9, 1, !dbg !322
  store i32 %inc11, i32* %i, align 4, !dbg !322
  br label %for.cond6, !dbg !323, !llvm.loop !324

for.end12:                                        ; preds = %for.cond6
  %10 = load i32, i32* %intVariable, align 4, !dbg !326
  call void @printIntLine(i32 %10), !dbg !327
  br label %if.end, !dbg !328

if.end:                                           ; preds = %for.end12, %for.body3
  br label %for.inc13, !dbg !329

for.inc13:                                        ; preds = %if.end
  %11 = load i32, i32* %j, align 4, !dbg !330
  %inc14 = add nsw i32 %11, 1, !dbg !330
  store i32 %inc14, i32* %j, align 4, !dbg !330
  br label %for.cond1, !dbg !331, !llvm.loop !332

for.end15:                                        ; preds = %for.cond1
  ret void, !dbg !334
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_17_good() #0 !dbg !335 {
entry:
  call void @goodB2G(), !dbg !336
  call void @goodG2B(), !dbg !337
  ret void, !dbg !338
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_994/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_17_bad", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 31, type: !4)
!14 = !DILocation(line: 31, column: 9, scope: !10)
!15 = !DILocalVariable(name: "j", scope: !10, file: !1, line: 31, type: !4)
!16 = !DILocation(line: 31, column: 11, scope: !10)
!17 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 32, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DILocation(line: 32, column: 12, scope: !10)
!21 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 33, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 33, column: 10, scope: !10)
!26 = !DILocation(line: 34, column: 12, scope: !10)
!27 = !DILocation(line: 34, column: 10, scope: !10)
!28 = !DILocation(line: 35, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !10, file: !1, line: 35, column: 5)
!30 = !DILocation(line: 35, column: 9, scope: !29)
!31 = !DILocation(line: 35, column: 16, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !1, line: 35, column: 5)
!33 = !DILocation(line: 35, column: 18, scope: !32)
!34 = !DILocation(line: 35, column: 5, scope: !29)
!35 = !DILocalVariable(name: "dataLen", scope: !36, file: !1, line: 39, type: !38)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 37, column: 9)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 36, column: 5)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DILocation(line: 39, column: 20, scope: !36)
!42 = !DILocation(line: 39, column: 37, scope: !36)
!43 = !DILocation(line: 39, column: 30, scope: !36)
!44 = !DILocation(line: 41, column: 21, scope: !45)
!45 = distinct !DILexicalBlock(scope: !36, file: !1, line: 41, column: 17)
!46 = !DILocation(line: 41, column: 20, scope: !45)
!47 = !DILocation(line: 41, column: 29, scope: !45)
!48 = !DILocation(line: 41, column: 17, scope: !36)
!49 = !DILocation(line: 44, column: 27, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 44, column: 21)
!51 = distinct !DILexicalBlock(scope: !45, file: !1, line: 42, column: 13)
!52 = !DILocation(line: 44, column: 32, scope: !50)
!53 = !DILocation(line: 44, column: 31, scope: !50)
!54 = !DILocation(line: 44, column: 51, scope: !50)
!55 = !DILocation(line: 44, column: 50, scope: !50)
!56 = !DILocation(line: 44, column: 41, scope: !50)
!57 = !DILocation(line: 44, column: 61, scope: !50)
!58 = !DILocation(line: 44, column: 21, scope: !50)
!59 = !DILocation(line: 44, column: 68, scope: !50)
!60 = !DILocation(line: 44, column: 21, scope: !51)
!61 = !DILocation(line: 48, column: 38, scope: !62)
!62 = distinct !DILexicalBlock(scope: !50, file: !1, line: 45, column: 17)
!63 = !DILocation(line: 48, column: 31, scope: !62)
!64 = !DILocation(line: 48, column: 29, scope: !62)
!65 = !DILocation(line: 49, column: 25, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 49, column: 25)
!67 = !DILocation(line: 49, column: 33, scope: !66)
!68 = !DILocation(line: 49, column: 37, scope: !66)
!69 = !DILocation(line: 49, column: 40, scope: !66)
!70 = !DILocation(line: 49, column: 45, scope: !66)
!71 = !DILocation(line: 49, column: 52, scope: !66)
!72 = !DILocation(line: 49, column: 56, scope: !66)
!73 = !DILocation(line: 49, column: 25, scope: !62)
!74 = !DILocation(line: 51, column: 25, scope: !75)
!75 = distinct !DILexicalBlock(scope: !66, file: !1, line: 50, column: 21)
!76 = !DILocation(line: 51, column: 30, scope: !75)
!77 = !DILocation(line: 51, column: 37, scope: !75)
!78 = !DILocation(line: 51, column: 41, scope: !75)
!79 = !DILocation(line: 52, column: 21, scope: !75)
!80 = !DILocation(line: 53, column: 17, scope: !62)
!81 = !DILocation(line: 56, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !50, file: !1, line: 55, column: 17)
!83 = !DILocation(line: 58, column: 21, scope: !82)
!84 = !DILocation(line: 58, column: 26, scope: !82)
!85 = !DILocation(line: 58, column: 35, scope: !82)
!86 = !DILocation(line: 60, column: 13, scope: !51)
!87 = !DILocation(line: 62, column: 5, scope: !37)
!88 = !DILocation(line: 35, column: 24, scope: !32)
!89 = !DILocation(line: 35, column: 5, scope: !32)
!90 = distinct !{!90, !34, !91, !92}
!91 = !DILocation(line: 62, column: 5, scope: !29)
!92 = !{!"llvm.loop.mustprogress"}
!93 = !DILocation(line: 63, column: 11, scope: !94)
!94 = distinct !DILexicalBlock(scope: !10, file: !1, line: 63, column: 5)
!95 = !DILocation(line: 63, column: 9, scope: !94)
!96 = !DILocation(line: 63, column: 16, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 63, column: 5)
!98 = !DILocation(line: 63, column: 18, scope: !97)
!99 = !DILocation(line: 63, column: 5, scope: !94)
!100 = !DILocalVariable(name: "i", scope: !101, file: !1, line: 66, type: !4)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 65, column: 9)
!102 = distinct !DILexicalBlock(scope: !97, file: !1, line: 64, column: 5)
!103 = !DILocation(line: 66, column: 17, scope: !101)
!104 = !DILocalVariable(name: "n", scope: !101, file: !1, line: 66, type: !4)
!105 = !DILocation(line: 66, column: 20, scope: !101)
!106 = !DILocalVariable(name: "intVariable", scope: !101, file: !1, line: 66, type: !4)
!107 = !DILocation(line: 66, column: 23, scope: !101)
!108 = !DILocation(line: 67, column: 24, scope: !109)
!109 = distinct !DILexicalBlock(scope: !101, file: !1, line: 67, column: 17)
!110 = !DILocation(line: 67, column: 17, scope: !109)
!111 = !DILocation(line: 67, column: 40, scope: !109)
!112 = !DILocation(line: 67, column: 17, scope: !101)
!113 = !DILocation(line: 70, column: 29, scope: !114)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 68, column: 13)
!115 = !DILocation(line: 71, column: 24, scope: !116)
!116 = distinct !DILexicalBlock(scope: !114, file: !1, line: 71, column: 17)
!117 = !DILocation(line: 71, column: 22, scope: !116)
!118 = !DILocation(line: 71, column: 29, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 71, column: 17)
!120 = !DILocation(line: 71, column: 33, scope: !119)
!121 = !DILocation(line: 71, column: 31, scope: !119)
!122 = !DILocation(line: 71, column: 17, scope: !116)
!123 = !DILocation(line: 74, column: 32, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !1, line: 72, column: 17)
!125 = !DILocation(line: 75, column: 17, scope: !124)
!126 = !DILocation(line: 71, column: 37, scope: !119)
!127 = !DILocation(line: 71, column: 17, scope: !119)
!128 = distinct !{!128, !122, !129, !92}
!129 = !DILocation(line: 75, column: 17, scope: !116)
!130 = !DILocation(line: 76, column: 30, scope: !114)
!131 = !DILocation(line: 76, column: 17, scope: !114)
!132 = !DILocation(line: 77, column: 13, scope: !114)
!133 = !DILocation(line: 79, column: 5, scope: !102)
!134 = !DILocation(line: 63, column: 24, scope: !97)
!135 = !DILocation(line: 63, column: 5, scope: !97)
!136 = distinct !{!136, !99, !137, !92}
!137 = !DILocation(line: 79, column: 5, scope: !94)
!138 = !DILocation(line: 80, column: 1, scope: !10)
!139 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 87, type: !11, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!140 = !DILocalVariable(name: "i", scope: !139, file: !1, line: 89, type: !4)
!141 = !DILocation(line: 89, column: 9, scope: !139)
!142 = !DILocalVariable(name: "k", scope: !139, file: !1, line: 89, type: !4)
!143 = !DILocation(line: 89, column: 11, scope: !139)
!144 = !DILocalVariable(name: "data", scope: !139, file: !1, line: 90, type: !18)
!145 = !DILocation(line: 90, column: 12, scope: !139)
!146 = !DILocalVariable(name: "dataBuffer", scope: !139, file: !1, line: 91, type: !22)
!147 = !DILocation(line: 91, column: 10, scope: !139)
!148 = !DILocation(line: 92, column: 12, scope: !139)
!149 = !DILocation(line: 92, column: 10, scope: !139)
!150 = !DILocation(line: 93, column: 11, scope: !151)
!151 = distinct !DILexicalBlock(scope: !139, file: !1, line: 93, column: 5)
!152 = !DILocation(line: 93, column: 9, scope: !151)
!153 = !DILocation(line: 93, column: 16, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !1, line: 93, column: 5)
!155 = !DILocation(line: 93, column: 18, scope: !154)
!156 = !DILocation(line: 93, column: 5, scope: !151)
!157 = !DILocalVariable(name: "dataLen", scope: !158, file: !1, line: 97, type: !38)
!158 = distinct !DILexicalBlock(scope: !159, file: !1, line: 95, column: 9)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 94, column: 5)
!160 = !DILocation(line: 97, column: 20, scope: !158)
!161 = !DILocation(line: 97, column: 37, scope: !158)
!162 = !DILocation(line: 97, column: 30, scope: !158)
!163 = !DILocation(line: 99, column: 21, scope: !164)
!164 = distinct !DILexicalBlock(scope: !158, file: !1, line: 99, column: 17)
!165 = !DILocation(line: 99, column: 20, scope: !164)
!166 = !DILocation(line: 99, column: 29, scope: !164)
!167 = !DILocation(line: 99, column: 17, scope: !158)
!168 = !DILocation(line: 102, column: 27, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !1, line: 102, column: 21)
!170 = distinct !DILexicalBlock(scope: !164, file: !1, line: 100, column: 13)
!171 = !DILocation(line: 102, column: 32, scope: !169)
!172 = !DILocation(line: 102, column: 31, scope: !169)
!173 = !DILocation(line: 102, column: 51, scope: !169)
!174 = !DILocation(line: 102, column: 50, scope: !169)
!175 = !DILocation(line: 102, column: 41, scope: !169)
!176 = !DILocation(line: 102, column: 61, scope: !169)
!177 = !DILocation(line: 102, column: 21, scope: !169)
!178 = !DILocation(line: 102, column: 68, scope: !169)
!179 = !DILocation(line: 102, column: 21, scope: !170)
!180 = !DILocation(line: 106, column: 38, scope: !181)
!181 = distinct !DILexicalBlock(scope: !169, file: !1, line: 103, column: 17)
!182 = !DILocation(line: 106, column: 31, scope: !181)
!183 = !DILocation(line: 106, column: 29, scope: !181)
!184 = !DILocation(line: 107, column: 25, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 107, column: 25)
!186 = !DILocation(line: 107, column: 33, scope: !185)
!187 = !DILocation(line: 107, column: 37, scope: !185)
!188 = !DILocation(line: 107, column: 40, scope: !185)
!189 = !DILocation(line: 107, column: 45, scope: !185)
!190 = !DILocation(line: 107, column: 52, scope: !185)
!191 = !DILocation(line: 107, column: 56, scope: !185)
!192 = !DILocation(line: 107, column: 25, scope: !181)
!193 = !DILocation(line: 109, column: 25, scope: !194)
!194 = distinct !DILexicalBlock(scope: !185, file: !1, line: 108, column: 21)
!195 = !DILocation(line: 109, column: 30, scope: !194)
!196 = !DILocation(line: 109, column: 37, scope: !194)
!197 = !DILocation(line: 109, column: 41, scope: !194)
!198 = !DILocation(line: 110, column: 21, scope: !194)
!199 = !DILocation(line: 111, column: 17, scope: !181)
!200 = !DILocation(line: 114, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !169, file: !1, line: 113, column: 17)
!202 = !DILocation(line: 116, column: 21, scope: !201)
!203 = !DILocation(line: 116, column: 26, scope: !201)
!204 = !DILocation(line: 116, column: 35, scope: !201)
!205 = !DILocation(line: 118, column: 13, scope: !170)
!206 = !DILocation(line: 120, column: 5, scope: !159)
!207 = !DILocation(line: 93, column: 24, scope: !154)
!208 = !DILocation(line: 93, column: 5, scope: !154)
!209 = distinct !{!209, !156, !210, !92}
!210 = !DILocation(line: 120, column: 5, scope: !151)
!211 = !DILocation(line: 121, column: 11, scope: !212)
!212 = distinct !DILexicalBlock(scope: !139, file: !1, line: 121, column: 5)
!213 = !DILocation(line: 121, column: 9, scope: !212)
!214 = !DILocation(line: 121, column: 16, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !1, line: 121, column: 5)
!216 = !DILocation(line: 121, column: 18, scope: !215)
!217 = !DILocation(line: 121, column: 5, scope: !212)
!218 = !DILocalVariable(name: "i", scope: !219, file: !1, line: 124, type: !4)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 123, column: 9)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 122, column: 5)
!221 = !DILocation(line: 124, column: 17, scope: !219)
!222 = !DILocalVariable(name: "n", scope: !219, file: !1, line: 124, type: !4)
!223 = !DILocation(line: 124, column: 20, scope: !219)
!224 = !DILocalVariable(name: "intVariable", scope: !219, file: !1, line: 124, type: !4)
!225 = !DILocation(line: 124, column: 23, scope: !219)
!226 = !DILocation(line: 125, column: 24, scope: !227)
!227 = distinct !DILexicalBlock(scope: !219, file: !1, line: 125, column: 17)
!228 = !DILocation(line: 125, column: 17, scope: !227)
!229 = !DILocation(line: 125, column: 40, scope: !227)
!230 = !DILocation(line: 125, column: 17, scope: !219)
!231 = !DILocation(line: 128, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !1, line: 128, column: 21)
!233 = distinct !DILexicalBlock(scope: !227, file: !1, line: 126, column: 13)
!234 = !DILocation(line: 128, column: 23, scope: !232)
!235 = !DILocation(line: 128, column: 21, scope: !233)
!236 = !DILocation(line: 130, column: 33, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !1, line: 129, column: 17)
!238 = !DILocation(line: 131, column: 28, scope: !239)
!239 = distinct !DILexicalBlock(scope: !237, file: !1, line: 131, column: 21)
!240 = !DILocation(line: 131, column: 26, scope: !239)
!241 = !DILocation(line: 131, column: 33, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !1, line: 131, column: 21)
!243 = !DILocation(line: 131, column: 37, scope: !242)
!244 = !DILocation(line: 131, column: 35, scope: !242)
!245 = !DILocation(line: 131, column: 21, scope: !239)
!246 = !DILocation(line: 134, column: 36, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !1, line: 132, column: 21)
!248 = !DILocation(line: 135, column: 21, scope: !247)
!249 = !DILocation(line: 131, column: 41, scope: !242)
!250 = !DILocation(line: 131, column: 21, scope: !242)
!251 = distinct !{!251, !245, !252, !92}
!252 = !DILocation(line: 135, column: 21, scope: !239)
!253 = !DILocation(line: 136, column: 34, scope: !237)
!254 = !DILocation(line: 136, column: 21, scope: !237)
!255 = !DILocation(line: 137, column: 17, scope: !237)
!256 = !DILocation(line: 138, column: 13, scope: !233)
!257 = !DILocation(line: 140, column: 5, scope: !220)
!258 = !DILocation(line: 121, column: 24, scope: !215)
!259 = !DILocation(line: 121, column: 5, scope: !215)
!260 = distinct !{!260, !217, !261, !92}
!261 = !DILocation(line: 140, column: 5, scope: !212)
!262 = !DILocation(line: 141, column: 1, scope: !139)
!263 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 144, type: !11, scopeLine: 145, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!264 = !DILocalVariable(name: "h", scope: !263, file: !1, line: 146, type: !4)
!265 = !DILocation(line: 146, column: 9, scope: !263)
!266 = !DILocalVariable(name: "j", scope: !263, file: !1, line: 146, type: !4)
!267 = !DILocation(line: 146, column: 11, scope: !263)
!268 = !DILocalVariable(name: "data", scope: !263, file: !1, line: 147, type: !18)
!269 = !DILocation(line: 147, column: 12, scope: !263)
!270 = !DILocalVariable(name: "dataBuffer", scope: !263, file: !1, line: 148, type: !22)
!271 = !DILocation(line: 148, column: 10, scope: !263)
!272 = !DILocation(line: 149, column: 12, scope: !263)
!273 = !DILocation(line: 149, column: 10, scope: !263)
!274 = !DILocation(line: 150, column: 11, scope: !275)
!275 = distinct !DILexicalBlock(scope: !263, file: !1, line: 150, column: 5)
!276 = !DILocation(line: 150, column: 9, scope: !275)
!277 = !DILocation(line: 150, column: 16, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !1, line: 150, column: 5)
!279 = !DILocation(line: 150, column: 18, scope: !278)
!280 = !DILocation(line: 150, column: 5, scope: !275)
!281 = !DILocation(line: 153, column: 16, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !1, line: 151, column: 5)
!283 = !DILocation(line: 153, column: 9, scope: !282)
!284 = !DILocation(line: 154, column: 5, scope: !282)
!285 = !DILocation(line: 150, column: 24, scope: !278)
!286 = !DILocation(line: 150, column: 5, scope: !278)
!287 = distinct !{!287, !280, !288, !92}
!288 = !DILocation(line: 154, column: 5, scope: !275)
!289 = !DILocation(line: 155, column: 11, scope: !290)
!290 = distinct !DILexicalBlock(scope: !263, file: !1, line: 155, column: 5)
!291 = !DILocation(line: 155, column: 9, scope: !290)
!292 = !DILocation(line: 155, column: 16, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !1, line: 155, column: 5)
!294 = !DILocation(line: 155, column: 18, scope: !293)
!295 = !DILocation(line: 155, column: 5, scope: !290)
!296 = !DILocalVariable(name: "i", scope: !297, file: !1, line: 158, type: !4)
!297 = distinct !DILexicalBlock(scope: !298, file: !1, line: 157, column: 9)
!298 = distinct !DILexicalBlock(scope: !293, file: !1, line: 156, column: 5)
!299 = !DILocation(line: 158, column: 17, scope: !297)
!300 = !DILocalVariable(name: "n", scope: !297, file: !1, line: 158, type: !4)
!301 = !DILocation(line: 158, column: 20, scope: !297)
!302 = !DILocalVariable(name: "intVariable", scope: !297, file: !1, line: 158, type: !4)
!303 = !DILocation(line: 158, column: 23, scope: !297)
!304 = !DILocation(line: 159, column: 24, scope: !305)
!305 = distinct !DILexicalBlock(scope: !297, file: !1, line: 159, column: 17)
!306 = !DILocation(line: 159, column: 17, scope: !305)
!307 = !DILocation(line: 159, column: 40, scope: !305)
!308 = !DILocation(line: 159, column: 17, scope: !297)
!309 = !DILocation(line: 162, column: 29, scope: !310)
!310 = distinct !DILexicalBlock(scope: !305, file: !1, line: 160, column: 13)
!311 = !DILocation(line: 163, column: 24, scope: !312)
!312 = distinct !DILexicalBlock(scope: !310, file: !1, line: 163, column: 17)
!313 = !DILocation(line: 163, column: 22, scope: !312)
!314 = !DILocation(line: 163, column: 29, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !1, line: 163, column: 17)
!316 = !DILocation(line: 163, column: 33, scope: !315)
!317 = !DILocation(line: 163, column: 31, scope: !315)
!318 = !DILocation(line: 163, column: 17, scope: !312)
!319 = !DILocation(line: 166, column: 32, scope: !320)
!320 = distinct !DILexicalBlock(scope: !315, file: !1, line: 164, column: 17)
!321 = !DILocation(line: 167, column: 17, scope: !320)
!322 = !DILocation(line: 163, column: 37, scope: !315)
!323 = !DILocation(line: 163, column: 17, scope: !315)
!324 = distinct !{!324, !318, !325, !92}
!325 = !DILocation(line: 167, column: 17, scope: !312)
!326 = !DILocation(line: 168, column: 30, scope: !310)
!327 = !DILocation(line: 168, column: 17, scope: !310)
!328 = !DILocation(line: 169, column: 13, scope: !310)
!329 = !DILocation(line: 171, column: 5, scope: !298)
!330 = !DILocation(line: 155, column: 24, scope: !293)
!331 = !DILocation(line: 155, column: 5, scope: !293)
!332 = distinct !{!332, !295, !333, !92}
!333 = !DILocation(line: 171, column: 5, scope: !290)
!334 = !DILocation(line: 172, column: 1, scope: !263)
!335 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_17_good", scope: !1, file: !1, line: 174, type: !11, scopeLine: 175, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!336 = !DILocation(line: 176, column: 5, scope: !335)
!337 = !DILocation(line: 177, column: 5, scope: !335)
!338 = !DILocation(line: 178, column: 1, scope: !335)
