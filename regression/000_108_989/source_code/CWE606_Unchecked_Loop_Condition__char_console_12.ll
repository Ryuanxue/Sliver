; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_12.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_12_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i36 = alloca i32, align 4
  %n37 = alloca i32, align 4
  %intVariable38 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !21
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !22
  store i8* %arraydecay, i8** %data, align 8, !dbg !23
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !24
  %tobool = icmp ne i32 %call, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.else21, !dbg !26

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !27, metadata !DIExpression()), !dbg !33
  %1 = load i8*, i8** %data, align 8, !dbg !34
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !35
  store i64 %call1, i64* %dataLen, align 8, !dbg !33
  %2 = load i64, i64* %dataLen, align 8, !dbg !36
  %sub = sub i64 100, %2, !dbg !38
  %cmp = icmp ugt i64 %sub, 1, !dbg !39
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !40

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !41
  %4 = load i64, i64* %dataLen, align 8, !dbg !44
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !45
  %5 = load i64, i64* %dataLen, align 8, !dbg !46
  %sub3 = sub i64 100, %5, !dbg !47
  %conv = trunc i64 %sub3 to i32, !dbg !48
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !49
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !50
  %cmp5 = icmp ne i8* %call4, null, !dbg !51
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !52

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !53
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !55
  store i64 %call8, i64* %dataLen, align 8, !dbg !56
  %8 = load i64, i64* %dataLen, align 8, !dbg !57
  %cmp9 = icmp ugt i64 %8, 0, !dbg !59
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !60

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !61
  %10 = load i64, i64* %dataLen, align 8, !dbg !62
  %sub11 = sub i64 %10, 1, !dbg !63
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !61
  %11 = load i8, i8* %arrayidx, align 1, !dbg !61
  %conv12 = sext i8 %11 to i32, !dbg !61
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !64
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !65

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !66
  %13 = load i64, i64* %dataLen, align 8, !dbg !68
  %sub16 = sub i64 %13, 1, !dbg !69
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !66
  store i8 0, i8* %arrayidx17, align 1, !dbg !70
  br label %if.end, !dbg !71

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !72

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !73
  %14 = load i8*, i8** %data, align 8, !dbg !75
  %15 = load i64, i64* %dataLen, align 8, !dbg !76
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !75
  store i8 0, i8* %arrayidx18, align 1, !dbg !77
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !78

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end23, !dbg !79

if.else21:                                        ; preds = %entry
  %16 = load i8*, i8** %data, align 8, !dbg !80
  %call22 = call i8* @strcpy(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !82
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.end20
  %call24 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !83
  %tobool25 = icmp ne i32 %call24, 0, !dbg !83
  br i1 %tobool25, label %if.then26, label %if.else35, !dbg !85

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !86, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %n, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !92, metadata !DIExpression()), !dbg !93
  %17 = load i8*, i8** %data, align 8, !dbg !94
  %call27 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #7, !dbg !96
  %cmp28 = icmp eq i32 %call27, 1, !dbg !97
  br i1 %cmp28, label %if.then30, label %if.end34, !dbg !98

if.then30:                                        ; preds = %if.then26
  store i32 0, i32* %intVariable, align 4, !dbg !99
  store i32 0, i32* %i, align 4, !dbg !101
  br label %for.cond, !dbg !103

for.cond:                                         ; preds = %for.inc, %if.then30
  %18 = load i32, i32* %i, align 4, !dbg !104
  %19 = load i32, i32* %n, align 4, !dbg !106
  %cmp31 = icmp slt i32 %18, %19, !dbg !107
  br i1 %cmp31, label %for.body, label %for.end, !dbg !108

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !109
  %inc = add nsw i32 %20, 1, !dbg !109
  store i32 %inc, i32* %intVariable, align 4, !dbg !109
  br label %for.inc, !dbg !111

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !112
  %inc33 = add nsw i32 %21, 1, !dbg !112
  store i32 %inc33, i32* %i, align 4, !dbg !112
  br label %for.cond, !dbg !113, !llvm.loop !114

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !117
  call void @printIntLine(i32 %22), !dbg !118
  br label %if.end34, !dbg !119

if.end34:                                         ; preds = %for.end, %if.then26
  br label %if.end56, !dbg !120

if.else35:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata i32* %i36, metadata !121, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %n37, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata i32* %intVariable38, metadata !127, metadata !DIExpression()), !dbg !128
  %23 = load i8*, i8** %data, align 8, !dbg !129
  %call39 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n37) #7, !dbg !131
  %cmp40 = icmp eq i32 %call39, 1, !dbg !132
  br i1 %cmp40, label %if.then42, label %if.end55, !dbg !133

if.then42:                                        ; preds = %if.else35
  %24 = load i32, i32* %n37, align 4, !dbg !134
  %cmp43 = icmp slt i32 %24, 10000, !dbg !137
  br i1 %cmp43, label %if.then45, label %if.end54, !dbg !138

if.then45:                                        ; preds = %if.then42
  store i32 0, i32* %intVariable38, align 4, !dbg !139
  store i32 0, i32* %i36, align 4, !dbg !141
  br label %for.cond46, !dbg !143

for.cond46:                                       ; preds = %for.inc51, %if.then45
  %25 = load i32, i32* %i36, align 4, !dbg !144
  %26 = load i32, i32* %n37, align 4, !dbg !146
  %cmp47 = icmp slt i32 %25, %26, !dbg !147
  br i1 %cmp47, label %for.body49, label %for.end53, !dbg !148

for.body49:                                       ; preds = %for.cond46
  %27 = load i32, i32* %intVariable38, align 4, !dbg !149
  %inc50 = add nsw i32 %27, 1, !dbg !149
  store i32 %inc50, i32* %intVariable38, align 4, !dbg !149
  br label %for.inc51, !dbg !151

for.inc51:                                        ; preds = %for.body49
  %28 = load i32, i32* %i36, align 4, !dbg !152
  %inc52 = add nsw i32 %28, 1, !dbg !152
  store i32 %inc52, i32* %i36, align 4, !dbg !152
  br label %for.cond46, !dbg !153, !llvm.loop !154

for.end53:                                        ; preds = %for.cond46
  %29 = load i32, i32* %intVariable38, align 4, !dbg !156
  call void @printIntLine(i32 %29), !dbg !157
  br label %if.end54, !dbg !158

if.end54:                                         ; preds = %for.end53, %if.then42
  br label %if.end55, !dbg !159

if.end55:                                         ; preds = %if.end54, %if.else35
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end34
  ret void, !dbg !160
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @globalReturnsTrueOrFalse(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !161 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %dataLen22 = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i69 = alloca i32, align 4
  %n70 = alloca i32, align 4
  %intVariable71 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !164, metadata !DIExpression()), !dbg !165
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !165
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !165
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !166
  store i8* %arraydecay, i8** %data, align 8, !dbg !167
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !168
  %tobool = icmp ne i32 %call, 0, !dbg !168
  br i1 %tobool, label %if.then, label %if.else21, !dbg !170

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !171, metadata !DIExpression()), !dbg !174
  %1 = load i8*, i8** %data, align 8, !dbg !175
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !176
  store i64 %call1, i64* %dataLen, align 8, !dbg !174
  %2 = load i64, i64* %dataLen, align 8, !dbg !177
  %sub = sub i64 100, %2, !dbg !179
  %cmp = icmp ugt i64 %sub, 1, !dbg !180
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !181

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !182
  %4 = load i64, i64* %dataLen, align 8, !dbg !185
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !186
  %5 = load i64, i64* %dataLen, align 8, !dbg !187
  %sub3 = sub i64 100, %5, !dbg !188
  %conv = trunc i64 %sub3 to i32, !dbg !189
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !190
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !191
  %cmp5 = icmp ne i8* %call4, null, !dbg !192
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !193

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !194
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !196
  store i64 %call8, i64* %dataLen, align 8, !dbg !197
  %8 = load i64, i64* %dataLen, align 8, !dbg !198
  %cmp9 = icmp ugt i64 %8, 0, !dbg !200
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !201

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !202
  %10 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub11 = sub i64 %10, 1, !dbg !204
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !202
  %11 = load i8, i8* %arrayidx, align 1, !dbg !202
  %conv12 = sext i8 %11 to i32, !dbg !202
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !205
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !206

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !207
  %13 = load i64, i64* %dataLen, align 8, !dbg !209
  %sub16 = sub i64 %13, 1, !dbg !210
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !207
  store i8 0, i8* %arrayidx17, align 1, !dbg !211
  br label %if.end, !dbg !212

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !213

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !214
  %14 = load i8*, i8** %data, align 8, !dbg !216
  %15 = load i64, i64* %dataLen, align 8, !dbg !217
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !216
  store i8 0, i8* %arrayidx18, align 1, !dbg !218
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !219

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end52, !dbg !220

if.else21:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen22, metadata !221, metadata !DIExpression()), !dbg !224
  %16 = load i8*, i8** %data, align 8, !dbg !225
  %call23 = call i64 @strlen(i8* %16) #6, !dbg !226
  store i64 %call23, i64* %dataLen22, align 8, !dbg !224
  %17 = load i64, i64* %dataLen22, align 8, !dbg !227
  %sub24 = sub i64 100, %17, !dbg !229
  %cmp25 = icmp ugt i64 %sub24, 1, !dbg !230
  br i1 %cmp25, label %if.then27, label %if.end51, !dbg !231

if.then27:                                        ; preds = %if.else21
  %18 = load i8*, i8** %data, align 8, !dbg !232
  %19 = load i64, i64* %dataLen22, align 8, !dbg !235
  %add.ptr28 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !236
  %20 = load i64, i64* %dataLen22, align 8, !dbg !237
  %sub29 = sub i64 100, %20, !dbg !238
  %conv30 = trunc i64 %sub29 to i32, !dbg !239
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !240
  %call31 = call i8* @fgets(i8* %add.ptr28, i32 %conv30, %struct._IO_FILE* %21), !dbg !241
  %cmp32 = icmp ne i8* %call31, null, !dbg !242
  br i1 %cmp32, label %if.then34, label %if.else48, !dbg !243

if.then34:                                        ; preds = %if.then27
  %22 = load i8*, i8** %data, align 8, !dbg !244
  %call35 = call i64 @strlen(i8* %22) #6, !dbg !246
  store i64 %call35, i64* %dataLen22, align 8, !dbg !247
  %23 = load i64, i64* %dataLen22, align 8, !dbg !248
  %cmp36 = icmp ugt i64 %23, 0, !dbg !250
  br i1 %cmp36, label %land.lhs.true38, label %if.end47, !dbg !251

land.lhs.true38:                                  ; preds = %if.then34
  %24 = load i8*, i8** %data, align 8, !dbg !252
  %25 = load i64, i64* %dataLen22, align 8, !dbg !253
  %sub39 = sub i64 %25, 1, !dbg !254
  %arrayidx40 = getelementptr inbounds i8, i8* %24, i64 %sub39, !dbg !252
  %26 = load i8, i8* %arrayidx40, align 1, !dbg !252
  %conv41 = sext i8 %26 to i32, !dbg !252
  %cmp42 = icmp eq i32 %conv41, 10, !dbg !255
  br i1 %cmp42, label %if.then44, label %if.end47, !dbg !256

if.then44:                                        ; preds = %land.lhs.true38
  %27 = load i8*, i8** %data, align 8, !dbg !257
  %28 = load i64, i64* %dataLen22, align 8, !dbg !259
  %sub45 = sub i64 %28, 1, !dbg !260
  %arrayidx46 = getelementptr inbounds i8, i8* %27, i64 %sub45, !dbg !257
  store i8 0, i8* %arrayidx46, align 1, !dbg !261
  br label %if.end47, !dbg !262

if.end47:                                         ; preds = %if.then44, %land.lhs.true38, %if.then34
  br label %if.end50, !dbg !263

if.else48:                                        ; preds = %if.then27
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !264
  %29 = load i8*, i8** %data, align 8, !dbg !266
  %30 = load i64, i64* %dataLen22, align 8, !dbg !267
  %arrayidx49 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !266
  store i8 0, i8* %arrayidx49, align 1, !dbg !268
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.end47
  br label %if.end51, !dbg !269

if.end51:                                         ; preds = %if.end50, %if.else21
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end20
  %call53 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !270
  %tobool54 = icmp ne i32 %call53, 0, !dbg !270
  br i1 %tobool54, label %if.then55, label %if.else68, !dbg !272

if.then55:                                        ; preds = %if.end52
  call void @llvm.dbg.declare(metadata i32* %i, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i32* %n, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !279, metadata !DIExpression()), !dbg !280
  %31 = load i8*, i8** %data, align 8, !dbg !281
  %call56 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #7, !dbg !283
  %cmp57 = icmp eq i32 %call56, 1, !dbg !284
  br i1 %cmp57, label %if.then59, label %if.end67, !dbg !285

if.then59:                                        ; preds = %if.then55
  %32 = load i32, i32* %n, align 4, !dbg !286
  %cmp60 = icmp slt i32 %32, 10000, !dbg !289
  br i1 %cmp60, label %if.then62, label %if.end66, !dbg !290

if.then62:                                        ; preds = %if.then59
  store i32 0, i32* %intVariable, align 4, !dbg !291
  store i32 0, i32* %i, align 4, !dbg !293
  br label %for.cond, !dbg !295

for.cond:                                         ; preds = %for.inc, %if.then62
  %33 = load i32, i32* %i, align 4, !dbg !296
  %34 = load i32, i32* %n, align 4, !dbg !298
  %cmp63 = icmp slt i32 %33, %34, !dbg !299
  br i1 %cmp63, label %for.body, label %for.end, !dbg !300

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %intVariable, align 4, !dbg !301
  %inc = add nsw i32 %35, 1, !dbg !301
  store i32 %inc, i32* %intVariable, align 4, !dbg !301
  br label %for.inc, !dbg !303

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !dbg !304
  %inc65 = add nsw i32 %36, 1, !dbg !304
  store i32 %inc65, i32* %i, align 4, !dbg !304
  br label %for.cond, !dbg !305, !llvm.loop !306

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %intVariable, align 4, !dbg !308
  call void @printIntLine(i32 %37), !dbg !309
  br label %if.end66, !dbg !310

if.end66:                                         ; preds = %for.end, %if.then59
  br label %if.end67, !dbg !311

if.end67:                                         ; preds = %if.end66, %if.then55
  br label %if.end89, !dbg !312

if.else68:                                        ; preds = %if.end52
  call void @llvm.dbg.declare(metadata i32* %i69, metadata !313, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata i32* %n70, metadata !317, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.declare(metadata i32* %intVariable71, metadata !319, metadata !DIExpression()), !dbg !320
  %38 = load i8*, i8** %data, align 8, !dbg !321
  %call72 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n70) #7, !dbg !323
  %cmp73 = icmp eq i32 %call72, 1, !dbg !324
  br i1 %cmp73, label %if.then75, label %if.end88, !dbg !325

if.then75:                                        ; preds = %if.else68
  %39 = load i32, i32* %n70, align 4, !dbg !326
  %cmp76 = icmp slt i32 %39, 10000, !dbg !329
  br i1 %cmp76, label %if.then78, label %if.end87, !dbg !330

if.then78:                                        ; preds = %if.then75
  store i32 0, i32* %intVariable71, align 4, !dbg !331
  store i32 0, i32* %i69, align 4, !dbg !333
  br label %for.cond79, !dbg !335

for.cond79:                                       ; preds = %for.inc84, %if.then78
  %40 = load i32, i32* %i69, align 4, !dbg !336
  %41 = load i32, i32* %n70, align 4, !dbg !338
  %cmp80 = icmp slt i32 %40, %41, !dbg !339
  br i1 %cmp80, label %for.body82, label %for.end86, !dbg !340

for.body82:                                       ; preds = %for.cond79
  %42 = load i32, i32* %intVariable71, align 4, !dbg !341
  %inc83 = add nsw i32 %42, 1, !dbg !341
  store i32 %inc83, i32* %intVariable71, align 4, !dbg !341
  br label %for.inc84, !dbg !343

for.inc84:                                        ; preds = %for.body82
  %43 = load i32, i32* %i69, align 4, !dbg !344
  %inc85 = add nsw i32 %43, 1, !dbg !344
  store i32 %inc85, i32* %i69, align 4, !dbg !344
  br label %for.cond79, !dbg !345, !llvm.loop !346

for.end86:                                        ; preds = %for.cond79
  %44 = load i32, i32* %intVariable71, align 4, !dbg !348
  call void @printIntLine(i32 %44), !dbg !349
  br label %if.end87, !dbg !350

if.end87:                                         ; preds = %for.end86, %if.then75
  br label %if.end88, !dbg !351

if.end88:                                         ; preds = %if.end87, %if.else68
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end67
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !353 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i12 = alloca i32, align 4
  %n13 = alloca i32, align 4
  %intVariable14 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !354, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !357
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !357
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !358
  store i8* %arraydecay, i8** %data, align 8, !dbg !359
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !360
  %tobool = icmp ne i32 %call, 0, !dbg !360
  br i1 %tobool, label %if.then, label %if.else, !dbg !362

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !363
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !365
  br label %if.end, !dbg !366

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !367
  %call2 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !369
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !370
  %tobool4 = icmp ne i32 %call3, 0, !dbg !370
  br i1 %tobool4, label %if.then5, label %if.else11, !dbg !372

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !373, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata i32* %n, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !379, metadata !DIExpression()), !dbg !380
  %3 = load i8*, i8** %data, align 8, !dbg !381
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #7, !dbg !383
  %cmp = icmp eq i32 %call6, 1, !dbg !384
  br i1 %cmp, label %if.then7, label %if.end10, !dbg !385

if.then7:                                         ; preds = %if.then5
  store i32 0, i32* %intVariable, align 4, !dbg !386
  store i32 0, i32* %i, align 4, !dbg !388
  br label %for.cond, !dbg !390

for.cond:                                         ; preds = %for.inc, %if.then7
  %4 = load i32, i32* %i, align 4, !dbg !391
  %5 = load i32, i32* %n, align 4, !dbg !393
  %cmp8 = icmp slt i32 %4, %5, !dbg !394
  br i1 %cmp8, label %for.body, label %for.end, !dbg !395

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !396
  %inc = add nsw i32 %6, 1, !dbg !396
  store i32 %inc, i32* %intVariable, align 4, !dbg !396
  br label %for.inc, !dbg !398

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !399
  %inc9 = add nsw i32 %7, 1, !dbg !399
  store i32 %inc9, i32* %i, align 4, !dbg !399
  br label %for.cond, !dbg !400, !llvm.loop !401

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !403
  call void @printIntLine(i32 %8), !dbg !404
  br label %if.end10, !dbg !405

if.end10:                                         ; preds = %for.end, %if.then5
  br label %if.end26, !dbg !406

if.else11:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i12, metadata !407, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata i32* %n13, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata i32* %intVariable14, metadata !413, metadata !DIExpression()), !dbg !414
  %9 = load i8*, i8** %data, align 8, !dbg !415
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n13) #7, !dbg !417
  %cmp16 = icmp eq i32 %call15, 1, !dbg !418
  br i1 %cmp16, label %if.then17, label %if.end25, !dbg !419

if.then17:                                        ; preds = %if.else11
  store i32 0, i32* %intVariable14, align 4, !dbg !420
  store i32 0, i32* %i12, align 4, !dbg !422
  br label %for.cond18, !dbg !424

for.cond18:                                       ; preds = %for.inc22, %if.then17
  %10 = load i32, i32* %i12, align 4, !dbg !425
  %11 = load i32, i32* %n13, align 4, !dbg !427
  %cmp19 = icmp slt i32 %10, %11, !dbg !428
  br i1 %cmp19, label %for.body20, label %for.end24, !dbg !429

for.body20:                                       ; preds = %for.cond18
  %12 = load i32, i32* %intVariable14, align 4, !dbg !430
  %inc21 = add nsw i32 %12, 1, !dbg !430
  store i32 %inc21, i32* %intVariable14, align 4, !dbg !430
  br label %for.inc22, !dbg !432

for.inc22:                                        ; preds = %for.body20
  %13 = load i32, i32* %i12, align 4, !dbg !433
  %inc23 = add nsw i32 %13, 1, !dbg !433
  store i32 %inc23, i32* %i12, align 4, !dbg !433
  br label %for.cond18, !dbg !434, !llvm.loop !435

for.end24:                                        ; preds = %for.cond18
  %14 = load i32, i32* %intVariable14, align 4, !dbg !437
  call void @printIntLine(i32 %14), !dbg !438
  br label %if.end25, !dbg !439

if.end25:                                         ; preds = %for.end24, %if.else11
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end10
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_12_good() #0 !dbg !441 {
entry:
  call void @goodB2G(), !dbg !442
  call void @goodG2B(), !dbg !443
  ret void, !dbg !444
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_989/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_12_bad", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 31, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 31, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 32, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 32, column: 10, scope: !10)
!22 = !DILocation(line: 33, column: 12, scope: !10)
!23 = !DILocation(line: 33, column: 10, scope: !10)
!24 = !DILocation(line: 34, column: 8, scope: !25)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 34, column: 8)
!26 = !DILocation(line: 34, column: 8, scope: !10)
!27 = !DILocalVariable(name: "dataLen", scope: !28, file: !1, line: 38, type: !30)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 36, column: 9)
!29 = distinct !DILexicalBlock(scope: !25, file: !1, line: 35, column: 5)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 38, column: 20, scope: !28)
!34 = !DILocation(line: 38, column: 37, scope: !28)
!35 = !DILocation(line: 38, column: 30, scope: !28)
!36 = !DILocation(line: 40, column: 21, scope: !37)
!37 = distinct !DILexicalBlock(scope: !28, file: !1, line: 40, column: 17)
!38 = !DILocation(line: 40, column: 20, scope: !37)
!39 = !DILocation(line: 40, column: 29, scope: !37)
!40 = !DILocation(line: 40, column: 17, scope: !28)
!41 = !DILocation(line: 43, column: 27, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 43, column: 21)
!43 = distinct !DILexicalBlock(scope: !37, file: !1, line: 41, column: 13)
!44 = !DILocation(line: 43, column: 32, scope: !42)
!45 = !DILocation(line: 43, column: 31, scope: !42)
!46 = !DILocation(line: 43, column: 51, scope: !42)
!47 = !DILocation(line: 43, column: 50, scope: !42)
!48 = !DILocation(line: 43, column: 41, scope: !42)
!49 = !DILocation(line: 43, column: 61, scope: !42)
!50 = !DILocation(line: 43, column: 21, scope: !42)
!51 = !DILocation(line: 43, column: 68, scope: !42)
!52 = !DILocation(line: 43, column: 21, scope: !43)
!53 = !DILocation(line: 47, column: 38, scope: !54)
!54 = distinct !DILexicalBlock(scope: !42, file: !1, line: 44, column: 17)
!55 = !DILocation(line: 47, column: 31, scope: !54)
!56 = !DILocation(line: 47, column: 29, scope: !54)
!57 = !DILocation(line: 48, column: 25, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 48, column: 25)
!59 = !DILocation(line: 48, column: 33, scope: !58)
!60 = !DILocation(line: 48, column: 37, scope: !58)
!61 = !DILocation(line: 48, column: 40, scope: !58)
!62 = !DILocation(line: 48, column: 45, scope: !58)
!63 = !DILocation(line: 48, column: 52, scope: !58)
!64 = !DILocation(line: 48, column: 56, scope: !58)
!65 = !DILocation(line: 48, column: 25, scope: !54)
!66 = !DILocation(line: 50, column: 25, scope: !67)
!67 = distinct !DILexicalBlock(scope: !58, file: !1, line: 49, column: 21)
!68 = !DILocation(line: 50, column: 30, scope: !67)
!69 = !DILocation(line: 50, column: 37, scope: !67)
!70 = !DILocation(line: 50, column: 41, scope: !67)
!71 = !DILocation(line: 51, column: 21, scope: !67)
!72 = !DILocation(line: 52, column: 17, scope: !54)
!73 = !DILocation(line: 55, column: 21, scope: !74)
!74 = distinct !DILexicalBlock(scope: !42, file: !1, line: 54, column: 17)
!75 = !DILocation(line: 57, column: 21, scope: !74)
!76 = !DILocation(line: 57, column: 26, scope: !74)
!77 = !DILocation(line: 57, column: 35, scope: !74)
!78 = !DILocation(line: 59, column: 13, scope: !43)
!79 = !DILocation(line: 61, column: 5, scope: !29)
!80 = !DILocation(line: 65, column: 16, scope: !81)
!81 = distinct !DILexicalBlock(scope: !25, file: !1, line: 63, column: 5)
!82 = !DILocation(line: 65, column: 9, scope: !81)
!83 = !DILocation(line: 67, column: 8, scope: !84)
!84 = distinct !DILexicalBlock(scope: !10, file: !1, line: 67, column: 8)
!85 = !DILocation(line: 67, column: 8, scope: !10)
!86 = !DILocalVariable(name: "i", scope: !87, file: !1, line: 70, type: !4)
!87 = distinct !DILexicalBlock(scope: !88, file: !1, line: 69, column: 9)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 68, column: 5)
!89 = !DILocation(line: 70, column: 17, scope: !87)
!90 = !DILocalVariable(name: "n", scope: !87, file: !1, line: 70, type: !4)
!91 = !DILocation(line: 70, column: 20, scope: !87)
!92 = !DILocalVariable(name: "intVariable", scope: !87, file: !1, line: 70, type: !4)
!93 = !DILocation(line: 70, column: 23, scope: !87)
!94 = !DILocation(line: 71, column: 24, scope: !95)
!95 = distinct !DILexicalBlock(scope: !87, file: !1, line: 71, column: 17)
!96 = !DILocation(line: 71, column: 17, scope: !95)
!97 = !DILocation(line: 71, column: 40, scope: !95)
!98 = !DILocation(line: 71, column: 17, scope: !87)
!99 = !DILocation(line: 74, column: 29, scope: !100)
!100 = distinct !DILexicalBlock(scope: !95, file: !1, line: 72, column: 13)
!101 = !DILocation(line: 75, column: 24, scope: !102)
!102 = distinct !DILexicalBlock(scope: !100, file: !1, line: 75, column: 17)
!103 = !DILocation(line: 75, column: 22, scope: !102)
!104 = !DILocation(line: 75, column: 29, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !1, line: 75, column: 17)
!106 = !DILocation(line: 75, column: 33, scope: !105)
!107 = !DILocation(line: 75, column: 31, scope: !105)
!108 = !DILocation(line: 75, column: 17, scope: !102)
!109 = !DILocation(line: 78, column: 32, scope: !110)
!110 = distinct !DILexicalBlock(scope: !105, file: !1, line: 76, column: 17)
!111 = !DILocation(line: 79, column: 17, scope: !110)
!112 = !DILocation(line: 75, column: 37, scope: !105)
!113 = !DILocation(line: 75, column: 17, scope: !105)
!114 = distinct !{!114, !108, !115, !116}
!115 = !DILocation(line: 79, column: 17, scope: !102)
!116 = !{!"llvm.loop.mustprogress"}
!117 = !DILocation(line: 80, column: 30, scope: !100)
!118 = !DILocation(line: 80, column: 17, scope: !100)
!119 = !DILocation(line: 81, column: 13, scope: !100)
!120 = !DILocation(line: 83, column: 5, scope: !88)
!121 = !DILocalVariable(name: "i", scope: !122, file: !1, line: 87, type: !4)
!122 = distinct !DILexicalBlock(scope: !123, file: !1, line: 86, column: 9)
!123 = distinct !DILexicalBlock(scope: !84, file: !1, line: 85, column: 5)
!124 = !DILocation(line: 87, column: 17, scope: !122)
!125 = !DILocalVariable(name: "n", scope: !122, file: !1, line: 87, type: !4)
!126 = !DILocation(line: 87, column: 20, scope: !122)
!127 = !DILocalVariable(name: "intVariable", scope: !122, file: !1, line: 87, type: !4)
!128 = !DILocation(line: 87, column: 23, scope: !122)
!129 = !DILocation(line: 88, column: 24, scope: !130)
!130 = distinct !DILexicalBlock(scope: !122, file: !1, line: 88, column: 17)
!131 = !DILocation(line: 88, column: 17, scope: !130)
!132 = !DILocation(line: 88, column: 40, scope: !130)
!133 = !DILocation(line: 88, column: 17, scope: !122)
!134 = !DILocation(line: 91, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !1, line: 91, column: 21)
!136 = distinct !DILexicalBlock(scope: !130, file: !1, line: 89, column: 13)
!137 = !DILocation(line: 91, column: 23, scope: !135)
!138 = !DILocation(line: 91, column: 21, scope: !136)
!139 = !DILocation(line: 93, column: 33, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !1, line: 92, column: 17)
!141 = !DILocation(line: 94, column: 28, scope: !142)
!142 = distinct !DILexicalBlock(scope: !140, file: !1, line: 94, column: 21)
!143 = !DILocation(line: 94, column: 26, scope: !142)
!144 = !DILocation(line: 94, column: 33, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 94, column: 21)
!146 = !DILocation(line: 94, column: 37, scope: !145)
!147 = !DILocation(line: 94, column: 35, scope: !145)
!148 = !DILocation(line: 94, column: 21, scope: !142)
!149 = !DILocation(line: 97, column: 36, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !1, line: 95, column: 21)
!151 = !DILocation(line: 98, column: 21, scope: !150)
!152 = !DILocation(line: 94, column: 41, scope: !145)
!153 = !DILocation(line: 94, column: 21, scope: !145)
!154 = distinct !{!154, !148, !155, !116}
!155 = !DILocation(line: 98, column: 21, scope: !142)
!156 = !DILocation(line: 99, column: 34, scope: !140)
!157 = !DILocation(line: 99, column: 21, scope: !140)
!158 = !DILocation(line: 100, column: 17, scope: !140)
!159 = !DILocation(line: 101, column: 13, scope: !136)
!160 = !DILocation(line: 104, column: 1, scope: !10)
!161 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 113, type: !11, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!162 = !DILocalVariable(name: "data", scope: !161, file: !1, line: 115, type: !14)
!163 = !DILocation(line: 115, column: 12, scope: !161)
!164 = !DILocalVariable(name: "dataBuffer", scope: !161, file: !1, line: 116, type: !18)
!165 = !DILocation(line: 116, column: 10, scope: !161)
!166 = !DILocation(line: 117, column: 12, scope: !161)
!167 = !DILocation(line: 117, column: 10, scope: !161)
!168 = !DILocation(line: 118, column: 8, scope: !169)
!169 = distinct !DILexicalBlock(scope: !161, file: !1, line: 118, column: 8)
!170 = !DILocation(line: 118, column: 8, scope: !161)
!171 = !DILocalVariable(name: "dataLen", scope: !172, file: !1, line: 122, type: !30)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 120, column: 9)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 119, column: 5)
!174 = !DILocation(line: 122, column: 20, scope: !172)
!175 = !DILocation(line: 122, column: 37, scope: !172)
!176 = !DILocation(line: 122, column: 30, scope: !172)
!177 = !DILocation(line: 124, column: 21, scope: !178)
!178 = distinct !DILexicalBlock(scope: !172, file: !1, line: 124, column: 17)
!179 = !DILocation(line: 124, column: 20, scope: !178)
!180 = !DILocation(line: 124, column: 29, scope: !178)
!181 = !DILocation(line: 124, column: 17, scope: !172)
!182 = !DILocation(line: 127, column: 27, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 127, column: 21)
!184 = distinct !DILexicalBlock(scope: !178, file: !1, line: 125, column: 13)
!185 = !DILocation(line: 127, column: 32, scope: !183)
!186 = !DILocation(line: 127, column: 31, scope: !183)
!187 = !DILocation(line: 127, column: 51, scope: !183)
!188 = !DILocation(line: 127, column: 50, scope: !183)
!189 = !DILocation(line: 127, column: 41, scope: !183)
!190 = !DILocation(line: 127, column: 61, scope: !183)
!191 = !DILocation(line: 127, column: 21, scope: !183)
!192 = !DILocation(line: 127, column: 68, scope: !183)
!193 = !DILocation(line: 127, column: 21, scope: !184)
!194 = !DILocation(line: 131, column: 38, scope: !195)
!195 = distinct !DILexicalBlock(scope: !183, file: !1, line: 128, column: 17)
!196 = !DILocation(line: 131, column: 31, scope: !195)
!197 = !DILocation(line: 131, column: 29, scope: !195)
!198 = !DILocation(line: 132, column: 25, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 132, column: 25)
!200 = !DILocation(line: 132, column: 33, scope: !199)
!201 = !DILocation(line: 132, column: 37, scope: !199)
!202 = !DILocation(line: 132, column: 40, scope: !199)
!203 = !DILocation(line: 132, column: 45, scope: !199)
!204 = !DILocation(line: 132, column: 52, scope: !199)
!205 = !DILocation(line: 132, column: 56, scope: !199)
!206 = !DILocation(line: 132, column: 25, scope: !195)
!207 = !DILocation(line: 134, column: 25, scope: !208)
!208 = distinct !DILexicalBlock(scope: !199, file: !1, line: 133, column: 21)
!209 = !DILocation(line: 134, column: 30, scope: !208)
!210 = !DILocation(line: 134, column: 37, scope: !208)
!211 = !DILocation(line: 134, column: 41, scope: !208)
!212 = !DILocation(line: 135, column: 21, scope: !208)
!213 = !DILocation(line: 136, column: 17, scope: !195)
!214 = !DILocation(line: 139, column: 21, scope: !215)
!215 = distinct !DILexicalBlock(scope: !183, file: !1, line: 138, column: 17)
!216 = !DILocation(line: 141, column: 21, scope: !215)
!217 = !DILocation(line: 141, column: 26, scope: !215)
!218 = !DILocation(line: 141, column: 35, scope: !215)
!219 = !DILocation(line: 143, column: 13, scope: !184)
!220 = !DILocation(line: 145, column: 5, scope: !173)
!221 = !DILocalVariable(name: "dataLen", scope: !222, file: !1, line: 150, type: !30)
!222 = distinct !DILexicalBlock(scope: !223, file: !1, line: 148, column: 9)
!223 = distinct !DILexicalBlock(scope: !169, file: !1, line: 147, column: 5)
!224 = !DILocation(line: 150, column: 20, scope: !222)
!225 = !DILocation(line: 150, column: 37, scope: !222)
!226 = !DILocation(line: 150, column: 30, scope: !222)
!227 = !DILocation(line: 152, column: 21, scope: !228)
!228 = distinct !DILexicalBlock(scope: !222, file: !1, line: 152, column: 17)
!229 = !DILocation(line: 152, column: 20, scope: !228)
!230 = !DILocation(line: 152, column: 29, scope: !228)
!231 = !DILocation(line: 152, column: 17, scope: !222)
!232 = !DILocation(line: 155, column: 27, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !1, line: 155, column: 21)
!234 = distinct !DILexicalBlock(scope: !228, file: !1, line: 153, column: 13)
!235 = !DILocation(line: 155, column: 32, scope: !233)
!236 = !DILocation(line: 155, column: 31, scope: !233)
!237 = !DILocation(line: 155, column: 51, scope: !233)
!238 = !DILocation(line: 155, column: 50, scope: !233)
!239 = !DILocation(line: 155, column: 41, scope: !233)
!240 = !DILocation(line: 155, column: 61, scope: !233)
!241 = !DILocation(line: 155, column: 21, scope: !233)
!242 = !DILocation(line: 155, column: 68, scope: !233)
!243 = !DILocation(line: 155, column: 21, scope: !234)
!244 = !DILocation(line: 159, column: 38, scope: !245)
!245 = distinct !DILexicalBlock(scope: !233, file: !1, line: 156, column: 17)
!246 = !DILocation(line: 159, column: 31, scope: !245)
!247 = !DILocation(line: 159, column: 29, scope: !245)
!248 = !DILocation(line: 160, column: 25, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !1, line: 160, column: 25)
!250 = !DILocation(line: 160, column: 33, scope: !249)
!251 = !DILocation(line: 160, column: 37, scope: !249)
!252 = !DILocation(line: 160, column: 40, scope: !249)
!253 = !DILocation(line: 160, column: 45, scope: !249)
!254 = !DILocation(line: 160, column: 52, scope: !249)
!255 = !DILocation(line: 160, column: 56, scope: !249)
!256 = !DILocation(line: 160, column: 25, scope: !245)
!257 = !DILocation(line: 162, column: 25, scope: !258)
!258 = distinct !DILexicalBlock(scope: !249, file: !1, line: 161, column: 21)
!259 = !DILocation(line: 162, column: 30, scope: !258)
!260 = !DILocation(line: 162, column: 37, scope: !258)
!261 = !DILocation(line: 162, column: 41, scope: !258)
!262 = !DILocation(line: 163, column: 21, scope: !258)
!263 = !DILocation(line: 164, column: 17, scope: !245)
!264 = !DILocation(line: 167, column: 21, scope: !265)
!265 = distinct !DILexicalBlock(scope: !233, file: !1, line: 166, column: 17)
!266 = !DILocation(line: 169, column: 21, scope: !265)
!267 = !DILocation(line: 169, column: 26, scope: !265)
!268 = !DILocation(line: 169, column: 35, scope: !265)
!269 = !DILocation(line: 171, column: 13, scope: !234)
!270 = !DILocation(line: 174, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !161, file: !1, line: 174, column: 8)
!272 = !DILocation(line: 174, column: 8, scope: !161)
!273 = !DILocalVariable(name: "i", scope: !274, file: !1, line: 177, type: !4)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 176, column: 9)
!275 = distinct !DILexicalBlock(scope: !271, file: !1, line: 175, column: 5)
!276 = !DILocation(line: 177, column: 17, scope: !274)
!277 = !DILocalVariable(name: "n", scope: !274, file: !1, line: 177, type: !4)
!278 = !DILocation(line: 177, column: 20, scope: !274)
!279 = !DILocalVariable(name: "intVariable", scope: !274, file: !1, line: 177, type: !4)
!280 = !DILocation(line: 177, column: 23, scope: !274)
!281 = !DILocation(line: 178, column: 24, scope: !282)
!282 = distinct !DILexicalBlock(scope: !274, file: !1, line: 178, column: 17)
!283 = !DILocation(line: 178, column: 17, scope: !282)
!284 = !DILocation(line: 178, column: 40, scope: !282)
!285 = !DILocation(line: 178, column: 17, scope: !274)
!286 = !DILocation(line: 181, column: 21, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !1, line: 181, column: 21)
!288 = distinct !DILexicalBlock(scope: !282, file: !1, line: 179, column: 13)
!289 = !DILocation(line: 181, column: 23, scope: !287)
!290 = !DILocation(line: 181, column: 21, scope: !288)
!291 = !DILocation(line: 183, column: 33, scope: !292)
!292 = distinct !DILexicalBlock(scope: !287, file: !1, line: 182, column: 17)
!293 = !DILocation(line: 184, column: 28, scope: !294)
!294 = distinct !DILexicalBlock(scope: !292, file: !1, line: 184, column: 21)
!295 = !DILocation(line: 184, column: 26, scope: !294)
!296 = !DILocation(line: 184, column: 33, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !1, line: 184, column: 21)
!298 = !DILocation(line: 184, column: 37, scope: !297)
!299 = !DILocation(line: 184, column: 35, scope: !297)
!300 = !DILocation(line: 184, column: 21, scope: !294)
!301 = !DILocation(line: 187, column: 36, scope: !302)
!302 = distinct !DILexicalBlock(scope: !297, file: !1, line: 185, column: 21)
!303 = !DILocation(line: 188, column: 21, scope: !302)
!304 = !DILocation(line: 184, column: 41, scope: !297)
!305 = !DILocation(line: 184, column: 21, scope: !297)
!306 = distinct !{!306, !300, !307, !116}
!307 = !DILocation(line: 188, column: 21, scope: !294)
!308 = !DILocation(line: 189, column: 34, scope: !292)
!309 = !DILocation(line: 189, column: 21, scope: !292)
!310 = !DILocation(line: 190, column: 17, scope: !292)
!311 = !DILocation(line: 191, column: 13, scope: !288)
!312 = !DILocation(line: 193, column: 5, scope: !275)
!313 = !DILocalVariable(name: "i", scope: !314, file: !1, line: 197, type: !4)
!314 = distinct !DILexicalBlock(scope: !315, file: !1, line: 196, column: 9)
!315 = distinct !DILexicalBlock(scope: !271, file: !1, line: 195, column: 5)
!316 = !DILocation(line: 197, column: 17, scope: !314)
!317 = !DILocalVariable(name: "n", scope: !314, file: !1, line: 197, type: !4)
!318 = !DILocation(line: 197, column: 20, scope: !314)
!319 = !DILocalVariable(name: "intVariable", scope: !314, file: !1, line: 197, type: !4)
!320 = !DILocation(line: 197, column: 23, scope: !314)
!321 = !DILocation(line: 198, column: 24, scope: !322)
!322 = distinct !DILexicalBlock(scope: !314, file: !1, line: 198, column: 17)
!323 = !DILocation(line: 198, column: 17, scope: !322)
!324 = !DILocation(line: 198, column: 40, scope: !322)
!325 = !DILocation(line: 198, column: 17, scope: !314)
!326 = !DILocation(line: 201, column: 21, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !1, line: 201, column: 21)
!328 = distinct !DILexicalBlock(scope: !322, file: !1, line: 199, column: 13)
!329 = !DILocation(line: 201, column: 23, scope: !327)
!330 = !DILocation(line: 201, column: 21, scope: !328)
!331 = !DILocation(line: 203, column: 33, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !1, line: 202, column: 17)
!333 = !DILocation(line: 204, column: 28, scope: !334)
!334 = distinct !DILexicalBlock(scope: !332, file: !1, line: 204, column: 21)
!335 = !DILocation(line: 204, column: 26, scope: !334)
!336 = !DILocation(line: 204, column: 33, scope: !337)
!337 = distinct !DILexicalBlock(scope: !334, file: !1, line: 204, column: 21)
!338 = !DILocation(line: 204, column: 37, scope: !337)
!339 = !DILocation(line: 204, column: 35, scope: !337)
!340 = !DILocation(line: 204, column: 21, scope: !334)
!341 = !DILocation(line: 207, column: 36, scope: !342)
!342 = distinct !DILexicalBlock(scope: !337, file: !1, line: 205, column: 21)
!343 = !DILocation(line: 208, column: 21, scope: !342)
!344 = !DILocation(line: 204, column: 41, scope: !337)
!345 = !DILocation(line: 204, column: 21, scope: !337)
!346 = distinct !{!346, !340, !347, !116}
!347 = !DILocation(line: 208, column: 21, scope: !334)
!348 = !DILocation(line: 209, column: 34, scope: !332)
!349 = !DILocation(line: 209, column: 21, scope: !332)
!350 = !DILocation(line: 210, column: 17, scope: !332)
!351 = !DILocation(line: 211, column: 13, scope: !328)
!352 = !DILocation(line: 214, column: 1, scope: !161)
!353 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 219, type: !11, scopeLine: 220, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!354 = !DILocalVariable(name: "data", scope: !353, file: !1, line: 221, type: !14)
!355 = !DILocation(line: 221, column: 12, scope: !353)
!356 = !DILocalVariable(name: "dataBuffer", scope: !353, file: !1, line: 222, type: !18)
!357 = !DILocation(line: 222, column: 10, scope: !353)
!358 = !DILocation(line: 223, column: 12, scope: !353)
!359 = !DILocation(line: 223, column: 10, scope: !353)
!360 = !DILocation(line: 224, column: 8, scope: !361)
!361 = distinct !DILexicalBlock(scope: !353, file: !1, line: 224, column: 8)
!362 = !DILocation(line: 224, column: 8, scope: !353)
!363 = !DILocation(line: 227, column: 16, scope: !364)
!364 = distinct !DILexicalBlock(scope: !361, file: !1, line: 225, column: 5)
!365 = !DILocation(line: 227, column: 9, scope: !364)
!366 = !DILocation(line: 228, column: 5, scope: !364)
!367 = !DILocation(line: 232, column: 16, scope: !368)
!368 = distinct !DILexicalBlock(scope: !361, file: !1, line: 230, column: 5)
!369 = !DILocation(line: 232, column: 9, scope: !368)
!370 = !DILocation(line: 234, column: 8, scope: !371)
!371 = distinct !DILexicalBlock(scope: !353, file: !1, line: 234, column: 8)
!372 = !DILocation(line: 234, column: 8, scope: !353)
!373 = !DILocalVariable(name: "i", scope: !374, file: !1, line: 237, type: !4)
!374 = distinct !DILexicalBlock(scope: !375, file: !1, line: 236, column: 9)
!375 = distinct !DILexicalBlock(scope: !371, file: !1, line: 235, column: 5)
!376 = !DILocation(line: 237, column: 17, scope: !374)
!377 = !DILocalVariable(name: "n", scope: !374, file: !1, line: 237, type: !4)
!378 = !DILocation(line: 237, column: 20, scope: !374)
!379 = !DILocalVariable(name: "intVariable", scope: !374, file: !1, line: 237, type: !4)
!380 = !DILocation(line: 237, column: 23, scope: !374)
!381 = !DILocation(line: 238, column: 24, scope: !382)
!382 = distinct !DILexicalBlock(scope: !374, file: !1, line: 238, column: 17)
!383 = !DILocation(line: 238, column: 17, scope: !382)
!384 = !DILocation(line: 238, column: 40, scope: !382)
!385 = !DILocation(line: 238, column: 17, scope: !374)
!386 = !DILocation(line: 241, column: 29, scope: !387)
!387 = distinct !DILexicalBlock(scope: !382, file: !1, line: 239, column: 13)
!388 = !DILocation(line: 242, column: 24, scope: !389)
!389 = distinct !DILexicalBlock(scope: !387, file: !1, line: 242, column: 17)
!390 = !DILocation(line: 242, column: 22, scope: !389)
!391 = !DILocation(line: 242, column: 29, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !1, line: 242, column: 17)
!393 = !DILocation(line: 242, column: 33, scope: !392)
!394 = !DILocation(line: 242, column: 31, scope: !392)
!395 = !DILocation(line: 242, column: 17, scope: !389)
!396 = !DILocation(line: 245, column: 32, scope: !397)
!397 = distinct !DILexicalBlock(scope: !392, file: !1, line: 243, column: 17)
!398 = !DILocation(line: 246, column: 17, scope: !397)
!399 = !DILocation(line: 242, column: 37, scope: !392)
!400 = !DILocation(line: 242, column: 17, scope: !392)
!401 = distinct !{!401, !395, !402, !116}
!402 = !DILocation(line: 246, column: 17, scope: !389)
!403 = !DILocation(line: 247, column: 30, scope: !387)
!404 = !DILocation(line: 247, column: 17, scope: !387)
!405 = !DILocation(line: 248, column: 13, scope: !387)
!406 = !DILocation(line: 250, column: 5, scope: !375)
!407 = !DILocalVariable(name: "i", scope: !408, file: !1, line: 254, type: !4)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 253, column: 9)
!409 = distinct !DILexicalBlock(scope: !371, file: !1, line: 252, column: 5)
!410 = !DILocation(line: 254, column: 17, scope: !408)
!411 = !DILocalVariable(name: "n", scope: !408, file: !1, line: 254, type: !4)
!412 = !DILocation(line: 254, column: 20, scope: !408)
!413 = !DILocalVariable(name: "intVariable", scope: !408, file: !1, line: 254, type: !4)
!414 = !DILocation(line: 254, column: 23, scope: !408)
!415 = !DILocation(line: 255, column: 24, scope: !416)
!416 = distinct !DILexicalBlock(scope: !408, file: !1, line: 255, column: 17)
!417 = !DILocation(line: 255, column: 17, scope: !416)
!418 = !DILocation(line: 255, column: 40, scope: !416)
!419 = !DILocation(line: 255, column: 17, scope: !408)
!420 = !DILocation(line: 258, column: 29, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !1, line: 256, column: 13)
!422 = !DILocation(line: 259, column: 24, scope: !423)
!423 = distinct !DILexicalBlock(scope: !421, file: !1, line: 259, column: 17)
!424 = !DILocation(line: 259, column: 22, scope: !423)
!425 = !DILocation(line: 259, column: 29, scope: !426)
!426 = distinct !DILexicalBlock(scope: !423, file: !1, line: 259, column: 17)
!427 = !DILocation(line: 259, column: 33, scope: !426)
!428 = !DILocation(line: 259, column: 31, scope: !426)
!429 = !DILocation(line: 259, column: 17, scope: !423)
!430 = !DILocation(line: 262, column: 32, scope: !431)
!431 = distinct !DILexicalBlock(scope: !426, file: !1, line: 260, column: 17)
!432 = !DILocation(line: 263, column: 17, scope: !431)
!433 = !DILocation(line: 259, column: 37, scope: !426)
!434 = !DILocation(line: 259, column: 17, scope: !426)
!435 = distinct !{!435, !429, !436, !116}
!436 = !DILocation(line: 263, column: 17, scope: !423)
!437 = !DILocation(line: 264, column: 30, scope: !421)
!438 = !DILocation(line: 264, column: 17, scope: !421)
!439 = !DILocation(line: 265, column: 13, scope: !421)
!440 = !DILocation(line: 268, column: 1, scope: !353)
!441 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_12_good", scope: !1, file: !1, line: 270, type: !11, scopeLine: 271, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!442 = !DILocation(line: 272, column: 5, scope: !441)
!443 = !DILocation(line: 273, column: 5, scope: !441)
!444 = !DILocation(line: 274, column: 1, scope: !441)
