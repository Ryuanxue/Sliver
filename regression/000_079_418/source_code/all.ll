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
@.str.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.28 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.29 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad() #0 !dbg !60 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !65, metadata !DIExpression()), !dbg !69
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !69
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !69
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !70
  store i8* %arraydecay, i8** %data, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !72, metadata !DIExpression()), !dbg !77
  %1 = load i8*, i8** %data, align 8, !dbg !78
  %call = call i64 @strlen(i8* %1) #7, !dbg !79
  store i64 %call, i64* %dataLen, align 8, !dbg !77
  %2 = load i64, i64* %dataLen, align 8, !dbg !80
  %sub = sub i64 100, %2, !dbg !82
  %cmp = icmp ugt i64 %sub, 1, !dbg !83
  br i1 %cmp, label %if.then, label %if.end18, !dbg !84

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !85
  %4 = load i64, i64* %dataLen, align 8, !dbg !88
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !89
  %5 = load i64, i64* %dataLen, align 8, !dbg !90
  %sub1 = sub i64 100, %5, !dbg !91
  %conv = trunc i64 %sub1 to i32, !dbg !92
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !93
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !94
  %cmp3 = icmp ne i8* %call2, null, !dbg !95
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !96

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !97
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !99
  store i64 %call6, i64* %dataLen, align 8, !dbg !100
  %8 = load i64, i64* %dataLen, align 8, !dbg !101
  %cmp7 = icmp ugt i64 %8, 0, !dbg !103
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !104

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !105
  %10 = load i64, i64* %dataLen, align 8, !dbg !106
  %sub9 = sub i64 %10, 1, !dbg !107
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !105
  %11 = load i8, i8* %arrayidx, align 1, !dbg !105
  %conv10 = sext i8 %11 to i32, !dbg !105
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !108
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !109

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !110
  %13 = load i64, i64* %dataLen, align 8, !dbg !112
  %sub14 = sub i64 %13, 1, !dbg !113
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !110
  store i8 0, i8* %arrayidx15, align 1, !dbg !114
  br label %if.end, !dbg !115

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !116

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !117
  %14 = load i8*, i8** %data, align 8, !dbg !119
  %15 = load i64, i64* %dataLen, align 8, !dbg !120
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !119
  store i8 0, i8* %arrayidx16, align 1, !dbg !121
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !122

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !123
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54b_badSink(i8* %16), !dbg !124
  ret void, !dbg !125
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !126 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !130
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !130
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !131
  store i8* %arraydecay, i8** %data, align 8, !dbg !132
  %1 = load i8*, i8** %data, align 8, !dbg !133
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !134
  %2 = load i8*, i8** %data, align 8, !dbg !135
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54b_goodG2BSink(i8* %2), !dbg !136
  ret void, !dbg !137
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !138 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !142
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !142
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !143
  store i8* %arraydecay, i8** %data, align 8, !dbg !144
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !145, metadata !DIExpression()), !dbg !147
  %1 = load i8*, i8** %data, align 8, !dbg !148
  %call = call i64 @strlen(i8* %1) #7, !dbg !149
  store i64 %call, i64* %dataLen, align 8, !dbg !147
  %2 = load i64, i64* %dataLen, align 8, !dbg !150
  %sub = sub i64 100, %2, !dbg !152
  %cmp = icmp ugt i64 %sub, 1, !dbg !153
  br i1 %cmp, label %if.then, label %if.end18, !dbg !154

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !155
  %4 = load i64, i64* %dataLen, align 8, !dbg !158
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !159
  %5 = load i64, i64* %dataLen, align 8, !dbg !160
  %sub1 = sub i64 100, %5, !dbg !161
  %conv = trunc i64 %sub1 to i32, !dbg !162
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !163
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !164
  %cmp3 = icmp ne i8* %call2, null, !dbg !165
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !166

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !167
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !169
  store i64 %call6, i64* %dataLen, align 8, !dbg !170
  %8 = load i64, i64* %dataLen, align 8, !dbg !171
  %cmp7 = icmp ugt i64 %8, 0, !dbg !173
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !174

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !175
  %10 = load i64, i64* %dataLen, align 8, !dbg !176
  %sub9 = sub i64 %10, 1, !dbg !177
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !175
  %11 = load i8, i8* %arrayidx, align 1, !dbg !175
  %conv10 = sext i8 %11 to i32, !dbg !175
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !178
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !179

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !180
  %13 = load i64, i64* %dataLen, align 8, !dbg !182
  %sub14 = sub i64 %13, 1, !dbg !183
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !180
  store i8 0, i8* %arrayidx15, align 1, !dbg !184
  br label %if.end, !dbg !185

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !186

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !187
  %14 = load i8*, i8** %data, align 8, !dbg !189
  %15 = load i64, i64* %dataLen, align 8, !dbg !190
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !189
  store i8 0, i8* %arrayidx16, align 1, !dbg !191
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !192

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !193
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54b_goodB2GSink(i8* %16), !dbg !194
  ret void, !dbg !195
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54_good() #0 !dbg !196 {
entry:
  call void @goodG2B(), !dbg !197
  call void @goodB2G(), !dbg !198
  ret void, !dbg !199
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54b_badSink(i8* %data) #0 !dbg !200 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !203, metadata !DIExpression()), !dbg !204
  %0 = load i8*, i8** %data.addr, align 8, !dbg !205
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54c_badSink(i8* %0), !dbg !206
  ret void, !dbg !207
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54b_goodG2BSink(i8* %data) #0 !dbg !208 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !209, metadata !DIExpression()), !dbg !210
  %0 = load i8*, i8** %data.addr, align 8, !dbg !211
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54c_goodG2BSink(i8* %0), !dbg !212
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54b_goodB2GSink(i8* %data) #0 !dbg !214 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = load i8*, i8** %data.addr, align 8, !dbg !217
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54c_goodB2GSink(i8* %0), !dbg !218
  ret void, !dbg !219
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54c_badSink(i8* %data) #0 !dbg !220 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = load i8*, i8** %data.addr, align 8, !dbg !223
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54d_badSink(i8* %0), !dbg !224
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54c_goodG2BSink(i8* %data) #0 !dbg !226 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !227, metadata !DIExpression()), !dbg !228
  %0 = load i8*, i8** %data.addr, align 8, !dbg !229
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54d_goodG2BSink(i8* %0), !dbg !230
  ret void, !dbg !231
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54c_goodB2GSink(i8* %data) #0 !dbg !232 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !233, metadata !DIExpression()), !dbg !234
  %0 = load i8*, i8** %data.addr, align 8, !dbg !235
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54d_goodB2GSink(i8* %0), !dbg !236
  ret void, !dbg !237
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54d_badSink(i8* %data) #0 !dbg !238 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !239, metadata !DIExpression()), !dbg !240
  %0 = load i8*, i8** %data.addr, align 8, !dbg !241
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54e_badSink(i8* %0), !dbg !242
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54d_goodG2BSink(i8* %data) #0 !dbg !244 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load i8*, i8** %data.addr, align 8, !dbg !247
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54e_goodG2BSink(i8* %0), !dbg !248
  ret void, !dbg !249
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54d_goodB2GSink(i8* %data) #0 !dbg !250 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !251, metadata !DIExpression()), !dbg !252
  %0 = load i8*, i8** %data.addr, align 8, !dbg !253
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54e_goodB2GSink(i8* %0), !dbg !254
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54e_badSink(i8* %data) #0 !dbg !256 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !259
  %1 = load i8*, i8** %data.addr, align 8, !dbg !260
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !261
  ret void, !dbg !262
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54e_goodG2BSink(i8* %data) #0 !dbg !263 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !266
  %1 = load i8*, i8** %data.addr, align 8, !dbg !267
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !268
  ret void, !dbg !269
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_54e_goodB2GSink(i8* %data) #0 !dbg !270 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !271, metadata !DIExpression()), !dbg !272
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !273
  %1 = load i8*, i8** %data.addr, align 8, !dbg !274
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* %1), !dbg !275
  ret void, !dbg !276
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !277 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !278, metadata !DIExpression()), !dbg !279
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)), !dbg !280
  %0 = load i8*, i8** %line.addr, align 8, !dbg !281
  %cmp = icmp ne i8* %0, null, !dbg !283
  br i1 %cmp, label %if.then, label %if.end, !dbg !284

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !285
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.29, i64 0, i64 0), i8* %1), !dbg !287
  br label %if.end, !dbg !288

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !289
  ret void, !dbg !290
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !291 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !292, metadata !DIExpression()), !dbg !293
  %0 = load i8*, i8** %line.addr, align 8, !dbg !294
  %cmp = icmp ne i8* %0, null, !dbg !296
  br i1 %cmp, label %if.then, label %if.end, !dbg !297

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !298
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.29, i64 0, i64 0), i8* %1), !dbg !300
  br label %if.end, !dbg !301

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !303 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !308, metadata !DIExpression()), !dbg !309
  %0 = load i32*, i32** %line.addr, align 8, !dbg !310
  %cmp = icmp ne i32* %0, null, !dbg !312
  br i1 %cmp, label %if.then, label %if.end, !dbg !313

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !314
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !316
  br label %if.end, !dbg !317

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !318
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !319 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !322, metadata !DIExpression()), !dbg !323
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !324
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !325
  ret void, !dbg !326
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !327 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !333
  %conv = sext i16 %0 to i32, !dbg !333
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !336 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !342
  %conv = fpext float %0 to double, !dbg !342
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !345 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !351
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !352
  ret void, !dbg !353
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !354 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !361, metadata !DIExpression()), !dbg !362
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !363
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !364
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !366 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !374 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !379
  %conv = sext i8 %0 to i32, !dbg !379
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !382 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !387, metadata !DIExpression()), !dbg !391
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !392
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !393
  store i32 %0, i32* %arrayidx, align 4, !dbg !394
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !395
  store i32 0, i32* %arrayidx1, align 4, !dbg !396
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !397
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !398
  ret void, !dbg !399
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !400 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !408 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !413
  %conv = zext i8 %0 to i32, !dbg !413
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !414
  ret void, !dbg !415
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !416 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !420, metadata !DIExpression()), !dbg !421
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !422
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !425 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !437
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !438
  %1 = load i32, i32* %intOne, align 4, !dbg !438
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !439
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !440
  %3 = load i32, i32* %intTwo, align 4, !dbg !440
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !443 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !447, metadata !DIExpression()), !dbg !448
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !449, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata i64* %i, metadata !451, metadata !DIExpression()), !dbg !452
  store i64 0, i64* %i, align 8, !dbg !453
  br label %for.cond, !dbg !455

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !456
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !458
  %cmp = icmp ult i64 %0, %1, !dbg !459
  br i1 %cmp, label %for.body, label %for.end, !dbg !460

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !461
  %3 = load i64, i64* %i, align 8, !dbg !463
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !461
  %4 = load i8, i8* %arrayidx, align 1, !dbg !461
  %conv = zext i8 %4 to i32, !dbg !461
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !464
  br label %for.inc, !dbg !465

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !466
  %inc = add i64 %5, 1, !dbg !466
  store i64 %inc, i64* %i, align 8, !dbg !466
  br label %for.cond, !dbg !467, !llvm.loop !468

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !471
  ret void, !dbg !472
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !473 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !476, metadata !DIExpression()), !dbg !477
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !478, metadata !DIExpression()), !dbg !479
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !480, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !482, metadata !DIExpression()), !dbg !483
  store i64 0, i64* %numWritten, align 8, !dbg !483
  br label %while.cond, !dbg !484

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !485
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !486
  %cmp = icmp ult i64 %0, %1, !dbg !487
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !488

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !489
  %2 = load i16*, i16** %call, align 8, !dbg !489
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !489
  %4 = load i64, i64* %numWritten, align 8, !dbg !489
  %mul = mul i64 2, %4, !dbg !489
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !489
  %5 = load i8, i8* %arrayidx, align 1, !dbg !489
  %conv = sext i8 %5 to i32, !dbg !489
  %idxprom = sext i32 %conv to i64, !dbg !489
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !489
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !489
  %conv2 = zext i16 %6 to i32, !dbg !489
  %and = and i32 %conv2, 4096, !dbg !489
  %tobool = icmp ne i32 %and, 0, !dbg !489
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !490

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !491
  %7 = load i16*, i16** %call3, align 8, !dbg !491
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !491
  %9 = load i64, i64* %numWritten, align 8, !dbg !491
  %mul4 = mul i64 2, %9, !dbg !491
  %add = add i64 %mul4, 1, !dbg !491
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !491
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !491
  %conv6 = sext i8 %10 to i32, !dbg !491
  %idxprom7 = sext i32 %conv6 to i64, !dbg !491
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !491
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !491
  %conv9 = zext i16 %11 to i32, !dbg !491
  %and10 = and i32 %conv9, 4096, !dbg !491
  %tobool11 = icmp ne i32 %and10, 0, !dbg !490
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !492
  br i1 %12, label %while.body, label %while.end, !dbg !484

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !493, metadata !DIExpression()), !dbg !495
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !496
  %14 = load i64, i64* %numWritten, align 8, !dbg !497
  %mul12 = mul i64 2, %14, !dbg !498
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !496
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !499
  %15 = load i32, i32* %byte, align 4, !dbg !500
  %conv15 = trunc i32 %15 to i8, !dbg !501
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !502
  %17 = load i64, i64* %numWritten, align 8, !dbg !503
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !502
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !504
  %18 = load i64, i64* %numWritten, align 8, !dbg !505
  %inc = add i64 %18, 1, !dbg !505
  store i64 %inc, i64* %numWritten, align 8, !dbg !505
  br label %while.cond, !dbg !484, !llvm.loop !506

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !508
  ret i64 %19, !dbg !509
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !510 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !513, metadata !DIExpression()), !dbg !514
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !515, metadata !DIExpression()), !dbg !516
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !517, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !519, metadata !DIExpression()), !dbg !520
  store i64 0, i64* %numWritten, align 8, !dbg !520
  br label %while.cond, !dbg !521

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !522
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !523
  %cmp = icmp ult i64 %0, %1, !dbg !524
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !525

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !526
  %3 = load i64, i64* %numWritten, align 8, !dbg !527
  %mul = mul i64 2, %3, !dbg !528
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !526
  %4 = load i32, i32* %arrayidx, align 4, !dbg !526
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !529
  %tobool = icmp ne i32 %call, 0, !dbg !529
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !530

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !531
  %6 = load i64, i64* %numWritten, align 8, !dbg !532
  %mul1 = mul i64 2, %6, !dbg !533
  %add = add i64 %mul1, 1, !dbg !534
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !531
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !531
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !535
  %tobool4 = icmp ne i32 %call3, 0, !dbg !530
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !536
  br i1 %8, label %while.body, label %while.end, !dbg !521

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !537, metadata !DIExpression()), !dbg !539
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !540
  %10 = load i64, i64* %numWritten, align 8, !dbg !541
  %mul5 = mul i64 2, %10, !dbg !542
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !540
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !543
  %11 = load i32, i32* %byte, align 4, !dbg !544
  %conv = trunc i32 %11 to i8, !dbg !545
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !546
  %13 = load i64, i64* %numWritten, align 8, !dbg !547
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !546
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !548
  %14 = load i64, i64* %numWritten, align 8, !dbg !549
  %inc = add i64 %14, 1, !dbg !549
  store i64 %inc, i64* %numWritten, align 8, !dbg !549
  br label %while.cond, !dbg !521, !llvm.loop !550

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !552
  ret i64 %15, !dbg !553
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !554 {
entry:
  ret i32 1, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !558 {
entry:
  ret i32 0, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !560 {
entry:
  %call = call i32 @rand() #8, !dbg !561
  %rem = srem i32 %call, 2, !dbg !562
  ret i32 %rem, !dbg !563
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !584 {
entry:
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !586 {
entry:
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !588 {
entry:
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !590 {
entry:
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !592 {
entry:
  ret void, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !594 {
entry:
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !596 {
entry:
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !598 {
entry:
  ret void, !dbg !599
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

!llvm.dbg.cu = !{!44, !48, !50, !52, !54, !2}
!llvm.ident = !{!56, !56, !56, !56, !56, !56}
!llvm.module.flags = !{!57, !58, !59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_418/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_418/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_418/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_418/source_code")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_418/source_code")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54e.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_418/source_code")
!56 = !{!"clang version 12.0.0"}
!57 = !{i32 7, !"Dwarf Version", i32 4}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54_bad", scope: !45, file: !45, line: 29, type: !61, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!61 = !DISubroutineType(types: !62)
!62 = !{null}
!63 = !DILocalVariable(name: "data", scope: !60, file: !45, line: 31, type: !42)
!64 = !DILocation(line: 31, column: 12, scope: !60)
!65 = !DILocalVariable(name: "dataBuffer", scope: !60, file: !45, line: 32, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 100)
!69 = !DILocation(line: 32, column: 10, scope: !60)
!70 = !DILocation(line: 33, column: 12, scope: !60)
!71 = !DILocation(line: 33, column: 10, scope: !60)
!72 = !DILocalVariable(name: "dataLen", scope: !73, file: !45, line: 36, type: !74)
!73 = distinct !DILexicalBlock(scope: !60, file: !45, line: 34, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 36, column: 16, scope: !73)
!78 = !DILocation(line: 36, column: 33, scope: !73)
!79 = !DILocation(line: 36, column: 26, scope: !73)
!80 = !DILocation(line: 38, column: 17, scope: !81)
!81 = distinct !DILexicalBlock(scope: !73, file: !45, line: 38, column: 13)
!82 = !DILocation(line: 38, column: 16, scope: !81)
!83 = !DILocation(line: 38, column: 25, scope: !81)
!84 = !DILocation(line: 38, column: 13, scope: !73)
!85 = !DILocation(line: 41, column: 23, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !45, line: 41, column: 17)
!87 = distinct !DILexicalBlock(scope: !81, file: !45, line: 39, column: 9)
!88 = !DILocation(line: 41, column: 28, scope: !86)
!89 = !DILocation(line: 41, column: 27, scope: !86)
!90 = !DILocation(line: 41, column: 47, scope: !86)
!91 = !DILocation(line: 41, column: 46, scope: !86)
!92 = !DILocation(line: 41, column: 37, scope: !86)
!93 = !DILocation(line: 41, column: 57, scope: !86)
!94 = !DILocation(line: 41, column: 17, scope: !86)
!95 = !DILocation(line: 41, column: 64, scope: !86)
!96 = !DILocation(line: 41, column: 17, scope: !87)
!97 = !DILocation(line: 45, column: 34, scope: !98)
!98 = distinct !DILexicalBlock(scope: !86, file: !45, line: 42, column: 13)
!99 = !DILocation(line: 45, column: 27, scope: !98)
!100 = !DILocation(line: 45, column: 25, scope: !98)
!101 = !DILocation(line: 46, column: 21, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !45, line: 46, column: 21)
!103 = !DILocation(line: 46, column: 29, scope: !102)
!104 = !DILocation(line: 46, column: 33, scope: !102)
!105 = !DILocation(line: 46, column: 36, scope: !102)
!106 = !DILocation(line: 46, column: 41, scope: !102)
!107 = !DILocation(line: 46, column: 48, scope: !102)
!108 = !DILocation(line: 46, column: 52, scope: !102)
!109 = !DILocation(line: 46, column: 21, scope: !98)
!110 = !DILocation(line: 48, column: 21, scope: !111)
!111 = distinct !DILexicalBlock(scope: !102, file: !45, line: 47, column: 17)
!112 = !DILocation(line: 48, column: 26, scope: !111)
!113 = !DILocation(line: 48, column: 33, scope: !111)
!114 = !DILocation(line: 48, column: 37, scope: !111)
!115 = !DILocation(line: 49, column: 17, scope: !111)
!116 = !DILocation(line: 50, column: 13, scope: !98)
!117 = !DILocation(line: 53, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !86, file: !45, line: 52, column: 13)
!119 = !DILocation(line: 55, column: 17, scope: !118)
!120 = !DILocation(line: 55, column: 22, scope: !118)
!121 = !DILocation(line: 55, column: 31, scope: !118)
!122 = !DILocation(line: 57, column: 9, scope: !87)
!123 = !DILocation(line: 59, column: 73, scope: !60)
!124 = !DILocation(line: 59, column: 5, scope: !60)
!125 = !DILocation(line: 60, column: 1, scope: !60)
!126 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 68, type: !61, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!127 = !DILocalVariable(name: "data", scope: !126, file: !45, line: 70, type: !42)
!128 = !DILocation(line: 70, column: 12, scope: !126)
!129 = !DILocalVariable(name: "dataBuffer", scope: !126, file: !45, line: 71, type: !66)
!130 = !DILocation(line: 71, column: 10, scope: !126)
!131 = !DILocation(line: 72, column: 12, scope: !126)
!132 = !DILocation(line: 72, column: 10, scope: !126)
!133 = !DILocation(line: 74, column: 12, scope: !126)
!134 = !DILocation(line: 74, column: 5, scope: !126)
!135 = !DILocation(line: 75, column: 77, scope: !126)
!136 = !DILocation(line: 75, column: 5, scope: !126)
!137 = !DILocation(line: 76, column: 1, scope: !126)
!138 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 80, type: !61, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!139 = !DILocalVariable(name: "data", scope: !138, file: !45, line: 82, type: !42)
!140 = !DILocation(line: 82, column: 12, scope: !138)
!141 = !DILocalVariable(name: "dataBuffer", scope: !138, file: !45, line: 83, type: !66)
!142 = !DILocation(line: 83, column: 10, scope: !138)
!143 = !DILocation(line: 84, column: 12, scope: !138)
!144 = !DILocation(line: 84, column: 10, scope: !138)
!145 = !DILocalVariable(name: "dataLen", scope: !146, file: !45, line: 87, type: !74)
!146 = distinct !DILexicalBlock(scope: !138, file: !45, line: 85, column: 5)
!147 = !DILocation(line: 87, column: 16, scope: !146)
!148 = !DILocation(line: 87, column: 33, scope: !146)
!149 = !DILocation(line: 87, column: 26, scope: !146)
!150 = !DILocation(line: 89, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !45, line: 89, column: 13)
!152 = !DILocation(line: 89, column: 16, scope: !151)
!153 = !DILocation(line: 89, column: 25, scope: !151)
!154 = !DILocation(line: 89, column: 13, scope: !146)
!155 = !DILocation(line: 92, column: 23, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !45, line: 92, column: 17)
!157 = distinct !DILexicalBlock(scope: !151, file: !45, line: 90, column: 9)
!158 = !DILocation(line: 92, column: 28, scope: !156)
!159 = !DILocation(line: 92, column: 27, scope: !156)
!160 = !DILocation(line: 92, column: 47, scope: !156)
!161 = !DILocation(line: 92, column: 46, scope: !156)
!162 = !DILocation(line: 92, column: 37, scope: !156)
!163 = !DILocation(line: 92, column: 57, scope: !156)
!164 = !DILocation(line: 92, column: 17, scope: !156)
!165 = !DILocation(line: 92, column: 64, scope: !156)
!166 = !DILocation(line: 92, column: 17, scope: !157)
!167 = !DILocation(line: 96, column: 34, scope: !168)
!168 = distinct !DILexicalBlock(scope: !156, file: !45, line: 93, column: 13)
!169 = !DILocation(line: 96, column: 27, scope: !168)
!170 = !DILocation(line: 96, column: 25, scope: !168)
!171 = !DILocation(line: 97, column: 21, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !45, line: 97, column: 21)
!173 = !DILocation(line: 97, column: 29, scope: !172)
!174 = !DILocation(line: 97, column: 33, scope: !172)
!175 = !DILocation(line: 97, column: 36, scope: !172)
!176 = !DILocation(line: 97, column: 41, scope: !172)
!177 = !DILocation(line: 97, column: 48, scope: !172)
!178 = !DILocation(line: 97, column: 52, scope: !172)
!179 = !DILocation(line: 97, column: 21, scope: !168)
!180 = !DILocation(line: 99, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !172, file: !45, line: 98, column: 17)
!182 = !DILocation(line: 99, column: 26, scope: !181)
!183 = !DILocation(line: 99, column: 33, scope: !181)
!184 = !DILocation(line: 99, column: 37, scope: !181)
!185 = !DILocation(line: 100, column: 17, scope: !181)
!186 = !DILocation(line: 101, column: 13, scope: !168)
!187 = !DILocation(line: 104, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !156, file: !45, line: 103, column: 13)
!189 = !DILocation(line: 106, column: 17, scope: !188)
!190 = !DILocation(line: 106, column: 22, scope: !188)
!191 = !DILocation(line: 106, column: 31, scope: !188)
!192 = !DILocation(line: 108, column: 9, scope: !157)
!193 = !DILocation(line: 110, column: 77, scope: !138)
!194 = !DILocation(line: 110, column: 5, scope: !138)
!195 = !DILocation(line: 111, column: 1, scope: !138)
!196 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54_good", scope: !45, file: !45, line: 113, type: !61, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!197 = !DILocation(line: 115, column: 5, scope: !196)
!198 = !DILocation(line: 116, column: 5, scope: !196)
!199 = !DILocation(line: 117, column: 1, scope: !196)
!200 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54b_badSink", scope: !49, file: !49, line: 29, type: !201, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !42}
!203 = !DILocalVariable(name: "data", arg: 1, scope: !200, file: !49, line: 29, type: !42)
!204 = !DILocation(line: 29, column: 81, scope: !200)
!205 = !DILocation(line: 31, column: 73, scope: !200)
!206 = !DILocation(line: 31, column: 5, scope: !200)
!207 = !DILocation(line: 32, column: 1, scope: !200)
!208 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54b_goodG2BSink", scope: !49, file: !49, line: 41, type: !201, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!209 = !DILocalVariable(name: "data", arg: 1, scope: !208, file: !49, line: 41, type: !42)
!210 = !DILocation(line: 41, column: 85, scope: !208)
!211 = !DILocation(line: 43, column: 77, scope: !208)
!212 = !DILocation(line: 43, column: 5, scope: !208)
!213 = !DILocation(line: 44, column: 1, scope: !208)
!214 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54b_goodB2GSink", scope: !49, file: !49, line: 49, type: !201, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!215 = !DILocalVariable(name: "data", arg: 1, scope: !214, file: !49, line: 49, type: !42)
!216 = !DILocation(line: 49, column: 85, scope: !214)
!217 = !DILocation(line: 51, column: 77, scope: !214)
!218 = !DILocation(line: 51, column: 5, scope: !214)
!219 = !DILocation(line: 52, column: 1, scope: !214)
!220 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54c_badSink", scope: !51, file: !51, line: 29, type: !201, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!221 = !DILocalVariable(name: "data", arg: 1, scope: !220, file: !51, line: 29, type: !42)
!222 = !DILocation(line: 29, column: 81, scope: !220)
!223 = !DILocation(line: 31, column: 73, scope: !220)
!224 = !DILocation(line: 31, column: 5, scope: !220)
!225 = !DILocation(line: 32, column: 1, scope: !220)
!226 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54c_goodG2BSink", scope: !51, file: !51, line: 41, type: !201, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!227 = !DILocalVariable(name: "data", arg: 1, scope: !226, file: !51, line: 41, type: !42)
!228 = !DILocation(line: 41, column: 85, scope: !226)
!229 = !DILocation(line: 43, column: 77, scope: !226)
!230 = !DILocation(line: 43, column: 5, scope: !226)
!231 = !DILocation(line: 44, column: 1, scope: !226)
!232 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54c_goodB2GSink", scope: !51, file: !51, line: 49, type: !201, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!233 = !DILocalVariable(name: "data", arg: 1, scope: !232, file: !51, line: 49, type: !42)
!234 = !DILocation(line: 49, column: 85, scope: !232)
!235 = !DILocation(line: 51, column: 77, scope: !232)
!236 = !DILocation(line: 51, column: 5, scope: !232)
!237 = !DILocation(line: 52, column: 1, scope: !232)
!238 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54d_badSink", scope: !53, file: !53, line: 29, type: !201, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!239 = !DILocalVariable(name: "data", arg: 1, scope: !238, file: !53, line: 29, type: !42)
!240 = !DILocation(line: 29, column: 81, scope: !238)
!241 = !DILocation(line: 31, column: 73, scope: !238)
!242 = !DILocation(line: 31, column: 5, scope: !238)
!243 = !DILocation(line: 32, column: 1, scope: !238)
!244 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54d_goodG2BSink", scope: !53, file: !53, line: 41, type: !201, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!245 = !DILocalVariable(name: "data", arg: 1, scope: !244, file: !53, line: 41, type: !42)
!246 = !DILocation(line: 41, column: 85, scope: !244)
!247 = !DILocation(line: 43, column: 77, scope: !244)
!248 = !DILocation(line: 43, column: 5, scope: !244)
!249 = !DILocation(line: 44, column: 1, scope: !244)
!250 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54d_goodB2GSink", scope: !53, file: !53, line: 49, type: !201, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!251 = !DILocalVariable(name: "data", arg: 1, scope: !250, file: !53, line: 49, type: !42)
!252 = !DILocation(line: 49, column: 85, scope: !250)
!253 = !DILocation(line: 51, column: 77, scope: !250)
!254 = !DILocation(line: 51, column: 5, scope: !250)
!255 = !DILocation(line: 52, column: 1, scope: !250)
!256 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54e_badSink", scope: !55, file: !55, line: 26, type: !201, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!257 = !DILocalVariable(name: "data", arg: 1, scope: !256, file: !55, line: 26, type: !42)
!258 = !DILocation(line: 26, column: 81, scope: !256)
!259 = !DILocation(line: 29, column: 13, scope: !256)
!260 = !DILocation(line: 29, column: 21, scope: !256)
!261 = !DILocation(line: 29, column: 5, scope: !256)
!262 = !DILocation(line: 30, column: 1, scope: !256)
!263 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54e_goodG2BSink", scope: !55, file: !55, line: 37, type: !201, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!264 = !DILocalVariable(name: "data", arg: 1, scope: !263, file: !55, line: 37, type: !42)
!265 = !DILocation(line: 37, column: 85, scope: !263)
!266 = !DILocation(line: 40, column: 13, scope: !263)
!267 = !DILocation(line: 40, column: 21, scope: !263)
!268 = !DILocation(line: 40, column: 5, scope: !263)
!269 = !DILocation(line: 41, column: 1, scope: !263)
!270 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_54e_goodB2GSink", scope: !55, file: !55, line: 44, type: !201, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!271 = !DILocalVariable(name: "data", arg: 1, scope: !270, file: !55, line: 44, type: !42)
!272 = !DILocation(line: 44, column: 85, scope: !270)
!273 = !DILocation(line: 47, column: 13, scope: !270)
!274 = !DILocation(line: 47, column: 29, scope: !270)
!275 = !DILocation(line: 47, column: 5, scope: !270)
!276 = !DILocation(line: 48, column: 1, scope: !270)
!277 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !201, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!278 = !DILocalVariable(name: "line", arg: 1, scope: !277, file: !3, line: 11, type: !42)
!279 = !DILocation(line: 11, column: 25, scope: !277)
!280 = !DILocation(line: 13, column: 1, scope: !277)
!281 = !DILocation(line: 14, column: 8, scope: !282)
!282 = distinct !DILexicalBlock(scope: !277, file: !3, line: 14, column: 8)
!283 = !DILocation(line: 14, column: 13, scope: !282)
!284 = !DILocation(line: 14, column: 8, scope: !277)
!285 = !DILocation(line: 16, column: 24, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !3, line: 15, column: 5)
!287 = !DILocation(line: 16, column: 9, scope: !286)
!288 = !DILocation(line: 17, column: 5, scope: !286)
!289 = !DILocation(line: 18, column: 5, scope: !277)
!290 = !DILocation(line: 19, column: 1, scope: !277)
!291 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !201, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!292 = !DILocalVariable(name: "line", arg: 1, scope: !291, file: !3, line: 20, type: !42)
!293 = !DILocation(line: 20, column: 29, scope: !291)
!294 = !DILocation(line: 22, column: 8, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !3, line: 22, column: 8)
!296 = !DILocation(line: 22, column: 13, scope: !295)
!297 = !DILocation(line: 22, column: 8, scope: !291)
!298 = !DILocation(line: 24, column: 24, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !3, line: 23, column: 5)
!300 = !DILocation(line: 24, column: 9, scope: !299)
!301 = !DILocation(line: 25, column: 5, scope: !299)
!302 = !DILocation(line: 26, column: 1, scope: !291)
!303 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !304, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !23)
!308 = !DILocalVariable(name: "line", arg: 1, scope: !303, file: !3, line: 27, type: !306)
!309 = !DILocation(line: 27, column: 29, scope: !303)
!310 = !DILocation(line: 29, column: 8, scope: !311)
!311 = distinct !DILexicalBlock(scope: !303, file: !3, line: 29, column: 8)
!312 = !DILocation(line: 29, column: 13, scope: !311)
!313 = !DILocation(line: 29, column: 8, scope: !303)
!314 = !DILocation(line: 31, column: 27, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !3, line: 30, column: 5)
!316 = !DILocation(line: 31, column: 9, scope: !315)
!317 = !DILocation(line: 32, column: 5, scope: !315)
!318 = !DILocation(line: 33, column: 1, scope: !303)
!319 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !320, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !23}
!322 = !DILocalVariable(name: "intNumber", arg: 1, scope: !319, file: !3, line: 35, type: !23)
!323 = !DILocation(line: 35, column: 24, scope: !319)
!324 = !DILocation(line: 37, column: 20, scope: !319)
!325 = !DILocation(line: 37, column: 5, scope: !319)
!326 = !DILocation(line: 38, column: 1, scope: !319)
!327 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !328, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !330}
!330 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!331 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !327, file: !3, line: 40, type: !330)
!332 = !DILocation(line: 40, column: 28, scope: !327)
!333 = !DILocation(line: 42, column: 21, scope: !327)
!334 = !DILocation(line: 42, column: 5, scope: !327)
!335 = !DILocation(line: 43, column: 1, scope: !327)
!336 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !337, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339}
!339 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!340 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !336, file: !3, line: 45, type: !339)
!341 = !DILocation(line: 45, column: 28, scope: !336)
!342 = !DILocation(line: 47, column: 20, scope: !336)
!343 = !DILocation(line: 47, column: 5, scope: !336)
!344 = !DILocation(line: 48, column: 1, scope: !336)
!345 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !346, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !348}
!348 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!349 = !DILocalVariable(name: "longNumber", arg: 1, scope: !345, file: !3, line: 50, type: !348)
!350 = !DILocation(line: 50, column: 26, scope: !345)
!351 = !DILocation(line: 52, column: 21, scope: !345)
!352 = !DILocation(line: 52, column: 5, scope: !345)
!353 = !DILocation(line: 53, column: 1, scope: !345)
!354 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !355, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !358, line: 27, baseType: !359)
!358 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !360, line: 44, baseType: !348)
!360 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!361 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !354, file: !3, line: 55, type: !357)
!362 = !DILocation(line: 55, column: 33, scope: !354)
!363 = !DILocation(line: 57, column: 29, scope: !354)
!364 = !DILocation(line: 57, column: 5, scope: !354)
!365 = !DILocation(line: 58, column: 1, scope: !354)
!366 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !367, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !74}
!369 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !366, file: !3, line: 60, type: !74)
!370 = !DILocation(line: 60, column: 29, scope: !366)
!371 = !DILocation(line: 62, column: 21, scope: !366)
!372 = !DILocation(line: 62, column: 5, scope: !366)
!373 = !DILocation(line: 63, column: 1, scope: !366)
!374 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !375, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !43}
!377 = !DILocalVariable(name: "charHex", arg: 1, scope: !374, file: !3, line: 65, type: !43)
!378 = !DILocation(line: 65, column: 29, scope: !374)
!379 = !DILocation(line: 67, column: 22, scope: !374)
!380 = !DILocation(line: 67, column: 5, scope: !374)
!381 = !DILocation(line: 68, column: 1, scope: !374)
!382 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !383, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !307}
!385 = !DILocalVariable(name: "wideChar", arg: 1, scope: !382, file: !3, line: 70, type: !307)
!386 = !DILocation(line: 70, column: 29, scope: !382)
!387 = !DILocalVariable(name: "s", scope: !382, file: !3, line: 74, type: !388)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 64, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 2)
!391 = !DILocation(line: 74, column: 13, scope: !382)
!392 = !DILocation(line: 75, column: 16, scope: !382)
!393 = !DILocation(line: 75, column: 9, scope: !382)
!394 = !DILocation(line: 75, column: 14, scope: !382)
!395 = !DILocation(line: 76, column: 9, scope: !382)
!396 = !DILocation(line: 76, column: 14, scope: !382)
!397 = !DILocation(line: 77, column: 21, scope: !382)
!398 = !DILocation(line: 77, column: 5, scope: !382)
!399 = !DILocation(line: 78, column: 1, scope: !382)
!400 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !401, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !7}
!403 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !400, file: !3, line: 80, type: !7)
!404 = !DILocation(line: 80, column: 33, scope: !400)
!405 = !DILocation(line: 82, column: 20, scope: !400)
!406 = !DILocation(line: 82, column: 5, scope: !400)
!407 = !DILocation(line: 83, column: 1, scope: !400)
!408 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !409, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !25}
!411 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !408, file: !3, line: 85, type: !25)
!412 = !DILocation(line: 85, column: 45, scope: !408)
!413 = !DILocation(line: 87, column: 22, scope: !408)
!414 = !DILocation(line: 87, column: 5, scope: !408)
!415 = !DILocation(line: 88, column: 1, scope: !408)
!416 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !417, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !419}
!419 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!420 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !416, file: !3, line: 90, type: !419)
!421 = !DILocation(line: 90, column: 29, scope: !416)
!422 = !DILocation(line: 92, column: 20, scope: !416)
!423 = !DILocation(line: 92, column: 5, scope: !416)
!424 = !DILocation(line: 93, column: 1, scope: !416)
!425 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !426, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !430, line: 100, baseType: !431)
!430 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_418/source_code")
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !430, line: 96, size: 64, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !431, file: !430, line: 98, baseType: !23, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !431, file: !430, line: 99, baseType: !23, size: 32, offset: 32)
!435 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !425, file: !3, line: 95, type: !428)
!436 = !DILocation(line: 95, column: 40, scope: !425)
!437 = !DILocation(line: 97, column: 26, scope: !425)
!438 = !DILocation(line: 97, column: 47, scope: !425)
!439 = !DILocation(line: 97, column: 55, scope: !425)
!440 = !DILocation(line: 97, column: 76, scope: !425)
!441 = !DILocation(line: 97, column: 5, scope: !425)
!442 = !DILocation(line: 98, column: 1, scope: !425)
!443 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !444, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !446, !74}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!447 = !DILocalVariable(name: "bytes", arg: 1, scope: !443, file: !3, line: 100, type: !446)
!448 = !DILocation(line: 100, column: 38, scope: !443)
!449 = !DILocalVariable(name: "numBytes", arg: 2, scope: !443, file: !3, line: 100, type: !74)
!450 = !DILocation(line: 100, column: 52, scope: !443)
!451 = !DILocalVariable(name: "i", scope: !443, file: !3, line: 102, type: !74)
!452 = !DILocation(line: 102, column: 12, scope: !443)
!453 = !DILocation(line: 103, column: 12, scope: !454)
!454 = distinct !DILexicalBlock(scope: !443, file: !3, line: 103, column: 5)
!455 = !DILocation(line: 103, column: 10, scope: !454)
!456 = !DILocation(line: 103, column: 17, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !3, line: 103, column: 5)
!458 = !DILocation(line: 103, column: 21, scope: !457)
!459 = !DILocation(line: 103, column: 19, scope: !457)
!460 = !DILocation(line: 103, column: 5, scope: !454)
!461 = !DILocation(line: 105, column: 24, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !3, line: 104, column: 5)
!463 = !DILocation(line: 105, column: 30, scope: !462)
!464 = !DILocation(line: 105, column: 9, scope: !462)
!465 = !DILocation(line: 106, column: 5, scope: !462)
!466 = !DILocation(line: 103, column: 31, scope: !457)
!467 = !DILocation(line: 103, column: 5, scope: !457)
!468 = distinct !{!468, !460, !469, !470}
!469 = !DILocation(line: 106, column: 5, scope: !454)
!470 = !{!"llvm.loop.mustprogress"}
!471 = !DILocation(line: 107, column: 5, scope: !443)
!472 = !DILocation(line: 108, column: 1, scope: !443)
!473 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !474, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!474 = !DISubroutineType(types: !475)
!475 = !{!74, !446, !74, !42}
!476 = !DILocalVariable(name: "bytes", arg: 1, scope: !473, file: !3, line: 113, type: !446)
!477 = !DILocation(line: 113, column: 39, scope: !473)
!478 = !DILocalVariable(name: "numBytes", arg: 2, scope: !473, file: !3, line: 113, type: !74)
!479 = !DILocation(line: 113, column: 53, scope: !473)
!480 = !DILocalVariable(name: "hex", arg: 3, scope: !473, file: !3, line: 113, type: !42)
!481 = !DILocation(line: 113, column: 71, scope: !473)
!482 = !DILocalVariable(name: "numWritten", scope: !473, file: !3, line: 115, type: !74)
!483 = !DILocation(line: 115, column: 12, scope: !473)
!484 = !DILocation(line: 121, column: 5, scope: !473)
!485 = !DILocation(line: 121, column: 12, scope: !473)
!486 = !DILocation(line: 121, column: 25, scope: !473)
!487 = !DILocation(line: 121, column: 23, scope: !473)
!488 = !DILocation(line: 121, column: 34, scope: !473)
!489 = !DILocation(line: 121, column: 37, scope: !473)
!490 = !DILocation(line: 121, column: 67, scope: !473)
!491 = !DILocation(line: 121, column: 70, scope: !473)
!492 = !DILocation(line: 0, scope: !473)
!493 = !DILocalVariable(name: "byte", scope: !494, file: !3, line: 123, type: !23)
!494 = distinct !DILexicalBlock(scope: !473, file: !3, line: 122, column: 5)
!495 = !DILocation(line: 123, column: 13, scope: !494)
!496 = !DILocation(line: 124, column: 17, scope: !494)
!497 = !DILocation(line: 124, column: 25, scope: !494)
!498 = !DILocation(line: 124, column: 23, scope: !494)
!499 = !DILocation(line: 124, column: 9, scope: !494)
!500 = !DILocation(line: 125, column: 45, scope: !494)
!501 = !DILocation(line: 125, column: 29, scope: !494)
!502 = !DILocation(line: 125, column: 9, scope: !494)
!503 = !DILocation(line: 125, column: 15, scope: !494)
!504 = !DILocation(line: 125, column: 27, scope: !494)
!505 = !DILocation(line: 126, column: 9, scope: !494)
!506 = distinct !{!506, !484, !507, !470}
!507 = !DILocation(line: 127, column: 5, scope: !473)
!508 = !DILocation(line: 129, column: 12, scope: !473)
!509 = !DILocation(line: 129, column: 5, scope: !473)
!510 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !511, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!511 = !DISubroutineType(types: !512)
!512 = !{!74, !446, !74, !306}
!513 = !DILocalVariable(name: "bytes", arg: 1, scope: !510, file: !3, line: 135, type: !446)
!514 = !DILocation(line: 135, column: 41, scope: !510)
!515 = !DILocalVariable(name: "numBytes", arg: 2, scope: !510, file: !3, line: 135, type: !74)
!516 = !DILocation(line: 135, column: 55, scope: !510)
!517 = !DILocalVariable(name: "hex", arg: 3, scope: !510, file: !3, line: 135, type: !306)
!518 = !DILocation(line: 135, column: 76, scope: !510)
!519 = !DILocalVariable(name: "numWritten", scope: !510, file: !3, line: 137, type: !74)
!520 = !DILocation(line: 137, column: 12, scope: !510)
!521 = !DILocation(line: 143, column: 5, scope: !510)
!522 = !DILocation(line: 143, column: 12, scope: !510)
!523 = !DILocation(line: 143, column: 25, scope: !510)
!524 = !DILocation(line: 143, column: 23, scope: !510)
!525 = !DILocation(line: 143, column: 34, scope: !510)
!526 = !DILocation(line: 143, column: 47, scope: !510)
!527 = !DILocation(line: 143, column: 55, scope: !510)
!528 = !DILocation(line: 143, column: 53, scope: !510)
!529 = !DILocation(line: 143, column: 37, scope: !510)
!530 = !DILocation(line: 143, column: 68, scope: !510)
!531 = !DILocation(line: 143, column: 81, scope: !510)
!532 = !DILocation(line: 143, column: 89, scope: !510)
!533 = !DILocation(line: 143, column: 87, scope: !510)
!534 = !DILocation(line: 143, column: 100, scope: !510)
!535 = !DILocation(line: 143, column: 71, scope: !510)
!536 = !DILocation(line: 0, scope: !510)
!537 = !DILocalVariable(name: "byte", scope: !538, file: !3, line: 145, type: !23)
!538 = distinct !DILexicalBlock(scope: !510, file: !3, line: 144, column: 5)
!539 = !DILocation(line: 145, column: 13, scope: !538)
!540 = !DILocation(line: 146, column: 18, scope: !538)
!541 = !DILocation(line: 146, column: 26, scope: !538)
!542 = !DILocation(line: 146, column: 24, scope: !538)
!543 = !DILocation(line: 146, column: 9, scope: !538)
!544 = !DILocation(line: 147, column: 45, scope: !538)
!545 = !DILocation(line: 147, column: 29, scope: !538)
!546 = !DILocation(line: 147, column: 9, scope: !538)
!547 = !DILocation(line: 147, column: 15, scope: !538)
!548 = !DILocation(line: 147, column: 27, scope: !538)
!549 = !DILocation(line: 148, column: 9, scope: !538)
!550 = distinct !{!550, !521, !551, !470}
!551 = !DILocation(line: 149, column: 5, scope: !510)
!552 = !DILocation(line: 151, column: 12, scope: !510)
!553 = !DILocation(line: 151, column: 5, scope: !510)
!554 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !555, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DISubroutineType(types: !556)
!556 = !{!23}
!557 = !DILocation(line: 158, column: 5, scope: !554)
!558 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !555, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 163, column: 5, scope: !558)
!560 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !555, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DILocation(line: 168, column: 13, scope: !560)
!562 = !DILocation(line: 168, column: 20, scope: !560)
!563 = !DILocation(line: 168, column: 5, scope: !560)
!564 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !61, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DILocation(line: 187, column: 16, scope: !564)
!566 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !61, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 188, column: 16, scope: !566)
!568 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !61, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 189, column: 16, scope: !568)
!570 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !61, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 190, column: 16, scope: !570)
!572 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !61, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DILocation(line: 191, column: 16, scope: !572)
!574 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !61, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DILocation(line: 192, column: 16, scope: !574)
!576 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !61, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DILocation(line: 193, column: 16, scope: !576)
!578 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !61, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DILocation(line: 194, column: 16, scope: !578)
!580 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !61, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DILocation(line: 195, column: 16, scope: !580)
!582 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !61, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DILocation(line: 198, column: 15, scope: !582)
!584 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !61, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DILocation(line: 199, column: 15, scope: !584)
!586 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !61, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DILocation(line: 200, column: 15, scope: !586)
!588 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !61, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DILocation(line: 201, column: 15, scope: !588)
!590 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !61, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!591 = !DILocation(line: 202, column: 15, scope: !590)
!592 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !61, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!593 = !DILocation(line: 203, column: 15, scope: !592)
!594 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !61, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!595 = !DILocation(line: 204, column: 15, scope: !594)
!596 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !61, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!597 = !DILocation(line: 205, column: 15, scope: !596)
!598 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !61, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!599 = !DILocation(line: 206, column: 15, scope: !598)
