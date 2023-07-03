; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11_bad() #0 !dbg !9 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 -1, i32* %data, align 4, !dbg !15
  %call = call i32 (...) @globalReturnsTrue(), !dbg !16
  %tobool = icmp ne i32 %call, 0, !dbg !16
  br i1 %tobool, label %if.then, label %if.end5, !dbg !18

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
  br label %if.end5, !dbg !40

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i32 (...) @globalReturnsTrue(), !dbg !41
  %tobool7 = icmp ne i32 %call6, 0, !dbg !41
  br i1 %tobool7, label %if.then8, label %if.end16, !dbg !43

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !44, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !48, metadata !DIExpression()), !dbg !52
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !52
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !52
  %3 = load i32, i32* %data, align 4, !dbg !53
  %cmp9 = icmp sge i32 %3, 0, !dbg !55
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !56

if.then10:                                        ; preds = %if.then8
  %4 = load i32, i32* %data, align 4, !dbg !57
  %idxprom = sext i32 %4 to i64, !dbg !59
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !59
  store i32 1, i32* %arrayidx, align 4, !dbg !60
  store i32 0, i32* %i, align 4, !dbg !61
  br label %for.cond, !dbg !63

for.cond:                                         ; preds = %for.inc, %if.then10
  %5 = load i32, i32* %i, align 4, !dbg !64
  %cmp11 = icmp slt i32 %5, 10, !dbg !66
  br i1 %cmp11, label %for.body, label %for.end, !dbg !67

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !68
  %idxprom12 = sext i32 %6 to i64, !dbg !70
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom12, !dbg !70
  %7 = load i32, i32* %arrayidx13, align 4, !dbg !70
  call void @printIntLine(i32 %7), !dbg !71
  br label %for.inc, !dbg !72

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !73
  %inc = add nsw i32 %8, 1, !dbg !73
  store i32 %inc, i32* %i, align 4, !dbg !73
  br label %for.cond, !dbg !74, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  br label %if.end15, !dbg !78

if.else14:                                        ; preds = %if.then8
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !79
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end
  br label %if.end16, !dbg !81

if.end16:                                         ; preds = %if.end15, %if.end5
  ret void, !dbg !82
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @globalReturnsTrue(...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

declare dso_local void @printLine(i8*) #2

declare dso_local void @printIntLine(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !83 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !84, metadata !DIExpression()), !dbg !85
  store i32 -1, i32* %data, align 4, !dbg !86
  %call = call i32 (...) @globalReturnsTrue(), !dbg !87
  %tobool = icmp ne i32 %call, 0, !dbg !87
  br i1 %tobool, label %if.then, label %if.end5, !dbg !89

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !90, metadata !DIExpression()), !dbg !93
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !93
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !93
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !94
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !96
  %call1 = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !97
  %cmp = icmp ne i8* %call1, null, !dbg !98
  br i1 %cmp, label %if.then2, label %if.else, !dbg !99

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !100
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !102
  store i32 %call4, i32* %data, align 4, !dbg !103
  br label %if.end, !dbg !104

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !105
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !107

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i32 (...) @globalReturnsFalse(), !dbg !108
  %tobool7 = icmp ne i32 %call6, 0, !dbg !108
  br i1 %tobool7, label %if.then8, label %if.else9, !dbg !110

if.then8:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !111
  br label %if.end18, !dbg !113

if.else9:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !114, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !118, metadata !DIExpression()), !dbg !119
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !119
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !119
  %3 = load i32, i32* %data, align 4, !dbg !120
  %cmp10 = icmp sge i32 %3, 0, !dbg !122
  br i1 %cmp10, label %land.lhs.true, label %if.else16, !dbg !123

land.lhs.true:                                    ; preds = %if.else9
  %4 = load i32, i32* %data, align 4, !dbg !124
  %cmp11 = icmp slt i32 %4, 10, !dbg !125
  br i1 %cmp11, label %if.then12, label %if.else16, !dbg !126

if.then12:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !127
  %idxprom = sext i32 %5 to i64, !dbg !129
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !129
  store i32 1, i32* %arrayidx, align 4, !dbg !130
  store i32 0, i32* %i, align 4, !dbg !131
  br label %for.cond, !dbg !133

for.cond:                                         ; preds = %for.inc, %if.then12
  %6 = load i32, i32* %i, align 4, !dbg !134
  %cmp13 = icmp slt i32 %6, 10, !dbg !136
  br i1 %cmp13, label %for.body, label %for.end, !dbg !137

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !138
  %idxprom14 = sext i32 %7 to i64, !dbg !140
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom14, !dbg !140
  %8 = load i32, i32* %arrayidx15, align 4, !dbg !140
  call void @printIntLine(i32 %8), !dbg !141
  br label %for.inc, !dbg !142

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !143
  %inc = add nsw i32 %9, 1, !dbg !143
  store i32 %inc, i32* %i, align 4, !dbg !143
  br label %for.cond, !dbg !144, !llvm.loop !145

for.end:                                          ; preds = %for.cond
  br label %if.end17, !dbg !147

if.else16:                                        ; preds = %land.lhs.true, %if.else9
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !148
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %for.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  ret void, !dbg !150
}

declare dso_local i32 @globalReturnsFalse(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !151 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !152, metadata !DIExpression()), !dbg !153
  store i32 -1, i32* %data, align 4, !dbg !154
  %call = call i32 (...) @globalReturnsTrue(), !dbg !155
  %tobool = icmp ne i32 %call, 0, !dbg !155
  br i1 %tobool, label %if.then, label %if.end5, !dbg !157

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !158, metadata !DIExpression()), !dbg !161
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !161
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !161
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !162
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !164
  %call1 = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !165
  %cmp = icmp ne i8* %call1, null, !dbg !166
  br i1 %cmp, label %if.then2, label %if.else, !dbg !167

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !168
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !170
  store i32 %call4, i32* %data, align 4, !dbg !171
  br label %if.end, !dbg !172

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !173
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !175

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i32 (...) @globalReturnsTrue(), !dbg !176
  %tobool7 = icmp ne i32 %call6, 0, !dbg !176
  br i1 %tobool7, label %if.then8, label %if.end17, !dbg !178

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !179, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !183, metadata !DIExpression()), !dbg !184
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !184
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !184
  %3 = load i32, i32* %data, align 4, !dbg !185
  %cmp9 = icmp sge i32 %3, 0, !dbg !187
  br i1 %cmp9, label %land.lhs.true, label %if.else15, !dbg !188

land.lhs.true:                                    ; preds = %if.then8
  %4 = load i32, i32* %data, align 4, !dbg !189
  %cmp10 = icmp slt i32 %4, 10, !dbg !190
  br i1 %cmp10, label %if.then11, label %if.else15, !dbg !191

if.then11:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !192
  %idxprom = sext i32 %5 to i64, !dbg !194
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !194
  store i32 1, i32* %arrayidx, align 4, !dbg !195
  store i32 0, i32* %i, align 4, !dbg !196
  br label %for.cond, !dbg !198

for.cond:                                         ; preds = %for.inc, %if.then11
  %6 = load i32, i32* %i, align 4, !dbg !199
  %cmp12 = icmp slt i32 %6, 10, !dbg !201
  br i1 %cmp12, label %for.body, label %for.end, !dbg !202

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !203
  %idxprom13 = sext i32 %7 to i64, !dbg !205
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom13, !dbg !205
  %8 = load i32, i32* %arrayidx14, align 4, !dbg !205
  call void @printIntLine(i32 %8), !dbg !206
  br label %for.inc, !dbg !207

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !208
  %inc = add nsw i32 %9, 1, !dbg !208
  store i32 %inc, i32* %i, align 4, !dbg !208
  br label %for.cond, !dbg !209, !llvm.loop !210

for.end:                                          ; preds = %for.cond
  br label %if.end16, !dbg !212

if.else15:                                        ; preds = %land.lhs.true, %if.then8
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !213
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %for.end
  br label %if.end17, !dbg !215

if.end17:                                         ; preds = %if.end16, %if.end5
  ret void, !dbg !216
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !217 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !218, metadata !DIExpression()), !dbg !219
  store i32 -1, i32* %data, align 4, !dbg !220
  %call = call i32 (...) @globalReturnsFalse(), !dbg !221
  %tobool = icmp ne i32 %call, 0, !dbg !221
  br i1 %tobool, label %if.then, label %if.else, !dbg !223

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !224
  br label %if.end, !dbg !226

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !227
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1 = call i32 (...) @globalReturnsTrue(), !dbg !229
  %tobool2 = icmp ne i32 %call1, 0, !dbg !229
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !231

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !232, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !236, metadata !DIExpression()), !dbg !237
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !237
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !237
  %1 = load i32, i32* %data, align 4, !dbg !238
  %cmp = icmp sge i32 %1, 0, !dbg !240
  br i1 %cmp, label %if.then4, label %if.else8, !dbg !241

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !242
  %idxprom = sext i32 %2 to i64, !dbg !244
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !244
  store i32 1, i32* %arrayidx, align 4, !dbg !245
  store i32 0, i32* %i, align 4, !dbg !246
  br label %for.cond, !dbg !248

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !249
  %cmp5 = icmp slt i32 %3, 10, !dbg !251
  br i1 %cmp5, label %for.body, label %for.end, !dbg !252

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !253
  %idxprom6 = sext i32 %4 to i64, !dbg !255
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !255
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !255
  call void @printIntLine(i32 %5), !dbg !256
  br label %for.inc, !dbg !257

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !258
  %inc = add nsw i32 %6, 1, !dbg !258
  store i32 %inc, i32* %i, align 4, !dbg !258
  br label %for.cond, !dbg !259, !llvm.loop !260

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !262

if.else8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !263
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !265

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !267 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !268, metadata !DIExpression()), !dbg !269
  store i32 -1, i32* %data, align 4, !dbg !270
  %call = call i32 (...) @globalReturnsTrue(), !dbg !271
  %tobool = icmp ne i32 %call, 0, !dbg !271
  br i1 %tobool, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !274
  br label %if.end, !dbg !276

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 (...) @globalReturnsTrue(), !dbg !277
  %tobool2 = icmp ne i32 %call1, 0, !dbg !277
  br i1 %tobool2, label %if.then3, label %if.end9, !dbg !279

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !280, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !284, metadata !DIExpression()), !dbg !285
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !285
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !285
  %1 = load i32, i32* %data, align 4, !dbg !286
  %cmp = icmp sge i32 %1, 0, !dbg !288
  br i1 %cmp, label %if.then4, label %if.else, !dbg !289

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !290
  %idxprom = sext i32 %2 to i64, !dbg !292
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !292
  store i32 1, i32* %arrayidx, align 4, !dbg !293
  store i32 0, i32* %i, align 4, !dbg !294
  br label %for.cond, !dbg !296

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !297
  %cmp5 = icmp slt i32 %3, 10, !dbg !299
  br i1 %cmp5, label %for.body, label %for.end, !dbg !300

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !301
  %idxprom6 = sext i32 %4 to i64, !dbg !303
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !303
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !303
  call void @printIntLine(i32 %5), !dbg !304
  br label %for.inc, !dbg !305

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !306
  %inc = add nsw i32 %6, 1, !dbg !306
  store i32 %inc, i32* %i, align 4, !dbg !306
  br label %for.cond, !dbg !307, !llvm.loop !308

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !310

if.else:                                          ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !311
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !313

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11_good() #0 !dbg !315 {
entry:
  call void @goodB2G1(), !dbg !316
  call void @goodB2G2(), !dbg !317
  call void @goodG2B1(), !dbg !318
  call void @goodG2B2(), !dbg !319
  ret void, !dbg !320
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_574/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11_bad", scope: !1, file: !1, line: 25, type: !10, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!41 = !DILocation(line: 46, column: 8, scope: !42)
!42 = distinct !DILexicalBlock(scope: !9, file: !1, line: 46, column: 8)
!43 = !DILocation(line: 46, column: 8, scope: !9)
!44 = !DILocalVariable(name: "i", scope: !45, file: !1, line: 49, type: !13)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 48, column: 9)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 47, column: 5)
!47 = !DILocation(line: 49, column: 17, scope: !45)
!48 = !DILocalVariable(name: "buffer", scope: !45, file: !1, line: 50, type: !49)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 10)
!52 = !DILocation(line: 50, column: 17, scope: !45)
!53 = !DILocation(line: 53, column: 17, scope: !54)
!54 = distinct !DILexicalBlock(scope: !45, file: !1, line: 53, column: 17)
!55 = !DILocation(line: 53, column: 22, scope: !54)
!56 = !DILocation(line: 53, column: 17, scope: !45)
!57 = !DILocation(line: 55, column: 24, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 54, column: 13)
!59 = !DILocation(line: 55, column: 17, scope: !58)
!60 = !DILocation(line: 55, column: 30, scope: !58)
!61 = !DILocation(line: 57, column: 23, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 57, column: 17)
!63 = !DILocation(line: 57, column: 21, scope: !62)
!64 = !DILocation(line: 57, column: 28, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 57, column: 17)
!66 = !DILocation(line: 57, column: 30, scope: !65)
!67 = !DILocation(line: 57, column: 17, scope: !62)
!68 = !DILocation(line: 59, column: 41, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 58, column: 17)
!70 = !DILocation(line: 59, column: 34, scope: !69)
!71 = !DILocation(line: 59, column: 21, scope: !69)
!72 = !DILocation(line: 60, column: 17, scope: !69)
!73 = !DILocation(line: 57, column: 37, scope: !65)
!74 = !DILocation(line: 57, column: 17, scope: !65)
!75 = distinct !{!75, !67, !76, !77}
!76 = !DILocation(line: 60, column: 17, scope: !62)
!77 = !{!"llvm.loop.mustprogress"}
!78 = !DILocation(line: 61, column: 13, scope: !58)
!79 = !DILocation(line: 64, column: 17, scope: !80)
!80 = distinct !DILexicalBlock(scope: !54, file: !1, line: 63, column: 13)
!81 = !DILocation(line: 67, column: 5, scope: !46)
!82 = !DILocation(line: 68, column: 1, scope: !9)
!83 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 75, type: !10, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!84 = !DILocalVariable(name: "data", scope: !83, file: !1, line: 77, type: !13)
!85 = !DILocation(line: 77, column: 9, scope: !83)
!86 = !DILocation(line: 79, column: 10, scope: !83)
!87 = !DILocation(line: 80, column: 8, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 80, column: 8)
!89 = !DILocation(line: 80, column: 8, scope: !83)
!90 = !DILocalVariable(name: "inputBuffer", scope: !91, file: !1, line: 83, type: !22)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 82, column: 9)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 81, column: 5)
!93 = !DILocation(line: 83, column: 18, scope: !91)
!94 = !DILocation(line: 85, column: 23, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 85, column: 17)
!96 = !DILocation(line: 85, column: 53, scope: !95)
!97 = !DILocation(line: 85, column: 17, scope: !95)
!98 = !DILocation(line: 85, column: 60, scope: !95)
!99 = !DILocation(line: 85, column: 17, scope: !91)
!100 = !DILocation(line: 88, column: 29, scope: !101)
!101 = distinct !DILexicalBlock(scope: !95, file: !1, line: 86, column: 13)
!102 = !DILocation(line: 88, column: 24, scope: !101)
!103 = !DILocation(line: 88, column: 22, scope: !101)
!104 = !DILocation(line: 89, column: 13, scope: !101)
!105 = !DILocation(line: 92, column: 17, scope: !106)
!106 = distinct !DILexicalBlock(scope: !95, file: !1, line: 91, column: 13)
!107 = !DILocation(line: 95, column: 5, scope: !92)
!108 = !DILocation(line: 96, column: 8, scope: !109)
!109 = distinct !DILexicalBlock(scope: !83, file: !1, line: 96, column: 8)
!110 = !DILocation(line: 96, column: 8, scope: !83)
!111 = !DILocation(line: 99, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 97, column: 5)
!113 = !DILocation(line: 100, column: 5, scope: !112)
!114 = !DILocalVariable(name: "i", scope: !115, file: !1, line: 104, type: !13)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 103, column: 9)
!116 = distinct !DILexicalBlock(scope: !109, file: !1, line: 102, column: 5)
!117 = !DILocation(line: 104, column: 17, scope: !115)
!118 = !DILocalVariable(name: "buffer", scope: !115, file: !1, line: 105, type: !49)
!119 = !DILocation(line: 105, column: 17, scope: !115)
!120 = !DILocation(line: 107, column: 17, scope: !121)
!121 = distinct !DILexicalBlock(scope: !115, file: !1, line: 107, column: 17)
!122 = !DILocation(line: 107, column: 22, scope: !121)
!123 = !DILocation(line: 107, column: 27, scope: !121)
!124 = !DILocation(line: 107, column: 30, scope: !121)
!125 = !DILocation(line: 107, column: 35, scope: !121)
!126 = !DILocation(line: 107, column: 17, scope: !115)
!127 = !DILocation(line: 109, column: 24, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !1, line: 108, column: 13)
!129 = !DILocation(line: 109, column: 17, scope: !128)
!130 = !DILocation(line: 109, column: 30, scope: !128)
!131 = !DILocation(line: 111, column: 23, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 111, column: 17)
!133 = !DILocation(line: 111, column: 21, scope: !132)
!134 = !DILocation(line: 111, column: 28, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !1, line: 111, column: 17)
!136 = !DILocation(line: 111, column: 30, scope: !135)
!137 = !DILocation(line: 111, column: 17, scope: !132)
!138 = !DILocation(line: 113, column: 41, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !1, line: 112, column: 17)
!140 = !DILocation(line: 113, column: 34, scope: !139)
!141 = !DILocation(line: 113, column: 21, scope: !139)
!142 = !DILocation(line: 114, column: 17, scope: !139)
!143 = !DILocation(line: 111, column: 37, scope: !135)
!144 = !DILocation(line: 111, column: 17, scope: !135)
!145 = distinct !{!145, !137, !146, !77}
!146 = !DILocation(line: 114, column: 17, scope: !132)
!147 = !DILocation(line: 115, column: 13, scope: !128)
!148 = !DILocation(line: 118, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !121, file: !1, line: 117, column: 13)
!150 = !DILocation(line: 122, column: 1, scope: !83)
!151 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 125, type: !10, scopeLine: 126, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!152 = !DILocalVariable(name: "data", scope: !151, file: !1, line: 127, type: !13)
!153 = !DILocation(line: 127, column: 9, scope: !151)
!154 = !DILocation(line: 129, column: 10, scope: !151)
!155 = !DILocation(line: 130, column: 8, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !1, line: 130, column: 8)
!157 = !DILocation(line: 130, column: 8, scope: !151)
!158 = !DILocalVariable(name: "inputBuffer", scope: !159, file: !1, line: 133, type: !22)
!159 = distinct !DILexicalBlock(scope: !160, file: !1, line: 132, column: 9)
!160 = distinct !DILexicalBlock(scope: !156, file: !1, line: 131, column: 5)
!161 = !DILocation(line: 133, column: 18, scope: !159)
!162 = !DILocation(line: 135, column: 23, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !1, line: 135, column: 17)
!164 = !DILocation(line: 135, column: 53, scope: !163)
!165 = !DILocation(line: 135, column: 17, scope: !163)
!166 = !DILocation(line: 135, column: 60, scope: !163)
!167 = !DILocation(line: 135, column: 17, scope: !159)
!168 = !DILocation(line: 138, column: 29, scope: !169)
!169 = distinct !DILexicalBlock(scope: !163, file: !1, line: 136, column: 13)
!170 = !DILocation(line: 138, column: 24, scope: !169)
!171 = !DILocation(line: 138, column: 22, scope: !169)
!172 = !DILocation(line: 139, column: 13, scope: !169)
!173 = !DILocation(line: 142, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !163, file: !1, line: 141, column: 13)
!175 = !DILocation(line: 145, column: 5, scope: !160)
!176 = !DILocation(line: 146, column: 8, scope: !177)
!177 = distinct !DILexicalBlock(scope: !151, file: !1, line: 146, column: 8)
!178 = !DILocation(line: 146, column: 8, scope: !151)
!179 = !DILocalVariable(name: "i", scope: !180, file: !1, line: 149, type: !13)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 148, column: 9)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 147, column: 5)
!182 = !DILocation(line: 149, column: 17, scope: !180)
!183 = !DILocalVariable(name: "buffer", scope: !180, file: !1, line: 150, type: !49)
!184 = !DILocation(line: 150, column: 17, scope: !180)
!185 = !DILocation(line: 152, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !180, file: !1, line: 152, column: 17)
!187 = !DILocation(line: 152, column: 22, scope: !186)
!188 = !DILocation(line: 152, column: 27, scope: !186)
!189 = !DILocation(line: 152, column: 30, scope: !186)
!190 = !DILocation(line: 152, column: 35, scope: !186)
!191 = !DILocation(line: 152, column: 17, scope: !180)
!192 = !DILocation(line: 154, column: 24, scope: !193)
!193 = distinct !DILexicalBlock(scope: !186, file: !1, line: 153, column: 13)
!194 = !DILocation(line: 154, column: 17, scope: !193)
!195 = !DILocation(line: 154, column: 30, scope: !193)
!196 = !DILocation(line: 156, column: 23, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !1, line: 156, column: 17)
!198 = !DILocation(line: 156, column: 21, scope: !197)
!199 = !DILocation(line: 156, column: 28, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !1, line: 156, column: 17)
!201 = !DILocation(line: 156, column: 30, scope: !200)
!202 = !DILocation(line: 156, column: 17, scope: !197)
!203 = !DILocation(line: 158, column: 41, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 157, column: 17)
!205 = !DILocation(line: 158, column: 34, scope: !204)
!206 = !DILocation(line: 158, column: 21, scope: !204)
!207 = !DILocation(line: 159, column: 17, scope: !204)
!208 = !DILocation(line: 156, column: 37, scope: !200)
!209 = !DILocation(line: 156, column: 17, scope: !200)
!210 = distinct !{!210, !202, !211, !77}
!211 = !DILocation(line: 159, column: 17, scope: !197)
!212 = !DILocation(line: 160, column: 13, scope: !193)
!213 = !DILocation(line: 163, column: 17, scope: !214)
!214 = distinct !DILexicalBlock(scope: !186, file: !1, line: 162, column: 13)
!215 = !DILocation(line: 166, column: 5, scope: !181)
!216 = !DILocation(line: 167, column: 1, scope: !151)
!217 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 170, type: !10, scopeLine: 171, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!218 = !DILocalVariable(name: "data", scope: !217, file: !1, line: 172, type: !13)
!219 = !DILocation(line: 172, column: 9, scope: !217)
!220 = !DILocation(line: 174, column: 10, scope: !217)
!221 = !DILocation(line: 175, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !217, file: !1, line: 175, column: 8)
!223 = !DILocation(line: 175, column: 8, scope: !217)
!224 = !DILocation(line: 178, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !1, line: 176, column: 5)
!226 = !DILocation(line: 179, column: 5, scope: !225)
!227 = !DILocation(line: 184, column: 14, scope: !228)
!228 = distinct !DILexicalBlock(scope: !222, file: !1, line: 181, column: 5)
!229 = !DILocation(line: 186, column: 8, scope: !230)
!230 = distinct !DILexicalBlock(scope: !217, file: !1, line: 186, column: 8)
!231 = !DILocation(line: 186, column: 8, scope: !217)
!232 = !DILocalVariable(name: "i", scope: !233, file: !1, line: 189, type: !13)
!233 = distinct !DILexicalBlock(scope: !234, file: !1, line: 188, column: 9)
!234 = distinct !DILexicalBlock(scope: !230, file: !1, line: 187, column: 5)
!235 = !DILocation(line: 189, column: 17, scope: !233)
!236 = !DILocalVariable(name: "buffer", scope: !233, file: !1, line: 190, type: !49)
!237 = !DILocation(line: 190, column: 17, scope: !233)
!238 = !DILocation(line: 193, column: 17, scope: !239)
!239 = distinct !DILexicalBlock(scope: !233, file: !1, line: 193, column: 17)
!240 = !DILocation(line: 193, column: 22, scope: !239)
!241 = !DILocation(line: 193, column: 17, scope: !233)
!242 = !DILocation(line: 195, column: 24, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !1, line: 194, column: 13)
!244 = !DILocation(line: 195, column: 17, scope: !243)
!245 = !DILocation(line: 195, column: 30, scope: !243)
!246 = !DILocation(line: 197, column: 23, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !1, line: 197, column: 17)
!248 = !DILocation(line: 197, column: 21, scope: !247)
!249 = !DILocation(line: 197, column: 28, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !1, line: 197, column: 17)
!251 = !DILocation(line: 197, column: 30, scope: !250)
!252 = !DILocation(line: 197, column: 17, scope: !247)
!253 = !DILocation(line: 199, column: 41, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !1, line: 198, column: 17)
!255 = !DILocation(line: 199, column: 34, scope: !254)
!256 = !DILocation(line: 199, column: 21, scope: !254)
!257 = !DILocation(line: 200, column: 17, scope: !254)
!258 = !DILocation(line: 197, column: 37, scope: !250)
!259 = !DILocation(line: 197, column: 17, scope: !250)
!260 = distinct !{!260, !252, !261, !77}
!261 = !DILocation(line: 200, column: 17, scope: !247)
!262 = !DILocation(line: 201, column: 13, scope: !243)
!263 = !DILocation(line: 204, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !239, file: !1, line: 203, column: 13)
!265 = !DILocation(line: 207, column: 5, scope: !234)
!266 = !DILocation(line: 208, column: 1, scope: !217)
!267 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 211, type: !10, scopeLine: 212, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!268 = !DILocalVariable(name: "data", scope: !267, file: !1, line: 213, type: !13)
!269 = !DILocation(line: 213, column: 9, scope: !267)
!270 = !DILocation(line: 215, column: 10, scope: !267)
!271 = !DILocation(line: 216, column: 8, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !1, line: 216, column: 8)
!273 = !DILocation(line: 216, column: 8, scope: !267)
!274 = !DILocation(line: 220, column: 14, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !1, line: 217, column: 5)
!276 = !DILocation(line: 221, column: 5, scope: !275)
!277 = !DILocation(line: 222, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !267, file: !1, line: 222, column: 8)
!279 = !DILocation(line: 222, column: 8, scope: !267)
!280 = !DILocalVariable(name: "i", scope: !281, file: !1, line: 225, type: !13)
!281 = distinct !DILexicalBlock(scope: !282, file: !1, line: 224, column: 9)
!282 = distinct !DILexicalBlock(scope: !278, file: !1, line: 223, column: 5)
!283 = !DILocation(line: 225, column: 17, scope: !281)
!284 = !DILocalVariable(name: "buffer", scope: !281, file: !1, line: 226, type: !49)
!285 = !DILocation(line: 226, column: 17, scope: !281)
!286 = !DILocation(line: 229, column: 17, scope: !287)
!287 = distinct !DILexicalBlock(scope: !281, file: !1, line: 229, column: 17)
!288 = !DILocation(line: 229, column: 22, scope: !287)
!289 = !DILocation(line: 229, column: 17, scope: !281)
!290 = !DILocation(line: 231, column: 24, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !1, line: 230, column: 13)
!292 = !DILocation(line: 231, column: 17, scope: !291)
!293 = !DILocation(line: 231, column: 30, scope: !291)
!294 = !DILocation(line: 233, column: 23, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !1, line: 233, column: 17)
!296 = !DILocation(line: 233, column: 21, scope: !295)
!297 = !DILocation(line: 233, column: 28, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !1, line: 233, column: 17)
!299 = !DILocation(line: 233, column: 30, scope: !298)
!300 = !DILocation(line: 233, column: 17, scope: !295)
!301 = !DILocation(line: 235, column: 41, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !1, line: 234, column: 17)
!303 = !DILocation(line: 235, column: 34, scope: !302)
!304 = !DILocation(line: 235, column: 21, scope: !302)
!305 = !DILocation(line: 236, column: 17, scope: !302)
!306 = !DILocation(line: 233, column: 37, scope: !298)
!307 = !DILocation(line: 233, column: 17, scope: !298)
!308 = distinct !{!308, !300, !309, !77}
!309 = !DILocation(line: 236, column: 17, scope: !295)
!310 = !DILocation(line: 237, column: 13, scope: !291)
!311 = !DILocation(line: 240, column: 17, scope: !312)
!312 = distinct !DILexicalBlock(scope: !287, file: !1, line: 239, column: 13)
!313 = !DILocation(line: 243, column: 5, scope: !282)
!314 = !DILocation(line: 244, column: 1, scope: !267)
!315 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11_good", scope: !1, file: !1, line: 246, type: !10, scopeLine: 247, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!316 = !DILocation(line: 248, column: 5, scope: !315)
!317 = !DILocation(line: 249, column: 5, scope: !315)
!318 = !DILocation(line: 250, column: 5, scope: !315)
!319 = !DILocation(line: 251, column: 5, scope: !315)
!320 = !DILocation(line: 252, column: 1, scope: !315)
