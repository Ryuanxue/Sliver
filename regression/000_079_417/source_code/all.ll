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
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.22 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53_bad() #0 !dbg !58 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !63, metadata !DIExpression()), !dbg !67
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !67
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !68
  store i8* %arraydecay, i8** %data, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !70, metadata !DIExpression()), !dbg !75
  %1 = load i8*, i8** %data, align 8, !dbg !76
  %call = call i64 @strlen(i8* %1) #7, !dbg !77
  store i64 %call, i64* %dataLen, align 8, !dbg !75
  %2 = load i64, i64* %dataLen, align 8, !dbg !78
  %sub = sub i64 100, %2, !dbg !80
  %cmp = icmp ugt i64 %sub, 1, !dbg !81
  br i1 %cmp, label %if.then, label %if.end18, !dbg !82

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !83
  %4 = load i64, i64* %dataLen, align 8, !dbg !86
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !87
  %5 = load i64, i64* %dataLen, align 8, !dbg !88
  %sub1 = sub i64 100, %5, !dbg !89
  %conv = trunc i64 %sub1 to i32, !dbg !90
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !91
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !92
  %cmp3 = icmp ne i8* %call2, null, !dbg !93
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !94

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !95
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !97
  store i64 %call6, i64* %dataLen, align 8, !dbg !98
  %8 = load i64, i64* %dataLen, align 8, !dbg !99
  %cmp7 = icmp ugt i64 %8, 0, !dbg !101
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !102

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !103
  %10 = load i64, i64* %dataLen, align 8, !dbg !104
  %sub9 = sub i64 %10, 1, !dbg !105
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !103
  %11 = load i8, i8* %arrayidx, align 1, !dbg !103
  %conv10 = sext i8 %11 to i32, !dbg !103
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !106
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !107

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !108
  %13 = load i64, i64* %dataLen, align 8, !dbg !110
  %sub14 = sub i64 %13, 1, !dbg !111
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !108
  store i8 0, i8* %arrayidx15, align 1, !dbg !112
  br label %if.end, !dbg !113

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !114

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !115
  %14 = load i8*, i8** %data, align 8, !dbg !117
  %15 = load i64, i64* %dataLen, align 8, !dbg !118
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !117
  store i8 0, i8* %arrayidx16, align 1, !dbg !119
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !120

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !121
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53b_badSink(i8* %16), !dbg !122
  ret void, !dbg !123
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !124 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !127, metadata !DIExpression()), !dbg !128
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !128
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !128
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !129
  store i8* %arraydecay, i8** %data, align 8, !dbg !130
  %1 = load i8*, i8** %data, align 8, !dbg !131
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !132
  %2 = load i8*, i8** %data, align 8, !dbg !133
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53b_goodG2BSink(i8* %2), !dbg !134
  ret void, !dbg !135
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !136 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !140
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !140
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !141
  store i8* %arraydecay, i8** %data, align 8, !dbg !142
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !143, metadata !DIExpression()), !dbg !145
  %1 = load i8*, i8** %data, align 8, !dbg !146
  %call = call i64 @strlen(i8* %1) #7, !dbg !147
  store i64 %call, i64* %dataLen, align 8, !dbg !145
  %2 = load i64, i64* %dataLen, align 8, !dbg !148
  %sub = sub i64 100, %2, !dbg !150
  %cmp = icmp ugt i64 %sub, 1, !dbg !151
  br i1 %cmp, label %if.then, label %if.end18, !dbg !152

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !153
  %4 = load i64, i64* %dataLen, align 8, !dbg !156
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !157
  %5 = load i64, i64* %dataLen, align 8, !dbg !158
  %sub1 = sub i64 100, %5, !dbg !159
  %conv = trunc i64 %sub1 to i32, !dbg !160
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !161
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !162
  %cmp3 = icmp ne i8* %call2, null, !dbg !163
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !164

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !165
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !167
  store i64 %call6, i64* %dataLen, align 8, !dbg !168
  %8 = load i64, i64* %dataLen, align 8, !dbg !169
  %cmp7 = icmp ugt i64 %8, 0, !dbg !171
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !172

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !173
  %10 = load i64, i64* %dataLen, align 8, !dbg !174
  %sub9 = sub i64 %10, 1, !dbg !175
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !173
  %11 = load i8, i8* %arrayidx, align 1, !dbg !173
  %conv10 = sext i8 %11 to i32, !dbg !173
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !176
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !177

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !178
  %13 = load i64, i64* %dataLen, align 8, !dbg !180
  %sub14 = sub i64 %13, 1, !dbg !181
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !178
  store i8 0, i8* %arrayidx15, align 1, !dbg !182
  br label %if.end, !dbg !183

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !184

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !185
  %14 = load i8*, i8** %data, align 8, !dbg !187
  %15 = load i64, i64* %dataLen, align 8, !dbg !188
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !187
  store i8 0, i8* %arrayidx16, align 1, !dbg !189
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !190

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !191
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53b_goodB2GSink(i8* %16), !dbg !192
  ret void, !dbg !193
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53_good() #0 !dbg !194 {
entry:
  call void @goodG2B(), !dbg !195
  call void @goodB2G(), !dbg !196
  ret void, !dbg !197
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53b_badSink(i8* %data) #0 !dbg !198 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !201, metadata !DIExpression()), !dbg !202
  %0 = load i8*, i8** %data.addr, align 8, !dbg !203
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53c_badSink(i8* %0), !dbg !204
  ret void, !dbg !205
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53b_goodG2BSink(i8* %data) #0 !dbg !206 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = load i8*, i8** %data.addr, align 8, !dbg !209
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53c_goodG2BSink(i8* %0), !dbg !210
  ret void, !dbg !211
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53b_goodB2GSink(i8* %data) #0 !dbg !212 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !213, metadata !DIExpression()), !dbg !214
  %0 = load i8*, i8** %data.addr, align 8, !dbg !215
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53c_goodB2GSink(i8* %0), !dbg !216
  ret void, !dbg !217
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53c_badSink(i8* %data) #0 !dbg !218 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !219, metadata !DIExpression()), !dbg !220
  %0 = load i8*, i8** %data.addr, align 8, !dbg !221
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53d_badSink(i8* %0), !dbg !222
  ret void, !dbg !223
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53c_goodG2BSink(i8* %data) #0 !dbg !224 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !225, metadata !DIExpression()), !dbg !226
  %0 = load i8*, i8** %data.addr, align 8, !dbg !227
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53d_goodG2BSink(i8* %0), !dbg !228
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53c_goodB2GSink(i8* %data) #0 !dbg !230 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !231, metadata !DIExpression()), !dbg !232
  %0 = load i8*, i8** %data.addr, align 8, !dbg !233
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53d_goodB2GSink(i8* %0), !dbg !234
  ret void, !dbg !235
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53d_badSink(i8* %data) #0 !dbg !236 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !237, metadata !DIExpression()), !dbg !238
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !239
  %1 = load i8*, i8** %data.addr, align 8, !dbg !240
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !241
  ret void, !dbg !242
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53d_goodG2BSink(i8* %data) #0 !dbg !243 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !246
  %1 = load i8*, i8** %data.addr, align 8, !dbg !247
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !248
  ret void, !dbg !249
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_53d_goodB2GSink(i8* %data) #0 !dbg !250 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !251, metadata !DIExpression()), !dbg !252
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !253
  %1 = load i8*, i8** %data.addr, align 8, !dbg !254
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %1), !dbg !255
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !257 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !258, metadata !DIExpression()), !dbg !259
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)), !dbg !260
  %0 = load i8*, i8** %line.addr, align 8, !dbg !261
  %cmp = icmp ne i8* %0, null, !dbg !263
  br i1 %cmp, label %if.then, label %if.end, !dbg !264

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !265
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.23, i64 0, i64 0), i8* %1), !dbg !267
  br label %if.end, !dbg !268

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !269
  ret void, !dbg !270
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !271 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = load i8*, i8** %line.addr, align 8, !dbg !274
  %cmp = icmp ne i8* %0, null, !dbg !276
  br i1 %cmp, label %if.then, label %if.end, !dbg !277

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !278
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.23, i64 0, i64 0), i8* %1), !dbg !280
  br label %if.end, !dbg !281

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !283 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !288, metadata !DIExpression()), !dbg !289
  %0 = load i32*, i32** %line.addr, align 8, !dbg !290
  %cmp = icmp ne i32* %0, null, !dbg !292
  br i1 %cmp, label %if.then, label %if.end, !dbg !293

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !294
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !296
  br label %if.end, !dbg !297

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !298
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !299 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !304
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !307 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !313
  %conv = sext i16 %0 to i32, !dbg !313
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !316 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !322
  %conv = fpext float %0 to double, !dbg !322
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !325 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !331
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !332
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !334 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !341, metadata !DIExpression()), !dbg !342
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !343
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !344
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !346 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !351
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !352
  ret void, !dbg !353
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !354 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !357, metadata !DIExpression()), !dbg !358
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !359
  %conv = sext i8 %0 to i32, !dbg !359
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !362 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !367, metadata !DIExpression()), !dbg !371
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !372
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !373
  store i32 %0, i32* %arrayidx, align 4, !dbg !374
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !375
  store i32 0, i32* %arrayidx1, align 4, !dbg !376
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !377
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !378
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !380 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !388 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !393
  %conv = zext i8 %0 to i32, !dbg !393
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !396 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !400, metadata !DIExpression()), !dbg !401
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !402
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !403
  ret void, !dbg !404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !405 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !417
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !418
  %1 = load i32, i32* %intOne, align 4, !dbg !418
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !419
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !420
  %3 = load i32, i32* %intTwo, align 4, !dbg !420
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !421
  ret void, !dbg !422
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !423 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !427, metadata !DIExpression()), !dbg !428
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !429, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.declare(metadata i64* %i, metadata !431, metadata !DIExpression()), !dbg !432
  store i64 0, i64* %i, align 8, !dbg !433
  br label %for.cond, !dbg !435

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !436
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !438
  %cmp = icmp ult i64 %0, %1, !dbg !439
  br i1 %cmp, label %for.body, label %for.end, !dbg !440

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !441
  %3 = load i64, i64* %i, align 8, !dbg !443
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !441
  %4 = load i8, i8* %arrayidx, align 1, !dbg !441
  %conv = zext i8 %4 to i32, !dbg !441
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !444
  br label %for.inc, !dbg !445

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !446
  %inc = add i64 %5, 1, !dbg !446
  store i64 %inc, i64* %i, align 8, !dbg !446
  br label %for.cond, !dbg !447, !llvm.loop !448

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !451
  ret void, !dbg !452
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !453 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !456, metadata !DIExpression()), !dbg !457
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !458, metadata !DIExpression()), !dbg !459
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !460, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !462, metadata !DIExpression()), !dbg !463
  store i64 0, i64* %numWritten, align 8, !dbg !463
  br label %while.cond, !dbg !464

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !465
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !466
  %cmp = icmp ult i64 %0, %1, !dbg !467
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !468

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !469
  %2 = load i16*, i16** %call, align 8, !dbg !469
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !469
  %4 = load i64, i64* %numWritten, align 8, !dbg !469
  %mul = mul i64 2, %4, !dbg !469
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !469
  %5 = load i8, i8* %arrayidx, align 1, !dbg !469
  %conv = sext i8 %5 to i32, !dbg !469
  %idxprom = sext i32 %conv to i64, !dbg !469
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !469
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !469
  %conv2 = zext i16 %6 to i32, !dbg !469
  %and = and i32 %conv2, 4096, !dbg !469
  %tobool = icmp ne i32 %and, 0, !dbg !469
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !470

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !471
  %7 = load i16*, i16** %call3, align 8, !dbg !471
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !471
  %9 = load i64, i64* %numWritten, align 8, !dbg !471
  %mul4 = mul i64 2, %9, !dbg !471
  %add = add i64 %mul4, 1, !dbg !471
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !471
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !471
  %conv6 = sext i8 %10 to i32, !dbg !471
  %idxprom7 = sext i32 %conv6 to i64, !dbg !471
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !471
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !471
  %conv9 = zext i16 %11 to i32, !dbg !471
  %and10 = and i32 %conv9, 4096, !dbg !471
  %tobool11 = icmp ne i32 %and10, 0, !dbg !470
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !472
  br i1 %12, label %while.body, label %while.end, !dbg !464

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !473, metadata !DIExpression()), !dbg !475
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !476
  %14 = load i64, i64* %numWritten, align 8, !dbg !477
  %mul12 = mul i64 2, %14, !dbg !478
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !476
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !479
  %15 = load i32, i32* %byte, align 4, !dbg !480
  %conv15 = trunc i32 %15 to i8, !dbg !481
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !482
  %17 = load i64, i64* %numWritten, align 8, !dbg !483
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !482
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !484
  %18 = load i64, i64* %numWritten, align 8, !dbg !485
  %inc = add i64 %18, 1, !dbg !485
  store i64 %inc, i64* %numWritten, align 8, !dbg !485
  br label %while.cond, !dbg !464, !llvm.loop !486

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !488
  ret i64 %19, !dbg !489
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !490 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !493, metadata !DIExpression()), !dbg !494
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !495, metadata !DIExpression()), !dbg !496
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !497, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !499, metadata !DIExpression()), !dbg !500
  store i64 0, i64* %numWritten, align 8, !dbg !500
  br label %while.cond, !dbg !501

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !502
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !503
  %cmp = icmp ult i64 %0, %1, !dbg !504
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !505

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !506
  %3 = load i64, i64* %numWritten, align 8, !dbg !507
  %mul = mul i64 2, %3, !dbg !508
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !506
  %4 = load i32, i32* %arrayidx, align 4, !dbg !506
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !509
  %tobool = icmp ne i32 %call, 0, !dbg !509
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !510

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !511
  %6 = load i64, i64* %numWritten, align 8, !dbg !512
  %mul1 = mul i64 2, %6, !dbg !513
  %add = add i64 %mul1, 1, !dbg !514
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !511
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !511
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !515
  %tobool4 = icmp ne i32 %call3, 0, !dbg !510
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !516
  br i1 %8, label %while.body, label %while.end, !dbg !501

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !517, metadata !DIExpression()), !dbg !519
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !520
  %10 = load i64, i64* %numWritten, align 8, !dbg !521
  %mul5 = mul i64 2, %10, !dbg !522
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !520
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !523
  %11 = load i32, i32* %byte, align 4, !dbg !524
  %conv = trunc i32 %11 to i8, !dbg !525
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !526
  %13 = load i64, i64* %numWritten, align 8, !dbg !527
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !526
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !528
  %14 = load i64, i64* %numWritten, align 8, !dbg !529
  %inc = add i64 %14, 1, !dbg !529
  store i64 %inc, i64* %numWritten, align 8, !dbg !529
  br label %while.cond, !dbg !501, !llvm.loop !530

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !532
  ret i64 %15, !dbg !533
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !534 {
entry:
  ret i32 1, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !538 {
entry:
  ret i32 0, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !540 {
entry:
  %call = call i32 @rand() #8, !dbg !541
  %rem = srem i32 %call, 2, !dbg !542
  ret i32 %rem, !dbg !543
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !544 {
entry:
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !546 {
entry:
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !548 {
entry:
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !550 {
entry:
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !578 {
entry:
  ret void, !dbg !579
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

!llvm.dbg.cu = !{!44, !48, !50, !52, !2}
!llvm.ident = !{!54, !54, !54, !54, !54}
!llvm.module.flags = !{!55, !56, !57}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_417/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_417/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_417/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_417/source_code")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_417/source_code")
!54 = !{!"clang version 12.0.0"}
!55 = !{i32 7, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53_bad", scope: !45, file: !45, line: 29, type: !59, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocalVariable(name: "data", scope: !58, file: !45, line: 31, type: !42)
!62 = !DILocation(line: 31, column: 12, scope: !58)
!63 = !DILocalVariable(name: "dataBuffer", scope: !58, file: !45, line: 32, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 100)
!67 = !DILocation(line: 32, column: 10, scope: !58)
!68 = !DILocation(line: 33, column: 12, scope: !58)
!69 = !DILocation(line: 33, column: 10, scope: !58)
!70 = !DILocalVariable(name: "dataLen", scope: !71, file: !45, line: 36, type: !72)
!71 = distinct !DILexicalBlock(scope: !58, file: !45, line: 34, column: 5)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !73, line: 46, baseType: !74)
!73 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!74 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!75 = !DILocation(line: 36, column: 16, scope: !71)
!76 = !DILocation(line: 36, column: 33, scope: !71)
!77 = !DILocation(line: 36, column: 26, scope: !71)
!78 = !DILocation(line: 38, column: 17, scope: !79)
!79 = distinct !DILexicalBlock(scope: !71, file: !45, line: 38, column: 13)
!80 = !DILocation(line: 38, column: 16, scope: !79)
!81 = !DILocation(line: 38, column: 25, scope: !79)
!82 = !DILocation(line: 38, column: 13, scope: !71)
!83 = !DILocation(line: 41, column: 23, scope: !84)
!84 = distinct !DILexicalBlock(scope: !85, file: !45, line: 41, column: 17)
!85 = distinct !DILexicalBlock(scope: !79, file: !45, line: 39, column: 9)
!86 = !DILocation(line: 41, column: 28, scope: !84)
!87 = !DILocation(line: 41, column: 27, scope: !84)
!88 = !DILocation(line: 41, column: 47, scope: !84)
!89 = !DILocation(line: 41, column: 46, scope: !84)
!90 = !DILocation(line: 41, column: 37, scope: !84)
!91 = !DILocation(line: 41, column: 57, scope: !84)
!92 = !DILocation(line: 41, column: 17, scope: !84)
!93 = !DILocation(line: 41, column: 64, scope: !84)
!94 = !DILocation(line: 41, column: 17, scope: !85)
!95 = !DILocation(line: 45, column: 34, scope: !96)
!96 = distinct !DILexicalBlock(scope: !84, file: !45, line: 42, column: 13)
!97 = !DILocation(line: 45, column: 27, scope: !96)
!98 = !DILocation(line: 45, column: 25, scope: !96)
!99 = !DILocation(line: 46, column: 21, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !45, line: 46, column: 21)
!101 = !DILocation(line: 46, column: 29, scope: !100)
!102 = !DILocation(line: 46, column: 33, scope: !100)
!103 = !DILocation(line: 46, column: 36, scope: !100)
!104 = !DILocation(line: 46, column: 41, scope: !100)
!105 = !DILocation(line: 46, column: 48, scope: !100)
!106 = !DILocation(line: 46, column: 52, scope: !100)
!107 = !DILocation(line: 46, column: 21, scope: !96)
!108 = !DILocation(line: 48, column: 21, scope: !109)
!109 = distinct !DILexicalBlock(scope: !100, file: !45, line: 47, column: 17)
!110 = !DILocation(line: 48, column: 26, scope: !109)
!111 = !DILocation(line: 48, column: 33, scope: !109)
!112 = !DILocation(line: 48, column: 37, scope: !109)
!113 = !DILocation(line: 49, column: 17, scope: !109)
!114 = !DILocation(line: 50, column: 13, scope: !96)
!115 = !DILocation(line: 53, column: 17, scope: !116)
!116 = distinct !DILexicalBlock(scope: !84, file: !45, line: 52, column: 13)
!117 = !DILocation(line: 55, column: 17, scope: !116)
!118 = !DILocation(line: 55, column: 22, scope: !116)
!119 = !DILocation(line: 55, column: 31, scope: !116)
!120 = !DILocation(line: 57, column: 9, scope: !85)
!121 = !DILocation(line: 59, column: 73, scope: !58)
!122 = !DILocation(line: 59, column: 5, scope: !58)
!123 = !DILocation(line: 60, column: 1, scope: !58)
!124 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 68, type: !59, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!125 = !DILocalVariable(name: "data", scope: !124, file: !45, line: 70, type: !42)
!126 = !DILocation(line: 70, column: 12, scope: !124)
!127 = !DILocalVariable(name: "dataBuffer", scope: !124, file: !45, line: 71, type: !64)
!128 = !DILocation(line: 71, column: 10, scope: !124)
!129 = !DILocation(line: 72, column: 12, scope: !124)
!130 = !DILocation(line: 72, column: 10, scope: !124)
!131 = !DILocation(line: 74, column: 12, scope: !124)
!132 = !DILocation(line: 74, column: 5, scope: !124)
!133 = !DILocation(line: 75, column: 77, scope: !124)
!134 = !DILocation(line: 75, column: 5, scope: !124)
!135 = !DILocation(line: 76, column: 1, scope: !124)
!136 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 80, type: !59, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!137 = !DILocalVariable(name: "data", scope: !136, file: !45, line: 82, type: !42)
!138 = !DILocation(line: 82, column: 12, scope: !136)
!139 = !DILocalVariable(name: "dataBuffer", scope: !136, file: !45, line: 83, type: !64)
!140 = !DILocation(line: 83, column: 10, scope: !136)
!141 = !DILocation(line: 84, column: 12, scope: !136)
!142 = !DILocation(line: 84, column: 10, scope: !136)
!143 = !DILocalVariable(name: "dataLen", scope: !144, file: !45, line: 87, type: !72)
!144 = distinct !DILexicalBlock(scope: !136, file: !45, line: 85, column: 5)
!145 = !DILocation(line: 87, column: 16, scope: !144)
!146 = !DILocation(line: 87, column: 33, scope: !144)
!147 = !DILocation(line: 87, column: 26, scope: !144)
!148 = !DILocation(line: 89, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !45, line: 89, column: 13)
!150 = !DILocation(line: 89, column: 16, scope: !149)
!151 = !DILocation(line: 89, column: 25, scope: !149)
!152 = !DILocation(line: 89, column: 13, scope: !144)
!153 = !DILocation(line: 92, column: 23, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !45, line: 92, column: 17)
!155 = distinct !DILexicalBlock(scope: !149, file: !45, line: 90, column: 9)
!156 = !DILocation(line: 92, column: 28, scope: !154)
!157 = !DILocation(line: 92, column: 27, scope: !154)
!158 = !DILocation(line: 92, column: 47, scope: !154)
!159 = !DILocation(line: 92, column: 46, scope: !154)
!160 = !DILocation(line: 92, column: 37, scope: !154)
!161 = !DILocation(line: 92, column: 57, scope: !154)
!162 = !DILocation(line: 92, column: 17, scope: !154)
!163 = !DILocation(line: 92, column: 64, scope: !154)
!164 = !DILocation(line: 92, column: 17, scope: !155)
!165 = !DILocation(line: 96, column: 34, scope: !166)
!166 = distinct !DILexicalBlock(scope: !154, file: !45, line: 93, column: 13)
!167 = !DILocation(line: 96, column: 27, scope: !166)
!168 = !DILocation(line: 96, column: 25, scope: !166)
!169 = !DILocation(line: 97, column: 21, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !45, line: 97, column: 21)
!171 = !DILocation(line: 97, column: 29, scope: !170)
!172 = !DILocation(line: 97, column: 33, scope: !170)
!173 = !DILocation(line: 97, column: 36, scope: !170)
!174 = !DILocation(line: 97, column: 41, scope: !170)
!175 = !DILocation(line: 97, column: 48, scope: !170)
!176 = !DILocation(line: 97, column: 52, scope: !170)
!177 = !DILocation(line: 97, column: 21, scope: !166)
!178 = !DILocation(line: 99, column: 21, scope: !179)
!179 = distinct !DILexicalBlock(scope: !170, file: !45, line: 98, column: 17)
!180 = !DILocation(line: 99, column: 26, scope: !179)
!181 = !DILocation(line: 99, column: 33, scope: !179)
!182 = !DILocation(line: 99, column: 37, scope: !179)
!183 = !DILocation(line: 100, column: 17, scope: !179)
!184 = !DILocation(line: 101, column: 13, scope: !166)
!185 = !DILocation(line: 104, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !154, file: !45, line: 103, column: 13)
!187 = !DILocation(line: 106, column: 17, scope: !186)
!188 = !DILocation(line: 106, column: 22, scope: !186)
!189 = !DILocation(line: 106, column: 31, scope: !186)
!190 = !DILocation(line: 108, column: 9, scope: !155)
!191 = !DILocation(line: 110, column: 77, scope: !136)
!192 = !DILocation(line: 110, column: 5, scope: !136)
!193 = !DILocation(line: 111, column: 1, scope: !136)
!194 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53_good", scope: !45, file: !45, line: 113, type: !59, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!195 = !DILocation(line: 115, column: 5, scope: !194)
!196 = !DILocation(line: 116, column: 5, scope: !194)
!197 = !DILocation(line: 117, column: 1, scope: !194)
!198 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53b_badSink", scope: !49, file: !49, line: 29, type: !199, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !42}
!201 = !DILocalVariable(name: "data", arg: 1, scope: !198, file: !49, line: 29, type: !42)
!202 = !DILocation(line: 29, column: 81, scope: !198)
!203 = !DILocation(line: 31, column: 73, scope: !198)
!204 = !DILocation(line: 31, column: 5, scope: !198)
!205 = !DILocation(line: 32, column: 1, scope: !198)
!206 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53b_goodG2BSink", scope: !49, file: !49, line: 41, type: !199, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!207 = !DILocalVariable(name: "data", arg: 1, scope: !206, file: !49, line: 41, type: !42)
!208 = !DILocation(line: 41, column: 85, scope: !206)
!209 = !DILocation(line: 43, column: 77, scope: !206)
!210 = !DILocation(line: 43, column: 5, scope: !206)
!211 = !DILocation(line: 44, column: 1, scope: !206)
!212 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53b_goodB2GSink", scope: !49, file: !49, line: 49, type: !199, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!213 = !DILocalVariable(name: "data", arg: 1, scope: !212, file: !49, line: 49, type: !42)
!214 = !DILocation(line: 49, column: 85, scope: !212)
!215 = !DILocation(line: 51, column: 77, scope: !212)
!216 = !DILocation(line: 51, column: 5, scope: !212)
!217 = !DILocation(line: 52, column: 1, scope: !212)
!218 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53c_badSink", scope: !51, file: !51, line: 29, type: !199, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!219 = !DILocalVariable(name: "data", arg: 1, scope: !218, file: !51, line: 29, type: !42)
!220 = !DILocation(line: 29, column: 81, scope: !218)
!221 = !DILocation(line: 31, column: 73, scope: !218)
!222 = !DILocation(line: 31, column: 5, scope: !218)
!223 = !DILocation(line: 32, column: 1, scope: !218)
!224 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53c_goodG2BSink", scope: !51, file: !51, line: 41, type: !199, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!225 = !DILocalVariable(name: "data", arg: 1, scope: !224, file: !51, line: 41, type: !42)
!226 = !DILocation(line: 41, column: 85, scope: !224)
!227 = !DILocation(line: 43, column: 77, scope: !224)
!228 = !DILocation(line: 43, column: 5, scope: !224)
!229 = !DILocation(line: 44, column: 1, scope: !224)
!230 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53c_goodB2GSink", scope: !51, file: !51, line: 49, type: !199, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!231 = !DILocalVariable(name: "data", arg: 1, scope: !230, file: !51, line: 49, type: !42)
!232 = !DILocation(line: 49, column: 85, scope: !230)
!233 = !DILocation(line: 51, column: 77, scope: !230)
!234 = !DILocation(line: 51, column: 5, scope: !230)
!235 = !DILocation(line: 52, column: 1, scope: !230)
!236 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53d_badSink", scope: !53, file: !53, line: 26, type: !199, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!237 = !DILocalVariable(name: "data", arg: 1, scope: !236, file: !53, line: 26, type: !42)
!238 = !DILocation(line: 26, column: 81, scope: !236)
!239 = !DILocation(line: 29, column: 13, scope: !236)
!240 = !DILocation(line: 29, column: 21, scope: !236)
!241 = !DILocation(line: 29, column: 5, scope: !236)
!242 = !DILocation(line: 30, column: 1, scope: !236)
!243 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53d_goodG2BSink", scope: !53, file: !53, line: 37, type: !199, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!244 = !DILocalVariable(name: "data", arg: 1, scope: !243, file: !53, line: 37, type: !42)
!245 = !DILocation(line: 37, column: 85, scope: !243)
!246 = !DILocation(line: 40, column: 13, scope: !243)
!247 = !DILocation(line: 40, column: 21, scope: !243)
!248 = !DILocation(line: 40, column: 5, scope: !243)
!249 = !DILocation(line: 41, column: 1, scope: !243)
!250 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_53d_goodB2GSink", scope: !53, file: !53, line: 44, type: !199, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!251 = !DILocalVariable(name: "data", arg: 1, scope: !250, file: !53, line: 44, type: !42)
!252 = !DILocation(line: 44, column: 85, scope: !250)
!253 = !DILocation(line: 47, column: 13, scope: !250)
!254 = !DILocation(line: 47, column: 29, scope: !250)
!255 = !DILocation(line: 47, column: 5, scope: !250)
!256 = !DILocation(line: 48, column: 1, scope: !250)
!257 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !199, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!258 = !DILocalVariable(name: "line", arg: 1, scope: !257, file: !3, line: 11, type: !42)
!259 = !DILocation(line: 11, column: 25, scope: !257)
!260 = !DILocation(line: 13, column: 1, scope: !257)
!261 = !DILocation(line: 14, column: 8, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !3, line: 14, column: 8)
!263 = !DILocation(line: 14, column: 13, scope: !262)
!264 = !DILocation(line: 14, column: 8, scope: !257)
!265 = !DILocation(line: 16, column: 24, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !3, line: 15, column: 5)
!267 = !DILocation(line: 16, column: 9, scope: !266)
!268 = !DILocation(line: 17, column: 5, scope: !266)
!269 = !DILocation(line: 18, column: 5, scope: !257)
!270 = !DILocation(line: 19, column: 1, scope: !257)
!271 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !199, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!272 = !DILocalVariable(name: "line", arg: 1, scope: !271, file: !3, line: 20, type: !42)
!273 = !DILocation(line: 20, column: 29, scope: !271)
!274 = !DILocation(line: 22, column: 8, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 22, column: 8)
!276 = !DILocation(line: 22, column: 13, scope: !275)
!277 = !DILocation(line: 22, column: 8, scope: !271)
!278 = !DILocation(line: 24, column: 24, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !3, line: 23, column: 5)
!280 = !DILocation(line: 24, column: 9, scope: !279)
!281 = !DILocation(line: 25, column: 5, scope: !279)
!282 = !DILocation(line: 26, column: 1, scope: !271)
!283 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !284, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !73, line: 74, baseType: !23)
!288 = !DILocalVariable(name: "line", arg: 1, scope: !283, file: !3, line: 27, type: !286)
!289 = !DILocation(line: 27, column: 29, scope: !283)
!290 = !DILocation(line: 29, column: 8, scope: !291)
!291 = distinct !DILexicalBlock(scope: !283, file: !3, line: 29, column: 8)
!292 = !DILocation(line: 29, column: 13, scope: !291)
!293 = !DILocation(line: 29, column: 8, scope: !283)
!294 = !DILocation(line: 31, column: 27, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !3, line: 30, column: 5)
!296 = !DILocation(line: 31, column: 9, scope: !295)
!297 = !DILocation(line: 32, column: 5, scope: !295)
!298 = !DILocation(line: 33, column: 1, scope: !283)
!299 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !300, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !23}
!302 = !DILocalVariable(name: "intNumber", arg: 1, scope: !299, file: !3, line: 35, type: !23)
!303 = !DILocation(line: 35, column: 24, scope: !299)
!304 = !DILocation(line: 37, column: 20, scope: !299)
!305 = !DILocation(line: 37, column: 5, scope: !299)
!306 = !DILocation(line: 38, column: 1, scope: !299)
!307 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !308, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !310}
!310 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!311 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !307, file: !3, line: 40, type: !310)
!312 = !DILocation(line: 40, column: 28, scope: !307)
!313 = !DILocation(line: 42, column: 21, scope: !307)
!314 = !DILocation(line: 42, column: 5, scope: !307)
!315 = !DILocation(line: 43, column: 1, scope: !307)
!316 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !317, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319}
!319 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!320 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !316, file: !3, line: 45, type: !319)
!321 = !DILocation(line: 45, column: 28, scope: !316)
!322 = !DILocation(line: 47, column: 20, scope: !316)
!323 = !DILocation(line: 47, column: 5, scope: !316)
!324 = !DILocation(line: 48, column: 1, scope: !316)
!325 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !326, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!329 = !DILocalVariable(name: "longNumber", arg: 1, scope: !325, file: !3, line: 50, type: !328)
!330 = !DILocation(line: 50, column: 26, scope: !325)
!331 = !DILocation(line: 52, column: 21, scope: !325)
!332 = !DILocation(line: 52, column: 5, scope: !325)
!333 = !DILocation(line: 53, column: 1, scope: !325)
!334 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !335, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !337}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !338, line: 27, baseType: !339)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !340, line: 44, baseType: !328)
!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!341 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !334, file: !3, line: 55, type: !337)
!342 = !DILocation(line: 55, column: 33, scope: !334)
!343 = !DILocation(line: 57, column: 29, scope: !334)
!344 = !DILocation(line: 57, column: 5, scope: !334)
!345 = !DILocation(line: 58, column: 1, scope: !334)
!346 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !347, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !72}
!349 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !346, file: !3, line: 60, type: !72)
!350 = !DILocation(line: 60, column: 29, scope: !346)
!351 = !DILocation(line: 62, column: 21, scope: !346)
!352 = !DILocation(line: 62, column: 5, scope: !346)
!353 = !DILocation(line: 63, column: 1, scope: !346)
!354 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !355, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !43}
!357 = !DILocalVariable(name: "charHex", arg: 1, scope: !354, file: !3, line: 65, type: !43)
!358 = !DILocation(line: 65, column: 29, scope: !354)
!359 = !DILocation(line: 67, column: 22, scope: !354)
!360 = !DILocation(line: 67, column: 5, scope: !354)
!361 = !DILocation(line: 68, column: 1, scope: !354)
!362 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !363, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !287}
!365 = !DILocalVariable(name: "wideChar", arg: 1, scope: !362, file: !3, line: 70, type: !287)
!366 = !DILocation(line: 70, column: 29, scope: !362)
!367 = !DILocalVariable(name: "s", scope: !362, file: !3, line: 74, type: !368)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 64, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 2)
!371 = !DILocation(line: 74, column: 13, scope: !362)
!372 = !DILocation(line: 75, column: 16, scope: !362)
!373 = !DILocation(line: 75, column: 9, scope: !362)
!374 = !DILocation(line: 75, column: 14, scope: !362)
!375 = !DILocation(line: 76, column: 9, scope: !362)
!376 = !DILocation(line: 76, column: 14, scope: !362)
!377 = !DILocation(line: 77, column: 21, scope: !362)
!378 = !DILocation(line: 77, column: 5, scope: !362)
!379 = !DILocation(line: 78, column: 1, scope: !362)
!380 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !381, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !7}
!383 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !380, file: !3, line: 80, type: !7)
!384 = !DILocation(line: 80, column: 33, scope: !380)
!385 = !DILocation(line: 82, column: 20, scope: !380)
!386 = !DILocation(line: 82, column: 5, scope: !380)
!387 = !DILocation(line: 83, column: 1, scope: !380)
!388 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !389, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !25}
!391 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !388, file: !3, line: 85, type: !25)
!392 = !DILocation(line: 85, column: 45, scope: !388)
!393 = !DILocation(line: 87, column: 22, scope: !388)
!394 = !DILocation(line: 87, column: 5, scope: !388)
!395 = !DILocation(line: 88, column: 1, scope: !388)
!396 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !397, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399}
!399 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!400 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !396, file: !3, line: 90, type: !399)
!401 = !DILocation(line: 90, column: 29, scope: !396)
!402 = !DILocation(line: 92, column: 20, scope: !396)
!403 = !DILocation(line: 92, column: 5, scope: !396)
!404 = !DILocation(line: 93, column: 1, scope: !396)
!405 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !406, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !408}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !410, line: 100, baseType: !411)
!410 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_417/source_code")
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !410, line: 96, size: 64, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !411, file: !410, line: 98, baseType: !23, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !411, file: !410, line: 99, baseType: !23, size: 32, offset: 32)
!415 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !405, file: !3, line: 95, type: !408)
!416 = !DILocation(line: 95, column: 40, scope: !405)
!417 = !DILocation(line: 97, column: 26, scope: !405)
!418 = !DILocation(line: 97, column: 47, scope: !405)
!419 = !DILocation(line: 97, column: 55, scope: !405)
!420 = !DILocation(line: 97, column: 76, scope: !405)
!421 = !DILocation(line: 97, column: 5, scope: !405)
!422 = !DILocation(line: 98, column: 1, scope: !405)
!423 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !424, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !426, !72}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!427 = !DILocalVariable(name: "bytes", arg: 1, scope: !423, file: !3, line: 100, type: !426)
!428 = !DILocation(line: 100, column: 38, scope: !423)
!429 = !DILocalVariable(name: "numBytes", arg: 2, scope: !423, file: !3, line: 100, type: !72)
!430 = !DILocation(line: 100, column: 52, scope: !423)
!431 = !DILocalVariable(name: "i", scope: !423, file: !3, line: 102, type: !72)
!432 = !DILocation(line: 102, column: 12, scope: !423)
!433 = !DILocation(line: 103, column: 12, scope: !434)
!434 = distinct !DILexicalBlock(scope: !423, file: !3, line: 103, column: 5)
!435 = !DILocation(line: 103, column: 10, scope: !434)
!436 = !DILocation(line: 103, column: 17, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !3, line: 103, column: 5)
!438 = !DILocation(line: 103, column: 21, scope: !437)
!439 = !DILocation(line: 103, column: 19, scope: !437)
!440 = !DILocation(line: 103, column: 5, scope: !434)
!441 = !DILocation(line: 105, column: 24, scope: !442)
!442 = distinct !DILexicalBlock(scope: !437, file: !3, line: 104, column: 5)
!443 = !DILocation(line: 105, column: 30, scope: !442)
!444 = !DILocation(line: 105, column: 9, scope: !442)
!445 = !DILocation(line: 106, column: 5, scope: !442)
!446 = !DILocation(line: 103, column: 31, scope: !437)
!447 = !DILocation(line: 103, column: 5, scope: !437)
!448 = distinct !{!448, !440, !449, !450}
!449 = !DILocation(line: 106, column: 5, scope: !434)
!450 = !{!"llvm.loop.mustprogress"}
!451 = !DILocation(line: 107, column: 5, scope: !423)
!452 = !DILocation(line: 108, column: 1, scope: !423)
!453 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !454, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!454 = !DISubroutineType(types: !455)
!455 = !{!72, !426, !72, !42}
!456 = !DILocalVariable(name: "bytes", arg: 1, scope: !453, file: !3, line: 113, type: !426)
!457 = !DILocation(line: 113, column: 39, scope: !453)
!458 = !DILocalVariable(name: "numBytes", arg: 2, scope: !453, file: !3, line: 113, type: !72)
!459 = !DILocation(line: 113, column: 53, scope: !453)
!460 = !DILocalVariable(name: "hex", arg: 3, scope: !453, file: !3, line: 113, type: !42)
!461 = !DILocation(line: 113, column: 71, scope: !453)
!462 = !DILocalVariable(name: "numWritten", scope: !453, file: !3, line: 115, type: !72)
!463 = !DILocation(line: 115, column: 12, scope: !453)
!464 = !DILocation(line: 121, column: 5, scope: !453)
!465 = !DILocation(line: 121, column: 12, scope: !453)
!466 = !DILocation(line: 121, column: 25, scope: !453)
!467 = !DILocation(line: 121, column: 23, scope: !453)
!468 = !DILocation(line: 121, column: 34, scope: !453)
!469 = !DILocation(line: 121, column: 37, scope: !453)
!470 = !DILocation(line: 121, column: 67, scope: !453)
!471 = !DILocation(line: 121, column: 70, scope: !453)
!472 = !DILocation(line: 0, scope: !453)
!473 = !DILocalVariable(name: "byte", scope: !474, file: !3, line: 123, type: !23)
!474 = distinct !DILexicalBlock(scope: !453, file: !3, line: 122, column: 5)
!475 = !DILocation(line: 123, column: 13, scope: !474)
!476 = !DILocation(line: 124, column: 17, scope: !474)
!477 = !DILocation(line: 124, column: 25, scope: !474)
!478 = !DILocation(line: 124, column: 23, scope: !474)
!479 = !DILocation(line: 124, column: 9, scope: !474)
!480 = !DILocation(line: 125, column: 45, scope: !474)
!481 = !DILocation(line: 125, column: 29, scope: !474)
!482 = !DILocation(line: 125, column: 9, scope: !474)
!483 = !DILocation(line: 125, column: 15, scope: !474)
!484 = !DILocation(line: 125, column: 27, scope: !474)
!485 = !DILocation(line: 126, column: 9, scope: !474)
!486 = distinct !{!486, !464, !487, !450}
!487 = !DILocation(line: 127, column: 5, scope: !453)
!488 = !DILocation(line: 129, column: 12, scope: !453)
!489 = !DILocation(line: 129, column: 5, scope: !453)
!490 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !491, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!491 = !DISubroutineType(types: !492)
!492 = !{!72, !426, !72, !286}
!493 = !DILocalVariable(name: "bytes", arg: 1, scope: !490, file: !3, line: 135, type: !426)
!494 = !DILocation(line: 135, column: 41, scope: !490)
!495 = !DILocalVariable(name: "numBytes", arg: 2, scope: !490, file: !3, line: 135, type: !72)
!496 = !DILocation(line: 135, column: 55, scope: !490)
!497 = !DILocalVariable(name: "hex", arg: 3, scope: !490, file: !3, line: 135, type: !286)
!498 = !DILocation(line: 135, column: 76, scope: !490)
!499 = !DILocalVariable(name: "numWritten", scope: !490, file: !3, line: 137, type: !72)
!500 = !DILocation(line: 137, column: 12, scope: !490)
!501 = !DILocation(line: 143, column: 5, scope: !490)
!502 = !DILocation(line: 143, column: 12, scope: !490)
!503 = !DILocation(line: 143, column: 25, scope: !490)
!504 = !DILocation(line: 143, column: 23, scope: !490)
!505 = !DILocation(line: 143, column: 34, scope: !490)
!506 = !DILocation(line: 143, column: 47, scope: !490)
!507 = !DILocation(line: 143, column: 55, scope: !490)
!508 = !DILocation(line: 143, column: 53, scope: !490)
!509 = !DILocation(line: 143, column: 37, scope: !490)
!510 = !DILocation(line: 143, column: 68, scope: !490)
!511 = !DILocation(line: 143, column: 81, scope: !490)
!512 = !DILocation(line: 143, column: 89, scope: !490)
!513 = !DILocation(line: 143, column: 87, scope: !490)
!514 = !DILocation(line: 143, column: 100, scope: !490)
!515 = !DILocation(line: 143, column: 71, scope: !490)
!516 = !DILocation(line: 0, scope: !490)
!517 = !DILocalVariable(name: "byte", scope: !518, file: !3, line: 145, type: !23)
!518 = distinct !DILexicalBlock(scope: !490, file: !3, line: 144, column: 5)
!519 = !DILocation(line: 145, column: 13, scope: !518)
!520 = !DILocation(line: 146, column: 18, scope: !518)
!521 = !DILocation(line: 146, column: 26, scope: !518)
!522 = !DILocation(line: 146, column: 24, scope: !518)
!523 = !DILocation(line: 146, column: 9, scope: !518)
!524 = !DILocation(line: 147, column: 45, scope: !518)
!525 = !DILocation(line: 147, column: 29, scope: !518)
!526 = !DILocation(line: 147, column: 9, scope: !518)
!527 = !DILocation(line: 147, column: 15, scope: !518)
!528 = !DILocation(line: 147, column: 27, scope: !518)
!529 = !DILocation(line: 148, column: 9, scope: !518)
!530 = distinct !{!530, !501, !531, !450}
!531 = !DILocation(line: 149, column: 5, scope: !490)
!532 = !DILocation(line: 151, column: 12, scope: !490)
!533 = !DILocation(line: 151, column: 5, scope: !490)
!534 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !535, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!535 = !DISubroutineType(types: !536)
!536 = !{!23}
!537 = !DILocation(line: 158, column: 5, scope: !534)
!538 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !535, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DILocation(line: 163, column: 5, scope: !538)
!540 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !535, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DILocation(line: 168, column: 13, scope: !540)
!542 = !DILocation(line: 168, column: 20, scope: !540)
!543 = !DILocation(line: 168, column: 5, scope: !540)
!544 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !59, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DILocation(line: 187, column: 16, scope: !544)
!546 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !59, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 188, column: 16, scope: !546)
!548 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !59, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DILocation(line: 189, column: 16, scope: !548)
!550 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocation(line: 190, column: 16, scope: !550)
!552 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !59, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 191, column: 16, scope: !552)
!554 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !59, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 192, column: 16, scope: !554)
!556 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !59, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DILocation(line: 193, column: 16, scope: !556)
!558 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !59, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 194, column: 16, scope: !558)
!560 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !59, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DILocation(line: 195, column: 16, scope: !560)
!562 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !59, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DILocation(line: 198, column: 15, scope: !562)
!564 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !59, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DILocation(line: 199, column: 15, scope: !564)
!566 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !59, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 200, column: 15, scope: !566)
!568 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !59, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 201, column: 15, scope: !568)
!570 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !59, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 202, column: 15, scope: !570)
!572 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !59, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DILocation(line: 203, column: 15, scope: !572)
!574 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !59, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DILocation(line: 204, column: 15, scope: !574)
!576 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !59, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DILocation(line: 205, column: 15, scope: !576)
!578 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !59, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DILocation(line: 206, column: 15, scope: !578)
