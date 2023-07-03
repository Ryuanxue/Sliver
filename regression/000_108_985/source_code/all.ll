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
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_08_bad() #0 !dbg !58 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !63, metadata !DIExpression()), !dbg !67
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !67
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !68
  store i8* %arraydecay, i8** %data, align 8, !dbg !69
  %call = call i32 @staticReturnsTrue(), !dbg !70
  %tobool = icmp ne i32 %call, 0, !dbg !70
  br i1 %tobool, label %if.then, label %if.end21, !dbg !72

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !73, metadata !DIExpression()), !dbg !79
  %1 = load i8*, i8** %data, align 8, !dbg !80
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !81
  store i64 %call1, i64* %dataLen, align 8, !dbg !79
  %2 = load i64, i64* %dataLen, align 8, !dbg !82
  %sub = sub i64 100, %2, !dbg !84
  %cmp = icmp ugt i64 %sub, 1, !dbg !85
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !86

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !87
  %4 = load i64, i64* %dataLen, align 8, !dbg !90
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !91
  %5 = load i64, i64* %dataLen, align 8, !dbg !92
  %sub3 = sub i64 100, %5, !dbg !93
  %conv = trunc i64 %sub3 to i32, !dbg !94
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !95
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !96
  %cmp5 = icmp ne i8* %call4, null, !dbg !97
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !98

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !99
  %call8 = call i64 @strlen(i8* %7) #7, !dbg !101
  store i64 %call8, i64* %dataLen, align 8, !dbg !102
  %8 = load i64, i64* %dataLen, align 8, !dbg !103
  %cmp9 = icmp ugt i64 %8, 0, !dbg !105
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !106

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !107
  %10 = load i64, i64* %dataLen, align 8, !dbg !108
  %sub11 = sub i64 %10, 1, !dbg !109
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !107
  %11 = load i8, i8* %arrayidx, align 1, !dbg !107
  %conv12 = sext i8 %11 to i32, !dbg !107
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !110
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !111

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !112
  %13 = load i64, i64* %dataLen, align 8, !dbg !114
  %sub16 = sub i64 %13, 1, !dbg !115
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !112
  store i8 0, i8* %arrayidx17, align 1, !dbg !116
  br label %if.end, !dbg !117

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !118

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !119
  %14 = load i8*, i8** %data, align 8, !dbg !121
  %15 = load i64, i64* %dataLen, align 8, !dbg !122
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !121
  store i8 0, i8* %arrayidx18, align 1, !dbg !123
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !124

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !125

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 @staticReturnsTrue(), !dbg !126
  %tobool23 = icmp ne i32 %call22, 0, !dbg !126
  br i1 %tobool23, label %if.then24, label %if.end33, !dbg !128

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !129, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i32* %n, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !135, metadata !DIExpression()), !dbg !136
  %16 = load i8*, i8** %data, align 8, !dbg !137
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !139
  %cmp26 = icmp eq i32 %call25, 1, !dbg !140
  br i1 %cmp26, label %if.then28, label %if.end32, !dbg !141

if.then28:                                        ; preds = %if.then24
  store i32 0, i32* %intVariable, align 4, !dbg !142
  store i32 0, i32* %i, align 4, !dbg !144
  br label %for.cond, !dbg !146

for.cond:                                         ; preds = %for.inc, %if.then28
  %17 = load i32, i32* %i, align 4, !dbg !147
  %18 = load i32, i32* %n, align 4, !dbg !149
  %cmp29 = icmp slt i32 %17, %18, !dbg !150
  br i1 %cmp29, label %for.body, label %for.end, !dbg !151

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !152
  %inc = add nsw i32 %19, 1, !dbg !152
  store i32 %inc, i32* %intVariable, align 4, !dbg !152
  br label %for.inc, !dbg !154

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !155
  %inc31 = add nsw i32 %20, 1, !dbg !155
  store i32 %inc31, i32* %i, align 4, !dbg !155
  br label %for.cond, !dbg !156, !llvm.loop !157

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !160
  call void @printIntLine(i32 %21), !dbg !161
  br label %if.end32, !dbg !162

if.end32:                                         ; preds = %for.end, %if.then24
  br label %if.end33, !dbg !163

if.end33:                                         ; preds = %if.end32, %if.end21
  ret void, !dbg !164
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !165 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !168, metadata !DIExpression()), !dbg !169
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !169
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !169
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !170
  store i8* %arraydecay, i8** %data, align 8, !dbg !171
  %call = call i32 @staticReturnsTrue(), !dbg !172
  %tobool = icmp ne i32 %call, 0, !dbg !172
  br i1 %tobool, label %if.then, label %if.end21, !dbg !174

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !175, metadata !DIExpression()), !dbg !178
  %1 = load i8*, i8** %data, align 8, !dbg !179
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !180
  store i64 %call1, i64* %dataLen, align 8, !dbg !178
  %2 = load i64, i64* %dataLen, align 8, !dbg !181
  %sub = sub i64 100, %2, !dbg !183
  %cmp = icmp ugt i64 %sub, 1, !dbg !184
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !185

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !186
  %4 = load i64, i64* %dataLen, align 8, !dbg !189
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !190
  %5 = load i64, i64* %dataLen, align 8, !dbg !191
  %sub3 = sub i64 100, %5, !dbg !192
  %conv = trunc i64 %sub3 to i32, !dbg !193
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !194
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !195
  %cmp5 = icmp ne i8* %call4, null, !dbg !196
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !197

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !198
  %call8 = call i64 @strlen(i8* %7) #7, !dbg !200
  store i64 %call8, i64* %dataLen, align 8, !dbg !201
  %8 = load i64, i64* %dataLen, align 8, !dbg !202
  %cmp9 = icmp ugt i64 %8, 0, !dbg !204
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !205

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !206
  %10 = load i64, i64* %dataLen, align 8, !dbg !207
  %sub11 = sub i64 %10, 1, !dbg !208
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !206
  %11 = load i8, i8* %arrayidx, align 1, !dbg !206
  %conv12 = sext i8 %11 to i32, !dbg !206
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !209
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !210

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !211
  %13 = load i64, i64* %dataLen, align 8, !dbg !213
  %sub16 = sub i64 %13, 1, !dbg !214
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !211
  store i8 0, i8* %arrayidx17, align 1, !dbg !215
  br label %if.end, !dbg !216

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !217

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !218
  %14 = load i8*, i8** %data, align 8, !dbg !220
  %15 = load i64, i64* %dataLen, align 8, !dbg !221
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !220
  store i8 0, i8* %arrayidx18, align 1, !dbg !222
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !223

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !224

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 @staticReturnsFalse(), !dbg !225
  %tobool23 = icmp ne i32 %call22, 0, !dbg !225
  br i1 %tobool23, label %if.then24, label %if.else25, !dbg !227

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !228
  br label %if.end38, !dbg !230

if.else25:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !231, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %n, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !237, metadata !DIExpression()), !dbg !238
  %16 = load i8*, i8** %data, align 8, !dbg !239
  %call26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !241
  %cmp27 = icmp eq i32 %call26, 1, !dbg !242
  br i1 %cmp27, label %if.then29, label %if.end37, !dbg !243

if.then29:                                        ; preds = %if.else25
  %17 = load i32, i32* %n, align 4, !dbg !244
  %cmp30 = icmp slt i32 %17, 10000, !dbg !247
  br i1 %cmp30, label %if.then32, label %if.end36, !dbg !248

if.then32:                                        ; preds = %if.then29
  store i32 0, i32* %intVariable, align 4, !dbg !249
  store i32 0, i32* %i, align 4, !dbg !251
  br label %for.cond, !dbg !253

for.cond:                                         ; preds = %for.inc, %if.then32
  %18 = load i32, i32* %i, align 4, !dbg !254
  %19 = load i32, i32* %n, align 4, !dbg !256
  %cmp33 = icmp slt i32 %18, %19, !dbg !257
  br i1 %cmp33, label %for.body, label %for.end, !dbg !258

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !259
  %inc = add nsw i32 %20, 1, !dbg !259
  store i32 %inc, i32* %intVariable, align 4, !dbg !259
  br label %for.inc, !dbg !261

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !262
  %inc35 = add nsw i32 %21, 1, !dbg !262
  store i32 %inc35, i32* %i, align 4, !dbg !262
  br label %for.cond, !dbg !263, !llvm.loop !264

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !266
  call void @printIntLine(i32 %22), !dbg !267
  br label %if.end36, !dbg !268

if.end36:                                         ; preds = %for.end, %if.then29
  br label %if.end37, !dbg !269

if.end37:                                         ; preds = %if.end36, %if.else25
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !271 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !274, metadata !DIExpression()), !dbg !275
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !275
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !275
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !276
  store i8* %arraydecay, i8** %data, align 8, !dbg !277
  %call = call i32 @staticReturnsTrue(), !dbg !278
  %tobool = icmp ne i32 %call, 0, !dbg !278
  br i1 %tobool, label %if.then, label %if.end21, !dbg !280

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !281, metadata !DIExpression()), !dbg !284
  %1 = load i8*, i8** %data, align 8, !dbg !285
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !286
  store i64 %call1, i64* %dataLen, align 8, !dbg !284
  %2 = load i64, i64* %dataLen, align 8, !dbg !287
  %sub = sub i64 100, %2, !dbg !289
  %cmp = icmp ugt i64 %sub, 1, !dbg !290
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !291

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !292
  %4 = load i64, i64* %dataLen, align 8, !dbg !295
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !296
  %5 = load i64, i64* %dataLen, align 8, !dbg !297
  %sub3 = sub i64 100, %5, !dbg !298
  %conv = trunc i64 %sub3 to i32, !dbg !299
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !300
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !301
  %cmp5 = icmp ne i8* %call4, null, !dbg !302
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !303

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !304
  %call8 = call i64 @strlen(i8* %7) #7, !dbg !306
  store i64 %call8, i64* %dataLen, align 8, !dbg !307
  %8 = load i64, i64* %dataLen, align 8, !dbg !308
  %cmp9 = icmp ugt i64 %8, 0, !dbg !310
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !311

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !312
  %10 = load i64, i64* %dataLen, align 8, !dbg !313
  %sub11 = sub i64 %10, 1, !dbg !314
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !312
  %11 = load i8, i8* %arrayidx, align 1, !dbg !312
  %conv12 = sext i8 %11 to i32, !dbg !312
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !315
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !316

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !317
  %13 = load i64, i64* %dataLen, align 8, !dbg !319
  %sub16 = sub i64 %13, 1, !dbg !320
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !317
  store i8 0, i8* %arrayidx17, align 1, !dbg !321
  br label %if.end, !dbg !322

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !323

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !324
  %14 = load i8*, i8** %data, align 8, !dbg !326
  %15 = load i64, i64* %dataLen, align 8, !dbg !327
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !326
  store i8 0, i8* %arrayidx18, align 1, !dbg !328
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !329

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !330

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 @staticReturnsTrue(), !dbg !331
  %tobool23 = icmp ne i32 %call22, 0, !dbg !331
  br i1 %tobool23, label %if.then24, label %if.end37, !dbg !333

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !334, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata i32* %n, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !340, metadata !DIExpression()), !dbg !341
  %16 = load i8*, i8** %data, align 8, !dbg !342
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !344
  %cmp26 = icmp eq i32 %call25, 1, !dbg !345
  br i1 %cmp26, label %if.then28, label %if.end36, !dbg !346

if.then28:                                        ; preds = %if.then24
  %17 = load i32, i32* %n, align 4, !dbg !347
  %cmp29 = icmp slt i32 %17, 10000, !dbg !350
  br i1 %cmp29, label %if.then31, label %if.end35, !dbg !351

if.then31:                                        ; preds = %if.then28
  store i32 0, i32* %intVariable, align 4, !dbg !352
  store i32 0, i32* %i, align 4, !dbg !354
  br label %for.cond, !dbg !356

for.cond:                                         ; preds = %for.inc, %if.then31
  %18 = load i32, i32* %i, align 4, !dbg !357
  %19 = load i32, i32* %n, align 4, !dbg !359
  %cmp32 = icmp slt i32 %18, %19, !dbg !360
  br i1 %cmp32, label %for.body, label %for.end, !dbg !361

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !362
  %inc = add nsw i32 %20, 1, !dbg !362
  store i32 %inc, i32* %intVariable, align 4, !dbg !362
  br label %for.inc, !dbg !364

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !365
  %inc34 = add nsw i32 %21, 1, !dbg !365
  store i32 %inc34, i32* %i, align 4, !dbg !365
  br label %for.cond, !dbg !366, !llvm.loop !367

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !369
  call void @printIntLine(i32 %22), !dbg !370
  br label %if.end35, !dbg !371

if.end35:                                         ; preds = %for.end, %if.then28
  br label %if.end36, !dbg !372

if.end36:                                         ; preds = %if.end35, %if.then24
  br label %if.end37, !dbg !373

if.end37:                                         ; preds = %if.end36, %if.end21
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !375 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !379
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !379
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !380
  store i8* %arraydecay, i8** %data, align 8, !dbg !381
  %call = call i32 @staticReturnsFalse(), !dbg !382
  %tobool = icmp ne i32 %call, 0, !dbg !382
  br i1 %tobool, label %if.then, label %if.else, !dbg !384

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !385
  br label %if.end, !dbg !387

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !388
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !390
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @staticReturnsTrue(), !dbg !391
  %tobool3 = icmp ne i32 %call2, 0, !dbg !391
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !393

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !394, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata i32* %n, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !400, metadata !DIExpression()), !dbg !401
  %2 = load i8*, i8** %data, align 8, !dbg !402
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !404
  %cmp = icmp eq i32 %call5, 1, !dbg !405
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !406

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !407
  store i32 0, i32* %i, align 4, !dbg !409
  br label %for.cond, !dbg !411

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !412
  %4 = load i32, i32* %n, align 4, !dbg !414
  %cmp7 = icmp slt i32 %3, %4, !dbg !415
  br i1 %cmp7, label %for.body, label %for.end, !dbg !416

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !417
  %inc = add nsw i32 %5, 1, !dbg !417
  store i32 %inc, i32* %intVariable, align 4, !dbg !417
  br label %for.inc, !dbg !419

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !420
  %inc8 = add nsw i32 %6, 1, !dbg !420
  store i32 %inc8, i32* %i, align 4, !dbg !420
  br label %for.cond, !dbg !421, !llvm.loop !422

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !424
  call void @printIntLine(i32 %7), !dbg !425
  br label %if.end9, !dbg !426

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !427

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !428
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !429 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !432, metadata !DIExpression()), !dbg !433
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !433
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !433
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !434
  store i8* %arraydecay, i8** %data, align 8, !dbg !435
  %call = call i32 @staticReturnsTrue(), !dbg !436
  %tobool = icmp ne i32 %call, 0, !dbg !436
  br i1 %tobool, label %if.then, label %if.end, !dbg !438

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !439
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !441
  br label %if.end, !dbg !442

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @staticReturnsTrue(), !dbg !443
  %tobool3 = icmp ne i32 %call2, 0, !dbg !443
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !445

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !446, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata i32* %n, metadata !450, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !452, metadata !DIExpression()), !dbg !453
  %2 = load i8*, i8** %data, align 8, !dbg !454
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !456
  %cmp = icmp eq i32 %call5, 1, !dbg !457
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !458

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !459
  store i32 0, i32* %i, align 4, !dbg !461
  br label %for.cond, !dbg !463

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !464
  %4 = load i32, i32* %n, align 4, !dbg !466
  %cmp7 = icmp slt i32 %3, %4, !dbg !467
  br i1 %cmp7, label %for.body, label %for.end, !dbg !468

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !469
  %inc = add nsw i32 %5, 1, !dbg !469
  store i32 %inc, i32* %intVariable, align 4, !dbg !469
  br label %for.inc, !dbg !471

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !472
  %inc8 = add nsw i32 %6, 1, !dbg !472
  store i32 %inc8, i32* %i, align 4, !dbg !472
  br label %for.cond, !dbg !473, !llvm.loop !474

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !476
  call void @printIntLine(i32 %7), !dbg !477
  br label %if.end9, !dbg !478

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !479

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_08_good() #0 !dbg !481 {
entry:
  call void @goodB2G1(), !dbg !482
  call void @goodB2G2(), !dbg !483
  call void @goodG2B1(), !dbg !484
  call void @goodG2B2(), !dbg !485
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !487 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !490, metadata !DIExpression()), !dbg !491
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !492
  %0 = load i8*, i8** %line.addr, align 8, !dbg !493
  %cmp = icmp ne i8* %0, null, !dbg !495
  br i1 %cmp, label %if.then, label %if.end, !dbg !496

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !497
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !499
  br label %if.end, !dbg !500

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !501
  ret void, !dbg !502
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !503 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !504, metadata !DIExpression()), !dbg !505
  %0 = load i8*, i8** %line.addr, align 8, !dbg !506
  %cmp = icmp ne i8* %0, null, !dbg !508
  br i1 %cmp, label %if.then, label %if.end, !dbg !509

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !510
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !512
  br label %if.end, !dbg !513

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !515 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !520, metadata !DIExpression()), !dbg !521
  %0 = load i32*, i32** %line.addr, align 8, !dbg !522
  %cmp = icmp ne i32* %0, null, !dbg !524
  br i1 %cmp, label %if.then, label %if.end, !dbg !525

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !526
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !528
  br label %if.end, !dbg !529

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !530
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !531 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !534, metadata !DIExpression()), !dbg !535
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !536
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !537
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !539 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !543, metadata !DIExpression()), !dbg !544
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !545
  %conv = sext i16 %0 to i32, !dbg !545
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !546
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !548 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !552, metadata !DIExpression()), !dbg !553
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !554
  %conv = fpext float %0 to double, !dbg !554
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !555
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !557 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !561, metadata !DIExpression()), !dbg !562
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !563
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !564
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !566 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !573, metadata !DIExpression()), !dbg !574
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !575
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !576
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !578 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !581, metadata !DIExpression()), !dbg !582
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !583
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !584
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !586 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !589, metadata !DIExpression()), !dbg !590
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !591
  %conv = sext i8 %0 to i32, !dbg !591
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !592
  ret void, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !594 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !597, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !599, metadata !DIExpression()), !dbg !603
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !604
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !605
  store i32 %0, i32* %arrayidx, align 4, !dbg !606
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !607
  store i32 0, i32* %arrayidx1, align 4, !dbg !608
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !609
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !610
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !612 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !615, metadata !DIExpression()), !dbg !616
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !617
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !618
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !620 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !623, metadata !DIExpression()), !dbg !624
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !625
  %conv = zext i8 %0 to i32, !dbg !625
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !626
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !628 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !632, metadata !DIExpression()), !dbg !633
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !634
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !635
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !637 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !647, metadata !DIExpression()), !dbg !648
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !649
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !650
  %1 = load i32, i32* %intOne, align 4, !dbg !650
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !651
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !652
  %3 = load i32, i32* %intTwo, align 4, !dbg !652
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !653
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !655 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !659, metadata !DIExpression()), !dbg !660
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !661, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.declare(metadata i64* %i, metadata !663, metadata !DIExpression()), !dbg !664
  store i64 0, i64* %i, align 8, !dbg !665
  br label %for.cond, !dbg !667

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !668
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !670
  %cmp = icmp ult i64 %0, %1, !dbg !671
  br i1 %cmp, label %for.body, label %for.end, !dbg !672

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !673
  %3 = load i64, i64* %i, align 8, !dbg !675
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !673
  %4 = load i8, i8* %arrayidx, align 1, !dbg !673
  %conv = zext i8 %4 to i32, !dbg !673
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !676
  br label %for.inc, !dbg !677

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !678
  %inc = add i64 %5, 1, !dbg !678
  store i64 %inc, i64* %i, align 8, !dbg !678
  br label %for.cond, !dbg !679, !llvm.loop !680

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !682
  ret void, !dbg !683
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !684 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !687, metadata !DIExpression()), !dbg !688
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !689, metadata !DIExpression()), !dbg !690
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !691, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !693, metadata !DIExpression()), !dbg !694
  store i64 0, i64* %numWritten, align 8, !dbg !694
  br label %while.cond, !dbg !695

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !696
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !697
  %cmp = icmp ult i64 %0, %1, !dbg !698
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !699

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !700
  %2 = load i16*, i16** %call, align 8, !dbg !700
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !700
  %4 = load i64, i64* %numWritten, align 8, !dbg !700
  %mul = mul i64 2, %4, !dbg !700
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !700
  %5 = load i8, i8* %arrayidx, align 1, !dbg !700
  %conv = sext i8 %5 to i32, !dbg !700
  %idxprom = sext i32 %conv to i64, !dbg !700
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !700
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !700
  %conv2 = zext i16 %6 to i32, !dbg !700
  %and = and i32 %conv2, 4096, !dbg !700
  %tobool = icmp ne i32 %and, 0, !dbg !700
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !701

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !702
  %7 = load i16*, i16** %call3, align 8, !dbg !702
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !702
  %9 = load i64, i64* %numWritten, align 8, !dbg !702
  %mul4 = mul i64 2, %9, !dbg !702
  %add = add i64 %mul4, 1, !dbg !702
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !702
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !702
  %conv6 = sext i8 %10 to i32, !dbg !702
  %idxprom7 = sext i32 %conv6 to i64, !dbg !702
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !702
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !702
  %conv9 = zext i16 %11 to i32, !dbg !702
  %and10 = and i32 %conv9, 4096, !dbg !702
  %tobool11 = icmp ne i32 %and10, 0, !dbg !701
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !703
  br i1 %12, label %while.body, label %while.end, !dbg !695

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !704, metadata !DIExpression()), !dbg !706
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !707
  %14 = load i64, i64* %numWritten, align 8, !dbg !708
  %mul12 = mul i64 2, %14, !dbg !709
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !707
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !710
  %15 = load i32, i32* %byte, align 4, !dbg !711
  %conv15 = trunc i32 %15 to i8, !dbg !712
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !713
  %17 = load i64, i64* %numWritten, align 8, !dbg !714
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !713
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !715
  %18 = load i64, i64* %numWritten, align 8, !dbg !716
  %inc = add i64 %18, 1, !dbg !716
  store i64 %inc, i64* %numWritten, align 8, !dbg !716
  br label %while.cond, !dbg !695, !llvm.loop !717

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !719
  ret i64 %19, !dbg !720
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !721 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !724, metadata !DIExpression()), !dbg !725
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !726, metadata !DIExpression()), !dbg !727
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !728, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !730, metadata !DIExpression()), !dbg !731
  store i64 0, i64* %numWritten, align 8, !dbg !731
  br label %while.cond, !dbg !732

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !733
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !734
  %cmp = icmp ult i64 %0, %1, !dbg !735
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !736

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !737
  %3 = load i64, i64* %numWritten, align 8, !dbg !738
  %mul = mul i64 2, %3, !dbg !739
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !737
  %4 = load i32, i32* %arrayidx, align 4, !dbg !737
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !740
  %tobool = icmp ne i32 %call, 0, !dbg !740
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !741

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !742
  %6 = load i64, i64* %numWritten, align 8, !dbg !743
  %mul1 = mul i64 2, %6, !dbg !744
  %add = add i64 %mul1, 1, !dbg !745
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !742
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !742
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !746
  %tobool4 = icmp ne i32 %call3, 0, !dbg !741
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !747
  br i1 %8, label %while.body, label %while.end, !dbg !732

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !748, metadata !DIExpression()), !dbg !750
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !751
  %10 = load i64, i64* %numWritten, align 8, !dbg !752
  %mul5 = mul i64 2, %10, !dbg !753
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !751
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !754
  %11 = load i32, i32* %byte, align 4, !dbg !755
  %conv = trunc i32 %11 to i8, !dbg !756
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !757
  %13 = load i64, i64* %numWritten, align 8, !dbg !758
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !757
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !759
  %14 = load i64, i64* %numWritten, align 8, !dbg !760
  %inc = add i64 %14, 1, !dbg !760
  store i64 %inc, i64* %numWritten, align 8, !dbg !760
  br label %while.cond, !dbg !732, !llvm.loop !761

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !763
  ret i64 %15, !dbg !764
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !765 {
entry:
  ret i32 1, !dbg !766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !767 {
entry:
  ret i32 0, !dbg !768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !769 {
entry:
  %call = call i32 @rand() #8, !dbg !770
  %rem = srem i32 %call, 2, !dbg !771
  ret i32 %rem, !dbg !772
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !773 {
entry:
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !775 {
entry:
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !777 {
entry:
  ret void, !dbg !778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !779 {
entry:
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !781 {
entry:
  ret void, !dbg !782
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !783 {
entry:
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !785 {
entry:
  ret void, !dbg !786
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !787 {
entry:
  ret void, !dbg !788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !789 {
entry:
  ret void, !dbg !790
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !791 {
entry:
  ret void, !dbg !792
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !793 {
entry:
  ret void, !dbg !794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !795 {
entry:
  ret void, !dbg !796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !797 {
entry:
  ret void, !dbg !798
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !799 {
entry:
  ret void, !dbg !800
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !801 {
entry:
  ret void, !dbg !802
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !803 {
entry:
  ret void, !dbg !804
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !805 {
entry:
  ret void, !dbg !806
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !807 {
entry:
  ret void, !dbg !808
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_985/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_985/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !45, file: !45, line: 30, type: !53, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{!23}
!55 = !DILocation(line: 32, column: 5, scope: !52)
!56 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!57 = !DILocation(line: 37, column: 5, scope: !56)
!58 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_08_bad", scope: !45, file: !45, line: 42, type: !59, scopeLine: 43, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocalVariable(name: "data", scope: !58, file: !45, line: 44, type: !42)
!62 = !DILocation(line: 44, column: 12, scope: !58)
!63 = !DILocalVariable(name: "dataBuffer", scope: !58, file: !45, line: 45, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 100)
!67 = !DILocation(line: 45, column: 10, scope: !58)
!68 = !DILocation(line: 46, column: 12, scope: !58)
!69 = !DILocation(line: 46, column: 10, scope: !58)
!70 = !DILocation(line: 47, column: 8, scope: !71)
!71 = distinct !DILexicalBlock(scope: !58, file: !45, line: 47, column: 8)
!72 = !DILocation(line: 47, column: 8, scope: !58)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 51, type: !76)
!74 = distinct !DILexicalBlock(scope: !75, file: !45, line: 49, column: 9)
!75 = distinct !DILexicalBlock(scope: !71, file: !45, line: 48, column: 5)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 46, baseType: !78)
!77 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !DILocation(line: 51, column: 20, scope: !74)
!80 = !DILocation(line: 51, column: 37, scope: !74)
!81 = !DILocation(line: 51, column: 30, scope: !74)
!82 = !DILocation(line: 53, column: 21, scope: !83)
!83 = distinct !DILexicalBlock(scope: !74, file: !45, line: 53, column: 17)
!84 = !DILocation(line: 53, column: 20, scope: !83)
!85 = !DILocation(line: 53, column: 29, scope: !83)
!86 = !DILocation(line: 53, column: 17, scope: !74)
!87 = !DILocation(line: 56, column: 27, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !45, line: 56, column: 21)
!89 = distinct !DILexicalBlock(scope: !83, file: !45, line: 54, column: 13)
!90 = !DILocation(line: 56, column: 32, scope: !88)
!91 = !DILocation(line: 56, column: 31, scope: !88)
!92 = !DILocation(line: 56, column: 51, scope: !88)
!93 = !DILocation(line: 56, column: 50, scope: !88)
!94 = !DILocation(line: 56, column: 41, scope: !88)
!95 = !DILocation(line: 56, column: 61, scope: !88)
!96 = !DILocation(line: 56, column: 21, scope: !88)
!97 = !DILocation(line: 56, column: 68, scope: !88)
!98 = !DILocation(line: 56, column: 21, scope: !89)
!99 = !DILocation(line: 60, column: 38, scope: !100)
!100 = distinct !DILexicalBlock(scope: !88, file: !45, line: 57, column: 17)
!101 = !DILocation(line: 60, column: 31, scope: !100)
!102 = !DILocation(line: 60, column: 29, scope: !100)
!103 = !DILocation(line: 61, column: 25, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !45, line: 61, column: 25)
!105 = !DILocation(line: 61, column: 33, scope: !104)
!106 = !DILocation(line: 61, column: 37, scope: !104)
!107 = !DILocation(line: 61, column: 40, scope: !104)
!108 = !DILocation(line: 61, column: 45, scope: !104)
!109 = !DILocation(line: 61, column: 52, scope: !104)
!110 = !DILocation(line: 61, column: 56, scope: !104)
!111 = !DILocation(line: 61, column: 25, scope: !100)
!112 = !DILocation(line: 63, column: 25, scope: !113)
!113 = distinct !DILexicalBlock(scope: !104, file: !45, line: 62, column: 21)
!114 = !DILocation(line: 63, column: 30, scope: !113)
!115 = !DILocation(line: 63, column: 37, scope: !113)
!116 = !DILocation(line: 63, column: 41, scope: !113)
!117 = !DILocation(line: 64, column: 21, scope: !113)
!118 = !DILocation(line: 65, column: 17, scope: !100)
!119 = !DILocation(line: 68, column: 21, scope: !120)
!120 = distinct !DILexicalBlock(scope: !88, file: !45, line: 67, column: 17)
!121 = !DILocation(line: 70, column: 21, scope: !120)
!122 = !DILocation(line: 70, column: 26, scope: !120)
!123 = !DILocation(line: 70, column: 35, scope: !120)
!124 = !DILocation(line: 72, column: 13, scope: !89)
!125 = !DILocation(line: 74, column: 5, scope: !75)
!126 = !DILocation(line: 75, column: 8, scope: !127)
!127 = distinct !DILexicalBlock(scope: !58, file: !45, line: 75, column: 8)
!128 = !DILocation(line: 75, column: 8, scope: !58)
!129 = !DILocalVariable(name: "i", scope: !130, file: !45, line: 78, type: !23)
!130 = distinct !DILexicalBlock(scope: !131, file: !45, line: 77, column: 9)
!131 = distinct !DILexicalBlock(scope: !127, file: !45, line: 76, column: 5)
!132 = !DILocation(line: 78, column: 17, scope: !130)
!133 = !DILocalVariable(name: "n", scope: !130, file: !45, line: 78, type: !23)
!134 = !DILocation(line: 78, column: 20, scope: !130)
!135 = !DILocalVariable(name: "intVariable", scope: !130, file: !45, line: 78, type: !23)
!136 = !DILocation(line: 78, column: 23, scope: !130)
!137 = !DILocation(line: 79, column: 24, scope: !138)
!138 = distinct !DILexicalBlock(scope: !130, file: !45, line: 79, column: 17)
!139 = !DILocation(line: 79, column: 17, scope: !138)
!140 = !DILocation(line: 79, column: 40, scope: !138)
!141 = !DILocation(line: 79, column: 17, scope: !130)
!142 = !DILocation(line: 82, column: 29, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !45, line: 80, column: 13)
!144 = !DILocation(line: 83, column: 24, scope: !145)
!145 = distinct !DILexicalBlock(scope: !143, file: !45, line: 83, column: 17)
!146 = !DILocation(line: 83, column: 22, scope: !145)
!147 = !DILocation(line: 83, column: 29, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !45, line: 83, column: 17)
!149 = !DILocation(line: 83, column: 33, scope: !148)
!150 = !DILocation(line: 83, column: 31, scope: !148)
!151 = !DILocation(line: 83, column: 17, scope: !145)
!152 = !DILocation(line: 86, column: 32, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !45, line: 84, column: 17)
!154 = !DILocation(line: 87, column: 17, scope: !153)
!155 = !DILocation(line: 83, column: 37, scope: !148)
!156 = !DILocation(line: 83, column: 17, scope: !148)
!157 = distinct !{!157, !151, !158, !159}
!158 = !DILocation(line: 87, column: 17, scope: !145)
!159 = !{!"llvm.loop.mustprogress"}
!160 = !DILocation(line: 88, column: 30, scope: !143)
!161 = !DILocation(line: 88, column: 17, scope: !143)
!162 = !DILocation(line: 89, column: 13, scope: !143)
!163 = !DILocation(line: 91, column: 5, scope: !131)
!164 = !DILocation(line: 92, column: 1, scope: !58)
!165 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 99, type: !59, scopeLine: 100, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!166 = !DILocalVariable(name: "data", scope: !165, file: !45, line: 101, type: !42)
!167 = !DILocation(line: 101, column: 12, scope: !165)
!168 = !DILocalVariable(name: "dataBuffer", scope: !165, file: !45, line: 102, type: !64)
!169 = !DILocation(line: 102, column: 10, scope: !165)
!170 = !DILocation(line: 103, column: 12, scope: !165)
!171 = !DILocation(line: 103, column: 10, scope: !165)
!172 = !DILocation(line: 104, column: 8, scope: !173)
!173 = distinct !DILexicalBlock(scope: !165, file: !45, line: 104, column: 8)
!174 = !DILocation(line: 104, column: 8, scope: !165)
!175 = !DILocalVariable(name: "dataLen", scope: !176, file: !45, line: 108, type: !76)
!176 = distinct !DILexicalBlock(scope: !177, file: !45, line: 106, column: 9)
!177 = distinct !DILexicalBlock(scope: !173, file: !45, line: 105, column: 5)
!178 = !DILocation(line: 108, column: 20, scope: !176)
!179 = !DILocation(line: 108, column: 37, scope: !176)
!180 = !DILocation(line: 108, column: 30, scope: !176)
!181 = !DILocation(line: 110, column: 21, scope: !182)
!182 = distinct !DILexicalBlock(scope: !176, file: !45, line: 110, column: 17)
!183 = !DILocation(line: 110, column: 20, scope: !182)
!184 = !DILocation(line: 110, column: 29, scope: !182)
!185 = !DILocation(line: 110, column: 17, scope: !176)
!186 = !DILocation(line: 113, column: 27, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !45, line: 113, column: 21)
!188 = distinct !DILexicalBlock(scope: !182, file: !45, line: 111, column: 13)
!189 = !DILocation(line: 113, column: 32, scope: !187)
!190 = !DILocation(line: 113, column: 31, scope: !187)
!191 = !DILocation(line: 113, column: 51, scope: !187)
!192 = !DILocation(line: 113, column: 50, scope: !187)
!193 = !DILocation(line: 113, column: 41, scope: !187)
!194 = !DILocation(line: 113, column: 61, scope: !187)
!195 = !DILocation(line: 113, column: 21, scope: !187)
!196 = !DILocation(line: 113, column: 68, scope: !187)
!197 = !DILocation(line: 113, column: 21, scope: !188)
!198 = !DILocation(line: 117, column: 38, scope: !199)
!199 = distinct !DILexicalBlock(scope: !187, file: !45, line: 114, column: 17)
!200 = !DILocation(line: 117, column: 31, scope: !199)
!201 = !DILocation(line: 117, column: 29, scope: !199)
!202 = !DILocation(line: 118, column: 25, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !45, line: 118, column: 25)
!204 = !DILocation(line: 118, column: 33, scope: !203)
!205 = !DILocation(line: 118, column: 37, scope: !203)
!206 = !DILocation(line: 118, column: 40, scope: !203)
!207 = !DILocation(line: 118, column: 45, scope: !203)
!208 = !DILocation(line: 118, column: 52, scope: !203)
!209 = !DILocation(line: 118, column: 56, scope: !203)
!210 = !DILocation(line: 118, column: 25, scope: !199)
!211 = !DILocation(line: 120, column: 25, scope: !212)
!212 = distinct !DILexicalBlock(scope: !203, file: !45, line: 119, column: 21)
!213 = !DILocation(line: 120, column: 30, scope: !212)
!214 = !DILocation(line: 120, column: 37, scope: !212)
!215 = !DILocation(line: 120, column: 41, scope: !212)
!216 = !DILocation(line: 121, column: 21, scope: !212)
!217 = !DILocation(line: 122, column: 17, scope: !199)
!218 = !DILocation(line: 125, column: 21, scope: !219)
!219 = distinct !DILexicalBlock(scope: !187, file: !45, line: 124, column: 17)
!220 = !DILocation(line: 127, column: 21, scope: !219)
!221 = !DILocation(line: 127, column: 26, scope: !219)
!222 = !DILocation(line: 127, column: 35, scope: !219)
!223 = !DILocation(line: 129, column: 13, scope: !188)
!224 = !DILocation(line: 131, column: 5, scope: !177)
!225 = !DILocation(line: 132, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !165, file: !45, line: 132, column: 8)
!227 = !DILocation(line: 132, column: 8, scope: !165)
!228 = !DILocation(line: 135, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !45, line: 133, column: 5)
!230 = !DILocation(line: 136, column: 5, scope: !229)
!231 = !DILocalVariable(name: "i", scope: !232, file: !45, line: 140, type: !23)
!232 = distinct !DILexicalBlock(scope: !233, file: !45, line: 139, column: 9)
!233 = distinct !DILexicalBlock(scope: !226, file: !45, line: 138, column: 5)
!234 = !DILocation(line: 140, column: 17, scope: !232)
!235 = !DILocalVariable(name: "n", scope: !232, file: !45, line: 140, type: !23)
!236 = !DILocation(line: 140, column: 20, scope: !232)
!237 = !DILocalVariable(name: "intVariable", scope: !232, file: !45, line: 140, type: !23)
!238 = !DILocation(line: 140, column: 23, scope: !232)
!239 = !DILocation(line: 141, column: 24, scope: !240)
!240 = distinct !DILexicalBlock(scope: !232, file: !45, line: 141, column: 17)
!241 = !DILocation(line: 141, column: 17, scope: !240)
!242 = !DILocation(line: 141, column: 40, scope: !240)
!243 = !DILocation(line: 141, column: 17, scope: !232)
!244 = !DILocation(line: 144, column: 21, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !45, line: 144, column: 21)
!246 = distinct !DILexicalBlock(scope: !240, file: !45, line: 142, column: 13)
!247 = !DILocation(line: 144, column: 23, scope: !245)
!248 = !DILocation(line: 144, column: 21, scope: !246)
!249 = !DILocation(line: 146, column: 33, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !45, line: 145, column: 17)
!251 = !DILocation(line: 147, column: 28, scope: !252)
!252 = distinct !DILexicalBlock(scope: !250, file: !45, line: 147, column: 21)
!253 = !DILocation(line: 147, column: 26, scope: !252)
!254 = !DILocation(line: 147, column: 33, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !45, line: 147, column: 21)
!256 = !DILocation(line: 147, column: 37, scope: !255)
!257 = !DILocation(line: 147, column: 35, scope: !255)
!258 = !DILocation(line: 147, column: 21, scope: !252)
!259 = !DILocation(line: 150, column: 36, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !45, line: 148, column: 21)
!261 = !DILocation(line: 151, column: 21, scope: !260)
!262 = !DILocation(line: 147, column: 41, scope: !255)
!263 = !DILocation(line: 147, column: 21, scope: !255)
!264 = distinct !{!264, !258, !265, !159}
!265 = !DILocation(line: 151, column: 21, scope: !252)
!266 = !DILocation(line: 152, column: 34, scope: !250)
!267 = !DILocation(line: 152, column: 21, scope: !250)
!268 = !DILocation(line: 153, column: 17, scope: !250)
!269 = !DILocation(line: 154, column: 13, scope: !246)
!270 = !DILocation(line: 157, column: 1, scope: !165)
!271 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 160, type: !59, scopeLine: 161, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!272 = !DILocalVariable(name: "data", scope: !271, file: !45, line: 162, type: !42)
!273 = !DILocation(line: 162, column: 12, scope: !271)
!274 = !DILocalVariable(name: "dataBuffer", scope: !271, file: !45, line: 163, type: !64)
!275 = !DILocation(line: 163, column: 10, scope: !271)
!276 = !DILocation(line: 164, column: 12, scope: !271)
!277 = !DILocation(line: 164, column: 10, scope: !271)
!278 = !DILocation(line: 165, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !271, file: !45, line: 165, column: 8)
!280 = !DILocation(line: 165, column: 8, scope: !271)
!281 = !DILocalVariable(name: "dataLen", scope: !282, file: !45, line: 169, type: !76)
!282 = distinct !DILexicalBlock(scope: !283, file: !45, line: 167, column: 9)
!283 = distinct !DILexicalBlock(scope: !279, file: !45, line: 166, column: 5)
!284 = !DILocation(line: 169, column: 20, scope: !282)
!285 = !DILocation(line: 169, column: 37, scope: !282)
!286 = !DILocation(line: 169, column: 30, scope: !282)
!287 = !DILocation(line: 171, column: 21, scope: !288)
!288 = distinct !DILexicalBlock(scope: !282, file: !45, line: 171, column: 17)
!289 = !DILocation(line: 171, column: 20, scope: !288)
!290 = !DILocation(line: 171, column: 29, scope: !288)
!291 = !DILocation(line: 171, column: 17, scope: !282)
!292 = !DILocation(line: 174, column: 27, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !45, line: 174, column: 21)
!294 = distinct !DILexicalBlock(scope: !288, file: !45, line: 172, column: 13)
!295 = !DILocation(line: 174, column: 32, scope: !293)
!296 = !DILocation(line: 174, column: 31, scope: !293)
!297 = !DILocation(line: 174, column: 51, scope: !293)
!298 = !DILocation(line: 174, column: 50, scope: !293)
!299 = !DILocation(line: 174, column: 41, scope: !293)
!300 = !DILocation(line: 174, column: 61, scope: !293)
!301 = !DILocation(line: 174, column: 21, scope: !293)
!302 = !DILocation(line: 174, column: 68, scope: !293)
!303 = !DILocation(line: 174, column: 21, scope: !294)
!304 = !DILocation(line: 178, column: 38, scope: !305)
!305 = distinct !DILexicalBlock(scope: !293, file: !45, line: 175, column: 17)
!306 = !DILocation(line: 178, column: 31, scope: !305)
!307 = !DILocation(line: 178, column: 29, scope: !305)
!308 = !DILocation(line: 179, column: 25, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !45, line: 179, column: 25)
!310 = !DILocation(line: 179, column: 33, scope: !309)
!311 = !DILocation(line: 179, column: 37, scope: !309)
!312 = !DILocation(line: 179, column: 40, scope: !309)
!313 = !DILocation(line: 179, column: 45, scope: !309)
!314 = !DILocation(line: 179, column: 52, scope: !309)
!315 = !DILocation(line: 179, column: 56, scope: !309)
!316 = !DILocation(line: 179, column: 25, scope: !305)
!317 = !DILocation(line: 181, column: 25, scope: !318)
!318 = distinct !DILexicalBlock(scope: !309, file: !45, line: 180, column: 21)
!319 = !DILocation(line: 181, column: 30, scope: !318)
!320 = !DILocation(line: 181, column: 37, scope: !318)
!321 = !DILocation(line: 181, column: 41, scope: !318)
!322 = !DILocation(line: 182, column: 21, scope: !318)
!323 = !DILocation(line: 183, column: 17, scope: !305)
!324 = !DILocation(line: 186, column: 21, scope: !325)
!325 = distinct !DILexicalBlock(scope: !293, file: !45, line: 185, column: 17)
!326 = !DILocation(line: 188, column: 21, scope: !325)
!327 = !DILocation(line: 188, column: 26, scope: !325)
!328 = !DILocation(line: 188, column: 35, scope: !325)
!329 = !DILocation(line: 190, column: 13, scope: !294)
!330 = !DILocation(line: 192, column: 5, scope: !283)
!331 = !DILocation(line: 193, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !271, file: !45, line: 193, column: 8)
!333 = !DILocation(line: 193, column: 8, scope: !271)
!334 = !DILocalVariable(name: "i", scope: !335, file: !45, line: 196, type: !23)
!335 = distinct !DILexicalBlock(scope: !336, file: !45, line: 195, column: 9)
!336 = distinct !DILexicalBlock(scope: !332, file: !45, line: 194, column: 5)
!337 = !DILocation(line: 196, column: 17, scope: !335)
!338 = !DILocalVariable(name: "n", scope: !335, file: !45, line: 196, type: !23)
!339 = !DILocation(line: 196, column: 20, scope: !335)
!340 = !DILocalVariable(name: "intVariable", scope: !335, file: !45, line: 196, type: !23)
!341 = !DILocation(line: 196, column: 23, scope: !335)
!342 = !DILocation(line: 197, column: 24, scope: !343)
!343 = distinct !DILexicalBlock(scope: !335, file: !45, line: 197, column: 17)
!344 = !DILocation(line: 197, column: 17, scope: !343)
!345 = !DILocation(line: 197, column: 40, scope: !343)
!346 = !DILocation(line: 197, column: 17, scope: !335)
!347 = !DILocation(line: 200, column: 21, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !45, line: 200, column: 21)
!349 = distinct !DILexicalBlock(scope: !343, file: !45, line: 198, column: 13)
!350 = !DILocation(line: 200, column: 23, scope: !348)
!351 = !DILocation(line: 200, column: 21, scope: !349)
!352 = !DILocation(line: 202, column: 33, scope: !353)
!353 = distinct !DILexicalBlock(scope: !348, file: !45, line: 201, column: 17)
!354 = !DILocation(line: 203, column: 28, scope: !355)
!355 = distinct !DILexicalBlock(scope: !353, file: !45, line: 203, column: 21)
!356 = !DILocation(line: 203, column: 26, scope: !355)
!357 = !DILocation(line: 203, column: 33, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !45, line: 203, column: 21)
!359 = !DILocation(line: 203, column: 37, scope: !358)
!360 = !DILocation(line: 203, column: 35, scope: !358)
!361 = !DILocation(line: 203, column: 21, scope: !355)
!362 = !DILocation(line: 206, column: 36, scope: !363)
!363 = distinct !DILexicalBlock(scope: !358, file: !45, line: 204, column: 21)
!364 = !DILocation(line: 207, column: 21, scope: !363)
!365 = !DILocation(line: 203, column: 41, scope: !358)
!366 = !DILocation(line: 203, column: 21, scope: !358)
!367 = distinct !{!367, !361, !368, !159}
!368 = !DILocation(line: 207, column: 21, scope: !355)
!369 = !DILocation(line: 208, column: 34, scope: !353)
!370 = !DILocation(line: 208, column: 21, scope: !353)
!371 = !DILocation(line: 209, column: 17, scope: !353)
!372 = !DILocation(line: 210, column: 13, scope: !349)
!373 = !DILocation(line: 212, column: 5, scope: !336)
!374 = !DILocation(line: 213, column: 1, scope: !271)
!375 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 216, type: !59, scopeLine: 217, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!376 = !DILocalVariable(name: "data", scope: !375, file: !45, line: 218, type: !42)
!377 = !DILocation(line: 218, column: 12, scope: !375)
!378 = !DILocalVariable(name: "dataBuffer", scope: !375, file: !45, line: 219, type: !64)
!379 = !DILocation(line: 219, column: 10, scope: !375)
!380 = !DILocation(line: 220, column: 12, scope: !375)
!381 = !DILocation(line: 220, column: 10, scope: !375)
!382 = !DILocation(line: 221, column: 8, scope: !383)
!383 = distinct !DILexicalBlock(scope: !375, file: !45, line: 221, column: 8)
!384 = !DILocation(line: 221, column: 8, scope: !375)
!385 = !DILocation(line: 224, column: 9, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !45, line: 222, column: 5)
!387 = !DILocation(line: 225, column: 5, scope: !386)
!388 = !DILocation(line: 229, column: 16, scope: !389)
!389 = distinct !DILexicalBlock(scope: !383, file: !45, line: 227, column: 5)
!390 = !DILocation(line: 229, column: 9, scope: !389)
!391 = !DILocation(line: 231, column: 8, scope: !392)
!392 = distinct !DILexicalBlock(scope: !375, file: !45, line: 231, column: 8)
!393 = !DILocation(line: 231, column: 8, scope: !375)
!394 = !DILocalVariable(name: "i", scope: !395, file: !45, line: 234, type: !23)
!395 = distinct !DILexicalBlock(scope: !396, file: !45, line: 233, column: 9)
!396 = distinct !DILexicalBlock(scope: !392, file: !45, line: 232, column: 5)
!397 = !DILocation(line: 234, column: 17, scope: !395)
!398 = !DILocalVariable(name: "n", scope: !395, file: !45, line: 234, type: !23)
!399 = !DILocation(line: 234, column: 20, scope: !395)
!400 = !DILocalVariable(name: "intVariable", scope: !395, file: !45, line: 234, type: !23)
!401 = !DILocation(line: 234, column: 23, scope: !395)
!402 = !DILocation(line: 235, column: 24, scope: !403)
!403 = distinct !DILexicalBlock(scope: !395, file: !45, line: 235, column: 17)
!404 = !DILocation(line: 235, column: 17, scope: !403)
!405 = !DILocation(line: 235, column: 40, scope: !403)
!406 = !DILocation(line: 235, column: 17, scope: !395)
!407 = !DILocation(line: 238, column: 29, scope: !408)
!408 = distinct !DILexicalBlock(scope: !403, file: !45, line: 236, column: 13)
!409 = !DILocation(line: 239, column: 24, scope: !410)
!410 = distinct !DILexicalBlock(scope: !408, file: !45, line: 239, column: 17)
!411 = !DILocation(line: 239, column: 22, scope: !410)
!412 = !DILocation(line: 239, column: 29, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !45, line: 239, column: 17)
!414 = !DILocation(line: 239, column: 33, scope: !413)
!415 = !DILocation(line: 239, column: 31, scope: !413)
!416 = !DILocation(line: 239, column: 17, scope: !410)
!417 = !DILocation(line: 242, column: 32, scope: !418)
!418 = distinct !DILexicalBlock(scope: !413, file: !45, line: 240, column: 17)
!419 = !DILocation(line: 243, column: 17, scope: !418)
!420 = !DILocation(line: 239, column: 37, scope: !413)
!421 = !DILocation(line: 239, column: 17, scope: !413)
!422 = distinct !{!422, !416, !423, !159}
!423 = !DILocation(line: 243, column: 17, scope: !410)
!424 = !DILocation(line: 244, column: 30, scope: !408)
!425 = !DILocation(line: 244, column: 17, scope: !408)
!426 = !DILocation(line: 245, column: 13, scope: !408)
!427 = !DILocation(line: 247, column: 5, scope: !396)
!428 = !DILocation(line: 248, column: 1, scope: !375)
!429 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 251, type: !59, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!430 = !DILocalVariable(name: "data", scope: !429, file: !45, line: 253, type: !42)
!431 = !DILocation(line: 253, column: 12, scope: !429)
!432 = !DILocalVariable(name: "dataBuffer", scope: !429, file: !45, line: 254, type: !64)
!433 = !DILocation(line: 254, column: 10, scope: !429)
!434 = !DILocation(line: 255, column: 12, scope: !429)
!435 = !DILocation(line: 255, column: 10, scope: !429)
!436 = !DILocation(line: 256, column: 8, scope: !437)
!437 = distinct !DILexicalBlock(scope: !429, file: !45, line: 256, column: 8)
!438 = !DILocation(line: 256, column: 8, scope: !429)
!439 = !DILocation(line: 259, column: 16, scope: !440)
!440 = distinct !DILexicalBlock(scope: !437, file: !45, line: 257, column: 5)
!441 = !DILocation(line: 259, column: 9, scope: !440)
!442 = !DILocation(line: 260, column: 5, scope: !440)
!443 = !DILocation(line: 261, column: 8, scope: !444)
!444 = distinct !DILexicalBlock(scope: !429, file: !45, line: 261, column: 8)
!445 = !DILocation(line: 261, column: 8, scope: !429)
!446 = !DILocalVariable(name: "i", scope: !447, file: !45, line: 264, type: !23)
!447 = distinct !DILexicalBlock(scope: !448, file: !45, line: 263, column: 9)
!448 = distinct !DILexicalBlock(scope: !444, file: !45, line: 262, column: 5)
!449 = !DILocation(line: 264, column: 17, scope: !447)
!450 = !DILocalVariable(name: "n", scope: !447, file: !45, line: 264, type: !23)
!451 = !DILocation(line: 264, column: 20, scope: !447)
!452 = !DILocalVariable(name: "intVariable", scope: !447, file: !45, line: 264, type: !23)
!453 = !DILocation(line: 264, column: 23, scope: !447)
!454 = !DILocation(line: 265, column: 24, scope: !455)
!455 = distinct !DILexicalBlock(scope: !447, file: !45, line: 265, column: 17)
!456 = !DILocation(line: 265, column: 17, scope: !455)
!457 = !DILocation(line: 265, column: 40, scope: !455)
!458 = !DILocation(line: 265, column: 17, scope: !447)
!459 = !DILocation(line: 268, column: 29, scope: !460)
!460 = distinct !DILexicalBlock(scope: !455, file: !45, line: 266, column: 13)
!461 = !DILocation(line: 269, column: 24, scope: !462)
!462 = distinct !DILexicalBlock(scope: !460, file: !45, line: 269, column: 17)
!463 = !DILocation(line: 269, column: 22, scope: !462)
!464 = !DILocation(line: 269, column: 29, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !45, line: 269, column: 17)
!466 = !DILocation(line: 269, column: 33, scope: !465)
!467 = !DILocation(line: 269, column: 31, scope: !465)
!468 = !DILocation(line: 269, column: 17, scope: !462)
!469 = !DILocation(line: 272, column: 32, scope: !470)
!470 = distinct !DILexicalBlock(scope: !465, file: !45, line: 270, column: 17)
!471 = !DILocation(line: 273, column: 17, scope: !470)
!472 = !DILocation(line: 269, column: 37, scope: !465)
!473 = !DILocation(line: 269, column: 17, scope: !465)
!474 = distinct !{!474, !468, !475, !159}
!475 = !DILocation(line: 273, column: 17, scope: !462)
!476 = !DILocation(line: 274, column: 30, scope: !460)
!477 = !DILocation(line: 274, column: 17, scope: !460)
!478 = !DILocation(line: 275, column: 13, scope: !460)
!479 = !DILocation(line: 277, column: 5, scope: !448)
!480 = !DILocation(line: 278, column: 1, scope: !429)
!481 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_08_good", scope: !45, file: !45, line: 280, type: !59, scopeLine: 281, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!482 = !DILocation(line: 282, column: 5, scope: !481)
!483 = !DILocation(line: 283, column: 5, scope: !481)
!484 = !DILocation(line: 284, column: 5, scope: !481)
!485 = !DILocation(line: 285, column: 5, scope: !481)
!486 = !DILocation(line: 286, column: 1, scope: !481)
!487 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !488, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !42}
!490 = !DILocalVariable(name: "line", arg: 1, scope: !487, file: !3, line: 11, type: !42)
!491 = !DILocation(line: 11, column: 25, scope: !487)
!492 = !DILocation(line: 13, column: 1, scope: !487)
!493 = !DILocation(line: 14, column: 8, scope: !494)
!494 = distinct !DILexicalBlock(scope: !487, file: !3, line: 14, column: 8)
!495 = !DILocation(line: 14, column: 13, scope: !494)
!496 = !DILocation(line: 14, column: 8, scope: !487)
!497 = !DILocation(line: 16, column: 24, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !3, line: 15, column: 5)
!499 = !DILocation(line: 16, column: 9, scope: !498)
!500 = !DILocation(line: 17, column: 5, scope: !498)
!501 = !DILocation(line: 18, column: 5, scope: !487)
!502 = !DILocation(line: 19, column: 1, scope: !487)
!503 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !488, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!504 = !DILocalVariable(name: "line", arg: 1, scope: !503, file: !3, line: 20, type: !42)
!505 = !DILocation(line: 20, column: 29, scope: !503)
!506 = !DILocation(line: 22, column: 8, scope: !507)
!507 = distinct !DILexicalBlock(scope: !503, file: !3, line: 22, column: 8)
!508 = !DILocation(line: 22, column: 13, scope: !507)
!509 = !DILocation(line: 22, column: 8, scope: !503)
!510 = !DILocation(line: 24, column: 24, scope: !511)
!511 = distinct !DILexicalBlock(scope: !507, file: !3, line: 23, column: 5)
!512 = !DILocation(line: 24, column: 9, scope: !511)
!513 = !DILocation(line: 25, column: 5, scope: !511)
!514 = !DILocation(line: 26, column: 1, scope: !503)
!515 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !516, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 74, baseType: !23)
!520 = !DILocalVariable(name: "line", arg: 1, scope: !515, file: !3, line: 27, type: !518)
!521 = !DILocation(line: 27, column: 29, scope: !515)
!522 = !DILocation(line: 29, column: 8, scope: !523)
!523 = distinct !DILexicalBlock(scope: !515, file: !3, line: 29, column: 8)
!524 = !DILocation(line: 29, column: 13, scope: !523)
!525 = !DILocation(line: 29, column: 8, scope: !515)
!526 = !DILocation(line: 31, column: 27, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !3, line: 30, column: 5)
!528 = !DILocation(line: 31, column: 9, scope: !527)
!529 = !DILocation(line: 32, column: 5, scope: !527)
!530 = !DILocation(line: 33, column: 1, scope: !515)
!531 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !532, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !23}
!534 = !DILocalVariable(name: "intNumber", arg: 1, scope: !531, file: !3, line: 35, type: !23)
!535 = !DILocation(line: 35, column: 24, scope: !531)
!536 = !DILocation(line: 37, column: 20, scope: !531)
!537 = !DILocation(line: 37, column: 5, scope: !531)
!538 = !DILocation(line: 38, column: 1, scope: !531)
!539 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !540, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !542}
!542 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!543 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !539, file: !3, line: 40, type: !542)
!544 = !DILocation(line: 40, column: 28, scope: !539)
!545 = !DILocation(line: 42, column: 21, scope: !539)
!546 = !DILocation(line: 42, column: 5, scope: !539)
!547 = !DILocation(line: 43, column: 1, scope: !539)
!548 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !549, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !551}
!551 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!552 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !548, file: !3, line: 45, type: !551)
!553 = !DILocation(line: 45, column: 28, scope: !548)
!554 = !DILocation(line: 47, column: 20, scope: !548)
!555 = !DILocation(line: 47, column: 5, scope: !548)
!556 = !DILocation(line: 48, column: 1, scope: !548)
!557 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !558, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !560}
!560 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!561 = !DILocalVariable(name: "longNumber", arg: 1, scope: !557, file: !3, line: 50, type: !560)
!562 = !DILocation(line: 50, column: 26, scope: !557)
!563 = !DILocation(line: 52, column: 21, scope: !557)
!564 = !DILocation(line: 52, column: 5, scope: !557)
!565 = !DILocation(line: 53, column: 1, scope: !557)
!566 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !567, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !569}
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !570, line: 27, baseType: !571)
!570 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !572, line: 44, baseType: !560)
!572 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!573 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !566, file: !3, line: 55, type: !569)
!574 = !DILocation(line: 55, column: 33, scope: !566)
!575 = !DILocation(line: 57, column: 29, scope: !566)
!576 = !DILocation(line: 57, column: 5, scope: !566)
!577 = !DILocation(line: 58, column: 1, scope: !566)
!578 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !579, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !76}
!581 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !578, file: !3, line: 60, type: !76)
!582 = !DILocation(line: 60, column: 29, scope: !578)
!583 = !DILocation(line: 62, column: 21, scope: !578)
!584 = !DILocation(line: 62, column: 5, scope: !578)
!585 = !DILocation(line: 63, column: 1, scope: !578)
!586 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !587, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !43}
!589 = !DILocalVariable(name: "charHex", arg: 1, scope: !586, file: !3, line: 65, type: !43)
!590 = !DILocation(line: 65, column: 29, scope: !586)
!591 = !DILocation(line: 67, column: 22, scope: !586)
!592 = !DILocation(line: 67, column: 5, scope: !586)
!593 = !DILocation(line: 68, column: 1, scope: !586)
!594 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !595, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !519}
!597 = !DILocalVariable(name: "wideChar", arg: 1, scope: !594, file: !3, line: 70, type: !519)
!598 = !DILocation(line: 70, column: 29, scope: !594)
!599 = !DILocalVariable(name: "s", scope: !594, file: !3, line: 74, type: !600)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 64, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 2)
!603 = !DILocation(line: 74, column: 13, scope: !594)
!604 = !DILocation(line: 75, column: 16, scope: !594)
!605 = !DILocation(line: 75, column: 9, scope: !594)
!606 = !DILocation(line: 75, column: 14, scope: !594)
!607 = !DILocation(line: 76, column: 9, scope: !594)
!608 = !DILocation(line: 76, column: 14, scope: !594)
!609 = !DILocation(line: 77, column: 21, scope: !594)
!610 = !DILocation(line: 77, column: 5, scope: !594)
!611 = !DILocation(line: 78, column: 1, scope: !594)
!612 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !613, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !7}
!615 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !612, file: !3, line: 80, type: !7)
!616 = !DILocation(line: 80, column: 33, scope: !612)
!617 = !DILocation(line: 82, column: 20, scope: !612)
!618 = !DILocation(line: 82, column: 5, scope: !612)
!619 = !DILocation(line: 83, column: 1, scope: !612)
!620 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !621, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !25}
!623 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !620, file: !3, line: 85, type: !25)
!624 = !DILocation(line: 85, column: 45, scope: !620)
!625 = !DILocation(line: 87, column: 22, scope: !620)
!626 = !DILocation(line: 87, column: 5, scope: !620)
!627 = !DILocation(line: 88, column: 1, scope: !620)
!628 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !629, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !631}
!631 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!632 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !628, file: !3, line: 90, type: !631)
!633 = !DILocation(line: 90, column: 29, scope: !628)
!634 = !DILocation(line: 92, column: 20, scope: !628)
!635 = !DILocation(line: 92, column: 5, scope: !628)
!636 = !DILocation(line: 93, column: 1, scope: !628)
!637 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !638, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !642, line: 100, baseType: !643)
!642 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_985/source_code")
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !642, line: 96, size: 64, elements: !644)
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !643, file: !642, line: 98, baseType: !23, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !643, file: !642, line: 99, baseType: !23, size: 32, offset: 32)
!647 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !637, file: !3, line: 95, type: !640)
!648 = !DILocation(line: 95, column: 40, scope: !637)
!649 = !DILocation(line: 97, column: 26, scope: !637)
!650 = !DILocation(line: 97, column: 47, scope: !637)
!651 = !DILocation(line: 97, column: 55, scope: !637)
!652 = !DILocation(line: 97, column: 76, scope: !637)
!653 = !DILocation(line: 97, column: 5, scope: !637)
!654 = !DILocation(line: 98, column: 1, scope: !637)
!655 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !656, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !658, !76}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!659 = !DILocalVariable(name: "bytes", arg: 1, scope: !655, file: !3, line: 100, type: !658)
!660 = !DILocation(line: 100, column: 38, scope: !655)
!661 = !DILocalVariable(name: "numBytes", arg: 2, scope: !655, file: !3, line: 100, type: !76)
!662 = !DILocation(line: 100, column: 52, scope: !655)
!663 = !DILocalVariable(name: "i", scope: !655, file: !3, line: 102, type: !76)
!664 = !DILocation(line: 102, column: 12, scope: !655)
!665 = !DILocation(line: 103, column: 12, scope: !666)
!666 = distinct !DILexicalBlock(scope: !655, file: !3, line: 103, column: 5)
!667 = !DILocation(line: 103, column: 10, scope: !666)
!668 = !DILocation(line: 103, column: 17, scope: !669)
!669 = distinct !DILexicalBlock(scope: !666, file: !3, line: 103, column: 5)
!670 = !DILocation(line: 103, column: 21, scope: !669)
!671 = !DILocation(line: 103, column: 19, scope: !669)
!672 = !DILocation(line: 103, column: 5, scope: !666)
!673 = !DILocation(line: 105, column: 24, scope: !674)
!674 = distinct !DILexicalBlock(scope: !669, file: !3, line: 104, column: 5)
!675 = !DILocation(line: 105, column: 30, scope: !674)
!676 = !DILocation(line: 105, column: 9, scope: !674)
!677 = !DILocation(line: 106, column: 5, scope: !674)
!678 = !DILocation(line: 103, column: 31, scope: !669)
!679 = !DILocation(line: 103, column: 5, scope: !669)
!680 = distinct !{!680, !672, !681, !159}
!681 = !DILocation(line: 106, column: 5, scope: !666)
!682 = !DILocation(line: 107, column: 5, scope: !655)
!683 = !DILocation(line: 108, column: 1, scope: !655)
!684 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !685, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!685 = !DISubroutineType(types: !686)
!686 = !{!76, !658, !76, !42}
!687 = !DILocalVariable(name: "bytes", arg: 1, scope: !684, file: !3, line: 113, type: !658)
!688 = !DILocation(line: 113, column: 39, scope: !684)
!689 = !DILocalVariable(name: "numBytes", arg: 2, scope: !684, file: !3, line: 113, type: !76)
!690 = !DILocation(line: 113, column: 53, scope: !684)
!691 = !DILocalVariable(name: "hex", arg: 3, scope: !684, file: !3, line: 113, type: !42)
!692 = !DILocation(line: 113, column: 71, scope: !684)
!693 = !DILocalVariable(name: "numWritten", scope: !684, file: !3, line: 115, type: !76)
!694 = !DILocation(line: 115, column: 12, scope: !684)
!695 = !DILocation(line: 121, column: 5, scope: !684)
!696 = !DILocation(line: 121, column: 12, scope: !684)
!697 = !DILocation(line: 121, column: 25, scope: !684)
!698 = !DILocation(line: 121, column: 23, scope: !684)
!699 = !DILocation(line: 121, column: 34, scope: !684)
!700 = !DILocation(line: 121, column: 37, scope: !684)
!701 = !DILocation(line: 121, column: 67, scope: !684)
!702 = !DILocation(line: 121, column: 70, scope: !684)
!703 = !DILocation(line: 0, scope: !684)
!704 = !DILocalVariable(name: "byte", scope: !705, file: !3, line: 123, type: !23)
!705 = distinct !DILexicalBlock(scope: !684, file: !3, line: 122, column: 5)
!706 = !DILocation(line: 123, column: 13, scope: !705)
!707 = !DILocation(line: 124, column: 17, scope: !705)
!708 = !DILocation(line: 124, column: 25, scope: !705)
!709 = !DILocation(line: 124, column: 23, scope: !705)
!710 = !DILocation(line: 124, column: 9, scope: !705)
!711 = !DILocation(line: 125, column: 45, scope: !705)
!712 = !DILocation(line: 125, column: 29, scope: !705)
!713 = !DILocation(line: 125, column: 9, scope: !705)
!714 = !DILocation(line: 125, column: 15, scope: !705)
!715 = !DILocation(line: 125, column: 27, scope: !705)
!716 = !DILocation(line: 126, column: 9, scope: !705)
!717 = distinct !{!717, !695, !718, !159}
!718 = !DILocation(line: 127, column: 5, scope: !684)
!719 = !DILocation(line: 129, column: 12, scope: !684)
!720 = !DILocation(line: 129, column: 5, scope: !684)
!721 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !722, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!722 = !DISubroutineType(types: !723)
!723 = !{!76, !658, !76, !518}
!724 = !DILocalVariable(name: "bytes", arg: 1, scope: !721, file: !3, line: 135, type: !658)
!725 = !DILocation(line: 135, column: 41, scope: !721)
!726 = !DILocalVariable(name: "numBytes", arg: 2, scope: !721, file: !3, line: 135, type: !76)
!727 = !DILocation(line: 135, column: 55, scope: !721)
!728 = !DILocalVariable(name: "hex", arg: 3, scope: !721, file: !3, line: 135, type: !518)
!729 = !DILocation(line: 135, column: 76, scope: !721)
!730 = !DILocalVariable(name: "numWritten", scope: !721, file: !3, line: 137, type: !76)
!731 = !DILocation(line: 137, column: 12, scope: !721)
!732 = !DILocation(line: 143, column: 5, scope: !721)
!733 = !DILocation(line: 143, column: 12, scope: !721)
!734 = !DILocation(line: 143, column: 25, scope: !721)
!735 = !DILocation(line: 143, column: 23, scope: !721)
!736 = !DILocation(line: 143, column: 34, scope: !721)
!737 = !DILocation(line: 143, column: 47, scope: !721)
!738 = !DILocation(line: 143, column: 55, scope: !721)
!739 = !DILocation(line: 143, column: 53, scope: !721)
!740 = !DILocation(line: 143, column: 37, scope: !721)
!741 = !DILocation(line: 143, column: 68, scope: !721)
!742 = !DILocation(line: 143, column: 81, scope: !721)
!743 = !DILocation(line: 143, column: 89, scope: !721)
!744 = !DILocation(line: 143, column: 87, scope: !721)
!745 = !DILocation(line: 143, column: 100, scope: !721)
!746 = !DILocation(line: 143, column: 71, scope: !721)
!747 = !DILocation(line: 0, scope: !721)
!748 = !DILocalVariable(name: "byte", scope: !749, file: !3, line: 145, type: !23)
!749 = distinct !DILexicalBlock(scope: !721, file: !3, line: 144, column: 5)
!750 = !DILocation(line: 145, column: 13, scope: !749)
!751 = !DILocation(line: 146, column: 18, scope: !749)
!752 = !DILocation(line: 146, column: 26, scope: !749)
!753 = !DILocation(line: 146, column: 24, scope: !749)
!754 = !DILocation(line: 146, column: 9, scope: !749)
!755 = !DILocation(line: 147, column: 45, scope: !749)
!756 = !DILocation(line: 147, column: 29, scope: !749)
!757 = !DILocation(line: 147, column: 9, scope: !749)
!758 = !DILocation(line: 147, column: 15, scope: !749)
!759 = !DILocation(line: 147, column: 27, scope: !749)
!760 = !DILocation(line: 148, column: 9, scope: !749)
!761 = distinct !{!761, !732, !762, !159}
!762 = !DILocation(line: 149, column: 5, scope: !721)
!763 = !DILocation(line: 151, column: 12, scope: !721)
!764 = !DILocation(line: 151, column: 5, scope: !721)
!765 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !53, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!766 = !DILocation(line: 158, column: 5, scope: !765)
!767 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !53, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!768 = !DILocation(line: 163, column: 5, scope: !767)
!769 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !53, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!770 = !DILocation(line: 168, column: 13, scope: !769)
!771 = !DILocation(line: 168, column: 20, scope: !769)
!772 = !DILocation(line: 168, column: 5, scope: !769)
!773 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !59, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!774 = !DILocation(line: 187, column: 16, scope: !773)
!775 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !59, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!776 = !DILocation(line: 188, column: 16, scope: !775)
!777 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !59, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!778 = !DILocation(line: 189, column: 16, scope: !777)
!779 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!780 = !DILocation(line: 190, column: 16, scope: !779)
!781 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !59, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!782 = !DILocation(line: 191, column: 16, scope: !781)
!783 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !59, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!784 = !DILocation(line: 192, column: 16, scope: !783)
!785 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !59, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!786 = !DILocation(line: 193, column: 16, scope: !785)
!787 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !59, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!788 = !DILocation(line: 194, column: 16, scope: !787)
!789 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !59, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!790 = !DILocation(line: 195, column: 16, scope: !789)
!791 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !59, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!792 = !DILocation(line: 198, column: 15, scope: !791)
!793 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !59, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!794 = !DILocation(line: 199, column: 15, scope: !793)
!795 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !59, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!796 = !DILocation(line: 200, column: 15, scope: !795)
!797 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !59, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!798 = !DILocation(line: 201, column: 15, scope: !797)
!799 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !59, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!800 = !DILocation(line: 202, column: 15, scope: !799)
!801 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !59, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!802 = !DILocation(line: 203, column: 15, scope: !801)
!803 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !59, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!804 = !DILocation(line: 204, column: 15, scope: !803)
!805 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !59, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!806 = !DILocation(line: 205, column: 15, scope: !805)
!807 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !59, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!808 = !DILocation(line: 206, column: 15, scope: !807)
