; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_06.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_06.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@STATIC_CONST_FIVE = dso_local global i32 5, align 4, !dbg !0
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_06_bad() #0 !dbg !13 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !16, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !20, metadata !DIExpression()), !dbg !24
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !24
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !24
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !25
  store i8* %arraydecay, i8** %data, align 8, !dbg !26
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !27
  %cmp = icmp eq i32 %1, 5, !dbg !29
  br i1 %cmp, label %if.then, label %if.end21, !dbg !30

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !31, metadata !DIExpression()), !dbg !37
  %2 = load i8*, i8** %data, align 8, !dbg !38
  %call = call i64 @strlen(i8* %2) #6, !dbg !39
  store i64 %call, i64* %dataLen, align 8, !dbg !37
  %3 = load i64, i64* %dataLen, align 8, !dbg !40
  %sub = sub i64 100, %3, !dbg !42
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !43
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !44

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !45
  %5 = load i64, i64* %dataLen, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !49
  %6 = load i64, i64* %dataLen, align 8, !dbg !50
  %sub3 = sub i64 100, %6, !dbg !51
  %conv = trunc i64 %sub3 to i32, !dbg !52
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !53
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !54
  %cmp5 = icmp ne i8* %call4, null, !dbg !55
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !56

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !57
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !59
  store i64 %call8, i64* %dataLen, align 8, !dbg !60
  %9 = load i64, i64* %dataLen, align 8, !dbg !61
  %cmp9 = icmp ugt i64 %9, 0, !dbg !63
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !64

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !65
  %11 = load i64, i64* %dataLen, align 8, !dbg !66
  %sub11 = sub i64 %11, 1, !dbg !67
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !65
  %12 = load i8, i8* %arrayidx, align 1, !dbg !65
  %conv12 = sext i8 %12 to i32, !dbg !65
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !68
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !69

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !70
  %14 = load i64, i64* %dataLen, align 8, !dbg !72
  %sub16 = sub i64 %14, 1, !dbg !73
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !70
  store i8 0, i8* %arrayidx17, align 1, !dbg !74
  br label %if.end, !dbg !75

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !76

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !77
  %15 = load i8*, i8** %data, align 8, !dbg !79
  %16 = load i64, i64* %dataLen, align 8, !dbg !80
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !79
  store i8 0, i8* %arrayidx18, align 1, !dbg !81
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !82

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !83

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !84
  %cmp22 = icmp eq i32 %17, 5, !dbg !86
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !87

if.then24:                                        ; preds = %if.end21
  %18 = load i8*, i8** %data, align 8, !dbg !88
  %call25 = call i32 (i8*, ...) @printf(i8* %18), !dbg !90
  br label %if.end26, !dbg !91

if.end26:                                         ; preds = %if.then24, %if.end21
  ret void, !dbg !92
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !93 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !96, metadata !DIExpression()), !dbg !97
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !97
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !97
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !98
  store i8* %arraydecay, i8** %data, align 8, !dbg !99
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !100
  %cmp = icmp eq i32 %1, 5, !dbg !102
  br i1 %cmp, label %if.then, label %if.end21, !dbg !103

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !104, metadata !DIExpression()), !dbg !107
  %2 = load i8*, i8** %data, align 8, !dbg !108
  %call = call i64 @strlen(i8* %2) #6, !dbg !109
  store i64 %call, i64* %dataLen, align 8, !dbg !107
  %3 = load i64, i64* %dataLen, align 8, !dbg !110
  %sub = sub i64 100, %3, !dbg !112
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !113
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !114

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !115
  %5 = load i64, i64* %dataLen, align 8, !dbg !118
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !119
  %6 = load i64, i64* %dataLen, align 8, !dbg !120
  %sub3 = sub i64 100, %6, !dbg !121
  %conv = trunc i64 %sub3 to i32, !dbg !122
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !123
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !124
  %cmp5 = icmp ne i8* %call4, null, !dbg !125
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !126

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !127
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !129
  store i64 %call8, i64* %dataLen, align 8, !dbg !130
  %9 = load i64, i64* %dataLen, align 8, !dbg !131
  %cmp9 = icmp ugt i64 %9, 0, !dbg !133
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !134

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !135
  %11 = load i64, i64* %dataLen, align 8, !dbg !136
  %sub11 = sub i64 %11, 1, !dbg !137
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !135
  %12 = load i8, i8* %arrayidx, align 1, !dbg !135
  %conv12 = sext i8 %12 to i32, !dbg !135
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !138
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !139

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !140
  %14 = load i64, i64* %dataLen, align 8, !dbg !142
  %sub16 = sub i64 %14, 1, !dbg !143
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !140
  store i8 0, i8* %arrayidx17, align 1, !dbg !144
  br label %if.end, !dbg !145

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !146

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !147
  %15 = load i8*, i8** %data, align 8, !dbg !149
  %16 = load i64, i64* %dataLen, align 8, !dbg !150
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !149
  store i8 0, i8* %arrayidx18, align 1, !dbg !151
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !152

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !153

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !154
  %cmp22 = icmp ne i32 %17, 5, !dbg !156
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !157

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !158
  br label %if.end27, !dbg !160

if.else25:                                        ; preds = %if.end21
  %18 = load i8*, i8** %data, align 8, !dbg !161
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !163
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then24
  ret void, !dbg !164
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !165 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !168, metadata !DIExpression()), !dbg !169
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !169
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !169
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !170
  store i8* %arraydecay, i8** %data, align 8, !dbg !171
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !172
  %cmp = icmp eq i32 %1, 5, !dbg !174
  br i1 %cmp, label %if.then, label %if.end21, !dbg !175

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !176, metadata !DIExpression()), !dbg !179
  %2 = load i8*, i8** %data, align 8, !dbg !180
  %call = call i64 @strlen(i8* %2) #6, !dbg !181
  store i64 %call, i64* %dataLen, align 8, !dbg !179
  %3 = load i64, i64* %dataLen, align 8, !dbg !182
  %sub = sub i64 100, %3, !dbg !184
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !185
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !186

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !187
  %5 = load i64, i64* %dataLen, align 8, !dbg !190
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !191
  %6 = load i64, i64* %dataLen, align 8, !dbg !192
  %sub3 = sub i64 100, %6, !dbg !193
  %conv = trunc i64 %sub3 to i32, !dbg !194
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !195
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !196
  %cmp5 = icmp ne i8* %call4, null, !dbg !197
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !198

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !199
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !201
  store i64 %call8, i64* %dataLen, align 8, !dbg !202
  %9 = load i64, i64* %dataLen, align 8, !dbg !203
  %cmp9 = icmp ugt i64 %9, 0, !dbg !205
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !206

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !207
  %11 = load i64, i64* %dataLen, align 8, !dbg !208
  %sub11 = sub i64 %11, 1, !dbg !209
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !207
  %12 = load i8, i8* %arrayidx, align 1, !dbg !207
  %conv12 = sext i8 %12 to i32, !dbg !207
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !210
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !211

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !212
  %14 = load i64, i64* %dataLen, align 8, !dbg !214
  %sub16 = sub i64 %14, 1, !dbg !215
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !212
  store i8 0, i8* %arrayidx17, align 1, !dbg !216
  br label %if.end, !dbg !217

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !218

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !219
  %15 = load i8*, i8** %data, align 8, !dbg !221
  %16 = load i64, i64* %dataLen, align 8, !dbg !222
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !221
  store i8 0, i8* %arrayidx18, align 1, !dbg !223
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !224

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !225

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !226
  %cmp22 = icmp eq i32 %17, 5, !dbg !228
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !229

if.then24:                                        ; preds = %if.end21
  %18 = load i8*, i8** %data, align 8, !dbg !230
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !232
  br label %if.end26, !dbg !233

if.end26:                                         ; preds = %if.then24, %if.end21
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !235 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !238, metadata !DIExpression()), !dbg !239
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !239
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !239
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !240
  store i8* %arraydecay, i8** %data, align 8, !dbg !241
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !242
  %cmp = icmp ne i32 %1, 5, !dbg !244
  br i1 %cmp, label %if.then, label %if.else, !dbg !245

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !246
  br label %if.end, !dbg !248

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !249
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !251
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !252
  %cmp1 = icmp eq i32 %3, 5, !dbg !254
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !255

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !256
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !258
  br label %if.end4, !dbg !259

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !260
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !261 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !265
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !265
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !266
  store i8* %arraydecay, i8** %data, align 8, !dbg !267
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !268
  %cmp = icmp eq i32 %1, 5, !dbg !270
  br i1 %cmp, label %if.then, label %if.end, !dbg !271

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !272
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !274
  br label %if.end, !dbg !275

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !276
  %cmp1 = icmp eq i32 %3, 5, !dbg !278
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !279

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !280
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !282
  br label %if.end4, !dbg !283

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_06_good() #0 !dbg !285 {
entry:
  call void @goodB2G1(), !dbg !286
  call void @goodB2G2(), !dbg !287
  call void @goodG2B1(), !dbg !288
  call void @goodG2B2(), !dbg !289
  ret void, !dbg !290
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_FIVE", scope: !2, file: !3, line: 28, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_06.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_439/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0}
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 12.0.0"}
!13 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_06_bad", scope: !3, file: !3, line: 32, type: !14, scopeLine: 33, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{null}
!16 = !DILocalVariable(name: "data", scope: !13, file: !3, line: 34, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DILocation(line: 34, column: 12, scope: !13)
!20 = !DILocalVariable(name: "dataBuffer", scope: !13, file: !3, line: 35, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 800, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 100)
!24 = !DILocation(line: 35, column: 10, scope: !13)
!25 = !DILocation(line: 36, column: 12, scope: !13)
!26 = !DILocation(line: 36, column: 10, scope: !13)
!27 = !DILocation(line: 37, column: 8, scope: !28)
!28 = distinct !DILexicalBlock(scope: !13, file: !3, line: 37, column: 8)
!29 = !DILocation(line: 37, column: 25, scope: !28)
!30 = !DILocation(line: 37, column: 8, scope: !13)
!31 = !DILocalVariable(name: "dataLen", scope: !32, file: !3, line: 41, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !3, line: 39, column: 9)
!33 = distinct !DILexicalBlock(scope: !28, file: !3, line: 38, column: 5)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 41, column: 20, scope: !32)
!38 = !DILocation(line: 41, column: 37, scope: !32)
!39 = !DILocation(line: 41, column: 30, scope: !32)
!40 = !DILocation(line: 43, column: 21, scope: !41)
!41 = distinct !DILexicalBlock(scope: !32, file: !3, line: 43, column: 17)
!42 = !DILocation(line: 43, column: 20, scope: !41)
!43 = !DILocation(line: 43, column: 29, scope: !41)
!44 = !DILocation(line: 43, column: 17, scope: !32)
!45 = !DILocation(line: 46, column: 27, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !3, line: 46, column: 21)
!47 = distinct !DILexicalBlock(scope: !41, file: !3, line: 44, column: 13)
!48 = !DILocation(line: 46, column: 32, scope: !46)
!49 = !DILocation(line: 46, column: 31, scope: !46)
!50 = !DILocation(line: 46, column: 51, scope: !46)
!51 = !DILocation(line: 46, column: 50, scope: !46)
!52 = !DILocation(line: 46, column: 41, scope: !46)
!53 = !DILocation(line: 46, column: 61, scope: !46)
!54 = !DILocation(line: 46, column: 21, scope: !46)
!55 = !DILocation(line: 46, column: 68, scope: !46)
!56 = !DILocation(line: 46, column: 21, scope: !47)
!57 = !DILocation(line: 50, column: 38, scope: !58)
!58 = distinct !DILexicalBlock(scope: !46, file: !3, line: 47, column: 17)
!59 = !DILocation(line: 50, column: 31, scope: !58)
!60 = !DILocation(line: 50, column: 29, scope: !58)
!61 = !DILocation(line: 51, column: 25, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !3, line: 51, column: 25)
!63 = !DILocation(line: 51, column: 33, scope: !62)
!64 = !DILocation(line: 51, column: 37, scope: !62)
!65 = !DILocation(line: 51, column: 40, scope: !62)
!66 = !DILocation(line: 51, column: 45, scope: !62)
!67 = !DILocation(line: 51, column: 52, scope: !62)
!68 = !DILocation(line: 51, column: 56, scope: !62)
!69 = !DILocation(line: 51, column: 25, scope: !58)
!70 = !DILocation(line: 53, column: 25, scope: !71)
!71 = distinct !DILexicalBlock(scope: !62, file: !3, line: 52, column: 21)
!72 = !DILocation(line: 53, column: 30, scope: !71)
!73 = !DILocation(line: 53, column: 37, scope: !71)
!74 = !DILocation(line: 53, column: 41, scope: !71)
!75 = !DILocation(line: 54, column: 21, scope: !71)
!76 = !DILocation(line: 55, column: 17, scope: !58)
!77 = !DILocation(line: 58, column: 21, scope: !78)
!78 = distinct !DILexicalBlock(scope: !46, file: !3, line: 57, column: 17)
!79 = !DILocation(line: 60, column: 21, scope: !78)
!80 = !DILocation(line: 60, column: 26, scope: !78)
!81 = !DILocation(line: 60, column: 35, scope: !78)
!82 = !DILocation(line: 62, column: 13, scope: !47)
!83 = !DILocation(line: 64, column: 5, scope: !33)
!84 = !DILocation(line: 65, column: 8, scope: !85)
!85 = distinct !DILexicalBlock(scope: !13, file: !3, line: 65, column: 8)
!86 = !DILocation(line: 65, column: 25, scope: !85)
!87 = !DILocation(line: 65, column: 8, scope: !13)
!88 = !DILocation(line: 68, column: 16, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !3, line: 66, column: 5)
!90 = !DILocation(line: 68, column: 9, scope: !89)
!91 = !DILocation(line: 69, column: 5, scope: !89)
!92 = !DILocation(line: 70, column: 1, scope: !13)
!93 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 77, type: !14, scopeLine: 78, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!94 = !DILocalVariable(name: "data", scope: !93, file: !3, line: 79, type: !17)
!95 = !DILocation(line: 79, column: 12, scope: !93)
!96 = !DILocalVariable(name: "dataBuffer", scope: !93, file: !3, line: 80, type: !21)
!97 = !DILocation(line: 80, column: 10, scope: !93)
!98 = !DILocation(line: 81, column: 12, scope: !93)
!99 = !DILocation(line: 81, column: 10, scope: !93)
!100 = !DILocation(line: 82, column: 8, scope: !101)
!101 = distinct !DILexicalBlock(scope: !93, file: !3, line: 82, column: 8)
!102 = !DILocation(line: 82, column: 25, scope: !101)
!103 = !DILocation(line: 82, column: 8, scope: !93)
!104 = !DILocalVariable(name: "dataLen", scope: !105, file: !3, line: 86, type: !34)
!105 = distinct !DILexicalBlock(scope: !106, file: !3, line: 84, column: 9)
!106 = distinct !DILexicalBlock(scope: !101, file: !3, line: 83, column: 5)
!107 = !DILocation(line: 86, column: 20, scope: !105)
!108 = !DILocation(line: 86, column: 37, scope: !105)
!109 = !DILocation(line: 86, column: 30, scope: !105)
!110 = !DILocation(line: 88, column: 21, scope: !111)
!111 = distinct !DILexicalBlock(scope: !105, file: !3, line: 88, column: 17)
!112 = !DILocation(line: 88, column: 20, scope: !111)
!113 = !DILocation(line: 88, column: 29, scope: !111)
!114 = !DILocation(line: 88, column: 17, scope: !105)
!115 = !DILocation(line: 91, column: 27, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 91, column: 21)
!117 = distinct !DILexicalBlock(scope: !111, file: !3, line: 89, column: 13)
!118 = !DILocation(line: 91, column: 32, scope: !116)
!119 = !DILocation(line: 91, column: 31, scope: !116)
!120 = !DILocation(line: 91, column: 51, scope: !116)
!121 = !DILocation(line: 91, column: 50, scope: !116)
!122 = !DILocation(line: 91, column: 41, scope: !116)
!123 = !DILocation(line: 91, column: 61, scope: !116)
!124 = !DILocation(line: 91, column: 21, scope: !116)
!125 = !DILocation(line: 91, column: 68, scope: !116)
!126 = !DILocation(line: 91, column: 21, scope: !117)
!127 = !DILocation(line: 95, column: 38, scope: !128)
!128 = distinct !DILexicalBlock(scope: !116, file: !3, line: 92, column: 17)
!129 = !DILocation(line: 95, column: 31, scope: !128)
!130 = !DILocation(line: 95, column: 29, scope: !128)
!131 = !DILocation(line: 96, column: 25, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !3, line: 96, column: 25)
!133 = !DILocation(line: 96, column: 33, scope: !132)
!134 = !DILocation(line: 96, column: 37, scope: !132)
!135 = !DILocation(line: 96, column: 40, scope: !132)
!136 = !DILocation(line: 96, column: 45, scope: !132)
!137 = !DILocation(line: 96, column: 52, scope: !132)
!138 = !DILocation(line: 96, column: 56, scope: !132)
!139 = !DILocation(line: 96, column: 25, scope: !128)
!140 = !DILocation(line: 98, column: 25, scope: !141)
!141 = distinct !DILexicalBlock(scope: !132, file: !3, line: 97, column: 21)
!142 = !DILocation(line: 98, column: 30, scope: !141)
!143 = !DILocation(line: 98, column: 37, scope: !141)
!144 = !DILocation(line: 98, column: 41, scope: !141)
!145 = !DILocation(line: 99, column: 21, scope: !141)
!146 = !DILocation(line: 100, column: 17, scope: !128)
!147 = !DILocation(line: 103, column: 21, scope: !148)
!148 = distinct !DILexicalBlock(scope: !116, file: !3, line: 102, column: 17)
!149 = !DILocation(line: 105, column: 21, scope: !148)
!150 = !DILocation(line: 105, column: 26, scope: !148)
!151 = !DILocation(line: 105, column: 35, scope: !148)
!152 = !DILocation(line: 107, column: 13, scope: !117)
!153 = !DILocation(line: 109, column: 5, scope: !106)
!154 = !DILocation(line: 110, column: 8, scope: !155)
!155 = distinct !DILexicalBlock(scope: !93, file: !3, line: 110, column: 8)
!156 = !DILocation(line: 110, column: 25, scope: !155)
!157 = !DILocation(line: 110, column: 8, scope: !93)
!158 = !DILocation(line: 113, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !3, line: 111, column: 5)
!160 = !DILocation(line: 114, column: 5, scope: !159)
!161 = !DILocation(line: 118, column: 24, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !3, line: 116, column: 5)
!163 = !DILocation(line: 118, column: 9, scope: !162)
!164 = !DILocation(line: 120, column: 1, scope: !93)
!165 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 123, type: !14, scopeLine: 124, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!166 = !DILocalVariable(name: "data", scope: !165, file: !3, line: 125, type: !17)
!167 = !DILocation(line: 125, column: 12, scope: !165)
!168 = !DILocalVariable(name: "dataBuffer", scope: !165, file: !3, line: 126, type: !21)
!169 = !DILocation(line: 126, column: 10, scope: !165)
!170 = !DILocation(line: 127, column: 12, scope: !165)
!171 = !DILocation(line: 127, column: 10, scope: !165)
!172 = !DILocation(line: 128, column: 8, scope: !173)
!173 = distinct !DILexicalBlock(scope: !165, file: !3, line: 128, column: 8)
!174 = !DILocation(line: 128, column: 25, scope: !173)
!175 = !DILocation(line: 128, column: 8, scope: !165)
!176 = !DILocalVariable(name: "dataLen", scope: !177, file: !3, line: 132, type: !34)
!177 = distinct !DILexicalBlock(scope: !178, file: !3, line: 130, column: 9)
!178 = distinct !DILexicalBlock(scope: !173, file: !3, line: 129, column: 5)
!179 = !DILocation(line: 132, column: 20, scope: !177)
!180 = !DILocation(line: 132, column: 37, scope: !177)
!181 = !DILocation(line: 132, column: 30, scope: !177)
!182 = !DILocation(line: 134, column: 21, scope: !183)
!183 = distinct !DILexicalBlock(scope: !177, file: !3, line: 134, column: 17)
!184 = !DILocation(line: 134, column: 20, scope: !183)
!185 = !DILocation(line: 134, column: 29, scope: !183)
!186 = !DILocation(line: 134, column: 17, scope: !177)
!187 = !DILocation(line: 137, column: 27, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !3, line: 137, column: 21)
!189 = distinct !DILexicalBlock(scope: !183, file: !3, line: 135, column: 13)
!190 = !DILocation(line: 137, column: 32, scope: !188)
!191 = !DILocation(line: 137, column: 31, scope: !188)
!192 = !DILocation(line: 137, column: 51, scope: !188)
!193 = !DILocation(line: 137, column: 50, scope: !188)
!194 = !DILocation(line: 137, column: 41, scope: !188)
!195 = !DILocation(line: 137, column: 61, scope: !188)
!196 = !DILocation(line: 137, column: 21, scope: !188)
!197 = !DILocation(line: 137, column: 68, scope: !188)
!198 = !DILocation(line: 137, column: 21, scope: !189)
!199 = !DILocation(line: 141, column: 38, scope: !200)
!200 = distinct !DILexicalBlock(scope: !188, file: !3, line: 138, column: 17)
!201 = !DILocation(line: 141, column: 31, scope: !200)
!202 = !DILocation(line: 141, column: 29, scope: !200)
!203 = !DILocation(line: 142, column: 25, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !3, line: 142, column: 25)
!205 = !DILocation(line: 142, column: 33, scope: !204)
!206 = !DILocation(line: 142, column: 37, scope: !204)
!207 = !DILocation(line: 142, column: 40, scope: !204)
!208 = !DILocation(line: 142, column: 45, scope: !204)
!209 = !DILocation(line: 142, column: 52, scope: !204)
!210 = !DILocation(line: 142, column: 56, scope: !204)
!211 = !DILocation(line: 142, column: 25, scope: !200)
!212 = !DILocation(line: 144, column: 25, scope: !213)
!213 = distinct !DILexicalBlock(scope: !204, file: !3, line: 143, column: 21)
!214 = !DILocation(line: 144, column: 30, scope: !213)
!215 = !DILocation(line: 144, column: 37, scope: !213)
!216 = !DILocation(line: 144, column: 41, scope: !213)
!217 = !DILocation(line: 145, column: 21, scope: !213)
!218 = !DILocation(line: 146, column: 17, scope: !200)
!219 = !DILocation(line: 149, column: 21, scope: !220)
!220 = distinct !DILexicalBlock(scope: !188, file: !3, line: 148, column: 17)
!221 = !DILocation(line: 151, column: 21, scope: !220)
!222 = !DILocation(line: 151, column: 26, scope: !220)
!223 = !DILocation(line: 151, column: 35, scope: !220)
!224 = !DILocation(line: 153, column: 13, scope: !189)
!225 = !DILocation(line: 155, column: 5, scope: !178)
!226 = !DILocation(line: 156, column: 8, scope: !227)
!227 = distinct !DILexicalBlock(scope: !165, file: !3, line: 156, column: 8)
!228 = !DILocation(line: 156, column: 25, scope: !227)
!229 = !DILocation(line: 156, column: 8, scope: !165)
!230 = !DILocation(line: 159, column: 24, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !3, line: 157, column: 5)
!232 = !DILocation(line: 159, column: 9, scope: !231)
!233 = !DILocation(line: 160, column: 5, scope: !231)
!234 = !DILocation(line: 161, column: 1, scope: !165)
!235 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 164, type: !14, scopeLine: 165, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!236 = !DILocalVariable(name: "data", scope: !235, file: !3, line: 166, type: !17)
!237 = !DILocation(line: 166, column: 12, scope: !235)
!238 = !DILocalVariable(name: "dataBuffer", scope: !235, file: !3, line: 167, type: !21)
!239 = !DILocation(line: 167, column: 10, scope: !235)
!240 = !DILocation(line: 168, column: 12, scope: !235)
!241 = !DILocation(line: 168, column: 10, scope: !235)
!242 = !DILocation(line: 169, column: 8, scope: !243)
!243 = distinct !DILexicalBlock(scope: !235, file: !3, line: 169, column: 8)
!244 = !DILocation(line: 169, column: 25, scope: !243)
!245 = !DILocation(line: 169, column: 8, scope: !235)
!246 = !DILocation(line: 172, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !3, line: 170, column: 5)
!248 = !DILocation(line: 173, column: 5, scope: !247)
!249 = !DILocation(line: 177, column: 16, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !3, line: 175, column: 5)
!251 = !DILocation(line: 177, column: 9, scope: !250)
!252 = !DILocation(line: 179, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !235, file: !3, line: 179, column: 8)
!254 = !DILocation(line: 179, column: 25, scope: !253)
!255 = !DILocation(line: 179, column: 8, scope: !235)
!256 = !DILocation(line: 182, column: 16, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !3, line: 180, column: 5)
!258 = !DILocation(line: 182, column: 9, scope: !257)
!259 = !DILocation(line: 183, column: 5, scope: !257)
!260 = !DILocation(line: 184, column: 1, scope: !235)
!261 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 187, type: !14, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!262 = !DILocalVariable(name: "data", scope: !261, file: !3, line: 189, type: !17)
!263 = !DILocation(line: 189, column: 12, scope: !261)
!264 = !DILocalVariable(name: "dataBuffer", scope: !261, file: !3, line: 190, type: !21)
!265 = !DILocation(line: 190, column: 10, scope: !261)
!266 = !DILocation(line: 191, column: 12, scope: !261)
!267 = !DILocation(line: 191, column: 10, scope: !261)
!268 = !DILocation(line: 192, column: 8, scope: !269)
!269 = distinct !DILexicalBlock(scope: !261, file: !3, line: 192, column: 8)
!270 = !DILocation(line: 192, column: 25, scope: !269)
!271 = !DILocation(line: 192, column: 8, scope: !261)
!272 = !DILocation(line: 195, column: 16, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !3, line: 193, column: 5)
!274 = !DILocation(line: 195, column: 9, scope: !273)
!275 = !DILocation(line: 196, column: 5, scope: !273)
!276 = !DILocation(line: 197, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !261, file: !3, line: 197, column: 8)
!278 = !DILocation(line: 197, column: 25, scope: !277)
!279 = !DILocation(line: 197, column: 8, scope: !261)
!280 = !DILocation(line: 200, column: 16, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !3, line: 198, column: 5)
!282 = !DILocation(line: 200, column: 9, scope: !281)
!283 = !DILocation(line: 201, column: 5, scope: !281)
!284 = !DILocation(line: 202, column: 1, scope: !261)
!285 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_06_good", scope: !3, file: !3, line: 204, type: !14, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!286 = !DILocation(line: 206, column: 5, scope: !285)
!287 = !DILocation(line: 207, column: 5, scope: !285)
!288 = !DILocation(line: 208, column: 5, scope: !285)
!289 = !DILocation(line: 209, column: 5, scope: !285)
!290 = !DILocation(line: 210, column: 1, scope: !285)
