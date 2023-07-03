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
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_54_bad() #0 !dbg !60 {
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
  call void @CWE606_Unchecked_Loop_Condition__char_console_54b_badSink(i8* %16), !dbg !124
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !134
  %2 = load i8*, i8** %data, align 8, !dbg !135
  call void @CWE606_Unchecked_Loop_Condition__char_console_54b_goodG2BSink(i8* %2), !dbg !136
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
  call void @CWE606_Unchecked_Loop_Condition__char_console_54b_goodB2GSink(i8* %16), !dbg !194
  ret void, !dbg !195
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_54_good() #0 !dbg !196 {
entry:
  call void @goodG2B(), !dbg !197
  call void @goodB2G(), !dbg !198
  ret void, !dbg !199
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_54b_badSink(i8* %data) #0 !dbg !200 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !203, metadata !DIExpression()), !dbg !204
  %0 = load i8*, i8** %data.addr, align 8, !dbg !205
  call void @CWE606_Unchecked_Loop_Condition__char_console_54c_badSink(i8* %0), !dbg !206
  ret void, !dbg !207
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_54b_goodG2BSink(i8* %data) #0 !dbg !208 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !209, metadata !DIExpression()), !dbg !210
  %0 = load i8*, i8** %data.addr, align 8, !dbg !211
  call void @CWE606_Unchecked_Loop_Condition__char_console_54c_goodG2BSink(i8* %0), !dbg !212
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_54b_goodB2GSink(i8* %data) #0 !dbg !214 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = load i8*, i8** %data.addr, align 8, !dbg !217
  call void @CWE606_Unchecked_Loop_Condition__char_console_54c_goodB2GSink(i8* %0), !dbg !218
  ret void, !dbg !219
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_54c_badSink(i8* %data) #0 !dbg !220 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = load i8*, i8** %data.addr, align 8, !dbg !223
  call void @CWE606_Unchecked_Loop_Condition__char_console_54d_badSink(i8* %0), !dbg !224
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_54c_goodG2BSink(i8* %data) #0 !dbg !226 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !227, metadata !DIExpression()), !dbg !228
  %0 = load i8*, i8** %data.addr, align 8, !dbg !229
  call void @CWE606_Unchecked_Loop_Condition__char_console_54d_goodG2BSink(i8* %0), !dbg !230
  ret void, !dbg !231
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_54c_goodB2GSink(i8* %data) #0 !dbg !232 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !233, metadata !DIExpression()), !dbg !234
  %0 = load i8*, i8** %data.addr, align 8, !dbg !235
  call void @CWE606_Unchecked_Loop_Condition__char_console_54d_goodB2GSink(i8* %0), !dbg !236
  ret void, !dbg !237
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_54d_badSink(i8* %data) #0 !dbg !238 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !239, metadata !DIExpression()), !dbg !240
  %0 = load i8*, i8** %data.addr, align 8, !dbg !241
  call void @CWE606_Unchecked_Loop_Condition__char_console_54e_badSink(i8* %0), !dbg !242
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_54d_goodG2BSink(i8* %data) #0 !dbg !244 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load i8*, i8** %data.addr, align 8, !dbg !247
  call void @CWE606_Unchecked_Loop_Condition__char_console_54e_goodG2BSink(i8* %0), !dbg !248
  ret void, !dbg !249
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_54d_goodB2GSink(i8* %data) #0 !dbg !250 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !251, metadata !DIExpression()), !dbg !252
  %0 = load i8*, i8** %data.addr, align 8, !dbg !253
  call void @CWE606_Unchecked_Loop_Condition__char_console_54e_goodB2GSink(i8* %0), !dbg !254
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_54e_badSink(i8* %data) #0 !dbg !256 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata i32* %i, metadata !259, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %n, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load i8*, i8** %data.addr, align 8, !dbg !266
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* %n) #8, !dbg !268
  %cmp = icmp eq i32 %call, 1, !dbg !269
  br i1 %cmp, label %if.then, label %if.end, !dbg !270

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !271
  store i32 0, i32* %i, align 4, !dbg !273
  br label %for.cond, !dbg !275

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !276
  %2 = load i32, i32* %n, align 4, !dbg !278
  %cmp1 = icmp slt i32 %1, %2, !dbg !279
  br i1 %cmp1, label %for.body, label %for.end, !dbg !280

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !281
  %inc = add nsw i32 %3, 1, !dbg !281
  store i32 %inc, i32* %intVariable, align 4, !dbg !281
  br label %for.inc, !dbg !283

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !284
  %inc2 = add nsw i32 %4, 1, !dbg !284
  store i32 %inc2, i32* %i, align 4, !dbg !284
  br label %for.cond, !dbg !285, !llvm.loop !286

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !289
  call void @printIntLine(i32 %5), !dbg !290
  br label %if.end, !dbg !291

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !292
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_54e_goodG2BSink(i8* %data) #0 !dbg !293 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata i32* %i, metadata !296, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata i32* %n, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !301, metadata !DIExpression()), !dbg !302
  %0 = load i8*, i8** %data.addr, align 8, !dbg !303
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* %n) #8, !dbg !305
  %cmp = icmp eq i32 %call, 1, !dbg !306
  br i1 %cmp, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !308
  store i32 0, i32* %i, align 4, !dbg !310
  br label %for.cond, !dbg !312

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !313
  %2 = load i32, i32* %n, align 4, !dbg !315
  %cmp1 = icmp slt i32 %1, %2, !dbg !316
  br i1 %cmp1, label %for.body, label %for.end, !dbg !317

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !318
  %inc = add nsw i32 %3, 1, !dbg !318
  store i32 %inc, i32* %intVariable, align 4, !dbg !318
  br label %for.inc, !dbg !320

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !321
  %inc2 = add nsw i32 %4, 1, !dbg !321
  store i32 %inc2, i32* %i, align 4, !dbg !321
  br label %for.cond, !dbg !322, !llvm.loop !323

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !325
  call void @printIntLine(i32 %5), !dbg !326
  br label %if.end, !dbg !327

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_54e_goodB2GSink(i8* %data) #0 !dbg !329 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata i32* %i, metadata !332, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata i32* %n, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load i8*, i8** %data.addr, align 8, !dbg !339
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* %n) #8, !dbg !341
  %cmp = icmp eq i32 %call, 1, !dbg !342
  br i1 %cmp, label %if.then, label %if.end5, !dbg !343

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !344
  %cmp1 = icmp slt i32 %1, 10000, !dbg !347
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !348

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !349
  store i32 0, i32* %i, align 4, !dbg !351
  br label %for.cond, !dbg !353

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !354
  %3 = load i32, i32* %n, align 4, !dbg !356
  %cmp3 = icmp slt i32 %2, %3, !dbg !357
  br i1 %cmp3, label %for.body, label %for.end, !dbg !358

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !359
  %inc = add nsw i32 %4, 1, !dbg !359
  store i32 %inc, i32* %intVariable, align 4, !dbg !359
  br label %for.inc, !dbg !361

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !362
  %inc4 = add nsw i32 %5, 1, !dbg !362
  store i32 %inc4, i32* %i, align 4, !dbg !362
  br label %for.cond, !dbg !363, !llvm.loop !364

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !366
  call void @printIntLine(i32 %6), !dbg !367
  br label %if.end, !dbg !368

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !369

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !370
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !371 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)), !dbg !374
  %0 = load i8*, i8** %line.addr, align 8, !dbg !375
  %cmp = icmp ne i8* %0, null, !dbg !377
  br i1 %cmp, label %if.then, label %if.end, !dbg !378

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !379
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.29, i64 0, i64 0), i8* %1), !dbg !381
  br label %if.end, !dbg !382

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !383
  ret void, !dbg !384
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !385 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = load i8*, i8** %line.addr, align 8, !dbg !388
  %cmp = icmp ne i8* %0, null, !dbg !390
  br i1 %cmp, label %if.then, label %if.end, !dbg !391

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !392
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.29, i64 0, i64 0), i8* %1), !dbg !394
  br label %if.end, !dbg !395

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !397 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load i32*, i32** %line.addr, align 8, !dbg !404
  %cmp = icmp ne i32* %0, null, !dbg !406
  br i1 %cmp, label %if.then, label %if.end, !dbg !407

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !408
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !410
  br label %if.end, !dbg !411

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !412
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !413 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !418
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !419
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
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !463, metadata !DIExpression()), !dbg !464
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !465
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !466
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !468 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !471, metadata !DIExpression()), !dbg !472
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !473
  %conv = sext i8 %0 to i32, !dbg !473
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !474
  ret void, !dbg !475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !476 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !479, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !481, metadata !DIExpression()), !dbg !485
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !486
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !487
  store i32 %0, i32* %arrayidx, align 4, !dbg !488
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !489
  store i32 0, i32* %arrayidx1, align 4, !dbg !490
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !491
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !492
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !494 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !499
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !500
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !502 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !505, metadata !DIExpression()), !dbg !506
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !507
  %conv = zext i8 %0 to i32, !dbg !507
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !508
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !510 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !514, metadata !DIExpression()), !dbg !515
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !516
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !517
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !519 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !529, metadata !DIExpression()), !dbg !530
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !531
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !532
  %1 = load i32, i32* %intOne, align 4, !dbg !532
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !533
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !534
  %3 = load i32, i32* %intTwo, align 4, !dbg !534
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !535
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !537 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !541, metadata !DIExpression()), !dbg !542
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.declare(metadata i64* %i, metadata !545, metadata !DIExpression()), !dbg !546
  store i64 0, i64* %i, align 8, !dbg !547
  br label %for.cond, !dbg !549

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !550
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !552
  %cmp = icmp ult i64 %0, %1, !dbg !553
  br i1 %cmp, label %for.body, label %for.end, !dbg !554

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !555
  %3 = load i64, i64* %i, align 8, !dbg !557
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !555
  %4 = load i8, i8* %arrayidx, align 1, !dbg !555
  %conv = zext i8 %4 to i32, !dbg !555
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !558
  br label %for.inc, !dbg !559

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !560
  %inc = add i64 %5, 1, !dbg !560
  store i64 %inc, i64* %i, align 8, !dbg !560
  br label %for.cond, !dbg !561, !llvm.loop !562

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !564
  ret void, !dbg !565
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !566 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !569, metadata !DIExpression()), !dbg !570
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !571, metadata !DIExpression()), !dbg !572
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !573, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !575, metadata !DIExpression()), !dbg !576
  store i64 0, i64* %numWritten, align 8, !dbg !576
  br label %while.cond, !dbg !577

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !578
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !579
  %cmp = icmp ult i64 %0, %1, !dbg !580
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !581

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !582
  %2 = load i16*, i16** %call, align 8, !dbg !582
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !582
  %4 = load i64, i64* %numWritten, align 8, !dbg !582
  %mul = mul i64 2, %4, !dbg !582
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !582
  %5 = load i8, i8* %arrayidx, align 1, !dbg !582
  %conv = sext i8 %5 to i32, !dbg !582
  %idxprom = sext i32 %conv to i64, !dbg !582
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !582
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !582
  %conv2 = zext i16 %6 to i32, !dbg !582
  %and = and i32 %conv2, 4096, !dbg !582
  %tobool = icmp ne i32 %and, 0, !dbg !582
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !583

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !584
  %7 = load i16*, i16** %call3, align 8, !dbg !584
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !584
  %9 = load i64, i64* %numWritten, align 8, !dbg !584
  %mul4 = mul i64 2, %9, !dbg !584
  %add = add i64 %mul4, 1, !dbg !584
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !584
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !584
  %conv6 = sext i8 %10 to i32, !dbg !584
  %idxprom7 = sext i32 %conv6 to i64, !dbg !584
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !584
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !584
  %conv9 = zext i16 %11 to i32, !dbg !584
  %and10 = and i32 %conv9, 4096, !dbg !584
  %tobool11 = icmp ne i32 %and10, 0, !dbg !583
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !585
  br i1 %12, label %while.body, label %while.end, !dbg !577

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !586, metadata !DIExpression()), !dbg !588
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !589
  %14 = load i64, i64* %numWritten, align 8, !dbg !590
  %mul12 = mul i64 2, %14, !dbg !591
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !589
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !592
  %15 = load i32, i32* %byte, align 4, !dbg !593
  %conv15 = trunc i32 %15 to i8, !dbg !594
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !595
  %17 = load i64, i64* %numWritten, align 8, !dbg !596
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !595
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !597
  %18 = load i64, i64* %numWritten, align 8, !dbg !598
  %inc = add i64 %18, 1, !dbg !598
  store i64 %inc, i64* %numWritten, align 8, !dbg !598
  br label %while.cond, !dbg !577, !llvm.loop !599

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !601
  ret i64 %19, !dbg !602
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !603 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !606, metadata !DIExpression()), !dbg !607
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !608, metadata !DIExpression()), !dbg !609
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !612, metadata !DIExpression()), !dbg !613
  store i64 0, i64* %numWritten, align 8, !dbg !613
  br label %while.cond, !dbg !614

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !615
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !616
  %cmp = icmp ult i64 %0, %1, !dbg !617
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !618

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !619
  %3 = load i64, i64* %numWritten, align 8, !dbg !620
  %mul = mul i64 2, %3, !dbg !621
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !619
  %4 = load i32, i32* %arrayidx, align 4, !dbg !619
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !622
  %tobool = icmp ne i32 %call, 0, !dbg !622
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !623

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !624
  %6 = load i64, i64* %numWritten, align 8, !dbg !625
  %mul1 = mul i64 2, %6, !dbg !626
  %add = add i64 %mul1, 1, !dbg !627
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !624
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !624
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !628
  %tobool4 = icmp ne i32 %call3, 0, !dbg !623
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !629
  br i1 %8, label %while.body, label %while.end, !dbg !614

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !630, metadata !DIExpression()), !dbg !632
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !633
  %10 = load i64, i64* %numWritten, align 8, !dbg !634
  %mul5 = mul i64 2, %10, !dbg !635
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !633
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !636
  %11 = load i32, i32* %byte, align 4, !dbg !637
  %conv = trunc i32 %11 to i8, !dbg !638
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !639
  %13 = load i64, i64* %numWritten, align 8, !dbg !640
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !639
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !641
  %14 = load i64, i64* %numWritten, align 8, !dbg !642
  %inc = add i64 %14, 1, !dbg !642
  store i64 %inc, i64* %numWritten, align 8, !dbg !642
  br label %while.cond, !dbg !614, !llvm.loop !643

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !645
  ret i64 %15, !dbg !646
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !647 {
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
  %call = call i32 @rand() #8, !dbg !654
  %rem = srem i32 %call, 2, !dbg !655
  ret i32 %rem, !dbg !656
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_010/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_54a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_010/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_54b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_010/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_54c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_010/source_code")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_54d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_010/source_code")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_54e.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_010/source_code")
!56 = !{!"clang version 12.0.0"}
!57 = !{i32 7, !"Dwarf Version", i32 4}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_54_bad", scope: !45, file: !45, line: 31, type: !61, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!61 = !DISubroutineType(types: !62)
!62 = !{null}
!63 = !DILocalVariable(name: "data", scope: !60, file: !45, line: 33, type: !42)
!64 = !DILocation(line: 33, column: 12, scope: !60)
!65 = !DILocalVariable(name: "dataBuffer", scope: !60, file: !45, line: 34, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 100)
!69 = !DILocation(line: 34, column: 10, scope: !60)
!70 = !DILocation(line: 35, column: 12, scope: !60)
!71 = !DILocation(line: 35, column: 10, scope: !60)
!72 = !DILocalVariable(name: "dataLen", scope: !73, file: !45, line: 38, type: !74)
!73 = distinct !DILexicalBlock(scope: !60, file: !45, line: 36, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 38, column: 16, scope: !73)
!78 = !DILocation(line: 38, column: 33, scope: !73)
!79 = !DILocation(line: 38, column: 26, scope: !73)
!80 = !DILocation(line: 40, column: 17, scope: !81)
!81 = distinct !DILexicalBlock(scope: !73, file: !45, line: 40, column: 13)
!82 = !DILocation(line: 40, column: 16, scope: !81)
!83 = !DILocation(line: 40, column: 25, scope: !81)
!84 = !DILocation(line: 40, column: 13, scope: !73)
!85 = !DILocation(line: 43, column: 23, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !45, line: 43, column: 17)
!87 = distinct !DILexicalBlock(scope: !81, file: !45, line: 41, column: 9)
!88 = !DILocation(line: 43, column: 28, scope: !86)
!89 = !DILocation(line: 43, column: 27, scope: !86)
!90 = !DILocation(line: 43, column: 47, scope: !86)
!91 = !DILocation(line: 43, column: 46, scope: !86)
!92 = !DILocation(line: 43, column: 37, scope: !86)
!93 = !DILocation(line: 43, column: 57, scope: !86)
!94 = !DILocation(line: 43, column: 17, scope: !86)
!95 = !DILocation(line: 43, column: 64, scope: !86)
!96 = !DILocation(line: 43, column: 17, scope: !87)
!97 = !DILocation(line: 47, column: 34, scope: !98)
!98 = distinct !DILexicalBlock(scope: !86, file: !45, line: 44, column: 13)
!99 = !DILocation(line: 47, column: 27, scope: !98)
!100 = !DILocation(line: 47, column: 25, scope: !98)
!101 = !DILocation(line: 48, column: 21, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !45, line: 48, column: 21)
!103 = !DILocation(line: 48, column: 29, scope: !102)
!104 = !DILocation(line: 48, column: 33, scope: !102)
!105 = !DILocation(line: 48, column: 36, scope: !102)
!106 = !DILocation(line: 48, column: 41, scope: !102)
!107 = !DILocation(line: 48, column: 48, scope: !102)
!108 = !DILocation(line: 48, column: 52, scope: !102)
!109 = !DILocation(line: 48, column: 21, scope: !98)
!110 = !DILocation(line: 50, column: 21, scope: !111)
!111 = distinct !DILexicalBlock(scope: !102, file: !45, line: 49, column: 17)
!112 = !DILocation(line: 50, column: 26, scope: !111)
!113 = !DILocation(line: 50, column: 33, scope: !111)
!114 = !DILocation(line: 50, column: 37, scope: !111)
!115 = !DILocation(line: 51, column: 17, scope: !111)
!116 = !DILocation(line: 52, column: 13, scope: !98)
!117 = !DILocation(line: 55, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !86, file: !45, line: 54, column: 13)
!119 = !DILocation(line: 57, column: 17, scope: !118)
!120 = !DILocation(line: 57, column: 22, scope: !118)
!121 = !DILocation(line: 57, column: 31, scope: !118)
!122 = !DILocation(line: 59, column: 9, scope: !87)
!123 = !DILocation(line: 61, column: 63, scope: !60)
!124 = !DILocation(line: 61, column: 5, scope: !60)
!125 = !DILocation(line: 62, column: 1, scope: !60)
!126 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 70, type: !61, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!127 = !DILocalVariable(name: "data", scope: !126, file: !45, line: 72, type: !42)
!128 = !DILocation(line: 72, column: 12, scope: !126)
!129 = !DILocalVariable(name: "dataBuffer", scope: !126, file: !45, line: 73, type: !66)
!130 = !DILocation(line: 73, column: 10, scope: !126)
!131 = !DILocation(line: 74, column: 12, scope: !126)
!132 = !DILocation(line: 74, column: 10, scope: !126)
!133 = !DILocation(line: 76, column: 12, scope: !126)
!134 = !DILocation(line: 76, column: 5, scope: !126)
!135 = !DILocation(line: 77, column: 67, scope: !126)
!136 = !DILocation(line: 77, column: 5, scope: !126)
!137 = !DILocation(line: 78, column: 1, scope: !126)
!138 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 82, type: !61, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!139 = !DILocalVariable(name: "data", scope: !138, file: !45, line: 84, type: !42)
!140 = !DILocation(line: 84, column: 12, scope: !138)
!141 = !DILocalVariable(name: "dataBuffer", scope: !138, file: !45, line: 85, type: !66)
!142 = !DILocation(line: 85, column: 10, scope: !138)
!143 = !DILocation(line: 86, column: 12, scope: !138)
!144 = !DILocation(line: 86, column: 10, scope: !138)
!145 = !DILocalVariable(name: "dataLen", scope: !146, file: !45, line: 89, type: !74)
!146 = distinct !DILexicalBlock(scope: !138, file: !45, line: 87, column: 5)
!147 = !DILocation(line: 89, column: 16, scope: !146)
!148 = !DILocation(line: 89, column: 33, scope: !146)
!149 = !DILocation(line: 89, column: 26, scope: !146)
!150 = !DILocation(line: 91, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !45, line: 91, column: 13)
!152 = !DILocation(line: 91, column: 16, scope: !151)
!153 = !DILocation(line: 91, column: 25, scope: !151)
!154 = !DILocation(line: 91, column: 13, scope: !146)
!155 = !DILocation(line: 94, column: 23, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !45, line: 94, column: 17)
!157 = distinct !DILexicalBlock(scope: !151, file: !45, line: 92, column: 9)
!158 = !DILocation(line: 94, column: 28, scope: !156)
!159 = !DILocation(line: 94, column: 27, scope: !156)
!160 = !DILocation(line: 94, column: 47, scope: !156)
!161 = !DILocation(line: 94, column: 46, scope: !156)
!162 = !DILocation(line: 94, column: 37, scope: !156)
!163 = !DILocation(line: 94, column: 57, scope: !156)
!164 = !DILocation(line: 94, column: 17, scope: !156)
!165 = !DILocation(line: 94, column: 64, scope: !156)
!166 = !DILocation(line: 94, column: 17, scope: !157)
!167 = !DILocation(line: 98, column: 34, scope: !168)
!168 = distinct !DILexicalBlock(scope: !156, file: !45, line: 95, column: 13)
!169 = !DILocation(line: 98, column: 27, scope: !168)
!170 = !DILocation(line: 98, column: 25, scope: !168)
!171 = !DILocation(line: 99, column: 21, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !45, line: 99, column: 21)
!173 = !DILocation(line: 99, column: 29, scope: !172)
!174 = !DILocation(line: 99, column: 33, scope: !172)
!175 = !DILocation(line: 99, column: 36, scope: !172)
!176 = !DILocation(line: 99, column: 41, scope: !172)
!177 = !DILocation(line: 99, column: 48, scope: !172)
!178 = !DILocation(line: 99, column: 52, scope: !172)
!179 = !DILocation(line: 99, column: 21, scope: !168)
!180 = !DILocation(line: 101, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !172, file: !45, line: 100, column: 17)
!182 = !DILocation(line: 101, column: 26, scope: !181)
!183 = !DILocation(line: 101, column: 33, scope: !181)
!184 = !DILocation(line: 101, column: 37, scope: !181)
!185 = !DILocation(line: 102, column: 17, scope: !181)
!186 = !DILocation(line: 103, column: 13, scope: !168)
!187 = !DILocation(line: 106, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !156, file: !45, line: 105, column: 13)
!189 = !DILocation(line: 108, column: 17, scope: !188)
!190 = !DILocation(line: 108, column: 22, scope: !188)
!191 = !DILocation(line: 108, column: 31, scope: !188)
!192 = !DILocation(line: 110, column: 9, scope: !157)
!193 = !DILocation(line: 112, column: 67, scope: !138)
!194 = !DILocation(line: 112, column: 5, scope: !138)
!195 = !DILocation(line: 113, column: 1, scope: !138)
!196 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_54_good", scope: !45, file: !45, line: 115, type: !61, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!197 = !DILocation(line: 117, column: 5, scope: !196)
!198 = !DILocation(line: 118, column: 5, scope: !196)
!199 = !DILocation(line: 119, column: 1, scope: !196)
!200 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_54b_badSink", scope: !49, file: !49, line: 31, type: !201, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !42}
!203 = !DILocalVariable(name: "data", arg: 1, scope: !200, file: !49, line: 31, type: !42)
!204 = !DILocation(line: 31, column: 71, scope: !200)
!205 = !DILocation(line: 33, column: 63, scope: !200)
!206 = !DILocation(line: 33, column: 5, scope: !200)
!207 = !DILocation(line: 34, column: 1, scope: !200)
!208 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_54b_goodG2BSink", scope: !49, file: !49, line: 43, type: !201, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!209 = !DILocalVariable(name: "data", arg: 1, scope: !208, file: !49, line: 43, type: !42)
!210 = !DILocation(line: 43, column: 75, scope: !208)
!211 = !DILocation(line: 45, column: 67, scope: !208)
!212 = !DILocation(line: 45, column: 5, scope: !208)
!213 = !DILocation(line: 46, column: 1, scope: !208)
!214 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_54b_goodB2GSink", scope: !49, file: !49, line: 51, type: !201, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!215 = !DILocalVariable(name: "data", arg: 1, scope: !214, file: !49, line: 51, type: !42)
!216 = !DILocation(line: 51, column: 75, scope: !214)
!217 = !DILocation(line: 53, column: 67, scope: !214)
!218 = !DILocation(line: 53, column: 5, scope: !214)
!219 = !DILocation(line: 54, column: 1, scope: !214)
!220 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_54c_badSink", scope: !51, file: !51, line: 31, type: !201, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!221 = !DILocalVariable(name: "data", arg: 1, scope: !220, file: !51, line: 31, type: !42)
!222 = !DILocation(line: 31, column: 71, scope: !220)
!223 = !DILocation(line: 33, column: 63, scope: !220)
!224 = !DILocation(line: 33, column: 5, scope: !220)
!225 = !DILocation(line: 34, column: 1, scope: !220)
!226 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_54c_goodG2BSink", scope: !51, file: !51, line: 43, type: !201, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!227 = !DILocalVariable(name: "data", arg: 1, scope: !226, file: !51, line: 43, type: !42)
!228 = !DILocation(line: 43, column: 75, scope: !226)
!229 = !DILocation(line: 45, column: 67, scope: !226)
!230 = !DILocation(line: 45, column: 5, scope: !226)
!231 = !DILocation(line: 46, column: 1, scope: !226)
!232 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_54c_goodB2GSink", scope: !51, file: !51, line: 51, type: !201, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!233 = !DILocalVariable(name: "data", arg: 1, scope: !232, file: !51, line: 51, type: !42)
!234 = !DILocation(line: 51, column: 75, scope: !232)
!235 = !DILocation(line: 53, column: 67, scope: !232)
!236 = !DILocation(line: 53, column: 5, scope: !232)
!237 = !DILocation(line: 54, column: 1, scope: !232)
!238 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_54d_badSink", scope: !53, file: !53, line: 31, type: !201, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!239 = !DILocalVariable(name: "data", arg: 1, scope: !238, file: !53, line: 31, type: !42)
!240 = !DILocation(line: 31, column: 71, scope: !238)
!241 = !DILocation(line: 33, column: 63, scope: !238)
!242 = !DILocation(line: 33, column: 5, scope: !238)
!243 = !DILocation(line: 34, column: 1, scope: !238)
!244 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_54d_goodG2BSink", scope: !53, file: !53, line: 43, type: !201, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!245 = !DILocalVariable(name: "data", arg: 1, scope: !244, file: !53, line: 43, type: !42)
!246 = !DILocation(line: 43, column: 75, scope: !244)
!247 = !DILocation(line: 45, column: 67, scope: !244)
!248 = !DILocation(line: 45, column: 5, scope: !244)
!249 = !DILocation(line: 46, column: 1, scope: !244)
!250 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_54d_goodB2GSink", scope: !53, file: !53, line: 51, type: !201, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!251 = !DILocalVariable(name: "data", arg: 1, scope: !250, file: !53, line: 51, type: !42)
!252 = !DILocation(line: 51, column: 75, scope: !250)
!253 = !DILocation(line: 53, column: 67, scope: !250)
!254 = !DILocation(line: 53, column: 5, scope: !250)
!255 = !DILocation(line: 54, column: 1, scope: !250)
!256 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_54e_badSink", scope: !55, file: !55, line: 28, type: !201, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!257 = !DILocalVariable(name: "data", arg: 1, scope: !256, file: !55, line: 28, type: !42)
!258 = !DILocation(line: 28, column: 71, scope: !256)
!259 = !DILocalVariable(name: "i", scope: !260, file: !55, line: 31, type: !23)
!260 = distinct !DILexicalBlock(scope: !256, file: !55, line: 30, column: 5)
!261 = !DILocation(line: 31, column: 13, scope: !260)
!262 = !DILocalVariable(name: "n", scope: !260, file: !55, line: 31, type: !23)
!263 = !DILocation(line: 31, column: 16, scope: !260)
!264 = !DILocalVariable(name: "intVariable", scope: !260, file: !55, line: 31, type: !23)
!265 = !DILocation(line: 31, column: 19, scope: !260)
!266 = !DILocation(line: 32, column: 20, scope: !267)
!267 = distinct !DILexicalBlock(scope: !260, file: !55, line: 32, column: 13)
!268 = !DILocation(line: 32, column: 13, scope: !267)
!269 = !DILocation(line: 32, column: 36, scope: !267)
!270 = !DILocation(line: 32, column: 13, scope: !260)
!271 = !DILocation(line: 35, column: 25, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !55, line: 33, column: 9)
!273 = !DILocation(line: 36, column: 20, scope: !274)
!274 = distinct !DILexicalBlock(scope: !272, file: !55, line: 36, column: 13)
!275 = !DILocation(line: 36, column: 18, scope: !274)
!276 = !DILocation(line: 36, column: 25, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !55, line: 36, column: 13)
!278 = !DILocation(line: 36, column: 29, scope: !277)
!279 = !DILocation(line: 36, column: 27, scope: !277)
!280 = !DILocation(line: 36, column: 13, scope: !274)
!281 = !DILocation(line: 39, column: 28, scope: !282)
!282 = distinct !DILexicalBlock(scope: !277, file: !55, line: 37, column: 13)
!283 = !DILocation(line: 40, column: 13, scope: !282)
!284 = !DILocation(line: 36, column: 33, scope: !277)
!285 = !DILocation(line: 36, column: 13, scope: !277)
!286 = distinct !{!286, !280, !287, !288}
!287 = !DILocation(line: 40, column: 13, scope: !274)
!288 = !{!"llvm.loop.mustprogress"}
!289 = !DILocation(line: 41, column: 26, scope: !272)
!290 = !DILocation(line: 41, column: 13, scope: !272)
!291 = !DILocation(line: 42, column: 9, scope: !272)
!292 = !DILocation(line: 44, column: 1, scope: !256)
!293 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_54e_goodG2BSink", scope: !55, file: !55, line: 51, type: !201, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!294 = !DILocalVariable(name: "data", arg: 1, scope: !293, file: !55, line: 51, type: !42)
!295 = !DILocation(line: 51, column: 75, scope: !293)
!296 = !DILocalVariable(name: "i", scope: !297, file: !55, line: 54, type: !23)
!297 = distinct !DILexicalBlock(scope: !293, file: !55, line: 53, column: 5)
!298 = !DILocation(line: 54, column: 13, scope: !297)
!299 = !DILocalVariable(name: "n", scope: !297, file: !55, line: 54, type: !23)
!300 = !DILocation(line: 54, column: 16, scope: !297)
!301 = !DILocalVariable(name: "intVariable", scope: !297, file: !55, line: 54, type: !23)
!302 = !DILocation(line: 54, column: 19, scope: !297)
!303 = !DILocation(line: 55, column: 20, scope: !304)
!304 = distinct !DILexicalBlock(scope: !297, file: !55, line: 55, column: 13)
!305 = !DILocation(line: 55, column: 13, scope: !304)
!306 = !DILocation(line: 55, column: 36, scope: !304)
!307 = !DILocation(line: 55, column: 13, scope: !297)
!308 = !DILocation(line: 58, column: 25, scope: !309)
!309 = distinct !DILexicalBlock(scope: !304, file: !55, line: 56, column: 9)
!310 = !DILocation(line: 59, column: 20, scope: !311)
!311 = distinct !DILexicalBlock(scope: !309, file: !55, line: 59, column: 13)
!312 = !DILocation(line: 59, column: 18, scope: !311)
!313 = !DILocation(line: 59, column: 25, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !55, line: 59, column: 13)
!315 = !DILocation(line: 59, column: 29, scope: !314)
!316 = !DILocation(line: 59, column: 27, scope: !314)
!317 = !DILocation(line: 59, column: 13, scope: !311)
!318 = !DILocation(line: 62, column: 28, scope: !319)
!319 = distinct !DILexicalBlock(scope: !314, file: !55, line: 60, column: 13)
!320 = !DILocation(line: 63, column: 13, scope: !319)
!321 = !DILocation(line: 59, column: 33, scope: !314)
!322 = !DILocation(line: 59, column: 13, scope: !314)
!323 = distinct !{!323, !317, !324, !288}
!324 = !DILocation(line: 63, column: 13, scope: !311)
!325 = !DILocation(line: 64, column: 26, scope: !309)
!326 = !DILocation(line: 64, column: 13, scope: !309)
!327 = !DILocation(line: 65, column: 9, scope: !309)
!328 = !DILocation(line: 67, column: 1, scope: !293)
!329 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_54e_goodB2GSink", scope: !55, file: !55, line: 70, type: !201, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!330 = !DILocalVariable(name: "data", arg: 1, scope: !329, file: !55, line: 70, type: !42)
!331 = !DILocation(line: 70, column: 75, scope: !329)
!332 = !DILocalVariable(name: "i", scope: !333, file: !55, line: 73, type: !23)
!333 = distinct !DILexicalBlock(scope: !329, file: !55, line: 72, column: 5)
!334 = !DILocation(line: 73, column: 13, scope: !333)
!335 = !DILocalVariable(name: "n", scope: !333, file: !55, line: 73, type: !23)
!336 = !DILocation(line: 73, column: 16, scope: !333)
!337 = !DILocalVariable(name: "intVariable", scope: !333, file: !55, line: 73, type: !23)
!338 = !DILocation(line: 73, column: 19, scope: !333)
!339 = !DILocation(line: 74, column: 20, scope: !340)
!340 = distinct !DILexicalBlock(scope: !333, file: !55, line: 74, column: 13)
!341 = !DILocation(line: 74, column: 13, scope: !340)
!342 = !DILocation(line: 74, column: 36, scope: !340)
!343 = !DILocation(line: 74, column: 13, scope: !333)
!344 = !DILocation(line: 77, column: 17, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !55, line: 77, column: 17)
!346 = distinct !DILexicalBlock(scope: !340, file: !55, line: 75, column: 9)
!347 = !DILocation(line: 77, column: 19, scope: !345)
!348 = !DILocation(line: 77, column: 17, scope: !346)
!349 = !DILocation(line: 79, column: 29, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !55, line: 78, column: 13)
!351 = !DILocation(line: 80, column: 24, scope: !352)
!352 = distinct !DILexicalBlock(scope: !350, file: !55, line: 80, column: 17)
!353 = !DILocation(line: 80, column: 22, scope: !352)
!354 = !DILocation(line: 80, column: 29, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !55, line: 80, column: 17)
!356 = !DILocation(line: 80, column: 33, scope: !355)
!357 = !DILocation(line: 80, column: 31, scope: !355)
!358 = !DILocation(line: 80, column: 17, scope: !352)
!359 = !DILocation(line: 83, column: 32, scope: !360)
!360 = distinct !DILexicalBlock(scope: !355, file: !55, line: 81, column: 17)
!361 = !DILocation(line: 84, column: 17, scope: !360)
!362 = !DILocation(line: 80, column: 37, scope: !355)
!363 = !DILocation(line: 80, column: 17, scope: !355)
!364 = distinct !{!364, !358, !365, !288}
!365 = !DILocation(line: 84, column: 17, scope: !352)
!366 = !DILocation(line: 85, column: 30, scope: !350)
!367 = !DILocation(line: 85, column: 17, scope: !350)
!368 = !DILocation(line: 86, column: 13, scope: !350)
!369 = !DILocation(line: 87, column: 9, scope: !346)
!370 = !DILocation(line: 89, column: 1, scope: !329)
!371 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !201, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!372 = !DILocalVariable(name: "line", arg: 1, scope: !371, file: !3, line: 11, type: !42)
!373 = !DILocation(line: 11, column: 25, scope: !371)
!374 = !DILocation(line: 13, column: 1, scope: !371)
!375 = !DILocation(line: 14, column: 8, scope: !376)
!376 = distinct !DILexicalBlock(scope: !371, file: !3, line: 14, column: 8)
!377 = !DILocation(line: 14, column: 13, scope: !376)
!378 = !DILocation(line: 14, column: 8, scope: !371)
!379 = !DILocation(line: 16, column: 24, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !3, line: 15, column: 5)
!381 = !DILocation(line: 16, column: 9, scope: !380)
!382 = !DILocation(line: 17, column: 5, scope: !380)
!383 = !DILocation(line: 18, column: 5, scope: !371)
!384 = !DILocation(line: 19, column: 1, scope: !371)
!385 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !201, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!386 = !DILocalVariable(name: "line", arg: 1, scope: !385, file: !3, line: 20, type: !42)
!387 = !DILocation(line: 20, column: 29, scope: !385)
!388 = !DILocation(line: 22, column: 8, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !3, line: 22, column: 8)
!390 = !DILocation(line: 22, column: 13, scope: !389)
!391 = !DILocation(line: 22, column: 8, scope: !385)
!392 = !DILocation(line: 24, column: 24, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !3, line: 23, column: 5)
!394 = !DILocation(line: 24, column: 9, scope: !393)
!395 = !DILocation(line: 25, column: 5, scope: !393)
!396 = !DILocation(line: 26, column: 1, scope: !385)
!397 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !398, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !23)
!402 = !DILocalVariable(name: "line", arg: 1, scope: !397, file: !3, line: 27, type: !400)
!403 = !DILocation(line: 27, column: 29, scope: !397)
!404 = !DILocation(line: 29, column: 8, scope: !405)
!405 = distinct !DILexicalBlock(scope: !397, file: !3, line: 29, column: 8)
!406 = !DILocation(line: 29, column: 13, scope: !405)
!407 = !DILocation(line: 29, column: 8, scope: !397)
!408 = !DILocation(line: 31, column: 27, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !3, line: 30, column: 5)
!410 = !DILocation(line: 31, column: 9, scope: !409)
!411 = !DILocation(line: 32, column: 5, scope: !409)
!412 = !DILocation(line: 33, column: 1, scope: !397)
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
!462 = !{null, !74}
!463 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !460, file: !3, line: 60, type: !74)
!464 = !DILocation(line: 60, column: 29, scope: !460)
!465 = !DILocation(line: 62, column: 21, scope: !460)
!466 = !DILocation(line: 62, column: 5, scope: !460)
!467 = !DILocation(line: 63, column: 1, scope: !460)
!468 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !469, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !43}
!471 = !DILocalVariable(name: "charHex", arg: 1, scope: !468, file: !3, line: 65, type: !43)
!472 = !DILocation(line: 65, column: 29, scope: !468)
!473 = !DILocation(line: 67, column: 22, scope: !468)
!474 = !DILocation(line: 67, column: 5, scope: !468)
!475 = !DILocation(line: 68, column: 1, scope: !468)
!476 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !477, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !401}
!479 = !DILocalVariable(name: "wideChar", arg: 1, scope: !476, file: !3, line: 70, type: !401)
!480 = !DILocation(line: 70, column: 29, scope: !476)
!481 = !DILocalVariable(name: "s", scope: !476, file: !3, line: 74, type: !482)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 64, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 2)
!485 = !DILocation(line: 74, column: 13, scope: !476)
!486 = !DILocation(line: 75, column: 16, scope: !476)
!487 = !DILocation(line: 75, column: 9, scope: !476)
!488 = !DILocation(line: 75, column: 14, scope: !476)
!489 = !DILocation(line: 76, column: 9, scope: !476)
!490 = !DILocation(line: 76, column: 14, scope: !476)
!491 = !DILocation(line: 77, column: 21, scope: !476)
!492 = !DILocation(line: 77, column: 5, scope: !476)
!493 = !DILocation(line: 78, column: 1, scope: !476)
!494 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !495, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !7}
!497 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !494, file: !3, line: 80, type: !7)
!498 = !DILocation(line: 80, column: 33, scope: !494)
!499 = !DILocation(line: 82, column: 20, scope: !494)
!500 = !DILocation(line: 82, column: 5, scope: !494)
!501 = !DILocation(line: 83, column: 1, scope: !494)
!502 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !503, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !25}
!505 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !502, file: !3, line: 85, type: !25)
!506 = !DILocation(line: 85, column: 45, scope: !502)
!507 = !DILocation(line: 87, column: 22, scope: !502)
!508 = !DILocation(line: 87, column: 5, scope: !502)
!509 = !DILocation(line: 88, column: 1, scope: !502)
!510 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !511, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !513}
!513 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!514 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !510, file: !3, line: 90, type: !513)
!515 = !DILocation(line: 90, column: 29, scope: !510)
!516 = !DILocation(line: 92, column: 20, scope: !510)
!517 = !DILocation(line: 92, column: 5, scope: !510)
!518 = !DILocation(line: 93, column: 1, scope: !510)
!519 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !520, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !524, line: 100, baseType: !525)
!524 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_010/source_code")
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !524, line: 96, size: 64, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !525, file: !524, line: 98, baseType: !23, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !525, file: !524, line: 99, baseType: !23, size: 32, offset: 32)
!529 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !519, file: !3, line: 95, type: !522)
!530 = !DILocation(line: 95, column: 40, scope: !519)
!531 = !DILocation(line: 97, column: 26, scope: !519)
!532 = !DILocation(line: 97, column: 47, scope: !519)
!533 = !DILocation(line: 97, column: 55, scope: !519)
!534 = !DILocation(line: 97, column: 76, scope: !519)
!535 = !DILocation(line: 97, column: 5, scope: !519)
!536 = !DILocation(line: 98, column: 1, scope: !519)
!537 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !538, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !540, !74}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!541 = !DILocalVariable(name: "bytes", arg: 1, scope: !537, file: !3, line: 100, type: !540)
!542 = !DILocation(line: 100, column: 38, scope: !537)
!543 = !DILocalVariable(name: "numBytes", arg: 2, scope: !537, file: !3, line: 100, type: !74)
!544 = !DILocation(line: 100, column: 52, scope: !537)
!545 = !DILocalVariable(name: "i", scope: !537, file: !3, line: 102, type: !74)
!546 = !DILocation(line: 102, column: 12, scope: !537)
!547 = !DILocation(line: 103, column: 12, scope: !548)
!548 = distinct !DILexicalBlock(scope: !537, file: !3, line: 103, column: 5)
!549 = !DILocation(line: 103, column: 10, scope: !548)
!550 = !DILocation(line: 103, column: 17, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !3, line: 103, column: 5)
!552 = !DILocation(line: 103, column: 21, scope: !551)
!553 = !DILocation(line: 103, column: 19, scope: !551)
!554 = !DILocation(line: 103, column: 5, scope: !548)
!555 = !DILocation(line: 105, column: 24, scope: !556)
!556 = distinct !DILexicalBlock(scope: !551, file: !3, line: 104, column: 5)
!557 = !DILocation(line: 105, column: 30, scope: !556)
!558 = !DILocation(line: 105, column: 9, scope: !556)
!559 = !DILocation(line: 106, column: 5, scope: !556)
!560 = !DILocation(line: 103, column: 31, scope: !551)
!561 = !DILocation(line: 103, column: 5, scope: !551)
!562 = distinct !{!562, !554, !563, !288}
!563 = !DILocation(line: 106, column: 5, scope: !548)
!564 = !DILocation(line: 107, column: 5, scope: !537)
!565 = !DILocation(line: 108, column: 1, scope: !537)
!566 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !567, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DISubroutineType(types: !568)
!568 = !{!74, !540, !74, !42}
!569 = !DILocalVariable(name: "bytes", arg: 1, scope: !566, file: !3, line: 113, type: !540)
!570 = !DILocation(line: 113, column: 39, scope: !566)
!571 = !DILocalVariable(name: "numBytes", arg: 2, scope: !566, file: !3, line: 113, type: !74)
!572 = !DILocation(line: 113, column: 53, scope: !566)
!573 = !DILocalVariable(name: "hex", arg: 3, scope: !566, file: !3, line: 113, type: !42)
!574 = !DILocation(line: 113, column: 71, scope: !566)
!575 = !DILocalVariable(name: "numWritten", scope: !566, file: !3, line: 115, type: !74)
!576 = !DILocation(line: 115, column: 12, scope: !566)
!577 = !DILocation(line: 121, column: 5, scope: !566)
!578 = !DILocation(line: 121, column: 12, scope: !566)
!579 = !DILocation(line: 121, column: 25, scope: !566)
!580 = !DILocation(line: 121, column: 23, scope: !566)
!581 = !DILocation(line: 121, column: 34, scope: !566)
!582 = !DILocation(line: 121, column: 37, scope: !566)
!583 = !DILocation(line: 121, column: 67, scope: !566)
!584 = !DILocation(line: 121, column: 70, scope: !566)
!585 = !DILocation(line: 0, scope: !566)
!586 = !DILocalVariable(name: "byte", scope: !587, file: !3, line: 123, type: !23)
!587 = distinct !DILexicalBlock(scope: !566, file: !3, line: 122, column: 5)
!588 = !DILocation(line: 123, column: 13, scope: !587)
!589 = !DILocation(line: 124, column: 17, scope: !587)
!590 = !DILocation(line: 124, column: 25, scope: !587)
!591 = !DILocation(line: 124, column: 23, scope: !587)
!592 = !DILocation(line: 124, column: 9, scope: !587)
!593 = !DILocation(line: 125, column: 45, scope: !587)
!594 = !DILocation(line: 125, column: 29, scope: !587)
!595 = !DILocation(line: 125, column: 9, scope: !587)
!596 = !DILocation(line: 125, column: 15, scope: !587)
!597 = !DILocation(line: 125, column: 27, scope: !587)
!598 = !DILocation(line: 126, column: 9, scope: !587)
!599 = distinct !{!599, !577, !600, !288}
!600 = !DILocation(line: 127, column: 5, scope: !566)
!601 = !DILocation(line: 129, column: 12, scope: !566)
!602 = !DILocation(line: 129, column: 5, scope: !566)
!603 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !604, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DISubroutineType(types: !605)
!605 = !{!74, !540, !74, !400}
!606 = !DILocalVariable(name: "bytes", arg: 1, scope: !603, file: !3, line: 135, type: !540)
!607 = !DILocation(line: 135, column: 41, scope: !603)
!608 = !DILocalVariable(name: "numBytes", arg: 2, scope: !603, file: !3, line: 135, type: !74)
!609 = !DILocation(line: 135, column: 55, scope: !603)
!610 = !DILocalVariable(name: "hex", arg: 3, scope: !603, file: !3, line: 135, type: !400)
!611 = !DILocation(line: 135, column: 76, scope: !603)
!612 = !DILocalVariable(name: "numWritten", scope: !603, file: !3, line: 137, type: !74)
!613 = !DILocation(line: 137, column: 12, scope: !603)
!614 = !DILocation(line: 143, column: 5, scope: !603)
!615 = !DILocation(line: 143, column: 12, scope: !603)
!616 = !DILocation(line: 143, column: 25, scope: !603)
!617 = !DILocation(line: 143, column: 23, scope: !603)
!618 = !DILocation(line: 143, column: 34, scope: !603)
!619 = !DILocation(line: 143, column: 47, scope: !603)
!620 = !DILocation(line: 143, column: 55, scope: !603)
!621 = !DILocation(line: 143, column: 53, scope: !603)
!622 = !DILocation(line: 143, column: 37, scope: !603)
!623 = !DILocation(line: 143, column: 68, scope: !603)
!624 = !DILocation(line: 143, column: 81, scope: !603)
!625 = !DILocation(line: 143, column: 89, scope: !603)
!626 = !DILocation(line: 143, column: 87, scope: !603)
!627 = !DILocation(line: 143, column: 100, scope: !603)
!628 = !DILocation(line: 143, column: 71, scope: !603)
!629 = !DILocation(line: 0, scope: !603)
!630 = !DILocalVariable(name: "byte", scope: !631, file: !3, line: 145, type: !23)
!631 = distinct !DILexicalBlock(scope: !603, file: !3, line: 144, column: 5)
!632 = !DILocation(line: 145, column: 13, scope: !631)
!633 = !DILocation(line: 146, column: 18, scope: !631)
!634 = !DILocation(line: 146, column: 26, scope: !631)
!635 = !DILocation(line: 146, column: 24, scope: !631)
!636 = !DILocation(line: 146, column: 9, scope: !631)
!637 = !DILocation(line: 147, column: 45, scope: !631)
!638 = !DILocation(line: 147, column: 29, scope: !631)
!639 = !DILocation(line: 147, column: 9, scope: !631)
!640 = !DILocation(line: 147, column: 15, scope: !631)
!641 = !DILocation(line: 147, column: 27, scope: !631)
!642 = !DILocation(line: 148, column: 9, scope: !631)
!643 = distinct !{!643, !614, !644, !288}
!644 = !DILocation(line: 149, column: 5, scope: !603)
!645 = !DILocation(line: 151, column: 12, scope: !603)
!646 = !DILocation(line: 151, column: 5, scope: !603)
!647 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !648, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DISubroutineType(types: !649)
!649 = !{!23}
!650 = !DILocation(line: 158, column: 5, scope: !647)
!651 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !648, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 163, column: 5, scope: !651)
!653 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !648, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 168, column: 13, scope: !653)
!655 = !DILocation(line: 168, column: 20, scope: !653)
!656 = !DILocation(line: 168, column: 5, scope: !653)
!657 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !61, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 187, column: 16, scope: !657)
!659 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !61, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 188, column: 16, scope: !659)
!661 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !61, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 189, column: 16, scope: !661)
!663 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !61, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 190, column: 16, scope: !663)
!665 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !61, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 191, column: 16, scope: !665)
!667 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !61, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 192, column: 16, scope: !667)
!669 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !61, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 193, column: 16, scope: !669)
!671 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !61, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 194, column: 16, scope: !671)
!673 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !61, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 195, column: 16, scope: !673)
!675 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !61, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 198, column: 15, scope: !675)
!677 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !61, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!678 = !DILocation(line: 199, column: 15, scope: !677)
!679 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !61, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!680 = !DILocation(line: 200, column: 15, scope: !679)
!681 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !61, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DILocation(line: 201, column: 15, scope: !681)
!683 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !61, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!684 = !DILocation(line: 202, column: 15, scope: !683)
!685 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !61, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!686 = !DILocation(line: 203, column: 15, scope: !685)
!687 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !61, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!688 = !DILocation(line: 204, column: 15, scope: !687)
!689 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !61, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!690 = !DILocation(line: 205, column: 15, scope: !689)
!691 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !61, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!692 = !DILocation(line: 206, column: 15, scope: !691)
