; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad() #0 !dbg !9 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %i18 = alloca i32, align 4
  %buffer19 = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 -1, i32* %data, align 4, !dbg !15
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !16
  %tobool = icmp ne i32 %call, 0, !dbg !16
  br i1 %tobool, label %if.then, label %if.else5, !dbg !18

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !19, metadata !DIExpression()), !dbg !26
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !27
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !29
  %call1 = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !30
  %cmp = icmp ne i8* %call1, null, !dbg !31
  br i1 %cmp, label %if.then2, label %if.else, !dbg !32

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !33
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !35
  store i32 %call4, i32* %data, align 4, !dbg !36
  br label %if.end, !dbg !37

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !38
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end6, !dbg !40

if.else5:                                         ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !41
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.end
  %call7 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !43
  %tobool8 = icmp ne i32 %call7, 0, !dbg !43
  br i1 %tobool8, label %if.then9, label %if.else17, !dbg !45

if.then9:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !46, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !50, metadata !DIExpression()), !dbg !54
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !54
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !54
  %3 = load i32, i32* %data, align 4, !dbg !55
  %cmp10 = icmp sge i32 %3, 0, !dbg !57
  br i1 %cmp10, label %if.then11, label %if.else15, !dbg !58

if.then11:                                        ; preds = %if.then9
  %4 = load i32, i32* %data, align 4, !dbg !59
  %idxprom = sext i32 %4 to i64, !dbg !61
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !61
  store i32 1, i32* %arrayidx, align 4, !dbg !62
  store i32 0, i32* %i, align 4, !dbg !63
  br label %for.cond, !dbg !65

for.cond:                                         ; preds = %for.inc, %if.then11
  %5 = load i32, i32* %i, align 4, !dbg !66
  %cmp12 = icmp slt i32 %5, 10, !dbg !68
  br i1 %cmp12, label %for.body, label %for.end, !dbg !69

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !70
  %idxprom13 = sext i32 %6 to i64, !dbg !72
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom13, !dbg !72
  %7 = load i32, i32* %arrayidx14, align 4, !dbg !72
  call void @printIntLine(i32 %7), !dbg !73
  br label %for.inc, !dbg !74

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !75
  %inc = add nsw i32 %8, 1, !dbg !75
  store i32 %inc, i32* %i, align 4, !dbg !75
  br label %for.cond, !dbg !76, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  br label %if.end16, !dbg !80

if.else15:                                        ; preds = %if.then9
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !81
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %for.end
  br label %if.end35, !dbg !83

if.else17:                                        ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i18, metadata !84, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer19, metadata !88, metadata !DIExpression()), !dbg !89
  %9 = bitcast [10 x i32]* %buffer19 to i8*, !dbg !89
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 40, i1 false), !dbg !89
  %10 = load i32, i32* %data, align 4, !dbg !90
  %cmp20 = icmp sge i32 %10, 0, !dbg !92
  br i1 %cmp20, label %land.lhs.true, label %if.else33, !dbg !93

land.lhs.true:                                    ; preds = %if.else17
  %11 = load i32, i32* %data, align 4, !dbg !94
  %cmp21 = icmp slt i32 %11, 10, !dbg !95
  br i1 %cmp21, label %if.then22, label %if.else33, !dbg !96

if.then22:                                        ; preds = %land.lhs.true
  %12 = load i32, i32* %data, align 4, !dbg !97
  %idxprom23 = sext i32 %12 to i64, !dbg !99
  %arrayidx24 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer19, i64 0, i64 %idxprom23, !dbg !99
  store i32 1, i32* %arrayidx24, align 4, !dbg !100
  store i32 0, i32* %i18, align 4, !dbg !101
  br label %for.cond25, !dbg !103

for.cond25:                                       ; preds = %for.inc30, %if.then22
  %13 = load i32, i32* %i18, align 4, !dbg !104
  %cmp26 = icmp slt i32 %13, 10, !dbg !106
  br i1 %cmp26, label %for.body27, label %for.end32, !dbg !107

for.body27:                                       ; preds = %for.cond25
  %14 = load i32, i32* %i18, align 4, !dbg !108
  %idxprom28 = sext i32 %14 to i64, !dbg !110
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer19, i64 0, i64 %idxprom28, !dbg !110
  %15 = load i32, i32* %arrayidx29, align 4, !dbg !110
  call void @printIntLine(i32 %15), !dbg !111
  br label %for.inc30, !dbg !112

for.inc30:                                        ; preds = %for.body27
  %16 = load i32, i32* %i18, align 4, !dbg !113
  %inc31 = add nsw i32 %16, 1, !dbg !113
  store i32 %inc31, i32* %i18, align 4, !dbg !113
  br label %for.cond25, !dbg !114, !llvm.loop !115

for.end32:                                        ; preds = %for.cond25
  br label %if.end34, !dbg !117

if.else33:                                        ; preds = %land.lhs.true, %if.else17
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !118
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %for.end32
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end16
  ret void, !dbg !120
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

declare dso_local void @printLine(i8*) #2

declare dso_local void @printIntLine(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !121 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %inputBuffer6 = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %i28 = alloca i32, align 4
  %buffer29 = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !122, metadata !DIExpression()), !dbg !123
  store i32 -1, i32* %data, align 4, !dbg !124
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !125
  %tobool = icmp ne i32 %call, 0, !dbg !125
  br i1 %tobool, label %if.then, label %if.else5, !dbg !127

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !128, metadata !DIExpression()), !dbg !131
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !131
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !132
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !134
  %call1 = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !135
  %cmp = icmp ne i8* %call1, null, !dbg !136
  br i1 %cmp, label %if.then2, label %if.else, !dbg !137

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !138
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !140
  store i32 %call4, i32* %data, align 4, !dbg !141
  br label %if.end, !dbg !142

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !143
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end15, !dbg !145

if.else5:                                         ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer6, metadata !146, metadata !DIExpression()), !dbg !149
  %2 = bitcast [14 x i8]* %inputBuffer6 to i8*, !dbg !149
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 14, i1 false), !dbg !149
  %arraydecay7 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer6, i64 0, i64 0, !dbg !150
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !152
  %call8 = call i8* @fgets(i8* %arraydecay7, i32 14, %struct._IO_FILE* %3), !dbg !153
  %cmp9 = icmp ne i8* %call8, null, !dbg !154
  br i1 %cmp9, label %if.then10, label %if.else13, !dbg !155

if.then10:                                        ; preds = %if.else5
  %arraydecay11 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer6, i64 0, i64 0, !dbg !156
  %call12 = call i32 @atoi(i8* %arraydecay11) #5, !dbg !158
  store i32 %call12, i32* %data, align 4, !dbg !159
  br label %if.end14, !dbg !160

if.else13:                                        ; preds = %if.else5
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !161
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then10
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  %call16 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !163
  %tobool17 = icmp ne i32 %call16, 0, !dbg !163
  br i1 %tobool17, label %if.then18, label %if.else27, !dbg !165

if.then18:                                        ; preds = %if.end15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !166, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !170, metadata !DIExpression()), !dbg !171
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !171
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !171
  %5 = load i32, i32* %data, align 4, !dbg !172
  %cmp19 = icmp sge i32 %5, 0, !dbg !174
  br i1 %cmp19, label %land.lhs.true, label %if.else25, !dbg !175

land.lhs.true:                                    ; preds = %if.then18
  %6 = load i32, i32* %data, align 4, !dbg !176
  %cmp20 = icmp slt i32 %6, 10, !dbg !177
  br i1 %cmp20, label %if.then21, label %if.else25, !dbg !178

if.then21:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !179
  %idxprom = sext i32 %7 to i64, !dbg !181
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !181
  store i32 1, i32* %arrayidx, align 4, !dbg !182
  store i32 0, i32* %i, align 4, !dbg !183
  br label %for.cond, !dbg !185

for.cond:                                         ; preds = %for.inc, %if.then21
  %8 = load i32, i32* %i, align 4, !dbg !186
  %cmp22 = icmp slt i32 %8, 10, !dbg !188
  br i1 %cmp22, label %for.body, label %for.end, !dbg !189

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !190
  %idxprom23 = sext i32 %9 to i64, !dbg !192
  %arrayidx24 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom23, !dbg !192
  %10 = load i32, i32* %arrayidx24, align 4, !dbg !192
  call void @printIntLine(i32 %10), !dbg !193
  br label %for.inc, !dbg !194

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !195
  %inc = add nsw i32 %11, 1, !dbg !195
  store i32 %inc, i32* %i, align 4, !dbg !195
  br label %for.cond, !dbg !196, !llvm.loop !197

for.end:                                          ; preds = %for.cond
  br label %if.end26, !dbg !199

if.else25:                                        ; preds = %land.lhs.true, %if.then18
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !200
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %for.end
  br label %if.end46, !dbg !202

if.else27:                                        ; preds = %if.end15
  call void @llvm.dbg.declare(metadata i32* %i28, metadata !203, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer29, metadata !207, metadata !DIExpression()), !dbg !208
  %12 = bitcast [10 x i32]* %buffer29 to i8*, !dbg !208
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false), !dbg !208
  %13 = load i32, i32* %data, align 4, !dbg !209
  %cmp30 = icmp sge i32 %13, 0, !dbg !211
  br i1 %cmp30, label %land.lhs.true31, label %if.else44, !dbg !212

land.lhs.true31:                                  ; preds = %if.else27
  %14 = load i32, i32* %data, align 4, !dbg !213
  %cmp32 = icmp slt i32 %14, 10, !dbg !214
  br i1 %cmp32, label %if.then33, label %if.else44, !dbg !215

if.then33:                                        ; preds = %land.lhs.true31
  %15 = load i32, i32* %data, align 4, !dbg !216
  %idxprom34 = sext i32 %15 to i64, !dbg !218
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer29, i64 0, i64 %idxprom34, !dbg !218
  store i32 1, i32* %arrayidx35, align 4, !dbg !219
  store i32 0, i32* %i28, align 4, !dbg !220
  br label %for.cond36, !dbg !222

for.cond36:                                       ; preds = %for.inc41, %if.then33
  %16 = load i32, i32* %i28, align 4, !dbg !223
  %cmp37 = icmp slt i32 %16, 10, !dbg !225
  br i1 %cmp37, label %for.body38, label %for.end43, !dbg !226

for.body38:                                       ; preds = %for.cond36
  %17 = load i32, i32* %i28, align 4, !dbg !227
  %idxprom39 = sext i32 %17 to i64, !dbg !229
  %arrayidx40 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer29, i64 0, i64 %idxprom39, !dbg !229
  %18 = load i32, i32* %arrayidx40, align 4, !dbg !229
  call void @printIntLine(i32 %18), !dbg !230
  br label %for.inc41, !dbg !231

for.inc41:                                        ; preds = %for.body38
  %19 = load i32, i32* %i28, align 4, !dbg !232
  %inc42 = add nsw i32 %19, 1, !dbg !232
  store i32 %inc42, i32* %i28, align 4, !dbg !232
  br label %for.cond36, !dbg !233, !llvm.loop !234

for.end43:                                        ; preds = %for.cond36
  br label %if.end45, !dbg !236

if.else44:                                        ; preds = %land.lhs.true31, %if.else27
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !237
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %for.end43
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end26
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !240 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %i11 = alloca i32, align 4
  %buffer12 = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !241, metadata !DIExpression()), !dbg !242
  store i32 -1, i32* %data, align 4, !dbg !243
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !244
  %tobool = icmp ne i32 %call, 0, !dbg !244
  br i1 %tobool, label %if.then, label %if.else, !dbg !246

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !247
  br label %if.end, !dbg !249

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !250
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !252
  %tobool2 = icmp ne i32 %call1, 0, !dbg !252
  br i1 %tobool2, label %if.then3, label %if.else10, !dbg !254

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !255, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !260
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !260
  %1 = load i32, i32* %data, align 4, !dbg !261
  %cmp = icmp sge i32 %1, 0, !dbg !263
  br i1 %cmp, label %if.then4, label %if.else8, !dbg !264

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !265
  %idxprom = sext i32 %2 to i64, !dbg !267
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !267
  store i32 1, i32* %arrayidx, align 4, !dbg !268
  store i32 0, i32* %i, align 4, !dbg !269
  br label %for.cond, !dbg !271

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !272
  %cmp5 = icmp slt i32 %3, 10, !dbg !274
  br i1 %cmp5, label %for.body, label %for.end, !dbg !275

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !276
  %idxprom6 = sext i32 %4 to i64, !dbg !278
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !278
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !278
  call void @printIntLine(i32 %5), !dbg !279
  br label %for.inc, !dbg !280

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !281
  %inc = add nsw i32 %6, 1, !dbg !281
  store i32 %inc, i32* %i, align 4, !dbg !281
  br label %for.cond, !dbg !282, !llvm.loop !283

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !285

if.else8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !286
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end27, !dbg !288

if.else10:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i11, metadata !289, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer12, metadata !293, metadata !DIExpression()), !dbg !294
  %7 = bitcast [10 x i32]* %buffer12 to i8*, !dbg !294
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 40, i1 false), !dbg !294
  %8 = load i32, i32* %data, align 4, !dbg !295
  %cmp13 = icmp sge i32 %8, 0, !dbg !297
  br i1 %cmp13, label %if.then14, label %if.else25, !dbg !298

if.then14:                                        ; preds = %if.else10
  %9 = load i32, i32* %data, align 4, !dbg !299
  %idxprom15 = sext i32 %9 to i64, !dbg !301
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer12, i64 0, i64 %idxprom15, !dbg !301
  store i32 1, i32* %arrayidx16, align 4, !dbg !302
  store i32 0, i32* %i11, align 4, !dbg !303
  br label %for.cond17, !dbg !305

for.cond17:                                       ; preds = %for.inc22, %if.then14
  %10 = load i32, i32* %i11, align 4, !dbg !306
  %cmp18 = icmp slt i32 %10, 10, !dbg !308
  br i1 %cmp18, label %for.body19, label %for.end24, !dbg !309

for.body19:                                       ; preds = %for.cond17
  %11 = load i32, i32* %i11, align 4, !dbg !310
  %idxprom20 = sext i32 %11 to i64, !dbg !312
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer12, i64 0, i64 %idxprom20, !dbg !312
  %12 = load i32, i32* %arrayidx21, align 4, !dbg !312
  call void @printIntLine(i32 %12), !dbg !313
  br label %for.inc22, !dbg !314

for.inc22:                                        ; preds = %for.body19
  %13 = load i32, i32* %i11, align 4, !dbg !315
  %inc23 = add nsw i32 %13, 1, !dbg !315
  store i32 %inc23, i32* %i11, align 4, !dbg !315
  br label %for.cond17, !dbg !316, !llvm.loop !317

for.end24:                                        ; preds = %for.cond17
  br label %if.end26, !dbg !319

if.else25:                                        ; preds = %if.else10
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !320
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %for.end24
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end9
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_good() #0 !dbg !323 {
entry:
  call void @goodB2G(), !dbg !324
  call void @goodG2B(), !dbg !325
  ret void, !dbg !326
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_575/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad", scope: !1, file: !1, line: 25, type: !10, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 27, type: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 27, column: 9, scope: !9)
!15 = !DILocation(line: 29, column: 10, scope: !9)
!16 = !DILocation(line: 30, column: 8, scope: !17)
!17 = distinct !DILexicalBlock(scope: !9, file: !1, line: 30, column: 8)
!18 = !DILocation(line: 30, column: 8, scope: !9)
!19 = !DILocalVariable(name: "inputBuffer", scope: !20, file: !1, line: 33, type: !22)
!20 = distinct !DILexicalBlock(scope: !21, file: !1, line: 32, column: 9)
!21 = distinct !DILexicalBlock(scope: !17, file: !1, line: 31, column: 5)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 112, elements: !24)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{!25}
!25 = !DISubrange(count: 14)
!26 = !DILocation(line: 33, column: 18, scope: !20)
!27 = !DILocation(line: 35, column: 23, scope: !28)
!28 = distinct !DILexicalBlock(scope: !20, file: !1, line: 35, column: 17)
!29 = !DILocation(line: 35, column: 53, scope: !28)
!30 = !DILocation(line: 35, column: 17, scope: !28)
!31 = !DILocation(line: 35, column: 60, scope: !28)
!32 = !DILocation(line: 35, column: 17, scope: !20)
!33 = !DILocation(line: 38, column: 29, scope: !34)
!34 = distinct !DILexicalBlock(scope: !28, file: !1, line: 36, column: 13)
!35 = !DILocation(line: 38, column: 24, scope: !34)
!36 = !DILocation(line: 38, column: 22, scope: !34)
!37 = !DILocation(line: 39, column: 13, scope: !34)
!38 = !DILocation(line: 42, column: 17, scope: !39)
!39 = distinct !DILexicalBlock(scope: !28, file: !1, line: 41, column: 13)
!40 = !DILocation(line: 45, column: 5, scope: !21)
!41 = !DILocation(line: 50, column: 14, scope: !42)
!42 = distinct !DILexicalBlock(scope: !17, file: !1, line: 47, column: 5)
!43 = !DILocation(line: 52, column: 8, scope: !44)
!44 = distinct !DILexicalBlock(scope: !9, file: !1, line: 52, column: 8)
!45 = !DILocation(line: 52, column: 8, scope: !9)
!46 = !DILocalVariable(name: "i", scope: !47, file: !1, line: 55, type: !13)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 54, column: 9)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 53, column: 5)
!49 = !DILocation(line: 55, column: 17, scope: !47)
!50 = !DILocalVariable(name: "buffer", scope: !47, file: !1, line: 56, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 10)
!54 = !DILocation(line: 56, column: 17, scope: !47)
!55 = !DILocation(line: 59, column: 17, scope: !56)
!56 = distinct !DILexicalBlock(scope: !47, file: !1, line: 59, column: 17)
!57 = !DILocation(line: 59, column: 22, scope: !56)
!58 = !DILocation(line: 59, column: 17, scope: !47)
!59 = !DILocation(line: 61, column: 24, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 60, column: 13)
!61 = !DILocation(line: 61, column: 17, scope: !60)
!62 = !DILocation(line: 61, column: 30, scope: !60)
!63 = !DILocation(line: 63, column: 23, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 63, column: 17)
!65 = !DILocation(line: 63, column: 21, scope: !64)
!66 = !DILocation(line: 63, column: 28, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 63, column: 17)
!68 = !DILocation(line: 63, column: 30, scope: !67)
!69 = !DILocation(line: 63, column: 17, scope: !64)
!70 = !DILocation(line: 65, column: 41, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 64, column: 17)
!72 = !DILocation(line: 65, column: 34, scope: !71)
!73 = !DILocation(line: 65, column: 21, scope: !71)
!74 = !DILocation(line: 66, column: 17, scope: !71)
!75 = !DILocation(line: 63, column: 37, scope: !67)
!76 = !DILocation(line: 63, column: 17, scope: !67)
!77 = distinct !{!77, !69, !78, !79}
!78 = !DILocation(line: 66, column: 17, scope: !64)
!79 = !{!"llvm.loop.mustprogress"}
!80 = !DILocation(line: 67, column: 13, scope: !60)
!81 = !DILocation(line: 70, column: 17, scope: !82)
!82 = distinct !DILexicalBlock(scope: !56, file: !1, line: 69, column: 13)
!83 = !DILocation(line: 73, column: 5, scope: !48)
!84 = !DILocalVariable(name: "i", scope: !85, file: !1, line: 77, type: !13)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 76, column: 9)
!86 = distinct !DILexicalBlock(scope: !44, file: !1, line: 75, column: 5)
!87 = !DILocation(line: 77, column: 17, scope: !85)
!88 = !DILocalVariable(name: "buffer", scope: !85, file: !1, line: 78, type: !51)
!89 = !DILocation(line: 78, column: 17, scope: !85)
!90 = !DILocation(line: 80, column: 17, scope: !91)
!91 = distinct !DILexicalBlock(scope: !85, file: !1, line: 80, column: 17)
!92 = !DILocation(line: 80, column: 22, scope: !91)
!93 = !DILocation(line: 80, column: 27, scope: !91)
!94 = !DILocation(line: 80, column: 30, scope: !91)
!95 = !DILocation(line: 80, column: 35, scope: !91)
!96 = !DILocation(line: 80, column: 17, scope: !85)
!97 = !DILocation(line: 82, column: 24, scope: !98)
!98 = distinct !DILexicalBlock(scope: !91, file: !1, line: 81, column: 13)
!99 = !DILocation(line: 82, column: 17, scope: !98)
!100 = !DILocation(line: 82, column: 30, scope: !98)
!101 = !DILocation(line: 84, column: 23, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 84, column: 17)
!103 = !DILocation(line: 84, column: 21, scope: !102)
!104 = !DILocation(line: 84, column: 28, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !1, line: 84, column: 17)
!106 = !DILocation(line: 84, column: 30, scope: !105)
!107 = !DILocation(line: 84, column: 17, scope: !102)
!108 = !DILocation(line: 86, column: 41, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 85, column: 17)
!110 = !DILocation(line: 86, column: 34, scope: !109)
!111 = !DILocation(line: 86, column: 21, scope: !109)
!112 = !DILocation(line: 87, column: 17, scope: !109)
!113 = !DILocation(line: 84, column: 37, scope: !105)
!114 = !DILocation(line: 84, column: 17, scope: !105)
!115 = distinct !{!115, !107, !116, !79}
!116 = !DILocation(line: 87, column: 17, scope: !102)
!117 = !DILocation(line: 88, column: 13, scope: !98)
!118 = !DILocation(line: 91, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !91, file: !1, line: 90, column: 13)
!120 = !DILocation(line: 95, column: 1, scope: !9)
!121 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 104, type: !10, scopeLine: 105, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!122 = !DILocalVariable(name: "data", scope: !121, file: !1, line: 106, type: !13)
!123 = !DILocation(line: 106, column: 9, scope: !121)
!124 = !DILocation(line: 108, column: 10, scope: !121)
!125 = !DILocation(line: 109, column: 8, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 109, column: 8)
!127 = !DILocation(line: 109, column: 8, scope: !121)
!128 = !DILocalVariable(name: "inputBuffer", scope: !129, file: !1, line: 112, type: !22)
!129 = distinct !DILexicalBlock(scope: !130, file: !1, line: 111, column: 9)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 110, column: 5)
!131 = !DILocation(line: 112, column: 18, scope: !129)
!132 = !DILocation(line: 114, column: 23, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 114, column: 17)
!134 = !DILocation(line: 114, column: 53, scope: !133)
!135 = !DILocation(line: 114, column: 17, scope: !133)
!136 = !DILocation(line: 114, column: 60, scope: !133)
!137 = !DILocation(line: 114, column: 17, scope: !129)
!138 = !DILocation(line: 117, column: 29, scope: !139)
!139 = distinct !DILexicalBlock(scope: !133, file: !1, line: 115, column: 13)
!140 = !DILocation(line: 117, column: 24, scope: !139)
!141 = !DILocation(line: 117, column: 22, scope: !139)
!142 = !DILocation(line: 118, column: 13, scope: !139)
!143 = !DILocation(line: 121, column: 17, scope: !144)
!144 = distinct !DILexicalBlock(scope: !133, file: !1, line: 120, column: 13)
!145 = !DILocation(line: 124, column: 5, scope: !130)
!146 = !DILocalVariable(name: "inputBuffer", scope: !147, file: !1, line: 128, type: !22)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 127, column: 9)
!148 = distinct !DILexicalBlock(scope: !126, file: !1, line: 126, column: 5)
!149 = !DILocation(line: 128, column: 18, scope: !147)
!150 = !DILocation(line: 130, column: 23, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 130, column: 17)
!152 = !DILocation(line: 130, column: 53, scope: !151)
!153 = !DILocation(line: 130, column: 17, scope: !151)
!154 = !DILocation(line: 130, column: 60, scope: !151)
!155 = !DILocation(line: 130, column: 17, scope: !147)
!156 = !DILocation(line: 133, column: 29, scope: !157)
!157 = distinct !DILexicalBlock(scope: !151, file: !1, line: 131, column: 13)
!158 = !DILocation(line: 133, column: 24, scope: !157)
!159 = !DILocation(line: 133, column: 22, scope: !157)
!160 = !DILocation(line: 134, column: 13, scope: !157)
!161 = !DILocation(line: 137, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !151, file: !1, line: 136, column: 13)
!163 = !DILocation(line: 141, column: 8, scope: !164)
!164 = distinct !DILexicalBlock(scope: !121, file: !1, line: 141, column: 8)
!165 = !DILocation(line: 141, column: 8, scope: !121)
!166 = !DILocalVariable(name: "i", scope: !167, file: !1, line: 144, type: !13)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 143, column: 9)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 142, column: 5)
!169 = !DILocation(line: 144, column: 17, scope: !167)
!170 = !DILocalVariable(name: "buffer", scope: !167, file: !1, line: 145, type: !51)
!171 = !DILocation(line: 145, column: 17, scope: !167)
!172 = !DILocation(line: 147, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !167, file: !1, line: 147, column: 17)
!174 = !DILocation(line: 147, column: 22, scope: !173)
!175 = !DILocation(line: 147, column: 27, scope: !173)
!176 = !DILocation(line: 147, column: 30, scope: !173)
!177 = !DILocation(line: 147, column: 35, scope: !173)
!178 = !DILocation(line: 147, column: 17, scope: !167)
!179 = !DILocation(line: 149, column: 24, scope: !180)
!180 = distinct !DILexicalBlock(scope: !173, file: !1, line: 148, column: 13)
!181 = !DILocation(line: 149, column: 17, scope: !180)
!182 = !DILocation(line: 149, column: 30, scope: !180)
!183 = !DILocation(line: 151, column: 23, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !1, line: 151, column: 17)
!185 = !DILocation(line: 151, column: 21, scope: !184)
!186 = !DILocation(line: 151, column: 28, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !1, line: 151, column: 17)
!188 = !DILocation(line: 151, column: 30, scope: !187)
!189 = !DILocation(line: 151, column: 17, scope: !184)
!190 = !DILocation(line: 153, column: 41, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !1, line: 152, column: 17)
!192 = !DILocation(line: 153, column: 34, scope: !191)
!193 = !DILocation(line: 153, column: 21, scope: !191)
!194 = !DILocation(line: 154, column: 17, scope: !191)
!195 = !DILocation(line: 151, column: 37, scope: !187)
!196 = !DILocation(line: 151, column: 17, scope: !187)
!197 = distinct !{!197, !189, !198, !79}
!198 = !DILocation(line: 154, column: 17, scope: !184)
!199 = !DILocation(line: 155, column: 13, scope: !180)
!200 = !DILocation(line: 158, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !173, file: !1, line: 157, column: 13)
!202 = !DILocation(line: 161, column: 5, scope: !168)
!203 = !DILocalVariable(name: "i", scope: !204, file: !1, line: 165, type: !13)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 164, column: 9)
!205 = distinct !DILexicalBlock(scope: !164, file: !1, line: 163, column: 5)
!206 = !DILocation(line: 165, column: 17, scope: !204)
!207 = !DILocalVariable(name: "buffer", scope: !204, file: !1, line: 166, type: !51)
!208 = !DILocation(line: 166, column: 17, scope: !204)
!209 = !DILocation(line: 168, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !204, file: !1, line: 168, column: 17)
!211 = !DILocation(line: 168, column: 22, scope: !210)
!212 = !DILocation(line: 168, column: 27, scope: !210)
!213 = !DILocation(line: 168, column: 30, scope: !210)
!214 = !DILocation(line: 168, column: 35, scope: !210)
!215 = !DILocation(line: 168, column: 17, scope: !204)
!216 = !DILocation(line: 170, column: 24, scope: !217)
!217 = distinct !DILexicalBlock(scope: !210, file: !1, line: 169, column: 13)
!218 = !DILocation(line: 170, column: 17, scope: !217)
!219 = !DILocation(line: 170, column: 30, scope: !217)
!220 = !DILocation(line: 172, column: 23, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !1, line: 172, column: 17)
!222 = !DILocation(line: 172, column: 21, scope: !221)
!223 = !DILocation(line: 172, column: 28, scope: !224)
!224 = distinct !DILexicalBlock(scope: !221, file: !1, line: 172, column: 17)
!225 = !DILocation(line: 172, column: 30, scope: !224)
!226 = !DILocation(line: 172, column: 17, scope: !221)
!227 = !DILocation(line: 174, column: 41, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !1, line: 173, column: 17)
!229 = !DILocation(line: 174, column: 34, scope: !228)
!230 = !DILocation(line: 174, column: 21, scope: !228)
!231 = !DILocation(line: 175, column: 17, scope: !228)
!232 = !DILocation(line: 172, column: 37, scope: !224)
!233 = !DILocation(line: 172, column: 17, scope: !224)
!234 = distinct !{!234, !226, !235, !79}
!235 = !DILocation(line: 175, column: 17, scope: !221)
!236 = !DILocation(line: 176, column: 13, scope: !217)
!237 = !DILocation(line: 179, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !210, file: !1, line: 178, column: 13)
!239 = !DILocation(line: 183, column: 1, scope: !121)
!240 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 188, type: !10, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!241 = !DILocalVariable(name: "data", scope: !240, file: !1, line: 190, type: !13)
!242 = !DILocation(line: 190, column: 9, scope: !240)
!243 = !DILocation(line: 192, column: 10, scope: !240)
!244 = !DILocation(line: 193, column: 8, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !1, line: 193, column: 8)
!246 = !DILocation(line: 193, column: 8, scope: !240)
!247 = !DILocation(line: 197, column: 14, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !1, line: 194, column: 5)
!249 = !DILocation(line: 198, column: 5, scope: !248)
!250 = !DILocation(line: 203, column: 14, scope: !251)
!251 = distinct !DILexicalBlock(scope: !245, file: !1, line: 200, column: 5)
!252 = !DILocation(line: 205, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !240, file: !1, line: 205, column: 8)
!254 = !DILocation(line: 205, column: 8, scope: !240)
!255 = !DILocalVariable(name: "i", scope: !256, file: !1, line: 208, type: !13)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 207, column: 9)
!257 = distinct !DILexicalBlock(scope: !253, file: !1, line: 206, column: 5)
!258 = !DILocation(line: 208, column: 17, scope: !256)
!259 = !DILocalVariable(name: "buffer", scope: !256, file: !1, line: 209, type: !51)
!260 = !DILocation(line: 209, column: 17, scope: !256)
!261 = !DILocation(line: 212, column: 17, scope: !262)
!262 = distinct !DILexicalBlock(scope: !256, file: !1, line: 212, column: 17)
!263 = !DILocation(line: 212, column: 22, scope: !262)
!264 = !DILocation(line: 212, column: 17, scope: !256)
!265 = !DILocation(line: 214, column: 24, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !1, line: 213, column: 13)
!267 = !DILocation(line: 214, column: 17, scope: !266)
!268 = !DILocation(line: 214, column: 30, scope: !266)
!269 = !DILocation(line: 216, column: 23, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !1, line: 216, column: 17)
!271 = !DILocation(line: 216, column: 21, scope: !270)
!272 = !DILocation(line: 216, column: 28, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !1, line: 216, column: 17)
!274 = !DILocation(line: 216, column: 30, scope: !273)
!275 = !DILocation(line: 216, column: 17, scope: !270)
!276 = !DILocation(line: 218, column: 41, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !1, line: 217, column: 17)
!278 = !DILocation(line: 218, column: 34, scope: !277)
!279 = !DILocation(line: 218, column: 21, scope: !277)
!280 = !DILocation(line: 219, column: 17, scope: !277)
!281 = !DILocation(line: 216, column: 37, scope: !273)
!282 = !DILocation(line: 216, column: 17, scope: !273)
!283 = distinct !{!283, !275, !284, !79}
!284 = !DILocation(line: 219, column: 17, scope: !270)
!285 = !DILocation(line: 220, column: 13, scope: !266)
!286 = !DILocation(line: 223, column: 17, scope: !287)
!287 = distinct !DILexicalBlock(scope: !262, file: !1, line: 222, column: 13)
!288 = !DILocation(line: 226, column: 5, scope: !257)
!289 = !DILocalVariable(name: "i", scope: !290, file: !1, line: 230, type: !13)
!290 = distinct !DILexicalBlock(scope: !291, file: !1, line: 229, column: 9)
!291 = distinct !DILexicalBlock(scope: !253, file: !1, line: 228, column: 5)
!292 = !DILocation(line: 230, column: 17, scope: !290)
!293 = !DILocalVariable(name: "buffer", scope: !290, file: !1, line: 231, type: !51)
!294 = !DILocation(line: 231, column: 17, scope: !290)
!295 = !DILocation(line: 234, column: 17, scope: !296)
!296 = distinct !DILexicalBlock(scope: !290, file: !1, line: 234, column: 17)
!297 = !DILocation(line: 234, column: 22, scope: !296)
!298 = !DILocation(line: 234, column: 17, scope: !290)
!299 = !DILocation(line: 236, column: 24, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !1, line: 235, column: 13)
!301 = !DILocation(line: 236, column: 17, scope: !300)
!302 = !DILocation(line: 236, column: 30, scope: !300)
!303 = !DILocation(line: 238, column: 23, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !1, line: 238, column: 17)
!305 = !DILocation(line: 238, column: 21, scope: !304)
!306 = !DILocation(line: 238, column: 28, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !1, line: 238, column: 17)
!308 = !DILocation(line: 238, column: 30, scope: !307)
!309 = !DILocation(line: 238, column: 17, scope: !304)
!310 = !DILocation(line: 240, column: 41, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !1, line: 239, column: 17)
!312 = !DILocation(line: 240, column: 34, scope: !311)
!313 = !DILocation(line: 240, column: 21, scope: !311)
!314 = !DILocation(line: 241, column: 17, scope: !311)
!315 = !DILocation(line: 238, column: 37, scope: !307)
!316 = !DILocation(line: 238, column: 17, scope: !307)
!317 = distinct !{!317, !309, !318, !79}
!318 = !DILocation(line: 241, column: 17, scope: !304)
!319 = !DILocation(line: 242, column: 13, scope: !300)
!320 = !DILocation(line: 245, column: 17, scope: !321)
!321 = distinct !DILexicalBlock(scope: !296, file: !1, line: 244, column: 13)
!322 = !DILocation(line: 249, column: 1, scope: !240)
!323 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_good", scope: !1, file: !1, line: 251, type: !10, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!324 = !DILocation(line: 253, column: 5, scope: !323)
!325 = !DILocation(line: 254, column: 5, scope: !323)
!326 = !DILocation(line: 255, column: 1, scope: !323)
