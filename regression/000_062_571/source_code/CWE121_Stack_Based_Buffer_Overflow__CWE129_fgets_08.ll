; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsTrue() #0 !dbg !9 {
entry:
  ret i32 1, !dbg !13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsFalse() #0 !dbg !14 {
entry:
  ret i32 0, !dbg !15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08_bad() #0 !dbg !16 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 -1, i32* %data, align 4, !dbg !21
  %call = call i32 @staticReturnsTrue(), !dbg !22
  %tobool = icmp ne i32 %call, 0, !dbg !22
  br i1 %tobool, label %if.then, label %if.end5, !dbg !24

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !25, metadata !DIExpression()), !dbg !32
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !32
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !32
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !33
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !35
  %call1 = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !36
  %cmp = icmp ne i8* %call1, null, !dbg !37
  br i1 %cmp, label %if.then2, label %if.else, !dbg !38

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !39
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !41
  store i32 %call4, i32* %data, align 4, !dbg !42
  br label %if.end, !dbg !43

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !44
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !46

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i32 @staticReturnsTrue(), !dbg !47
  %tobool7 = icmp ne i32 %call6, 0, !dbg !47
  br i1 %tobool7, label %if.then8, label %if.end16, !dbg !49

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !50, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !54, metadata !DIExpression()), !dbg !58
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !58
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !58
  %3 = load i32, i32* %data, align 4, !dbg !59
  %cmp9 = icmp sge i32 %3, 0, !dbg !61
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !62

if.then10:                                        ; preds = %if.then8
  %4 = load i32, i32* %data, align 4, !dbg !63
  %idxprom = sext i32 %4 to i64, !dbg !65
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !65
  store i32 1, i32* %arrayidx, align 4, !dbg !66
  store i32 0, i32* %i, align 4, !dbg !67
  br label %for.cond, !dbg !69

for.cond:                                         ; preds = %for.inc, %if.then10
  %5 = load i32, i32* %i, align 4, !dbg !70
  %cmp11 = icmp slt i32 %5, 10, !dbg !72
  br i1 %cmp11, label %for.body, label %for.end, !dbg !73

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !74
  %idxprom12 = sext i32 %6 to i64, !dbg !76
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom12, !dbg !76
  %7 = load i32, i32* %arrayidx13, align 4, !dbg !76
  call void @printIntLine(i32 %7), !dbg !77
  br label %for.inc, !dbg !78

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !79
  %inc = add nsw i32 %8, 1, !dbg !79
  store i32 %inc, i32* %i, align 4, !dbg !79
  br label %for.cond, !dbg !80, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  br label %if.end15, !dbg !84

if.else14:                                        ; preds = %if.then8
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !85
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end
  br label %if.end16, !dbg !87

if.end16:                                         ; preds = %if.end15, %if.end5
  ret void, !dbg !88
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

declare dso_local void @printLine(i8*) #3

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !89 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !90, metadata !DIExpression()), !dbg !91
  store i32 -1, i32* %data, align 4, !dbg !92
  %call = call i32 @staticReturnsTrue(), !dbg !93
  %tobool = icmp ne i32 %call, 0, !dbg !93
  br i1 %tobool, label %if.then, label %if.end5, !dbg !95

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !96, metadata !DIExpression()), !dbg !99
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !99
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !99
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !100
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !102
  %call1 = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !103
  %cmp = icmp ne i8* %call1, null, !dbg !104
  br i1 %cmp, label %if.then2, label %if.else, !dbg !105

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !106
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !108
  store i32 %call4, i32* %data, align 4, !dbg !109
  br label %if.end, !dbg !110

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !111
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !113

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i32 @staticReturnsFalse(), !dbg !114
  %tobool7 = icmp ne i32 %call6, 0, !dbg !114
  br i1 %tobool7, label %if.then8, label %if.else9, !dbg !116

if.then8:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !117
  br label %if.end18, !dbg !119

if.else9:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !120, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !124, metadata !DIExpression()), !dbg !125
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !125
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !125
  %3 = load i32, i32* %data, align 4, !dbg !126
  %cmp10 = icmp sge i32 %3, 0, !dbg !128
  br i1 %cmp10, label %land.lhs.true, label %if.else16, !dbg !129

land.lhs.true:                                    ; preds = %if.else9
  %4 = load i32, i32* %data, align 4, !dbg !130
  %cmp11 = icmp slt i32 %4, 10, !dbg !131
  br i1 %cmp11, label %if.then12, label %if.else16, !dbg !132

if.then12:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !133
  %idxprom = sext i32 %5 to i64, !dbg !135
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !135
  store i32 1, i32* %arrayidx, align 4, !dbg !136
  store i32 0, i32* %i, align 4, !dbg !137
  br label %for.cond, !dbg !139

for.cond:                                         ; preds = %for.inc, %if.then12
  %6 = load i32, i32* %i, align 4, !dbg !140
  %cmp13 = icmp slt i32 %6, 10, !dbg !142
  br i1 %cmp13, label %for.body, label %for.end, !dbg !143

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !144
  %idxprom14 = sext i32 %7 to i64, !dbg !146
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom14, !dbg !146
  %8 = load i32, i32* %arrayidx15, align 4, !dbg !146
  call void @printIntLine(i32 %8), !dbg !147
  br label %for.inc, !dbg !148

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !149
  %inc = add nsw i32 %9, 1, !dbg !149
  store i32 %inc, i32* %i, align 4, !dbg !149
  br label %for.cond, !dbg !150, !llvm.loop !151

for.end:                                          ; preds = %for.cond
  br label %if.end17, !dbg !153

if.else16:                                        ; preds = %land.lhs.true, %if.else9
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !154
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %for.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  ret void, !dbg !156
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !157 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !158, metadata !DIExpression()), !dbg !159
  store i32 -1, i32* %data, align 4, !dbg !160
  %call = call i32 @staticReturnsTrue(), !dbg !161
  %tobool = icmp ne i32 %call, 0, !dbg !161
  br i1 %tobool, label %if.then, label %if.end5, !dbg !163

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !164, metadata !DIExpression()), !dbg !167
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !167
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !167
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !168
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !170
  %call1 = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !171
  %cmp = icmp ne i8* %call1, null, !dbg !172
  br i1 %cmp, label %if.then2, label %if.else, !dbg !173

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !174
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !176
  store i32 %call4, i32* %data, align 4, !dbg !177
  br label %if.end, !dbg !178

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !179
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !181

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i32 @staticReturnsTrue(), !dbg !182
  %tobool7 = icmp ne i32 %call6, 0, !dbg !182
  br i1 %tobool7, label %if.then8, label %if.end17, !dbg !184

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !185, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !189, metadata !DIExpression()), !dbg !190
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !190
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !190
  %3 = load i32, i32* %data, align 4, !dbg !191
  %cmp9 = icmp sge i32 %3, 0, !dbg !193
  br i1 %cmp9, label %land.lhs.true, label %if.else15, !dbg !194

land.lhs.true:                                    ; preds = %if.then8
  %4 = load i32, i32* %data, align 4, !dbg !195
  %cmp10 = icmp slt i32 %4, 10, !dbg !196
  br i1 %cmp10, label %if.then11, label %if.else15, !dbg !197

if.then11:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !198
  %idxprom = sext i32 %5 to i64, !dbg !200
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !200
  store i32 1, i32* %arrayidx, align 4, !dbg !201
  store i32 0, i32* %i, align 4, !dbg !202
  br label %for.cond, !dbg !204

for.cond:                                         ; preds = %for.inc, %if.then11
  %6 = load i32, i32* %i, align 4, !dbg !205
  %cmp12 = icmp slt i32 %6, 10, !dbg !207
  br i1 %cmp12, label %for.body, label %for.end, !dbg !208

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !209
  %idxprom13 = sext i32 %7 to i64, !dbg !211
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom13, !dbg !211
  %8 = load i32, i32* %arrayidx14, align 4, !dbg !211
  call void @printIntLine(i32 %8), !dbg !212
  br label %for.inc, !dbg !213

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !214
  %inc = add nsw i32 %9, 1, !dbg !214
  store i32 %inc, i32* %i, align 4, !dbg !214
  br label %for.cond, !dbg !215, !llvm.loop !216

for.end:                                          ; preds = %for.cond
  br label %if.end16, !dbg !218

if.else15:                                        ; preds = %land.lhs.true, %if.then8
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !219
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %for.end
  br label %if.end17, !dbg !221

if.end17:                                         ; preds = %if.end16, %if.end5
  ret void, !dbg !222
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !223 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !224, metadata !DIExpression()), !dbg !225
  store i32 -1, i32* %data, align 4, !dbg !226
  %call = call i32 @staticReturnsFalse(), !dbg !227
  %tobool = icmp ne i32 %call, 0, !dbg !227
  br i1 %tobool, label %if.then, label %if.else, !dbg !229

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !230
  br label %if.end, !dbg !232

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !233
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1 = call i32 @staticReturnsTrue(), !dbg !235
  %tobool2 = icmp ne i32 %call1, 0, !dbg !235
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !237

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !238, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !243
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !243
  %1 = load i32, i32* %data, align 4, !dbg !244
  %cmp = icmp sge i32 %1, 0, !dbg !246
  br i1 %cmp, label %if.then4, label %if.else8, !dbg !247

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !248
  %idxprom = sext i32 %2 to i64, !dbg !250
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !250
  store i32 1, i32* %arrayidx, align 4, !dbg !251
  store i32 0, i32* %i, align 4, !dbg !252
  br label %for.cond, !dbg !254

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !255
  %cmp5 = icmp slt i32 %3, 10, !dbg !257
  br i1 %cmp5, label %for.body, label %for.end, !dbg !258

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !259
  %idxprom6 = sext i32 %4 to i64, !dbg !261
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !261
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !261
  call void @printIntLine(i32 %5), !dbg !262
  br label %for.inc, !dbg !263

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !264
  %inc = add nsw i32 %6, 1, !dbg !264
  store i32 %inc, i32* %i, align 4, !dbg !264
  br label %for.cond, !dbg !265, !llvm.loop !266

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !268

if.else8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !269
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !271

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !273 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !274, metadata !DIExpression()), !dbg !275
  store i32 -1, i32* %data, align 4, !dbg !276
  %call = call i32 @staticReturnsTrue(), !dbg !277
  %tobool = icmp ne i32 %call, 0, !dbg !277
  br i1 %tobool, label %if.then, label %if.end, !dbg !279

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !280
  br label %if.end, !dbg !282

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @staticReturnsTrue(), !dbg !283
  %tobool2 = icmp ne i32 %call1, 0, !dbg !283
  br i1 %tobool2, label %if.then3, label %if.end9, !dbg !285

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !286, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !290, metadata !DIExpression()), !dbg !291
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !291
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !291
  %1 = load i32, i32* %data, align 4, !dbg !292
  %cmp = icmp sge i32 %1, 0, !dbg !294
  br i1 %cmp, label %if.then4, label %if.else, !dbg !295

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !296
  %idxprom = sext i32 %2 to i64, !dbg !298
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !298
  store i32 1, i32* %arrayidx, align 4, !dbg !299
  store i32 0, i32* %i, align 4, !dbg !300
  br label %for.cond, !dbg !302

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !303
  %cmp5 = icmp slt i32 %3, 10, !dbg !305
  br i1 %cmp5, label %for.body, label %for.end, !dbg !306

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !307
  %idxprom6 = sext i32 %4 to i64, !dbg !309
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !309
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !309
  call void @printIntLine(i32 %5), !dbg !310
  br label %for.inc, !dbg !311

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !312
  %inc = add nsw i32 %6, 1, !dbg !312
  store i32 %inc, i32* %i, align 4, !dbg !312
  br label %for.cond, !dbg !313, !llvm.loop !314

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !316

if.else:                                          ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !317
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !319

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !320
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08_good() #0 !dbg !321 {
entry:
  call void @goodB2G1(), !dbg !322
  call void @goodB2G2(), !dbg !323
  call void @goodG2B1(), !dbg !324
  call void @goodG2B2(), !dbg !325
  ret void, !dbg !326
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_571/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !1, file: !1, line: 26, type: !10, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocation(line: 28, column: 5, scope: !9)
!14 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !1, file: !1, line: 31, type: !10, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 33, column: 5, scope: !14)
!16 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08_bad", scope: !1, file: !1, line: 38, type: !17, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !DILocalVariable(name: "data", scope: !16, file: !1, line: 40, type: !12)
!20 = !DILocation(line: 40, column: 9, scope: !16)
!21 = !DILocation(line: 42, column: 10, scope: !16)
!22 = !DILocation(line: 43, column: 8, scope: !23)
!23 = distinct !DILexicalBlock(scope: !16, file: !1, line: 43, column: 8)
!24 = !DILocation(line: 43, column: 8, scope: !16)
!25 = !DILocalVariable(name: "inputBuffer", scope: !26, file: !1, line: 46, type: !28)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 45, column: 9)
!27 = distinct !DILexicalBlock(scope: !23, file: !1, line: 44, column: 5)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 112, elements: !30)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !{!31}
!31 = !DISubrange(count: 14)
!32 = !DILocation(line: 46, column: 18, scope: !26)
!33 = !DILocation(line: 48, column: 23, scope: !34)
!34 = distinct !DILexicalBlock(scope: !26, file: !1, line: 48, column: 17)
!35 = !DILocation(line: 48, column: 53, scope: !34)
!36 = !DILocation(line: 48, column: 17, scope: !34)
!37 = !DILocation(line: 48, column: 60, scope: !34)
!38 = !DILocation(line: 48, column: 17, scope: !26)
!39 = !DILocation(line: 51, column: 29, scope: !40)
!40 = distinct !DILexicalBlock(scope: !34, file: !1, line: 49, column: 13)
!41 = !DILocation(line: 51, column: 24, scope: !40)
!42 = !DILocation(line: 51, column: 22, scope: !40)
!43 = !DILocation(line: 52, column: 13, scope: !40)
!44 = !DILocation(line: 55, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !34, file: !1, line: 54, column: 13)
!46 = !DILocation(line: 58, column: 5, scope: !27)
!47 = !DILocation(line: 59, column: 8, scope: !48)
!48 = distinct !DILexicalBlock(scope: !16, file: !1, line: 59, column: 8)
!49 = !DILocation(line: 59, column: 8, scope: !16)
!50 = !DILocalVariable(name: "i", scope: !51, file: !1, line: 62, type: !12)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 61, column: 9)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 60, column: 5)
!53 = !DILocation(line: 62, column: 17, scope: !51)
!54 = !DILocalVariable(name: "buffer", scope: !51, file: !1, line: 63, type: !55)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 10)
!58 = !DILocation(line: 63, column: 17, scope: !51)
!59 = !DILocation(line: 66, column: 17, scope: !60)
!60 = distinct !DILexicalBlock(scope: !51, file: !1, line: 66, column: 17)
!61 = !DILocation(line: 66, column: 22, scope: !60)
!62 = !DILocation(line: 66, column: 17, scope: !51)
!63 = !DILocation(line: 68, column: 24, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 67, column: 13)
!65 = !DILocation(line: 68, column: 17, scope: !64)
!66 = !DILocation(line: 68, column: 30, scope: !64)
!67 = !DILocation(line: 70, column: 23, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 70, column: 17)
!69 = !DILocation(line: 70, column: 21, scope: !68)
!70 = !DILocation(line: 70, column: 28, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 70, column: 17)
!72 = !DILocation(line: 70, column: 30, scope: !71)
!73 = !DILocation(line: 70, column: 17, scope: !68)
!74 = !DILocation(line: 72, column: 41, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 71, column: 17)
!76 = !DILocation(line: 72, column: 34, scope: !75)
!77 = !DILocation(line: 72, column: 21, scope: !75)
!78 = !DILocation(line: 73, column: 17, scope: !75)
!79 = !DILocation(line: 70, column: 37, scope: !71)
!80 = !DILocation(line: 70, column: 17, scope: !71)
!81 = distinct !{!81, !73, !82, !83}
!82 = !DILocation(line: 73, column: 17, scope: !68)
!83 = !{!"llvm.loop.mustprogress"}
!84 = !DILocation(line: 74, column: 13, scope: !64)
!85 = !DILocation(line: 77, column: 17, scope: !86)
!86 = distinct !DILexicalBlock(scope: !60, file: !1, line: 76, column: 13)
!87 = !DILocation(line: 80, column: 5, scope: !52)
!88 = !DILocation(line: 81, column: 1, scope: !16)
!89 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 88, type: !17, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!90 = !DILocalVariable(name: "data", scope: !89, file: !1, line: 90, type: !12)
!91 = !DILocation(line: 90, column: 9, scope: !89)
!92 = !DILocation(line: 92, column: 10, scope: !89)
!93 = !DILocation(line: 93, column: 8, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !1, line: 93, column: 8)
!95 = !DILocation(line: 93, column: 8, scope: !89)
!96 = !DILocalVariable(name: "inputBuffer", scope: !97, file: !1, line: 96, type: !28)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 95, column: 9)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 94, column: 5)
!99 = !DILocation(line: 96, column: 18, scope: !97)
!100 = !DILocation(line: 98, column: 23, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 98, column: 17)
!102 = !DILocation(line: 98, column: 53, scope: !101)
!103 = !DILocation(line: 98, column: 17, scope: !101)
!104 = !DILocation(line: 98, column: 60, scope: !101)
!105 = !DILocation(line: 98, column: 17, scope: !97)
!106 = !DILocation(line: 101, column: 29, scope: !107)
!107 = distinct !DILexicalBlock(scope: !101, file: !1, line: 99, column: 13)
!108 = !DILocation(line: 101, column: 24, scope: !107)
!109 = !DILocation(line: 101, column: 22, scope: !107)
!110 = !DILocation(line: 102, column: 13, scope: !107)
!111 = !DILocation(line: 105, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !101, file: !1, line: 104, column: 13)
!113 = !DILocation(line: 108, column: 5, scope: !98)
!114 = !DILocation(line: 109, column: 8, scope: !115)
!115 = distinct !DILexicalBlock(scope: !89, file: !1, line: 109, column: 8)
!116 = !DILocation(line: 109, column: 8, scope: !89)
!117 = !DILocation(line: 112, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !1, line: 110, column: 5)
!119 = !DILocation(line: 113, column: 5, scope: !118)
!120 = !DILocalVariable(name: "i", scope: !121, file: !1, line: 117, type: !12)
!121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 116, column: 9)
!122 = distinct !DILexicalBlock(scope: !115, file: !1, line: 115, column: 5)
!123 = !DILocation(line: 117, column: 17, scope: !121)
!124 = !DILocalVariable(name: "buffer", scope: !121, file: !1, line: 118, type: !55)
!125 = !DILocation(line: 118, column: 17, scope: !121)
!126 = !DILocation(line: 120, column: 17, scope: !127)
!127 = distinct !DILexicalBlock(scope: !121, file: !1, line: 120, column: 17)
!128 = !DILocation(line: 120, column: 22, scope: !127)
!129 = !DILocation(line: 120, column: 27, scope: !127)
!130 = !DILocation(line: 120, column: 30, scope: !127)
!131 = !DILocation(line: 120, column: 35, scope: !127)
!132 = !DILocation(line: 120, column: 17, scope: !121)
!133 = !DILocation(line: 122, column: 24, scope: !134)
!134 = distinct !DILexicalBlock(scope: !127, file: !1, line: 121, column: 13)
!135 = !DILocation(line: 122, column: 17, scope: !134)
!136 = !DILocation(line: 122, column: 30, scope: !134)
!137 = !DILocation(line: 124, column: 23, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !1, line: 124, column: 17)
!139 = !DILocation(line: 124, column: 21, scope: !138)
!140 = !DILocation(line: 124, column: 28, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !1, line: 124, column: 17)
!142 = !DILocation(line: 124, column: 30, scope: !141)
!143 = !DILocation(line: 124, column: 17, scope: !138)
!144 = !DILocation(line: 126, column: 41, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !1, line: 125, column: 17)
!146 = !DILocation(line: 126, column: 34, scope: !145)
!147 = !DILocation(line: 126, column: 21, scope: !145)
!148 = !DILocation(line: 127, column: 17, scope: !145)
!149 = !DILocation(line: 124, column: 37, scope: !141)
!150 = !DILocation(line: 124, column: 17, scope: !141)
!151 = distinct !{!151, !143, !152, !83}
!152 = !DILocation(line: 127, column: 17, scope: !138)
!153 = !DILocation(line: 128, column: 13, scope: !134)
!154 = !DILocation(line: 131, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !127, file: !1, line: 130, column: 13)
!156 = !DILocation(line: 135, column: 1, scope: !89)
!157 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 138, type: !17, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!158 = !DILocalVariable(name: "data", scope: !157, file: !1, line: 140, type: !12)
!159 = !DILocation(line: 140, column: 9, scope: !157)
!160 = !DILocation(line: 142, column: 10, scope: !157)
!161 = !DILocation(line: 143, column: 8, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !1, line: 143, column: 8)
!163 = !DILocation(line: 143, column: 8, scope: !157)
!164 = !DILocalVariable(name: "inputBuffer", scope: !165, file: !1, line: 146, type: !28)
!165 = distinct !DILexicalBlock(scope: !166, file: !1, line: 145, column: 9)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 144, column: 5)
!167 = !DILocation(line: 146, column: 18, scope: !165)
!168 = !DILocation(line: 148, column: 23, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !1, line: 148, column: 17)
!170 = !DILocation(line: 148, column: 53, scope: !169)
!171 = !DILocation(line: 148, column: 17, scope: !169)
!172 = !DILocation(line: 148, column: 60, scope: !169)
!173 = !DILocation(line: 148, column: 17, scope: !165)
!174 = !DILocation(line: 151, column: 29, scope: !175)
!175 = distinct !DILexicalBlock(scope: !169, file: !1, line: 149, column: 13)
!176 = !DILocation(line: 151, column: 24, scope: !175)
!177 = !DILocation(line: 151, column: 22, scope: !175)
!178 = !DILocation(line: 152, column: 13, scope: !175)
!179 = !DILocation(line: 155, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !169, file: !1, line: 154, column: 13)
!181 = !DILocation(line: 158, column: 5, scope: !166)
!182 = !DILocation(line: 159, column: 8, scope: !183)
!183 = distinct !DILexicalBlock(scope: !157, file: !1, line: 159, column: 8)
!184 = !DILocation(line: 159, column: 8, scope: !157)
!185 = !DILocalVariable(name: "i", scope: !186, file: !1, line: 162, type: !12)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 161, column: 9)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 160, column: 5)
!188 = !DILocation(line: 162, column: 17, scope: !186)
!189 = !DILocalVariable(name: "buffer", scope: !186, file: !1, line: 163, type: !55)
!190 = !DILocation(line: 163, column: 17, scope: !186)
!191 = !DILocation(line: 165, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !186, file: !1, line: 165, column: 17)
!193 = !DILocation(line: 165, column: 22, scope: !192)
!194 = !DILocation(line: 165, column: 27, scope: !192)
!195 = !DILocation(line: 165, column: 30, scope: !192)
!196 = !DILocation(line: 165, column: 35, scope: !192)
!197 = !DILocation(line: 165, column: 17, scope: !186)
!198 = !DILocation(line: 167, column: 24, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !1, line: 166, column: 13)
!200 = !DILocation(line: 167, column: 17, scope: !199)
!201 = !DILocation(line: 167, column: 30, scope: !199)
!202 = !DILocation(line: 169, column: 23, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 169, column: 17)
!204 = !DILocation(line: 169, column: 21, scope: !203)
!205 = !DILocation(line: 169, column: 28, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !1, line: 169, column: 17)
!207 = !DILocation(line: 169, column: 30, scope: !206)
!208 = !DILocation(line: 169, column: 17, scope: !203)
!209 = !DILocation(line: 171, column: 41, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !1, line: 170, column: 17)
!211 = !DILocation(line: 171, column: 34, scope: !210)
!212 = !DILocation(line: 171, column: 21, scope: !210)
!213 = !DILocation(line: 172, column: 17, scope: !210)
!214 = !DILocation(line: 169, column: 37, scope: !206)
!215 = !DILocation(line: 169, column: 17, scope: !206)
!216 = distinct !{!216, !208, !217, !83}
!217 = !DILocation(line: 172, column: 17, scope: !203)
!218 = !DILocation(line: 173, column: 13, scope: !199)
!219 = !DILocation(line: 176, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !192, file: !1, line: 175, column: 13)
!221 = !DILocation(line: 179, column: 5, scope: !187)
!222 = !DILocation(line: 180, column: 1, scope: !157)
!223 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 183, type: !17, scopeLine: 184, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!224 = !DILocalVariable(name: "data", scope: !223, file: !1, line: 185, type: !12)
!225 = !DILocation(line: 185, column: 9, scope: !223)
!226 = !DILocation(line: 187, column: 10, scope: !223)
!227 = !DILocation(line: 188, column: 8, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !1, line: 188, column: 8)
!229 = !DILocation(line: 188, column: 8, scope: !223)
!230 = !DILocation(line: 191, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !1, line: 189, column: 5)
!232 = !DILocation(line: 192, column: 5, scope: !231)
!233 = !DILocation(line: 197, column: 14, scope: !234)
!234 = distinct !DILexicalBlock(scope: !228, file: !1, line: 194, column: 5)
!235 = !DILocation(line: 199, column: 8, scope: !236)
!236 = distinct !DILexicalBlock(scope: !223, file: !1, line: 199, column: 8)
!237 = !DILocation(line: 199, column: 8, scope: !223)
!238 = !DILocalVariable(name: "i", scope: !239, file: !1, line: 202, type: !12)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 201, column: 9)
!240 = distinct !DILexicalBlock(scope: !236, file: !1, line: 200, column: 5)
!241 = !DILocation(line: 202, column: 17, scope: !239)
!242 = !DILocalVariable(name: "buffer", scope: !239, file: !1, line: 203, type: !55)
!243 = !DILocation(line: 203, column: 17, scope: !239)
!244 = !DILocation(line: 206, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !1, line: 206, column: 17)
!246 = !DILocation(line: 206, column: 22, scope: !245)
!247 = !DILocation(line: 206, column: 17, scope: !239)
!248 = !DILocation(line: 208, column: 24, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !1, line: 207, column: 13)
!250 = !DILocation(line: 208, column: 17, scope: !249)
!251 = !DILocation(line: 208, column: 30, scope: !249)
!252 = !DILocation(line: 210, column: 23, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !1, line: 210, column: 17)
!254 = !DILocation(line: 210, column: 21, scope: !253)
!255 = !DILocation(line: 210, column: 28, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !1, line: 210, column: 17)
!257 = !DILocation(line: 210, column: 30, scope: !256)
!258 = !DILocation(line: 210, column: 17, scope: !253)
!259 = !DILocation(line: 212, column: 41, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !1, line: 211, column: 17)
!261 = !DILocation(line: 212, column: 34, scope: !260)
!262 = !DILocation(line: 212, column: 21, scope: !260)
!263 = !DILocation(line: 213, column: 17, scope: !260)
!264 = !DILocation(line: 210, column: 37, scope: !256)
!265 = !DILocation(line: 210, column: 17, scope: !256)
!266 = distinct !{!266, !258, !267, !83}
!267 = !DILocation(line: 213, column: 17, scope: !253)
!268 = !DILocation(line: 214, column: 13, scope: !249)
!269 = !DILocation(line: 217, column: 17, scope: !270)
!270 = distinct !DILexicalBlock(scope: !245, file: !1, line: 216, column: 13)
!271 = !DILocation(line: 220, column: 5, scope: !240)
!272 = !DILocation(line: 221, column: 1, scope: !223)
!273 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 224, type: !17, scopeLine: 225, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!274 = !DILocalVariable(name: "data", scope: !273, file: !1, line: 226, type: !12)
!275 = !DILocation(line: 226, column: 9, scope: !273)
!276 = !DILocation(line: 228, column: 10, scope: !273)
!277 = !DILocation(line: 229, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !1, line: 229, column: 8)
!279 = !DILocation(line: 229, column: 8, scope: !273)
!280 = !DILocation(line: 233, column: 14, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !1, line: 230, column: 5)
!282 = !DILocation(line: 234, column: 5, scope: !281)
!283 = !DILocation(line: 235, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !273, file: !1, line: 235, column: 8)
!285 = !DILocation(line: 235, column: 8, scope: !273)
!286 = !DILocalVariable(name: "i", scope: !287, file: !1, line: 238, type: !12)
!287 = distinct !DILexicalBlock(scope: !288, file: !1, line: 237, column: 9)
!288 = distinct !DILexicalBlock(scope: !284, file: !1, line: 236, column: 5)
!289 = !DILocation(line: 238, column: 17, scope: !287)
!290 = !DILocalVariable(name: "buffer", scope: !287, file: !1, line: 239, type: !55)
!291 = !DILocation(line: 239, column: 17, scope: !287)
!292 = !DILocation(line: 242, column: 17, scope: !293)
!293 = distinct !DILexicalBlock(scope: !287, file: !1, line: 242, column: 17)
!294 = !DILocation(line: 242, column: 22, scope: !293)
!295 = !DILocation(line: 242, column: 17, scope: !287)
!296 = !DILocation(line: 244, column: 24, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !1, line: 243, column: 13)
!298 = !DILocation(line: 244, column: 17, scope: !297)
!299 = !DILocation(line: 244, column: 30, scope: !297)
!300 = !DILocation(line: 246, column: 23, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !1, line: 246, column: 17)
!302 = !DILocation(line: 246, column: 21, scope: !301)
!303 = !DILocation(line: 246, column: 28, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !1, line: 246, column: 17)
!305 = !DILocation(line: 246, column: 30, scope: !304)
!306 = !DILocation(line: 246, column: 17, scope: !301)
!307 = !DILocation(line: 248, column: 41, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !1, line: 247, column: 17)
!309 = !DILocation(line: 248, column: 34, scope: !308)
!310 = !DILocation(line: 248, column: 21, scope: !308)
!311 = !DILocation(line: 249, column: 17, scope: !308)
!312 = !DILocation(line: 246, column: 37, scope: !304)
!313 = !DILocation(line: 246, column: 17, scope: !304)
!314 = distinct !{!314, !306, !315, !83}
!315 = !DILocation(line: 249, column: 17, scope: !301)
!316 = !DILocation(line: 250, column: 13, scope: !297)
!317 = !DILocation(line: 253, column: 17, scope: !318)
!318 = distinct !DILexicalBlock(scope: !293, file: !1, line: 252, column: 13)
!319 = !DILocation(line: 256, column: 5, scope: !288)
!320 = !DILocation(line: 257, column: 1, scope: !273)
!321 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08_good", scope: !1, file: !1, line: 259, type: !17, scopeLine: 260, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!322 = !DILocation(line: 261, column: 5, scope: !321)
!323 = !DILocation(line: 262, column: 5, scope: !321)
!324 = !DILocation(line: 263, column: 5, scope: !321)
!325 = !DILocation(line: 264, column: 5, scope: !321)
!326 = !DILocation(line: 265, column: 1, scope: !321)
