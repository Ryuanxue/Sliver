; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE134_Uncontrolled_Format_String__char_console_fprintf_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !9
@CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !11
@CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !13
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.1.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
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
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.15 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13.16 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_bad() #0 !dbg !63 {
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
  store i32 1, i32* @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_badGlobal, align 4, !dbg !126
  %16 = load i8*, i8** %data, align 8, !dbg !127
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_badSink(i8* %16), !dbg !128
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
  store i32 0, i32* @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Global, align 4, !dbg !185
  %16 = load i8*, i8** %data, align 8, !dbg !186
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Sink(i8* %16), !dbg !187
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
  store i32 1, i32* @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G2Global, align 4, !dbg !244
  %16 = load i8*, i8** %data, align 8, !dbg !245
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G2Sink(i8* %16), !dbg !246
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !256
  store i32 1, i32* @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BGlobal, align 4, !dbg !257
  %2 = load i8*, i8** %data, align 8, !dbg !258
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BSink(i8* %2), !dbg !259
  ret void, !dbg !260
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_good() #0 !dbg !261 {
entry:
  call void @goodB2G1(), !dbg !262
  call void @goodB2G2(), !dbg !263
  call void @goodG2B(), !dbg !264
  ret void, !dbg !265
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_badSink(i8* %data) #0 !dbg !266 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_badGlobal, align 4, !dbg !271
  %tobool = icmp ne i32 %0, 0, !dbg !271
  br i1 %tobool, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !274
  %2 = load i8*, i8** %data.addr, align 8, !dbg !276
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !277
  br label %if.end, !dbg !278

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !279
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Sink(i8* %data) #0 !dbg !280 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Global, align 4, !dbg !283
  %tobool = icmp ne i32 %0, 0, !dbg !283
  br i1 %tobool, label %if.then, label %if.else, !dbg !285

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)), !dbg !286
  br label %if.end, !dbg !288

if.else:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !289
  %2 = load i8*, i8** %data.addr, align 8, !dbg !291
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %2), !dbg !292
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !293
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G2Sink(i8* %data) #0 !dbg !294 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !295, metadata !DIExpression()), !dbg !296
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G2Global, align 4, !dbg !297
  %tobool = icmp ne i32 %0, 0, !dbg !297
  br i1 %tobool, label %if.then, label %if.end, !dbg !299

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !300
  %2 = load i8*, i8** %data.addr, align 8, !dbg !302
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %2), !dbg !303
  br label %if.end, !dbg !304

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !305
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BSink(i8* %data) #0 !dbg !306 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !307, metadata !DIExpression()), !dbg !308
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BGlobal, align 4, !dbg !309
  %tobool = icmp ne i32 %0, 0, !dbg !309
  br i1 %tobool, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !312
  %2 = load i8*, i8** %data.addr, align 8, !dbg !314
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !315
  br label %if.end, !dbg !316

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !318 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)), !dbg !321
  %0 = load i8*, i8** %line.addr, align 8, !dbg !322
  %cmp = icmp ne i8* %0, null, !dbg !324
  br i1 %cmp, label %if.then, label %if.end, !dbg !325

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !326
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.14, i64 0, i64 0), i8* %1), !dbg !328
  br label %if.end, !dbg !329

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !330
  ret void, !dbg !331
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !332 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i8*, i8** %line.addr, align 8, !dbg !335
  %cmp = icmp ne i8* %0, null, !dbg !337
  br i1 %cmp, label %if.then, label %if.end, !dbg !338

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !339
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.14, i64 0, i64 0), i8* %1), !dbg !341
  br label %if.end, !dbg !342

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !344 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i32*, i32** %line.addr, align 8, !dbg !351
  %cmp = icmp ne i32* %0, null, !dbg !353
  br i1 %cmp, label %if.then, label %if.end, !dbg !354

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !355
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !357
  br label %if.end, !dbg !358

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !359
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !360 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !368 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !374
  %conv = sext i16 %0 to i32, !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.15, i64 0, i64 0), i32 %conv), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !377 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !381, metadata !DIExpression()), !dbg !382
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !383
  %conv = fpext float %0 to double, !dbg !383
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !384
  ret void, !dbg !385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !386 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !392
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !393
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !395 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !404
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !407 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !415 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !418, metadata !DIExpression()), !dbg !419
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !420
  %conv = sext i8 %0 to i32, !dbg !420
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !421
  ret void, !dbg !422
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !423 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !428, metadata !DIExpression()), !dbg !432
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !433
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !434
  store i32 %0, i32* %arrayidx, align 4, !dbg !435
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !436
  store i32 0, i32* %arrayidx1, align 4, !dbg !437
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !438
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !439
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !441 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !444, metadata !DIExpression()), !dbg !445
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !446
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !447
  ret void, !dbg !448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !449 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !452, metadata !DIExpression()), !dbg !453
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !454
  %conv = zext i8 %0 to i32, !dbg !454
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !455
  ret void, !dbg !456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !457 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !463
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !464
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !466 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !478
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !479
  %1 = load i32, i32* %intOne, align 4, !dbg !479
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !480
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !481
  %3 = load i32, i32* %intTwo, align 4, !dbg !481
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13.16, i64 0, i64 0), i32 %1, i32 %3), !dbg !482
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !484 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !488, metadata !DIExpression()), !dbg !489
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata i64* %i, metadata !492, metadata !DIExpression()), !dbg !493
  store i64 0, i64* %i, align 8, !dbg !494
  br label %for.cond, !dbg !496

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !497
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !499
  %cmp = icmp ult i64 %0, %1, !dbg !500
  br i1 %cmp, label %for.body, label %for.end, !dbg !501

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !502
  %3 = load i64, i64* %i, align 8, !dbg !504
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !502
  %4 = load i8, i8* %arrayidx, align 1, !dbg !502
  %conv = zext i8 %4 to i32, !dbg !502
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !505
  br label %for.inc, !dbg !506

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !507
  %inc = add i64 %5, 1, !dbg !507
  store i64 %inc, i64* %i, align 8, !dbg !507
  br label %for.cond, !dbg !508, !llvm.loop !509

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !512
  ret void, !dbg !513
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !514 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !517, metadata !DIExpression()), !dbg !518
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !519, metadata !DIExpression()), !dbg !520
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !521, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !523, metadata !DIExpression()), !dbg !524
  store i64 0, i64* %numWritten, align 8, !dbg !524
  br label %while.cond, !dbg !525

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !526
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !527
  %cmp = icmp ult i64 %0, %1, !dbg !528
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !529

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !530
  %2 = load i16*, i16** %call, align 8, !dbg !530
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !530
  %4 = load i64, i64* %numWritten, align 8, !dbg !530
  %mul = mul i64 2, %4, !dbg !530
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !530
  %5 = load i8, i8* %arrayidx, align 1, !dbg !530
  %conv = sext i8 %5 to i32, !dbg !530
  %idxprom = sext i32 %conv to i64, !dbg !530
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !530
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !530
  %conv2 = zext i16 %6 to i32, !dbg !530
  %and = and i32 %conv2, 4096, !dbg !530
  %tobool = icmp ne i32 %and, 0, !dbg !530
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !531

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !532
  %7 = load i16*, i16** %call3, align 8, !dbg !532
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !532
  %9 = load i64, i64* %numWritten, align 8, !dbg !532
  %mul4 = mul i64 2, %9, !dbg !532
  %add = add i64 %mul4, 1, !dbg !532
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !532
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !532
  %conv6 = sext i8 %10 to i32, !dbg !532
  %idxprom7 = sext i32 %conv6 to i64, !dbg !532
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !532
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !532
  %conv9 = zext i16 %11 to i32, !dbg !532
  %and10 = and i32 %conv9, 4096, !dbg !532
  %tobool11 = icmp ne i32 %and10, 0, !dbg !531
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !533
  br i1 %12, label %while.body, label %while.end, !dbg !525

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !534, metadata !DIExpression()), !dbg !536
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !537
  %14 = load i64, i64* %numWritten, align 8, !dbg !538
  %mul12 = mul i64 2, %14, !dbg !539
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !537
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !540
  %15 = load i32, i32* %byte, align 4, !dbg !541
  %conv15 = trunc i32 %15 to i8, !dbg !542
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !543
  %17 = load i64, i64* %numWritten, align 8, !dbg !544
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !543
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !545
  %18 = load i64, i64* %numWritten, align 8, !dbg !546
  %inc = add i64 %18, 1, !dbg !546
  store i64 %inc, i64* %numWritten, align 8, !dbg !546
  br label %while.cond, !dbg !525, !llvm.loop !547

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !549
  ret i64 %19, !dbg !550
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !551 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !554, metadata !DIExpression()), !dbg !555
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !556, metadata !DIExpression()), !dbg !557
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !560, metadata !DIExpression()), !dbg !561
  store i64 0, i64* %numWritten, align 8, !dbg !561
  br label %while.cond, !dbg !562

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !563
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !564
  %cmp = icmp ult i64 %0, %1, !dbg !565
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !566

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !567
  %3 = load i64, i64* %numWritten, align 8, !dbg !568
  %mul = mul i64 2, %3, !dbg !569
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !567
  %4 = load i32, i32* %arrayidx, align 4, !dbg !567
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !570
  %tobool = icmp ne i32 %call, 0, !dbg !570
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !571

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !572
  %6 = load i64, i64* %numWritten, align 8, !dbg !573
  %mul1 = mul i64 2, %6, !dbg !574
  %add = add i64 %mul1, 1, !dbg !575
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !572
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !572
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !576
  %tobool4 = icmp ne i32 %call3, 0, !dbg !571
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !577
  br i1 %8, label %while.body, label %while.end, !dbg !562

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !578, metadata !DIExpression()), !dbg !580
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !581
  %10 = load i64, i64* %numWritten, align 8, !dbg !582
  %mul5 = mul i64 2, %10, !dbg !583
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !581
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !584
  %11 = load i32, i32* %byte, align 4, !dbg !585
  %conv = trunc i32 %11 to i8, !dbg !586
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !587
  %13 = load i64, i64* %numWritten, align 8, !dbg !588
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !587
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !589
  %14 = load i64, i64* %numWritten, align 8, !dbg !590
  %inc = add i64 %14, 1, !dbg !590
  store i64 %inc, i64* %numWritten, align 8, !dbg !590
  br label %while.cond, !dbg !562, !llvm.loop !591

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !593
  ret i64 %15, !dbg !594
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !595 {
entry:
  ret i32 1, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !599 {
entry:
  ret i32 0, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !601 {
entry:
  %call = call i32 @rand() #8, !dbg !602
  %rem = srem i32 %call, 2, !dbg !603
  ret i32 %rem, !dbg !604
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !631 {
entry:
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !633 {
entry:
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !635 {
entry:
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !637 {
entry:
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !639 {
entry:
  ret void, !dbg !640
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
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_22_badGlobal", scope: !2, file: !3, line: 28, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_22a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_405/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Global", scope: !2, file: !3, line: 70, type: !6, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G2Global", scope: !2, file: !3, line: 71, type: !6, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BGlobal", scope: !2, file: !3, line: 72, type: !6, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !6, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_405/source_code")
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
!58 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_22b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_405/source_code")
!59 = !{!"clang version 12.0.0"}
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_22_bad", scope: !3, file: !3, line: 31, type: !64, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !DILocalVariable(name: "data", scope: !63, file: !3, line: 33, type: !55)
!67 = !DILocation(line: 33, column: 12, scope: !63)
!68 = !DILocalVariable(name: "dataBuffer", scope: !63, file: !3, line: 34, type: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 100)
!72 = !DILocation(line: 34, column: 10, scope: !63)
!73 = !DILocation(line: 35, column: 12, scope: !63)
!74 = !DILocation(line: 35, column: 10, scope: !63)
!75 = !DILocalVariable(name: "dataLen", scope: !76, file: !3, line: 38, type: !77)
!76 = distinct !DILexicalBlock(scope: !63, file: !3, line: 36, column: 5)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DILocation(line: 38, column: 16, scope: !76)
!81 = !DILocation(line: 38, column: 33, scope: !76)
!82 = !DILocation(line: 38, column: 26, scope: !76)
!83 = !DILocation(line: 40, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !76, file: !3, line: 40, column: 13)
!85 = !DILocation(line: 40, column: 16, scope: !84)
!86 = !DILocation(line: 40, column: 25, scope: !84)
!87 = !DILocation(line: 40, column: 13, scope: !76)
!88 = !DILocation(line: 43, column: 23, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 43, column: 17)
!90 = distinct !DILexicalBlock(scope: !84, file: !3, line: 41, column: 9)
!91 = !DILocation(line: 43, column: 28, scope: !89)
!92 = !DILocation(line: 43, column: 27, scope: !89)
!93 = !DILocation(line: 43, column: 47, scope: !89)
!94 = !DILocation(line: 43, column: 46, scope: !89)
!95 = !DILocation(line: 43, column: 37, scope: !89)
!96 = !DILocation(line: 43, column: 57, scope: !89)
!97 = !DILocation(line: 43, column: 17, scope: !89)
!98 = !DILocation(line: 43, column: 64, scope: !89)
!99 = !DILocation(line: 43, column: 17, scope: !90)
!100 = !DILocation(line: 47, column: 34, scope: !101)
!101 = distinct !DILexicalBlock(scope: !89, file: !3, line: 44, column: 13)
!102 = !DILocation(line: 47, column: 27, scope: !101)
!103 = !DILocation(line: 47, column: 25, scope: !101)
!104 = !DILocation(line: 48, column: 21, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !3, line: 48, column: 21)
!106 = !DILocation(line: 48, column: 29, scope: !105)
!107 = !DILocation(line: 48, column: 33, scope: !105)
!108 = !DILocation(line: 48, column: 36, scope: !105)
!109 = !DILocation(line: 48, column: 41, scope: !105)
!110 = !DILocation(line: 48, column: 48, scope: !105)
!111 = !DILocation(line: 48, column: 52, scope: !105)
!112 = !DILocation(line: 48, column: 21, scope: !101)
!113 = !DILocation(line: 50, column: 21, scope: !114)
!114 = distinct !DILexicalBlock(scope: !105, file: !3, line: 49, column: 17)
!115 = !DILocation(line: 50, column: 26, scope: !114)
!116 = !DILocation(line: 50, column: 33, scope: !114)
!117 = !DILocation(line: 50, column: 37, scope: !114)
!118 = !DILocation(line: 51, column: 17, scope: !114)
!119 = !DILocation(line: 52, column: 13, scope: !101)
!120 = !DILocation(line: 55, column: 17, scope: !121)
!121 = distinct !DILexicalBlock(scope: !89, file: !3, line: 54, column: 13)
!122 = !DILocation(line: 57, column: 17, scope: !121)
!123 = !DILocation(line: 57, column: 22, scope: !121)
!124 = !DILocation(line: 57, column: 31, scope: !121)
!125 = !DILocation(line: 59, column: 9, scope: !90)
!126 = !DILocation(line: 61, column: 74, scope: !63)
!127 = !DILocation(line: 62, column: 72, scope: !63)
!128 = !DILocation(line: 62, column: 5, scope: !63)
!129 = !DILocation(line: 63, column: 1, scope: !63)
!130 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 76, type: !64, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!131 = !DILocalVariable(name: "data", scope: !130, file: !3, line: 78, type: !55)
!132 = !DILocation(line: 78, column: 12, scope: !130)
!133 = !DILocalVariable(name: "dataBuffer", scope: !130, file: !3, line: 79, type: !69)
!134 = !DILocation(line: 79, column: 10, scope: !130)
!135 = !DILocation(line: 80, column: 12, scope: !130)
!136 = !DILocation(line: 80, column: 10, scope: !130)
!137 = !DILocalVariable(name: "dataLen", scope: !138, file: !3, line: 83, type: !77)
!138 = distinct !DILexicalBlock(scope: !130, file: !3, line: 81, column: 5)
!139 = !DILocation(line: 83, column: 16, scope: !138)
!140 = !DILocation(line: 83, column: 33, scope: !138)
!141 = !DILocation(line: 83, column: 26, scope: !138)
!142 = !DILocation(line: 85, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !3, line: 85, column: 13)
!144 = !DILocation(line: 85, column: 16, scope: !143)
!145 = !DILocation(line: 85, column: 25, scope: !143)
!146 = !DILocation(line: 85, column: 13, scope: !138)
!147 = !DILocation(line: 88, column: 23, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 88, column: 17)
!149 = distinct !DILexicalBlock(scope: !143, file: !3, line: 86, column: 9)
!150 = !DILocation(line: 88, column: 28, scope: !148)
!151 = !DILocation(line: 88, column: 27, scope: !148)
!152 = !DILocation(line: 88, column: 47, scope: !148)
!153 = !DILocation(line: 88, column: 46, scope: !148)
!154 = !DILocation(line: 88, column: 37, scope: !148)
!155 = !DILocation(line: 88, column: 57, scope: !148)
!156 = !DILocation(line: 88, column: 17, scope: !148)
!157 = !DILocation(line: 88, column: 64, scope: !148)
!158 = !DILocation(line: 88, column: 17, scope: !149)
!159 = !DILocation(line: 92, column: 34, scope: !160)
!160 = distinct !DILexicalBlock(scope: !148, file: !3, line: 89, column: 13)
!161 = !DILocation(line: 92, column: 27, scope: !160)
!162 = !DILocation(line: 92, column: 25, scope: !160)
!163 = !DILocation(line: 93, column: 21, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !3, line: 93, column: 21)
!165 = !DILocation(line: 93, column: 29, scope: !164)
!166 = !DILocation(line: 93, column: 33, scope: !164)
!167 = !DILocation(line: 93, column: 36, scope: !164)
!168 = !DILocation(line: 93, column: 41, scope: !164)
!169 = !DILocation(line: 93, column: 48, scope: !164)
!170 = !DILocation(line: 93, column: 52, scope: !164)
!171 = !DILocation(line: 93, column: 21, scope: !160)
!172 = !DILocation(line: 95, column: 21, scope: !173)
!173 = distinct !DILexicalBlock(scope: !164, file: !3, line: 94, column: 17)
!174 = !DILocation(line: 95, column: 26, scope: !173)
!175 = !DILocation(line: 95, column: 33, scope: !173)
!176 = !DILocation(line: 95, column: 37, scope: !173)
!177 = !DILocation(line: 96, column: 17, scope: !173)
!178 = !DILocation(line: 97, column: 13, scope: !160)
!179 = !DILocation(line: 100, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !148, file: !3, line: 99, column: 13)
!181 = !DILocation(line: 102, column: 17, scope: !180)
!182 = !DILocation(line: 102, column: 22, scope: !180)
!183 = !DILocation(line: 102, column: 31, scope: !180)
!184 = !DILocation(line: 104, column: 9, scope: !149)
!185 = !DILocation(line: 106, column: 79, scope: !130)
!186 = !DILocation(line: 107, column: 77, scope: !130)
!187 = !DILocation(line: 107, column: 5, scope: !130)
!188 = !DILocation(line: 108, column: 1, scope: !130)
!189 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 112, type: !64, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!190 = !DILocalVariable(name: "data", scope: !189, file: !3, line: 114, type: !55)
!191 = !DILocation(line: 114, column: 12, scope: !189)
!192 = !DILocalVariable(name: "dataBuffer", scope: !189, file: !3, line: 115, type: !69)
!193 = !DILocation(line: 115, column: 10, scope: !189)
!194 = !DILocation(line: 116, column: 12, scope: !189)
!195 = !DILocation(line: 116, column: 10, scope: !189)
!196 = !DILocalVariable(name: "dataLen", scope: !197, file: !3, line: 119, type: !77)
!197 = distinct !DILexicalBlock(scope: !189, file: !3, line: 117, column: 5)
!198 = !DILocation(line: 119, column: 16, scope: !197)
!199 = !DILocation(line: 119, column: 33, scope: !197)
!200 = !DILocation(line: 119, column: 26, scope: !197)
!201 = !DILocation(line: 121, column: 17, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !3, line: 121, column: 13)
!203 = !DILocation(line: 121, column: 16, scope: !202)
!204 = !DILocation(line: 121, column: 25, scope: !202)
!205 = !DILocation(line: 121, column: 13, scope: !197)
!206 = !DILocation(line: 124, column: 23, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 124, column: 17)
!208 = distinct !DILexicalBlock(scope: !202, file: !3, line: 122, column: 9)
!209 = !DILocation(line: 124, column: 28, scope: !207)
!210 = !DILocation(line: 124, column: 27, scope: !207)
!211 = !DILocation(line: 124, column: 47, scope: !207)
!212 = !DILocation(line: 124, column: 46, scope: !207)
!213 = !DILocation(line: 124, column: 37, scope: !207)
!214 = !DILocation(line: 124, column: 57, scope: !207)
!215 = !DILocation(line: 124, column: 17, scope: !207)
!216 = !DILocation(line: 124, column: 64, scope: !207)
!217 = !DILocation(line: 124, column: 17, scope: !208)
!218 = !DILocation(line: 128, column: 34, scope: !219)
!219 = distinct !DILexicalBlock(scope: !207, file: !3, line: 125, column: 13)
!220 = !DILocation(line: 128, column: 27, scope: !219)
!221 = !DILocation(line: 128, column: 25, scope: !219)
!222 = !DILocation(line: 129, column: 21, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 129, column: 21)
!224 = !DILocation(line: 129, column: 29, scope: !223)
!225 = !DILocation(line: 129, column: 33, scope: !223)
!226 = !DILocation(line: 129, column: 36, scope: !223)
!227 = !DILocation(line: 129, column: 41, scope: !223)
!228 = !DILocation(line: 129, column: 48, scope: !223)
!229 = !DILocation(line: 129, column: 52, scope: !223)
!230 = !DILocation(line: 129, column: 21, scope: !219)
!231 = !DILocation(line: 131, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !223, file: !3, line: 130, column: 17)
!233 = !DILocation(line: 131, column: 26, scope: !232)
!234 = !DILocation(line: 131, column: 33, scope: !232)
!235 = !DILocation(line: 131, column: 37, scope: !232)
!236 = !DILocation(line: 132, column: 17, scope: !232)
!237 = !DILocation(line: 133, column: 13, scope: !219)
!238 = !DILocation(line: 136, column: 17, scope: !239)
!239 = distinct !DILexicalBlock(scope: !207, file: !3, line: 135, column: 13)
!240 = !DILocation(line: 138, column: 17, scope: !239)
!241 = !DILocation(line: 138, column: 22, scope: !239)
!242 = !DILocation(line: 138, column: 31, scope: !239)
!243 = !DILocation(line: 140, column: 9, scope: !208)
!244 = !DILocation(line: 142, column: 79, scope: !189)
!245 = !DILocation(line: 143, column: 77, scope: !189)
!246 = !DILocation(line: 143, column: 5, scope: !189)
!247 = !DILocation(line: 144, column: 1, scope: !189)
!248 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 148, type: !64, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!249 = !DILocalVariable(name: "data", scope: !248, file: !3, line: 150, type: !55)
!250 = !DILocation(line: 150, column: 12, scope: !248)
!251 = !DILocalVariable(name: "dataBuffer", scope: !248, file: !3, line: 151, type: !69)
!252 = !DILocation(line: 151, column: 10, scope: !248)
!253 = !DILocation(line: 152, column: 12, scope: !248)
!254 = !DILocation(line: 152, column: 10, scope: !248)
!255 = !DILocation(line: 154, column: 12, scope: !248)
!256 = !DILocation(line: 154, column: 5, scope: !248)
!257 = !DILocation(line: 155, column: 78, scope: !248)
!258 = !DILocation(line: 156, column: 76, scope: !248)
!259 = !DILocation(line: 156, column: 5, scope: !248)
!260 = !DILocation(line: 157, column: 1, scope: !248)
!261 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_22_good", scope: !3, file: !3, line: 159, type: !64, scopeLine: 160, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!262 = !DILocation(line: 161, column: 5, scope: !261)
!263 = !DILocation(line: 162, column: 5, scope: !261)
!264 = !DILocation(line: 163, column: 5, scope: !261)
!265 = !DILocation(line: 164, column: 1, scope: !261)
!266 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_22_badSink", scope: !58, file: !58, line: 29, type: !267, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !55}
!269 = !DILocalVariable(name: "data", arg: 1, scope: !266, file: !58, line: 29, type: !55)
!270 = !DILocation(line: 29, column: 80, scope: !266)
!271 = !DILocation(line: 31, column: 8, scope: !272)
!272 = distinct !DILexicalBlock(scope: !266, file: !58, line: 31, column: 8)
!273 = !DILocation(line: 31, column: 8, scope: !266)
!274 = !DILocation(line: 34, column: 17, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !58, line: 32, column: 5)
!276 = !DILocation(line: 34, column: 25, scope: !275)
!277 = !DILocation(line: 34, column: 9, scope: !275)
!278 = !DILocation(line: 35, column: 5, scope: !275)
!279 = !DILocation(line: 36, column: 1, scope: !266)
!280 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Sink", scope: !58, file: !58, line: 48, type: !267, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!281 = !DILocalVariable(name: "data", arg: 1, scope: !280, file: !58, line: 48, type: !55)
!282 = !DILocation(line: 48, column: 85, scope: !280)
!283 = !DILocation(line: 50, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !58, line: 50, column: 8)
!285 = !DILocation(line: 50, column: 8, scope: !280)
!286 = !DILocation(line: 53, column: 9, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !58, line: 51, column: 5)
!288 = !DILocation(line: 54, column: 5, scope: !287)
!289 = !DILocation(line: 58, column: 17, scope: !290)
!290 = distinct !DILexicalBlock(scope: !284, file: !58, line: 56, column: 5)
!291 = !DILocation(line: 58, column: 33, scope: !290)
!292 = !DILocation(line: 58, column: 9, scope: !290)
!293 = !DILocation(line: 60, column: 1, scope: !280)
!294 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G2Sink", scope: !58, file: !58, line: 63, type: !267, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!295 = !DILocalVariable(name: "data", arg: 1, scope: !294, file: !58, line: 63, type: !55)
!296 = !DILocation(line: 63, column: 85, scope: !294)
!297 = !DILocation(line: 65, column: 8, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !58, line: 65, column: 8)
!299 = !DILocation(line: 65, column: 8, scope: !294)
!300 = !DILocation(line: 68, column: 17, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !58, line: 66, column: 5)
!302 = !DILocation(line: 68, column: 33, scope: !301)
!303 = !DILocation(line: 68, column: 9, scope: !301)
!304 = !DILocation(line: 69, column: 5, scope: !301)
!305 = !DILocation(line: 70, column: 1, scope: !294)
!306 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BSink", scope: !58, file: !58, line: 73, type: !267, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!307 = !DILocalVariable(name: "data", arg: 1, scope: !306, file: !58, line: 73, type: !55)
!308 = !DILocation(line: 73, column: 84, scope: !306)
!309 = !DILocation(line: 75, column: 8, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !58, line: 75, column: 8)
!311 = !DILocation(line: 75, column: 8, scope: !306)
!312 = !DILocation(line: 78, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !58, line: 76, column: 5)
!314 = !DILocation(line: 78, column: 25, scope: !313)
!315 = !DILocation(line: 78, column: 9, scope: !313)
!316 = !DILocation(line: 79, column: 5, scope: !313)
!317 = !DILocation(line: 80, column: 1, scope: !306)
!318 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !267, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!319 = !DILocalVariable(name: "line", arg: 1, scope: !318, file: !18, line: 11, type: !55)
!320 = !DILocation(line: 11, column: 25, scope: !318)
!321 = !DILocation(line: 13, column: 1, scope: !318)
!322 = !DILocation(line: 14, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !18, line: 14, column: 8)
!324 = !DILocation(line: 14, column: 13, scope: !323)
!325 = !DILocation(line: 14, column: 8, scope: !318)
!326 = !DILocation(line: 16, column: 24, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !18, line: 15, column: 5)
!328 = !DILocation(line: 16, column: 9, scope: !327)
!329 = !DILocation(line: 17, column: 5, scope: !327)
!330 = !DILocation(line: 18, column: 5, scope: !318)
!331 = !DILocation(line: 19, column: 1, scope: !318)
!332 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !267, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!333 = !DILocalVariable(name: "line", arg: 1, scope: !332, file: !18, line: 20, type: !55)
!334 = !DILocation(line: 20, column: 29, scope: !332)
!335 = !DILocation(line: 22, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !18, line: 22, column: 8)
!337 = !DILocation(line: 22, column: 13, scope: !336)
!338 = !DILocation(line: 22, column: 8, scope: !332)
!339 = !DILocation(line: 24, column: 24, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !18, line: 23, column: 5)
!341 = !DILocation(line: 24, column: 9, scope: !340)
!342 = !DILocation(line: 25, column: 5, scope: !340)
!343 = !DILocation(line: 26, column: 1, scope: !332)
!344 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !345, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !78, line: 74, baseType: !6)
!349 = !DILocalVariable(name: "line", arg: 1, scope: !344, file: !18, line: 27, type: !347)
!350 = !DILocation(line: 27, column: 29, scope: !344)
!351 = !DILocation(line: 29, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !344, file: !18, line: 29, column: 8)
!353 = !DILocation(line: 29, column: 13, scope: !352)
!354 = !DILocation(line: 29, column: 8, scope: !344)
!355 = !DILocation(line: 31, column: 27, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !18, line: 30, column: 5)
!357 = !DILocation(line: 31, column: 9, scope: !356)
!358 = !DILocation(line: 32, column: 5, scope: !356)
!359 = !DILocation(line: 33, column: 1, scope: !344)
!360 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !361, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !6}
!363 = !DILocalVariable(name: "intNumber", arg: 1, scope: !360, file: !18, line: 35, type: !6)
!364 = !DILocation(line: 35, column: 24, scope: !360)
!365 = !DILocation(line: 37, column: 20, scope: !360)
!366 = !DILocation(line: 37, column: 5, scope: !360)
!367 = !DILocation(line: 38, column: 1, scope: !360)
!368 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !369, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371}
!371 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!372 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !368, file: !18, line: 40, type: !371)
!373 = !DILocation(line: 40, column: 28, scope: !368)
!374 = !DILocation(line: 42, column: 21, scope: !368)
!375 = !DILocation(line: 42, column: 5, scope: !368)
!376 = !DILocation(line: 43, column: 1, scope: !368)
!377 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !378, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !380}
!380 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!381 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !377, file: !18, line: 45, type: !380)
!382 = !DILocation(line: 45, column: 28, scope: !377)
!383 = !DILocation(line: 47, column: 20, scope: !377)
!384 = !DILocation(line: 47, column: 5, scope: !377)
!385 = !DILocation(line: 48, column: 1, scope: !377)
!386 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !387, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389}
!389 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!390 = !DILocalVariable(name: "longNumber", arg: 1, scope: !386, file: !18, line: 50, type: !389)
!391 = !DILocation(line: 50, column: 26, scope: !386)
!392 = !DILocation(line: 52, column: 21, scope: !386)
!393 = !DILocation(line: 52, column: 5, scope: !386)
!394 = !DILocation(line: 53, column: 1, scope: !386)
!395 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !396, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !398}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !399, line: 27, baseType: !400)
!399 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !401, line: 44, baseType: !389)
!401 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!402 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !395, file: !18, line: 55, type: !398)
!403 = !DILocation(line: 55, column: 33, scope: !395)
!404 = !DILocation(line: 57, column: 29, scope: !395)
!405 = !DILocation(line: 57, column: 5, scope: !395)
!406 = !DILocation(line: 58, column: 1, scope: !395)
!407 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !408, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !77}
!410 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !407, file: !18, line: 60, type: !77)
!411 = !DILocation(line: 60, column: 29, scope: !407)
!412 = !DILocation(line: 62, column: 21, scope: !407)
!413 = !DILocation(line: 62, column: 5, scope: !407)
!414 = !DILocation(line: 63, column: 1, scope: !407)
!415 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !416, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !56}
!418 = !DILocalVariable(name: "charHex", arg: 1, scope: !415, file: !18, line: 65, type: !56)
!419 = !DILocation(line: 65, column: 29, scope: !415)
!420 = !DILocation(line: 67, column: 22, scope: !415)
!421 = !DILocation(line: 67, column: 5, scope: !415)
!422 = !DILocation(line: 68, column: 1, scope: !415)
!423 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !424, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !348}
!426 = !DILocalVariable(name: "wideChar", arg: 1, scope: !423, file: !18, line: 70, type: !348)
!427 = !DILocation(line: 70, column: 29, scope: !423)
!428 = !DILocalVariable(name: "s", scope: !423, file: !18, line: 74, type: !429)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 64, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 2)
!432 = !DILocation(line: 74, column: 13, scope: !423)
!433 = !DILocation(line: 75, column: 16, scope: !423)
!434 = !DILocation(line: 75, column: 9, scope: !423)
!435 = !DILocation(line: 75, column: 14, scope: !423)
!436 = !DILocation(line: 76, column: 9, scope: !423)
!437 = !DILocation(line: 76, column: 14, scope: !423)
!438 = !DILocation(line: 77, column: 21, scope: !423)
!439 = !DILocation(line: 77, column: 5, scope: !423)
!440 = !DILocation(line: 78, column: 1, scope: !423)
!441 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !442, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !22}
!444 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !441, file: !18, line: 80, type: !22)
!445 = !DILocation(line: 80, column: 33, scope: !441)
!446 = !DILocation(line: 82, column: 20, scope: !441)
!447 = !DILocation(line: 82, column: 5, scope: !441)
!448 = !DILocation(line: 83, column: 1, scope: !441)
!449 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !450, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !38}
!452 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !449, file: !18, line: 85, type: !38)
!453 = !DILocation(line: 85, column: 45, scope: !449)
!454 = !DILocation(line: 87, column: 22, scope: !449)
!455 = !DILocation(line: 87, column: 5, scope: !449)
!456 = !DILocation(line: 88, column: 1, scope: !449)
!457 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !458, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !460}
!460 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!461 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !457, file: !18, line: 90, type: !460)
!462 = !DILocation(line: 90, column: 29, scope: !457)
!463 = !DILocation(line: 92, column: 20, scope: !457)
!464 = !DILocation(line: 92, column: 5, scope: !457)
!465 = !DILocation(line: 93, column: 1, scope: !457)
!466 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !467, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !471, line: 100, baseType: !472)
!471 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_405/source_code")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !471, line: 96, size: 64, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !472, file: !471, line: 98, baseType: !6, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !472, file: !471, line: 99, baseType: !6, size: 32, offset: 32)
!476 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !466, file: !18, line: 95, type: !469)
!477 = !DILocation(line: 95, column: 40, scope: !466)
!478 = !DILocation(line: 97, column: 26, scope: !466)
!479 = !DILocation(line: 97, column: 47, scope: !466)
!480 = !DILocation(line: 97, column: 55, scope: !466)
!481 = !DILocation(line: 97, column: 76, scope: !466)
!482 = !DILocation(line: 97, column: 5, scope: !466)
!483 = !DILocation(line: 98, column: 1, scope: !466)
!484 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !485, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !487, !77}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!488 = !DILocalVariable(name: "bytes", arg: 1, scope: !484, file: !18, line: 100, type: !487)
!489 = !DILocation(line: 100, column: 38, scope: !484)
!490 = !DILocalVariable(name: "numBytes", arg: 2, scope: !484, file: !18, line: 100, type: !77)
!491 = !DILocation(line: 100, column: 52, scope: !484)
!492 = !DILocalVariable(name: "i", scope: !484, file: !18, line: 102, type: !77)
!493 = !DILocation(line: 102, column: 12, scope: !484)
!494 = !DILocation(line: 103, column: 12, scope: !495)
!495 = distinct !DILexicalBlock(scope: !484, file: !18, line: 103, column: 5)
!496 = !DILocation(line: 103, column: 10, scope: !495)
!497 = !DILocation(line: 103, column: 17, scope: !498)
!498 = distinct !DILexicalBlock(scope: !495, file: !18, line: 103, column: 5)
!499 = !DILocation(line: 103, column: 21, scope: !498)
!500 = !DILocation(line: 103, column: 19, scope: !498)
!501 = !DILocation(line: 103, column: 5, scope: !495)
!502 = !DILocation(line: 105, column: 24, scope: !503)
!503 = distinct !DILexicalBlock(scope: !498, file: !18, line: 104, column: 5)
!504 = !DILocation(line: 105, column: 30, scope: !503)
!505 = !DILocation(line: 105, column: 9, scope: !503)
!506 = !DILocation(line: 106, column: 5, scope: !503)
!507 = !DILocation(line: 103, column: 31, scope: !498)
!508 = !DILocation(line: 103, column: 5, scope: !498)
!509 = distinct !{!509, !501, !510, !511}
!510 = !DILocation(line: 106, column: 5, scope: !495)
!511 = !{!"llvm.loop.mustprogress"}
!512 = !DILocation(line: 107, column: 5, scope: !484)
!513 = !DILocation(line: 108, column: 1, scope: !484)
!514 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !515, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!515 = !DISubroutineType(types: !516)
!516 = !{!77, !487, !77, !55}
!517 = !DILocalVariable(name: "bytes", arg: 1, scope: !514, file: !18, line: 113, type: !487)
!518 = !DILocation(line: 113, column: 39, scope: !514)
!519 = !DILocalVariable(name: "numBytes", arg: 2, scope: !514, file: !18, line: 113, type: !77)
!520 = !DILocation(line: 113, column: 53, scope: !514)
!521 = !DILocalVariable(name: "hex", arg: 3, scope: !514, file: !18, line: 113, type: !55)
!522 = !DILocation(line: 113, column: 71, scope: !514)
!523 = !DILocalVariable(name: "numWritten", scope: !514, file: !18, line: 115, type: !77)
!524 = !DILocation(line: 115, column: 12, scope: !514)
!525 = !DILocation(line: 121, column: 5, scope: !514)
!526 = !DILocation(line: 121, column: 12, scope: !514)
!527 = !DILocation(line: 121, column: 25, scope: !514)
!528 = !DILocation(line: 121, column: 23, scope: !514)
!529 = !DILocation(line: 121, column: 34, scope: !514)
!530 = !DILocation(line: 121, column: 37, scope: !514)
!531 = !DILocation(line: 121, column: 67, scope: !514)
!532 = !DILocation(line: 121, column: 70, scope: !514)
!533 = !DILocation(line: 0, scope: !514)
!534 = !DILocalVariable(name: "byte", scope: !535, file: !18, line: 123, type: !6)
!535 = distinct !DILexicalBlock(scope: !514, file: !18, line: 122, column: 5)
!536 = !DILocation(line: 123, column: 13, scope: !535)
!537 = !DILocation(line: 124, column: 17, scope: !535)
!538 = !DILocation(line: 124, column: 25, scope: !535)
!539 = !DILocation(line: 124, column: 23, scope: !535)
!540 = !DILocation(line: 124, column: 9, scope: !535)
!541 = !DILocation(line: 125, column: 45, scope: !535)
!542 = !DILocation(line: 125, column: 29, scope: !535)
!543 = !DILocation(line: 125, column: 9, scope: !535)
!544 = !DILocation(line: 125, column: 15, scope: !535)
!545 = !DILocation(line: 125, column: 27, scope: !535)
!546 = !DILocation(line: 126, column: 9, scope: !535)
!547 = distinct !{!547, !525, !548, !511}
!548 = !DILocation(line: 127, column: 5, scope: !514)
!549 = !DILocation(line: 129, column: 12, scope: !514)
!550 = !DILocation(line: 129, column: 5, scope: !514)
!551 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !552, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!552 = !DISubroutineType(types: !553)
!553 = !{!77, !487, !77, !347}
!554 = !DILocalVariable(name: "bytes", arg: 1, scope: !551, file: !18, line: 135, type: !487)
!555 = !DILocation(line: 135, column: 41, scope: !551)
!556 = !DILocalVariable(name: "numBytes", arg: 2, scope: !551, file: !18, line: 135, type: !77)
!557 = !DILocation(line: 135, column: 55, scope: !551)
!558 = !DILocalVariable(name: "hex", arg: 3, scope: !551, file: !18, line: 135, type: !347)
!559 = !DILocation(line: 135, column: 76, scope: !551)
!560 = !DILocalVariable(name: "numWritten", scope: !551, file: !18, line: 137, type: !77)
!561 = !DILocation(line: 137, column: 12, scope: !551)
!562 = !DILocation(line: 143, column: 5, scope: !551)
!563 = !DILocation(line: 143, column: 12, scope: !551)
!564 = !DILocation(line: 143, column: 25, scope: !551)
!565 = !DILocation(line: 143, column: 23, scope: !551)
!566 = !DILocation(line: 143, column: 34, scope: !551)
!567 = !DILocation(line: 143, column: 47, scope: !551)
!568 = !DILocation(line: 143, column: 55, scope: !551)
!569 = !DILocation(line: 143, column: 53, scope: !551)
!570 = !DILocation(line: 143, column: 37, scope: !551)
!571 = !DILocation(line: 143, column: 68, scope: !551)
!572 = !DILocation(line: 143, column: 81, scope: !551)
!573 = !DILocation(line: 143, column: 89, scope: !551)
!574 = !DILocation(line: 143, column: 87, scope: !551)
!575 = !DILocation(line: 143, column: 100, scope: !551)
!576 = !DILocation(line: 143, column: 71, scope: !551)
!577 = !DILocation(line: 0, scope: !551)
!578 = !DILocalVariable(name: "byte", scope: !579, file: !18, line: 145, type: !6)
!579 = distinct !DILexicalBlock(scope: !551, file: !18, line: 144, column: 5)
!580 = !DILocation(line: 145, column: 13, scope: !579)
!581 = !DILocation(line: 146, column: 18, scope: !579)
!582 = !DILocation(line: 146, column: 26, scope: !579)
!583 = !DILocation(line: 146, column: 24, scope: !579)
!584 = !DILocation(line: 146, column: 9, scope: !579)
!585 = !DILocation(line: 147, column: 45, scope: !579)
!586 = !DILocation(line: 147, column: 29, scope: !579)
!587 = !DILocation(line: 147, column: 9, scope: !579)
!588 = !DILocation(line: 147, column: 15, scope: !579)
!589 = !DILocation(line: 147, column: 27, scope: !579)
!590 = !DILocation(line: 148, column: 9, scope: !579)
!591 = distinct !{!591, !562, !592, !511}
!592 = !DILocation(line: 149, column: 5, scope: !551)
!593 = !DILocation(line: 151, column: 12, scope: !551)
!594 = !DILocation(line: 151, column: 5, scope: !551)
!595 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !596, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!596 = !DISubroutineType(types: !597)
!597 = !{!6}
!598 = !DILocation(line: 158, column: 5, scope: !595)
!599 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !596, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!600 = !DILocation(line: 163, column: 5, scope: !599)
!601 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !596, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!602 = !DILocation(line: 168, column: 13, scope: !601)
!603 = !DILocation(line: 168, column: 20, scope: !601)
!604 = !DILocation(line: 168, column: 5, scope: !601)
!605 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !64, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!606 = !DILocation(line: 187, column: 16, scope: !605)
!607 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !64, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!608 = !DILocation(line: 188, column: 16, scope: !607)
!609 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !64, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!610 = !DILocation(line: 189, column: 16, scope: !609)
!611 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !64, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!612 = !DILocation(line: 190, column: 16, scope: !611)
!613 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !64, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!614 = !DILocation(line: 191, column: 16, scope: !613)
!615 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !64, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!616 = !DILocation(line: 192, column: 16, scope: !615)
!617 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !64, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!618 = !DILocation(line: 193, column: 16, scope: !617)
!619 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !64, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!620 = !DILocation(line: 194, column: 16, scope: !619)
!621 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !64, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!622 = !DILocation(line: 195, column: 16, scope: !621)
!623 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !64, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!624 = !DILocation(line: 198, column: 15, scope: !623)
!625 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !64, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!626 = !DILocation(line: 199, column: 15, scope: !625)
!627 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !64, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!628 = !DILocation(line: 200, column: 15, scope: !627)
!629 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !64, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!630 = !DILocation(line: 201, column: 15, scope: !629)
!631 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !64, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!632 = !DILocation(line: 202, column: 15, scope: !631)
!633 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !64, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!634 = !DILocation(line: 203, column: 15, scope: !633)
!635 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !64, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!636 = !DILocation(line: 204, column: 15, scope: !635)
!637 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !64, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!638 = !DILocation(line: 205, column: 15, scope: !637)
!639 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !64, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!640 = !DILocation(line: 206, column: 15, scope: !639)
