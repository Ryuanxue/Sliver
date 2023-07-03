; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.4 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsTrue() #0 !dbg !52 {
entry:
  ret i32 1, !dbg !55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsFalse() #0 !dbg !56 {
entry:
  ret i32 0, !dbg !57
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08_bad() #0 !dbg !58 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 -1, i32* %data, align 4, !dbg !63
  %call = call i32 @staticReturnsTrue(), !dbg !64
  %tobool = icmp ne i32 %call, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.end5, !dbg !66

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !67, metadata !DIExpression()), !dbg !73
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !73
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !73
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !74
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !76
  %call1 = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !77
  %cmp = icmp ne i8* %call1, null, !dbg !78
  br i1 %cmp, label %if.then2, label %if.else, !dbg !79

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !80
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !82
  store i32 %call4, i32* %data, align 4, !dbg !83
  br label %if.end, !dbg !84

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !85
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !87

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i32 @staticReturnsTrue(), !dbg !88
  %tobool7 = icmp ne i32 %call6, 0, !dbg !88
  br i1 %tobool7, label %if.then8, label %if.end16, !dbg !90

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !91, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !95, metadata !DIExpression()), !dbg !99
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !99
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !99
  %3 = load i32, i32* %data, align 4, !dbg !100
  %cmp9 = icmp sge i32 %3, 0, !dbg !102
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !103

if.then10:                                        ; preds = %if.then8
  %4 = load i32, i32* %data, align 4, !dbg !104
  %idxprom = sext i32 %4 to i64, !dbg !106
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !106
  store i32 1, i32* %arrayidx, align 4, !dbg !107
  store i32 0, i32* %i, align 4, !dbg !108
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc, %if.then10
  %5 = load i32, i32* %i, align 4, !dbg !111
  %cmp11 = icmp slt i32 %5, 10, !dbg !113
  br i1 %cmp11, label %for.body, label %for.end, !dbg !114

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !115
  %idxprom12 = sext i32 %6 to i64, !dbg !117
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom12, !dbg !117
  %7 = load i32, i32* %arrayidx13, align 4, !dbg !117
  call void @printIntLine(i32 %7), !dbg !118
  br label %for.inc, !dbg !119

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !120
  %inc = add nsw i32 %8, 1, !dbg !120
  store i32 %inc, i32* %i, align 4, !dbg !120
  br label %for.cond, !dbg !121, !llvm.loop !122

for.end:                                          ; preds = %for.cond
  br label %if.end15, !dbg !125

if.else14:                                        ; preds = %if.then8
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !126
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end
  br label %if.end16, !dbg !128

if.end16:                                         ; preds = %if.end15, %if.end5
  ret void, !dbg !129
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !130 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !131, metadata !DIExpression()), !dbg !132
  store i32 -1, i32* %data, align 4, !dbg !133
  %call = call i32 @staticReturnsTrue(), !dbg !134
  %tobool = icmp ne i32 %call, 0, !dbg !134
  br i1 %tobool, label %if.then, label %if.end5, !dbg !136

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !137, metadata !DIExpression()), !dbg !140
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !140
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !140
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !141
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !143
  %call1 = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !144
  %cmp = icmp ne i8* %call1, null, !dbg !145
  br i1 %cmp, label %if.then2, label %if.else, !dbg !146

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !147
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !149
  store i32 %call4, i32* %data, align 4, !dbg !150
  br label %if.end, !dbg !151

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !152
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !154

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i32 @staticReturnsFalse(), !dbg !155
  %tobool7 = icmp ne i32 %call6, 0, !dbg !155
  br i1 %tobool7, label %if.then8, label %if.else9, !dbg !157

if.then8:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !158
  br label %if.end18, !dbg !160

if.else9:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !161, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !165, metadata !DIExpression()), !dbg !166
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !166
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !166
  %3 = load i32, i32* %data, align 4, !dbg !167
  %cmp10 = icmp sge i32 %3, 0, !dbg !169
  br i1 %cmp10, label %land.lhs.true, label %if.else16, !dbg !170

land.lhs.true:                                    ; preds = %if.else9
  %4 = load i32, i32* %data, align 4, !dbg !171
  %cmp11 = icmp slt i32 %4, 10, !dbg !172
  br i1 %cmp11, label %if.then12, label %if.else16, !dbg !173

if.then12:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !174
  %idxprom = sext i32 %5 to i64, !dbg !176
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !176
  store i32 1, i32* %arrayidx, align 4, !dbg !177
  store i32 0, i32* %i, align 4, !dbg !178
  br label %for.cond, !dbg !180

for.cond:                                         ; preds = %for.inc, %if.then12
  %6 = load i32, i32* %i, align 4, !dbg !181
  %cmp13 = icmp slt i32 %6, 10, !dbg !183
  br i1 %cmp13, label %for.body, label %for.end, !dbg !184

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !185
  %idxprom14 = sext i32 %7 to i64, !dbg !187
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom14, !dbg !187
  %8 = load i32, i32* %arrayidx15, align 4, !dbg !187
  call void @printIntLine(i32 %8), !dbg !188
  br label %for.inc, !dbg !189

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !190
  %inc = add nsw i32 %9, 1, !dbg !190
  store i32 %inc, i32* %i, align 4, !dbg !190
  br label %for.cond, !dbg !191, !llvm.loop !192

for.end:                                          ; preds = %for.cond
  br label %if.end17, !dbg !194

if.else16:                                        ; preds = %land.lhs.true, %if.else9
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !195
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %for.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  ret void, !dbg !197
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !198 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !199, metadata !DIExpression()), !dbg !200
  store i32 -1, i32* %data, align 4, !dbg !201
  %call = call i32 @staticReturnsTrue(), !dbg !202
  %tobool = icmp ne i32 %call, 0, !dbg !202
  br i1 %tobool, label %if.then, label %if.end5, !dbg !204

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !205, metadata !DIExpression()), !dbg !208
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !208
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !208
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !209
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !211
  %call1 = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !212
  %cmp = icmp ne i8* %call1, null, !dbg !213
  br i1 %cmp, label %if.then2, label %if.else, !dbg !214

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !215
  %call4 = call i32 @atoi(i8* %arraydecay3) #7, !dbg !217
  store i32 %call4, i32* %data, align 4, !dbg !218
  br label %if.end, !dbg !219

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !220
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !222

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i32 @staticReturnsTrue(), !dbg !223
  %tobool7 = icmp ne i32 %call6, 0, !dbg !223
  br i1 %tobool7, label %if.then8, label %if.end17, !dbg !225

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !226, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !230, metadata !DIExpression()), !dbg !231
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !231
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !231
  %3 = load i32, i32* %data, align 4, !dbg !232
  %cmp9 = icmp sge i32 %3, 0, !dbg !234
  br i1 %cmp9, label %land.lhs.true, label %if.else15, !dbg !235

land.lhs.true:                                    ; preds = %if.then8
  %4 = load i32, i32* %data, align 4, !dbg !236
  %cmp10 = icmp slt i32 %4, 10, !dbg !237
  br i1 %cmp10, label %if.then11, label %if.else15, !dbg !238

if.then11:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !239
  %idxprom = sext i32 %5 to i64, !dbg !241
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !241
  store i32 1, i32* %arrayidx, align 4, !dbg !242
  store i32 0, i32* %i, align 4, !dbg !243
  br label %for.cond, !dbg !245

for.cond:                                         ; preds = %for.inc, %if.then11
  %6 = load i32, i32* %i, align 4, !dbg !246
  %cmp12 = icmp slt i32 %6, 10, !dbg !248
  br i1 %cmp12, label %for.body, label %for.end, !dbg !249

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !250
  %idxprom13 = sext i32 %7 to i64, !dbg !252
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom13, !dbg !252
  %8 = load i32, i32* %arrayidx14, align 4, !dbg !252
  call void @printIntLine(i32 %8), !dbg !253
  br label %for.inc, !dbg !254

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !255
  %inc = add nsw i32 %9, 1, !dbg !255
  store i32 %inc, i32* %i, align 4, !dbg !255
  br label %for.cond, !dbg !256, !llvm.loop !257

for.end:                                          ; preds = %for.cond
  br label %if.end16, !dbg !259

if.else15:                                        ; preds = %land.lhs.true, %if.then8
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !260
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %for.end
  br label %if.end17, !dbg !262

if.end17:                                         ; preds = %if.end16, %if.end5
  ret void, !dbg !263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !264 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !265, metadata !DIExpression()), !dbg !266
  store i32 -1, i32* %data, align 4, !dbg !267
  %call = call i32 @staticReturnsFalse(), !dbg !268
  %tobool = icmp ne i32 %call, 0, !dbg !268
  br i1 %tobool, label %if.then, label %if.else, !dbg !270

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !271
  br label %if.end, !dbg !273

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !274
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1 = call i32 @staticReturnsTrue(), !dbg !276
  %tobool2 = icmp ne i32 %call1, 0, !dbg !276
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !278

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !279, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !283, metadata !DIExpression()), !dbg !284
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !284
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !284
  %1 = load i32, i32* %data, align 4, !dbg !285
  %cmp = icmp sge i32 %1, 0, !dbg !287
  br i1 %cmp, label %if.then4, label %if.else8, !dbg !288

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !289
  %idxprom = sext i32 %2 to i64, !dbg !291
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !291
  store i32 1, i32* %arrayidx, align 4, !dbg !292
  store i32 0, i32* %i, align 4, !dbg !293
  br label %for.cond, !dbg !295

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !296
  %cmp5 = icmp slt i32 %3, 10, !dbg !298
  br i1 %cmp5, label %for.body, label %for.end, !dbg !299

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !300
  %idxprom6 = sext i32 %4 to i64, !dbg !302
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !302
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !302
  call void @printIntLine(i32 %5), !dbg !303
  br label %for.inc, !dbg !304

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !305
  %inc = add nsw i32 %6, 1, !dbg !305
  store i32 %inc, i32* %i, align 4, !dbg !305
  br label %for.cond, !dbg !306, !llvm.loop !307

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !309

if.else8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !310
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !312

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !314 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !315, metadata !DIExpression()), !dbg !316
  store i32 -1, i32* %data, align 4, !dbg !317
  %call = call i32 @staticReturnsTrue(), !dbg !318
  %tobool = icmp ne i32 %call, 0, !dbg !318
  br i1 %tobool, label %if.then, label %if.end, !dbg !320

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !321
  br label %if.end, !dbg !323

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @staticReturnsTrue(), !dbg !324
  %tobool2 = icmp ne i32 %call1, 0, !dbg !324
  br i1 %tobool2, label %if.then3, label %if.end9, !dbg !326

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !332
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !332
  %1 = load i32, i32* %data, align 4, !dbg !333
  %cmp = icmp sge i32 %1, 0, !dbg !335
  br i1 %cmp, label %if.then4, label %if.else, !dbg !336

if.then4:                                         ; preds = %if.then3
  %2 = load i32, i32* %data, align 4, !dbg !337
  %idxprom = sext i32 %2 to i64, !dbg !339
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !339
  store i32 1, i32* %arrayidx, align 4, !dbg !340
  store i32 0, i32* %i, align 4, !dbg !341
  br label %for.cond, !dbg !343

for.cond:                                         ; preds = %for.inc, %if.then4
  %3 = load i32, i32* %i, align 4, !dbg !344
  %cmp5 = icmp slt i32 %3, 10, !dbg !346
  br i1 %cmp5, label %for.body, label %for.end, !dbg !347

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !348
  %idxprom6 = sext i32 %4 to i64, !dbg !350
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !350
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !350
  call void @printIntLine(i32 %5), !dbg !351
  br label %for.inc, !dbg !352

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !353
  %inc = add nsw i32 %6, 1, !dbg !353
  store i32 %inc, i32* %i, align 4, !dbg !353
  br label %for.cond, !dbg !354, !llvm.loop !355

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !357

if.else:                                          ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !358
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !360

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !361
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08_good() #0 !dbg !362 {
entry:
  call void @goodB2G1(), !dbg !363
  call void @goodB2G2(), !dbg !364
  call void @goodG2B1(), !dbg !365
  call void @goodG2B2(), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !368 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !373
  %0 = load i8*, i8** %line.addr, align 8, !dbg !374
  %cmp = icmp ne i8* %0, null, !dbg !376
  br i1 %cmp, label %if.then, label %if.end, !dbg !377

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !378
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !380
  br label %if.end, !dbg !381

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !382
  ret void, !dbg !383
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !384 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load i8*, i8** %line.addr, align 8, !dbg !387
  %cmp = icmp ne i8* %0, null, !dbg !389
  br i1 %cmp, label %if.then, label %if.end, !dbg !390

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !391
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !393
  br label %if.end, !dbg !394

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !396 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load i32*, i32** %line.addr, align 8, !dbg !404
  %cmp = icmp ne i32* %0, null, !dbg !406
  br i1 %cmp, label %if.then, label %if.end, !dbg !407

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !408
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !410
  br label %if.end, !dbg !411

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !412
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !413 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !418
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !421 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !427
  %conv = sext i16 %0 to i32, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !430 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !436
  %conv = fpext float %0 to double, !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !439 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !445
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !446
  ret void, !dbg !447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !448 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !457
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !458
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !460 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !467
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !468
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !470 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !475
  %conv = sext i8 %0 to i32, !dbg !475
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !476
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !478 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !481, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !483, metadata !DIExpression()), !dbg !487
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !488
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !489
  store i32 %0, i32* %arrayidx, align 4, !dbg !490
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !491
  store i32 0, i32* %arrayidx1, align 4, !dbg !492
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !493
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !494
  ret void, !dbg !495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !496 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !501
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !502
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !504 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !507, metadata !DIExpression()), !dbg !508
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !509
  %conv = zext i8 %0 to i32, !dbg !509
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !510
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !512 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !516, metadata !DIExpression()), !dbg !517
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !518
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !519
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !521 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !531, metadata !DIExpression()), !dbg !532
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !533
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !534
  %1 = load i32, i32* %intOne, align 4, !dbg !534
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !535
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !536
  %3 = load i32, i32* %intTwo, align 4, !dbg !536
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !537
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !539 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !543, metadata !DIExpression()), !dbg !544
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !545, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata i64* %i, metadata !547, metadata !DIExpression()), !dbg !548
  store i64 0, i64* %i, align 8, !dbg !549
  br label %for.cond, !dbg !551

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !552
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !554
  %cmp = icmp ult i64 %0, %1, !dbg !555
  br i1 %cmp, label %for.body, label %for.end, !dbg !556

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !557
  %3 = load i64, i64* %i, align 8, !dbg !559
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !557
  %4 = load i8, i8* %arrayidx, align 1, !dbg !557
  %conv = zext i8 %4 to i32, !dbg !557
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !560
  br label %for.inc, !dbg !561

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !562
  %inc = add i64 %5, 1, !dbg !562
  store i64 %inc, i64* %i, align 8, !dbg !562
  br label %for.cond, !dbg !563, !llvm.loop !564

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !566
  ret void, !dbg !567
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !568 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !571, metadata !DIExpression()), !dbg !572
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !573, metadata !DIExpression()), !dbg !574
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !575, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !577, metadata !DIExpression()), !dbg !578
  store i64 0, i64* %numWritten, align 8, !dbg !578
  br label %while.cond, !dbg !579

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !580
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !581
  %cmp = icmp ult i64 %0, %1, !dbg !582
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !583

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !584
  %2 = load i16*, i16** %call, align 8, !dbg !584
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !584
  %4 = load i64, i64* %numWritten, align 8, !dbg !584
  %mul = mul i64 2, %4, !dbg !584
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !584
  %5 = load i8, i8* %arrayidx, align 1, !dbg !584
  %conv = sext i8 %5 to i32, !dbg !584
  %idxprom = sext i32 %conv to i64, !dbg !584
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !584
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !584
  %conv2 = zext i16 %6 to i32, !dbg !584
  %and = and i32 %conv2, 4096, !dbg !584
  %tobool = icmp ne i32 %and, 0, !dbg !584
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !585

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !586
  %7 = load i16*, i16** %call3, align 8, !dbg !586
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !586
  %9 = load i64, i64* %numWritten, align 8, !dbg !586
  %mul4 = mul i64 2, %9, !dbg !586
  %add = add i64 %mul4, 1, !dbg !586
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !586
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !586
  %conv6 = sext i8 %10 to i32, !dbg !586
  %idxprom7 = sext i32 %conv6 to i64, !dbg !586
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !586
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !586
  %conv9 = zext i16 %11 to i32, !dbg !586
  %and10 = and i32 %conv9, 4096, !dbg !586
  %tobool11 = icmp ne i32 %and10, 0, !dbg !585
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !587
  br i1 %12, label %while.body, label %while.end, !dbg !579

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !588, metadata !DIExpression()), !dbg !590
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !591
  %14 = load i64, i64* %numWritten, align 8, !dbg !592
  %mul12 = mul i64 2, %14, !dbg !593
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !591
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !594
  %15 = load i32, i32* %byte, align 4, !dbg !595
  %conv15 = trunc i32 %15 to i8, !dbg !596
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !597
  %17 = load i64, i64* %numWritten, align 8, !dbg !598
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !597
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !599
  %18 = load i64, i64* %numWritten, align 8, !dbg !600
  %inc = add i64 %18, 1, !dbg !600
  store i64 %inc, i64* %numWritten, align 8, !dbg !600
  br label %while.cond, !dbg !579, !llvm.loop !601

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !603
  ret i64 %19, !dbg !604
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !605 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !608, metadata !DIExpression()), !dbg !609
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !610, metadata !DIExpression()), !dbg !611
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !612, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !614, metadata !DIExpression()), !dbg !615
  store i64 0, i64* %numWritten, align 8, !dbg !615
  br label %while.cond, !dbg !616

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !617
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !618
  %cmp = icmp ult i64 %0, %1, !dbg !619
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !620

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !621
  %3 = load i64, i64* %numWritten, align 8, !dbg !622
  %mul = mul i64 2, %3, !dbg !623
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !621
  %4 = load i32, i32* %arrayidx, align 4, !dbg !621
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !624
  %tobool = icmp ne i32 %call, 0, !dbg !624
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !625

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !626
  %6 = load i64, i64* %numWritten, align 8, !dbg !627
  %mul1 = mul i64 2, %6, !dbg !628
  %add = add i64 %mul1, 1, !dbg !629
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !626
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !626
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !630
  %tobool4 = icmp ne i32 %call3, 0, !dbg !625
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !631
  br i1 %8, label %while.body, label %while.end, !dbg !616

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !632, metadata !DIExpression()), !dbg !634
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !635
  %10 = load i64, i64* %numWritten, align 8, !dbg !636
  %mul5 = mul i64 2, %10, !dbg !637
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !635
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !638
  %11 = load i32, i32* %byte, align 4, !dbg !639
  %conv = trunc i32 %11 to i8, !dbg !640
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !641
  %13 = load i64, i64* %numWritten, align 8, !dbg !642
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !641
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !643
  %14 = load i64, i64* %numWritten, align 8, !dbg !644
  %inc = add i64 %14, 1, !dbg !644
  store i64 %inc, i64* %numWritten, align 8, !dbg !644
  br label %while.cond, !dbg !616, !llvm.loop !645

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !647
  ret i64 %15, !dbg !648
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !649 {
entry:
  ret i32 1, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !651 {
entry:
  ret i32 0, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !653 {
entry:
  %call = call i32 @rand() #9, !dbg !654
  %rem = srem i32 %call, 2, !dbg !655
  ret i32 %rem, !dbg !656
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !683 {
entry:
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !685 {
entry:
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !687 {
entry:
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !689 {
entry:
  ret void, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !691 {
entry:
  ret void, !dbg !692
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_571/source_code")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!10 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!14 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!21 = !{!22, !23, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!0, !27, !29, !31, !33, !35, !37, !39}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !2, file: !3, line: 175, type: !23, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !2, file: !3, line: 176, type: !23, isLocal: false, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "globalTrue", scope: !2, file: !3, line: 181, type: !23, isLocal: false, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "globalFalse", scope: !2, file: !3, line: 182, type: !23, isLocal: false, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "globalFive", scope: !2, file: !3, line: 183, type: !23, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "globalArgc", scope: !2, file: !3, line: 214, type: !23, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "globalArgv", scope: !2, file: !3, line: 215, type: !41, isLocal: false, isDefinition: true)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !47, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_571/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !45, file: !45, line: 26, type: !53, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{!23}
!55 = !DILocation(line: 28, column: 5, scope: !52)
!56 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !45, file: !45, line: 31, type: !53, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!57 = !DILocation(line: 33, column: 5, scope: !56)
!58 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08_bad", scope: !45, file: !45, line: 38, type: !59, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocalVariable(name: "data", scope: !58, file: !45, line: 40, type: !23)
!62 = !DILocation(line: 40, column: 9, scope: !58)
!63 = !DILocation(line: 42, column: 10, scope: !58)
!64 = !DILocation(line: 43, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !58, file: !45, line: 43, column: 8)
!66 = !DILocation(line: 43, column: 8, scope: !58)
!67 = !DILocalVariable(name: "inputBuffer", scope: !68, file: !45, line: 46, type: !70)
!68 = distinct !DILexicalBlock(scope: !69, file: !45, line: 45, column: 9)
!69 = distinct !DILexicalBlock(scope: !65, file: !45, line: 44, column: 5)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 14)
!73 = !DILocation(line: 46, column: 18, scope: !68)
!74 = !DILocation(line: 48, column: 23, scope: !75)
!75 = distinct !DILexicalBlock(scope: !68, file: !45, line: 48, column: 17)
!76 = !DILocation(line: 48, column: 53, scope: !75)
!77 = !DILocation(line: 48, column: 17, scope: !75)
!78 = !DILocation(line: 48, column: 60, scope: !75)
!79 = !DILocation(line: 48, column: 17, scope: !68)
!80 = !DILocation(line: 51, column: 29, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !45, line: 49, column: 13)
!82 = !DILocation(line: 51, column: 24, scope: !81)
!83 = !DILocation(line: 51, column: 22, scope: !81)
!84 = !DILocation(line: 52, column: 13, scope: !81)
!85 = !DILocation(line: 55, column: 17, scope: !86)
!86 = distinct !DILexicalBlock(scope: !75, file: !45, line: 54, column: 13)
!87 = !DILocation(line: 58, column: 5, scope: !69)
!88 = !DILocation(line: 59, column: 8, scope: !89)
!89 = distinct !DILexicalBlock(scope: !58, file: !45, line: 59, column: 8)
!90 = !DILocation(line: 59, column: 8, scope: !58)
!91 = !DILocalVariable(name: "i", scope: !92, file: !45, line: 62, type: !23)
!92 = distinct !DILexicalBlock(scope: !93, file: !45, line: 61, column: 9)
!93 = distinct !DILexicalBlock(scope: !89, file: !45, line: 60, column: 5)
!94 = !DILocation(line: 62, column: 17, scope: !92)
!95 = !DILocalVariable(name: "buffer", scope: !92, file: !45, line: 63, type: !96)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 10)
!99 = !DILocation(line: 63, column: 17, scope: !92)
!100 = !DILocation(line: 66, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !92, file: !45, line: 66, column: 17)
!102 = !DILocation(line: 66, column: 22, scope: !101)
!103 = !DILocation(line: 66, column: 17, scope: !92)
!104 = !DILocation(line: 68, column: 24, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !45, line: 67, column: 13)
!106 = !DILocation(line: 68, column: 17, scope: !105)
!107 = !DILocation(line: 68, column: 30, scope: !105)
!108 = !DILocation(line: 70, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !45, line: 70, column: 17)
!110 = !DILocation(line: 70, column: 21, scope: !109)
!111 = !DILocation(line: 70, column: 28, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !45, line: 70, column: 17)
!113 = !DILocation(line: 70, column: 30, scope: !112)
!114 = !DILocation(line: 70, column: 17, scope: !109)
!115 = !DILocation(line: 72, column: 41, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !45, line: 71, column: 17)
!117 = !DILocation(line: 72, column: 34, scope: !116)
!118 = !DILocation(line: 72, column: 21, scope: !116)
!119 = !DILocation(line: 73, column: 17, scope: !116)
!120 = !DILocation(line: 70, column: 37, scope: !112)
!121 = !DILocation(line: 70, column: 17, scope: !112)
!122 = distinct !{!122, !114, !123, !124}
!123 = !DILocation(line: 73, column: 17, scope: !109)
!124 = !{!"llvm.loop.mustprogress"}
!125 = !DILocation(line: 74, column: 13, scope: !105)
!126 = !DILocation(line: 77, column: 17, scope: !127)
!127 = distinct !DILexicalBlock(scope: !101, file: !45, line: 76, column: 13)
!128 = !DILocation(line: 80, column: 5, scope: !93)
!129 = !DILocation(line: 81, column: 1, scope: !58)
!130 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 88, type: !59, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!131 = !DILocalVariable(name: "data", scope: !130, file: !45, line: 90, type: !23)
!132 = !DILocation(line: 90, column: 9, scope: !130)
!133 = !DILocation(line: 92, column: 10, scope: !130)
!134 = !DILocation(line: 93, column: 8, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !45, line: 93, column: 8)
!136 = !DILocation(line: 93, column: 8, scope: !130)
!137 = !DILocalVariable(name: "inputBuffer", scope: !138, file: !45, line: 96, type: !70)
!138 = distinct !DILexicalBlock(scope: !139, file: !45, line: 95, column: 9)
!139 = distinct !DILexicalBlock(scope: !135, file: !45, line: 94, column: 5)
!140 = !DILocation(line: 96, column: 18, scope: !138)
!141 = !DILocation(line: 98, column: 23, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !45, line: 98, column: 17)
!143 = !DILocation(line: 98, column: 53, scope: !142)
!144 = !DILocation(line: 98, column: 17, scope: !142)
!145 = !DILocation(line: 98, column: 60, scope: !142)
!146 = !DILocation(line: 98, column: 17, scope: !138)
!147 = !DILocation(line: 101, column: 29, scope: !148)
!148 = distinct !DILexicalBlock(scope: !142, file: !45, line: 99, column: 13)
!149 = !DILocation(line: 101, column: 24, scope: !148)
!150 = !DILocation(line: 101, column: 22, scope: !148)
!151 = !DILocation(line: 102, column: 13, scope: !148)
!152 = !DILocation(line: 105, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !142, file: !45, line: 104, column: 13)
!154 = !DILocation(line: 108, column: 5, scope: !139)
!155 = !DILocation(line: 109, column: 8, scope: !156)
!156 = distinct !DILexicalBlock(scope: !130, file: !45, line: 109, column: 8)
!157 = !DILocation(line: 109, column: 8, scope: !130)
!158 = !DILocation(line: 112, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !45, line: 110, column: 5)
!160 = !DILocation(line: 113, column: 5, scope: !159)
!161 = !DILocalVariable(name: "i", scope: !162, file: !45, line: 117, type: !23)
!162 = distinct !DILexicalBlock(scope: !163, file: !45, line: 116, column: 9)
!163 = distinct !DILexicalBlock(scope: !156, file: !45, line: 115, column: 5)
!164 = !DILocation(line: 117, column: 17, scope: !162)
!165 = !DILocalVariable(name: "buffer", scope: !162, file: !45, line: 118, type: !96)
!166 = !DILocation(line: 118, column: 17, scope: !162)
!167 = !DILocation(line: 120, column: 17, scope: !168)
!168 = distinct !DILexicalBlock(scope: !162, file: !45, line: 120, column: 17)
!169 = !DILocation(line: 120, column: 22, scope: !168)
!170 = !DILocation(line: 120, column: 27, scope: !168)
!171 = !DILocation(line: 120, column: 30, scope: !168)
!172 = !DILocation(line: 120, column: 35, scope: !168)
!173 = !DILocation(line: 120, column: 17, scope: !162)
!174 = !DILocation(line: 122, column: 24, scope: !175)
!175 = distinct !DILexicalBlock(scope: !168, file: !45, line: 121, column: 13)
!176 = !DILocation(line: 122, column: 17, scope: !175)
!177 = !DILocation(line: 122, column: 30, scope: !175)
!178 = !DILocation(line: 124, column: 23, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !45, line: 124, column: 17)
!180 = !DILocation(line: 124, column: 21, scope: !179)
!181 = !DILocation(line: 124, column: 28, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !45, line: 124, column: 17)
!183 = !DILocation(line: 124, column: 30, scope: !182)
!184 = !DILocation(line: 124, column: 17, scope: !179)
!185 = !DILocation(line: 126, column: 41, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !45, line: 125, column: 17)
!187 = !DILocation(line: 126, column: 34, scope: !186)
!188 = !DILocation(line: 126, column: 21, scope: !186)
!189 = !DILocation(line: 127, column: 17, scope: !186)
!190 = !DILocation(line: 124, column: 37, scope: !182)
!191 = !DILocation(line: 124, column: 17, scope: !182)
!192 = distinct !{!192, !184, !193, !124}
!193 = !DILocation(line: 127, column: 17, scope: !179)
!194 = !DILocation(line: 128, column: 13, scope: !175)
!195 = !DILocation(line: 131, column: 17, scope: !196)
!196 = distinct !DILexicalBlock(scope: !168, file: !45, line: 130, column: 13)
!197 = !DILocation(line: 135, column: 1, scope: !130)
!198 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 138, type: !59, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!199 = !DILocalVariable(name: "data", scope: !198, file: !45, line: 140, type: !23)
!200 = !DILocation(line: 140, column: 9, scope: !198)
!201 = !DILocation(line: 142, column: 10, scope: !198)
!202 = !DILocation(line: 143, column: 8, scope: !203)
!203 = distinct !DILexicalBlock(scope: !198, file: !45, line: 143, column: 8)
!204 = !DILocation(line: 143, column: 8, scope: !198)
!205 = !DILocalVariable(name: "inputBuffer", scope: !206, file: !45, line: 146, type: !70)
!206 = distinct !DILexicalBlock(scope: !207, file: !45, line: 145, column: 9)
!207 = distinct !DILexicalBlock(scope: !203, file: !45, line: 144, column: 5)
!208 = !DILocation(line: 146, column: 18, scope: !206)
!209 = !DILocation(line: 148, column: 23, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !45, line: 148, column: 17)
!211 = !DILocation(line: 148, column: 53, scope: !210)
!212 = !DILocation(line: 148, column: 17, scope: !210)
!213 = !DILocation(line: 148, column: 60, scope: !210)
!214 = !DILocation(line: 148, column: 17, scope: !206)
!215 = !DILocation(line: 151, column: 29, scope: !216)
!216 = distinct !DILexicalBlock(scope: !210, file: !45, line: 149, column: 13)
!217 = !DILocation(line: 151, column: 24, scope: !216)
!218 = !DILocation(line: 151, column: 22, scope: !216)
!219 = !DILocation(line: 152, column: 13, scope: !216)
!220 = !DILocation(line: 155, column: 17, scope: !221)
!221 = distinct !DILexicalBlock(scope: !210, file: !45, line: 154, column: 13)
!222 = !DILocation(line: 158, column: 5, scope: !207)
!223 = !DILocation(line: 159, column: 8, scope: !224)
!224 = distinct !DILexicalBlock(scope: !198, file: !45, line: 159, column: 8)
!225 = !DILocation(line: 159, column: 8, scope: !198)
!226 = !DILocalVariable(name: "i", scope: !227, file: !45, line: 162, type: !23)
!227 = distinct !DILexicalBlock(scope: !228, file: !45, line: 161, column: 9)
!228 = distinct !DILexicalBlock(scope: !224, file: !45, line: 160, column: 5)
!229 = !DILocation(line: 162, column: 17, scope: !227)
!230 = !DILocalVariable(name: "buffer", scope: !227, file: !45, line: 163, type: !96)
!231 = !DILocation(line: 163, column: 17, scope: !227)
!232 = !DILocation(line: 165, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !227, file: !45, line: 165, column: 17)
!234 = !DILocation(line: 165, column: 22, scope: !233)
!235 = !DILocation(line: 165, column: 27, scope: !233)
!236 = !DILocation(line: 165, column: 30, scope: !233)
!237 = !DILocation(line: 165, column: 35, scope: !233)
!238 = !DILocation(line: 165, column: 17, scope: !227)
!239 = !DILocation(line: 167, column: 24, scope: !240)
!240 = distinct !DILexicalBlock(scope: !233, file: !45, line: 166, column: 13)
!241 = !DILocation(line: 167, column: 17, scope: !240)
!242 = !DILocation(line: 167, column: 30, scope: !240)
!243 = !DILocation(line: 169, column: 23, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !45, line: 169, column: 17)
!245 = !DILocation(line: 169, column: 21, scope: !244)
!246 = !DILocation(line: 169, column: 28, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !45, line: 169, column: 17)
!248 = !DILocation(line: 169, column: 30, scope: !247)
!249 = !DILocation(line: 169, column: 17, scope: !244)
!250 = !DILocation(line: 171, column: 41, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !45, line: 170, column: 17)
!252 = !DILocation(line: 171, column: 34, scope: !251)
!253 = !DILocation(line: 171, column: 21, scope: !251)
!254 = !DILocation(line: 172, column: 17, scope: !251)
!255 = !DILocation(line: 169, column: 37, scope: !247)
!256 = !DILocation(line: 169, column: 17, scope: !247)
!257 = distinct !{!257, !249, !258, !124}
!258 = !DILocation(line: 172, column: 17, scope: !244)
!259 = !DILocation(line: 173, column: 13, scope: !240)
!260 = !DILocation(line: 176, column: 17, scope: !261)
!261 = distinct !DILexicalBlock(scope: !233, file: !45, line: 175, column: 13)
!262 = !DILocation(line: 179, column: 5, scope: !228)
!263 = !DILocation(line: 180, column: 1, scope: !198)
!264 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 183, type: !59, scopeLine: 184, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!265 = !DILocalVariable(name: "data", scope: !264, file: !45, line: 185, type: !23)
!266 = !DILocation(line: 185, column: 9, scope: !264)
!267 = !DILocation(line: 187, column: 10, scope: !264)
!268 = !DILocation(line: 188, column: 8, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !45, line: 188, column: 8)
!270 = !DILocation(line: 188, column: 8, scope: !264)
!271 = !DILocation(line: 191, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !45, line: 189, column: 5)
!273 = !DILocation(line: 192, column: 5, scope: !272)
!274 = !DILocation(line: 197, column: 14, scope: !275)
!275 = distinct !DILexicalBlock(scope: !269, file: !45, line: 194, column: 5)
!276 = !DILocation(line: 199, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !264, file: !45, line: 199, column: 8)
!278 = !DILocation(line: 199, column: 8, scope: !264)
!279 = !DILocalVariable(name: "i", scope: !280, file: !45, line: 202, type: !23)
!280 = distinct !DILexicalBlock(scope: !281, file: !45, line: 201, column: 9)
!281 = distinct !DILexicalBlock(scope: !277, file: !45, line: 200, column: 5)
!282 = !DILocation(line: 202, column: 17, scope: !280)
!283 = !DILocalVariable(name: "buffer", scope: !280, file: !45, line: 203, type: !96)
!284 = !DILocation(line: 203, column: 17, scope: !280)
!285 = !DILocation(line: 206, column: 17, scope: !286)
!286 = distinct !DILexicalBlock(scope: !280, file: !45, line: 206, column: 17)
!287 = !DILocation(line: 206, column: 22, scope: !286)
!288 = !DILocation(line: 206, column: 17, scope: !280)
!289 = !DILocation(line: 208, column: 24, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !45, line: 207, column: 13)
!291 = !DILocation(line: 208, column: 17, scope: !290)
!292 = !DILocation(line: 208, column: 30, scope: !290)
!293 = !DILocation(line: 210, column: 23, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !45, line: 210, column: 17)
!295 = !DILocation(line: 210, column: 21, scope: !294)
!296 = !DILocation(line: 210, column: 28, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !45, line: 210, column: 17)
!298 = !DILocation(line: 210, column: 30, scope: !297)
!299 = !DILocation(line: 210, column: 17, scope: !294)
!300 = !DILocation(line: 212, column: 41, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !45, line: 211, column: 17)
!302 = !DILocation(line: 212, column: 34, scope: !301)
!303 = !DILocation(line: 212, column: 21, scope: !301)
!304 = !DILocation(line: 213, column: 17, scope: !301)
!305 = !DILocation(line: 210, column: 37, scope: !297)
!306 = !DILocation(line: 210, column: 17, scope: !297)
!307 = distinct !{!307, !299, !308, !124}
!308 = !DILocation(line: 213, column: 17, scope: !294)
!309 = !DILocation(line: 214, column: 13, scope: !290)
!310 = !DILocation(line: 217, column: 17, scope: !311)
!311 = distinct !DILexicalBlock(scope: !286, file: !45, line: 216, column: 13)
!312 = !DILocation(line: 220, column: 5, scope: !281)
!313 = !DILocation(line: 221, column: 1, scope: !264)
!314 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 224, type: !59, scopeLine: 225, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!315 = !DILocalVariable(name: "data", scope: !314, file: !45, line: 226, type: !23)
!316 = !DILocation(line: 226, column: 9, scope: !314)
!317 = !DILocation(line: 228, column: 10, scope: !314)
!318 = !DILocation(line: 229, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !314, file: !45, line: 229, column: 8)
!320 = !DILocation(line: 229, column: 8, scope: !314)
!321 = !DILocation(line: 233, column: 14, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !45, line: 230, column: 5)
!323 = !DILocation(line: 234, column: 5, scope: !322)
!324 = !DILocation(line: 235, column: 8, scope: !325)
!325 = distinct !DILexicalBlock(scope: !314, file: !45, line: 235, column: 8)
!326 = !DILocation(line: 235, column: 8, scope: !314)
!327 = !DILocalVariable(name: "i", scope: !328, file: !45, line: 238, type: !23)
!328 = distinct !DILexicalBlock(scope: !329, file: !45, line: 237, column: 9)
!329 = distinct !DILexicalBlock(scope: !325, file: !45, line: 236, column: 5)
!330 = !DILocation(line: 238, column: 17, scope: !328)
!331 = !DILocalVariable(name: "buffer", scope: !328, file: !45, line: 239, type: !96)
!332 = !DILocation(line: 239, column: 17, scope: !328)
!333 = !DILocation(line: 242, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !45, line: 242, column: 17)
!335 = !DILocation(line: 242, column: 22, scope: !334)
!336 = !DILocation(line: 242, column: 17, scope: !328)
!337 = !DILocation(line: 244, column: 24, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !45, line: 243, column: 13)
!339 = !DILocation(line: 244, column: 17, scope: !338)
!340 = !DILocation(line: 244, column: 30, scope: !338)
!341 = !DILocation(line: 246, column: 23, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !45, line: 246, column: 17)
!343 = !DILocation(line: 246, column: 21, scope: !342)
!344 = !DILocation(line: 246, column: 28, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !45, line: 246, column: 17)
!346 = !DILocation(line: 246, column: 30, scope: !345)
!347 = !DILocation(line: 246, column: 17, scope: !342)
!348 = !DILocation(line: 248, column: 41, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !45, line: 247, column: 17)
!350 = !DILocation(line: 248, column: 34, scope: !349)
!351 = !DILocation(line: 248, column: 21, scope: !349)
!352 = !DILocation(line: 249, column: 17, scope: !349)
!353 = !DILocation(line: 246, column: 37, scope: !345)
!354 = !DILocation(line: 246, column: 17, scope: !345)
!355 = distinct !{!355, !347, !356, !124}
!356 = !DILocation(line: 249, column: 17, scope: !342)
!357 = !DILocation(line: 250, column: 13, scope: !338)
!358 = !DILocation(line: 253, column: 17, scope: !359)
!359 = distinct !DILexicalBlock(scope: !334, file: !45, line: 252, column: 13)
!360 = !DILocation(line: 256, column: 5, scope: !329)
!361 = !DILocation(line: 257, column: 1, scope: !314)
!362 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08_good", scope: !45, file: !45, line: 259, type: !59, scopeLine: 260, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!363 = !DILocation(line: 261, column: 5, scope: !362)
!364 = !DILocation(line: 262, column: 5, scope: !362)
!365 = !DILocation(line: 263, column: 5, scope: !362)
!366 = !DILocation(line: 264, column: 5, scope: !362)
!367 = !DILocation(line: 265, column: 1, scope: !362)
!368 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !369, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !42}
!371 = !DILocalVariable(name: "line", arg: 1, scope: !368, file: !3, line: 11, type: !42)
!372 = !DILocation(line: 11, column: 25, scope: !368)
!373 = !DILocation(line: 13, column: 1, scope: !368)
!374 = !DILocation(line: 14, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !368, file: !3, line: 14, column: 8)
!376 = !DILocation(line: 14, column: 13, scope: !375)
!377 = !DILocation(line: 14, column: 8, scope: !368)
!378 = !DILocation(line: 16, column: 24, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !3, line: 15, column: 5)
!380 = !DILocation(line: 16, column: 9, scope: !379)
!381 = !DILocation(line: 17, column: 5, scope: !379)
!382 = !DILocation(line: 18, column: 5, scope: !368)
!383 = !DILocation(line: 19, column: 1, scope: !368)
!384 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !369, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!385 = !DILocalVariable(name: "line", arg: 1, scope: !384, file: !3, line: 20, type: !42)
!386 = !DILocation(line: 20, column: 29, scope: !384)
!387 = !DILocation(line: 22, column: 8, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !3, line: 22, column: 8)
!389 = !DILocation(line: 22, column: 13, scope: !388)
!390 = !DILocation(line: 22, column: 8, scope: !384)
!391 = !DILocation(line: 24, column: 24, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !3, line: 23, column: 5)
!393 = !DILocation(line: 24, column: 9, scope: !392)
!394 = !DILocation(line: 25, column: 5, scope: !392)
!395 = !DILocation(line: 26, column: 1, scope: !384)
!396 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !397, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !401, line: 74, baseType: !23)
!401 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!402 = !DILocalVariable(name: "line", arg: 1, scope: !396, file: !3, line: 27, type: !399)
!403 = !DILocation(line: 27, column: 29, scope: !396)
!404 = !DILocation(line: 29, column: 8, scope: !405)
!405 = distinct !DILexicalBlock(scope: !396, file: !3, line: 29, column: 8)
!406 = !DILocation(line: 29, column: 13, scope: !405)
!407 = !DILocation(line: 29, column: 8, scope: !396)
!408 = !DILocation(line: 31, column: 27, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !3, line: 30, column: 5)
!410 = !DILocation(line: 31, column: 9, scope: !409)
!411 = !DILocation(line: 32, column: 5, scope: !409)
!412 = !DILocation(line: 33, column: 1, scope: !396)
!413 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !414, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !23}
!416 = !DILocalVariable(name: "intNumber", arg: 1, scope: !413, file: !3, line: 35, type: !23)
!417 = !DILocation(line: 35, column: 24, scope: !413)
!418 = !DILocation(line: 37, column: 20, scope: !413)
!419 = !DILocation(line: 37, column: 5, scope: !413)
!420 = !DILocation(line: 38, column: 1, scope: !413)
!421 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !422, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !424}
!424 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!425 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !421, file: !3, line: 40, type: !424)
!426 = !DILocation(line: 40, column: 28, scope: !421)
!427 = !DILocation(line: 42, column: 21, scope: !421)
!428 = !DILocation(line: 42, column: 5, scope: !421)
!429 = !DILocation(line: 43, column: 1, scope: !421)
!430 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !431, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !433}
!433 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!434 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !430, file: !3, line: 45, type: !433)
!435 = !DILocation(line: 45, column: 28, scope: !430)
!436 = !DILocation(line: 47, column: 20, scope: !430)
!437 = !DILocation(line: 47, column: 5, scope: !430)
!438 = !DILocation(line: 48, column: 1, scope: !430)
!439 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !440, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !442}
!442 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!443 = !DILocalVariable(name: "longNumber", arg: 1, scope: !439, file: !3, line: 50, type: !442)
!444 = !DILocation(line: 50, column: 26, scope: !439)
!445 = !DILocation(line: 52, column: 21, scope: !439)
!446 = !DILocation(line: 52, column: 5, scope: !439)
!447 = !DILocation(line: 53, column: 1, scope: !439)
!448 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !449, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !451}
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !452, line: 27, baseType: !453)
!452 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !454, line: 44, baseType: !442)
!454 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!455 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !448, file: !3, line: 55, type: !451)
!456 = !DILocation(line: 55, column: 33, scope: !448)
!457 = !DILocation(line: 57, column: 29, scope: !448)
!458 = !DILocation(line: 57, column: 5, scope: !448)
!459 = !DILocation(line: 58, column: 1, scope: !448)
!460 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !461, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !463}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !401, line: 46, baseType: !464)
!464 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!465 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !460, file: !3, line: 60, type: !463)
!466 = !DILocation(line: 60, column: 29, scope: !460)
!467 = !DILocation(line: 62, column: 21, scope: !460)
!468 = !DILocation(line: 62, column: 5, scope: !460)
!469 = !DILocation(line: 63, column: 1, scope: !460)
!470 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !471, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !43}
!473 = !DILocalVariable(name: "charHex", arg: 1, scope: !470, file: !3, line: 65, type: !43)
!474 = !DILocation(line: 65, column: 29, scope: !470)
!475 = !DILocation(line: 67, column: 22, scope: !470)
!476 = !DILocation(line: 67, column: 5, scope: !470)
!477 = !DILocation(line: 68, column: 1, scope: !470)
!478 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !479, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !400}
!481 = !DILocalVariable(name: "wideChar", arg: 1, scope: !478, file: !3, line: 70, type: !400)
!482 = !DILocation(line: 70, column: 29, scope: !478)
!483 = !DILocalVariable(name: "s", scope: !478, file: !3, line: 74, type: !484)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 64, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 2)
!487 = !DILocation(line: 74, column: 13, scope: !478)
!488 = !DILocation(line: 75, column: 16, scope: !478)
!489 = !DILocation(line: 75, column: 9, scope: !478)
!490 = !DILocation(line: 75, column: 14, scope: !478)
!491 = !DILocation(line: 76, column: 9, scope: !478)
!492 = !DILocation(line: 76, column: 14, scope: !478)
!493 = !DILocation(line: 77, column: 21, scope: !478)
!494 = !DILocation(line: 77, column: 5, scope: !478)
!495 = !DILocation(line: 78, column: 1, scope: !478)
!496 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !497, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !7}
!499 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !496, file: !3, line: 80, type: !7)
!500 = !DILocation(line: 80, column: 33, scope: !496)
!501 = !DILocation(line: 82, column: 20, scope: !496)
!502 = !DILocation(line: 82, column: 5, scope: !496)
!503 = !DILocation(line: 83, column: 1, scope: !496)
!504 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !505, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !25}
!507 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !504, file: !3, line: 85, type: !25)
!508 = !DILocation(line: 85, column: 45, scope: !504)
!509 = !DILocation(line: 87, column: 22, scope: !504)
!510 = !DILocation(line: 87, column: 5, scope: !504)
!511 = !DILocation(line: 88, column: 1, scope: !504)
!512 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !513, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !515}
!515 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!516 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !512, file: !3, line: 90, type: !515)
!517 = !DILocation(line: 90, column: 29, scope: !512)
!518 = !DILocation(line: 92, column: 20, scope: !512)
!519 = !DILocation(line: 92, column: 5, scope: !512)
!520 = !DILocation(line: 93, column: 1, scope: !512)
!521 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !522, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !526, line: 100, baseType: !527)
!526 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_571/source_code")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !526, line: 96, size: 64, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !527, file: !526, line: 98, baseType: !23, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !527, file: !526, line: 99, baseType: !23, size: 32, offset: 32)
!531 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !521, file: !3, line: 95, type: !524)
!532 = !DILocation(line: 95, column: 40, scope: !521)
!533 = !DILocation(line: 97, column: 26, scope: !521)
!534 = !DILocation(line: 97, column: 47, scope: !521)
!535 = !DILocation(line: 97, column: 55, scope: !521)
!536 = !DILocation(line: 97, column: 76, scope: !521)
!537 = !DILocation(line: 97, column: 5, scope: !521)
!538 = !DILocation(line: 98, column: 1, scope: !521)
!539 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !540, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !542, !463}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!543 = !DILocalVariable(name: "bytes", arg: 1, scope: !539, file: !3, line: 100, type: !542)
!544 = !DILocation(line: 100, column: 38, scope: !539)
!545 = !DILocalVariable(name: "numBytes", arg: 2, scope: !539, file: !3, line: 100, type: !463)
!546 = !DILocation(line: 100, column: 52, scope: !539)
!547 = !DILocalVariable(name: "i", scope: !539, file: !3, line: 102, type: !463)
!548 = !DILocation(line: 102, column: 12, scope: !539)
!549 = !DILocation(line: 103, column: 12, scope: !550)
!550 = distinct !DILexicalBlock(scope: !539, file: !3, line: 103, column: 5)
!551 = !DILocation(line: 103, column: 10, scope: !550)
!552 = !DILocation(line: 103, column: 17, scope: !553)
!553 = distinct !DILexicalBlock(scope: !550, file: !3, line: 103, column: 5)
!554 = !DILocation(line: 103, column: 21, scope: !553)
!555 = !DILocation(line: 103, column: 19, scope: !553)
!556 = !DILocation(line: 103, column: 5, scope: !550)
!557 = !DILocation(line: 105, column: 24, scope: !558)
!558 = distinct !DILexicalBlock(scope: !553, file: !3, line: 104, column: 5)
!559 = !DILocation(line: 105, column: 30, scope: !558)
!560 = !DILocation(line: 105, column: 9, scope: !558)
!561 = !DILocation(line: 106, column: 5, scope: !558)
!562 = !DILocation(line: 103, column: 31, scope: !553)
!563 = !DILocation(line: 103, column: 5, scope: !553)
!564 = distinct !{!564, !556, !565, !124}
!565 = !DILocation(line: 106, column: 5, scope: !550)
!566 = !DILocation(line: 107, column: 5, scope: !539)
!567 = !DILocation(line: 108, column: 1, scope: !539)
!568 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !569, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DISubroutineType(types: !570)
!570 = !{!463, !542, !463, !42}
!571 = !DILocalVariable(name: "bytes", arg: 1, scope: !568, file: !3, line: 113, type: !542)
!572 = !DILocation(line: 113, column: 39, scope: !568)
!573 = !DILocalVariable(name: "numBytes", arg: 2, scope: !568, file: !3, line: 113, type: !463)
!574 = !DILocation(line: 113, column: 53, scope: !568)
!575 = !DILocalVariable(name: "hex", arg: 3, scope: !568, file: !3, line: 113, type: !42)
!576 = !DILocation(line: 113, column: 71, scope: !568)
!577 = !DILocalVariable(name: "numWritten", scope: !568, file: !3, line: 115, type: !463)
!578 = !DILocation(line: 115, column: 12, scope: !568)
!579 = !DILocation(line: 121, column: 5, scope: !568)
!580 = !DILocation(line: 121, column: 12, scope: !568)
!581 = !DILocation(line: 121, column: 25, scope: !568)
!582 = !DILocation(line: 121, column: 23, scope: !568)
!583 = !DILocation(line: 121, column: 34, scope: !568)
!584 = !DILocation(line: 121, column: 37, scope: !568)
!585 = !DILocation(line: 121, column: 67, scope: !568)
!586 = !DILocation(line: 121, column: 70, scope: !568)
!587 = !DILocation(line: 0, scope: !568)
!588 = !DILocalVariable(name: "byte", scope: !589, file: !3, line: 123, type: !23)
!589 = distinct !DILexicalBlock(scope: !568, file: !3, line: 122, column: 5)
!590 = !DILocation(line: 123, column: 13, scope: !589)
!591 = !DILocation(line: 124, column: 17, scope: !589)
!592 = !DILocation(line: 124, column: 25, scope: !589)
!593 = !DILocation(line: 124, column: 23, scope: !589)
!594 = !DILocation(line: 124, column: 9, scope: !589)
!595 = !DILocation(line: 125, column: 45, scope: !589)
!596 = !DILocation(line: 125, column: 29, scope: !589)
!597 = !DILocation(line: 125, column: 9, scope: !589)
!598 = !DILocation(line: 125, column: 15, scope: !589)
!599 = !DILocation(line: 125, column: 27, scope: !589)
!600 = !DILocation(line: 126, column: 9, scope: !589)
!601 = distinct !{!601, !579, !602, !124}
!602 = !DILocation(line: 127, column: 5, scope: !568)
!603 = !DILocation(line: 129, column: 12, scope: !568)
!604 = !DILocation(line: 129, column: 5, scope: !568)
!605 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !606, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DISubroutineType(types: !607)
!607 = !{!463, !542, !463, !399}
!608 = !DILocalVariable(name: "bytes", arg: 1, scope: !605, file: !3, line: 135, type: !542)
!609 = !DILocation(line: 135, column: 41, scope: !605)
!610 = !DILocalVariable(name: "numBytes", arg: 2, scope: !605, file: !3, line: 135, type: !463)
!611 = !DILocation(line: 135, column: 55, scope: !605)
!612 = !DILocalVariable(name: "hex", arg: 3, scope: !605, file: !3, line: 135, type: !399)
!613 = !DILocation(line: 135, column: 76, scope: !605)
!614 = !DILocalVariable(name: "numWritten", scope: !605, file: !3, line: 137, type: !463)
!615 = !DILocation(line: 137, column: 12, scope: !605)
!616 = !DILocation(line: 143, column: 5, scope: !605)
!617 = !DILocation(line: 143, column: 12, scope: !605)
!618 = !DILocation(line: 143, column: 25, scope: !605)
!619 = !DILocation(line: 143, column: 23, scope: !605)
!620 = !DILocation(line: 143, column: 34, scope: !605)
!621 = !DILocation(line: 143, column: 47, scope: !605)
!622 = !DILocation(line: 143, column: 55, scope: !605)
!623 = !DILocation(line: 143, column: 53, scope: !605)
!624 = !DILocation(line: 143, column: 37, scope: !605)
!625 = !DILocation(line: 143, column: 68, scope: !605)
!626 = !DILocation(line: 143, column: 81, scope: !605)
!627 = !DILocation(line: 143, column: 89, scope: !605)
!628 = !DILocation(line: 143, column: 87, scope: !605)
!629 = !DILocation(line: 143, column: 100, scope: !605)
!630 = !DILocation(line: 143, column: 71, scope: !605)
!631 = !DILocation(line: 0, scope: !605)
!632 = !DILocalVariable(name: "byte", scope: !633, file: !3, line: 145, type: !23)
!633 = distinct !DILexicalBlock(scope: !605, file: !3, line: 144, column: 5)
!634 = !DILocation(line: 145, column: 13, scope: !633)
!635 = !DILocation(line: 146, column: 18, scope: !633)
!636 = !DILocation(line: 146, column: 26, scope: !633)
!637 = !DILocation(line: 146, column: 24, scope: !633)
!638 = !DILocation(line: 146, column: 9, scope: !633)
!639 = !DILocation(line: 147, column: 45, scope: !633)
!640 = !DILocation(line: 147, column: 29, scope: !633)
!641 = !DILocation(line: 147, column: 9, scope: !633)
!642 = !DILocation(line: 147, column: 15, scope: !633)
!643 = !DILocation(line: 147, column: 27, scope: !633)
!644 = !DILocation(line: 148, column: 9, scope: !633)
!645 = distinct !{!645, !616, !646, !124}
!646 = !DILocation(line: 149, column: 5, scope: !605)
!647 = !DILocation(line: 151, column: 12, scope: !605)
!648 = !DILocation(line: 151, column: 5, scope: !605)
!649 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !53, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 158, column: 5, scope: !649)
!651 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !53, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 163, column: 5, scope: !651)
!653 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !53, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 168, column: 13, scope: !653)
!655 = !DILocation(line: 168, column: 20, scope: !653)
!656 = !DILocation(line: 168, column: 5, scope: !653)
!657 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !59, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 187, column: 16, scope: !657)
!659 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !59, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 188, column: 16, scope: !659)
!661 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !59, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 189, column: 16, scope: !661)
!663 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 190, column: 16, scope: !663)
!665 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !59, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 191, column: 16, scope: !665)
!667 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !59, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 192, column: 16, scope: !667)
!669 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !59, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 193, column: 16, scope: !669)
!671 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !59, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 194, column: 16, scope: !671)
!673 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !59, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 195, column: 16, scope: !673)
!675 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !59, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 198, column: 15, scope: !675)
!677 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !59, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!678 = !DILocation(line: 199, column: 15, scope: !677)
!679 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !59, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!680 = !DILocation(line: 200, column: 15, scope: !679)
!681 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !59, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DILocation(line: 201, column: 15, scope: !681)
!683 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !59, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!684 = !DILocation(line: 202, column: 15, scope: !683)
!685 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !59, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!686 = !DILocation(line: 203, column: 15, scope: !685)
!687 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !59, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!688 = !DILocation(line: 204, column: 15, scope: !687)
!689 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !59, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!690 = !DILocation(line: 205, column: 15, scope: !689)
!691 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !59, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!692 = !DILocation(line: 206, column: 15, scope: !691)
