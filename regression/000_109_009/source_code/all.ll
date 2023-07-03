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
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
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
@.str.15.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_53_bad() #0 !dbg !58 {
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
  call void @CWE606_Unchecked_Loop_Condition__char_console_53b_badSink(i8* %16), !dbg !122
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !132
  %2 = load i8*, i8** %data, align 8, !dbg !133
  call void @CWE606_Unchecked_Loop_Condition__char_console_53b_goodG2BSink(i8* %2), !dbg !134
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
  call void @CWE606_Unchecked_Loop_Condition__char_console_53b_goodB2GSink(i8* %16), !dbg !192
  ret void, !dbg !193
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_53_good() #0 !dbg !194 {
entry:
  call void @goodG2B(), !dbg !195
  call void @goodB2G(), !dbg !196
  ret void, !dbg !197
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_53b_badSink(i8* %data) #0 !dbg !198 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !201, metadata !DIExpression()), !dbg !202
  %0 = load i8*, i8** %data.addr, align 8, !dbg !203
  call void @CWE606_Unchecked_Loop_Condition__char_console_53c_badSink(i8* %0), !dbg !204
  ret void, !dbg !205
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_53b_goodG2BSink(i8* %data) #0 !dbg !206 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = load i8*, i8** %data.addr, align 8, !dbg !209
  call void @CWE606_Unchecked_Loop_Condition__char_console_53c_goodG2BSink(i8* %0), !dbg !210
  ret void, !dbg !211
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_53b_goodB2GSink(i8* %data) #0 !dbg !212 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !213, metadata !DIExpression()), !dbg !214
  %0 = load i8*, i8** %data.addr, align 8, !dbg !215
  call void @CWE606_Unchecked_Loop_Condition__char_console_53c_goodB2GSink(i8* %0), !dbg !216
  ret void, !dbg !217
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_53c_badSink(i8* %data) #0 !dbg !218 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !219, metadata !DIExpression()), !dbg !220
  %0 = load i8*, i8** %data.addr, align 8, !dbg !221
  call void @CWE606_Unchecked_Loop_Condition__char_console_53d_badSink(i8* %0), !dbg !222
  ret void, !dbg !223
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_53c_goodG2BSink(i8* %data) #0 !dbg !224 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !225, metadata !DIExpression()), !dbg !226
  %0 = load i8*, i8** %data.addr, align 8, !dbg !227
  call void @CWE606_Unchecked_Loop_Condition__char_console_53d_goodG2BSink(i8* %0), !dbg !228
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_53c_goodB2GSink(i8* %data) #0 !dbg !230 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !231, metadata !DIExpression()), !dbg !232
  %0 = load i8*, i8** %data.addr, align 8, !dbg !233
  call void @CWE606_Unchecked_Loop_Condition__char_console_53d_goodB2GSink(i8* %0), !dbg !234
  ret void, !dbg !235
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_53d_badSink(i8* %data) #0 !dbg !236 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata i32* %i, metadata !239, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i32* %n, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = load i8*, i8** %data.addr, align 8, !dbg !246
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %n) #8, !dbg !248
  %cmp = icmp eq i32 %call, 1, !dbg !249
  br i1 %cmp, label %if.then, label %if.end, !dbg !250

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !251
  store i32 0, i32* %i, align 4, !dbg !253
  br label %for.cond, !dbg !255

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !256
  %2 = load i32, i32* %n, align 4, !dbg !258
  %cmp1 = icmp slt i32 %1, %2, !dbg !259
  br i1 %cmp1, label %for.body, label %for.end, !dbg !260

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !261
  %inc = add nsw i32 %3, 1, !dbg !261
  store i32 %inc, i32* %intVariable, align 4, !dbg !261
  br label %for.inc, !dbg !263

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !264
  %inc2 = add nsw i32 %4, 1, !dbg !264
  store i32 %inc2, i32* %i, align 4, !dbg !264
  br label %for.cond, !dbg !265, !llvm.loop !266

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !269
  call void @printIntLine(i32 %5), !dbg !270
  br label %if.end, !dbg !271

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !272
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_53d_goodG2BSink(i8* %data) #0 !dbg !273 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata i32* %i, metadata !276, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i32* %n, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = load i8*, i8** %data.addr, align 8, !dbg !283
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %n) #8, !dbg !285
  %cmp = icmp eq i32 %call, 1, !dbg !286
  br i1 %cmp, label %if.then, label %if.end, !dbg !287

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !288
  store i32 0, i32* %i, align 4, !dbg !290
  br label %for.cond, !dbg !292

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !293
  %2 = load i32, i32* %n, align 4, !dbg !295
  %cmp1 = icmp slt i32 %1, %2, !dbg !296
  br i1 %cmp1, label %for.body, label %for.end, !dbg !297

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !298
  %inc = add nsw i32 %3, 1, !dbg !298
  store i32 %inc, i32* %intVariable, align 4, !dbg !298
  br label %for.inc, !dbg !300

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !301
  %inc2 = add nsw i32 %4, 1, !dbg !301
  store i32 %inc2, i32* %i, align 4, !dbg !301
  br label %for.cond, !dbg !302, !llvm.loop !303

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !305
  call void @printIntLine(i32 %5), !dbg !306
  br label %if.end, !dbg !307

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !308
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_53d_goodB2GSink(i8* %data) #0 !dbg !309 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !310, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata i32* %i, metadata !312, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata i32* %n, metadata !315, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !317, metadata !DIExpression()), !dbg !318
  %0 = load i8*, i8** %data.addr, align 8, !dbg !319
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %n) #8, !dbg !321
  %cmp = icmp eq i32 %call, 1, !dbg !322
  br i1 %cmp, label %if.then, label %if.end5, !dbg !323

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !324
  %cmp1 = icmp slt i32 %1, 10000, !dbg !327
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !328

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !329
  store i32 0, i32* %i, align 4, !dbg !331
  br label %for.cond, !dbg !333

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !334
  %3 = load i32, i32* %n, align 4, !dbg !336
  %cmp3 = icmp slt i32 %2, %3, !dbg !337
  br i1 %cmp3, label %for.body, label %for.end, !dbg !338

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !339
  %inc = add nsw i32 %4, 1, !dbg !339
  store i32 %inc, i32* %intVariable, align 4, !dbg !339
  br label %for.inc, !dbg !341

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !342
  %inc4 = add nsw i32 %5, 1, !dbg !342
  store i32 %inc4, i32* %i, align 4, !dbg !342
  br label %for.cond, !dbg !343, !llvm.loop !344

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !346
  call void @printIntLine(i32 %6), !dbg !347
  br label %if.end, !dbg !348

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !349

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !351 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !352, metadata !DIExpression()), !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)), !dbg !354
  %0 = load i8*, i8** %line.addr, align 8, !dbg !355
  %cmp = icmp ne i8* %0, null, !dbg !357
  br i1 %cmp, label %if.then, label %if.end, !dbg !358

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !359
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.23, i64 0, i64 0), i8* %1), !dbg !361
  br label %if.end, !dbg !362

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !363
  ret void, !dbg !364
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !365 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !366, metadata !DIExpression()), !dbg !367
  %0 = load i8*, i8** %line.addr, align 8, !dbg !368
  %cmp = icmp ne i8* %0, null, !dbg !370
  br i1 %cmp, label %if.then, label %if.end, !dbg !371

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !372
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.23, i64 0, i64 0), i8* %1), !dbg !374
  br label %if.end, !dbg !375

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !377 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load i32*, i32** %line.addr, align 8, !dbg !384
  %cmp = icmp ne i32* %0, null, !dbg !386
  br i1 %cmp, label %if.then, label %if.end, !dbg !387

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !388
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !390
  br label %if.end, !dbg !391

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !392
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !393 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !398
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !399
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !401 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !405, metadata !DIExpression()), !dbg !406
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !407
  %conv = sext i16 %0 to i32, !dbg !407
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !408
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !410 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !416
  %conv = fpext float %0 to double, !dbg !416
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !417
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !419 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !425
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !426
  ret void, !dbg !427
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !428 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !437
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !438
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !440 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !445
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !446
  ret void, !dbg !447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !448 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !451, metadata !DIExpression()), !dbg !452
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !453
  %conv = sext i8 %0 to i32, !dbg !453
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !454
  ret void, !dbg !455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !456 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !459, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !461, metadata !DIExpression()), !dbg !465
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !466
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !467
  store i32 %0, i32* %arrayidx, align 4, !dbg !468
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !469
  store i32 0, i32* %arrayidx1, align 4, !dbg !470
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !471
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !472
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !474 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !477, metadata !DIExpression()), !dbg !478
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !479
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !482 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !485, metadata !DIExpression()), !dbg !486
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !487
  %conv = zext i8 %0 to i32, !dbg !487
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !488
  ret void, !dbg !489
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !490 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !496
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !497
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !499 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !509, metadata !DIExpression()), !dbg !510
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !511
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !512
  %1 = load i32, i32* %intOne, align 4, !dbg !512
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !513
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !514
  %3 = load i32, i32* %intTwo, align 4, !dbg !514
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !515
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !517 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !521, metadata !DIExpression()), !dbg !522
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !523, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata i64* %i, metadata !525, metadata !DIExpression()), !dbg !526
  store i64 0, i64* %i, align 8, !dbg !527
  br label %for.cond, !dbg !529

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !530
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !532
  %cmp = icmp ult i64 %0, %1, !dbg !533
  br i1 %cmp, label %for.body, label %for.end, !dbg !534

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !535
  %3 = load i64, i64* %i, align 8, !dbg !537
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !535
  %4 = load i8, i8* %arrayidx, align 1, !dbg !535
  %conv = zext i8 %4 to i32, !dbg !535
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !538
  br label %for.inc, !dbg !539

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !540
  %inc = add i64 %5, 1, !dbg !540
  store i64 %inc, i64* %i, align 8, !dbg !540
  br label %for.cond, !dbg !541, !llvm.loop !542

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15.26, i64 0, i64 0)), !dbg !544
  ret void, !dbg !545
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !546 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !549, metadata !DIExpression()), !dbg !550
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !551, metadata !DIExpression()), !dbg !552
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !553, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !555, metadata !DIExpression()), !dbg !556
  store i64 0, i64* %numWritten, align 8, !dbg !556
  br label %while.cond, !dbg !557

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !558
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !559
  %cmp = icmp ult i64 %0, %1, !dbg !560
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !561

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !562
  %2 = load i16*, i16** %call, align 8, !dbg !562
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !562
  %4 = load i64, i64* %numWritten, align 8, !dbg !562
  %mul = mul i64 2, %4, !dbg !562
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !562
  %5 = load i8, i8* %arrayidx, align 1, !dbg !562
  %conv = sext i8 %5 to i32, !dbg !562
  %idxprom = sext i32 %conv to i64, !dbg !562
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !562
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !562
  %conv2 = zext i16 %6 to i32, !dbg !562
  %and = and i32 %conv2, 4096, !dbg !562
  %tobool = icmp ne i32 %and, 0, !dbg !562
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !563

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !564
  %7 = load i16*, i16** %call3, align 8, !dbg !564
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !564
  %9 = load i64, i64* %numWritten, align 8, !dbg !564
  %mul4 = mul i64 2, %9, !dbg !564
  %add = add i64 %mul4, 1, !dbg !564
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !564
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !564
  %conv6 = sext i8 %10 to i32, !dbg !564
  %idxprom7 = sext i32 %conv6 to i64, !dbg !564
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !564
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !564
  %conv9 = zext i16 %11 to i32, !dbg !564
  %and10 = and i32 %conv9, 4096, !dbg !564
  %tobool11 = icmp ne i32 %and10, 0, !dbg !563
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !565
  br i1 %12, label %while.body, label %while.end, !dbg !557

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !566, metadata !DIExpression()), !dbg !568
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !569
  %14 = load i64, i64* %numWritten, align 8, !dbg !570
  %mul12 = mul i64 2, %14, !dbg !571
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !569
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !572
  %15 = load i32, i32* %byte, align 4, !dbg !573
  %conv15 = trunc i32 %15 to i8, !dbg !574
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !575
  %17 = load i64, i64* %numWritten, align 8, !dbg !576
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !575
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !577
  %18 = load i64, i64* %numWritten, align 8, !dbg !578
  %inc = add i64 %18, 1, !dbg !578
  store i64 %inc, i64* %numWritten, align 8, !dbg !578
  br label %while.cond, !dbg !557, !llvm.loop !579

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !581
  ret i64 %19, !dbg !582
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !583 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !586, metadata !DIExpression()), !dbg !587
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !588, metadata !DIExpression()), !dbg !589
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !592, metadata !DIExpression()), !dbg !593
  store i64 0, i64* %numWritten, align 8, !dbg !593
  br label %while.cond, !dbg !594

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !595
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !596
  %cmp = icmp ult i64 %0, %1, !dbg !597
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !598

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !599
  %3 = load i64, i64* %numWritten, align 8, !dbg !600
  %mul = mul i64 2, %3, !dbg !601
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !599
  %4 = load i32, i32* %arrayidx, align 4, !dbg !599
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !602
  %tobool = icmp ne i32 %call, 0, !dbg !602
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !603

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !604
  %6 = load i64, i64* %numWritten, align 8, !dbg !605
  %mul1 = mul i64 2, %6, !dbg !606
  %add = add i64 %mul1, 1, !dbg !607
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !604
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !604
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !608
  %tobool4 = icmp ne i32 %call3, 0, !dbg !603
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !609
  br i1 %8, label %while.body, label %while.end, !dbg !594

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !610, metadata !DIExpression()), !dbg !612
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !613
  %10 = load i64, i64* %numWritten, align 8, !dbg !614
  %mul5 = mul i64 2, %10, !dbg !615
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !613
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !616
  %11 = load i32, i32* %byte, align 4, !dbg !617
  %conv = trunc i32 %11 to i8, !dbg !618
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !619
  %13 = load i64, i64* %numWritten, align 8, !dbg !620
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !619
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !621
  %14 = load i64, i64* %numWritten, align 8, !dbg !622
  %inc = add i64 %14, 1, !dbg !622
  store i64 %inc, i64* %numWritten, align 8, !dbg !622
  br label %while.cond, !dbg !594, !llvm.loop !623

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !625
  ret i64 %15, !dbg !626
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !627 {
entry:
  ret i32 1, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !631 {
entry:
  ret i32 0, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !633 {
entry:
  %call = call i32 @rand() #8, !dbg !634
  %rem = srem i32 %call, 2, !dbg !635
  ret i32 %rem, !dbg !636
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !637 {
entry:
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !639 {
entry:
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !641 {
entry:
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !645 {
entry:
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !671 {
entry:
  ret void, !dbg !672
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_009/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_53a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_009/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_53b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_009/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_53c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_009/source_code")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_53d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_009/source_code")
!54 = !{!"clang version 12.0.0"}
!55 = !{i32 7, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_53_bad", scope: !45, file: !45, line: 31, type: !59, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocalVariable(name: "data", scope: !58, file: !45, line: 33, type: !42)
!62 = !DILocation(line: 33, column: 12, scope: !58)
!63 = !DILocalVariable(name: "dataBuffer", scope: !58, file: !45, line: 34, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 100)
!67 = !DILocation(line: 34, column: 10, scope: !58)
!68 = !DILocation(line: 35, column: 12, scope: !58)
!69 = !DILocation(line: 35, column: 10, scope: !58)
!70 = !DILocalVariable(name: "dataLen", scope: !71, file: !45, line: 38, type: !72)
!71 = distinct !DILexicalBlock(scope: !58, file: !45, line: 36, column: 5)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !73, line: 46, baseType: !74)
!73 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!74 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!75 = !DILocation(line: 38, column: 16, scope: !71)
!76 = !DILocation(line: 38, column: 33, scope: !71)
!77 = !DILocation(line: 38, column: 26, scope: !71)
!78 = !DILocation(line: 40, column: 17, scope: !79)
!79 = distinct !DILexicalBlock(scope: !71, file: !45, line: 40, column: 13)
!80 = !DILocation(line: 40, column: 16, scope: !79)
!81 = !DILocation(line: 40, column: 25, scope: !79)
!82 = !DILocation(line: 40, column: 13, scope: !71)
!83 = !DILocation(line: 43, column: 23, scope: !84)
!84 = distinct !DILexicalBlock(scope: !85, file: !45, line: 43, column: 17)
!85 = distinct !DILexicalBlock(scope: !79, file: !45, line: 41, column: 9)
!86 = !DILocation(line: 43, column: 28, scope: !84)
!87 = !DILocation(line: 43, column: 27, scope: !84)
!88 = !DILocation(line: 43, column: 47, scope: !84)
!89 = !DILocation(line: 43, column: 46, scope: !84)
!90 = !DILocation(line: 43, column: 37, scope: !84)
!91 = !DILocation(line: 43, column: 57, scope: !84)
!92 = !DILocation(line: 43, column: 17, scope: !84)
!93 = !DILocation(line: 43, column: 64, scope: !84)
!94 = !DILocation(line: 43, column: 17, scope: !85)
!95 = !DILocation(line: 47, column: 34, scope: !96)
!96 = distinct !DILexicalBlock(scope: !84, file: !45, line: 44, column: 13)
!97 = !DILocation(line: 47, column: 27, scope: !96)
!98 = !DILocation(line: 47, column: 25, scope: !96)
!99 = !DILocation(line: 48, column: 21, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !45, line: 48, column: 21)
!101 = !DILocation(line: 48, column: 29, scope: !100)
!102 = !DILocation(line: 48, column: 33, scope: !100)
!103 = !DILocation(line: 48, column: 36, scope: !100)
!104 = !DILocation(line: 48, column: 41, scope: !100)
!105 = !DILocation(line: 48, column: 48, scope: !100)
!106 = !DILocation(line: 48, column: 52, scope: !100)
!107 = !DILocation(line: 48, column: 21, scope: !96)
!108 = !DILocation(line: 50, column: 21, scope: !109)
!109 = distinct !DILexicalBlock(scope: !100, file: !45, line: 49, column: 17)
!110 = !DILocation(line: 50, column: 26, scope: !109)
!111 = !DILocation(line: 50, column: 33, scope: !109)
!112 = !DILocation(line: 50, column: 37, scope: !109)
!113 = !DILocation(line: 51, column: 17, scope: !109)
!114 = !DILocation(line: 52, column: 13, scope: !96)
!115 = !DILocation(line: 55, column: 17, scope: !116)
!116 = distinct !DILexicalBlock(scope: !84, file: !45, line: 54, column: 13)
!117 = !DILocation(line: 57, column: 17, scope: !116)
!118 = !DILocation(line: 57, column: 22, scope: !116)
!119 = !DILocation(line: 57, column: 31, scope: !116)
!120 = !DILocation(line: 59, column: 9, scope: !85)
!121 = !DILocation(line: 61, column: 63, scope: !58)
!122 = !DILocation(line: 61, column: 5, scope: !58)
!123 = !DILocation(line: 62, column: 1, scope: !58)
!124 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 70, type: !59, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!125 = !DILocalVariable(name: "data", scope: !124, file: !45, line: 72, type: !42)
!126 = !DILocation(line: 72, column: 12, scope: !124)
!127 = !DILocalVariable(name: "dataBuffer", scope: !124, file: !45, line: 73, type: !64)
!128 = !DILocation(line: 73, column: 10, scope: !124)
!129 = !DILocation(line: 74, column: 12, scope: !124)
!130 = !DILocation(line: 74, column: 10, scope: !124)
!131 = !DILocation(line: 76, column: 12, scope: !124)
!132 = !DILocation(line: 76, column: 5, scope: !124)
!133 = !DILocation(line: 77, column: 67, scope: !124)
!134 = !DILocation(line: 77, column: 5, scope: !124)
!135 = !DILocation(line: 78, column: 1, scope: !124)
!136 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 82, type: !59, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!137 = !DILocalVariable(name: "data", scope: !136, file: !45, line: 84, type: !42)
!138 = !DILocation(line: 84, column: 12, scope: !136)
!139 = !DILocalVariable(name: "dataBuffer", scope: !136, file: !45, line: 85, type: !64)
!140 = !DILocation(line: 85, column: 10, scope: !136)
!141 = !DILocation(line: 86, column: 12, scope: !136)
!142 = !DILocation(line: 86, column: 10, scope: !136)
!143 = !DILocalVariable(name: "dataLen", scope: !144, file: !45, line: 89, type: !72)
!144 = distinct !DILexicalBlock(scope: !136, file: !45, line: 87, column: 5)
!145 = !DILocation(line: 89, column: 16, scope: !144)
!146 = !DILocation(line: 89, column: 33, scope: !144)
!147 = !DILocation(line: 89, column: 26, scope: !144)
!148 = !DILocation(line: 91, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !45, line: 91, column: 13)
!150 = !DILocation(line: 91, column: 16, scope: !149)
!151 = !DILocation(line: 91, column: 25, scope: !149)
!152 = !DILocation(line: 91, column: 13, scope: !144)
!153 = !DILocation(line: 94, column: 23, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !45, line: 94, column: 17)
!155 = distinct !DILexicalBlock(scope: !149, file: !45, line: 92, column: 9)
!156 = !DILocation(line: 94, column: 28, scope: !154)
!157 = !DILocation(line: 94, column: 27, scope: !154)
!158 = !DILocation(line: 94, column: 47, scope: !154)
!159 = !DILocation(line: 94, column: 46, scope: !154)
!160 = !DILocation(line: 94, column: 37, scope: !154)
!161 = !DILocation(line: 94, column: 57, scope: !154)
!162 = !DILocation(line: 94, column: 17, scope: !154)
!163 = !DILocation(line: 94, column: 64, scope: !154)
!164 = !DILocation(line: 94, column: 17, scope: !155)
!165 = !DILocation(line: 98, column: 34, scope: !166)
!166 = distinct !DILexicalBlock(scope: !154, file: !45, line: 95, column: 13)
!167 = !DILocation(line: 98, column: 27, scope: !166)
!168 = !DILocation(line: 98, column: 25, scope: !166)
!169 = !DILocation(line: 99, column: 21, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !45, line: 99, column: 21)
!171 = !DILocation(line: 99, column: 29, scope: !170)
!172 = !DILocation(line: 99, column: 33, scope: !170)
!173 = !DILocation(line: 99, column: 36, scope: !170)
!174 = !DILocation(line: 99, column: 41, scope: !170)
!175 = !DILocation(line: 99, column: 48, scope: !170)
!176 = !DILocation(line: 99, column: 52, scope: !170)
!177 = !DILocation(line: 99, column: 21, scope: !166)
!178 = !DILocation(line: 101, column: 21, scope: !179)
!179 = distinct !DILexicalBlock(scope: !170, file: !45, line: 100, column: 17)
!180 = !DILocation(line: 101, column: 26, scope: !179)
!181 = !DILocation(line: 101, column: 33, scope: !179)
!182 = !DILocation(line: 101, column: 37, scope: !179)
!183 = !DILocation(line: 102, column: 17, scope: !179)
!184 = !DILocation(line: 103, column: 13, scope: !166)
!185 = !DILocation(line: 106, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !154, file: !45, line: 105, column: 13)
!187 = !DILocation(line: 108, column: 17, scope: !186)
!188 = !DILocation(line: 108, column: 22, scope: !186)
!189 = !DILocation(line: 108, column: 31, scope: !186)
!190 = !DILocation(line: 110, column: 9, scope: !155)
!191 = !DILocation(line: 112, column: 67, scope: !136)
!192 = !DILocation(line: 112, column: 5, scope: !136)
!193 = !DILocation(line: 113, column: 1, scope: !136)
!194 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_53_good", scope: !45, file: !45, line: 115, type: !59, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!195 = !DILocation(line: 117, column: 5, scope: !194)
!196 = !DILocation(line: 118, column: 5, scope: !194)
!197 = !DILocation(line: 119, column: 1, scope: !194)
!198 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_53b_badSink", scope: !49, file: !49, line: 31, type: !199, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !42}
!201 = !DILocalVariable(name: "data", arg: 1, scope: !198, file: !49, line: 31, type: !42)
!202 = !DILocation(line: 31, column: 71, scope: !198)
!203 = !DILocation(line: 33, column: 63, scope: !198)
!204 = !DILocation(line: 33, column: 5, scope: !198)
!205 = !DILocation(line: 34, column: 1, scope: !198)
!206 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_53b_goodG2BSink", scope: !49, file: !49, line: 43, type: !199, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!207 = !DILocalVariable(name: "data", arg: 1, scope: !206, file: !49, line: 43, type: !42)
!208 = !DILocation(line: 43, column: 75, scope: !206)
!209 = !DILocation(line: 45, column: 67, scope: !206)
!210 = !DILocation(line: 45, column: 5, scope: !206)
!211 = !DILocation(line: 46, column: 1, scope: !206)
!212 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_53b_goodB2GSink", scope: !49, file: !49, line: 51, type: !199, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!213 = !DILocalVariable(name: "data", arg: 1, scope: !212, file: !49, line: 51, type: !42)
!214 = !DILocation(line: 51, column: 75, scope: !212)
!215 = !DILocation(line: 53, column: 67, scope: !212)
!216 = !DILocation(line: 53, column: 5, scope: !212)
!217 = !DILocation(line: 54, column: 1, scope: !212)
!218 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_53c_badSink", scope: !51, file: !51, line: 31, type: !199, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!219 = !DILocalVariable(name: "data", arg: 1, scope: !218, file: !51, line: 31, type: !42)
!220 = !DILocation(line: 31, column: 71, scope: !218)
!221 = !DILocation(line: 33, column: 63, scope: !218)
!222 = !DILocation(line: 33, column: 5, scope: !218)
!223 = !DILocation(line: 34, column: 1, scope: !218)
!224 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_53c_goodG2BSink", scope: !51, file: !51, line: 43, type: !199, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!225 = !DILocalVariable(name: "data", arg: 1, scope: !224, file: !51, line: 43, type: !42)
!226 = !DILocation(line: 43, column: 75, scope: !224)
!227 = !DILocation(line: 45, column: 67, scope: !224)
!228 = !DILocation(line: 45, column: 5, scope: !224)
!229 = !DILocation(line: 46, column: 1, scope: !224)
!230 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_53c_goodB2GSink", scope: !51, file: !51, line: 51, type: !199, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!231 = !DILocalVariable(name: "data", arg: 1, scope: !230, file: !51, line: 51, type: !42)
!232 = !DILocation(line: 51, column: 75, scope: !230)
!233 = !DILocation(line: 53, column: 67, scope: !230)
!234 = !DILocation(line: 53, column: 5, scope: !230)
!235 = !DILocation(line: 54, column: 1, scope: !230)
!236 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_53d_badSink", scope: !53, file: !53, line: 28, type: !199, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!237 = !DILocalVariable(name: "data", arg: 1, scope: !236, file: !53, line: 28, type: !42)
!238 = !DILocation(line: 28, column: 71, scope: !236)
!239 = !DILocalVariable(name: "i", scope: !240, file: !53, line: 31, type: !23)
!240 = distinct !DILexicalBlock(scope: !236, file: !53, line: 30, column: 5)
!241 = !DILocation(line: 31, column: 13, scope: !240)
!242 = !DILocalVariable(name: "n", scope: !240, file: !53, line: 31, type: !23)
!243 = !DILocation(line: 31, column: 16, scope: !240)
!244 = !DILocalVariable(name: "intVariable", scope: !240, file: !53, line: 31, type: !23)
!245 = !DILocation(line: 31, column: 19, scope: !240)
!246 = !DILocation(line: 32, column: 20, scope: !247)
!247 = distinct !DILexicalBlock(scope: !240, file: !53, line: 32, column: 13)
!248 = !DILocation(line: 32, column: 13, scope: !247)
!249 = !DILocation(line: 32, column: 36, scope: !247)
!250 = !DILocation(line: 32, column: 13, scope: !240)
!251 = !DILocation(line: 35, column: 25, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !53, line: 33, column: 9)
!253 = !DILocation(line: 36, column: 20, scope: !254)
!254 = distinct !DILexicalBlock(scope: !252, file: !53, line: 36, column: 13)
!255 = !DILocation(line: 36, column: 18, scope: !254)
!256 = !DILocation(line: 36, column: 25, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !53, line: 36, column: 13)
!258 = !DILocation(line: 36, column: 29, scope: !257)
!259 = !DILocation(line: 36, column: 27, scope: !257)
!260 = !DILocation(line: 36, column: 13, scope: !254)
!261 = !DILocation(line: 39, column: 28, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !53, line: 37, column: 13)
!263 = !DILocation(line: 40, column: 13, scope: !262)
!264 = !DILocation(line: 36, column: 33, scope: !257)
!265 = !DILocation(line: 36, column: 13, scope: !257)
!266 = distinct !{!266, !260, !267, !268}
!267 = !DILocation(line: 40, column: 13, scope: !254)
!268 = !{!"llvm.loop.mustprogress"}
!269 = !DILocation(line: 41, column: 26, scope: !252)
!270 = !DILocation(line: 41, column: 13, scope: !252)
!271 = !DILocation(line: 42, column: 9, scope: !252)
!272 = !DILocation(line: 44, column: 1, scope: !236)
!273 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_53d_goodG2BSink", scope: !53, file: !53, line: 51, type: !199, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!274 = !DILocalVariable(name: "data", arg: 1, scope: !273, file: !53, line: 51, type: !42)
!275 = !DILocation(line: 51, column: 75, scope: !273)
!276 = !DILocalVariable(name: "i", scope: !277, file: !53, line: 54, type: !23)
!277 = distinct !DILexicalBlock(scope: !273, file: !53, line: 53, column: 5)
!278 = !DILocation(line: 54, column: 13, scope: !277)
!279 = !DILocalVariable(name: "n", scope: !277, file: !53, line: 54, type: !23)
!280 = !DILocation(line: 54, column: 16, scope: !277)
!281 = !DILocalVariable(name: "intVariable", scope: !277, file: !53, line: 54, type: !23)
!282 = !DILocation(line: 54, column: 19, scope: !277)
!283 = !DILocation(line: 55, column: 20, scope: !284)
!284 = distinct !DILexicalBlock(scope: !277, file: !53, line: 55, column: 13)
!285 = !DILocation(line: 55, column: 13, scope: !284)
!286 = !DILocation(line: 55, column: 36, scope: !284)
!287 = !DILocation(line: 55, column: 13, scope: !277)
!288 = !DILocation(line: 58, column: 25, scope: !289)
!289 = distinct !DILexicalBlock(scope: !284, file: !53, line: 56, column: 9)
!290 = !DILocation(line: 59, column: 20, scope: !291)
!291 = distinct !DILexicalBlock(scope: !289, file: !53, line: 59, column: 13)
!292 = !DILocation(line: 59, column: 18, scope: !291)
!293 = !DILocation(line: 59, column: 25, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !53, line: 59, column: 13)
!295 = !DILocation(line: 59, column: 29, scope: !294)
!296 = !DILocation(line: 59, column: 27, scope: !294)
!297 = !DILocation(line: 59, column: 13, scope: !291)
!298 = !DILocation(line: 62, column: 28, scope: !299)
!299 = distinct !DILexicalBlock(scope: !294, file: !53, line: 60, column: 13)
!300 = !DILocation(line: 63, column: 13, scope: !299)
!301 = !DILocation(line: 59, column: 33, scope: !294)
!302 = !DILocation(line: 59, column: 13, scope: !294)
!303 = distinct !{!303, !297, !304, !268}
!304 = !DILocation(line: 63, column: 13, scope: !291)
!305 = !DILocation(line: 64, column: 26, scope: !289)
!306 = !DILocation(line: 64, column: 13, scope: !289)
!307 = !DILocation(line: 65, column: 9, scope: !289)
!308 = !DILocation(line: 67, column: 1, scope: !273)
!309 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_53d_goodB2GSink", scope: !53, file: !53, line: 70, type: !199, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!310 = !DILocalVariable(name: "data", arg: 1, scope: !309, file: !53, line: 70, type: !42)
!311 = !DILocation(line: 70, column: 75, scope: !309)
!312 = !DILocalVariable(name: "i", scope: !313, file: !53, line: 73, type: !23)
!313 = distinct !DILexicalBlock(scope: !309, file: !53, line: 72, column: 5)
!314 = !DILocation(line: 73, column: 13, scope: !313)
!315 = !DILocalVariable(name: "n", scope: !313, file: !53, line: 73, type: !23)
!316 = !DILocation(line: 73, column: 16, scope: !313)
!317 = !DILocalVariable(name: "intVariable", scope: !313, file: !53, line: 73, type: !23)
!318 = !DILocation(line: 73, column: 19, scope: !313)
!319 = !DILocation(line: 74, column: 20, scope: !320)
!320 = distinct !DILexicalBlock(scope: !313, file: !53, line: 74, column: 13)
!321 = !DILocation(line: 74, column: 13, scope: !320)
!322 = !DILocation(line: 74, column: 36, scope: !320)
!323 = !DILocation(line: 74, column: 13, scope: !313)
!324 = !DILocation(line: 77, column: 17, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !53, line: 77, column: 17)
!326 = distinct !DILexicalBlock(scope: !320, file: !53, line: 75, column: 9)
!327 = !DILocation(line: 77, column: 19, scope: !325)
!328 = !DILocation(line: 77, column: 17, scope: !326)
!329 = !DILocation(line: 79, column: 29, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !53, line: 78, column: 13)
!331 = !DILocation(line: 80, column: 24, scope: !332)
!332 = distinct !DILexicalBlock(scope: !330, file: !53, line: 80, column: 17)
!333 = !DILocation(line: 80, column: 22, scope: !332)
!334 = !DILocation(line: 80, column: 29, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !53, line: 80, column: 17)
!336 = !DILocation(line: 80, column: 33, scope: !335)
!337 = !DILocation(line: 80, column: 31, scope: !335)
!338 = !DILocation(line: 80, column: 17, scope: !332)
!339 = !DILocation(line: 83, column: 32, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !53, line: 81, column: 17)
!341 = !DILocation(line: 84, column: 17, scope: !340)
!342 = !DILocation(line: 80, column: 37, scope: !335)
!343 = !DILocation(line: 80, column: 17, scope: !335)
!344 = distinct !{!344, !338, !345, !268}
!345 = !DILocation(line: 84, column: 17, scope: !332)
!346 = !DILocation(line: 85, column: 30, scope: !330)
!347 = !DILocation(line: 85, column: 17, scope: !330)
!348 = !DILocation(line: 86, column: 13, scope: !330)
!349 = !DILocation(line: 87, column: 9, scope: !326)
!350 = !DILocation(line: 89, column: 1, scope: !309)
!351 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !199, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!352 = !DILocalVariable(name: "line", arg: 1, scope: !351, file: !3, line: 11, type: !42)
!353 = !DILocation(line: 11, column: 25, scope: !351)
!354 = !DILocation(line: 13, column: 1, scope: !351)
!355 = !DILocation(line: 14, column: 8, scope: !356)
!356 = distinct !DILexicalBlock(scope: !351, file: !3, line: 14, column: 8)
!357 = !DILocation(line: 14, column: 13, scope: !356)
!358 = !DILocation(line: 14, column: 8, scope: !351)
!359 = !DILocation(line: 16, column: 24, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !3, line: 15, column: 5)
!361 = !DILocation(line: 16, column: 9, scope: !360)
!362 = !DILocation(line: 17, column: 5, scope: !360)
!363 = !DILocation(line: 18, column: 5, scope: !351)
!364 = !DILocation(line: 19, column: 1, scope: !351)
!365 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !199, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!366 = !DILocalVariable(name: "line", arg: 1, scope: !365, file: !3, line: 20, type: !42)
!367 = !DILocation(line: 20, column: 29, scope: !365)
!368 = !DILocation(line: 22, column: 8, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !3, line: 22, column: 8)
!370 = !DILocation(line: 22, column: 13, scope: !369)
!371 = !DILocation(line: 22, column: 8, scope: !365)
!372 = !DILocation(line: 24, column: 24, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !3, line: 23, column: 5)
!374 = !DILocation(line: 24, column: 9, scope: !373)
!375 = !DILocation(line: 25, column: 5, scope: !373)
!376 = !DILocation(line: 26, column: 1, scope: !365)
!377 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !378, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !380}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !73, line: 74, baseType: !23)
!382 = !DILocalVariable(name: "line", arg: 1, scope: !377, file: !3, line: 27, type: !380)
!383 = !DILocation(line: 27, column: 29, scope: !377)
!384 = !DILocation(line: 29, column: 8, scope: !385)
!385 = distinct !DILexicalBlock(scope: !377, file: !3, line: 29, column: 8)
!386 = !DILocation(line: 29, column: 13, scope: !385)
!387 = !DILocation(line: 29, column: 8, scope: !377)
!388 = !DILocation(line: 31, column: 27, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !3, line: 30, column: 5)
!390 = !DILocation(line: 31, column: 9, scope: !389)
!391 = !DILocation(line: 32, column: 5, scope: !389)
!392 = !DILocation(line: 33, column: 1, scope: !377)
!393 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !394, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !23}
!396 = !DILocalVariable(name: "intNumber", arg: 1, scope: !393, file: !3, line: 35, type: !23)
!397 = !DILocation(line: 35, column: 24, scope: !393)
!398 = !DILocation(line: 37, column: 20, scope: !393)
!399 = !DILocation(line: 37, column: 5, scope: !393)
!400 = !DILocation(line: 38, column: 1, scope: !393)
!401 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !402, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !404}
!404 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!405 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !401, file: !3, line: 40, type: !404)
!406 = !DILocation(line: 40, column: 28, scope: !401)
!407 = !DILocation(line: 42, column: 21, scope: !401)
!408 = !DILocation(line: 42, column: 5, scope: !401)
!409 = !DILocation(line: 43, column: 1, scope: !401)
!410 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !411, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !413}
!413 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!414 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !410, file: !3, line: 45, type: !413)
!415 = !DILocation(line: 45, column: 28, scope: !410)
!416 = !DILocation(line: 47, column: 20, scope: !410)
!417 = !DILocation(line: 47, column: 5, scope: !410)
!418 = !DILocation(line: 48, column: 1, scope: !410)
!419 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !420, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !422}
!422 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!423 = !DILocalVariable(name: "longNumber", arg: 1, scope: !419, file: !3, line: 50, type: !422)
!424 = !DILocation(line: 50, column: 26, scope: !419)
!425 = !DILocation(line: 52, column: 21, scope: !419)
!426 = !DILocation(line: 52, column: 5, scope: !419)
!427 = !DILocation(line: 53, column: 1, scope: !419)
!428 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !429, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !431}
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !432, line: 27, baseType: !433)
!432 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !434, line: 44, baseType: !422)
!434 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!435 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !428, file: !3, line: 55, type: !431)
!436 = !DILocation(line: 55, column: 33, scope: !428)
!437 = !DILocation(line: 57, column: 29, scope: !428)
!438 = !DILocation(line: 57, column: 5, scope: !428)
!439 = !DILocation(line: 58, column: 1, scope: !428)
!440 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !441, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !72}
!443 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !440, file: !3, line: 60, type: !72)
!444 = !DILocation(line: 60, column: 29, scope: !440)
!445 = !DILocation(line: 62, column: 21, scope: !440)
!446 = !DILocation(line: 62, column: 5, scope: !440)
!447 = !DILocation(line: 63, column: 1, scope: !440)
!448 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !449, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !43}
!451 = !DILocalVariable(name: "charHex", arg: 1, scope: !448, file: !3, line: 65, type: !43)
!452 = !DILocation(line: 65, column: 29, scope: !448)
!453 = !DILocation(line: 67, column: 22, scope: !448)
!454 = !DILocation(line: 67, column: 5, scope: !448)
!455 = !DILocation(line: 68, column: 1, scope: !448)
!456 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !457, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !381}
!459 = !DILocalVariable(name: "wideChar", arg: 1, scope: !456, file: !3, line: 70, type: !381)
!460 = !DILocation(line: 70, column: 29, scope: !456)
!461 = !DILocalVariable(name: "s", scope: !456, file: !3, line: 74, type: !462)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 64, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 2)
!465 = !DILocation(line: 74, column: 13, scope: !456)
!466 = !DILocation(line: 75, column: 16, scope: !456)
!467 = !DILocation(line: 75, column: 9, scope: !456)
!468 = !DILocation(line: 75, column: 14, scope: !456)
!469 = !DILocation(line: 76, column: 9, scope: !456)
!470 = !DILocation(line: 76, column: 14, scope: !456)
!471 = !DILocation(line: 77, column: 21, scope: !456)
!472 = !DILocation(line: 77, column: 5, scope: !456)
!473 = !DILocation(line: 78, column: 1, scope: !456)
!474 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !475, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !7}
!477 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !474, file: !3, line: 80, type: !7)
!478 = !DILocation(line: 80, column: 33, scope: !474)
!479 = !DILocation(line: 82, column: 20, scope: !474)
!480 = !DILocation(line: 82, column: 5, scope: !474)
!481 = !DILocation(line: 83, column: 1, scope: !474)
!482 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !483, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !25}
!485 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !482, file: !3, line: 85, type: !25)
!486 = !DILocation(line: 85, column: 45, scope: !482)
!487 = !DILocation(line: 87, column: 22, scope: !482)
!488 = !DILocation(line: 87, column: 5, scope: !482)
!489 = !DILocation(line: 88, column: 1, scope: !482)
!490 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !491, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !493}
!493 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!494 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !490, file: !3, line: 90, type: !493)
!495 = !DILocation(line: 90, column: 29, scope: !490)
!496 = !DILocation(line: 92, column: 20, scope: !490)
!497 = !DILocation(line: 92, column: 5, scope: !490)
!498 = !DILocation(line: 93, column: 1, scope: !490)
!499 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !500, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !504, line: 100, baseType: !505)
!504 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_009/source_code")
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !504, line: 96, size: 64, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !505, file: !504, line: 98, baseType: !23, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !505, file: !504, line: 99, baseType: !23, size: 32, offset: 32)
!509 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !499, file: !3, line: 95, type: !502)
!510 = !DILocation(line: 95, column: 40, scope: !499)
!511 = !DILocation(line: 97, column: 26, scope: !499)
!512 = !DILocation(line: 97, column: 47, scope: !499)
!513 = !DILocation(line: 97, column: 55, scope: !499)
!514 = !DILocation(line: 97, column: 76, scope: !499)
!515 = !DILocation(line: 97, column: 5, scope: !499)
!516 = !DILocation(line: 98, column: 1, scope: !499)
!517 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !518, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !520, !72}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!521 = !DILocalVariable(name: "bytes", arg: 1, scope: !517, file: !3, line: 100, type: !520)
!522 = !DILocation(line: 100, column: 38, scope: !517)
!523 = !DILocalVariable(name: "numBytes", arg: 2, scope: !517, file: !3, line: 100, type: !72)
!524 = !DILocation(line: 100, column: 52, scope: !517)
!525 = !DILocalVariable(name: "i", scope: !517, file: !3, line: 102, type: !72)
!526 = !DILocation(line: 102, column: 12, scope: !517)
!527 = !DILocation(line: 103, column: 12, scope: !528)
!528 = distinct !DILexicalBlock(scope: !517, file: !3, line: 103, column: 5)
!529 = !DILocation(line: 103, column: 10, scope: !528)
!530 = !DILocation(line: 103, column: 17, scope: !531)
!531 = distinct !DILexicalBlock(scope: !528, file: !3, line: 103, column: 5)
!532 = !DILocation(line: 103, column: 21, scope: !531)
!533 = !DILocation(line: 103, column: 19, scope: !531)
!534 = !DILocation(line: 103, column: 5, scope: !528)
!535 = !DILocation(line: 105, column: 24, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !3, line: 104, column: 5)
!537 = !DILocation(line: 105, column: 30, scope: !536)
!538 = !DILocation(line: 105, column: 9, scope: !536)
!539 = !DILocation(line: 106, column: 5, scope: !536)
!540 = !DILocation(line: 103, column: 31, scope: !531)
!541 = !DILocation(line: 103, column: 5, scope: !531)
!542 = distinct !{!542, !534, !543, !268}
!543 = !DILocation(line: 106, column: 5, scope: !528)
!544 = !DILocation(line: 107, column: 5, scope: !517)
!545 = !DILocation(line: 108, column: 1, scope: !517)
!546 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !547, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DISubroutineType(types: !548)
!548 = !{!72, !520, !72, !42}
!549 = !DILocalVariable(name: "bytes", arg: 1, scope: !546, file: !3, line: 113, type: !520)
!550 = !DILocation(line: 113, column: 39, scope: !546)
!551 = !DILocalVariable(name: "numBytes", arg: 2, scope: !546, file: !3, line: 113, type: !72)
!552 = !DILocation(line: 113, column: 53, scope: !546)
!553 = !DILocalVariable(name: "hex", arg: 3, scope: !546, file: !3, line: 113, type: !42)
!554 = !DILocation(line: 113, column: 71, scope: !546)
!555 = !DILocalVariable(name: "numWritten", scope: !546, file: !3, line: 115, type: !72)
!556 = !DILocation(line: 115, column: 12, scope: !546)
!557 = !DILocation(line: 121, column: 5, scope: !546)
!558 = !DILocation(line: 121, column: 12, scope: !546)
!559 = !DILocation(line: 121, column: 25, scope: !546)
!560 = !DILocation(line: 121, column: 23, scope: !546)
!561 = !DILocation(line: 121, column: 34, scope: !546)
!562 = !DILocation(line: 121, column: 37, scope: !546)
!563 = !DILocation(line: 121, column: 67, scope: !546)
!564 = !DILocation(line: 121, column: 70, scope: !546)
!565 = !DILocation(line: 0, scope: !546)
!566 = !DILocalVariable(name: "byte", scope: !567, file: !3, line: 123, type: !23)
!567 = distinct !DILexicalBlock(scope: !546, file: !3, line: 122, column: 5)
!568 = !DILocation(line: 123, column: 13, scope: !567)
!569 = !DILocation(line: 124, column: 17, scope: !567)
!570 = !DILocation(line: 124, column: 25, scope: !567)
!571 = !DILocation(line: 124, column: 23, scope: !567)
!572 = !DILocation(line: 124, column: 9, scope: !567)
!573 = !DILocation(line: 125, column: 45, scope: !567)
!574 = !DILocation(line: 125, column: 29, scope: !567)
!575 = !DILocation(line: 125, column: 9, scope: !567)
!576 = !DILocation(line: 125, column: 15, scope: !567)
!577 = !DILocation(line: 125, column: 27, scope: !567)
!578 = !DILocation(line: 126, column: 9, scope: !567)
!579 = distinct !{!579, !557, !580, !268}
!580 = !DILocation(line: 127, column: 5, scope: !546)
!581 = !DILocation(line: 129, column: 12, scope: !546)
!582 = !DILocation(line: 129, column: 5, scope: !546)
!583 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !584, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DISubroutineType(types: !585)
!585 = !{!72, !520, !72, !380}
!586 = !DILocalVariable(name: "bytes", arg: 1, scope: !583, file: !3, line: 135, type: !520)
!587 = !DILocation(line: 135, column: 41, scope: !583)
!588 = !DILocalVariable(name: "numBytes", arg: 2, scope: !583, file: !3, line: 135, type: !72)
!589 = !DILocation(line: 135, column: 55, scope: !583)
!590 = !DILocalVariable(name: "hex", arg: 3, scope: !583, file: !3, line: 135, type: !380)
!591 = !DILocation(line: 135, column: 76, scope: !583)
!592 = !DILocalVariable(name: "numWritten", scope: !583, file: !3, line: 137, type: !72)
!593 = !DILocation(line: 137, column: 12, scope: !583)
!594 = !DILocation(line: 143, column: 5, scope: !583)
!595 = !DILocation(line: 143, column: 12, scope: !583)
!596 = !DILocation(line: 143, column: 25, scope: !583)
!597 = !DILocation(line: 143, column: 23, scope: !583)
!598 = !DILocation(line: 143, column: 34, scope: !583)
!599 = !DILocation(line: 143, column: 47, scope: !583)
!600 = !DILocation(line: 143, column: 55, scope: !583)
!601 = !DILocation(line: 143, column: 53, scope: !583)
!602 = !DILocation(line: 143, column: 37, scope: !583)
!603 = !DILocation(line: 143, column: 68, scope: !583)
!604 = !DILocation(line: 143, column: 81, scope: !583)
!605 = !DILocation(line: 143, column: 89, scope: !583)
!606 = !DILocation(line: 143, column: 87, scope: !583)
!607 = !DILocation(line: 143, column: 100, scope: !583)
!608 = !DILocation(line: 143, column: 71, scope: !583)
!609 = !DILocation(line: 0, scope: !583)
!610 = !DILocalVariable(name: "byte", scope: !611, file: !3, line: 145, type: !23)
!611 = distinct !DILexicalBlock(scope: !583, file: !3, line: 144, column: 5)
!612 = !DILocation(line: 145, column: 13, scope: !611)
!613 = !DILocation(line: 146, column: 18, scope: !611)
!614 = !DILocation(line: 146, column: 26, scope: !611)
!615 = !DILocation(line: 146, column: 24, scope: !611)
!616 = !DILocation(line: 146, column: 9, scope: !611)
!617 = !DILocation(line: 147, column: 45, scope: !611)
!618 = !DILocation(line: 147, column: 29, scope: !611)
!619 = !DILocation(line: 147, column: 9, scope: !611)
!620 = !DILocation(line: 147, column: 15, scope: !611)
!621 = !DILocation(line: 147, column: 27, scope: !611)
!622 = !DILocation(line: 148, column: 9, scope: !611)
!623 = distinct !{!623, !594, !624, !268}
!624 = !DILocation(line: 149, column: 5, scope: !583)
!625 = !DILocation(line: 151, column: 12, scope: !583)
!626 = !DILocation(line: 151, column: 5, scope: !583)
!627 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !628, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DISubroutineType(types: !629)
!629 = !{!23}
!630 = !DILocation(line: 158, column: 5, scope: !627)
!631 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !628, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 163, column: 5, scope: !631)
!633 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !628, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 168, column: 13, scope: !633)
!635 = !DILocation(line: 168, column: 20, scope: !633)
!636 = !DILocation(line: 168, column: 5, scope: !633)
!637 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !59, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 187, column: 16, scope: !637)
!639 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !59, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 188, column: 16, scope: !639)
!641 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !59, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DILocation(line: 189, column: 16, scope: !641)
!643 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DILocation(line: 190, column: 16, scope: !643)
!645 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !59, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!646 = !DILocation(line: 191, column: 16, scope: !645)
!647 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !59, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DILocation(line: 192, column: 16, scope: !647)
!649 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !59, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 193, column: 16, scope: !649)
!651 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !59, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 194, column: 16, scope: !651)
!653 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !59, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 195, column: 16, scope: !653)
!655 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !59, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!656 = !DILocation(line: 198, column: 15, scope: !655)
!657 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !59, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 199, column: 15, scope: !657)
!659 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !59, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 200, column: 15, scope: !659)
!661 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !59, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 201, column: 15, scope: !661)
!663 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !59, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 202, column: 15, scope: !663)
!665 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !59, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 203, column: 15, scope: !665)
!667 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !59, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 204, column: 15, scope: !667)
!669 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !59, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 205, column: 15, scope: !669)
!671 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !59, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 206, column: 15, scope: !671)
