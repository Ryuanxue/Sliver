; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.10 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.12 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10.13 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_61_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !59, metadata !DIExpression()), !dbg !63
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !64
  store i8* %arraydecay, i8** %data, align 8, !dbg !65
  %1 = load i8*, i8** %data, align 8, !dbg !66
  %call = call i8* @CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_badSource(i8* %1), !dbg !67
  store i8* %call, i8** %data, align 8, !dbg !68
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !69
  %3 = load i8*, i8** %data, align 8, !dbg !70
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !71
  ret void, !dbg !72
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !73 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !77
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !77
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !78
  store i8* %arraydecay, i8** %data, align 8, !dbg !79
  %1 = load i8*, i8** %data, align 8, !dbg !80
  %call = call i8* @CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodG2BSource(i8* %1), !dbg !81
  store i8* %call, i8** %data, align 8, !dbg !82
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !83
  %3 = load i8*, i8** %data, align 8, !dbg !84
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !85
  ret void, !dbg !86
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !87 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !91
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !91
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !92
  store i8* %arraydecay, i8** %data, align 8, !dbg !93
  %1 = load i8*, i8** %data, align 8, !dbg !94
  %call = call i8* @CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource(i8* %1), !dbg !95
  store i8* %call, i8** %data, align 8, !dbg !96
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !97
  %3 = load i8*, i8** %data, align 8, !dbg !98
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %3), !dbg !99
  ret void, !dbg !100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_61_good() #0 !dbg !101 {
entry:
  call void @goodG2B(), !dbg !102
  call void @goodB2G(), !dbg !103
  ret void, !dbg !104
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_badSource(i8* %data) #0 !dbg !105 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !110, metadata !DIExpression()), !dbg !115
  %0 = load i8*, i8** %data.addr, align 8, !dbg !116
  %call = call i64 @strlen(i8* %0) #7, !dbg !117
  store i64 %call, i64* %dataLen, align 8, !dbg !115
  %1 = load i64, i64* %dataLen, align 8, !dbg !118
  %sub = sub i64 100, %1, !dbg !120
  %cmp = icmp ugt i64 %sub, 1, !dbg !121
  br i1 %cmp, label %if.then, label %if.end18, !dbg !122

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !123
  %3 = load i64, i64* %dataLen, align 8, !dbg !126
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !127
  %4 = load i64, i64* %dataLen, align 8, !dbg !128
  %sub1 = sub i64 100, %4, !dbg !129
  %conv = trunc i64 %sub1 to i32, !dbg !130
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !131
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %5), !dbg !132
  %cmp3 = icmp ne i8* %call2, null, !dbg !133
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !134

if.then5:                                         ; preds = %if.then
  %6 = load i8*, i8** %data.addr, align 8, !dbg !135
  %call6 = call i64 @strlen(i8* %6) #7, !dbg !137
  store i64 %call6, i64* %dataLen, align 8, !dbg !138
  %7 = load i64, i64* %dataLen, align 8, !dbg !139
  %cmp7 = icmp ugt i64 %7, 0, !dbg !141
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !142

land.lhs.true:                                    ; preds = %if.then5
  %8 = load i8*, i8** %data.addr, align 8, !dbg !143
  %9 = load i64, i64* %dataLen, align 8, !dbg !144
  %sub9 = sub i64 %9, 1, !dbg !145
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %sub9, !dbg !143
  %10 = load i8, i8* %arrayidx, align 1, !dbg !143
  %conv10 = sext i8 %10 to i32, !dbg !143
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !146
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !147

if.then13:                                        ; preds = %land.lhs.true
  %11 = load i8*, i8** %data.addr, align 8, !dbg !148
  %12 = load i64, i64* %dataLen, align 8, !dbg !150
  %sub14 = sub i64 %12, 1, !dbg !151
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 %sub14, !dbg !148
  store i8 0, i8* %arrayidx15, align 1, !dbg !152
  br label %if.end, !dbg !153

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !154

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !155
  %13 = load i8*, i8** %data.addr, align 8, !dbg !157
  %14 = load i64, i64* %dataLen, align 8, !dbg !158
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !157
  store i8 0, i8* %arrayidx16, align 1, !dbg !159
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !160

if.end18:                                         ; preds = %if.end17, %entry
  %15 = load i8*, i8** %data.addr, align 8, !dbg !161
  ret i8* %15, !dbg !162
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodG2BSource(i8* %data) #0 !dbg !163 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !164, metadata !DIExpression()), !dbg !165
  %0 = load i8*, i8** %data.addr, align 8, !dbg !166
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !167
  %1 = load i8*, i8** %data.addr, align 8, !dbg !168
  ret i8* %1, !dbg !169
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource(i8* %data) #0 !dbg !170 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !173, metadata !DIExpression()), !dbg !175
  %0 = load i8*, i8** %data.addr, align 8, !dbg !176
  %call = call i64 @strlen(i8* %0) #7, !dbg !177
  store i64 %call, i64* %dataLen, align 8, !dbg !175
  %1 = load i64, i64* %dataLen, align 8, !dbg !178
  %sub = sub i64 100, %1, !dbg !180
  %cmp = icmp ugt i64 %sub, 1, !dbg !181
  br i1 %cmp, label %if.then, label %if.end18, !dbg !182

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !183
  %3 = load i64, i64* %dataLen, align 8, !dbg !186
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !187
  %4 = load i64, i64* %dataLen, align 8, !dbg !188
  %sub1 = sub i64 100, %4, !dbg !189
  %conv = trunc i64 %sub1 to i32, !dbg !190
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !191
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %5), !dbg !192
  %cmp3 = icmp ne i8* %call2, null, !dbg !193
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !194

if.then5:                                         ; preds = %if.then
  %6 = load i8*, i8** %data.addr, align 8, !dbg !195
  %call6 = call i64 @strlen(i8* %6) #7, !dbg !197
  store i64 %call6, i64* %dataLen, align 8, !dbg !198
  %7 = load i64, i64* %dataLen, align 8, !dbg !199
  %cmp7 = icmp ugt i64 %7, 0, !dbg !201
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !202

land.lhs.true:                                    ; preds = %if.then5
  %8 = load i8*, i8** %data.addr, align 8, !dbg !203
  %9 = load i64, i64* %dataLen, align 8, !dbg !204
  %sub9 = sub i64 %9, 1, !dbg !205
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %sub9, !dbg !203
  %10 = load i8, i8* %arrayidx, align 1, !dbg !203
  %conv10 = sext i8 %10 to i32, !dbg !203
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !206
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !207

if.then13:                                        ; preds = %land.lhs.true
  %11 = load i8*, i8** %data.addr, align 8, !dbg !208
  %12 = load i64, i64* %dataLen, align 8, !dbg !210
  %sub14 = sub i64 %12, 1, !dbg !211
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 %sub14, !dbg !208
  store i8 0, i8* %arrayidx15, align 1, !dbg !212
  br label %if.end, !dbg !213

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !214

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !215
  %13 = load i8*, i8** %data.addr, align 8, !dbg !217
  %14 = load i64, i64* %dataLen, align 8, !dbg !218
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !217
  store i8 0, i8* %arrayidx16, align 1, !dbg !219
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !220

if.end18:                                         ; preds = %if.end17, %entry
  %15 = load i8*, i8** %data.addr, align 8, !dbg !221
  ret i8* %15, !dbg !222
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !223 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !226, metadata !DIExpression()), !dbg !227
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !228
  %0 = load i8*, i8** %line.addr, align 8, !dbg !229
  %cmp = icmp ne i8* %0, null, !dbg !231
  br i1 %cmp, label %if.then, label %if.end, !dbg !232

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !233
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !235
  br label %if.end, !dbg !236

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !237
  ret void, !dbg !238
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !239 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !240, metadata !DIExpression()), !dbg !241
  %0 = load i8*, i8** %line.addr, align 8, !dbg !242
  %cmp = icmp ne i8* %0, null, !dbg !244
  br i1 %cmp, label %if.then, label %if.end, !dbg !245

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !246
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !248
  br label %if.end, !dbg !249

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !250
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !251 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = load i32*, i32** %line.addr, align 8, !dbg !258
  %cmp = icmp ne i32* %0, null, !dbg !260
  br i1 %cmp, label %if.then, label %if.end, !dbg !261

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !262
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.12, i64 0, i64 0), i32* %1), !dbg !264
  br label %if.end, !dbg !265

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !266
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !267 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !270, metadata !DIExpression()), !dbg !271
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !272
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !273
  ret void, !dbg !274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !275 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !279, metadata !DIExpression()), !dbg !280
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !281
  %conv = sext i16 %0 to i32, !dbg !281
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !282
  ret void, !dbg !283
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !284 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !288, metadata !DIExpression()), !dbg !289
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !290
  %conv = fpext float %0 to double, !dbg !290
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !291
  ret void, !dbg !292
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !293 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !299
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !300
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !302 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !311
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !312
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !314 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !317, metadata !DIExpression()), !dbg !318
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !319
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !320
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !322 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !325, metadata !DIExpression()), !dbg !326
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !327
  %conv = sext i8 %0 to i32, !dbg !327
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !328
  ret void, !dbg !329
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !330 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !335, metadata !DIExpression()), !dbg !339
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !340
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !341
  store i32 %0, i32* %arrayidx, align 4, !dbg !342
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !343
  store i32 0, i32* %arrayidx1, align 4, !dbg !344
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !345
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.13, i64 0, i64 0), i32* %arraydecay), !dbg !346
  ret void, !dbg !347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !348 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !356 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !361
  %conv = zext i8 %0 to i32, !dbg !361
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !362
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !364 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !368, metadata !DIExpression()), !dbg !369
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !370
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !371
  ret void, !dbg !372
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !373 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !385
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !386
  %1 = load i32, i32* %intOne, align 4, !dbg !386
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !387
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !388
  %3 = load i32, i32* %intTwo, align 4, !dbg !388
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !389
  ret void, !dbg !390
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !391 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !395, metadata !DIExpression()), !dbg !396
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata i64* %i, metadata !399, metadata !DIExpression()), !dbg !400
  store i64 0, i64* %i, align 8, !dbg !401
  br label %for.cond, !dbg !403

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !404
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !406
  %cmp = icmp ult i64 %0, %1, !dbg !407
  br i1 %cmp, label %for.body, label %for.end, !dbg !408

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !409
  %3 = load i64, i64* %i, align 8, !dbg !411
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !409
  %4 = load i8, i8* %arrayidx, align 1, !dbg !409
  %conv = zext i8 %4 to i32, !dbg !409
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !412
  br label %for.inc, !dbg !413

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !414
  %inc = add i64 %5, 1, !dbg !414
  store i64 %inc, i64* %i, align 8, !dbg !414
  br label %for.cond, !dbg !415, !llvm.loop !416

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !419
  ret void, !dbg !420
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !421 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !424, metadata !DIExpression()), !dbg !425
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !426, metadata !DIExpression()), !dbg !427
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !430, metadata !DIExpression()), !dbg !431
  store i64 0, i64* %numWritten, align 8, !dbg !431
  br label %while.cond, !dbg !432

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !433
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !434
  %cmp = icmp ult i64 %0, %1, !dbg !435
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !436

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !437
  %2 = load i16*, i16** %call, align 8, !dbg !437
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !437
  %4 = load i64, i64* %numWritten, align 8, !dbg !437
  %mul = mul i64 2, %4, !dbg !437
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !437
  %5 = load i8, i8* %arrayidx, align 1, !dbg !437
  %conv = sext i8 %5 to i32, !dbg !437
  %idxprom = sext i32 %conv to i64, !dbg !437
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !437
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !437
  %conv2 = zext i16 %6 to i32, !dbg !437
  %and = and i32 %conv2, 4096, !dbg !437
  %tobool = icmp ne i32 %and, 0, !dbg !437
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !438

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !439
  %7 = load i16*, i16** %call3, align 8, !dbg !439
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !439
  %9 = load i64, i64* %numWritten, align 8, !dbg !439
  %mul4 = mul i64 2, %9, !dbg !439
  %add = add i64 %mul4, 1, !dbg !439
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !439
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !439
  %conv6 = sext i8 %10 to i32, !dbg !439
  %idxprom7 = sext i32 %conv6 to i64, !dbg !439
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !439
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !439
  %conv9 = zext i16 %11 to i32, !dbg !439
  %and10 = and i32 %conv9, 4096, !dbg !439
  %tobool11 = icmp ne i32 %and10, 0, !dbg !438
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !440
  br i1 %12, label %while.body, label %while.end, !dbg !432

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !441, metadata !DIExpression()), !dbg !443
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !444
  %14 = load i64, i64* %numWritten, align 8, !dbg !445
  %mul12 = mul i64 2, %14, !dbg !446
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !444
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !447
  %15 = load i32, i32* %byte, align 4, !dbg !448
  %conv15 = trunc i32 %15 to i8, !dbg !449
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !450
  %17 = load i64, i64* %numWritten, align 8, !dbg !451
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !450
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !452
  %18 = load i64, i64* %numWritten, align 8, !dbg !453
  %inc = add i64 %18, 1, !dbg !453
  store i64 %inc, i64* %numWritten, align 8, !dbg !453
  br label %while.cond, !dbg !432, !llvm.loop !454

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !456
  ret i64 %19, !dbg !457
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !458 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !461, metadata !DIExpression()), !dbg !462
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !463, metadata !DIExpression()), !dbg !464
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !465, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !467, metadata !DIExpression()), !dbg !468
  store i64 0, i64* %numWritten, align 8, !dbg !468
  br label %while.cond, !dbg !469

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !470
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !471
  %cmp = icmp ult i64 %0, %1, !dbg !472
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !473

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !474
  %3 = load i64, i64* %numWritten, align 8, !dbg !475
  %mul = mul i64 2, %3, !dbg !476
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !474
  %4 = load i32, i32* %arrayidx, align 4, !dbg !474
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !477
  %tobool = icmp ne i32 %call, 0, !dbg !477
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !478

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !479
  %6 = load i64, i64* %numWritten, align 8, !dbg !480
  %mul1 = mul i64 2, %6, !dbg !481
  %add = add i64 %mul1, 1, !dbg !482
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !479
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !479
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !483
  %tobool4 = icmp ne i32 %call3, 0, !dbg !478
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !484
  br i1 %8, label %while.body, label %while.end, !dbg !469

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !485, metadata !DIExpression()), !dbg !487
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !488
  %10 = load i64, i64* %numWritten, align 8, !dbg !489
  %mul5 = mul i64 2, %10, !dbg !490
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !488
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !491
  %11 = load i32, i32* %byte, align 4, !dbg !492
  %conv = trunc i32 %11 to i8, !dbg !493
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !494
  %13 = load i64, i64* %numWritten, align 8, !dbg !495
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !494
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !496
  %14 = load i64, i64* %numWritten, align 8, !dbg !497
  %inc = add i64 %14, 1, !dbg !497
  store i64 %inc, i64* %numWritten, align 8, !dbg !497
  br label %while.cond, !dbg !469, !llvm.loop !498

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !500
  ret i64 %15, !dbg !501
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !502 {
entry:
  ret i32 1, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !506 {
entry:
  ret i32 0, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !508 {
entry:
  %call = call i32 @rand() #8, !dbg !509
  %rem = srem i32 %call, 2, !dbg !510
  ret i32 %rem, !dbg !511
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !512 {
entry:
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !514 {
entry:
  ret void, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !516 {
entry:
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !518 {
entry:
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !520 {
entry:
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !522 {
entry:
  ret void, !dbg !523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !524 {
entry:
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !526 {
entry:
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !528 {
entry:
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !530 {
entry:
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !532 {
entry:
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !534 {
entry:
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !536 {
entry:
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !538 {
entry:
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !540 {
entry:
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !542 {
entry:
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !544 {
entry:
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !546 {
entry:
  ret void, !dbg !547
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !47, !2}
!llvm.ident = !{!50, !50, !50}
!llvm.module.flags = !{!51, !52, !53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_419/source_code")
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
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_61a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_419/source_code")
!46 = !{}
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !49, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_61b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_419/source_code")
!49 = !{!23, !22}
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_61_bad", scope: !45, file: !45, line: 29, type: !55, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 31, type: !42)
!58 = !DILocation(line: 31, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 32, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 100)
!63 = !DILocation(line: 32, column: 10, scope: !54)
!64 = !DILocation(line: 33, column: 12, scope: !54)
!65 = !DILocation(line: 33, column: 10, scope: !54)
!66 = !DILocation(line: 34, column: 82, scope: !54)
!67 = !DILocation(line: 34, column: 12, scope: !54)
!68 = !DILocation(line: 34, column: 10, scope: !54)
!69 = !DILocation(line: 36, column: 13, scope: !54)
!70 = !DILocation(line: 36, column: 21, scope: !54)
!71 = !DILocation(line: 36, column: 5, scope: !54)
!72 = !DILocation(line: 37, column: 1, scope: !54)
!73 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 45, type: !55, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!74 = !DILocalVariable(name: "data", scope: !73, file: !45, line: 47, type: !42)
!75 = !DILocation(line: 47, column: 12, scope: !73)
!76 = !DILocalVariable(name: "dataBuffer", scope: !73, file: !45, line: 48, type: !60)
!77 = !DILocation(line: 48, column: 10, scope: !73)
!78 = !DILocation(line: 49, column: 12, scope: !73)
!79 = !DILocation(line: 49, column: 10, scope: !73)
!80 = !DILocation(line: 50, column: 86, scope: !73)
!81 = !DILocation(line: 50, column: 12, scope: !73)
!82 = !DILocation(line: 50, column: 10, scope: !73)
!83 = !DILocation(line: 52, column: 13, scope: !73)
!84 = !DILocation(line: 52, column: 21, scope: !73)
!85 = !DILocation(line: 52, column: 5, scope: !73)
!86 = !DILocation(line: 53, column: 1, scope: !73)
!87 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 57, type: !55, scopeLine: 58, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!88 = !DILocalVariable(name: "data", scope: !87, file: !45, line: 59, type: !42)
!89 = !DILocation(line: 59, column: 12, scope: !87)
!90 = !DILocalVariable(name: "dataBuffer", scope: !87, file: !45, line: 60, type: !60)
!91 = !DILocation(line: 60, column: 10, scope: !87)
!92 = !DILocation(line: 61, column: 12, scope: !87)
!93 = !DILocation(line: 61, column: 10, scope: !87)
!94 = !DILocation(line: 62, column: 86, scope: !87)
!95 = !DILocation(line: 62, column: 12, scope: !87)
!96 = !DILocation(line: 62, column: 10, scope: !87)
!97 = !DILocation(line: 64, column: 13, scope: !87)
!98 = !DILocation(line: 64, column: 29, scope: !87)
!99 = !DILocation(line: 64, column: 5, scope: !87)
!100 = !DILocation(line: 65, column: 1, scope: !87)
!101 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_61_good", scope: !45, file: !45, line: 67, type: !55, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!102 = !DILocation(line: 69, column: 5, scope: !101)
!103 = !DILocation(line: 70, column: 5, scope: !101)
!104 = !DILocation(line: 71, column: 1, scope: !101)
!105 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_badSource", scope: !48, file: !48, line: 26, type: !106, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!106 = !DISubroutineType(types: !107)
!107 = !{!42, !42}
!108 = !DILocalVariable(name: "data", arg: 1, scope: !105, file: !48, line: 26, type: !42)
!109 = !DILocation(line: 26, column: 85, scope: !105)
!110 = !DILocalVariable(name: "dataLen", scope: !111, file: !48, line: 30, type: !112)
!111 = distinct !DILexicalBlock(scope: !105, file: !48, line: 28, column: 5)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 46, baseType: !114)
!113 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!114 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!115 = !DILocation(line: 30, column: 16, scope: !111)
!116 = !DILocation(line: 30, column: 33, scope: !111)
!117 = !DILocation(line: 30, column: 26, scope: !111)
!118 = !DILocation(line: 32, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !111, file: !48, line: 32, column: 13)
!120 = !DILocation(line: 32, column: 16, scope: !119)
!121 = !DILocation(line: 32, column: 25, scope: !119)
!122 = !DILocation(line: 32, column: 13, scope: !111)
!123 = !DILocation(line: 35, column: 23, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !48, line: 35, column: 17)
!125 = distinct !DILexicalBlock(scope: !119, file: !48, line: 33, column: 9)
!126 = !DILocation(line: 35, column: 28, scope: !124)
!127 = !DILocation(line: 35, column: 27, scope: !124)
!128 = !DILocation(line: 35, column: 47, scope: !124)
!129 = !DILocation(line: 35, column: 46, scope: !124)
!130 = !DILocation(line: 35, column: 37, scope: !124)
!131 = !DILocation(line: 35, column: 57, scope: !124)
!132 = !DILocation(line: 35, column: 17, scope: !124)
!133 = !DILocation(line: 35, column: 64, scope: !124)
!134 = !DILocation(line: 35, column: 17, scope: !125)
!135 = !DILocation(line: 39, column: 34, scope: !136)
!136 = distinct !DILexicalBlock(scope: !124, file: !48, line: 36, column: 13)
!137 = !DILocation(line: 39, column: 27, scope: !136)
!138 = !DILocation(line: 39, column: 25, scope: !136)
!139 = !DILocation(line: 40, column: 21, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !48, line: 40, column: 21)
!141 = !DILocation(line: 40, column: 29, scope: !140)
!142 = !DILocation(line: 40, column: 33, scope: !140)
!143 = !DILocation(line: 40, column: 36, scope: !140)
!144 = !DILocation(line: 40, column: 41, scope: !140)
!145 = !DILocation(line: 40, column: 48, scope: !140)
!146 = !DILocation(line: 40, column: 52, scope: !140)
!147 = !DILocation(line: 40, column: 21, scope: !136)
!148 = !DILocation(line: 42, column: 21, scope: !149)
!149 = distinct !DILexicalBlock(scope: !140, file: !48, line: 41, column: 17)
!150 = !DILocation(line: 42, column: 26, scope: !149)
!151 = !DILocation(line: 42, column: 33, scope: !149)
!152 = !DILocation(line: 42, column: 37, scope: !149)
!153 = !DILocation(line: 43, column: 17, scope: !149)
!154 = !DILocation(line: 44, column: 13, scope: !136)
!155 = !DILocation(line: 47, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !124, file: !48, line: 46, column: 13)
!157 = !DILocation(line: 49, column: 17, scope: !156)
!158 = !DILocation(line: 49, column: 22, scope: !156)
!159 = !DILocation(line: 49, column: 31, scope: !156)
!160 = !DILocation(line: 51, column: 9, scope: !125)
!161 = !DILocation(line: 53, column: 12, scope: !105)
!162 = !DILocation(line: 53, column: 5, scope: !105)
!163 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodG2BSource", scope: !48, file: !48, line: 61, type: !106, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!164 = !DILocalVariable(name: "data", arg: 1, scope: !163, file: !48, line: 61, type: !42)
!165 = !DILocation(line: 61, column: 89, scope: !163)
!166 = !DILocation(line: 64, column: 12, scope: !163)
!167 = !DILocation(line: 64, column: 5, scope: !163)
!168 = !DILocation(line: 65, column: 12, scope: !163)
!169 = !DILocation(line: 65, column: 5, scope: !163)
!170 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource", scope: !48, file: !48, line: 69, type: !106, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!171 = !DILocalVariable(name: "data", arg: 1, scope: !170, file: !48, line: 69, type: !42)
!172 = !DILocation(line: 69, column: 89, scope: !170)
!173 = !DILocalVariable(name: "dataLen", scope: !174, file: !48, line: 73, type: !112)
!174 = distinct !DILexicalBlock(scope: !170, file: !48, line: 71, column: 5)
!175 = !DILocation(line: 73, column: 16, scope: !174)
!176 = !DILocation(line: 73, column: 33, scope: !174)
!177 = !DILocation(line: 73, column: 26, scope: !174)
!178 = !DILocation(line: 75, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !48, line: 75, column: 13)
!180 = !DILocation(line: 75, column: 16, scope: !179)
!181 = !DILocation(line: 75, column: 25, scope: !179)
!182 = !DILocation(line: 75, column: 13, scope: !174)
!183 = !DILocation(line: 78, column: 23, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !48, line: 78, column: 17)
!185 = distinct !DILexicalBlock(scope: !179, file: !48, line: 76, column: 9)
!186 = !DILocation(line: 78, column: 28, scope: !184)
!187 = !DILocation(line: 78, column: 27, scope: !184)
!188 = !DILocation(line: 78, column: 47, scope: !184)
!189 = !DILocation(line: 78, column: 46, scope: !184)
!190 = !DILocation(line: 78, column: 37, scope: !184)
!191 = !DILocation(line: 78, column: 57, scope: !184)
!192 = !DILocation(line: 78, column: 17, scope: !184)
!193 = !DILocation(line: 78, column: 64, scope: !184)
!194 = !DILocation(line: 78, column: 17, scope: !185)
!195 = !DILocation(line: 82, column: 34, scope: !196)
!196 = distinct !DILexicalBlock(scope: !184, file: !48, line: 79, column: 13)
!197 = !DILocation(line: 82, column: 27, scope: !196)
!198 = !DILocation(line: 82, column: 25, scope: !196)
!199 = !DILocation(line: 83, column: 21, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !48, line: 83, column: 21)
!201 = !DILocation(line: 83, column: 29, scope: !200)
!202 = !DILocation(line: 83, column: 33, scope: !200)
!203 = !DILocation(line: 83, column: 36, scope: !200)
!204 = !DILocation(line: 83, column: 41, scope: !200)
!205 = !DILocation(line: 83, column: 48, scope: !200)
!206 = !DILocation(line: 83, column: 52, scope: !200)
!207 = !DILocation(line: 83, column: 21, scope: !196)
!208 = !DILocation(line: 85, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !200, file: !48, line: 84, column: 17)
!210 = !DILocation(line: 85, column: 26, scope: !209)
!211 = !DILocation(line: 85, column: 33, scope: !209)
!212 = !DILocation(line: 85, column: 37, scope: !209)
!213 = !DILocation(line: 86, column: 17, scope: !209)
!214 = !DILocation(line: 87, column: 13, scope: !196)
!215 = !DILocation(line: 90, column: 17, scope: !216)
!216 = distinct !DILexicalBlock(scope: !184, file: !48, line: 89, column: 13)
!217 = !DILocation(line: 92, column: 17, scope: !216)
!218 = !DILocation(line: 92, column: 22, scope: !216)
!219 = !DILocation(line: 92, column: 31, scope: !216)
!220 = !DILocation(line: 94, column: 9, scope: !185)
!221 = !DILocation(line: 96, column: 12, scope: !170)
!222 = !DILocation(line: 96, column: 5, scope: !170)
!223 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !224, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !42}
!226 = !DILocalVariable(name: "line", arg: 1, scope: !223, file: !3, line: 11, type: !42)
!227 = !DILocation(line: 11, column: 25, scope: !223)
!228 = !DILocation(line: 13, column: 1, scope: !223)
!229 = !DILocation(line: 14, column: 8, scope: !230)
!230 = distinct !DILexicalBlock(scope: !223, file: !3, line: 14, column: 8)
!231 = !DILocation(line: 14, column: 13, scope: !230)
!232 = !DILocation(line: 14, column: 8, scope: !223)
!233 = !DILocation(line: 16, column: 24, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !3, line: 15, column: 5)
!235 = !DILocation(line: 16, column: 9, scope: !234)
!236 = !DILocation(line: 17, column: 5, scope: !234)
!237 = !DILocation(line: 18, column: 5, scope: !223)
!238 = !DILocation(line: 19, column: 1, scope: !223)
!239 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !224, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!240 = !DILocalVariable(name: "line", arg: 1, scope: !239, file: !3, line: 20, type: !42)
!241 = !DILocation(line: 20, column: 29, scope: !239)
!242 = !DILocation(line: 22, column: 8, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !3, line: 22, column: 8)
!244 = !DILocation(line: 22, column: 13, scope: !243)
!245 = !DILocation(line: 22, column: 8, scope: !239)
!246 = !DILocation(line: 24, column: 24, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !3, line: 23, column: 5)
!248 = !DILocation(line: 24, column: 9, scope: !247)
!249 = !DILocation(line: 25, column: 5, scope: !247)
!250 = !DILocation(line: 26, column: 1, scope: !239)
!251 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !252, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !113, line: 74, baseType: !23)
!256 = !DILocalVariable(name: "line", arg: 1, scope: !251, file: !3, line: 27, type: !254)
!257 = !DILocation(line: 27, column: 29, scope: !251)
!258 = !DILocation(line: 29, column: 8, scope: !259)
!259 = distinct !DILexicalBlock(scope: !251, file: !3, line: 29, column: 8)
!260 = !DILocation(line: 29, column: 13, scope: !259)
!261 = !DILocation(line: 29, column: 8, scope: !251)
!262 = !DILocation(line: 31, column: 27, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !3, line: 30, column: 5)
!264 = !DILocation(line: 31, column: 9, scope: !263)
!265 = !DILocation(line: 32, column: 5, scope: !263)
!266 = !DILocation(line: 33, column: 1, scope: !251)
!267 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !268, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !23}
!270 = !DILocalVariable(name: "intNumber", arg: 1, scope: !267, file: !3, line: 35, type: !23)
!271 = !DILocation(line: 35, column: 24, scope: !267)
!272 = !DILocation(line: 37, column: 20, scope: !267)
!273 = !DILocation(line: 37, column: 5, scope: !267)
!274 = !DILocation(line: 38, column: 1, scope: !267)
!275 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !276, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !278}
!278 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!279 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !275, file: !3, line: 40, type: !278)
!280 = !DILocation(line: 40, column: 28, scope: !275)
!281 = !DILocation(line: 42, column: 21, scope: !275)
!282 = !DILocation(line: 42, column: 5, scope: !275)
!283 = !DILocation(line: 43, column: 1, scope: !275)
!284 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !285, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !287}
!287 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!288 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !284, file: !3, line: 45, type: !287)
!289 = !DILocation(line: 45, column: 28, scope: !284)
!290 = !DILocation(line: 47, column: 20, scope: !284)
!291 = !DILocation(line: 47, column: 5, scope: !284)
!292 = !DILocation(line: 48, column: 1, scope: !284)
!293 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !294, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !296}
!296 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!297 = !DILocalVariable(name: "longNumber", arg: 1, scope: !293, file: !3, line: 50, type: !296)
!298 = !DILocation(line: 50, column: 26, scope: !293)
!299 = !DILocation(line: 52, column: 21, scope: !293)
!300 = !DILocation(line: 52, column: 5, scope: !293)
!301 = !DILocation(line: 53, column: 1, scope: !293)
!302 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !303, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !305}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !306, line: 27, baseType: !307)
!306 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !308, line: 44, baseType: !296)
!308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!309 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !302, file: !3, line: 55, type: !305)
!310 = !DILocation(line: 55, column: 33, scope: !302)
!311 = !DILocation(line: 57, column: 29, scope: !302)
!312 = !DILocation(line: 57, column: 5, scope: !302)
!313 = !DILocation(line: 58, column: 1, scope: !302)
!314 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !315, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !112}
!317 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !314, file: !3, line: 60, type: !112)
!318 = !DILocation(line: 60, column: 29, scope: !314)
!319 = !DILocation(line: 62, column: 21, scope: !314)
!320 = !DILocation(line: 62, column: 5, scope: !314)
!321 = !DILocation(line: 63, column: 1, scope: !314)
!322 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !323, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !43}
!325 = !DILocalVariable(name: "charHex", arg: 1, scope: !322, file: !3, line: 65, type: !43)
!326 = !DILocation(line: 65, column: 29, scope: !322)
!327 = !DILocation(line: 67, column: 22, scope: !322)
!328 = !DILocation(line: 67, column: 5, scope: !322)
!329 = !DILocation(line: 68, column: 1, scope: !322)
!330 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !331, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !255}
!333 = !DILocalVariable(name: "wideChar", arg: 1, scope: !330, file: !3, line: 70, type: !255)
!334 = !DILocation(line: 70, column: 29, scope: !330)
!335 = !DILocalVariable(name: "s", scope: !330, file: !3, line: 74, type: !336)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 64, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 2)
!339 = !DILocation(line: 74, column: 13, scope: !330)
!340 = !DILocation(line: 75, column: 16, scope: !330)
!341 = !DILocation(line: 75, column: 9, scope: !330)
!342 = !DILocation(line: 75, column: 14, scope: !330)
!343 = !DILocation(line: 76, column: 9, scope: !330)
!344 = !DILocation(line: 76, column: 14, scope: !330)
!345 = !DILocation(line: 77, column: 21, scope: !330)
!346 = !DILocation(line: 77, column: 5, scope: !330)
!347 = !DILocation(line: 78, column: 1, scope: !330)
!348 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !349, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !7}
!351 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !348, file: !3, line: 80, type: !7)
!352 = !DILocation(line: 80, column: 33, scope: !348)
!353 = !DILocation(line: 82, column: 20, scope: !348)
!354 = !DILocation(line: 82, column: 5, scope: !348)
!355 = !DILocation(line: 83, column: 1, scope: !348)
!356 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !357, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !25}
!359 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !356, file: !3, line: 85, type: !25)
!360 = !DILocation(line: 85, column: 45, scope: !356)
!361 = !DILocation(line: 87, column: 22, scope: !356)
!362 = !DILocation(line: 87, column: 5, scope: !356)
!363 = !DILocation(line: 88, column: 1, scope: !356)
!364 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !365, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !367}
!367 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!368 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !364, file: !3, line: 90, type: !367)
!369 = !DILocation(line: 90, column: 29, scope: !364)
!370 = !DILocation(line: 92, column: 20, scope: !364)
!371 = !DILocation(line: 92, column: 5, scope: !364)
!372 = !DILocation(line: 93, column: 1, scope: !364)
!373 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !374, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !378, line: 100, baseType: !379)
!378 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_419/source_code")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !378, line: 96, size: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !379, file: !378, line: 98, baseType: !23, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !379, file: !378, line: 99, baseType: !23, size: 32, offset: 32)
!383 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !373, file: !3, line: 95, type: !376)
!384 = !DILocation(line: 95, column: 40, scope: !373)
!385 = !DILocation(line: 97, column: 26, scope: !373)
!386 = !DILocation(line: 97, column: 47, scope: !373)
!387 = !DILocation(line: 97, column: 55, scope: !373)
!388 = !DILocation(line: 97, column: 76, scope: !373)
!389 = !DILocation(line: 97, column: 5, scope: !373)
!390 = !DILocation(line: 98, column: 1, scope: !373)
!391 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !392, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !394, !112}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!395 = !DILocalVariable(name: "bytes", arg: 1, scope: !391, file: !3, line: 100, type: !394)
!396 = !DILocation(line: 100, column: 38, scope: !391)
!397 = !DILocalVariable(name: "numBytes", arg: 2, scope: !391, file: !3, line: 100, type: !112)
!398 = !DILocation(line: 100, column: 52, scope: !391)
!399 = !DILocalVariable(name: "i", scope: !391, file: !3, line: 102, type: !112)
!400 = !DILocation(line: 102, column: 12, scope: !391)
!401 = !DILocation(line: 103, column: 12, scope: !402)
!402 = distinct !DILexicalBlock(scope: !391, file: !3, line: 103, column: 5)
!403 = !DILocation(line: 103, column: 10, scope: !402)
!404 = !DILocation(line: 103, column: 17, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !3, line: 103, column: 5)
!406 = !DILocation(line: 103, column: 21, scope: !405)
!407 = !DILocation(line: 103, column: 19, scope: !405)
!408 = !DILocation(line: 103, column: 5, scope: !402)
!409 = !DILocation(line: 105, column: 24, scope: !410)
!410 = distinct !DILexicalBlock(scope: !405, file: !3, line: 104, column: 5)
!411 = !DILocation(line: 105, column: 30, scope: !410)
!412 = !DILocation(line: 105, column: 9, scope: !410)
!413 = !DILocation(line: 106, column: 5, scope: !410)
!414 = !DILocation(line: 103, column: 31, scope: !405)
!415 = !DILocation(line: 103, column: 5, scope: !405)
!416 = distinct !{!416, !408, !417, !418}
!417 = !DILocation(line: 106, column: 5, scope: !402)
!418 = !{!"llvm.loop.mustprogress"}
!419 = !DILocation(line: 107, column: 5, scope: !391)
!420 = !DILocation(line: 108, column: 1, scope: !391)
!421 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !422, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!422 = !DISubroutineType(types: !423)
!423 = !{!112, !394, !112, !42}
!424 = !DILocalVariable(name: "bytes", arg: 1, scope: !421, file: !3, line: 113, type: !394)
!425 = !DILocation(line: 113, column: 39, scope: !421)
!426 = !DILocalVariable(name: "numBytes", arg: 2, scope: !421, file: !3, line: 113, type: !112)
!427 = !DILocation(line: 113, column: 53, scope: !421)
!428 = !DILocalVariable(name: "hex", arg: 3, scope: !421, file: !3, line: 113, type: !42)
!429 = !DILocation(line: 113, column: 71, scope: !421)
!430 = !DILocalVariable(name: "numWritten", scope: !421, file: !3, line: 115, type: !112)
!431 = !DILocation(line: 115, column: 12, scope: !421)
!432 = !DILocation(line: 121, column: 5, scope: !421)
!433 = !DILocation(line: 121, column: 12, scope: !421)
!434 = !DILocation(line: 121, column: 25, scope: !421)
!435 = !DILocation(line: 121, column: 23, scope: !421)
!436 = !DILocation(line: 121, column: 34, scope: !421)
!437 = !DILocation(line: 121, column: 37, scope: !421)
!438 = !DILocation(line: 121, column: 67, scope: !421)
!439 = !DILocation(line: 121, column: 70, scope: !421)
!440 = !DILocation(line: 0, scope: !421)
!441 = !DILocalVariable(name: "byte", scope: !442, file: !3, line: 123, type: !23)
!442 = distinct !DILexicalBlock(scope: !421, file: !3, line: 122, column: 5)
!443 = !DILocation(line: 123, column: 13, scope: !442)
!444 = !DILocation(line: 124, column: 17, scope: !442)
!445 = !DILocation(line: 124, column: 25, scope: !442)
!446 = !DILocation(line: 124, column: 23, scope: !442)
!447 = !DILocation(line: 124, column: 9, scope: !442)
!448 = !DILocation(line: 125, column: 45, scope: !442)
!449 = !DILocation(line: 125, column: 29, scope: !442)
!450 = !DILocation(line: 125, column: 9, scope: !442)
!451 = !DILocation(line: 125, column: 15, scope: !442)
!452 = !DILocation(line: 125, column: 27, scope: !442)
!453 = !DILocation(line: 126, column: 9, scope: !442)
!454 = distinct !{!454, !432, !455, !418}
!455 = !DILocation(line: 127, column: 5, scope: !421)
!456 = !DILocation(line: 129, column: 12, scope: !421)
!457 = !DILocation(line: 129, column: 5, scope: !421)
!458 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !459, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!459 = !DISubroutineType(types: !460)
!460 = !{!112, !394, !112, !254}
!461 = !DILocalVariable(name: "bytes", arg: 1, scope: !458, file: !3, line: 135, type: !394)
!462 = !DILocation(line: 135, column: 41, scope: !458)
!463 = !DILocalVariable(name: "numBytes", arg: 2, scope: !458, file: !3, line: 135, type: !112)
!464 = !DILocation(line: 135, column: 55, scope: !458)
!465 = !DILocalVariable(name: "hex", arg: 3, scope: !458, file: !3, line: 135, type: !254)
!466 = !DILocation(line: 135, column: 76, scope: !458)
!467 = !DILocalVariable(name: "numWritten", scope: !458, file: !3, line: 137, type: !112)
!468 = !DILocation(line: 137, column: 12, scope: !458)
!469 = !DILocation(line: 143, column: 5, scope: !458)
!470 = !DILocation(line: 143, column: 12, scope: !458)
!471 = !DILocation(line: 143, column: 25, scope: !458)
!472 = !DILocation(line: 143, column: 23, scope: !458)
!473 = !DILocation(line: 143, column: 34, scope: !458)
!474 = !DILocation(line: 143, column: 47, scope: !458)
!475 = !DILocation(line: 143, column: 55, scope: !458)
!476 = !DILocation(line: 143, column: 53, scope: !458)
!477 = !DILocation(line: 143, column: 37, scope: !458)
!478 = !DILocation(line: 143, column: 68, scope: !458)
!479 = !DILocation(line: 143, column: 81, scope: !458)
!480 = !DILocation(line: 143, column: 89, scope: !458)
!481 = !DILocation(line: 143, column: 87, scope: !458)
!482 = !DILocation(line: 143, column: 100, scope: !458)
!483 = !DILocation(line: 143, column: 71, scope: !458)
!484 = !DILocation(line: 0, scope: !458)
!485 = !DILocalVariable(name: "byte", scope: !486, file: !3, line: 145, type: !23)
!486 = distinct !DILexicalBlock(scope: !458, file: !3, line: 144, column: 5)
!487 = !DILocation(line: 145, column: 13, scope: !486)
!488 = !DILocation(line: 146, column: 18, scope: !486)
!489 = !DILocation(line: 146, column: 26, scope: !486)
!490 = !DILocation(line: 146, column: 24, scope: !486)
!491 = !DILocation(line: 146, column: 9, scope: !486)
!492 = !DILocation(line: 147, column: 45, scope: !486)
!493 = !DILocation(line: 147, column: 29, scope: !486)
!494 = !DILocation(line: 147, column: 9, scope: !486)
!495 = !DILocation(line: 147, column: 15, scope: !486)
!496 = !DILocation(line: 147, column: 27, scope: !486)
!497 = !DILocation(line: 148, column: 9, scope: !486)
!498 = distinct !{!498, !469, !499, !418}
!499 = !DILocation(line: 149, column: 5, scope: !458)
!500 = !DILocation(line: 151, column: 12, scope: !458)
!501 = !DILocation(line: 151, column: 5, scope: !458)
!502 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !503, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DISubroutineType(types: !504)
!504 = !{!23}
!505 = !DILocation(line: 158, column: 5, scope: !502)
!506 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !503, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!507 = !DILocation(line: 163, column: 5, scope: !506)
!508 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !503, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!509 = !DILocation(line: 168, column: 13, scope: !508)
!510 = !DILocation(line: 168, column: 20, scope: !508)
!511 = !DILocation(line: 168, column: 5, scope: !508)
!512 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!513 = !DILocation(line: 187, column: 16, scope: !512)
!514 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!515 = !DILocation(line: 188, column: 16, scope: !514)
!516 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DILocation(line: 189, column: 16, scope: !516)
!518 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DILocation(line: 190, column: 16, scope: !518)
!520 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!521 = !DILocation(line: 191, column: 16, scope: !520)
!522 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!523 = !DILocation(line: 192, column: 16, scope: !522)
!524 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!525 = !DILocation(line: 193, column: 16, scope: !524)
!526 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DILocation(line: 194, column: 16, scope: !526)
!528 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!529 = !DILocation(line: 195, column: 16, scope: !528)
!530 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!531 = !DILocation(line: 198, column: 15, scope: !530)
!532 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DILocation(line: 199, column: 15, scope: !532)
!534 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!535 = !DILocation(line: 200, column: 15, scope: !534)
!536 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DILocation(line: 201, column: 15, scope: !536)
!538 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DILocation(line: 202, column: 15, scope: !538)
!540 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DILocation(line: 203, column: 15, scope: !540)
!542 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DILocation(line: 204, column: 15, scope: !542)
!544 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DILocation(line: 205, column: 15, scope: !544)
!546 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 206, column: 15, scope: !546)
