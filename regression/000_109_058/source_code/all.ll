; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
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
@.str.26 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.27 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_54_bad() #0 !dbg !60 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
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
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !80, metadata !DIExpression()), !dbg !81
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !82
  store i8* %call1, i8** %environment, align 8, !dbg !81
  %2 = load i8*, i8** %environment, align 8, !dbg !83
  %cmp = icmp ne i8* %2, null, !dbg !85
  br i1 %cmp, label %if.then, label %if.end, !dbg !86

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !87
  %4 = load i64, i64* %dataLen, align 8, !dbg !89
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !90
  %5 = load i8*, i8** %environment, align 8, !dbg !91
  %6 = load i64, i64* %dataLen, align 8, !dbg !92
  %sub = sub i64 100, %6, !dbg !93
  %sub2 = sub i64 %sub, 1, !dbg !94
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !95
  br label %if.end, !dbg !96

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !97
  call void @CWE606_Unchecked_Loop_Condition__char_environment_54b_badSink(i8* %7), !dbg !98
  ret void, !dbg !99
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !100 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !104
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !104
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !105
  store i8* %arraydecay, i8** %data, align 8, !dbg !106
  %1 = load i8*, i8** %data, align 8, !dbg !107
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !108
  %2 = load i8*, i8** %data, align 8, !dbg !109
  call void @CWE606_Unchecked_Loop_Condition__char_environment_54b_goodG2BSink(i8* %2), !dbg !110
  ret void, !dbg !111
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !112 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !115, metadata !DIExpression()), !dbg !116
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !116
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !116
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !117
  store i8* %arraydecay, i8** %data, align 8, !dbg !118
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !119, metadata !DIExpression()), !dbg !121
  %1 = load i8*, i8** %data, align 8, !dbg !122
  %call = call i64 @strlen(i8* %1) #7, !dbg !123
  store i64 %call, i64* %dataLen, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !124, metadata !DIExpression()), !dbg !125
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !126
  store i8* %call1, i8** %environment, align 8, !dbg !125
  %2 = load i8*, i8** %environment, align 8, !dbg !127
  %cmp = icmp ne i8* %2, null, !dbg !129
  br i1 %cmp, label %if.then, label %if.end, !dbg !130

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !131
  %4 = load i64, i64* %dataLen, align 8, !dbg !133
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !134
  %5 = load i8*, i8** %environment, align 8, !dbg !135
  %6 = load i64, i64* %dataLen, align 8, !dbg !136
  %sub = sub i64 100, %6, !dbg !137
  %sub2 = sub i64 %sub, 1, !dbg !138
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !139
  br label %if.end, !dbg !140

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !141
  call void @CWE606_Unchecked_Loop_Condition__char_environment_54b_goodB2GSink(i8* %7), !dbg !142
  ret void, !dbg !143
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_54_good() #0 !dbg !144 {
entry:
  call void @goodG2B(), !dbg !145
  call void @goodB2G(), !dbg !146
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_54b_badSink(i8* %data) #0 !dbg !148 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !151, metadata !DIExpression()), !dbg !152
  %0 = load i8*, i8** %data.addr, align 8, !dbg !153
  call void @CWE606_Unchecked_Loop_Condition__char_environment_54c_badSink(i8* %0), !dbg !154
  ret void, !dbg !155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_54b_goodG2BSink(i8* %data) #0 !dbg !156 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !157, metadata !DIExpression()), !dbg !158
  %0 = load i8*, i8** %data.addr, align 8, !dbg !159
  call void @CWE606_Unchecked_Loop_Condition__char_environment_54c_goodG2BSink(i8* %0), !dbg !160
  ret void, !dbg !161
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_54b_goodB2GSink(i8* %data) #0 !dbg !162 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !163, metadata !DIExpression()), !dbg !164
  %0 = load i8*, i8** %data.addr, align 8, !dbg !165
  call void @CWE606_Unchecked_Loop_Condition__char_environment_54c_goodB2GSink(i8* %0), !dbg !166
  ret void, !dbg !167
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_54c_badSink(i8* %data) #0 !dbg !168 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = load i8*, i8** %data.addr, align 8, !dbg !171
  call void @CWE606_Unchecked_Loop_Condition__char_environment_54d_badSink(i8* %0), !dbg !172
  ret void, !dbg !173
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_54c_goodG2BSink(i8* %data) #0 !dbg !174 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = load i8*, i8** %data.addr, align 8, !dbg !177
  call void @CWE606_Unchecked_Loop_Condition__char_environment_54d_goodG2BSink(i8* %0), !dbg !178
  ret void, !dbg !179
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_54c_goodB2GSink(i8* %data) #0 !dbg !180 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !181, metadata !DIExpression()), !dbg !182
  %0 = load i8*, i8** %data.addr, align 8, !dbg !183
  call void @CWE606_Unchecked_Loop_Condition__char_environment_54d_goodB2GSink(i8* %0), !dbg !184
  ret void, !dbg !185
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_54d_badSink(i8* %data) #0 !dbg !186 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !187, metadata !DIExpression()), !dbg !188
  %0 = load i8*, i8** %data.addr, align 8, !dbg !189
  call void @CWE606_Unchecked_Loop_Condition__char_environment_54e_badSink(i8* %0), !dbg !190
  ret void, !dbg !191
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_54d_goodG2BSink(i8* %data) #0 !dbg !192 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !193, metadata !DIExpression()), !dbg !194
  %0 = load i8*, i8** %data.addr, align 8, !dbg !195
  call void @CWE606_Unchecked_Loop_Condition__char_environment_54e_goodG2BSink(i8* %0), !dbg !196
  ret void, !dbg !197
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_54d_goodB2GSink(i8* %data) #0 !dbg !198 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !199, metadata !DIExpression()), !dbg !200
  %0 = load i8*, i8** %data.addr, align 8, !dbg !201
  call void @CWE606_Unchecked_Loop_Condition__char_environment_54e_goodB2GSink(i8* %0), !dbg !202
  ret void, !dbg !203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_54e_badSink(i8* %data) #0 !dbg !204 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %i, metadata !207, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata i32* %n, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !212, metadata !DIExpression()), !dbg !213
  %0 = load i8*, i8** %data.addr, align 8, !dbg !214
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* %n) #8, !dbg !216
  %cmp = icmp eq i32 %call, 1, !dbg !217
  br i1 %cmp, label %if.then, label %if.end, !dbg !218

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !219
  store i32 0, i32* %i, align 4, !dbg !221
  br label %for.cond, !dbg !223

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !224
  %2 = load i32, i32* %n, align 4, !dbg !226
  %cmp1 = icmp slt i32 %1, %2, !dbg !227
  br i1 %cmp1, label %for.body, label %for.end, !dbg !228

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !229
  %inc = add nsw i32 %3, 1, !dbg !229
  store i32 %inc, i32* %intVariable, align 4, !dbg !229
  br label %for.inc, !dbg !231

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !232
  %inc2 = add nsw i32 %4, 1, !dbg !232
  store i32 %inc2, i32* %i, align 4, !dbg !232
  br label %for.cond, !dbg !233, !llvm.loop !234

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !237
  call void @printIntLine(i32 %5), !dbg !238
  br label %if.end, !dbg !239

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !240
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_54e_goodG2BSink(i8* %data) #0 !dbg !241 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata i32* %i, metadata !244, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %n, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !249, metadata !DIExpression()), !dbg !250
  %0 = load i8*, i8** %data.addr, align 8, !dbg !251
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* %n) #8, !dbg !253
  %cmp = icmp eq i32 %call, 1, !dbg !254
  br i1 %cmp, label %if.then, label %if.end, !dbg !255

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !256
  store i32 0, i32* %i, align 4, !dbg !258
  br label %for.cond, !dbg !260

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !261
  %2 = load i32, i32* %n, align 4, !dbg !263
  %cmp1 = icmp slt i32 %1, %2, !dbg !264
  br i1 %cmp1, label %for.body, label %for.end, !dbg !265

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !266
  %inc = add nsw i32 %3, 1, !dbg !266
  store i32 %inc, i32* %intVariable, align 4, !dbg !266
  br label %for.inc, !dbg !268

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !269
  %inc2 = add nsw i32 %4, 1, !dbg !269
  store i32 %inc2, i32* %i, align 4, !dbg !269
  br label %for.cond, !dbg !270, !llvm.loop !271

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !273
  call void @printIntLine(i32 %5), !dbg !274
  br label %if.end, !dbg !275

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !276
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_54e_goodB2GSink(i8* %data) #0 !dbg !277 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata i32* %i, metadata !280, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata i32* %n, metadata !283, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load i8*, i8** %data.addr, align 8, !dbg !287
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* %n) #8, !dbg !289
  %cmp = icmp eq i32 %call, 1, !dbg !290
  br i1 %cmp, label %if.then, label %if.end5, !dbg !291

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !292
  %cmp1 = icmp slt i32 %1, 10000, !dbg !295
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !296

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !297
  store i32 0, i32* %i, align 4, !dbg !299
  br label %for.cond, !dbg !301

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !302
  %3 = load i32, i32* %n, align 4, !dbg !304
  %cmp3 = icmp slt i32 %2, %3, !dbg !305
  br i1 %cmp3, label %for.body, label %for.end, !dbg !306

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !307
  %inc = add nsw i32 %4, 1, !dbg !307
  store i32 %inc, i32* %intVariable, align 4, !dbg !307
  br label %for.inc, !dbg !309

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !310
  %inc4 = add nsw i32 %5, 1, !dbg !310
  store i32 %inc4, i32* %i, align 4, !dbg !310
  br label %for.cond, !dbg !311, !llvm.loop !312

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !314
  call void @printIntLine(i32 %6), !dbg !315
  br label %if.end, !dbg !316

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !317

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !319 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !320, metadata !DIExpression()), !dbg !321
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0)), !dbg !322
  %0 = load i8*, i8** %line.addr, align 8, !dbg !323
  %cmp = icmp ne i8* %0, null, !dbg !325
  br i1 %cmp, label %if.then, label %if.end, !dbg !326

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !327
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.27, i64 0, i64 0), i8* %1), !dbg !329
  br label %if.end, !dbg !330

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !331
  ret void, !dbg !332
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !333 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !334, metadata !DIExpression()), !dbg !335
  %0 = load i8*, i8** %line.addr, align 8, !dbg !336
  %cmp = icmp ne i8* %0, null, !dbg !338
  br i1 %cmp, label %if.then, label %if.end, !dbg !339

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !340
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.27, i64 0, i64 0), i8* %1), !dbg !342
  br label %if.end, !dbg !343

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !345 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load i32*, i32** %line.addr, align 8, !dbg !352
  %cmp = icmp ne i32* %0, null, !dbg !354
  br i1 %cmp, label %if.then, label %if.end, !dbg !355

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !356
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !358
  br label %if.end, !dbg !359

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !360
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !361 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !364, metadata !DIExpression()), !dbg !365
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !366
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !367
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !369 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !373, metadata !DIExpression()), !dbg !374
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !375
  %conv = sext i16 %0 to i32, !dbg !375
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !376
  ret void, !dbg !377
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !378 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !384
  %conv = fpext float %0 to double, !dbg !384
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !385
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !387 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !393
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !396 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !408 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !413
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !414
  ret void, !dbg !415
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !416 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !419, metadata !DIExpression()), !dbg !420
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !421
  %conv = sext i8 %0 to i32, !dbg !421
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !424 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !427, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !429, metadata !DIExpression()), !dbg !433
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !434
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !435
  store i32 %0, i32* %arrayidx, align 4, !dbg !436
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !437
  store i32 0, i32* %arrayidx1, align 4, !dbg !438
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !439
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !440
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !442 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !445, metadata !DIExpression()), !dbg !446
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !447
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !448
  ret void, !dbg !449
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !450 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !453, metadata !DIExpression()), !dbg !454
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !455
  %conv = zext i8 %0 to i32, !dbg !455
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !456
  ret void, !dbg !457
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !458 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !462, metadata !DIExpression()), !dbg !463
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !464
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !465
  ret void, !dbg !466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !467 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !477, metadata !DIExpression()), !dbg !478
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !479
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !480
  %1 = load i32, i32* %intOne, align 4, !dbg !480
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !481
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !482
  %3 = load i32, i32* %intTwo, align 4, !dbg !482
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !483
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !485 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !489, metadata !DIExpression()), !dbg !490
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata i64* %i, metadata !493, metadata !DIExpression()), !dbg !494
  store i64 0, i64* %i, align 8, !dbg !495
  br label %for.cond, !dbg !497

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !498
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !500
  %cmp = icmp ult i64 %0, %1, !dbg !501
  br i1 %cmp, label %for.body, label %for.end, !dbg !502

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !503
  %3 = load i64, i64* %i, align 8, !dbg !505
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !503
  %4 = load i8, i8* %arrayidx, align 1, !dbg !503
  %conv = zext i8 %4 to i32, !dbg !503
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !506
  br label %for.inc, !dbg !507

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !508
  %inc = add i64 %5, 1, !dbg !508
  store i64 %inc, i64* %i, align 8, !dbg !508
  br label %for.cond, !dbg !509, !llvm.loop !510

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !512
  ret void, !dbg !513
}

declare dso_local i32 @puts(i8*) #5

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
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

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
declare dso_local i32 @rand() #4

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
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_058/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_54a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_058/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_54b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_058/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_54c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_058/source_code")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_54d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_058/source_code")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_54e.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_058/source_code")
!56 = !{!"clang version 12.0.0"}
!57 = !{i32 7, !"Dwarf Version", i32 4}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_54_bad", scope: !45, file: !45, line: 39, type: !61, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!61 = !DISubroutineType(types: !62)
!62 = !{null}
!63 = !DILocalVariable(name: "data", scope: !60, file: !45, line: 41, type: !42)
!64 = !DILocation(line: 41, column: 12, scope: !60)
!65 = !DILocalVariable(name: "dataBuffer", scope: !60, file: !45, line: 42, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 100)
!69 = !DILocation(line: 42, column: 10, scope: !60)
!70 = !DILocation(line: 43, column: 12, scope: !60)
!71 = !DILocation(line: 43, column: 10, scope: !60)
!72 = !DILocalVariable(name: "dataLen", scope: !73, file: !45, line: 46, type: !74)
!73 = distinct !DILexicalBlock(scope: !60, file: !45, line: 44, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 46, column: 16, scope: !73)
!78 = !DILocation(line: 46, column: 33, scope: !73)
!79 = !DILocation(line: 46, column: 26, scope: !73)
!80 = !DILocalVariable(name: "environment", scope: !73, file: !45, line: 47, type: !42)
!81 = !DILocation(line: 47, column: 16, scope: !73)
!82 = !DILocation(line: 47, column: 30, scope: !73)
!83 = !DILocation(line: 49, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !73, file: !45, line: 49, column: 13)
!85 = !DILocation(line: 49, column: 25, scope: !84)
!86 = !DILocation(line: 49, column: 13, scope: !73)
!87 = !DILocation(line: 52, column: 21, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !45, line: 50, column: 9)
!89 = !DILocation(line: 52, column: 26, scope: !88)
!90 = !DILocation(line: 52, column: 25, scope: !88)
!91 = !DILocation(line: 52, column: 35, scope: !88)
!92 = !DILocation(line: 52, column: 52, scope: !88)
!93 = !DILocation(line: 52, column: 51, scope: !88)
!94 = !DILocation(line: 52, column: 59, scope: !88)
!95 = !DILocation(line: 52, column: 13, scope: !88)
!96 = !DILocation(line: 53, column: 9, scope: !88)
!97 = !DILocation(line: 55, column: 67, scope: !60)
!98 = !DILocation(line: 55, column: 5, scope: !60)
!99 = !DILocation(line: 56, column: 1, scope: !60)
!100 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 64, type: !61, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!101 = !DILocalVariable(name: "data", scope: !100, file: !45, line: 66, type: !42)
!102 = !DILocation(line: 66, column: 12, scope: !100)
!103 = !DILocalVariable(name: "dataBuffer", scope: !100, file: !45, line: 67, type: !66)
!104 = !DILocation(line: 67, column: 10, scope: !100)
!105 = !DILocation(line: 68, column: 12, scope: !100)
!106 = !DILocation(line: 68, column: 10, scope: !100)
!107 = !DILocation(line: 70, column: 12, scope: !100)
!108 = !DILocation(line: 70, column: 5, scope: !100)
!109 = !DILocation(line: 71, column: 71, scope: !100)
!110 = !DILocation(line: 71, column: 5, scope: !100)
!111 = !DILocation(line: 72, column: 1, scope: !100)
!112 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 76, type: !61, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!113 = !DILocalVariable(name: "data", scope: !112, file: !45, line: 78, type: !42)
!114 = !DILocation(line: 78, column: 12, scope: !112)
!115 = !DILocalVariable(name: "dataBuffer", scope: !112, file: !45, line: 79, type: !66)
!116 = !DILocation(line: 79, column: 10, scope: !112)
!117 = !DILocation(line: 80, column: 12, scope: !112)
!118 = !DILocation(line: 80, column: 10, scope: !112)
!119 = !DILocalVariable(name: "dataLen", scope: !120, file: !45, line: 83, type: !74)
!120 = distinct !DILexicalBlock(scope: !112, file: !45, line: 81, column: 5)
!121 = !DILocation(line: 83, column: 16, scope: !120)
!122 = !DILocation(line: 83, column: 33, scope: !120)
!123 = !DILocation(line: 83, column: 26, scope: !120)
!124 = !DILocalVariable(name: "environment", scope: !120, file: !45, line: 84, type: !42)
!125 = !DILocation(line: 84, column: 16, scope: !120)
!126 = !DILocation(line: 84, column: 30, scope: !120)
!127 = !DILocation(line: 86, column: 13, scope: !128)
!128 = distinct !DILexicalBlock(scope: !120, file: !45, line: 86, column: 13)
!129 = !DILocation(line: 86, column: 25, scope: !128)
!130 = !DILocation(line: 86, column: 13, scope: !120)
!131 = !DILocation(line: 89, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !45, line: 87, column: 9)
!133 = !DILocation(line: 89, column: 26, scope: !132)
!134 = !DILocation(line: 89, column: 25, scope: !132)
!135 = !DILocation(line: 89, column: 35, scope: !132)
!136 = !DILocation(line: 89, column: 52, scope: !132)
!137 = !DILocation(line: 89, column: 51, scope: !132)
!138 = !DILocation(line: 89, column: 59, scope: !132)
!139 = !DILocation(line: 89, column: 13, scope: !132)
!140 = !DILocation(line: 90, column: 9, scope: !132)
!141 = !DILocation(line: 92, column: 71, scope: !112)
!142 = !DILocation(line: 92, column: 5, scope: !112)
!143 = !DILocation(line: 93, column: 1, scope: !112)
!144 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_54_good", scope: !45, file: !45, line: 95, type: !61, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!145 = !DILocation(line: 97, column: 5, scope: !144)
!146 = !DILocation(line: 98, column: 5, scope: !144)
!147 = !DILocation(line: 99, column: 1, scope: !144)
!148 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_54b_badSink", scope: !49, file: !49, line: 39, type: !149, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !42}
!151 = !DILocalVariable(name: "data", arg: 1, scope: !148, file: !49, line: 39, type: !42)
!152 = !DILocation(line: 39, column: 75, scope: !148)
!153 = !DILocation(line: 41, column: 67, scope: !148)
!154 = !DILocation(line: 41, column: 5, scope: !148)
!155 = !DILocation(line: 42, column: 1, scope: !148)
!156 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_54b_goodG2BSink", scope: !49, file: !49, line: 51, type: !149, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!157 = !DILocalVariable(name: "data", arg: 1, scope: !156, file: !49, line: 51, type: !42)
!158 = !DILocation(line: 51, column: 79, scope: !156)
!159 = !DILocation(line: 53, column: 71, scope: !156)
!160 = !DILocation(line: 53, column: 5, scope: !156)
!161 = !DILocation(line: 54, column: 1, scope: !156)
!162 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_54b_goodB2GSink", scope: !49, file: !49, line: 59, type: !149, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!163 = !DILocalVariable(name: "data", arg: 1, scope: !162, file: !49, line: 59, type: !42)
!164 = !DILocation(line: 59, column: 79, scope: !162)
!165 = !DILocation(line: 61, column: 71, scope: !162)
!166 = !DILocation(line: 61, column: 5, scope: !162)
!167 = !DILocation(line: 62, column: 1, scope: !162)
!168 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_54c_badSink", scope: !51, file: !51, line: 39, type: !149, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!169 = !DILocalVariable(name: "data", arg: 1, scope: !168, file: !51, line: 39, type: !42)
!170 = !DILocation(line: 39, column: 75, scope: !168)
!171 = !DILocation(line: 41, column: 67, scope: !168)
!172 = !DILocation(line: 41, column: 5, scope: !168)
!173 = !DILocation(line: 42, column: 1, scope: !168)
!174 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_54c_goodG2BSink", scope: !51, file: !51, line: 51, type: !149, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!175 = !DILocalVariable(name: "data", arg: 1, scope: !174, file: !51, line: 51, type: !42)
!176 = !DILocation(line: 51, column: 79, scope: !174)
!177 = !DILocation(line: 53, column: 71, scope: !174)
!178 = !DILocation(line: 53, column: 5, scope: !174)
!179 = !DILocation(line: 54, column: 1, scope: !174)
!180 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_54c_goodB2GSink", scope: !51, file: !51, line: 59, type: !149, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!181 = !DILocalVariable(name: "data", arg: 1, scope: !180, file: !51, line: 59, type: !42)
!182 = !DILocation(line: 59, column: 79, scope: !180)
!183 = !DILocation(line: 61, column: 71, scope: !180)
!184 = !DILocation(line: 61, column: 5, scope: !180)
!185 = !DILocation(line: 62, column: 1, scope: !180)
!186 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_54d_badSink", scope: !53, file: !53, line: 39, type: !149, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!187 = !DILocalVariable(name: "data", arg: 1, scope: !186, file: !53, line: 39, type: !42)
!188 = !DILocation(line: 39, column: 75, scope: !186)
!189 = !DILocation(line: 41, column: 67, scope: !186)
!190 = !DILocation(line: 41, column: 5, scope: !186)
!191 = !DILocation(line: 42, column: 1, scope: !186)
!192 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_54d_goodG2BSink", scope: !53, file: !53, line: 51, type: !149, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!193 = !DILocalVariable(name: "data", arg: 1, scope: !192, file: !53, line: 51, type: !42)
!194 = !DILocation(line: 51, column: 79, scope: !192)
!195 = !DILocation(line: 53, column: 71, scope: !192)
!196 = !DILocation(line: 53, column: 5, scope: !192)
!197 = !DILocation(line: 54, column: 1, scope: !192)
!198 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_54d_goodB2GSink", scope: !53, file: !53, line: 59, type: !149, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!199 = !DILocalVariable(name: "data", arg: 1, scope: !198, file: !53, line: 59, type: !42)
!200 = !DILocation(line: 59, column: 79, scope: !198)
!201 = !DILocation(line: 61, column: 71, scope: !198)
!202 = !DILocation(line: 61, column: 5, scope: !198)
!203 = !DILocation(line: 62, column: 1, scope: !198)
!204 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_54e_badSink", scope: !55, file: !55, line: 36, type: !149, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!205 = !DILocalVariable(name: "data", arg: 1, scope: !204, file: !55, line: 36, type: !42)
!206 = !DILocation(line: 36, column: 75, scope: !204)
!207 = !DILocalVariable(name: "i", scope: !208, file: !55, line: 39, type: !23)
!208 = distinct !DILexicalBlock(scope: !204, file: !55, line: 38, column: 5)
!209 = !DILocation(line: 39, column: 13, scope: !208)
!210 = !DILocalVariable(name: "n", scope: !208, file: !55, line: 39, type: !23)
!211 = !DILocation(line: 39, column: 16, scope: !208)
!212 = !DILocalVariable(name: "intVariable", scope: !208, file: !55, line: 39, type: !23)
!213 = !DILocation(line: 39, column: 19, scope: !208)
!214 = !DILocation(line: 40, column: 20, scope: !215)
!215 = distinct !DILexicalBlock(scope: !208, file: !55, line: 40, column: 13)
!216 = !DILocation(line: 40, column: 13, scope: !215)
!217 = !DILocation(line: 40, column: 36, scope: !215)
!218 = !DILocation(line: 40, column: 13, scope: !208)
!219 = !DILocation(line: 43, column: 25, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !55, line: 41, column: 9)
!221 = !DILocation(line: 44, column: 20, scope: !222)
!222 = distinct !DILexicalBlock(scope: !220, file: !55, line: 44, column: 13)
!223 = !DILocation(line: 44, column: 18, scope: !222)
!224 = !DILocation(line: 44, column: 25, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !55, line: 44, column: 13)
!226 = !DILocation(line: 44, column: 29, scope: !225)
!227 = !DILocation(line: 44, column: 27, scope: !225)
!228 = !DILocation(line: 44, column: 13, scope: !222)
!229 = !DILocation(line: 47, column: 28, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !55, line: 45, column: 13)
!231 = !DILocation(line: 48, column: 13, scope: !230)
!232 = !DILocation(line: 44, column: 33, scope: !225)
!233 = !DILocation(line: 44, column: 13, scope: !225)
!234 = distinct !{!234, !228, !235, !236}
!235 = !DILocation(line: 48, column: 13, scope: !222)
!236 = !{!"llvm.loop.mustprogress"}
!237 = !DILocation(line: 49, column: 26, scope: !220)
!238 = !DILocation(line: 49, column: 13, scope: !220)
!239 = !DILocation(line: 50, column: 9, scope: !220)
!240 = !DILocation(line: 52, column: 1, scope: !204)
!241 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_54e_goodG2BSink", scope: !55, file: !55, line: 59, type: !149, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!242 = !DILocalVariable(name: "data", arg: 1, scope: !241, file: !55, line: 59, type: !42)
!243 = !DILocation(line: 59, column: 79, scope: !241)
!244 = !DILocalVariable(name: "i", scope: !245, file: !55, line: 62, type: !23)
!245 = distinct !DILexicalBlock(scope: !241, file: !55, line: 61, column: 5)
!246 = !DILocation(line: 62, column: 13, scope: !245)
!247 = !DILocalVariable(name: "n", scope: !245, file: !55, line: 62, type: !23)
!248 = !DILocation(line: 62, column: 16, scope: !245)
!249 = !DILocalVariable(name: "intVariable", scope: !245, file: !55, line: 62, type: !23)
!250 = !DILocation(line: 62, column: 19, scope: !245)
!251 = !DILocation(line: 63, column: 20, scope: !252)
!252 = distinct !DILexicalBlock(scope: !245, file: !55, line: 63, column: 13)
!253 = !DILocation(line: 63, column: 13, scope: !252)
!254 = !DILocation(line: 63, column: 36, scope: !252)
!255 = !DILocation(line: 63, column: 13, scope: !245)
!256 = !DILocation(line: 66, column: 25, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !55, line: 64, column: 9)
!258 = !DILocation(line: 67, column: 20, scope: !259)
!259 = distinct !DILexicalBlock(scope: !257, file: !55, line: 67, column: 13)
!260 = !DILocation(line: 67, column: 18, scope: !259)
!261 = !DILocation(line: 67, column: 25, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !55, line: 67, column: 13)
!263 = !DILocation(line: 67, column: 29, scope: !262)
!264 = !DILocation(line: 67, column: 27, scope: !262)
!265 = !DILocation(line: 67, column: 13, scope: !259)
!266 = !DILocation(line: 70, column: 28, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !55, line: 68, column: 13)
!268 = !DILocation(line: 71, column: 13, scope: !267)
!269 = !DILocation(line: 67, column: 33, scope: !262)
!270 = !DILocation(line: 67, column: 13, scope: !262)
!271 = distinct !{!271, !265, !272, !236}
!272 = !DILocation(line: 71, column: 13, scope: !259)
!273 = !DILocation(line: 72, column: 26, scope: !257)
!274 = !DILocation(line: 72, column: 13, scope: !257)
!275 = !DILocation(line: 73, column: 9, scope: !257)
!276 = !DILocation(line: 75, column: 1, scope: !241)
!277 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_54e_goodB2GSink", scope: !55, file: !55, line: 78, type: !149, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!278 = !DILocalVariable(name: "data", arg: 1, scope: !277, file: !55, line: 78, type: !42)
!279 = !DILocation(line: 78, column: 79, scope: !277)
!280 = !DILocalVariable(name: "i", scope: !281, file: !55, line: 81, type: !23)
!281 = distinct !DILexicalBlock(scope: !277, file: !55, line: 80, column: 5)
!282 = !DILocation(line: 81, column: 13, scope: !281)
!283 = !DILocalVariable(name: "n", scope: !281, file: !55, line: 81, type: !23)
!284 = !DILocation(line: 81, column: 16, scope: !281)
!285 = !DILocalVariable(name: "intVariable", scope: !281, file: !55, line: 81, type: !23)
!286 = !DILocation(line: 81, column: 19, scope: !281)
!287 = !DILocation(line: 82, column: 20, scope: !288)
!288 = distinct !DILexicalBlock(scope: !281, file: !55, line: 82, column: 13)
!289 = !DILocation(line: 82, column: 13, scope: !288)
!290 = !DILocation(line: 82, column: 36, scope: !288)
!291 = !DILocation(line: 82, column: 13, scope: !281)
!292 = !DILocation(line: 85, column: 17, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !55, line: 85, column: 17)
!294 = distinct !DILexicalBlock(scope: !288, file: !55, line: 83, column: 9)
!295 = !DILocation(line: 85, column: 19, scope: !293)
!296 = !DILocation(line: 85, column: 17, scope: !294)
!297 = !DILocation(line: 87, column: 29, scope: !298)
!298 = distinct !DILexicalBlock(scope: !293, file: !55, line: 86, column: 13)
!299 = !DILocation(line: 88, column: 24, scope: !300)
!300 = distinct !DILexicalBlock(scope: !298, file: !55, line: 88, column: 17)
!301 = !DILocation(line: 88, column: 22, scope: !300)
!302 = !DILocation(line: 88, column: 29, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !55, line: 88, column: 17)
!304 = !DILocation(line: 88, column: 33, scope: !303)
!305 = !DILocation(line: 88, column: 31, scope: !303)
!306 = !DILocation(line: 88, column: 17, scope: !300)
!307 = !DILocation(line: 91, column: 32, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !55, line: 89, column: 17)
!309 = !DILocation(line: 92, column: 17, scope: !308)
!310 = !DILocation(line: 88, column: 37, scope: !303)
!311 = !DILocation(line: 88, column: 17, scope: !303)
!312 = distinct !{!312, !306, !313, !236}
!313 = !DILocation(line: 92, column: 17, scope: !300)
!314 = !DILocation(line: 93, column: 30, scope: !298)
!315 = !DILocation(line: 93, column: 17, scope: !298)
!316 = !DILocation(line: 94, column: 13, scope: !298)
!317 = !DILocation(line: 95, column: 9, scope: !294)
!318 = !DILocation(line: 97, column: 1, scope: !277)
!319 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !149, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!320 = !DILocalVariable(name: "line", arg: 1, scope: !319, file: !3, line: 11, type: !42)
!321 = !DILocation(line: 11, column: 25, scope: !319)
!322 = !DILocation(line: 13, column: 1, scope: !319)
!323 = !DILocation(line: 14, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !3, line: 14, column: 8)
!325 = !DILocation(line: 14, column: 13, scope: !324)
!326 = !DILocation(line: 14, column: 8, scope: !319)
!327 = !DILocation(line: 16, column: 24, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !3, line: 15, column: 5)
!329 = !DILocation(line: 16, column: 9, scope: !328)
!330 = !DILocation(line: 17, column: 5, scope: !328)
!331 = !DILocation(line: 18, column: 5, scope: !319)
!332 = !DILocation(line: 19, column: 1, scope: !319)
!333 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !149, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!334 = !DILocalVariable(name: "line", arg: 1, scope: !333, file: !3, line: 20, type: !42)
!335 = !DILocation(line: 20, column: 29, scope: !333)
!336 = !DILocation(line: 22, column: 8, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !3, line: 22, column: 8)
!338 = !DILocation(line: 22, column: 13, scope: !337)
!339 = !DILocation(line: 22, column: 8, scope: !333)
!340 = !DILocation(line: 24, column: 24, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !3, line: 23, column: 5)
!342 = !DILocation(line: 24, column: 9, scope: !341)
!343 = !DILocation(line: 25, column: 5, scope: !341)
!344 = !DILocation(line: 26, column: 1, scope: !333)
!345 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !346, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !23)
!350 = !DILocalVariable(name: "line", arg: 1, scope: !345, file: !3, line: 27, type: !348)
!351 = !DILocation(line: 27, column: 29, scope: !345)
!352 = !DILocation(line: 29, column: 8, scope: !353)
!353 = distinct !DILexicalBlock(scope: !345, file: !3, line: 29, column: 8)
!354 = !DILocation(line: 29, column: 13, scope: !353)
!355 = !DILocation(line: 29, column: 8, scope: !345)
!356 = !DILocation(line: 31, column: 27, scope: !357)
!357 = distinct !DILexicalBlock(scope: !353, file: !3, line: 30, column: 5)
!358 = !DILocation(line: 31, column: 9, scope: !357)
!359 = !DILocation(line: 32, column: 5, scope: !357)
!360 = !DILocation(line: 33, column: 1, scope: !345)
!361 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !362, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !23}
!364 = !DILocalVariable(name: "intNumber", arg: 1, scope: !361, file: !3, line: 35, type: !23)
!365 = !DILocation(line: 35, column: 24, scope: !361)
!366 = !DILocation(line: 37, column: 20, scope: !361)
!367 = !DILocation(line: 37, column: 5, scope: !361)
!368 = !DILocation(line: 38, column: 1, scope: !361)
!369 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !370, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !372}
!372 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!373 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !369, file: !3, line: 40, type: !372)
!374 = !DILocation(line: 40, column: 28, scope: !369)
!375 = !DILocation(line: 42, column: 21, scope: !369)
!376 = !DILocation(line: 42, column: 5, scope: !369)
!377 = !DILocation(line: 43, column: 1, scope: !369)
!378 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !379, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381}
!381 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!382 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !378, file: !3, line: 45, type: !381)
!383 = !DILocation(line: 45, column: 28, scope: !378)
!384 = !DILocation(line: 47, column: 20, scope: !378)
!385 = !DILocation(line: 47, column: 5, scope: !378)
!386 = !DILocation(line: 48, column: 1, scope: !378)
!387 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !388, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !390}
!390 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!391 = !DILocalVariable(name: "longNumber", arg: 1, scope: !387, file: !3, line: 50, type: !390)
!392 = !DILocation(line: 50, column: 26, scope: !387)
!393 = !DILocation(line: 52, column: 21, scope: !387)
!394 = !DILocation(line: 52, column: 5, scope: !387)
!395 = !DILocation(line: 53, column: 1, scope: !387)
!396 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !397, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399}
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !400, line: 27, baseType: !401)
!400 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !402, line: 44, baseType: !390)
!402 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!403 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !396, file: !3, line: 55, type: !399)
!404 = !DILocation(line: 55, column: 33, scope: !396)
!405 = !DILocation(line: 57, column: 29, scope: !396)
!406 = !DILocation(line: 57, column: 5, scope: !396)
!407 = !DILocation(line: 58, column: 1, scope: !396)
!408 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !409, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !74}
!411 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !408, file: !3, line: 60, type: !74)
!412 = !DILocation(line: 60, column: 29, scope: !408)
!413 = !DILocation(line: 62, column: 21, scope: !408)
!414 = !DILocation(line: 62, column: 5, scope: !408)
!415 = !DILocation(line: 63, column: 1, scope: !408)
!416 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !417, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !43}
!419 = !DILocalVariable(name: "charHex", arg: 1, scope: !416, file: !3, line: 65, type: !43)
!420 = !DILocation(line: 65, column: 29, scope: !416)
!421 = !DILocation(line: 67, column: 22, scope: !416)
!422 = !DILocation(line: 67, column: 5, scope: !416)
!423 = !DILocation(line: 68, column: 1, scope: !416)
!424 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !425, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !349}
!427 = !DILocalVariable(name: "wideChar", arg: 1, scope: !424, file: !3, line: 70, type: !349)
!428 = !DILocation(line: 70, column: 29, scope: !424)
!429 = !DILocalVariable(name: "s", scope: !424, file: !3, line: 74, type: !430)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 64, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 2)
!433 = !DILocation(line: 74, column: 13, scope: !424)
!434 = !DILocation(line: 75, column: 16, scope: !424)
!435 = !DILocation(line: 75, column: 9, scope: !424)
!436 = !DILocation(line: 75, column: 14, scope: !424)
!437 = !DILocation(line: 76, column: 9, scope: !424)
!438 = !DILocation(line: 76, column: 14, scope: !424)
!439 = !DILocation(line: 77, column: 21, scope: !424)
!440 = !DILocation(line: 77, column: 5, scope: !424)
!441 = !DILocation(line: 78, column: 1, scope: !424)
!442 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !443, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !7}
!445 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !442, file: !3, line: 80, type: !7)
!446 = !DILocation(line: 80, column: 33, scope: !442)
!447 = !DILocation(line: 82, column: 20, scope: !442)
!448 = !DILocation(line: 82, column: 5, scope: !442)
!449 = !DILocation(line: 83, column: 1, scope: !442)
!450 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !451, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !25}
!453 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !450, file: !3, line: 85, type: !25)
!454 = !DILocation(line: 85, column: 45, scope: !450)
!455 = !DILocation(line: 87, column: 22, scope: !450)
!456 = !DILocation(line: 87, column: 5, scope: !450)
!457 = !DILocation(line: 88, column: 1, scope: !450)
!458 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !459, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !461}
!461 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!462 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !458, file: !3, line: 90, type: !461)
!463 = !DILocation(line: 90, column: 29, scope: !458)
!464 = !DILocation(line: 92, column: 20, scope: !458)
!465 = !DILocation(line: 92, column: 5, scope: !458)
!466 = !DILocation(line: 93, column: 1, scope: !458)
!467 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !468, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !472, line: 100, baseType: !473)
!472 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_058/source_code")
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !472, line: 96, size: 64, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !473, file: !472, line: 98, baseType: !23, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !473, file: !472, line: 99, baseType: !23, size: 32, offset: 32)
!477 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !467, file: !3, line: 95, type: !470)
!478 = !DILocation(line: 95, column: 40, scope: !467)
!479 = !DILocation(line: 97, column: 26, scope: !467)
!480 = !DILocation(line: 97, column: 47, scope: !467)
!481 = !DILocation(line: 97, column: 55, scope: !467)
!482 = !DILocation(line: 97, column: 76, scope: !467)
!483 = !DILocation(line: 97, column: 5, scope: !467)
!484 = !DILocation(line: 98, column: 1, scope: !467)
!485 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !486, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !488, !74}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!489 = !DILocalVariable(name: "bytes", arg: 1, scope: !485, file: !3, line: 100, type: !488)
!490 = !DILocation(line: 100, column: 38, scope: !485)
!491 = !DILocalVariable(name: "numBytes", arg: 2, scope: !485, file: !3, line: 100, type: !74)
!492 = !DILocation(line: 100, column: 52, scope: !485)
!493 = !DILocalVariable(name: "i", scope: !485, file: !3, line: 102, type: !74)
!494 = !DILocation(line: 102, column: 12, scope: !485)
!495 = !DILocation(line: 103, column: 12, scope: !496)
!496 = distinct !DILexicalBlock(scope: !485, file: !3, line: 103, column: 5)
!497 = !DILocation(line: 103, column: 10, scope: !496)
!498 = !DILocation(line: 103, column: 17, scope: !499)
!499 = distinct !DILexicalBlock(scope: !496, file: !3, line: 103, column: 5)
!500 = !DILocation(line: 103, column: 21, scope: !499)
!501 = !DILocation(line: 103, column: 19, scope: !499)
!502 = !DILocation(line: 103, column: 5, scope: !496)
!503 = !DILocation(line: 105, column: 24, scope: !504)
!504 = distinct !DILexicalBlock(scope: !499, file: !3, line: 104, column: 5)
!505 = !DILocation(line: 105, column: 30, scope: !504)
!506 = !DILocation(line: 105, column: 9, scope: !504)
!507 = !DILocation(line: 106, column: 5, scope: !504)
!508 = !DILocation(line: 103, column: 31, scope: !499)
!509 = !DILocation(line: 103, column: 5, scope: !499)
!510 = distinct !{!510, !502, !511, !236}
!511 = !DILocation(line: 106, column: 5, scope: !496)
!512 = !DILocation(line: 107, column: 5, scope: !485)
!513 = !DILocation(line: 108, column: 1, scope: !485)
!514 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !515, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!515 = !DISubroutineType(types: !516)
!516 = !{!74, !488, !74, !42}
!517 = !DILocalVariable(name: "bytes", arg: 1, scope: !514, file: !3, line: 113, type: !488)
!518 = !DILocation(line: 113, column: 39, scope: !514)
!519 = !DILocalVariable(name: "numBytes", arg: 2, scope: !514, file: !3, line: 113, type: !74)
!520 = !DILocation(line: 113, column: 53, scope: !514)
!521 = !DILocalVariable(name: "hex", arg: 3, scope: !514, file: !3, line: 113, type: !42)
!522 = !DILocation(line: 113, column: 71, scope: !514)
!523 = !DILocalVariable(name: "numWritten", scope: !514, file: !3, line: 115, type: !74)
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
!534 = !DILocalVariable(name: "byte", scope: !535, file: !3, line: 123, type: !23)
!535 = distinct !DILexicalBlock(scope: !514, file: !3, line: 122, column: 5)
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
!547 = distinct !{!547, !525, !548, !236}
!548 = !DILocation(line: 127, column: 5, scope: !514)
!549 = !DILocation(line: 129, column: 12, scope: !514)
!550 = !DILocation(line: 129, column: 5, scope: !514)
!551 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !552, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DISubroutineType(types: !553)
!553 = !{!74, !488, !74, !348}
!554 = !DILocalVariable(name: "bytes", arg: 1, scope: !551, file: !3, line: 135, type: !488)
!555 = !DILocation(line: 135, column: 41, scope: !551)
!556 = !DILocalVariable(name: "numBytes", arg: 2, scope: !551, file: !3, line: 135, type: !74)
!557 = !DILocation(line: 135, column: 55, scope: !551)
!558 = !DILocalVariable(name: "hex", arg: 3, scope: !551, file: !3, line: 135, type: !348)
!559 = !DILocation(line: 135, column: 76, scope: !551)
!560 = !DILocalVariable(name: "numWritten", scope: !551, file: !3, line: 137, type: !74)
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
!578 = !DILocalVariable(name: "byte", scope: !579, file: !3, line: 145, type: !23)
!579 = distinct !DILexicalBlock(scope: !551, file: !3, line: 144, column: 5)
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
!591 = distinct !{!591, !562, !592, !236}
!592 = !DILocation(line: 149, column: 5, scope: !551)
!593 = !DILocation(line: 151, column: 12, scope: !551)
!594 = !DILocation(line: 151, column: 5, scope: !551)
!595 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !596, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DISubroutineType(types: !597)
!597 = !{!23}
!598 = !DILocation(line: 158, column: 5, scope: !595)
!599 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !596, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 163, column: 5, scope: !599)
!601 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !596, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 168, column: 13, scope: !601)
!603 = !DILocation(line: 168, column: 20, scope: !601)
!604 = !DILocation(line: 168, column: 5, scope: !601)
!605 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !61, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 187, column: 16, scope: !605)
!607 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !61, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 188, column: 16, scope: !607)
!609 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !61, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 189, column: 16, scope: !609)
!611 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !61, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 190, column: 16, scope: !611)
!613 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !61, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 191, column: 16, scope: !613)
!615 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !61, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 192, column: 16, scope: !615)
!617 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !61, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 193, column: 16, scope: !617)
!619 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !61, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 194, column: 16, scope: !619)
!621 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !61, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 195, column: 16, scope: !621)
!623 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !61, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 198, column: 15, scope: !623)
!625 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !61, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 199, column: 15, scope: !625)
!627 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !61, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 200, column: 15, scope: !627)
!629 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !61, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 201, column: 15, scope: !629)
!631 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !61, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 202, column: 15, scope: !631)
!633 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !61, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 203, column: 15, scope: !633)
!635 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !61, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 204, column: 15, scope: !635)
!637 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !61, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 205, column: 15, scope: !637)
!639 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !61, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 206, column: 15, scope: !639)
