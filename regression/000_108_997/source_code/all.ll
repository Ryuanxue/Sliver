; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE606_Unchecked_Loop_Condition__char_console_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !9
@CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !11
@CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !13
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1.6 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
@.str.13 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.15 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13.18 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_22_bad() #0 !dbg !63 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !68, metadata !DIExpression()), !dbg !72
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !72
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !72
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !73
  store i8* %arraydecay, i8** %data, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !75, metadata !DIExpression()), !dbg !80
  %1 = load i8*, i8** %data, align 8, !dbg !81
  %call = call i64 @strlen(i8* %1) #7, !dbg !82
  store i64 %call, i64* %dataLen, align 8, !dbg !80
  %2 = load i64, i64* %dataLen, align 8, !dbg !83
  %sub = sub i64 100, %2, !dbg !85
  %cmp = icmp ugt i64 %sub, 1, !dbg !86
  br i1 %cmp, label %if.then, label %if.end18, !dbg !87

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !88
  %4 = load i64, i64* %dataLen, align 8, !dbg !91
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !92
  %5 = load i64, i64* %dataLen, align 8, !dbg !93
  %sub1 = sub i64 100, %5, !dbg !94
  %conv = trunc i64 %sub1 to i32, !dbg !95
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !96
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !97
  %cmp3 = icmp ne i8* %call2, null, !dbg !98
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !99

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !100
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !102
  store i64 %call6, i64* %dataLen, align 8, !dbg !103
  %8 = load i64, i64* %dataLen, align 8, !dbg !104
  %cmp7 = icmp ugt i64 %8, 0, !dbg !106
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !107

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !108
  %10 = load i64, i64* %dataLen, align 8, !dbg !109
  %sub9 = sub i64 %10, 1, !dbg !110
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !108
  %11 = load i8, i8* %arrayidx, align 1, !dbg !108
  %conv10 = sext i8 %11 to i32, !dbg !108
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !111
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !112

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !113
  %13 = load i64, i64* %dataLen, align 8, !dbg !115
  %sub14 = sub i64 %13, 1, !dbg !116
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !113
  store i8 0, i8* %arrayidx15, align 1, !dbg !117
  br label %if.end, !dbg !118

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !119

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !120
  %14 = load i8*, i8** %data, align 8, !dbg !122
  %15 = load i64, i64* %dataLen, align 8, !dbg !123
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !122
  store i8 0, i8* %arrayidx16, align 1, !dbg !124
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !125

if.end18:                                         ; preds = %if.end17, %entry
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_console_22_badGlobal, align 4, !dbg !126
  %16 = load i8*, i8** %data, align 8, !dbg !127
  call void @CWE606_Unchecked_Loop_Condition__char_console_22_badSink(i8* %16), !dbg !128
  ret void, !dbg !129
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !130 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !134
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !134
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !135
  store i8* %arraydecay, i8** %data, align 8, !dbg !136
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !137, metadata !DIExpression()), !dbg !139
  %1 = load i8*, i8** %data, align 8, !dbg !140
  %call = call i64 @strlen(i8* %1) #7, !dbg !141
  store i64 %call, i64* %dataLen, align 8, !dbg !139
  %2 = load i64, i64* %dataLen, align 8, !dbg !142
  %sub = sub i64 100, %2, !dbg !144
  %cmp = icmp ugt i64 %sub, 1, !dbg !145
  br i1 %cmp, label %if.then, label %if.end18, !dbg !146

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !147
  %4 = load i64, i64* %dataLen, align 8, !dbg !150
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !151
  %5 = load i64, i64* %dataLen, align 8, !dbg !152
  %sub1 = sub i64 100, %5, !dbg !153
  %conv = trunc i64 %sub1 to i32, !dbg !154
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !155
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !156
  %cmp3 = icmp ne i8* %call2, null, !dbg !157
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !158

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !159
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !161
  store i64 %call6, i64* %dataLen, align 8, !dbg !162
  %8 = load i64, i64* %dataLen, align 8, !dbg !163
  %cmp7 = icmp ugt i64 %8, 0, !dbg !165
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !166

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !167
  %10 = load i64, i64* %dataLen, align 8, !dbg !168
  %sub9 = sub i64 %10, 1, !dbg !169
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !167
  %11 = load i8, i8* %arrayidx, align 1, !dbg !167
  %conv10 = sext i8 %11 to i32, !dbg !167
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !170
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !171

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !172
  %13 = load i64, i64* %dataLen, align 8, !dbg !174
  %sub14 = sub i64 %13, 1, !dbg !175
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !172
  store i8 0, i8* %arrayidx15, align 1, !dbg !176
  br label %if.end, !dbg !177

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !178

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !179
  %14 = load i8*, i8** %data, align 8, !dbg !181
  %15 = load i64, i64* %dataLen, align 8, !dbg !182
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !181
  store i8 0, i8* %arrayidx16, align 1, !dbg !183
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !184

if.end18:                                         ; preds = %if.end17, %entry
  store i32 0, i32* @CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Global, align 4, !dbg !185
  %16 = load i8*, i8** %data, align 8, !dbg !186
  call void @CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink(i8* %16), !dbg !187
  ret void, !dbg !188
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !189 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !192, metadata !DIExpression()), !dbg !193
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !193
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !193
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !194
  store i8* %arraydecay, i8** %data, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !196, metadata !DIExpression()), !dbg !198
  %1 = load i8*, i8** %data, align 8, !dbg !199
  %call = call i64 @strlen(i8* %1) #7, !dbg !200
  store i64 %call, i64* %dataLen, align 8, !dbg !198
  %2 = load i64, i64* %dataLen, align 8, !dbg !201
  %sub = sub i64 100, %2, !dbg !203
  %cmp = icmp ugt i64 %sub, 1, !dbg !204
  br i1 %cmp, label %if.then, label %if.end18, !dbg !205

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !206
  %4 = load i64, i64* %dataLen, align 8, !dbg !209
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !210
  %5 = load i64, i64* %dataLen, align 8, !dbg !211
  %sub1 = sub i64 100, %5, !dbg !212
  %conv = trunc i64 %sub1 to i32, !dbg !213
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !214
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !215
  %cmp3 = icmp ne i8* %call2, null, !dbg !216
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !217

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !218
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !220
  store i64 %call6, i64* %dataLen, align 8, !dbg !221
  %8 = load i64, i64* %dataLen, align 8, !dbg !222
  %cmp7 = icmp ugt i64 %8, 0, !dbg !224
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !225

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !226
  %10 = load i64, i64* %dataLen, align 8, !dbg !227
  %sub9 = sub i64 %10, 1, !dbg !228
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !226
  %11 = load i8, i8* %arrayidx, align 1, !dbg !226
  %conv10 = sext i8 %11 to i32, !dbg !226
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !229
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !230

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !231
  %13 = load i64, i64* %dataLen, align 8, !dbg !233
  %sub14 = sub i64 %13, 1, !dbg !234
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !231
  store i8 0, i8* %arrayidx15, align 1, !dbg !235
  br label %if.end, !dbg !236

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !237

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !238
  %14 = load i8*, i8** %data, align 8, !dbg !240
  %15 = load i64, i64* %dataLen, align 8, !dbg !241
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !240
  store i8 0, i8* %arrayidx16, align 1, !dbg !242
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !243

if.end18:                                         ; preds = %if.end17, %entry
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Global, align 4, !dbg !244
  %16 = load i8*, i8** %data, align 8, !dbg !245
  call void @CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Sink(i8* %16), !dbg !246
  ret void, !dbg !247
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !248 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !251, metadata !DIExpression()), !dbg !252
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !252
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !252
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !253
  store i8* %arraydecay, i8** %data, align 8, !dbg !254
  %1 = load i8*, i8** %data, align 8, !dbg !255
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !256
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BGlobal, align 4, !dbg !257
  %2 = load i8*, i8** %data, align 8, !dbg !258
  call void @CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BSink(i8* %2), !dbg !259
  ret void, !dbg !260
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_22_good() #0 !dbg !261 {
entry:
  call void @goodB2G1(), !dbg !262
  call void @goodB2G2(), !dbg !263
  call void @goodG2B(), !dbg !264
  ret void, !dbg !265
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_22_badSink(i8* %data) #0 !dbg !266 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_console_22_badGlobal, align 4, !dbg !271
  %tobool = icmp ne i32 %0, 0, !dbg !271
  br i1 %tobool, label %if.then, label %if.end4, !dbg !273

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !274, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata i32* %n, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !280, metadata !DIExpression()), !dbg !281
  %1 = load i8*, i8** %data.addr, align 8, !dbg !282
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !284
  %cmp = icmp eq i32 %call, 1, !dbg !285
  br i1 %cmp, label %if.then1, label %if.end, !dbg !286

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !287
  store i32 0, i32* %i, align 4, !dbg !289
  br label %for.cond, !dbg !291

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !292
  %3 = load i32, i32* %n, align 4, !dbg !294
  %cmp2 = icmp slt i32 %2, %3, !dbg !295
  br i1 %cmp2, label %for.body, label %for.end, !dbg !296

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !297
  %inc = add nsw i32 %4, 1, !dbg !297
  store i32 %inc, i32* %intVariable, align 4, !dbg !297
  br label %for.inc, !dbg !299

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !300
  %inc3 = add nsw i32 %5, 1, !dbg !300
  store i32 %inc3, i32* %i, align 4, !dbg !300
  br label %for.cond, !dbg !301, !llvm.loop !302

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !305
  call void @printIntLine(i32 %6), !dbg !306
  br label %if.end, !dbg !307

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !308

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !309
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink(i8* %data) #0 !dbg !310 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Global, align 4, !dbg !313
  %tobool = icmp ne i32 %0, 0, !dbg !313
  br i1 %tobool, label %if.then, label %if.else, !dbg !315

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.6, i64 0, i64 0)), !dbg !316
  br label %if.end7, !dbg !318

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !319, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata i32* %n, metadata !323, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !325, metadata !DIExpression()), !dbg !326
  %1 = load i8*, i8** %data.addr, align 8, !dbg !327
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !329
  %cmp = icmp eq i32 %call, 1, !dbg !330
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !331

if.then1:                                         ; preds = %if.else
  %2 = load i32, i32* %n, align 4, !dbg !332
  %cmp2 = icmp slt i32 %2, 10000, !dbg !335
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !336

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !337
  store i32 0, i32* %i, align 4, !dbg !339
  br label %for.cond, !dbg !341

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !342
  %4 = load i32, i32* %n, align 4, !dbg !344
  %cmp4 = icmp slt i32 %3, %4, !dbg !345
  br i1 %cmp4, label %for.body, label %for.end, !dbg !346

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !347
  %inc = add nsw i32 %5, 1, !dbg !347
  store i32 %inc, i32* %intVariable, align 4, !dbg !347
  br label %for.inc, !dbg !349

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !350
  %inc5 = add nsw i32 %6, 1, !dbg !350
  store i32 %inc5, i32* %i, align 4, !dbg !350
  br label %for.cond, !dbg !351, !llvm.loop !352

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !354
  call void @printIntLine(i32 %7), !dbg !355
  br label %if.end, !dbg !356

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !357

if.end6:                                          ; preds = %if.end, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Sink(i8* %data) #0 !dbg !359 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !360, metadata !DIExpression()), !dbg !361
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Global, align 4, !dbg !362
  %tobool = icmp ne i32 %0, 0, !dbg !362
  br i1 %tobool, label %if.then, label %if.end7, !dbg !364

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !365, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.declare(metadata i32* %n, metadata !369, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !371, metadata !DIExpression()), !dbg !372
  %1 = load i8*, i8** %data.addr, align 8, !dbg !373
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !375
  %cmp = icmp eq i32 %call, 1, !dbg !376
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !377

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* %n, align 4, !dbg !378
  %cmp2 = icmp slt i32 %2, 10000, !dbg !381
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !382

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !383
  store i32 0, i32* %i, align 4, !dbg !385
  br label %for.cond, !dbg !387

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !388
  %4 = load i32, i32* %n, align 4, !dbg !390
  %cmp4 = icmp slt i32 %3, %4, !dbg !391
  br i1 %cmp4, label %for.body, label %for.end, !dbg !392

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !393
  %inc = add nsw i32 %5, 1, !dbg !393
  store i32 %inc, i32* %intVariable, align 4, !dbg !393
  br label %for.inc, !dbg !395

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !396
  %inc5 = add nsw i32 %6, 1, !dbg !396
  store i32 %inc5, i32* %i, align 4, !dbg !396
  br label %for.cond, !dbg !397, !llvm.loop !398

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !400
  call void @printIntLine(i32 %7), !dbg !401
  br label %if.end, !dbg !402

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !403

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end7, !dbg !404

if.end7:                                          ; preds = %if.end6, %entry
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BSink(i8* %data) #0 !dbg !406 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !407, metadata !DIExpression()), !dbg !408
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BGlobal, align 4, !dbg !409
  %tobool = icmp ne i32 %0, 0, !dbg !409
  br i1 %tobool, label %if.then, label %if.end4, !dbg !411

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !412, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata i32* %n, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !418, metadata !DIExpression()), !dbg !419
  %1 = load i8*, i8** %data.addr, align 8, !dbg !420
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !422
  %cmp = icmp eq i32 %call, 1, !dbg !423
  br i1 %cmp, label %if.then1, label %if.end, !dbg !424

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !425
  store i32 0, i32* %i, align 4, !dbg !427
  br label %for.cond, !dbg !429

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !430
  %3 = load i32, i32* %n, align 4, !dbg !432
  %cmp2 = icmp slt i32 %2, %3, !dbg !433
  br i1 %cmp2, label %for.body, label %for.end, !dbg !434

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !435
  %inc = add nsw i32 %4, 1, !dbg !435
  store i32 %inc, i32* %intVariable, align 4, !dbg !435
  br label %for.inc, !dbg !437

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !438
  %inc3 = add nsw i32 %5, 1, !dbg !438
  store i32 %inc3, i32* %i, align 4, !dbg !438
  br label %for.cond, !dbg !439, !llvm.loop !440

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !442
  call void @printIntLine(i32 %6), !dbg !443
  br label %if.end, !dbg !444

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !445

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !447 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !448, metadata !DIExpression()), !dbg !449
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)), !dbg !450
  %0 = load i8*, i8** %line.addr, align 8, !dbg !451
  %cmp = icmp ne i8* %0, null, !dbg !453
  br i1 %cmp, label %if.then, label %if.end, !dbg !454

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !455
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.14, i64 0, i64 0), i8* %1), !dbg !457
  br label %if.end, !dbg !458

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !459
  ret void, !dbg !460
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !461 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !462, metadata !DIExpression()), !dbg !463
  %0 = load i8*, i8** %line.addr, align 8, !dbg !464
  %cmp = icmp ne i8* %0, null, !dbg !466
  br i1 %cmp, label %if.then, label %if.end, !dbg !467

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !468
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.14, i64 0, i64 0), i8* %1), !dbg !470
  br label %if.end, !dbg !471

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !473 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !478, metadata !DIExpression()), !dbg !479
  %0 = load i32*, i32** %line.addr, align 8, !dbg !480
  %cmp = icmp ne i32* %0, null, !dbg !482
  br i1 %cmp, label %if.then, label %if.end, !dbg !483

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !484
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.15, i64 0, i64 0), i32* %1), !dbg !486
  br label %if.end, !dbg !487

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !488
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !489 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !492, metadata !DIExpression()), !dbg !493
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !494
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !495
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !497 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !501, metadata !DIExpression()), !dbg !502
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !503
  %conv = sext i16 %0 to i32, !dbg !503
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !504
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !506 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !512
  %conv = fpext float %0 to double, !dbg !512
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !513
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !515 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !519, metadata !DIExpression()), !dbg !520
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !521
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !522
  ret void, !dbg !523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !524 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !531, metadata !DIExpression()), !dbg !532
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !533
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !534
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !536 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !539, metadata !DIExpression()), !dbg !540
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !541
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !542
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !544 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !547, metadata !DIExpression()), !dbg !548
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !549
  %conv = sext i8 %0 to i32, !dbg !549
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !550
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !552 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !557, metadata !DIExpression()), !dbg !561
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !562
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !563
  store i32 %0, i32* %arrayidx, align 4, !dbg !564
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !565
  store i32 0, i32* %arrayidx1, align 4, !dbg !566
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !567
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !568
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !570 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !573, metadata !DIExpression()), !dbg !574
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !575
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !576
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !578 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !581, metadata !DIExpression()), !dbg !582
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !583
  %conv = zext i8 %0 to i32, !dbg !583
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !584
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !586 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !590, metadata !DIExpression()), !dbg !591
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !592
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !593
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !595 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !605, metadata !DIExpression()), !dbg !606
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !607
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !608
  %1 = load i32, i32* %intOne, align 4, !dbg !608
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !609
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !610
  %3 = load i32, i32* %intTwo, align 4, !dbg !610
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13.18, i64 0, i64 0), i32 %1, i32 %3), !dbg !611
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !613 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !617, metadata !DIExpression()), !dbg !618
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !619, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.declare(metadata i64* %i, metadata !621, metadata !DIExpression()), !dbg !622
  store i64 0, i64* %i, align 8, !dbg !623
  br label %for.cond, !dbg !625

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !626
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !628
  %cmp = icmp ult i64 %0, %1, !dbg !629
  br i1 %cmp, label %for.body, label %for.end, !dbg !630

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !631
  %3 = load i64, i64* %i, align 8, !dbg !633
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !631
  %4 = load i8, i8* %arrayidx, align 1, !dbg !631
  %conv = zext i8 %4 to i32, !dbg !631
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !634
  br label %for.inc, !dbg !635

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !636
  %inc = add i64 %5, 1, !dbg !636
  store i64 %inc, i64* %i, align 8, !dbg !636
  br label %for.cond, !dbg !637, !llvm.loop !638

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !640
  ret void, !dbg !641
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !642 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !645, metadata !DIExpression()), !dbg !646
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !647, metadata !DIExpression()), !dbg !648
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !649, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !651, metadata !DIExpression()), !dbg !652
  store i64 0, i64* %numWritten, align 8, !dbg !652
  br label %while.cond, !dbg !653

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !654
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !655
  %cmp = icmp ult i64 %0, %1, !dbg !656
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !657

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !658
  %2 = load i16*, i16** %call, align 8, !dbg !658
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !658
  %4 = load i64, i64* %numWritten, align 8, !dbg !658
  %mul = mul i64 2, %4, !dbg !658
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !658
  %5 = load i8, i8* %arrayidx, align 1, !dbg !658
  %conv = sext i8 %5 to i32, !dbg !658
  %idxprom = sext i32 %conv to i64, !dbg !658
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !658
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !658
  %conv2 = zext i16 %6 to i32, !dbg !658
  %and = and i32 %conv2, 4096, !dbg !658
  %tobool = icmp ne i32 %and, 0, !dbg !658
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !659

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !660
  %7 = load i16*, i16** %call3, align 8, !dbg !660
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !660
  %9 = load i64, i64* %numWritten, align 8, !dbg !660
  %mul4 = mul i64 2, %9, !dbg !660
  %add = add i64 %mul4, 1, !dbg !660
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !660
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !660
  %conv6 = sext i8 %10 to i32, !dbg !660
  %idxprom7 = sext i32 %conv6 to i64, !dbg !660
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !660
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !660
  %conv9 = zext i16 %11 to i32, !dbg !660
  %and10 = and i32 %conv9, 4096, !dbg !660
  %tobool11 = icmp ne i32 %and10, 0, !dbg !659
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !661
  br i1 %12, label %while.body, label %while.end, !dbg !653

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !662, metadata !DIExpression()), !dbg !664
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !665
  %14 = load i64, i64* %numWritten, align 8, !dbg !666
  %mul12 = mul i64 2, %14, !dbg !667
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !665
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !668
  %15 = load i32, i32* %byte, align 4, !dbg !669
  %conv15 = trunc i32 %15 to i8, !dbg !670
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !671
  %17 = load i64, i64* %numWritten, align 8, !dbg !672
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !671
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !673
  %18 = load i64, i64* %numWritten, align 8, !dbg !674
  %inc = add i64 %18, 1, !dbg !674
  store i64 %inc, i64* %numWritten, align 8, !dbg !674
  br label %while.cond, !dbg !653, !llvm.loop !675

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !677
  ret i64 %19, !dbg !678
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !679 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !682, metadata !DIExpression()), !dbg !683
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !684, metadata !DIExpression()), !dbg !685
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !686, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !688, metadata !DIExpression()), !dbg !689
  store i64 0, i64* %numWritten, align 8, !dbg !689
  br label %while.cond, !dbg !690

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !691
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !692
  %cmp = icmp ult i64 %0, %1, !dbg !693
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !694

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !695
  %3 = load i64, i64* %numWritten, align 8, !dbg !696
  %mul = mul i64 2, %3, !dbg !697
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !695
  %4 = load i32, i32* %arrayidx, align 4, !dbg !695
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !698
  %tobool = icmp ne i32 %call, 0, !dbg !698
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !699

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !700
  %6 = load i64, i64* %numWritten, align 8, !dbg !701
  %mul1 = mul i64 2, %6, !dbg !702
  %add = add i64 %mul1, 1, !dbg !703
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !700
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !700
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !704
  %tobool4 = icmp ne i32 %call3, 0, !dbg !699
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !705
  br i1 %8, label %while.body, label %while.end, !dbg !690

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !706, metadata !DIExpression()), !dbg !708
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !709
  %10 = load i64, i64* %numWritten, align 8, !dbg !710
  %mul5 = mul i64 2, %10, !dbg !711
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !709
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !712
  %11 = load i32, i32* %byte, align 4, !dbg !713
  %conv = trunc i32 %11 to i8, !dbg !714
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !715
  %13 = load i64, i64* %numWritten, align 8, !dbg !716
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !715
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !717
  %14 = load i64, i64* %numWritten, align 8, !dbg !718
  %inc = add i64 %14, 1, !dbg !718
  store i64 %inc, i64* %numWritten, align 8, !dbg !718
  br label %while.cond, !dbg !690, !llvm.loop !719

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !721
  ret i64 %15, !dbg !722
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !723 {
entry:
  ret i32 1, !dbg !726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !727 {
entry:
  ret i32 0, !dbg !728
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !729 {
entry:
  %call = call i32 @rand() #8, !dbg !730
  %rem = srem i32 %call, 2, !dbg !731
  ret i32 %rem, !dbg !732
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !733 {
entry:
  ret void, !dbg !734
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !735 {
entry:
  ret void, !dbg !736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !737 {
entry:
  ret void, !dbg !738
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !739 {
entry:
  ret void, !dbg !740
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !741 {
entry:
  ret void, !dbg !742
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !743 {
entry:
  ret void, !dbg !744
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !745 {
entry:
  ret void, !dbg !746
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !747 {
entry:
  ret void, !dbg !748
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !749 {
entry:
  ret void, !dbg !750
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !751 {
entry:
  ret void, !dbg !752
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !753 {
entry:
  ret void, !dbg !754
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !755 {
entry:
  ret void, !dbg !756
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !757 {
entry:
  ret void, !dbg !758
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !759 {
entry:
  ret void, !dbg !760
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !761 {
entry:
  ret void, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !763 {
entry:
  ret void, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !765 {
entry:
  ret void, !dbg !766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !767 {
entry:
  ret void, !dbg !768
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

!llvm.dbg.cu = !{!2, !57, !17}
!llvm.ident = !{!59, !59, !59}
!llvm.module.flags = !{!60, !61, !62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_console_22_badGlobal", scope: !2, file: !3, line: 30, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_22a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_997/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Global", scope: !2, file: !3, line: 72, type: !6, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Global", scope: !2, file: !3, line: 73, type: !6, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BGlobal", scope: !2, file: !3, line: 74, type: !6, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !6, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_997/source_code")
!19 = !{!20}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!24 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!32 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!36 = !{!7, !6, !37, !38}
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!15, !40, !42, !44, !46, !48, !50, !52}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !17, file: !18, line: 175, type: !6, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !17, file: !18, line: 176, type: !6, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalTrue", scope: !17, file: !18, line: 181, type: !6, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalFalse", scope: !17, file: !18, line: 182, type: !6, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalFive", scope: !17, file: !18, line: 183, type: !6, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "globalArgc", scope: !17, file: !18, line: 214, type: !6, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "globalArgv", scope: !17, file: !18, line: 215, type: !54, isLocal: false, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_22b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_997/source_code")
!59 = !{!"clang version 12.0.0"}
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_22_bad", scope: !3, file: !3, line: 33, type: !64, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !DILocalVariable(name: "data", scope: !63, file: !3, line: 35, type: !55)
!67 = !DILocation(line: 35, column: 12, scope: !63)
!68 = !DILocalVariable(name: "dataBuffer", scope: !63, file: !3, line: 36, type: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 100)
!72 = !DILocation(line: 36, column: 10, scope: !63)
!73 = !DILocation(line: 37, column: 12, scope: !63)
!74 = !DILocation(line: 37, column: 10, scope: !63)
!75 = !DILocalVariable(name: "dataLen", scope: !76, file: !3, line: 40, type: !77)
!76 = distinct !DILexicalBlock(scope: !63, file: !3, line: 38, column: 5)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DILocation(line: 40, column: 16, scope: !76)
!81 = !DILocation(line: 40, column: 33, scope: !76)
!82 = !DILocation(line: 40, column: 26, scope: !76)
!83 = !DILocation(line: 42, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !76, file: !3, line: 42, column: 13)
!85 = !DILocation(line: 42, column: 16, scope: !84)
!86 = !DILocation(line: 42, column: 25, scope: !84)
!87 = !DILocation(line: 42, column: 13, scope: !76)
!88 = !DILocation(line: 45, column: 23, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 45, column: 17)
!90 = distinct !DILexicalBlock(scope: !84, file: !3, line: 43, column: 9)
!91 = !DILocation(line: 45, column: 28, scope: !89)
!92 = !DILocation(line: 45, column: 27, scope: !89)
!93 = !DILocation(line: 45, column: 47, scope: !89)
!94 = !DILocation(line: 45, column: 46, scope: !89)
!95 = !DILocation(line: 45, column: 37, scope: !89)
!96 = !DILocation(line: 45, column: 57, scope: !89)
!97 = !DILocation(line: 45, column: 17, scope: !89)
!98 = !DILocation(line: 45, column: 64, scope: !89)
!99 = !DILocation(line: 45, column: 17, scope: !90)
!100 = !DILocation(line: 49, column: 34, scope: !101)
!101 = distinct !DILexicalBlock(scope: !89, file: !3, line: 46, column: 13)
!102 = !DILocation(line: 49, column: 27, scope: !101)
!103 = !DILocation(line: 49, column: 25, scope: !101)
!104 = !DILocation(line: 50, column: 21, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !3, line: 50, column: 21)
!106 = !DILocation(line: 50, column: 29, scope: !105)
!107 = !DILocation(line: 50, column: 33, scope: !105)
!108 = !DILocation(line: 50, column: 36, scope: !105)
!109 = !DILocation(line: 50, column: 41, scope: !105)
!110 = !DILocation(line: 50, column: 48, scope: !105)
!111 = !DILocation(line: 50, column: 52, scope: !105)
!112 = !DILocation(line: 50, column: 21, scope: !101)
!113 = !DILocation(line: 52, column: 21, scope: !114)
!114 = distinct !DILexicalBlock(scope: !105, file: !3, line: 51, column: 17)
!115 = !DILocation(line: 52, column: 26, scope: !114)
!116 = !DILocation(line: 52, column: 33, scope: !114)
!117 = !DILocation(line: 52, column: 37, scope: !114)
!118 = !DILocation(line: 53, column: 17, scope: !114)
!119 = !DILocation(line: 54, column: 13, scope: !101)
!120 = !DILocation(line: 57, column: 17, scope: !121)
!121 = distinct !DILexicalBlock(scope: !89, file: !3, line: 56, column: 13)
!122 = !DILocation(line: 59, column: 17, scope: !121)
!123 = !DILocation(line: 59, column: 22, scope: !121)
!124 = !DILocation(line: 59, column: 31, scope: !121)
!125 = !DILocation(line: 61, column: 9, scope: !90)
!126 = !DILocation(line: 63, column: 64, scope: !63)
!127 = !DILocation(line: 64, column: 62, scope: !63)
!128 = !DILocation(line: 64, column: 5, scope: !63)
!129 = !DILocation(line: 65, column: 1, scope: !63)
!130 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 78, type: !64, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!131 = !DILocalVariable(name: "data", scope: !130, file: !3, line: 80, type: !55)
!132 = !DILocation(line: 80, column: 12, scope: !130)
!133 = !DILocalVariable(name: "dataBuffer", scope: !130, file: !3, line: 81, type: !69)
!134 = !DILocation(line: 81, column: 10, scope: !130)
!135 = !DILocation(line: 82, column: 12, scope: !130)
!136 = !DILocation(line: 82, column: 10, scope: !130)
!137 = !DILocalVariable(name: "dataLen", scope: !138, file: !3, line: 85, type: !77)
!138 = distinct !DILexicalBlock(scope: !130, file: !3, line: 83, column: 5)
!139 = !DILocation(line: 85, column: 16, scope: !138)
!140 = !DILocation(line: 85, column: 33, scope: !138)
!141 = !DILocation(line: 85, column: 26, scope: !138)
!142 = !DILocation(line: 87, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !3, line: 87, column: 13)
!144 = !DILocation(line: 87, column: 16, scope: !143)
!145 = !DILocation(line: 87, column: 25, scope: !143)
!146 = !DILocation(line: 87, column: 13, scope: !138)
!147 = !DILocation(line: 90, column: 23, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 90, column: 17)
!149 = distinct !DILexicalBlock(scope: !143, file: !3, line: 88, column: 9)
!150 = !DILocation(line: 90, column: 28, scope: !148)
!151 = !DILocation(line: 90, column: 27, scope: !148)
!152 = !DILocation(line: 90, column: 47, scope: !148)
!153 = !DILocation(line: 90, column: 46, scope: !148)
!154 = !DILocation(line: 90, column: 37, scope: !148)
!155 = !DILocation(line: 90, column: 57, scope: !148)
!156 = !DILocation(line: 90, column: 17, scope: !148)
!157 = !DILocation(line: 90, column: 64, scope: !148)
!158 = !DILocation(line: 90, column: 17, scope: !149)
!159 = !DILocation(line: 94, column: 34, scope: !160)
!160 = distinct !DILexicalBlock(scope: !148, file: !3, line: 91, column: 13)
!161 = !DILocation(line: 94, column: 27, scope: !160)
!162 = !DILocation(line: 94, column: 25, scope: !160)
!163 = !DILocation(line: 95, column: 21, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !3, line: 95, column: 21)
!165 = !DILocation(line: 95, column: 29, scope: !164)
!166 = !DILocation(line: 95, column: 33, scope: !164)
!167 = !DILocation(line: 95, column: 36, scope: !164)
!168 = !DILocation(line: 95, column: 41, scope: !164)
!169 = !DILocation(line: 95, column: 48, scope: !164)
!170 = !DILocation(line: 95, column: 52, scope: !164)
!171 = !DILocation(line: 95, column: 21, scope: !160)
!172 = !DILocation(line: 97, column: 21, scope: !173)
!173 = distinct !DILexicalBlock(scope: !164, file: !3, line: 96, column: 17)
!174 = !DILocation(line: 97, column: 26, scope: !173)
!175 = !DILocation(line: 97, column: 33, scope: !173)
!176 = !DILocation(line: 97, column: 37, scope: !173)
!177 = !DILocation(line: 98, column: 17, scope: !173)
!178 = !DILocation(line: 99, column: 13, scope: !160)
!179 = !DILocation(line: 102, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !148, file: !3, line: 101, column: 13)
!181 = !DILocation(line: 104, column: 17, scope: !180)
!182 = !DILocation(line: 104, column: 22, scope: !180)
!183 = !DILocation(line: 104, column: 31, scope: !180)
!184 = !DILocation(line: 106, column: 9, scope: !149)
!185 = !DILocation(line: 108, column: 69, scope: !130)
!186 = !DILocation(line: 109, column: 67, scope: !130)
!187 = !DILocation(line: 109, column: 5, scope: !130)
!188 = !DILocation(line: 110, column: 1, scope: !130)
!189 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 114, type: !64, scopeLine: 115, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!190 = !DILocalVariable(name: "data", scope: !189, file: !3, line: 116, type: !55)
!191 = !DILocation(line: 116, column: 12, scope: !189)
!192 = !DILocalVariable(name: "dataBuffer", scope: !189, file: !3, line: 117, type: !69)
!193 = !DILocation(line: 117, column: 10, scope: !189)
!194 = !DILocation(line: 118, column: 12, scope: !189)
!195 = !DILocation(line: 118, column: 10, scope: !189)
!196 = !DILocalVariable(name: "dataLen", scope: !197, file: !3, line: 121, type: !77)
!197 = distinct !DILexicalBlock(scope: !189, file: !3, line: 119, column: 5)
!198 = !DILocation(line: 121, column: 16, scope: !197)
!199 = !DILocation(line: 121, column: 33, scope: !197)
!200 = !DILocation(line: 121, column: 26, scope: !197)
!201 = !DILocation(line: 123, column: 17, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !3, line: 123, column: 13)
!203 = !DILocation(line: 123, column: 16, scope: !202)
!204 = !DILocation(line: 123, column: 25, scope: !202)
!205 = !DILocation(line: 123, column: 13, scope: !197)
!206 = !DILocation(line: 126, column: 23, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 126, column: 17)
!208 = distinct !DILexicalBlock(scope: !202, file: !3, line: 124, column: 9)
!209 = !DILocation(line: 126, column: 28, scope: !207)
!210 = !DILocation(line: 126, column: 27, scope: !207)
!211 = !DILocation(line: 126, column: 47, scope: !207)
!212 = !DILocation(line: 126, column: 46, scope: !207)
!213 = !DILocation(line: 126, column: 37, scope: !207)
!214 = !DILocation(line: 126, column: 57, scope: !207)
!215 = !DILocation(line: 126, column: 17, scope: !207)
!216 = !DILocation(line: 126, column: 64, scope: !207)
!217 = !DILocation(line: 126, column: 17, scope: !208)
!218 = !DILocation(line: 130, column: 34, scope: !219)
!219 = distinct !DILexicalBlock(scope: !207, file: !3, line: 127, column: 13)
!220 = !DILocation(line: 130, column: 27, scope: !219)
!221 = !DILocation(line: 130, column: 25, scope: !219)
!222 = !DILocation(line: 131, column: 21, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 131, column: 21)
!224 = !DILocation(line: 131, column: 29, scope: !223)
!225 = !DILocation(line: 131, column: 33, scope: !223)
!226 = !DILocation(line: 131, column: 36, scope: !223)
!227 = !DILocation(line: 131, column: 41, scope: !223)
!228 = !DILocation(line: 131, column: 48, scope: !223)
!229 = !DILocation(line: 131, column: 52, scope: !223)
!230 = !DILocation(line: 131, column: 21, scope: !219)
!231 = !DILocation(line: 133, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !223, file: !3, line: 132, column: 17)
!233 = !DILocation(line: 133, column: 26, scope: !232)
!234 = !DILocation(line: 133, column: 33, scope: !232)
!235 = !DILocation(line: 133, column: 37, scope: !232)
!236 = !DILocation(line: 134, column: 17, scope: !232)
!237 = !DILocation(line: 135, column: 13, scope: !219)
!238 = !DILocation(line: 138, column: 17, scope: !239)
!239 = distinct !DILexicalBlock(scope: !207, file: !3, line: 137, column: 13)
!240 = !DILocation(line: 140, column: 17, scope: !239)
!241 = !DILocation(line: 140, column: 22, scope: !239)
!242 = !DILocation(line: 140, column: 31, scope: !239)
!243 = !DILocation(line: 142, column: 9, scope: !208)
!244 = !DILocation(line: 144, column: 69, scope: !189)
!245 = !DILocation(line: 145, column: 67, scope: !189)
!246 = !DILocation(line: 145, column: 5, scope: !189)
!247 = !DILocation(line: 146, column: 1, scope: !189)
!248 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 150, type: !64, scopeLine: 151, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!249 = !DILocalVariable(name: "data", scope: !248, file: !3, line: 152, type: !55)
!250 = !DILocation(line: 152, column: 12, scope: !248)
!251 = !DILocalVariable(name: "dataBuffer", scope: !248, file: !3, line: 153, type: !69)
!252 = !DILocation(line: 153, column: 10, scope: !248)
!253 = !DILocation(line: 154, column: 12, scope: !248)
!254 = !DILocation(line: 154, column: 10, scope: !248)
!255 = !DILocation(line: 156, column: 12, scope: !248)
!256 = !DILocation(line: 156, column: 5, scope: !248)
!257 = !DILocation(line: 157, column: 68, scope: !248)
!258 = !DILocation(line: 158, column: 66, scope: !248)
!259 = !DILocation(line: 158, column: 5, scope: !248)
!260 = !DILocation(line: 159, column: 1, scope: !248)
!261 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_22_good", scope: !3, file: !3, line: 161, type: !64, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!262 = !DILocation(line: 163, column: 5, scope: !261)
!263 = !DILocation(line: 164, column: 5, scope: !261)
!264 = !DILocation(line: 165, column: 5, scope: !261)
!265 = !DILocation(line: 166, column: 1, scope: !261)
!266 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_22_badSink", scope: !58, file: !58, line: 31, type: !267, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !55}
!269 = !DILocalVariable(name: "data", arg: 1, scope: !266, file: !58, line: 31, type: !55)
!270 = !DILocation(line: 31, column: 70, scope: !266)
!271 = !DILocation(line: 33, column: 8, scope: !272)
!272 = distinct !DILexicalBlock(scope: !266, file: !58, line: 33, column: 8)
!273 = !DILocation(line: 33, column: 8, scope: !266)
!274 = !DILocalVariable(name: "i", scope: !275, file: !58, line: 36, type: !6)
!275 = distinct !DILexicalBlock(scope: !276, file: !58, line: 35, column: 9)
!276 = distinct !DILexicalBlock(scope: !272, file: !58, line: 34, column: 5)
!277 = !DILocation(line: 36, column: 17, scope: !275)
!278 = !DILocalVariable(name: "n", scope: !275, file: !58, line: 36, type: !6)
!279 = !DILocation(line: 36, column: 20, scope: !275)
!280 = !DILocalVariable(name: "intVariable", scope: !275, file: !58, line: 36, type: !6)
!281 = !DILocation(line: 36, column: 23, scope: !275)
!282 = !DILocation(line: 37, column: 24, scope: !283)
!283 = distinct !DILexicalBlock(scope: !275, file: !58, line: 37, column: 17)
!284 = !DILocation(line: 37, column: 17, scope: !283)
!285 = !DILocation(line: 37, column: 40, scope: !283)
!286 = !DILocation(line: 37, column: 17, scope: !275)
!287 = !DILocation(line: 40, column: 29, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !58, line: 38, column: 13)
!289 = !DILocation(line: 41, column: 24, scope: !290)
!290 = distinct !DILexicalBlock(scope: !288, file: !58, line: 41, column: 17)
!291 = !DILocation(line: 41, column: 22, scope: !290)
!292 = !DILocation(line: 41, column: 29, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !58, line: 41, column: 17)
!294 = !DILocation(line: 41, column: 33, scope: !293)
!295 = !DILocation(line: 41, column: 31, scope: !293)
!296 = !DILocation(line: 41, column: 17, scope: !290)
!297 = !DILocation(line: 44, column: 32, scope: !298)
!298 = distinct !DILexicalBlock(scope: !293, file: !58, line: 42, column: 17)
!299 = !DILocation(line: 45, column: 17, scope: !298)
!300 = !DILocation(line: 41, column: 37, scope: !293)
!301 = !DILocation(line: 41, column: 17, scope: !293)
!302 = distinct !{!302, !296, !303, !304}
!303 = !DILocation(line: 45, column: 17, scope: !290)
!304 = !{!"llvm.loop.mustprogress"}
!305 = !DILocation(line: 46, column: 30, scope: !288)
!306 = !DILocation(line: 46, column: 17, scope: !288)
!307 = !DILocation(line: 47, column: 13, scope: !288)
!308 = !DILocation(line: 49, column: 5, scope: !276)
!309 = !DILocation(line: 50, column: 1, scope: !266)
!310 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink", scope: !58, file: !58, line: 62, type: !267, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!311 = !DILocalVariable(name: "data", arg: 1, scope: !310, file: !58, line: 62, type: !55)
!312 = !DILocation(line: 62, column: 75, scope: !310)
!313 = !DILocation(line: 64, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !58, line: 64, column: 8)
!315 = !DILocation(line: 64, column: 8, scope: !310)
!316 = !DILocation(line: 67, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !58, line: 65, column: 5)
!318 = !DILocation(line: 68, column: 5, scope: !317)
!319 = !DILocalVariable(name: "i", scope: !320, file: !58, line: 72, type: !6)
!320 = distinct !DILexicalBlock(scope: !321, file: !58, line: 71, column: 9)
!321 = distinct !DILexicalBlock(scope: !314, file: !58, line: 70, column: 5)
!322 = !DILocation(line: 72, column: 17, scope: !320)
!323 = !DILocalVariable(name: "n", scope: !320, file: !58, line: 72, type: !6)
!324 = !DILocation(line: 72, column: 20, scope: !320)
!325 = !DILocalVariable(name: "intVariable", scope: !320, file: !58, line: 72, type: !6)
!326 = !DILocation(line: 72, column: 23, scope: !320)
!327 = !DILocation(line: 73, column: 24, scope: !328)
!328 = distinct !DILexicalBlock(scope: !320, file: !58, line: 73, column: 17)
!329 = !DILocation(line: 73, column: 17, scope: !328)
!330 = !DILocation(line: 73, column: 40, scope: !328)
!331 = !DILocation(line: 73, column: 17, scope: !320)
!332 = !DILocation(line: 76, column: 21, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !58, line: 76, column: 21)
!334 = distinct !DILexicalBlock(scope: !328, file: !58, line: 74, column: 13)
!335 = !DILocation(line: 76, column: 23, scope: !333)
!336 = !DILocation(line: 76, column: 21, scope: !334)
!337 = !DILocation(line: 78, column: 33, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !58, line: 77, column: 17)
!339 = !DILocation(line: 79, column: 28, scope: !340)
!340 = distinct !DILexicalBlock(scope: !338, file: !58, line: 79, column: 21)
!341 = !DILocation(line: 79, column: 26, scope: !340)
!342 = !DILocation(line: 79, column: 33, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !58, line: 79, column: 21)
!344 = !DILocation(line: 79, column: 37, scope: !343)
!345 = !DILocation(line: 79, column: 35, scope: !343)
!346 = !DILocation(line: 79, column: 21, scope: !340)
!347 = !DILocation(line: 82, column: 36, scope: !348)
!348 = distinct !DILexicalBlock(scope: !343, file: !58, line: 80, column: 21)
!349 = !DILocation(line: 83, column: 21, scope: !348)
!350 = !DILocation(line: 79, column: 41, scope: !343)
!351 = !DILocation(line: 79, column: 21, scope: !343)
!352 = distinct !{!352, !346, !353, !304}
!353 = !DILocation(line: 83, column: 21, scope: !340)
!354 = !DILocation(line: 84, column: 34, scope: !338)
!355 = !DILocation(line: 84, column: 21, scope: !338)
!356 = !DILocation(line: 85, column: 17, scope: !338)
!357 = !DILocation(line: 86, column: 13, scope: !334)
!358 = !DILocation(line: 89, column: 1, scope: !310)
!359 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Sink", scope: !58, file: !58, line: 92, type: !267, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!360 = !DILocalVariable(name: "data", arg: 1, scope: !359, file: !58, line: 92, type: !55)
!361 = !DILocation(line: 92, column: 75, scope: !359)
!362 = !DILocation(line: 94, column: 8, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !58, line: 94, column: 8)
!364 = !DILocation(line: 94, column: 8, scope: !359)
!365 = !DILocalVariable(name: "i", scope: !366, file: !58, line: 97, type: !6)
!366 = distinct !DILexicalBlock(scope: !367, file: !58, line: 96, column: 9)
!367 = distinct !DILexicalBlock(scope: !363, file: !58, line: 95, column: 5)
!368 = !DILocation(line: 97, column: 17, scope: !366)
!369 = !DILocalVariable(name: "n", scope: !366, file: !58, line: 97, type: !6)
!370 = !DILocation(line: 97, column: 20, scope: !366)
!371 = !DILocalVariable(name: "intVariable", scope: !366, file: !58, line: 97, type: !6)
!372 = !DILocation(line: 97, column: 23, scope: !366)
!373 = !DILocation(line: 98, column: 24, scope: !374)
!374 = distinct !DILexicalBlock(scope: !366, file: !58, line: 98, column: 17)
!375 = !DILocation(line: 98, column: 17, scope: !374)
!376 = !DILocation(line: 98, column: 40, scope: !374)
!377 = !DILocation(line: 98, column: 17, scope: !366)
!378 = !DILocation(line: 101, column: 21, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !58, line: 101, column: 21)
!380 = distinct !DILexicalBlock(scope: !374, file: !58, line: 99, column: 13)
!381 = !DILocation(line: 101, column: 23, scope: !379)
!382 = !DILocation(line: 101, column: 21, scope: !380)
!383 = !DILocation(line: 103, column: 33, scope: !384)
!384 = distinct !DILexicalBlock(scope: !379, file: !58, line: 102, column: 17)
!385 = !DILocation(line: 104, column: 28, scope: !386)
!386 = distinct !DILexicalBlock(scope: !384, file: !58, line: 104, column: 21)
!387 = !DILocation(line: 104, column: 26, scope: !386)
!388 = !DILocation(line: 104, column: 33, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !58, line: 104, column: 21)
!390 = !DILocation(line: 104, column: 37, scope: !389)
!391 = !DILocation(line: 104, column: 35, scope: !389)
!392 = !DILocation(line: 104, column: 21, scope: !386)
!393 = !DILocation(line: 107, column: 36, scope: !394)
!394 = distinct !DILexicalBlock(scope: !389, file: !58, line: 105, column: 21)
!395 = !DILocation(line: 108, column: 21, scope: !394)
!396 = !DILocation(line: 104, column: 41, scope: !389)
!397 = !DILocation(line: 104, column: 21, scope: !389)
!398 = distinct !{!398, !392, !399, !304}
!399 = !DILocation(line: 108, column: 21, scope: !386)
!400 = !DILocation(line: 109, column: 34, scope: !384)
!401 = !DILocation(line: 109, column: 21, scope: !384)
!402 = !DILocation(line: 110, column: 17, scope: !384)
!403 = !DILocation(line: 111, column: 13, scope: !380)
!404 = !DILocation(line: 113, column: 5, scope: !367)
!405 = !DILocation(line: 114, column: 1, scope: !359)
!406 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BSink", scope: !58, file: !58, line: 117, type: !267, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!407 = !DILocalVariable(name: "data", arg: 1, scope: !406, file: !58, line: 117, type: !55)
!408 = !DILocation(line: 117, column: 74, scope: !406)
!409 = !DILocation(line: 119, column: 8, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !58, line: 119, column: 8)
!411 = !DILocation(line: 119, column: 8, scope: !406)
!412 = !DILocalVariable(name: "i", scope: !413, file: !58, line: 122, type: !6)
!413 = distinct !DILexicalBlock(scope: !414, file: !58, line: 121, column: 9)
!414 = distinct !DILexicalBlock(scope: !410, file: !58, line: 120, column: 5)
!415 = !DILocation(line: 122, column: 17, scope: !413)
!416 = !DILocalVariable(name: "n", scope: !413, file: !58, line: 122, type: !6)
!417 = !DILocation(line: 122, column: 20, scope: !413)
!418 = !DILocalVariable(name: "intVariable", scope: !413, file: !58, line: 122, type: !6)
!419 = !DILocation(line: 122, column: 23, scope: !413)
!420 = !DILocation(line: 123, column: 24, scope: !421)
!421 = distinct !DILexicalBlock(scope: !413, file: !58, line: 123, column: 17)
!422 = !DILocation(line: 123, column: 17, scope: !421)
!423 = !DILocation(line: 123, column: 40, scope: !421)
!424 = !DILocation(line: 123, column: 17, scope: !413)
!425 = !DILocation(line: 126, column: 29, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !58, line: 124, column: 13)
!427 = !DILocation(line: 127, column: 24, scope: !428)
!428 = distinct !DILexicalBlock(scope: !426, file: !58, line: 127, column: 17)
!429 = !DILocation(line: 127, column: 22, scope: !428)
!430 = !DILocation(line: 127, column: 29, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !58, line: 127, column: 17)
!432 = !DILocation(line: 127, column: 33, scope: !431)
!433 = !DILocation(line: 127, column: 31, scope: !431)
!434 = !DILocation(line: 127, column: 17, scope: !428)
!435 = !DILocation(line: 130, column: 32, scope: !436)
!436 = distinct !DILexicalBlock(scope: !431, file: !58, line: 128, column: 17)
!437 = !DILocation(line: 131, column: 17, scope: !436)
!438 = !DILocation(line: 127, column: 37, scope: !431)
!439 = !DILocation(line: 127, column: 17, scope: !431)
!440 = distinct !{!440, !434, !441, !304}
!441 = !DILocation(line: 131, column: 17, scope: !428)
!442 = !DILocation(line: 132, column: 30, scope: !426)
!443 = !DILocation(line: 132, column: 17, scope: !426)
!444 = !DILocation(line: 133, column: 13, scope: !426)
!445 = !DILocation(line: 135, column: 5, scope: !414)
!446 = !DILocation(line: 136, column: 1, scope: !406)
!447 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !267, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!448 = !DILocalVariable(name: "line", arg: 1, scope: !447, file: !18, line: 11, type: !55)
!449 = !DILocation(line: 11, column: 25, scope: !447)
!450 = !DILocation(line: 13, column: 1, scope: !447)
!451 = !DILocation(line: 14, column: 8, scope: !452)
!452 = distinct !DILexicalBlock(scope: !447, file: !18, line: 14, column: 8)
!453 = !DILocation(line: 14, column: 13, scope: !452)
!454 = !DILocation(line: 14, column: 8, scope: !447)
!455 = !DILocation(line: 16, column: 24, scope: !456)
!456 = distinct !DILexicalBlock(scope: !452, file: !18, line: 15, column: 5)
!457 = !DILocation(line: 16, column: 9, scope: !456)
!458 = !DILocation(line: 17, column: 5, scope: !456)
!459 = !DILocation(line: 18, column: 5, scope: !447)
!460 = !DILocation(line: 19, column: 1, scope: !447)
!461 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !267, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!462 = !DILocalVariable(name: "line", arg: 1, scope: !461, file: !18, line: 20, type: !55)
!463 = !DILocation(line: 20, column: 29, scope: !461)
!464 = !DILocation(line: 22, column: 8, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !18, line: 22, column: 8)
!466 = !DILocation(line: 22, column: 13, scope: !465)
!467 = !DILocation(line: 22, column: 8, scope: !461)
!468 = !DILocation(line: 24, column: 24, scope: !469)
!469 = distinct !DILexicalBlock(scope: !465, file: !18, line: 23, column: 5)
!470 = !DILocation(line: 24, column: 9, scope: !469)
!471 = !DILocation(line: 25, column: 5, scope: !469)
!472 = !DILocation(line: 26, column: 1, scope: !461)
!473 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !474, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !78, line: 74, baseType: !6)
!478 = !DILocalVariable(name: "line", arg: 1, scope: !473, file: !18, line: 27, type: !476)
!479 = !DILocation(line: 27, column: 29, scope: !473)
!480 = !DILocation(line: 29, column: 8, scope: !481)
!481 = distinct !DILexicalBlock(scope: !473, file: !18, line: 29, column: 8)
!482 = !DILocation(line: 29, column: 13, scope: !481)
!483 = !DILocation(line: 29, column: 8, scope: !473)
!484 = !DILocation(line: 31, column: 27, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !18, line: 30, column: 5)
!486 = !DILocation(line: 31, column: 9, scope: !485)
!487 = !DILocation(line: 32, column: 5, scope: !485)
!488 = !DILocation(line: 33, column: 1, scope: !473)
!489 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !490, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !6}
!492 = !DILocalVariable(name: "intNumber", arg: 1, scope: !489, file: !18, line: 35, type: !6)
!493 = !DILocation(line: 35, column: 24, scope: !489)
!494 = !DILocation(line: 37, column: 20, scope: !489)
!495 = !DILocation(line: 37, column: 5, scope: !489)
!496 = !DILocation(line: 38, column: 1, scope: !489)
!497 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !498, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !500}
!500 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!501 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !497, file: !18, line: 40, type: !500)
!502 = !DILocation(line: 40, column: 28, scope: !497)
!503 = !DILocation(line: 42, column: 21, scope: !497)
!504 = !DILocation(line: 42, column: 5, scope: !497)
!505 = !DILocation(line: 43, column: 1, scope: !497)
!506 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !507, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509}
!509 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!510 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !506, file: !18, line: 45, type: !509)
!511 = !DILocation(line: 45, column: 28, scope: !506)
!512 = !DILocation(line: 47, column: 20, scope: !506)
!513 = !DILocation(line: 47, column: 5, scope: !506)
!514 = !DILocation(line: 48, column: 1, scope: !506)
!515 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !516, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !518}
!518 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!519 = !DILocalVariable(name: "longNumber", arg: 1, scope: !515, file: !18, line: 50, type: !518)
!520 = !DILocation(line: 50, column: 26, scope: !515)
!521 = !DILocation(line: 52, column: 21, scope: !515)
!522 = !DILocation(line: 52, column: 5, scope: !515)
!523 = !DILocation(line: 53, column: 1, scope: !515)
!524 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !525, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !527}
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !528, line: 27, baseType: !529)
!528 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !530, line: 44, baseType: !518)
!530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!531 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !524, file: !18, line: 55, type: !527)
!532 = !DILocation(line: 55, column: 33, scope: !524)
!533 = !DILocation(line: 57, column: 29, scope: !524)
!534 = !DILocation(line: 57, column: 5, scope: !524)
!535 = !DILocation(line: 58, column: 1, scope: !524)
!536 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !537, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !77}
!539 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !536, file: !18, line: 60, type: !77)
!540 = !DILocation(line: 60, column: 29, scope: !536)
!541 = !DILocation(line: 62, column: 21, scope: !536)
!542 = !DILocation(line: 62, column: 5, scope: !536)
!543 = !DILocation(line: 63, column: 1, scope: !536)
!544 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !545, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !56}
!547 = !DILocalVariable(name: "charHex", arg: 1, scope: !544, file: !18, line: 65, type: !56)
!548 = !DILocation(line: 65, column: 29, scope: !544)
!549 = !DILocation(line: 67, column: 22, scope: !544)
!550 = !DILocation(line: 67, column: 5, scope: !544)
!551 = !DILocation(line: 68, column: 1, scope: !544)
!552 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !553, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !477}
!555 = !DILocalVariable(name: "wideChar", arg: 1, scope: !552, file: !18, line: 70, type: !477)
!556 = !DILocation(line: 70, column: 29, scope: !552)
!557 = !DILocalVariable(name: "s", scope: !552, file: !18, line: 74, type: !558)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 64, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 2)
!561 = !DILocation(line: 74, column: 13, scope: !552)
!562 = !DILocation(line: 75, column: 16, scope: !552)
!563 = !DILocation(line: 75, column: 9, scope: !552)
!564 = !DILocation(line: 75, column: 14, scope: !552)
!565 = !DILocation(line: 76, column: 9, scope: !552)
!566 = !DILocation(line: 76, column: 14, scope: !552)
!567 = !DILocation(line: 77, column: 21, scope: !552)
!568 = !DILocation(line: 77, column: 5, scope: !552)
!569 = !DILocation(line: 78, column: 1, scope: !552)
!570 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !571, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !22}
!573 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !570, file: !18, line: 80, type: !22)
!574 = !DILocation(line: 80, column: 33, scope: !570)
!575 = !DILocation(line: 82, column: 20, scope: !570)
!576 = !DILocation(line: 82, column: 5, scope: !570)
!577 = !DILocation(line: 83, column: 1, scope: !570)
!578 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !579, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !38}
!581 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !578, file: !18, line: 85, type: !38)
!582 = !DILocation(line: 85, column: 45, scope: !578)
!583 = !DILocation(line: 87, column: 22, scope: !578)
!584 = !DILocation(line: 87, column: 5, scope: !578)
!585 = !DILocation(line: 88, column: 1, scope: !578)
!586 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !587, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !589}
!589 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!590 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !586, file: !18, line: 90, type: !589)
!591 = !DILocation(line: 90, column: 29, scope: !586)
!592 = !DILocation(line: 92, column: 20, scope: !586)
!593 = !DILocation(line: 92, column: 5, scope: !586)
!594 = !DILocation(line: 93, column: 1, scope: !586)
!595 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !596, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !600, line: 100, baseType: !601)
!600 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_997/source_code")
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !600, line: 96, size: 64, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !601, file: !600, line: 98, baseType: !6, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !601, file: !600, line: 99, baseType: !6, size: 32, offset: 32)
!605 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !595, file: !18, line: 95, type: !598)
!606 = !DILocation(line: 95, column: 40, scope: !595)
!607 = !DILocation(line: 97, column: 26, scope: !595)
!608 = !DILocation(line: 97, column: 47, scope: !595)
!609 = !DILocation(line: 97, column: 55, scope: !595)
!610 = !DILocation(line: 97, column: 76, scope: !595)
!611 = !DILocation(line: 97, column: 5, scope: !595)
!612 = !DILocation(line: 98, column: 1, scope: !595)
!613 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !614, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !616, !77}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!617 = !DILocalVariable(name: "bytes", arg: 1, scope: !613, file: !18, line: 100, type: !616)
!618 = !DILocation(line: 100, column: 38, scope: !613)
!619 = !DILocalVariable(name: "numBytes", arg: 2, scope: !613, file: !18, line: 100, type: !77)
!620 = !DILocation(line: 100, column: 52, scope: !613)
!621 = !DILocalVariable(name: "i", scope: !613, file: !18, line: 102, type: !77)
!622 = !DILocation(line: 102, column: 12, scope: !613)
!623 = !DILocation(line: 103, column: 12, scope: !624)
!624 = distinct !DILexicalBlock(scope: !613, file: !18, line: 103, column: 5)
!625 = !DILocation(line: 103, column: 10, scope: !624)
!626 = !DILocation(line: 103, column: 17, scope: !627)
!627 = distinct !DILexicalBlock(scope: !624, file: !18, line: 103, column: 5)
!628 = !DILocation(line: 103, column: 21, scope: !627)
!629 = !DILocation(line: 103, column: 19, scope: !627)
!630 = !DILocation(line: 103, column: 5, scope: !624)
!631 = !DILocation(line: 105, column: 24, scope: !632)
!632 = distinct !DILexicalBlock(scope: !627, file: !18, line: 104, column: 5)
!633 = !DILocation(line: 105, column: 30, scope: !632)
!634 = !DILocation(line: 105, column: 9, scope: !632)
!635 = !DILocation(line: 106, column: 5, scope: !632)
!636 = !DILocation(line: 103, column: 31, scope: !627)
!637 = !DILocation(line: 103, column: 5, scope: !627)
!638 = distinct !{!638, !630, !639, !304}
!639 = !DILocation(line: 106, column: 5, scope: !624)
!640 = !DILocation(line: 107, column: 5, scope: !613)
!641 = !DILocation(line: 108, column: 1, scope: !613)
!642 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !643, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!643 = !DISubroutineType(types: !644)
!644 = !{!77, !616, !77, !55}
!645 = !DILocalVariable(name: "bytes", arg: 1, scope: !642, file: !18, line: 113, type: !616)
!646 = !DILocation(line: 113, column: 39, scope: !642)
!647 = !DILocalVariable(name: "numBytes", arg: 2, scope: !642, file: !18, line: 113, type: !77)
!648 = !DILocation(line: 113, column: 53, scope: !642)
!649 = !DILocalVariable(name: "hex", arg: 3, scope: !642, file: !18, line: 113, type: !55)
!650 = !DILocation(line: 113, column: 71, scope: !642)
!651 = !DILocalVariable(name: "numWritten", scope: !642, file: !18, line: 115, type: !77)
!652 = !DILocation(line: 115, column: 12, scope: !642)
!653 = !DILocation(line: 121, column: 5, scope: !642)
!654 = !DILocation(line: 121, column: 12, scope: !642)
!655 = !DILocation(line: 121, column: 25, scope: !642)
!656 = !DILocation(line: 121, column: 23, scope: !642)
!657 = !DILocation(line: 121, column: 34, scope: !642)
!658 = !DILocation(line: 121, column: 37, scope: !642)
!659 = !DILocation(line: 121, column: 67, scope: !642)
!660 = !DILocation(line: 121, column: 70, scope: !642)
!661 = !DILocation(line: 0, scope: !642)
!662 = !DILocalVariable(name: "byte", scope: !663, file: !18, line: 123, type: !6)
!663 = distinct !DILexicalBlock(scope: !642, file: !18, line: 122, column: 5)
!664 = !DILocation(line: 123, column: 13, scope: !663)
!665 = !DILocation(line: 124, column: 17, scope: !663)
!666 = !DILocation(line: 124, column: 25, scope: !663)
!667 = !DILocation(line: 124, column: 23, scope: !663)
!668 = !DILocation(line: 124, column: 9, scope: !663)
!669 = !DILocation(line: 125, column: 45, scope: !663)
!670 = !DILocation(line: 125, column: 29, scope: !663)
!671 = !DILocation(line: 125, column: 9, scope: !663)
!672 = !DILocation(line: 125, column: 15, scope: !663)
!673 = !DILocation(line: 125, column: 27, scope: !663)
!674 = !DILocation(line: 126, column: 9, scope: !663)
!675 = distinct !{!675, !653, !676, !304}
!676 = !DILocation(line: 127, column: 5, scope: !642)
!677 = !DILocation(line: 129, column: 12, scope: !642)
!678 = !DILocation(line: 129, column: 5, scope: !642)
!679 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !680, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!680 = !DISubroutineType(types: !681)
!681 = !{!77, !616, !77, !476}
!682 = !DILocalVariable(name: "bytes", arg: 1, scope: !679, file: !18, line: 135, type: !616)
!683 = !DILocation(line: 135, column: 41, scope: !679)
!684 = !DILocalVariable(name: "numBytes", arg: 2, scope: !679, file: !18, line: 135, type: !77)
!685 = !DILocation(line: 135, column: 55, scope: !679)
!686 = !DILocalVariable(name: "hex", arg: 3, scope: !679, file: !18, line: 135, type: !476)
!687 = !DILocation(line: 135, column: 76, scope: !679)
!688 = !DILocalVariable(name: "numWritten", scope: !679, file: !18, line: 137, type: !77)
!689 = !DILocation(line: 137, column: 12, scope: !679)
!690 = !DILocation(line: 143, column: 5, scope: !679)
!691 = !DILocation(line: 143, column: 12, scope: !679)
!692 = !DILocation(line: 143, column: 25, scope: !679)
!693 = !DILocation(line: 143, column: 23, scope: !679)
!694 = !DILocation(line: 143, column: 34, scope: !679)
!695 = !DILocation(line: 143, column: 47, scope: !679)
!696 = !DILocation(line: 143, column: 55, scope: !679)
!697 = !DILocation(line: 143, column: 53, scope: !679)
!698 = !DILocation(line: 143, column: 37, scope: !679)
!699 = !DILocation(line: 143, column: 68, scope: !679)
!700 = !DILocation(line: 143, column: 81, scope: !679)
!701 = !DILocation(line: 143, column: 89, scope: !679)
!702 = !DILocation(line: 143, column: 87, scope: !679)
!703 = !DILocation(line: 143, column: 100, scope: !679)
!704 = !DILocation(line: 143, column: 71, scope: !679)
!705 = !DILocation(line: 0, scope: !679)
!706 = !DILocalVariable(name: "byte", scope: !707, file: !18, line: 145, type: !6)
!707 = distinct !DILexicalBlock(scope: !679, file: !18, line: 144, column: 5)
!708 = !DILocation(line: 145, column: 13, scope: !707)
!709 = !DILocation(line: 146, column: 18, scope: !707)
!710 = !DILocation(line: 146, column: 26, scope: !707)
!711 = !DILocation(line: 146, column: 24, scope: !707)
!712 = !DILocation(line: 146, column: 9, scope: !707)
!713 = !DILocation(line: 147, column: 45, scope: !707)
!714 = !DILocation(line: 147, column: 29, scope: !707)
!715 = !DILocation(line: 147, column: 9, scope: !707)
!716 = !DILocation(line: 147, column: 15, scope: !707)
!717 = !DILocation(line: 147, column: 27, scope: !707)
!718 = !DILocation(line: 148, column: 9, scope: !707)
!719 = distinct !{!719, !690, !720, !304}
!720 = !DILocation(line: 149, column: 5, scope: !679)
!721 = !DILocation(line: 151, column: 12, scope: !679)
!722 = !DILocation(line: 151, column: 5, scope: !679)
!723 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !724, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!724 = !DISubroutineType(types: !725)
!725 = !{!6}
!726 = !DILocation(line: 158, column: 5, scope: !723)
!727 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !724, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!728 = !DILocation(line: 163, column: 5, scope: !727)
!729 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !724, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!730 = !DILocation(line: 168, column: 13, scope: !729)
!731 = !DILocation(line: 168, column: 20, scope: !729)
!732 = !DILocation(line: 168, column: 5, scope: !729)
!733 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !64, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!734 = !DILocation(line: 187, column: 16, scope: !733)
!735 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !64, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!736 = !DILocation(line: 188, column: 16, scope: !735)
!737 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !64, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!738 = !DILocation(line: 189, column: 16, scope: !737)
!739 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !64, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!740 = !DILocation(line: 190, column: 16, scope: !739)
!741 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !64, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!742 = !DILocation(line: 191, column: 16, scope: !741)
!743 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !64, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!744 = !DILocation(line: 192, column: 16, scope: !743)
!745 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !64, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!746 = !DILocation(line: 193, column: 16, scope: !745)
!747 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !64, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!748 = !DILocation(line: 194, column: 16, scope: !747)
!749 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !64, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!750 = !DILocation(line: 195, column: 16, scope: !749)
!751 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !64, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!752 = !DILocation(line: 198, column: 15, scope: !751)
!753 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !64, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!754 = !DILocation(line: 199, column: 15, scope: !753)
!755 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !64, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!756 = !DILocation(line: 200, column: 15, scope: !755)
!757 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !64, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!758 = !DILocation(line: 201, column: 15, scope: !757)
!759 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !64, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!760 = !DILocation(line: 202, column: 15, scope: !759)
!761 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !64, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!762 = !DILocation(line: 203, column: 15, scope: !761)
!763 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !64, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!764 = !DILocation(line: 204, column: 15, scope: !763)
!765 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !64, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!766 = !DILocation(line: 205, column: 15, scope: !765)
!767 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !64, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!768 = !DILocation(line: 206, column: 15, scope: !767)
