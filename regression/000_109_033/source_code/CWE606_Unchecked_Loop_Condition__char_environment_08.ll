; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_08.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_08.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsTrue() #0 !dbg !9 {
entry:
  ret i32 1, !dbg !13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsFalse() #0 !dbg !14 {
entry:
  ret i32 0, !dbg !15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_08_bad() #0 !dbg !16 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !19, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !23, metadata !DIExpression()), !dbg !27
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !27
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !28
  store i8* %arraydecay, i8** %data, align 8, !dbg !29
  %call = call i32 @staticReturnsTrue(), !dbg !30
  %tobool = icmp ne i32 %call, 0, !dbg !30
  br i1 %tobool, label %if.then, label %if.end6, !dbg !32

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !33, metadata !DIExpression()), !dbg !39
  %1 = load i8*, i8** %data, align 8, !dbg !40
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !41
  store i64 %call1, i64* %dataLen, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !42, metadata !DIExpression()), !dbg !43
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !44
  store i8* %call2, i8** %environment, align 8, !dbg !43
  %2 = load i8*, i8** %environment, align 8, !dbg !45
  %cmp = icmp ne i8* %2, null, !dbg !47
  br i1 %cmp, label %if.then3, label %if.end, !dbg !48

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !49
  %4 = load i64, i64* %dataLen, align 8, !dbg !51
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !52
  %5 = load i8*, i8** %environment, align 8, !dbg !53
  %6 = load i64, i64* %dataLen, align 8, !dbg !54
  %sub = sub i64 100, %6, !dbg !55
  %sub4 = sub i64 %sub, 1, !dbg !56
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #7, !dbg !57
  br label %if.end, !dbg !58

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !59

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 @staticReturnsTrue(), !dbg !60
  %tobool8 = icmp ne i32 %call7, 0, !dbg !60
  br i1 %tobool8, label %if.then9, label %if.end16, !dbg !62

if.then9:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !63, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %n, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !69, metadata !DIExpression()), !dbg !70
  %7 = load i8*, i8** %data, align 8, !dbg !71
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !73
  %cmp11 = icmp eq i32 %call10, 1, !dbg !74
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !75

if.then12:                                        ; preds = %if.then9
  store i32 0, i32* %intVariable, align 4, !dbg !76
  store i32 0, i32* %i, align 4, !dbg !78
  br label %for.cond, !dbg !80

for.cond:                                         ; preds = %for.inc, %if.then12
  %8 = load i32, i32* %i, align 4, !dbg !81
  %9 = load i32, i32* %n, align 4, !dbg !83
  %cmp13 = icmp slt i32 %8, %9, !dbg !84
  br i1 %cmp13, label %for.body, label %for.end, !dbg !85

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %intVariable, align 4, !dbg !86
  %inc = add nsw i32 %10, 1, !dbg !86
  store i32 %inc, i32* %intVariable, align 4, !dbg !86
  br label %for.inc, !dbg !88

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !89
  %inc14 = add nsw i32 %11, 1, !dbg !89
  store i32 %inc14, i32* %i, align 4, !dbg !89
  br label %for.cond, !dbg !90, !llvm.loop !91

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !94
  call void @printIntLine(i32 %12), !dbg !95
  br label %if.end15, !dbg !96

if.end15:                                         ; preds = %for.end, %if.then9
  br label %if.end16, !dbg !97

if.end16:                                         ; preds = %if.end15, %if.end6
  ret void, !dbg !98
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

declare dso_local void @printIntLine(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !99 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !102, metadata !DIExpression()), !dbg !103
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !103
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !103
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !104
  store i8* %arraydecay, i8** %data, align 8, !dbg !105
  %call = call i32 @staticReturnsTrue(), !dbg !106
  %tobool = icmp ne i32 %call, 0, !dbg !106
  br i1 %tobool, label %if.then, label %if.end6, !dbg !108

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !109, metadata !DIExpression()), !dbg !112
  %1 = load i8*, i8** %data, align 8, !dbg !113
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !114
  store i64 %call1, i64* %dataLen, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !115, metadata !DIExpression()), !dbg !116
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !117
  store i8* %call2, i8** %environment, align 8, !dbg !116
  %2 = load i8*, i8** %environment, align 8, !dbg !118
  %cmp = icmp ne i8* %2, null, !dbg !120
  br i1 %cmp, label %if.then3, label %if.end, !dbg !121

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !122
  %4 = load i64, i64* %dataLen, align 8, !dbg !124
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !125
  %5 = load i8*, i8** %environment, align 8, !dbg !126
  %6 = load i64, i64* %dataLen, align 8, !dbg !127
  %sub = sub i64 100, %6, !dbg !128
  %sub4 = sub i64 %sub, 1, !dbg !129
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #7, !dbg !130
  br label %if.end, !dbg !131

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !132

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 @staticReturnsFalse(), !dbg !133
  %tobool8 = icmp ne i32 %call7, 0, !dbg !133
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !135

if.then9:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !136
  br label %if.end19, !dbg !138

if.else:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !139, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i32* %n, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !145, metadata !DIExpression()), !dbg !146
  %7 = load i8*, i8** %data, align 8, !dbg !147
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !149
  %cmp11 = icmp eq i32 %call10, 1, !dbg !150
  br i1 %cmp11, label %if.then12, label %if.end18, !dbg !151

if.then12:                                        ; preds = %if.else
  %8 = load i32, i32* %n, align 4, !dbg !152
  %cmp13 = icmp slt i32 %8, 10000, !dbg !155
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !156

if.then14:                                        ; preds = %if.then12
  store i32 0, i32* %intVariable, align 4, !dbg !157
  store i32 0, i32* %i, align 4, !dbg !159
  br label %for.cond, !dbg !161

for.cond:                                         ; preds = %for.inc, %if.then14
  %9 = load i32, i32* %i, align 4, !dbg !162
  %10 = load i32, i32* %n, align 4, !dbg !164
  %cmp15 = icmp slt i32 %9, %10, !dbg !165
  br i1 %cmp15, label %for.body, label %for.end, !dbg !166

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !167
  %inc = add nsw i32 %11, 1, !dbg !167
  store i32 %inc, i32* %intVariable, align 4, !dbg !167
  br label %for.inc, !dbg !169

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !170
  %inc16 = add nsw i32 %12, 1, !dbg !170
  store i32 %inc16, i32* %i, align 4, !dbg !170
  br label %for.cond, !dbg !171, !llvm.loop !172

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !174
  call void @printIntLine(i32 %13), !dbg !175
  br label %if.end17, !dbg !176

if.end17:                                         ; preds = %for.end, %if.then12
  br label %if.end18, !dbg !177

if.end18:                                         ; preds = %if.end17, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then9
  ret void, !dbg !178
}

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !179 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !182, metadata !DIExpression()), !dbg !183
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !183
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !183
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !184
  store i8* %arraydecay, i8** %data, align 8, !dbg !185
  %call = call i32 @staticReturnsTrue(), !dbg !186
  %tobool = icmp ne i32 %call, 0, !dbg !186
  br i1 %tobool, label %if.then, label %if.end6, !dbg !188

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !189, metadata !DIExpression()), !dbg !192
  %1 = load i8*, i8** %data, align 8, !dbg !193
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !194
  store i64 %call1, i64* %dataLen, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !195, metadata !DIExpression()), !dbg !196
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !197
  store i8* %call2, i8** %environment, align 8, !dbg !196
  %2 = load i8*, i8** %environment, align 8, !dbg !198
  %cmp = icmp ne i8* %2, null, !dbg !200
  br i1 %cmp, label %if.then3, label %if.end, !dbg !201

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !202
  %4 = load i64, i64* %dataLen, align 8, !dbg !204
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !205
  %5 = load i8*, i8** %environment, align 8, !dbg !206
  %6 = load i64, i64* %dataLen, align 8, !dbg !207
  %sub = sub i64 100, %6, !dbg !208
  %sub4 = sub i64 %sub, 1, !dbg !209
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #7, !dbg !210
  br label %if.end, !dbg !211

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !212

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 @staticReturnsTrue(), !dbg !213
  %tobool8 = icmp ne i32 %call7, 0, !dbg !213
  br i1 %tobool8, label %if.then9, label %if.end19, !dbg !215

if.then9:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !216, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i32* %n, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !222, metadata !DIExpression()), !dbg !223
  %7 = load i8*, i8** %data, align 8, !dbg !224
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !226
  %cmp11 = icmp eq i32 %call10, 1, !dbg !227
  br i1 %cmp11, label %if.then12, label %if.end18, !dbg !228

if.then12:                                        ; preds = %if.then9
  %8 = load i32, i32* %n, align 4, !dbg !229
  %cmp13 = icmp slt i32 %8, 10000, !dbg !232
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !233

if.then14:                                        ; preds = %if.then12
  store i32 0, i32* %intVariable, align 4, !dbg !234
  store i32 0, i32* %i, align 4, !dbg !236
  br label %for.cond, !dbg !238

for.cond:                                         ; preds = %for.inc, %if.then14
  %9 = load i32, i32* %i, align 4, !dbg !239
  %10 = load i32, i32* %n, align 4, !dbg !241
  %cmp15 = icmp slt i32 %9, %10, !dbg !242
  br i1 %cmp15, label %for.body, label %for.end, !dbg !243

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !244
  %inc = add nsw i32 %11, 1, !dbg !244
  store i32 %inc, i32* %intVariable, align 4, !dbg !244
  br label %for.inc, !dbg !246

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !247
  %inc16 = add nsw i32 %12, 1, !dbg !247
  store i32 %inc16, i32* %i, align 4, !dbg !247
  br label %for.cond, !dbg !248, !llvm.loop !249

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !251
  call void @printIntLine(i32 %13), !dbg !252
  br label %if.end17, !dbg !253

if.end17:                                         ; preds = %for.end, %if.then12
  br label %if.end18, !dbg !254

if.end18:                                         ; preds = %if.end17, %if.then9
  br label %if.end19, !dbg !255

if.end19:                                         ; preds = %if.end18, %if.end6
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !257 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !261
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !261
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !262
  store i8* %arraydecay, i8** %data, align 8, !dbg !263
  %call = call i32 @staticReturnsFalse(), !dbg !264
  %tobool = icmp ne i32 %call, 0, !dbg !264
  br i1 %tobool, label %if.then, label %if.else, !dbg !266

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !267
  br label %if.end, !dbg !269

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !270
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !272
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @staticReturnsTrue(), !dbg !273
  %tobool3 = icmp ne i32 %call2, 0, !dbg !273
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !275

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !276, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata i32* %n, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !282, metadata !DIExpression()), !dbg !283
  %2 = load i8*, i8** %data, align 8, !dbg !284
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !286
  %cmp = icmp eq i32 %call5, 1, !dbg !287
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !288

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !289
  store i32 0, i32* %i, align 4, !dbg !291
  br label %for.cond, !dbg !293

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !294
  %4 = load i32, i32* %n, align 4, !dbg !296
  %cmp7 = icmp slt i32 %3, %4, !dbg !297
  br i1 %cmp7, label %for.body, label %for.end, !dbg !298

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !299
  %inc = add nsw i32 %5, 1, !dbg !299
  store i32 %inc, i32* %intVariable, align 4, !dbg !299
  br label %for.inc, !dbg !301

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !302
  %inc8 = add nsw i32 %6, 1, !dbg !302
  store i32 %inc8, i32* %i, align 4, !dbg !302
  br label %for.cond, !dbg !303, !llvm.loop !304

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !306
  call void @printIntLine(i32 %7), !dbg !307
  br label %if.end9, !dbg !308

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !309

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !310
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !311 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !312, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !315
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !315
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !316
  store i8* %arraydecay, i8** %data, align 8, !dbg !317
  %call = call i32 @staticReturnsTrue(), !dbg !318
  %tobool = icmp ne i32 %call, 0, !dbg !318
  br i1 %tobool, label %if.then, label %if.end, !dbg !320

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !321
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !323
  br label %if.end, !dbg !324

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @staticReturnsTrue(), !dbg !325
  %tobool3 = icmp ne i32 %call2, 0, !dbg !325
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !327

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !328, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata i32* %n, metadata !332, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !334, metadata !DIExpression()), !dbg !335
  %2 = load i8*, i8** %data, align 8, !dbg !336
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !338
  %cmp = icmp eq i32 %call5, 1, !dbg !339
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !340

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !341
  store i32 0, i32* %i, align 4, !dbg !343
  br label %for.cond, !dbg !345

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !346
  %4 = load i32, i32* %n, align 4, !dbg !348
  %cmp7 = icmp slt i32 %3, %4, !dbg !349
  br i1 %cmp7, label %for.body, label %for.end, !dbg !350

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !351
  %inc = add nsw i32 %5, 1, !dbg !351
  store i32 %inc, i32* %intVariable, align 4, !dbg !351
  br label %for.inc, !dbg !353

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !354
  %inc8 = add nsw i32 %6, 1, !dbg !354
  store i32 %inc8, i32* %i, align 4, !dbg !354
  br label %for.cond, !dbg !355, !llvm.loop !356

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !358
  call void @printIntLine(i32 %7), !dbg !359
  br label %if.end9, !dbg !360

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !361

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_08_good() #0 !dbg !363 {
entry:
  call void @goodB2G1(), !dbg !364
  call void @goodB2G2(), !dbg !365
  call void @goodG2B1(), !dbg !366
  call void @goodG2B2(), !dbg !367
  ret void, !dbg !368
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_033/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !1, file: !1, line: 38, type: !10, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocation(line: 40, column: 5, scope: !9)
!14 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !1, file: !1, line: 43, type: !10, scopeLine: 44, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 45, column: 5, scope: !14)
!16 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_08_bad", scope: !1, file: !1, line: 50, type: !17, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !DILocalVariable(name: "data", scope: !16, file: !1, line: 52, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DILocation(line: 52, column: 12, scope: !16)
!23 = !DILocalVariable(name: "dataBuffer", scope: !16, file: !1, line: 53, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 53, column: 10, scope: !16)
!28 = !DILocation(line: 54, column: 12, scope: !16)
!29 = !DILocation(line: 54, column: 10, scope: !16)
!30 = !DILocation(line: 55, column: 8, scope: !31)
!31 = distinct !DILexicalBlock(scope: !16, file: !1, line: 55, column: 8)
!32 = !DILocation(line: 55, column: 8, scope: !16)
!33 = !DILocalVariable(name: "dataLen", scope: !34, file: !1, line: 59, type: !36)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 57, column: 9)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 56, column: 5)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 59, column: 20, scope: !34)
!40 = !DILocation(line: 59, column: 37, scope: !34)
!41 = !DILocation(line: 59, column: 30, scope: !34)
!42 = !DILocalVariable(name: "environment", scope: !34, file: !1, line: 60, type: !20)
!43 = !DILocation(line: 60, column: 20, scope: !34)
!44 = !DILocation(line: 60, column: 34, scope: !34)
!45 = !DILocation(line: 62, column: 17, scope: !46)
!46 = distinct !DILexicalBlock(scope: !34, file: !1, line: 62, column: 17)
!47 = !DILocation(line: 62, column: 29, scope: !46)
!48 = !DILocation(line: 62, column: 17, scope: !34)
!49 = !DILocation(line: 65, column: 25, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 63, column: 13)
!51 = !DILocation(line: 65, column: 30, scope: !50)
!52 = !DILocation(line: 65, column: 29, scope: !50)
!53 = !DILocation(line: 65, column: 39, scope: !50)
!54 = !DILocation(line: 65, column: 56, scope: !50)
!55 = !DILocation(line: 65, column: 55, scope: !50)
!56 = !DILocation(line: 65, column: 63, scope: !50)
!57 = !DILocation(line: 65, column: 17, scope: !50)
!58 = !DILocation(line: 66, column: 13, scope: !50)
!59 = !DILocation(line: 68, column: 5, scope: !35)
!60 = !DILocation(line: 69, column: 8, scope: !61)
!61 = distinct !DILexicalBlock(scope: !16, file: !1, line: 69, column: 8)
!62 = !DILocation(line: 69, column: 8, scope: !16)
!63 = !DILocalVariable(name: "i", scope: !64, file: !1, line: 72, type: !12)
!64 = distinct !DILexicalBlock(scope: !65, file: !1, line: 71, column: 9)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 70, column: 5)
!66 = !DILocation(line: 72, column: 17, scope: !64)
!67 = !DILocalVariable(name: "n", scope: !64, file: !1, line: 72, type: !12)
!68 = !DILocation(line: 72, column: 20, scope: !64)
!69 = !DILocalVariable(name: "intVariable", scope: !64, file: !1, line: 72, type: !12)
!70 = !DILocation(line: 72, column: 23, scope: !64)
!71 = !DILocation(line: 73, column: 24, scope: !72)
!72 = distinct !DILexicalBlock(scope: !64, file: !1, line: 73, column: 17)
!73 = !DILocation(line: 73, column: 17, scope: !72)
!74 = !DILocation(line: 73, column: 40, scope: !72)
!75 = !DILocation(line: 73, column: 17, scope: !64)
!76 = !DILocation(line: 76, column: 29, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 74, column: 13)
!78 = !DILocation(line: 77, column: 24, scope: !79)
!79 = distinct !DILexicalBlock(scope: !77, file: !1, line: 77, column: 17)
!80 = !DILocation(line: 77, column: 22, scope: !79)
!81 = !DILocation(line: 77, column: 29, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 77, column: 17)
!83 = !DILocation(line: 77, column: 33, scope: !82)
!84 = !DILocation(line: 77, column: 31, scope: !82)
!85 = !DILocation(line: 77, column: 17, scope: !79)
!86 = !DILocation(line: 80, column: 32, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !1, line: 78, column: 17)
!88 = !DILocation(line: 81, column: 17, scope: !87)
!89 = !DILocation(line: 77, column: 37, scope: !82)
!90 = !DILocation(line: 77, column: 17, scope: !82)
!91 = distinct !{!91, !85, !92, !93}
!92 = !DILocation(line: 81, column: 17, scope: !79)
!93 = !{!"llvm.loop.mustprogress"}
!94 = !DILocation(line: 82, column: 30, scope: !77)
!95 = !DILocation(line: 82, column: 17, scope: !77)
!96 = !DILocation(line: 83, column: 13, scope: !77)
!97 = !DILocation(line: 85, column: 5, scope: !65)
!98 = !DILocation(line: 86, column: 1, scope: !16)
!99 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 93, type: !17, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!100 = !DILocalVariable(name: "data", scope: !99, file: !1, line: 95, type: !20)
!101 = !DILocation(line: 95, column: 12, scope: !99)
!102 = !DILocalVariable(name: "dataBuffer", scope: !99, file: !1, line: 96, type: !24)
!103 = !DILocation(line: 96, column: 10, scope: !99)
!104 = !DILocation(line: 97, column: 12, scope: !99)
!105 = !DILocation(line: 97, column: 10, scope: !99)
!106 = !DILocation(line: 98, column: 8, scope: !107)
!107 = distinct !DILexicalBlock(scope: !99, file: !1, line: 98, column: 8)
!108 = !DILocation(line: 98, column: 8, scope: !99)
!109 = !DILocalVariable(name: "dataLen", scope: !110, file: !1, line: 102, type: !36)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 100, column: 9)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 99, column: 5)
!112 = !DILocation(line: 102, column: 20, scope: !110)
!113 = !DILocation(line: 102, column: 37, scope: !110)
!114 = !DILocation(line: 102, column: 30, scope: !110)
!115 = !DILocalVariable(name: "environment", scope: !110, file: !1, line: 103, type: !20)
!116 = !DILocation(line: 103, column: 20, scope: !110)
!117 = !DILocation(line: 103, column: 34, scope: !110)
!118 = !DILocation(line: 105, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !110, file: !1, line: 105, column: 17)
!120 = !DILocation(line: 105, column: 29, scope: !119)
!121 = !DILocation(line: 105, column: 17, scope: !110)
!122 = !DILocation(line: 108, column: 25, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 106, column: 13)
!124 = !DILocation(line: 108, column: 30, scope: !123)
!125 = !DILocation(line: 108, column: 29, scope: !123)
!126 = !DILocation(line: 108, column: 39, scope: !123)
!127 = !DILocation(line: 108, column: 56, scope: !123)
!128 = !DILocation(line: 108, column: 55, scope: !123)
!129 = !DILocation(line: 108, column: 63, scope: !123)
!130 = !DILocation(line: 108, column: 17, scope: !123)
!131 = !DILocation(line: 109, column: 13, scope: !123)
!132 = !DILocation(line: 111, column: 5, scope: !111)
!133 = !DILocation(line: 112, column: 8, scope: !134)
!134 = distinct !DILexicalBlock(scope: !99, file: !1, line: 112, column: 8)
!135 = !DILocation(line: 112, column: 8, scope: !99)
!136 = !DILocation(line: 115, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !1, line: 113, column: 5)
!138 = !DILocation(line: 116, column: 5, scope: !137)
!139 = !DILocalVariable(name: "i", scope: !140, file: !1, line: 120, type: !12)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 119, column: 9)
!141 = distinct !DILexicalBlock(scope: !134, file: !1, line: 118, column: 5)
!142 = !DILocation(line: 120, column: 17, scope: !140)
!143 = !DILocalVariable(name: "n", scope: !140, file: !1, line: 120, type: !12)
!144 = !DILocation(line: 120, column: 20, scope: !140)
!145 = !DILocalVariable(name: "intVariable", scope: !140, file: !1, line: 120, type: !12)
!146 = !DILocation(line: 120, column: 23, scope: !140)
!147 = !DILocation(line: 121, column: 24, scope: !148)
!148 = distinct !DILexicalBlock(scope: !140, file: !1, line: 121, column: 17)
!149 = !DILocation(line: 121, column: 17, scope: !148)
!150 = !DILocation(line: 121, column: 40, scope: !148)
!151 = !DILocation(line: 121, column: 17, scope: !140)
!152 = !DILocation(line: 124, column: 21, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 124, column: 21)
!154 = distinct !DILexicalBlock(scope: !148, file: !1, line: 122, column: 13)
!155 = !DILocation(line: 124, column: 23, scope: !153)
!156 = !DILocation(line: 124, column: 21, scope: !154)
!157 = !DILocation(line: 126, column: 33, scope: !158)
!158 = distinct !DILexicalBlock(scope: !153, file: !1, line: 125, column: 17)
!159 = !DILocation(line: 127, column: 28, scope: !160)
!160 = distinct !DILexicalBlock(scope: !158, file: !1, line: 127, column: 21)
!161 = !DILocation(line: 127, column: 26, scope: !160)
!162 = !DILocation(line: 127, column: 33, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !1, line: 127, column: 21)
!164 = !DILocation(line: 127, column: 37, scope: !163)
!165 = !DILocation(line: 127, column: 35, scope: !163)
!166 = !DILocation(line: 127, column: 21, scope: !160)
!167 = !DILocation(line: 130, column: 36, scope: !168)
!168 = distinct !DILexicalBlock(scope: !163, file: !1, line: 128, column: 21)
!169 = !DILocation(line: 131, column: 21, scope: !168)
!170 = !DILocation(line: 127, column: 41, scope: !163)
!171 = !DILocation(line: 127, column: 21, scope: !163)
!172 = distinct !{!172, !166, !173, !93}
!173 = !DILocation(line: 131, column: 21, scope: !160)
!174 = !DILocation(line: 132, column: 34, scope: !158)
!175 = !DILocation(line: 132, column: 21, scope: !158)
!176 = !DILocation(line: 133, column: 17, scope: !158)
!177 = !DILocation(line: 134, column: 13, scope: !154)
!178 = !DILocation(line: 137, column: 1, scope: !99)
!179 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 140, type: !17, scopeLine: 141, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!180 = !DILocalVariable(name: "data", scope: !179, file: !1, line: 142, type: !20)
!181 = !DILocation(line: 142, column: 12, scope: !179)
!182 = !DILocalVariable(name: "dataBuffer", scope: !179, file: !1, line: 143, type: !24)
!183 = !DILocation(line: 143, column: 10, scope: !179)
!184 = !DILocation(line: 144, column: 12, scope: !179)
!185 = !DILocation(line: 144, column: 10, scope: !179)
!186 = !DILocation(line: 145, column: 8, scope: !187)
!187 = distinct !DILexicalBlock(scope: !179, file: !1, line: 145, column: 8)
!188 = !DILocation(line: 145, column: 8, scope: !179)
!189 = !DILocalVariable(name: "dataLen", scope: !190, file: !1, line: 149, type: !36)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 147, column: 9)
!191 = distinct !DILexicalBlock(scope: !187, file: !1, line: 146, column: 5)
!192 = !DILocation(line: 149, column: 20, scope: !190)
!193 = !DILocation(line: 149, column: 37, scope: !190)
!194 = !DILocation(line: 149, column: 30, scope: !190)
!195 = !DILocalVariable(name: "environment", scope: !190, file: !1, line: 150, type: !20)
!196 = !DILocation(line: 150, column: 20, scope: !190)
!197 = !DILocation(line: 150, column: 34, scope: !190)
!198 = !DILocation(line: 152, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !190, file: !1, line: 152, column: 17)
!200 = !DILocation(line: 152, column: 29, scope: !199)
!201 = !DILocation(line: 152, column: 17, scope: !190)
!202 = !DILocation(line: 155, column: 25, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 153, column: 13)
!204 = !DILocation(line: 155, column: 30, scope: !203)
!205 = !DILocation(line: 155, column: 29, scope: !203)
!206 = !DILocation(line: 155, column: 39, scope: !203)
!207 = !DILocation(line: 155, column: 56, scope: !203)
!208 = !DILocation(line: 155, column: 55, scope: !203)
!209 = !DILocation(line: 155, column: 63, scope: !203)
!210 = !DILocation(line: 155, column: 17, scope: !203)
!211 = !DILocation(line: 156, column: 13, scope: !203)
!212 = !DILocation(line: 158, column: 5, scope: !191)
!213 = !DILocation(line: 159, column: 8, scope: !214)
!214 = distinct !DILexicalBlock(scope: !179, file: !1, line: 159, column: 8)
!215 = !DILocation(line: 159, column: 8, scope: !179)
!216 = !DILocalVariable(name: "i", scope: !217, file: !1, line: 162, type: !12)
!217 = distinct !DILexicalBlock(scope: !218, file: !1, line: 161, column: 9)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 160, column: 5)
!219 = !DILocation(line: 162, column: 17, scope: !217)
!220 = !DILocalVariable(name: "n", scope: !217, file: !1, line: 162, type: !12)
!221 = !DILocation(line: 162, column: 20, scope: !217)
!222 = !DILocalVariable(name: "intVariable", scope: !217, file: !1, line: 162, type: !12)
!223 = !DILocation(line: 162, column: 23, scope: !217)
!224 = !DILocation(line: 163, column: 24, scope: !225)
!225 = distinct !DILexicalBlock(scope: !217, file: !1, line: 163, column: 17)
!226 = !DILocation(line: 163, column: 17, scope: !225)
!227 = !DILocation(line: 163, column: 40, scope: !225)
!228 = !DILocation(line: 163, column: 17, scope: !217)
!229 = !DILocation(line: 166, column: 21, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !1, line: 166, column: 21)
!231 = distinct !DILexicalBlock(scope: !225, file: !1, line: 164, column: 13)
!232 = !DILocation(line: 166, column: 23, scope: !230)
!233 = !DILocation(line: 166, column: 21, scope: !231)
!234 = !DILocation(line: 168, column: 33, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !1, line: 167, column: 17)
!236 = !DILocation(line: 169, column: 28, scope: !237)
!237 = distinct !DILexicalBlock(scope: !235, file: !1, line: 169, column: 21)
!238 = !DILocation(line: 169, column: 26, scope: !237)
!239 = !DILocation(line: 169, column: 33, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !1, line: 169, column: 21)
!241 = !DILocation(line: 169, column: 37, scope: !240)
!242 = !DILocation(line: 169, column: 35, scope: !240)
!243 = !DILocation(line: 169, column: 21, scope: !237)
!244 = !DILocation(line: 172, column: 36, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !1, line: 170, column: 21)
!246 = !DILocation(line: 173, column: 21, scope: !245)
!247 = !DILocation(line: 169, column: 41, scope: !240)
!248 = !DILocation(line: 169, column: 21, scope: !240)
!249 = distinct !{!249, !243, !250, !93}
!250 = !DILocation(line: 173, column: 21, scope: !237)
!251 = !DILocation(line: 174, column: 34, scope: !235)
!252 = !DILocation(line: 174, column: 21, scope: !235)
!253 = !DILocation(line: 175, column: 17, scope: !235)
!254 = !DILocation(line: 176, column: 13, scope: !231)
!255 = !DILocation(line: 178, column: 5, scope: !218)
!256 = !DILocation(line: 179, column: 1, scope: !179)
!257 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 182, type: !17, scopeLine: 183, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!258 = !DILocalVariable(name: "data", scope: !257, file: !1, line: 184, type: !20)
!259 = !DILocation(line: 184, column: 12, scope: !257)
!260 = !DILocalVariable(name: "dataBuffer", scope: !257, file: !1, line: 185, type: !24)
!261 = !DILocation(line: 185, column: 10, scope: !257)
!262 = !DILocation(line: 186, column: 12, scope: !257)
!263 = !DILocation(line: 186, column: 10, scope: !257)
!264 = !DILocation(line: 187, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !257, file: !1, line: 187, column: 8)
!266 = !DILocation(line: 187, column: 8, scope: !257)
!267 = !DILocation(line: 190, column: 9, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !1, line: 188, column: 5)
!269 = !DILocation(line: 191, column: 5, scope: !268)
!270 = !DILocation(line: 195, column: 16, scope: !271)
!271 = distinct !DILexicalBlock(scope: !265, file: !1, line: 193, column: 5)
!272 = !DILocation(line: 195, column: 9, scope: !271)
!273 = !DILocation(line: 197, column: 8, scope: !274)
!274 = distinct !DILexicalBlock(scope: !257, file: !1, line: 197, column: 8)
!275 = !DILocation(line: 197, column: 8, scope: !257)
!276 = !DILocalVariable(name: "i", scope: !277, file: !1, line: 200, type: !12)
!277 = distinct !DILexicalBlock(scope: !278, file: !1, line: 199, column: 9)
!278 = distinct !DILexicalBlock(scope: !274, file: !1, line: 198, column: 5)
!279 = !DILocation(line: 200, column: 17, scope: !277)
!280 = !DILocalVariable(name: "n", scope: !277, file: !1, line: 200, type: !12)
!281 = !DILocation(line: 200, column: 20, scope: !277)
!282 = !DILocalVariable(name: "intVariable", scope: !277, file: !1, line: 200, type: !12)
!283 = !DILocation(line: 200, column: 23, scope: !277)
!284 = !DILocation(line: 201, column: 24, scope: !285)
!285 = distinct !DILexicalBlock(scope: !277, file: !1, line: 201, column: 17)
!286 = !DILocation(line: 201, column: 17, scope: !285)
!287 = !DILocation(line: 201, column: 40, scope: !285)
!288 = !DILocation(line: 201, column: 17, scope: !277)
!289 = !DILocation(line: 204, column: 29, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !1, line: 202, column: 13)
!291 = !DILocation(line: 205, column: 24, scope: !292)
!292 = distinct !DILexicalBlock(scope: !290, file: !1, line: 205, column: 17)
!293 = !DILocation(line: 205, column: 22, scope: !292)
!294 = !DILocation(line: 205, column: 29, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !1, line: 205, column: 17)
!296 = !DILocation(line: 205, column: 33, scope: !295)
!297 = !DILocation(line: 205, column: 31, scope: !295)
!298 = !DILocation(line: 205, column: 17, scope: !292)
!299 = !DILocation(line: 208, column: 32, scope: !300)
!300 = distinct !DILexicalBlock(scope: !295, file: !1, line: 206, column: 17)
!301 = !DILocation(line: 209, column: 17, scope: !300)
!302 = !DILocation(line: 205, column: 37, scope: !295)
!303 = !DILocation(line: 205, column: 17, scope: !295)
!304 = distinct !{!304, !298, !305, !93}
!305 = !DILocation(line: 209, column: 17, scope: !292)
!306 = !DILocation(line: 210, column: 30, scope: !290)
!307 = !DILocation(line: 210, column: 17, scope: !290)
!308 = !DILocation(line: 211, column: 13, scope: !290)
!309 = !DILocation(line: 213, column: 5, scope: !278)
!310 = !DILocation(line: 214, column: 1, scope: !257)
!311 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 217, type: !17, scopeLine: 218, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!312 = !DILocalVariable(name: "data", scope: !311, file: !1, line: 219, type: !20)
!313 = !DILocation(line: 219, column: 12, scope: !311)
!314 = !DILocalVariable(name: "dataBuffer", scope: !311, file: !1, line: 220, type: !24)
!315 = !DILocation(line: 220, column: 10, scope: !311)
!316 = !DILocation(line: 221, column: 12, scope: !311)
!317 = !DILocation(line: 221, column: 10, scope: !311)
!318 = !DILocation(line: 222, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !311, file: !1, line: 222, column: 8)
!320 = !DILocation(line: 222, column: 8, scope: !311)
!321 = !DILocation(line: 225, column: 16, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !1, line: 223, column: 5)
!323 = !DILocation(line: 225, column: 9, scope: !322)
!324 = !DILocation(line: 226, column: 5, scope: !322)
!325 = !DILocation(line: 227, column: 8, scope: !326)
!326 = distinct !DILexicalBlock(scope: !311, file: !1, line: 227, column: 8)
!327 = !DILocation(line: 227, column: 8, scope: !311)
!328 = !DILocalVariable(name: "i", scope: !329, file: !1, line: 230, type: !12)
!329 = distinct !DILexicalBlock(scope: !330, file: !1, line: 229, column: 9)
!330 = distinct !DILexicalBlock(scope: !326, file: !1, line: 228, column: 5)
!331 = !DILocation(line: 230, column: 17, scope: !329)
!332 = !DILocalVariable(name: "n", scope: !329, file: !1, line: 230, type: !12)
!333 = !DILocation(line: 230, column: 20, scope: !329)
!334 = !DILocalVariable(name: "intVariable", scope: !329, file: !1, line: 230, type: !12)
!335 = !DILocation(line: 230, column: 23, scope: !329)
!336 = !DILocation(line: 231, column: 24, scope: !337)
!337 = distinct !DILexicalBlock(scope: !329, file: !1, line: 231, column: 17)
!338 = !DILocation(line: 231, column: 17, scope: !337)
!339 = !DILocation(line: 231, column: 40, scope: !337)
!340 = !DILocation(line: 231, column: 17, scope: !329)
!341 = !DILocation(line: 234, column: 29, scope: !342)
!342 = distinct !DILexicalBlock(scope: !337, file: !1, line: 232, column: 13)
!343 = !DILocation(line: 235, column: 24, scope: !344)
!344 = distinct !DILexicalBlock(scope: !342, file: !1, line: 235, column: 17)
!345 = !DILocation(line: 235, column: 22, scope: !344)
!346 = !DILocation(line: 235, column: 29, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !1, line: 235, column: 17)
!348 = !DILocation(line: 235, column: 33, scope: !347)
!349 = !DILocation(line: 235, column: 31, scope: !347)
!350 = !DILocation(line: 235, column: 17, scope: !344)
!351 = !DILocation(line: 238, column: 32, scope: !352)
!352 = distinct !DILexicalBlock(scope: !347, file: !1, line: 236, column: 17)
!353 = !DILocation(line: 239, column: 17, scope: !352)
!354 = !DILocation(line: 235, column: 37, scope: !347)
!355 = !DILocation(line: 235, column: 17, scope: !347)
!356 = distinct !{!356, !350, !357, !93}
!357 = !DILocation(line: 239, column: 17, scope: !344)
!358 = !DILocation(line: 240, column: 30, scope: !342)
!359 = !DILocation(line: 240, column: 17, scope: !342)
!360 = !DILocation(line: 241, column: 13, scope: !342)
!361 = !DILocation(line: 243, column: 5, scope: !330)
!362 = !DILocation(line: 244, column: 1, scope: !311)
!363 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_08_good", scope: !1, file: !1, line: 246, type: !17, scopeLine: 247, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!364 = !DILocation(line: 248, column: 5, scope: !363)
!365 = !DILocation(line: 249, column: 5, scope: !363)
!366 = !DILocation(line: 250, column: 5, scope: !363)
!367 = !DILocation(line: 251, column: 5, scope: !363)
!368 = !DILocation(line: 252, column: 1, scope: !363)
