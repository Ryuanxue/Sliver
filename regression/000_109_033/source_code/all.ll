; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_08_bad() #0 !dbg !58 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
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
  br i1 %tobool, label %if.then, label %if.end6, !dbg !72

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !73, metadata !DIExpression()), !dbg !79
  %1 = load i8*, i8** %data, align 8, !dbg !80
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !81
  store i64 %call1, i64* %dataLen, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !82, metadata !DIExpression()), !dbg !83
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !84
  store i8* %call2, i8** %environment, align 8, !dbg !83
  %2 = load i8*, i8** %environment, align 8, !dbg !85
  %cmp = icmp ne i8* %2, null, !dbg !87
  br i1 %cmp, label %if.then3, label %if.end, !dbg !88

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !89
  %4 = load i64, i64* %dataLen, align 8, !dbg !91
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !92
  %5 = load i8*, i8** %environment, align 8, !dbg !93
  %6 = load i64, i64* %dataLen, align 8, !dbg !94
  %sub = sub i64 100, %6, !dbg !95
  %sub4 = sub i64 %sub, 1, !dbg !96
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #8, !dbg !97
  br label %if.end, !dbg !98

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !99

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 @staticReturnsTrue(), !dbg !100
  %tobool8 = icmp ne i32 %call7, 0, !dbg !100
  br i1 %tobool8, label %if.then9, label %if.end16, !dbg !102

if.then9:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !103, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i32* %n, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !109, metadata !DIExpression()), !dbg !110
  %7 = load i8*, i8** %data, align 8, !dbg !111
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !113
  %cmp11 = icmp eq i32 %call10, 1, !dbg !114
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !115

if.then12:                                        ; preds = %if.then9
  store i32 0, i32* %intVariable, align 4, !dbg !116
  store i32 0, i32* %i, align 4, !dbg !118
  br label %for.cond, !dbg !120

for.cond:                                         ; preds = %for.inc, %if.then12
  %8 = load i32, i32* %i, align 4, !dbg !121
  %9 = load i32, i32* %n, align 4, !dbg !123
  %cmp13 = icmp slt i32 %8, %9, !dbg !124
  br i1 %cmp13, label %for.body, label %for.end, !dbg !125

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %intVariable, align 4, !dbg !126
  %inc = add nsw i32 %10, 1, !dbg !126
  store i32 %inc, i32* %intVariable, align 4, !dbg !126
  br label %for.inc, !dbg !128

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !129
  %inc14 = add nsw i32 %11, 1, !dbg !129
  store i32 %inc14, i32* %i, align 4, !dbg !129
  br label %for.cond, !dbg !130, !llvm.loop !131

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !134
  call void @printIntLine(i32 %12), !dbg !135
  br label %if.end15, !dbg !136

if.end15:                                         ; preds = %for.end, %if.then9
  br label %if.end16, !dbg !137

if.end16:                                         ; preds = %if.end15, %if.end6
  ret void, !dbg !138
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

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !139 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !143
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !143
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !144
  store i8* %arraydecay, i8** %data, align 8, !dbg !145
  %call = call i32 @staticReturnsTrue(), !dbg !146
  %tobool = icmp ne i32 %call, 0, !dbg !146
  br i1 %tobool, label %if.then, label %if.end6, !dbg !148

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !149, metadata !DIExpression()), !dbg !152
  %1 = load i8*, i8** %data, align 8, !dbg !153
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !154
  store i64 %call1, i64* %dataLen, align 8, !dbg !152
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !155, metadata !DIExpression()), !dbg !156
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !157
  store i8* %call2, i8** %environment, align 8, !dbg !156
  %2 = load i8*, i8** %environment, align 8, !dbg !158
  %cmp = icmp ne i8* %2, null, !dbg !160
  br i1 %cmp, label %if.then3, label %if.end, !dbg !161

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !162
  %4 = load i64, i64* %dataLen, align 8, !dbg !164
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !165
  %5 = load i8*, i8** %environment, align 8, !dbg !166
  %6 = load i64, i64* %dataLen, align 8, !dbg !167
  %sub = sub i64 100, %6, !dbg !168
  %sub4 = sub i64 %sub, 1, !dbg !169
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #8, !dbg !170
  br label %if.end, !dbg !171

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !172

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 @staticReturnsFalse(), !dbg !173
  %tobool8 = icmp ne i32 %call7, 0, !dbg !173
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !175

if.then9:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !176
  br label %if.end19, !dbg !178

if.else:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !179, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %n, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !185, metadata !DIExpression()), !dbg !186
  %7 = load i8*, i8** %data, align 8, !dbg !187
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !189
  %cmp11 = icmp eq i32 %call10, 1, !dbg !190
  br i1 %cmp11, label %if.then12, label %if.end18, !dbg !191

if.then12:                                        ; preds = %if.else
  %8 = load i32, i32* %n, align 4, !dbg !192
  %cmp13 = icmp slt i32 %8, 10000, !dbg !195
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !196

if.then14:                                        ; preds = %if.then12
  store i32 0, i32* %intVariable, align 4, !dbg !197
  store i32 0, i32* %i, align 4, !dbg !199
  br label %for.cond, !dbg !201

for.cond:                                         ; preds = %for.inc, %if.then14
  %9 = load i32, i32* %i, align 4, !dbg !202
  %10 = load i32, i32* %n, align 4, !dbg !204
  %cmp15 = icmp slt i32 %9, %10, !dbg !205
  br i1 %cmp15, label %for.body, label %for.end, !dbg !206

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !207
  %inc = add nsw i32 %11, 1, !dbg !207
  store i32 %inc, i32* %intVariable, align 4, !dbg !207
  br label %for.inc, !dbg !209

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !210
  %inc16 = add nsw i32 %12, 1, !dbg !210
  store i32 %inc16, i32* %i, align 4, !dbg !210
  br label %for.cond, !dbg !211, !llvm.loop !212

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !214
  call void @printIntLine(i32 %13), !dbg !215
  br label %if.end17, !dbg !216

if.end17:                                         ; preds = %for.end, %if.then12
  br label %if.end18, !dbg !217

if.end18:                                         ; preds = %if.end17, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then9
  ret void, !dbg !218
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !219 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !222, metadata !DIExpression()), !dbg !223
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !223
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !223
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !224
  store i8* %arraydecay, i8** %data, align 8, !dbg !225
  %call = call i32 @staticReturnsTrue(), !dbg !226
  %tobool = icmp ne i32 %call, 0, !dbg !226
  br i1 %tobool, label %if.then, label %if.end6, !dbg !228

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !229, metadata !DIExpression()), !dbg !232
  %1 = load i8*, i8** %data, align 8, !dbg !233
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !234
  store i64 %call1, i64* %dataLen, align 8, !dbg !232
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !235, metadata !DIExpression()), !dbg !236
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !237
  store i8* %call2, i8** %environment, align 8, !dbg !236
  %2 = load i8*, i8** %environment, align 8, !dbg !238
  %cmp = icmp ne i8* %2, null, !dbg !240
  br i1 %cmp, label %if.then3, label %if.end, !dbg !241

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !242
  %4 = load i64, i64* %dataLen, align 8, !dbg !244
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !245
  %5 = load i8*, i8** %environment, align 8, !dbg !246
  %6 = load i64, i64* %dataLen, align 8, !dbg !247
  %sub = sub i64 100, %6, !dbg !248
  %sub4 = sub i64 %sub, 1, !dbg !249
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #8, !dbg !250
  br label %if.end, !dbg !251

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !252

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 @staticReturnsTrue(), !dbg !253
  %tobool8 = icmp ne i32 %call7, 0, !dbg !253
  br i1 %tobool8, label %if.then9, label %if.end19, !dbg !255

if.then9:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !256, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i32* %n, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !262, metadata !DIExpression()), !dbg !263
  %7 = load i8*, i8** %data, align 8, !dbg !264
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !266
  %cmp11 = icmp eq i32 %call10, 1, !dbg !267
  br i1 %cmp11, label %if.then12, label %if.end18, !dbg !268

if.then12:                                        ; preds = %if.then9
  %8 = load i32, i32* %n, align 4, !dbg !269
  %cmp13 = icmp slt i32 %8, 10000, !dbg !272
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !273

if.then14:                                        ; preds = %if.then12
  store i32 0, i32* %intVariable, align 4, !dbg !274
  store i32 0, i32* %i, align 4, !dbg !276
  br label %for.cond, !dbg !278

for.cond:                                         ; preds = %for.inc, %if.then14
  %9 = load i32, i32* %i, align 4, !dbg !279
  %10 = load i32, i32* %n, align 4, !dbg !281
  %cmp15 = icmp slt i32 %9, %10, !dbg !282
  br i1 %cmp15, label %for.body, label %for.end, !dbg !283

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !284
  %inc = add nsw i32 %11, 1, !dbg !284
  store i32 %inc, i32* %intVariable, align 4, !dbg !284
  br label %for.inc, !dbg !286

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !287
  %inc16 = add nsw i32 %12, 1, !dbg !287
  store i32 %inc16, i32* %i, align 4, !dbg !287
  br label %for.cond, !dbg !288, !llvm.loop !289

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !291
  call void @printIntLine(i32 %13), !dbg !292
  br label %if.end17, !dbg !293

if.end17:                                         ; preds = %for.end, %if.then12
  br label %if.end18, !dbg !294

if.end18:                                         ; preds = %if.end17, %if.then9
  br label %if.end19, !dbg !295

if.end19:                                         ; preds = %if.end18, %if.end6
  ret void, !dbg !296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !297 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !301
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !301
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !302
  store i8* %arraydecay, i8** %data, align 8, !dbg !303
  %call = call i32 @staticReturnsFalse(), !dbg !304
  %tobool = icmp ne i32 %call, 0, !dbg !304
  br i1 %tobool, label %if.then, label %if.else, !dbg !306

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !307
  br label %if.end, !dbg !309

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !310
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !312
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @staticReturnsTrue(), !dbg !313
  %tobool3 = icmp ne i32 %call2, 0, !dbg !313
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !315

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !316, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.declare(metadata i32* %n, metadata !320, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !322, metadata !DIExpression()), !dbg !323
  %2 = load i8*, i8** %data, align 8, !dbg !324
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !326
  %cmp = icmp eq i32 %call5, 1, !dbg !327
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !328

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !329
  store i32 0, i32* %i, align 4, !dbg !331
  br label %for.cond, !dbg !333

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !334
  %4 = load i32, i32* %n, align 4, !dbg !336
  %cmp7 = icmp slt i32 %3, %4, !dbg !337
  br i1 %cmp7, label %for.body, label %for.end, !dbg !338

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !339
  %inc = add nsw i32 %5, 1, !dbg !339
  store i32 %inc, i32* %intVariable, align 4, !dbg !339
  br label %for.inc, !dbg !341

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !342
  %inc8 = add nsw i32 %6, 1, !dbg !342
  store i32 %inc8, i32* %i, align 4, !dbg !342
  br label %for.cond, !dbg !343, !llvm.loop !344

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !346
  call void @printIntLine(i32 %7), !dbg !347
  br label %if.end9, !dbg !348

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !349

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !350
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !351 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !352, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !354, metadata !DIExpression()), !dbg !355
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !355
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !355
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !356
  store i8* %arraydecay, i8** %data, align 8, !dbg !357
  %call = call i32 @staticReturnsTrue(), !dbg !358
  %tobool = icmp ne i32 %call, 0, !dbg !358
  br i1 %tobool, label %if.then, label %if.end, !dbg !360

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !361
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !363
  br label %if.end, !dbg !364

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @staticReturnsTrue(), !dbg !365
  %tobool3 = icmp ne i32 %call2, 0, !dbg !365
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !367

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !368, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata i32* %n, metadata !372, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !374, metadata !DIExpression()), !dbg !375
  %2 = load i8*, i8** %data, align 8, !dbg !376
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !378
  %cmp = icmp eq i32 %call5, 1, !dbg !379
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !380

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !381
  store i32 0, i32* %i, align 4, !dbg !383
  br label %for.cond, !dbg !385

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !386
  %4 = load i32, i32* %n, align 4, !dbg !388
  %cmp7 = icmp slt i32 %3, %4, !dbg !389
  br i1 %cmp7, label %for.body, label %for.end, !dbg !390

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !391
  %inc = add nsw i32 %5, 1, !dbg !391
  store i32 %inc, i32* %intVariable, align 4, !dbg !391
  br label %for.inc, !dbg !393

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !394
  %inc8 = add nsw i32 %6, 1, !dbg !394
  store i32 %inc8, i32* %i, align 4, !dbg !394
  br label %for.cond, !dbg !395, !llvm.loop !396

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !398
  call void @printIntLine(i32 %7), !dbg !399
  br label %if.end9, !dbg !400

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !401

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_08_good() #0 !dbg !403 {
entry:
  call void @goodB2G1(), !dbg !404
  call void @goodB2G2(), !dbg !405
  call void @goodG2B1(), !dbg !406
  call void @goodG2B2(), !dbg !407
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !409 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !414
  %0 = load i8*, i8** %line.addr, align 8, !dbg !415
  %cmp = icmp ne i8* %0, null, !dbg !417
  br i1 %cmp, label %if.then, label %if.end, !dbg !418

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !419
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !421
  br label %if.end, !dbg !422

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !423
  ret void, !dbg !424
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !425 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = load i8*, i8** %line.addr, align 8, !dbg !428
  %cmp = icmp ne i8* %0, null, !dbg !430
  br i1 %cmp, label %if.then, label %if.end, !dbg !431

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !434
  br label %if.end, !dbg !435

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !437 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load i32*, i32** %line.addr, align 8, !dbg !444
  %cmp = icmp ne i32* %0, null, !dbg !446
  br i1 %cmp, label %if.then, label %if.end, !dbg !447

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !448
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !450
  br label %if.end, !dbg !451

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !452
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !453 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !456, metadata !DIExpression()), !dbg !457
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !458
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !459
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !461 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !467
  %conv = sext i16 %0 to i32, !dbg !467
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !468
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !470 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !474, metadata !DIExpression()), !dbg !475
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !476
  %conv = fpext float %0 to double, !dbg !476
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !477
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !479 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !483, metadata !DIExpression()), !dbg !484
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !485
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !486
  ret void, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !488 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !495, metadata !DIExpression()), !dbg !496
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !497
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !498
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !500 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !503, metadata !DIExpression()), !dbg !504
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !505
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !506
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !508 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !511, metadata !DIExpression()), !dbg !512
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !513
  %conv = sext i8 %0 to i32, !dbg !513
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !514
  ret void, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !516 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !519, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !521, metadata !DIExpression()), !dbg !525
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !526
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !527
  store i32 %0, i32* %arrayidx, align 4, !dbg !528
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !529
  store i32 0, i32* %arrayidx1, align 4, !dbg !530
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !531
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !532
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !534 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !537, metadata !DIExpression()), !dbg !538
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !539
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !540
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !542 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !545, metadata !DIExpression()), !dbg !546
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !547
  %conv = zext i8 %0 to i32, !dbg !547
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !548
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !550 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !556
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !557
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !559 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !569, metadata !DIExpression()), !dbg !570
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !571
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !572
  %1 = load i32, i32* %intOne, align 4, !dbg !572
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !573
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !574
  %3 = load i32, i32* %intTwo, align 4, !dbg !574
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !575
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !577 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !581, metadata !DIExpression()), !dbg !582
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !583, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.declare(metadata i64* %i, metadata !585, metadata !DIExpression()), !dbg !586
  store i64 0, i64* %i, align 8, !dbg !587
  br label %for.cond, !dbg !589

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !590
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !592
  %cmp = icmp ult i64 %0, %1, !dbg !593
  br i1 %cmp, label %for.body, label %for.end, !dbg !594

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !595
  %3 = load i64, i64* %i, align 8, !dbg !597
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !595
  %4 = load i8, i8* %arrayidx, align 1, !dbg !595
  %conv = zext i8 %4 to i32, !dbg !595
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !598
  br label %for.inc, !dbg !599

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !600
  %inc = add i64 %5, 1, !dbg !600
  store i64 %inc, i64* %i, align 8, !dbg !600
  br label %for.cond, !dbg !601, !llvm.loop !602

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !604
  ret void, !dbg !605
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !606 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !609, metadata !DIExpression()), !dbg !610
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !611, metadata !DIExpression()), !dbg !612
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !613, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !615, metadata !DIExpression()), !dbg !616
  store i64 0, i64* %numWritten, align 8, !dbg !616
  br label %while.cond, !dbg !617

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !618
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !619
  %cmp = icmp ult i64 %0, %1, !dbg !620
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !621

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !622
  %2 = load i16*, i16** %call, align 8, !dbg !622
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !622
  %4 = load i64, i64* %numWritten, align 8, !dbg !622
  %mul = mul i64 2, %4, !dbg !622
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !622
  %5 = load i8, i8* %arrayidx, align 1, !dbg !622
  %conv = sext i8 %5 to i32, !dbg !622
  %idxprom = sext i32 %conv to i64, !dbg !622
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !622
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !622
  %conv2 = zext i16 %6 to i32, !dbg !622
  %and = and i32 %conv2, 4096, !dbg !622
  %tobool = icmp ne i32 %and, 0, !dbg !622
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !623

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !624
  %7 = load i16*, i16** %call3, align 8, !dbg !624
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !624
  %9 = load i64, i64* %numWritten, align 8, !dbg !624
  %mul4 = mul i64 2, %9, !dbg !624
  %add = add i64 %mul4, 1, !dbg !624
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !624
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !624
  %conv6 = sext i8 %10 to i32, !dbg !624
  %idxprom7 = sext i32 %conv6 to i64, !dbg !624
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !624
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !624
  %conv9 = zext i16 %11 to i32, !dbg !624
  %and10 = and i32 %conv9, 4096, !dbg !624
  %tobool11 = icmp ne i32 %and10, 0, !dbg !623
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !625
  br i1 %12, label %while.body, label %while.end, !dbg !617

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !626, metadata !DIExpression()), !dbg !628
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !629
  %14 = load i64, i64* %numWritten, align 8, !dbg !630
  %mul12 = mul i64 2, %14, !dbg !631
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !629
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !632
  %15 = load i32, i32* %byte, align 4, !dbg !633
  %conv15 = trunc i32 %15 to i8, !dbg !634
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !635
  %17 = load i64, i64* %numWritten, align 8, !dbg !636
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !635
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !637
  %18 = load i64, i64* %numWritten, align 8, !dbg !638
  %inc = add i64 %18, 1, !dbg !638
  store i64 %inc, i64* %numWritten, align 8, !dbg !638
  br label %while.cond, !dbg !617, !llvm.loop !639

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !641
  ret i64 %19, !dbg !642
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !643 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !646, metadata !DIExpression()), !dbg !647
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !648, metadata !DIExpression()), !dbg !649
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !650, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !652, metadata !DIExpression()), !dbg !653
  store i64 0, i64* %numWritten, align 8, !dbg !653
  br label %while.cond, !dbg !654

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !655
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !656
  %cmp = icmp ult i64 %0, %1, !dbg !657
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !658

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !659
  %3 = load i64, i64* %numWritten, align 8, !dbg !660
  %mul = mul i64 2, %3, !dbg !661
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !659
  %4 = load i32, i32* %arrayidx, align 4, !dbg !659
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !662
  %tobool = icmp ne i32 %call, 0, !dbg !662
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !663

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !664
  %6 = load i64, i64* %numWritten, align 8, !dbg !665
  %mul1 = mul i64 2, %6, !dbg !666
  %add = add i64 %mul1, 1, !dbg !667
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !664
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !664
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !668
  %tobool4 = icmp ne i32 %call3, 0, !dbg !663
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !669
  br i1 %8, label %while.body, label %while.end, !dbg !654

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !670, metadata !DIExpression()), !dbg !672
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !673
  %10 = load i64, i64* %numWritten, align 8, !dbg !674
  %mul5 = mul i64 2, %10, !dbg !675
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !673
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !676
  %11 = load i32, i32* %byte, align 4, !dbg !677
  %conv = trunc i32 %11 to i8, !dbg !678
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !679
  %13 = load i64, i64* %numWritten, align 8, !dbg !680
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !679
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !681
  %14 = load i64, i64* %numWritten, align 8, !dbg !682
  %inc = add i64 %14, 1, !dbg !682
  store i64 %inc, i64* %numWritten, align 8, !dbg !682
  br label %while.cond, !dbg !654, !llvm.loop !683

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !685
  ret i64 %15, !dbg !686
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !687 {
entry:
  ret i32 1, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !689 {
entry:
  ret i32 0, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !691 {
entry:
  %call = call i32 @rand() #8, !dbg !692
  %rem = srem i32 %call, 2, !dbg !693
  ret i32 %rem, !dbg !694
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !695 {
entry:
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !697 {
entry:
  ret void, !dbg !698
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !699 {
entry:
  ret void, !dbg !700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !701 {
entry:
  ret void, !dbg !702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !703 {
entry:
  ret void, !dbg !704
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !705 {
entry:
  ret void, !dbg !706
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !707 {
entry:
  ret void, !dbg !708
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !709 {
entry:
  ret void, !dbg !710
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !711 {
entry:
  ret void, !dbg !712
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !713 {
entry:
  ret void, !dbg !714
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !715 {
entry:
  ret void, !dbg !716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !717 {
entry:
  ret void, !dbg !718
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !719 {
entry:
  ret void, !dbg !720
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !721 {
entry:
  ret void, !dbg !722
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !723 {
entry:
  ret void, !dbg !724
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !725 {
entry:
  ret void, !dbg !726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !727 {
entry:
  ret void, !dbg !728
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !729 {
entry:
  ret void, !dbg !730
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

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_033/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_033/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !45, file: !45, line: 38, type: !53, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{!23}
!55 = !DILocation(line: 40, column: 5, scope: !52)
!56 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !45, file: !45, line: 43, type: !53, scopeLine: 44, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!57 = !DILocation(line: 45, column: 5, scope: !56)
!58 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_08_bad", scope: !45, file: !45, line: 50, type: !59, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocalVariable(name: "data", scope: !58, file: !45, line: 52, type: !42)
!62 = !DILocation(line: 52, column: 12, scope: !58)
!63 = !DILocalVariable(name: "dataBuffer", scope: !58, file: !45, line: 53, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 100)
!67 = !DILocation(line: 53, column: 10, scope: !58)
!68 = !DILocation(line: 54, column: 12, scope: !58)
!69 = !DILocation(line: 54, column: 10, scope: !58)
!70 = !DILocation(line: 55, column: 8, scope: !71)
!71 = distinct !DILexicalBlock(scope: !58, file: !45, line: 55, column: 8)
!72 = !DILocation(line: 55, column: 8, scope: !58)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 59, type: !76)
!74 = distinct !DILexicalBlock(scope: !75, file: !45, line: 57, column: 9)
!75 = distinct !DILexicalBlock(scope: !71, file: !45, line: 56, column: 5)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 46, baseType: !78)
!77 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !DILocation(line: 59, column: 20, scope: !74)
!80 = !DILocation(line: 59, column: 37, scope: !74)
!81 = !DILocation(line: 59, column: 30, scope: !74)
!82 = !DILocalVariable(name: "environment", scope: !74, file: !45, line: 60, type: !42)
!83 = !DILocation(line: 60, column: 20, scope: !74)
!84 = !DILocation(line: 60, column: 34, scope: !74)
!85 = !DILocation(line: 62, column: 17, scope: !86)
!86 = distinct !DILexicalBlock(scope: !74, file: !45, line: 62, column: 17)
!87 = !DILocation(line: 62, column: 29, scope: !86)
!88 = !DILocation(line: 62, column: 17, scope: !74)
!89 = !DILocation(line: 65, column: 25, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !45, line: 63, column: 13)
!91 = !DILocation(line: 65, column: 30, scope: !90)
!92 = !DILocation(line: 65, column: 29, scope: !90)
!93 = !DILocation(line: 65, column: 39, scope: !90)
!94 = !DILocation(line: 65, column: 56, scope: !90)
!95 = !DILocation(line: 65, column: 55, scope: !90)
!96 = !DILocation(line: 65, column: 63, scope: !90)
!97 = !DILocation(line: 65, column: 17, scope: !90)
!98 = !DILocation(line: 66, column: 13, scope: !90)
!99 = !DILocation(line: 68, column: 5, scope: !75)
!100 = !DILocation(line: 69, column: 8, scope: !101)
!101 = distinct !DILexicalBlock(scope: !58, file: !45, line: 69, column: 8)
!102 = !DILocation(line: 69, column: 8, scope: !58)
!103 = !DILocalVariable(name: "i", scope: !104, file: !45, line: 72, type: !23)
!104 = distinct !DILexicalBlock(scope: !105, file: !45, line: 71, column: 9)
!105 = distinct !DILexicalBlock(scope: !101, file: !45, line: 70, column: 5)
!106 = !DILocation(line: 72, column: 17, scope: !104)
!107 = !DILocalVariable(name: "n", scope: !104, file: !45, line: 72, type: !23)
!108 = !DILocation(line: 72, column: 20, scope: !104)
!109 = !DILocalVariable(name: "intVariable", scope: !104, file: !45, line: 72, type: !23)
!110 = !DILocation(line: 72, column: 23, scope: !104)
!111 = !DILocation(line: 73, column: 24, scope: !112)
!112 = distinct !DILexicalBlock(scope: !104, file: !45, line: 73, column: 17)
!113 = !DILocation(line: 73, column: 17, scope: !112)
!114 = !DILocation(line: 73, column: 40, scope: !112)
!115 = !DILocation(line: 73, column: 17, scope: !104)
!116 = !DILocation(line: 76, column: 29, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !45, line: 74, column: 13)
!118 = !DILocation(line: 77, column: 24, scope: !119)
!119 = distinct !DILexicalBlock(scope: !117, file: !45, line: 77, column: 17)
!120 = !DILocation(line: 77, column: 22, scope: !119)
!121 = !DILocation(line: 77, column: 29, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !45, line: 77, column: 17)
!123 = !DILocation(line: 77, column: 33, scope: !122)
!124 = !DILocation(line: 77, column: 31, scope: !122)
!125 = !DILocation(line: 77, column: 17, scope: !119)
!126 = !DILocation(line: 80, column: 32, scope: !127)
!127 = distinct !DILexicalBlock(scope: !122, file: !45, line: 78, column: 17)
!128 = !DILocation(line: 81, column: 17, scope: !127)
!129 = !DILocation(line: 77, column: 37, scope: !122)
!130 = !DILocation(line: 77, column: 17, scope: !122)
!131 = distinct !{!131, !125, !132, !133}
!132 = !DILocation(line: 81, column: 17, scope: !119)
!133 = !{!"llvm.loop.mustprogress"}
!134 = !DILocation(line: 82, column: 30, scope: !117)
!135 = !DILocation(line: 82, column: 17, scope: !117)
!136 = !DILocation(line: 83, column: 13, scope: !117)
!137 = !DILocation(line: 85, column: 5, scope: !105)
!138 = !DILocation(line: 86, column: 1, scope: !58)
!139 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 93, type: !59, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!140 = !DILocalVariable(name: "data", scope: !139, file: !45, line: 95, type: !42)
!141 = !DILocation(line: 95, column: 12, scope: !139)
!142 = !DILocalVariable(name: "dataBuffer", scope: !139, file: !45, line: 96, type: !64)
!143 = !DILocation(line: 96, column: 10, scope: !139)
!144 = !DILocation(line: 97, column: 12, scope: !139)
!145 = !DILocation(line: 97, column: 10, scope: !139)
!146 = !DILocation(line: 98, column: 8, scope: !147)
!147 = distinct !DILexicalBlock(scope: !139, file: !45, line: 98, column: 8)
!148 = !DILocation(line: 98, column: 8, scope: !139)
!149 = !DILocalVariable(name: "dataLen", scope: !150, file: !45, line: 102, type: !76)
!150 = distinct !DILexicalBlock(scope: !151, file: !45, line: 100, column: 9)
!151 = distinct !DILexicalBlock(scope: !147, file: !45, line: 99, column: 5)
!152 = !DILocation(line: 102, column: 20, scope: !150)
!153 = !DILocation(line: 102, column: 37, scope: !150)
!154 = !DILocation(line: 102, column: 30, scope: !150)
!155 = !DILocalVariable(name: "environment", scope: !150, file: !45, line: 103, type: !42)
!156 = !DILocation(line: 103, column: 20, scope: !150)
!157 = !DILocation(line: 103, column: 34, scope: !150)
!158 = !DILocation(line: 105, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !150, file: !45, line: 105, column: 17)
!160 = !DILocation(line: 105, column: 29, scope: !159)
!161 = !DILocation(line: 105, column: 17, scope: !150)
!162 = !DILocation(line: 108, column: 25, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !45, line: 106, column: 13)
!164 = !DILocation(line: 108, column: 30, scope: !163)
!165 = !DILocation(line: 108, column: 29, scope: !163)
!166 = !DILocation(line: 108, column: 39, scope: !163)
!167 = !DILocation(line: 108, column: 56, scope: !163)
!168 = !DILocation(line: 108, column: 55, scope: !163)
!169 = !DILocation(line: 108, column: 63, scope: !163)
!170 = !DILocation(line: 108, column: 17, scope: !163)
!171 = !DILocation(line: 109, column: 13, scope: !163)
!172 = !DILocation(line: 111, column: 5, scope: !151)
!173 = !DILocation(line: 112, column: 8, scope: !174)
!174 = distinct !DILexicalBlock(scope: !139, file: !45, line: 112, column: 8)
!175 = !DILocation(line: 112, column: 8, scope: !139)
!176 = !DILocation(line: 115, column: 9, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !45, line: 113, column: 5)
!178 = !DILocation(line: 116, column: 5, scope: !177)
!179 = !DILocalVariable(name: "i", scope: !180, file: !45, line: 120, type: !23)
!180 = distinct !DILexicalBlock(scope: !181, file: !45, line: 119, column: 9)
!181 = distinct !DILexicalBlock(scope: !174, file: !45, line: 118, column: 5)
!182 = !DILocation(line: 120, column: 17, scope: !180)
!183 = !DILocalVariable(name: "n", scope: !180, file: !45, line: 120, type: !23)
!184 = !DILocation(line: 120, column: 20, scope: !180)
!185 = !DILocalVariable(name: "intVariable", scope: !180, file: !45, line: 120, type: !23)
!186 = !DILocation(line: 120, column: 23, scope: !180)
!187 = !DILocation(line: 121, column: 24, scope: !188)
!188 = distinct !DILexicalBlock(scope: !180, file: !45, line: 121, column: 17)
!189 = !DILocation(line: 121, column: 17, scope: !188)
!190 = !DILocation(line: 121, column: 40, scope: !188)
!191 = !DILocation(line: 121, column: 17, scope: !180)
!192 = !DILocation(line: 124, column: 21, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !45, line: 124, column: 21)
!194 = distinct !DILexicalBlock(scope: !188, file: !45, line: 122, column: 13)
!195 = !DILocation(line: 124, column: 23, scope: !193)
!196 = !DILocation(line: 124, column: 21, scope: !194)
!197 = !DILocation(line: 126, column: 33, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !45, line: 125, column: 17)
!199 = !DILocation(line: 127, column: 28, scope: !200)
!200 = distinct !DILexicalBlock(scope: !198, file: !45, line: 127, column: 21)
!201 = !DILocation(line: 127, column: 26, scope: !200)
!202 = !DILocation(line: 127, column: 33, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !45, line: 127, column: 21)
!204 = !DILocation(line: 127, column: 37, scope: !203)
!205 = !DILocation(line: 127, column: 35, scope: !203)
!206 = !DILocation(line: 127, column: 21, scope: !200)
!207 = !DILocation(line: 130, column: 36, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !45, line: 128, column: 21)
!209 = !DILocation(line: 131, column: 21, scope: !208)
!210 = !DILocation(line: 127, column: 41, scope: !203)
!211 = !DILocation(line: 127, column: 21, scope: !203)
!212 = distinct !{!212, !206, !213, !133}
!213 = !DILocation(line: 131, column: 21, scope: !200)
!214 = !DILocation(line: 132, column: 34, scope: !198)
!215 = !DILocation(line: 132, column: 21, scope: !198)
!216 = !DILocation(line: 133, column: 17, scope: !198)
!217 = !DILocation(line: 134, column: 13, scope: !194)
!218 = !DILocation(line: 137, column: 1, scope: !139)
!219 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 140, type: !59, scopeLine: 141, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!220 = !DILocalVariable(name: "data", scope: !219, file: !45, line: 142, type: !42)
!221 = !DILocation(line: 142, column: 12, scope: !219)
!222 = !DILocalVariable(name: "dataBuffer", scope: !219, file: !45, line: 143, type: !64)
!223 = !DILocation(line: 143, column: 10, scope: !219)
!224 = !DILocation(line: 144, column: 12, scope: !219)
!225 = !DILocation(line: 144, column: 10, scope: !219)
!226 = !DILocation(line: 145, column: 8, scope: !227)
!227 = distinct !DILexicalBlock(scope: !219, file: !45, line: 145, column: 8)
!228 = !DILocation(line: 145, column: 8, scope: !219)
!229 = !DILocalVariable(name: "dataLen", scope: !230, file: !45, line: 149, type: !76)
!230 = distinct !DILexicalBlock(scope: !231, file: !45, line: 147, column: 9)
!231 = distinct !DILexicalBlock(scope: !227, file: !45, line: 146, column: 5)
!232 = !DILocation(line: 149, column: 20, scope: !230)
!233 = !DILocation(line: 149, column: 37, scope: !230)
!234 = !DILocation(line: 149, column: 30, scope: !230)
!235 = !DILocalVariable(name: "environment", scope: !230, file: !45, line: 150, type: !42)
!236 = !DILocation(line: 150, column: 20, scope: !230)
!237 = !DILocation(line: 150, column: 34, scope: !230)
!238 = !DILocation(line: 152, column: 17, scope: !239)
!239 = distinct !DILexicalBlock(scope: !230, file: !45, line: 152, column: 17)
!240 = !DILocation(line: 152, column: 29, scope: !239)
!241 = !DILocation(line: 152, column: 17, scope: !230)
!242 = !DILocation(line: 155, column: 25, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !45, line: 153, column: 13)
!244 = !DILocation(line: 155, column: 30, scope: !243)
!245 = !DILocation(line: 155, column: 29, scope: !243)
!246 = !DILocation(line: 155, column: 39, scope: !243)
!247 = !DILocation(line: 155, column: 56, scope: !243)
!248 = !DILocation(line: 155, column: 55, scope: !243)
!249 = !DILocation(line: 155, column: 63, scope: !243)
!250 = !DILocation(line: 155, column: 17, scope: !243)
!251 = !DILocation(line: 156, column: 13, scope: !243)
!252 = !DILocation(line: 158, column: 5, scope: !231)
!253 = !DILocation(line: 159, column: 8, scope: !254)
!254 = distinct !DILexicalBlock(scope: !219, file: !45, line: 159, column: 8)
!255 = !DILocation(line: 159, column: 8, scope: !219)
!256 = !DILocalVariable(name: "i", scope: !257, file: !45, line: 162, type: !23)
!257 = distinct !DILexicalBlock(scope: !258, file: !45, line: 161, column: 9)
!258 = distinct !DILexicalBlock(scope: !254, file: !45, line: 160, column: 5)
!259 = !DILocation(line: 162, column: 17, scope: !257)
!260 = !DILocalVariable(name: "n", scope: !257, file: !45, line: 162, type: !23)
!261 = !DILocation(line: 162, column: 20, scope: !257)
!262 = !DILocalVariable(name: "intVariable", scope: !257, file: !45, line: 162, type: !23)
!263 = !DILocation(line: 162, column: 23, scope: !257)
!264 = !DILocation(line: 163, column: 24, scope: !265)
!265 = distinct !DILexicalBlock(scope: !257, file: !45, line: 163, column: 17)
!266 = !DILocation(line: 163, column: 17, scope: !265)
!267 = !DILocation(line: 163, column: 40, scope: !265)
!268 = !DILocation(line: 163, column: 17, scope: !257)
!269 = !DILocation(line: 166, column: 21, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !45, line: 166, column: 21)
!271 = distinct !DILexicalBlock(scope: !265, file: !45, line: 164, column: 13)
!272 = !DILocation(line: 166, column: 23, scope: !270)
!273 = !DILocation(line: 166, column: 21, scope: !271)
!274 = !DILocation(line: 168, column: 33, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !45, line: 167, column: 17)
!276 = !DILocation(line: 169, column: 28, scope: !277)
!277 = distinct !DILexicalBlock(scope: !275, file: !45, line: 169, column: 21)
!278 = !DILocation(line: 169, column: 26, scope: !277)
!279 = !DILocation(line: 169, column: 33, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !45, line: 169, column: 21)
!281 = !DILocation(line: 169, column: 37, scope: !280)
!282 = !DILocation(line: 169, column: 35, scope: !280)
!283 = !DILocation(line: 169, column: 21, scope: !277)
!284 = !DILocation(line: 172, column: 36, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !45, line: 170, column: 21)
!286 = !DILocation(line: 173, column: 21, scope: !285)
!287 = !DILocation(line: 169, column: 41, scope: !280)
!288 = !DILocation(line: 169, column: 21, scope: !280)
!289 = distinct !{!289, !283, !290, !133}
!290 = !DILocation(line: 173, column: 21, scope: !277)
!291 = !DILocation(line: 174, column: 34, scope: !275)
!292 = !DILocation(line: 174, column: 21, scope: !275)
!293 = !DILocation(line: 175, column: 17, scope: !275)
!294 = !DILocation(line: 176, column: 13, scope: !271)
!295 = !DILocation(line: 178, column: 5, scope: !258)
!296 = !DILocation(line: 179, column: 1, scope: !219)
!297 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 182, type: !59, scopeLine: 183, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!298 = !DILocalVariable(name: "data", scope: !297, file: !45, line: 184, type: !42)
!299 = !DILocation(line: 184, column: 12, scope: !297)
!300 = !DILocalVariable(name: "dataBuffer", scope: !297, file: !45, line: 185, type: !64)
!301 = !DILocation(line: 185, column: 10, scope: !297)
!302 = !DILocation(line: 186, column: 12, scope: !297)
!303 = !DILocation(line: 186, column: 10, scope: !297)
!304 = !DILocation(line: 187, column: 8, scope: !305)
!305 = distinct !DILexicalBlock(scope: !297, file: !45, line: 187, column: 8)
!306 = !DILocation(line: 187, column: 8, scope: !297)
!307 = !DILocation(line: 190, column: 9, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !45, line: 188, column: 5)
!309 = !DILocation(line: 191, column: 5, scope: !308)
!310 = !DILocation(line: 195, column: 16, scope: !311)
!311 = distinct !DILexicalBlock(scope: !305, file: !45, line: 193, column: 5)
!312 = !DILocation(line: 195, column: 9, scope: !311)
!313 = !DILocation(line: 197, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !297, file: !45, line: 197, column: 8)
!315 = !DILocation(line: 197, column: 8, scope: !297)
!316 = !DILocalVariable(name: "i", scope: !317, file: !45, line: 200, type: !23)
!317 = distinct !DILexicalBlock(scope: !318, file: !45, line: 199, column: 9)
!318 = distinct !DILexicalBlock(scope: !314, file: !45, line: 198, column: 5)
!319 = !DILocation(line: 200, column: 17, scope: !317)
!320 = !DILocalVariable(name: "n", scope: !317, file: !45, line: 200, type: !23)
!321 = !DILocation(line: 200, column: 20, scope: !317)
!322 = !DILocalVariable(name: "intVariable", scope: !317, file: !45, line: 200, type: !23)
!323 = !DILocation(line: 200, column: 23, scope: !317)
!324 = !DILocation(line: 201, column: 24, scope: !325)
!325 = distinct !DILexicalBlock(scope: !317, file: !45, line: 201, column: 17)
!326 = !DILocation(line: 201, column: 17, scope: !325)
!327 = !DILocation(line: 201, column: 40, scope: !325)
!328 = !DILocation(line: 201, column: 17, scope: !317)
!329 = !DILocation(line: 204, column: 29, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !45, line: 202, column: 13)
!331 = !DILocation(line: 205, column: 24, scope: !332)
!332 = distinct !DILexicalBlock(scope: !330, file: !45, line: 205, column: 17)
!333 = !DILocation(line: 205, column: 22, scope: !332)
!334 = !DILocation(line: 205, column: 29, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !45, line: 205, column: 17)
!336 = !DILocation(line: 205, column: 33, scope: !335)
!337 = !DILocation(line: 205, column: 31, scope: !335)
!338 = !DILocation(line: 205, column: 17, scope: !332)
!339 = !DILocation(line: 208, column: 32, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !45, line: 206, column: 17)
!341 = !DILocation(line: 209, column: 17, scope: !340)
!342 = !DILocation(line: 205, column: 37, scope: !335)
!343 = !DILocation(line: 205, column: 17, scope: !335)
!344 = distinct !{!344, !338, !345, !133}
!345 = !DILocation(line: 209, column: 17, scope: !332)
!346 = !DILocation(line: 210, column: 30, scope: !330)
!347 = !DILocation(line: 210, column: 17, scope: !330)
!348 = !DILocation(line: 211, column: 13, scope: !330)
!349 = !DILocation(line: 213, column: 5, scope: !318)
!350 = !DILocation(line: 214, column: 1, scope: !297)
!351 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 217, type: !59, scopeLine: 218, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!352 = !DILocalVariable(name: "data", scope: !351, file: !45, line: 219, type: !42)
!353 = !DILocation(line: 219, column: 12, scope: !351)
!354 = !DILocalVariable(name: "dataBuffer", scope: !351, file: !45, line: 220, type: !64)
!355 = !DILocation(line: 220, column: 10, scope: !351)
!356 = !DILocation(line: 221, column: 12, scope: !351)
!357 = !DILocation(line: 221, column: 10, scope: !351)
!358 = !DILocation(line: 222, column: 8, scope: !359)
!359 = distinct !DILexicalBlock(scope: !351, file: !45, line: 222, column: 8)
!360 = !DILocation(line: 222, column: 8, scope: !351)
!361 = !DILocation(line: 225, column: 16, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !45, line: 223, column: 5)
!363 = !DILocation(line: 225, column: 9, scope: !362)
!364 = !DILocation(line: 226, column: 5, scope: !362)
!365 = !DILocation(line: 227, column: 8, scope: !366)
!366 = distinct !DILexicalBlock(scope: !351, file: !45, line: 227, column: 8)
!367 = !DILocation(line: 227, column: 8, scope: !351)
!368 = !DILocalVariable(name: "i", scope: !369, file: !45, line: 230, type: !23)
!369 = distinct !DILexicalBlock(scope: !370, file: !45, line: 229, column: 9)
!370 = distinct !DILexicalBlock(scope: !366, file: !45, line: 228, column: 5)
!371 = !DILocation(line: 230, column: 17, scope: !369)
!372 = !DILocalVariable(name: "n", scope: !369, file: !45, line: 230, type: !23)
!373 = !DILocation(line: 230, column: 20, scope: !369)
!374 = !DILocalVariable(name: "intVariable", scope: !369, file: !45, line: 230, type: !23)
!375 = !DILocation(line: 230, column: 23, scope: !369)
!376 = !DILocation(line: 231, column: 24, scope: !377)
!377 = distinct !DILexicalBlock(scope: !369, file: !45, line: 231, column: 17)
!378 = !DILocation(line: 231, column: 17, scope: !377)
!379 = !DILocation(line: 231, column: 40, scope: !377)
!380 = !DILocation(line: 231, column: 17, scope: !369)
!381 = !DILocation(line: 234, column: 29, scope: !382)
!382 = distinct !DILexicalBlock(scope: !377, file: !45, line: 232, column: 13)
!383 = !DILocation(line: 235, column: 24, scope: !384)
!384 = distinct !DILexicalBlock(scope: !382, file: !45, line: 235, column: 17)
!385 = !DILocation(line: 235, column: 22, scope: !384)
!386 = !DILocation(line: 235, column: 29, scope: !387)
!387 = distinct !DILexicalBlock(scope: !384, file: !45, line: 235, column: 17)
!388 = !DILocation(line: 235, column: 33, scope: !387)
!389 = !DILocation(line: 235, column: 31, scope: !387)
!390 = !DILocation(line: 235, column: 17, scope: !384)
!391 = !DILocation(line: 238, column: 32, scope: !392)
!392 = distinct !DILexicalBlock(scope: !387, file: !45, line: 236, column: 17)
!393 = !DILocation(line: 239, column: 17, scope: !392)
!394 = !DILocation(line: 235, column: 37, scope: !387)
!395 = !DILocation(line: 235, column: 17, scope: !387)
!396 = distinct !{!396, !390, !397, !133}
!397 = !DILocation(line: 239, column: 17, scope: !384)
!398 = !DILocation(line: 240, column: 30, scope: !382)
!399 = !DILocation(line: 240, column: 17, scope: !382)
!400 = !DILocation(line: 241, column: 13, scope: !382)
!401 = !DILocation(line: 243, column: 5, scope: !370)
!402 = !DILocation(line: 244, column: 1, scope: !351)
!403 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_08_good", scope: !45, file: !45, line: 246, type: !59, scopeLine: 247, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!404 = !DILocation(line: 248, column: 5, scope: !403)
!405 = !DILocation(line: 249, column: 5, scope: !403)
!406 = !DILocation(line: 250, column: 5, scope: !403)
!407 = !DILocation(line: 251, column: 5, scope: !403)
!408 = !DILocation(line: 252, column: 1, scope: !403)
!409 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !410, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !42}
!412 = !DILocalVariable(name: "line", arg: 1, scope: !409, file: !3, line: 11, type: !42)
!413 = !DILocation(line: 11, column: 25, scope: !409)
!414 = !DILocation(line: 13, column: 1, scope: !409)
!415 = !DILocation(line: 14, column: 8, scope: !416)
!416 = distinct !DILexicalBlock(scope: !409, file: !3, line: 14, column: 8)
!417 = !DILocation(line: 14, column: 13, scope: !416)
!418 = !DILocation(line: 14, column: 8, scope: !409)
!419 = !DILocation(line: 16, column: 24, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !3, line: 15, column: 5)
!421 = !DILocation(line: 16, column: 9, scope: !420)
!422 = !DILocation(line: 17, column: 5, scope: !420)
!423 = !DILocation(line: 18, column: 5, scope: !409)
!424 = !DILocation(line: 19, column: 1, scope: !409)
!425 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !410, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!426 = !DILocalVariable(name: "line", arg: 1, scope: !425, file: !3, line: 20, type: !42)
!427 = !DILocation(line: 20, column: 29, scope: !425)
!428 = !DILocation(line: 22, column: 8, scope: !429)
!429 = distinct !DILexicalBlock(scope: !425, file: !3, line: 22, column: 8)
!430 = !DILocation(line: 22, column: 13, scope: !429)
!431 = !DILocation(line: 22, column: 8, scope: !425)
!432 = !DILocation(line: 24, column: 24, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !3, line: 23, column: 5)
!434 = !DILocation(line: 24, column: 9, scope: !433)
!435 = !DILocation(line: 25, column: 5, scope: !433)
!436 = !DILocation(line: 26, column: 1, scope: !425)
!437 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !438, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 74, baseType: !23)
!442 = !DILocalVariable(name: "line", arg: 1, scope: !437, file: !3, line: 27, type: !440)
!443 = !DILocation(line: 27, column: 29, scope: !437)
!444 = !DILocation(line: 29, column: 8, scope: !445)
!445 = distinct !DILexicalBlock(scope: !437, file: !3, line: 29, column: 8)
!446 = !DILocation(line: 29, column: 13, scope: !445)
!447 = !DILocation(line: 29, column: 8, scope: !437)
!448 = !DILocation(line: 31, column: 27, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !3, line: 30, column: 5)
!450 = !DILocation(line: 31, column: 9, scope: !449)
!451 = !DILocation(line: 32, column: 5, scope: !449)
!452 = !DILocation(line: 33, column: 1, scope: !437)
!453 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !454, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !23}
!456 = !DILocalVariable(name: "intNumber", arg: 1, scope: !453, file: !3, line: 35, type: !23)
!457 = !DILocation(line: 35, column: 24, scope: !453)
!458 = !DILocation(line: 37, column: 20, scope: !453)
!459 = !DILocation(line: 37, column: 5, scope: !453)
!460 = !DILocation(line: 38, column: 1, scope: !453)
!461 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !462, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !464}
!464 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!465 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !461, file: !3, line: 40, type: !464)
!466 = !DILocation(line: 40, column: 28, scope: !461)
!467 = !DILocation(line: 42, column: 21, scope: !461)
!468 = !DILocation(line: 42, column: 5, scope: !461)
!469 = !DILocation(line: 43, column: 1, scope: !461)
!470 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !471, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !473}
!473 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!474 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !470, file: !3, line: 45, type: !473)
!475 = !DILocation(line: 45, column: 28, scope: !470)
!476 = !DILocation(line: 47, column: 20, scope: !470)
!477 = !DILocation(line: 47, column: 5, scope: !470)
!478 = !DILocation(line: 48, column: 1, scope: !470)
!479 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !480, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !482}
!482 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!483 = !DILocalVariable(name: "longNumber", arg: 1, scope: !479, file: !3, line: 50, type: !482)
!484 = !DILocation(line: 50, column: 26, scope: !479)
!485 = !DILocation(line: 52, column: 21, scope: !479)
!486 = !DILocation(line: 52, column: 5, scope: !479)
!487 = !DILocation(line: 53, column: 1, scope: !479)
!488 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !489, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !491}
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !492, line: 27, baseType: !493)
!492 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !494, line: 44, baseType: !482)
!494 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!495 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !488, file: !3, line: 55, type: !491)
!496 = !DILocation(line: 55, column: 33, scope: !488)
!497 = !DILocation(line: 57, column: 29, scope: !488)
!498 = !DILocation(line: 57, column: 5, scope: !488)
!499 = !DILocation(line: 58, column: 1, scope: !488)
!500 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !501, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !76}
!503 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !500, file: !3, line: 60, type: !76)
!504 = !DILocation(line: 60, column: 29, scope: !500)
!505 = !DILocation(line: 62, column: 21, scope: !500)
!506 = !DILocation(line: 62, column: 5, scope: !500)
!507 = !DILocation(line: 63, column: 1, scope: !500)
!508 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !509, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !43}
!511 = !DILocalVariable(name: "charHex", arg: 1, scope: !508, file: !3, line: 65, type: !43)
!512 = !DILocation(line: 65, column: 29, scope: !508)
!513 = !DILocation(line: 67, column: 22, scope: !508)
!514 = !DILocation(line: 67, column: 5, scope: !508)
!515 = !DILocation(line: 68, column: 1, scope: !508)
!516 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !517, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !441}
!519 = !DILocalVariable(name: "wideChar", arg: 1, scope: !516, file: !3, line: 70, type: !441)
!520 = !DILocation(line: 70, column: 29, scope: !516)
!521 = !DILocalVariable(name: "s", scope: !516, file: !3, line: 74, type: !522)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 64, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 2)
!525 = !DILocation(line: 74, column: 13, scope: !516)
!526 = !DILocation(line: 75, column: 16, scope: !516)
!527 = !DILocation(line: 75, column: 9, scope: !516)
!528 = !DILocation(line: 75, column: 14, scope: !516)
!529 = !DILocation(line: 76, column: 9, scope: !516)
!530 = !DILocation(line: 76, column: 14, scope: !516)
!531 = !DILocation(line: 77, column: 21, scope: !516)
!532 = !DILocation(line: 77, column: 5, scope: !516)
!533 = !DILocation(line: 78, column: 1, scope: !516)
!534 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !535, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !7}
!537 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !534, file: !3, line: 80, type: !7)
!538 = !DILocation(line: 80, column: 33, scope: !534)
!539 = !DILocation(line: 82, column: 20, scope: !534)
!540 = !DILocation(line: 82, column: 5, scope: !534)
!541 = !DILocation(line: 83, column: 1, scope: !534)
!542 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !543, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !25}
!545 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !542, file: !3, line: 85, type: !25)
!546 = !DILocation(line: 85, column: 45, scope: !542)
!547 = !DILocation(line: 87, column: 22, scope: !542)
!548 = !DILocation(line: 87, column: 5, scope: !542)
!549 = !DILocation(line: 88, column: 1, scope: !542)
!550 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !551, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !553}
!553 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!554 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !550, file: !3, line: 90, type: !553)
!555 = !DILocation(line: 90, column: 29, scope: !550)
!556 = !DILocation(line: 92, column: 20, scope: !550)
!557 = !DILocation(line: 92, column: 5, scope: !550)
!558 = !DILocation(line: 93, column: 1, scope: !550)
!559 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !560, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !562}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !564, line: 100, baseType: !565)
!564 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_033/source_code")
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !564, line: 96, size: 64, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !565, file: !564, line: 98, baseType: !23, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !565, file: !564, line: 99, baseType: !23, size: 32, offset: 32)
!569 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !559, file: !3, line: 95, type: !562)
!570 = !DILocation(line: 95, column: 40, scope: !559)
!571 = !DILocation(line: 97, column: 26, scope: !559)
!572 = !DILocation(line: 97, column: 47, scope: !559)
!573 = !DILocation(line: 97, column: 55, scope: !559)
!574 = !DILocation(line: 97, column: 76, scope: !559)
!575 = !DILocation(line: 97, column: 5, scope: !559)
!576 = !DILocation(line: 98, column: 1, scope: !559)
!577 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !578, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !580, !76}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!581 = !DILocalVariable(name: "bytes", arg: 1, scope: !577, file: !3, line: 100, type: !580)
!582 = !DILocation(line: 100, column: 38, scope: !577)
!583 = !DILocalVariable(name: "numBytes", arg: 2, scope: !577, file: !3, line: 100, type: !76)
!584 = !DILocation(line: 100, column: 52, scope: !577)
!585 = !DILocalVariable(name: "i", scope: !577, file: !3, line: 102, type: !76)
!586 = !DILocation(line: 102, column: 12, scope: !577)
!587 = !DILocation(line: 103, column: 12, scope: !588)
!588 = distinct !DILexicalBlock(scope: !577, file: !3, line: 103, column: 5)
!589 = !DILocation(line: 103, column: 10, scope: !588)
!590 = !DILocation(line: 103, column: 17, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !3, line: 103, column: 5)
!592 = !DILocation(line: 103, column: 21, scope: !591)
!593 = !DILocation(line: 103, column: 19, scope: !591)
!594 = !DILocation(line: 103, column: 5, scope: !588)
!595 = !DILocation(line: 105, column: 24, scope: !596)
!596 = distinct !DILexicalBlock(scope: !591, file: !3, line: 104, column: 5)
!597 = !DILocation(line: 105, column: 30, scope: !596)
!598 = !DILocation(line: 105, column: 9, scope: !596)
!599 = !DILocation(line: 106, column: 5, scope: !596)
!600 = !DILocation(line: 103, column: 31, scope: !591)
!601 = !DILocation(line: 103, column: 5, scope: !591)
!602 = distinct !{!602, !594, !603, !133}
!603 = !DILocation(line: 106, column: 5, scope: !588)
!604 = !DILocation(line: 107, column: 5, scope: !577)
!605 = !DILocation(line: 108, column: 1, scope: !577)
!606 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !607, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DISubroutineType(types: !608)
!608 = !{!76, !580, !76, !42}
!609 = !DILocalVariable(name: "bytes", arg: 1, scope: !606, file: !3, line: 113, type: !580)
!610 = !DILocation(line: 113, column: 39, scope: !606)
!611 = !DILocalVariable(name: "numBytes", arg: 2, scope: !606, file: !3, line: 113, type: !76)
!612 = !DILocation(line: 113, column: 53, scope: !606)
!613 = !DILocalVariable(name: "hex", arg: 3, scope: !606, file: !3, line: 113, type: !42)
!614 = !DILocation(line: 113, column: 71, scope: !606)
!615 = !DILocalVariable(name: "numWritten", scope: !606, file: !3, line: 115, type: !76)
!616 = !DILocation(line: 115, column: 12, scope: !606)
!617 = !DILocation(line: 121, column: 5, scope: !606)
!618 = !DILocation(line: 121, column: 12, scope: !606)
!619 = !DILocation(line: 121, column: 25, scope: !606)
!620 = !DILocation(line: 121, column: 23, scope: !606)
!621 = !DILocation(line: 121, column: 34, scope: !606)
!622 = !DILocation(line: 121, column: 37, scope: !606)
!623 = !DILocation(line: 121, column: 67, scope: !606)
!624 = !DILocation(line: 121, column: 70, scope: !606)
!625 = !DILocation(line: 0, scope: !606)
!626 = !DILocalVariable(name: "byte", scope: !627, file: !3, line: 123, type: !23)
!627 = distinct !DILexicalBlock(scope: !606, file: !3, line: 122, column: 5)
!628 = !DILocation(line: 123, column: 13, scope: !627)
!629 = !DILocation(line: 124, column: 17, scope: !627)
!630 = !DILocation(line: 124, column: 25, scope: !627)
!631 = !DILocation(line: 124, column: 23, scope: !627)
!632 = !DILocation(line: 124, column: 9, scope: !627)
!633 = !DILocation(line: 125, column: 45, scope: !627)
!634 = !DILocation(line: 125, column: 29, scope: !627)
!635 = !DILocation(line: 125, column: 9, scope: !627)
!636 = !DILocation(line: 125, column: 15, scope: !627)
!637 = !DILocation(line: 125, column: 27, scope: !627)
!638 = !DILocation(line: 126, column: 9, scope: !627)
!639 = distinct !{!639, !617, !640, !133}
!640 = !DILocation(line: 127, column: 5, scope: !606)
!641 = !DILocation(line: 129, column: 12, scope: !606)
!642 = !DILocation(line: 129, column: 5, scope: !606)
!643 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !644, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DISubroutineType(types: !645)
!645 = !{!76, !580, !76, !440}
!646 = !DILocalVariable(name: "bytes", arg: 1, scope: !643, file: !3, line: 135, type: !580)
!647 = !DILocation(line: 135, column: 41, scope: !643)
!648 = !DILocalVariable(name: "numBytes", arg: 2, scope: !643, file: !3, line: 135, type: !76)
!649 = !DILocation(line: 135, column: 55, scope: !643)
!650 = !DILocalVariable(name: "hex", arg: 3, scope: !643, file: !3, line: 135, type: !440)
!651 = !DILocation(line: 135, column: 76, scope: !643)
!652 = !DILocalVariable(name: "numWritten", scope: !643, file: !3, line: 137, type: !76)
!653 = !DILocation(line: 137, column: 12, scope: !643)
!654 = !DILocation(line: 143, column: 5, scope: !643)
!655 = !DILocation(line: 143, column: 12, scope: !643)
!656 = !DILocation(line: 143, column: 25, scope: !643)
!657 = !DILocation(line: 143, column: 23, scope: !643)
!658 = !DILocation(line: 143, column: 34, scope: !643)
!659 = !DILocation(line: 143, column: 47, scope: !643)
!660 = !DILocation(line: 143, column: 55, scope: !643)
!661 = !DILocation(line: 143, column: 53, scope: !643)
!662 = !DILocation(line: 143, column: 37, scope: !643)
!663 = !DILocation(line: 143, column: 68, scope: !643)
!664 = !DILocation(line: 143, column: 81, scope: !643)
!665 = !DILocation(line: 143, column: 89, scope: !643)
!666 = !DILocation(line: 143, column: 87, scope: !643)
!667 = !DILocation(line: 143, column: 100, scope: !643)
!668 = !DILocation(line: 143, column: 71, scope: !643)
!669 = !DILocation(line: 0, scope: !643)
!670 = !DILocalVariable(name: "byte", scope: !671, file: !3, line: 145, type: !23)
!671 = distinct !DILexicalBlock(scope: !643, file: !3, line: 144, column: 5)
!672 = !DILocation(line: 145, column: 13, scope: !671)
!673 = !DILocation(line: 146, column: 18, scope: !671)
!674 = !DILocation(line: 146, column: 26, scope: !671)
!675 = !DILocation(line: 146, column: 24, scope: !671)
!676 = !DILocation(line: 146, column: 9, scope: !671)
!677 = !DILocation(line: 147, column: 45, scope: !671)
!678 = !DILocation(line: 147, column: 29, scope: !671)
!679 = !DILocation(line: 147, column: 9, scope: !671)
!680 = !DILocation(line: 147, column: 15, scope: !671)
!681 = !DILocation(line: 147, column: 27, scope: !671)
!682 = !DILocation(line: 148, column: 9, scope: !671)
!683 = distinct !{!683, !654, !684, !133}
!684 = !DILocation(line: 149, column: 5, scope: !643)
!685 = !DILocation(line: 151, column: 12, scope: !643)
!686 = !DILocation(line: 151, column: 5, scope: !643)
!687 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !53, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!688 = !DILocation(line: 158, column: 5, scope: !687)
!689 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !53, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!690 = !DILocation(line: 163, column: 5, scope: !689)
!691 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !53, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!692 = !DILocation(line: 168, column: 13, scope: !691)
!693 = !DILocation(line: 168, column: 20, scope: !691)
!694 = !DILocation(line: 168, column: 5, scope: !691)
!695 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !59, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!696 = !DILocation(line: 187, column: 16, scope: !695)
!697 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !59, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!698 = !DILocation(line: 188, column: 16, scope: !697)
!699 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !59, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!700 = !DILocation(line: 189, column: 16, scope: !699)
!701 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!702 = !DILocation(line: 190, column: 16, scope: !701)
!703 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !59, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!704 = !DILocation(line: 191, column: 16, scope: !703)
!705 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !59, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!706 = !DILocation(line: 192, column: 16, scope: !705)
!707 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !59, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!708 = !DILocation(line: 193, column: 16, scope: !707)
!709 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !59, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!710 = !DILocation(line: 194, column: 16, scope: !709)
!711 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !59, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!712 = !DILocation(line: 195, column: 16, scope: !711)
!713 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !59, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!714 = !DILocation(line: 198, column: 15, scope: !713)
!715 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !59, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!716 = !DILocation(line: 199, column: 15, scope: !715)
!717 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !59, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!718 = !DILocation(line: 200, column: 15, scope: !717)
!719 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !59, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!720 = !DILocation(line: 201, column: 15, scope: !719)
!721 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !59, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!722 = !DILocation(line: 202, column: 15, scope: !721)
!723 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !59, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!724 = !DILocation(line: 203, column: 15, scope: !723)
!725 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !59, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!726 = !DILocation(line: 204, column: 15, scope: !725)
!727 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !59, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!728 = !DILocation(line: 205, column: 15, scope: !727)
!729 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !59, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!730 = !DILocation(line: 206, column: 15, scope: !729)
