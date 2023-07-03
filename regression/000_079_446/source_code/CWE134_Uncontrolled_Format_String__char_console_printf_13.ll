; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_13.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@GLOBAL_CONST_FIVE = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_13_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !21
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !22
  store i8* %arraydecay, i8** %data, align 8, !dbg !23
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !24
  %cmp = icmp eq i32 %1, 5, !dbg !26
  br i1 %cmp, label %if.then, label %if.end21, !dbg !27

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !28, metadata !DIExpression()), !dbg !34
  %2 = load i8*, i8** %data, align 8, !dbg !35
  %call = call i64 @strlen(i8* %2) #6, !dbg !36
  store i64 %call, i64* %dataLen, align 8, !dbg !34
  %3 = load i64, i64* %dataLen, align 8, !dbg !37
  %sub = sub i64 100, %3, !dbg !39
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !40
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !41

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !42
  %5 = load i64, i64* %dataLen, align 8, !dbg !45
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !46
  %6 = load i64, i64* %dataLen, align 8, !dbg !47
  %sub3 = sub i64 100, %6, !dbg !48
  %conv = trunc i64 %sub3 to i32, !dbg !49
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !50
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !51
  %cmp5 = icmp ne i8* %call4, null, !dbg !52
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !53

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !54
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !56
  store i64 %call8, i64* %dataLen, align 8, !dbg !57
  %9 = load i64, i64* %dataLen, align 8, !dbg !58
  %cmp9 = icmp ugt i64 %9, 0, !dbg !60
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !61

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !62
  %11 = load i64, i64* %dataLen, align 8, !dbg !63
  %sub11 = sub i64 %11, 1, !dbg !64
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !62
  %12 = load i8, i8* %arrayidx, align 1, !dbg !62
  %conv12 = sext i8 %12 to i32, !dbg !62
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !65
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !66

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !67
  %14 = load i64, i64* %dataLen, align 8, !dbg !69
  %sub16 = sub i64 %14, 1, !dbg !70
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !67
  store i8 0, i8* %arrayidx17, align 1, !dbg !71
  br label %if.end, !dbg !72

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !73

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !74
  %15 = load i8*, i8** %data, align 8, !dbg !76
  %16 = load i64, i64* %dataLen, align 8, !dbg !77
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !76
  store i8 0, i8* %arrayidx18, align 1, !dbg !78
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !79

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !80

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !81
  %cmp22 = icmp eq i32 %17, 5, !dbg !83
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !84

if.then24:                                        ; preds = %if.end21
  %18 = load i8*, i8** %data, align 8, !dbg !85
  %call25 = call i32 (i8*, ...) @printf(i8* %18), !dbg !87
  br label %if.end26, !dbg !88

if.end26:                                         ; preds = %if.then24, %if.end21
  ret void, !dbg !89
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
define dso_local void @goodB2G1() #0 !dbg !90 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !93, metadata !DIExpression()), !dbg !94
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !94
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !94
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !95
  store i8* %arraydecay, i8** %data, align 8, !dbg !96
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !97
  %cmp = icmp eq i32 %1, 5, !dbg !99
  br i1 %cmp, label %if.then, label %if.end21, !dbg !100

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !101, metadata !DIExpression()), !dbg !104
  %2 = load i8*, i8** %data, align 8, !dbg !105
  %call = call i64 @strlen(i8* %2) #6, !dbg !106
  store i64 %call, i64* %dataLen, align 8, !dbg !104
  %3 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub = sub i64 100, %3, !dbg !109
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !110
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !111

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !112
  %5 = load i64, i64* %dataLen, align 8, !dbg !115
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !116
  %6 = load i64, i64* %dataLen, align 8, !dbg !117
  %sub3 = sub i64 100, %6, !dbg !118
  %conv = trunc i64 %sub3 to i32, !dbg !119
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !120
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !121
  %cmp5 = icmp ne i8* %call4, null, !dbg !122
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !123

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !124
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !126
  store i64 %call8, i64* %dataLen, align 8, !dbg !127
  %9 = load i64, i64* %dataLen, align 8, !dbg !128
  %cmp9 = icmp ugt i64 %9, 0, !dbg !130
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !131

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !132
  %11 = load i64, i64* %dataLen, align 8, !dbg !133
  %sub11 = sub i64 %11, 1, !dbg !134
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !132
  %12 = load i8, i8* %arrayidx, align 1, !dbg !132
  %conv12 = sext i8 %12 to i32, !dbg !132
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !135
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !136

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !137
  %14 = load i64, i64* %dataLen, align 8, !dbg !139
  %sub16 = sub i64 %14, 1, !dbg !140
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !137
  store i8 0, i8* %arrayidx17, align 1, !dbg !141
  br label %if.end, !dbg !142

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !143

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !144
  %15 = load i8*, i8** %data, align 8, !dbg !146
  %16 = load i64, i64* %dataLen, align 8, !dbg !147
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !146
  store i8 0, i8* %arrayidx18, align 1, !dbg !148
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !149

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !150

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !151
  %cmp22 = icmp ne i32 %17, 5, !dbg !153
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !154

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !155
  br label %if.end27, !dbg !157

if.else25:                                        ; preds = %if.end21
  %18 = load i8*, i8** %data, align 8, !dbg !158
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !160
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then24
  ret void, !dbg !161
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !162 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !165, metadata !DIExpression()), !dbg !166
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !166
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !166
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !167
  store i8* %arraydecay, i8** %data, align 8, !dbg !168
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !169
  %cmp = icmp eq i32 %1, 5, !dbg !171
  br i1 %cmp, label %if.then, label %if.end21, !dbg !172

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !173, metadata !DIExpression()), !dbg !176
  %2 = load i8*, i8** %data, align 8, !dbg !177
  %call = call i64 @strlen(i8* %2) #6, !dbg !178
  store i64 %call, i64* %dataLen, align 8, !dbg !176
  %3 = load i64, i64* %dataLen, align 8, !dbg !179
  %sub = sub i64 100, %3, !dbg !181
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !182
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !183

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !184
  %5 = load i64, i64* %dataLen, align 8, !dbg !187
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !188
  %6 = load i64, i64* %dataLen, align 8, !dbg !189
  %sub3 = sub i64 100, %6, !dbg !190
  %conv = trunc i64 %sub3 to i32, !dbg !191
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !192
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !193
  %cmp5 = icmp ne i8* %call4, null, !dbg !194
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !195

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !196
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !198
  store i64 %call8, i64* %dataLen, align 8, !dbg !199
  %9 = load i64, i64* %dataLen, align 8, !dbg !200
  %cmp9 = icmp ugt i64 %9, 0, !dbg !202
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !203

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !204
  %11 = load i64, i64* %dataLen, align 8, !dbg !205
  %sub11 = sub i64 %11, 1, !dbg !206
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !204
  %12 = load i8, i8* %arrayidx, align 1, !dbg !204
  %conv12 = sext i8 %12 to i32, !dbg !204
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !207
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !208

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !209
  %14 = load i64, i64* %dataLen, align 8, !dbg !211
  %sub16 = sub i64 %14, 1, !dbg !212
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !209
  store i8 0, i8* %arrayidx17, align 1, !dbg !213
  br label %if.end, !dbg !214

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !215

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !216
  %15 = load i8*, i8** %data, align 8, !dbg !218
  %16 = load i64, i64* %dataLen, align 8, !dbg !219
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !218
  store i8 0, i8* %arrayidx18, align 1, !dbg !220
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !221

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !222

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !223
  %cmp22 = icmp eq i32 %17, 5, !dbg !225
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !226

if.then24:                                        ; preds = %if.end21
  %18 = load i8*, i8** %data, align 8, !dbg !227
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !229
  br label %if.end26, !dbg !230

if.end26:                                         ; preds = %if.then24, %if.end21
  ret void, !dbg !231
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !232 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !235, metadata !DIExpression()), !dbg !236
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !236
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !236
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !237
  store i8* %arraydecay, i8** %data, align 8, !dbg !238
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !239
  %cmp = icmp ne i32 %1, 5, !dbg !241
  br i1 %cmp, label %if.then, label %if.else, !dbg !242

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !243
  br label %if.end, !dbg !245

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !246
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !248
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !249
  %cmp1 = icmp eq i32 %3, 5, !dbg !251
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !252

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !253
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !255
  br label %if.end4, !dbg !256

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !257
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !258 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !261, metadata !DIExpression()), !dbg !262
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !262
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !262
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !263
  store i8* %arraydecay, i8** %data, align 8, !dbg !264
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !265
  %cmp = icmp eq i32 %1, 5, !dbg !267
  br i1 %cmp, label %if.then, label %if.end, !dbg !268

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !269
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !271
  br label %if.end, !dbg !272

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !273
  %cmp1 = icmp eq i32 %3, 5, !dbg !275
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !276

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !277
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !279
  br label %if.end4, !dbg !280

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !281
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_13_good() #0 !dbg !282 {
entry:
  call void @goodB2G1(), !dbg !283
  call void @goodB2G2(), !dbg !284
  call void @goodG2B1(), !dbg !285
  call void @goodG2B2(), !dbg !286
  ret void, !dbg !287
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_13.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_446/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_13_bad", scope: !1, file: !1, line: 27, type: !11, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 29, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 29, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 30, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 30, column: 10, scope: !10)
!22 = !DILocation(line: 31, column: 12, scope: !10)
!23 = !DILocation(line: 31, column: 10, scope: !10)
!24 = !DILocation(line: 32, column: 8, scope: !25)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 32, column: 8)
!26 = !DILocation(line: 32, column: 25, scope: !25)
!27 = !DILocation(line: 32, column: 8, scope: !10)
!28 = !DILocalVariable(name: "dataLen", scope: !29, file: !1, line: 36, type: !31)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 34, column: 9)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 33, column: 5)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 36, column: 20, scope: !29)
!35 = !DILocation(line: 36, column: 37, scope: !29)
!36 = !DILocation(line: 36, column: 30, scope: !29)
!37 = !DILocation(line: 38, column: 21, scope: !38)
!38 = distinct !DILexicalBlock(scope: !29, file: !1, line: 38, column: 17)
!39 = !DILocation(line: 38, column: 20, scope: !38)
!40 = !DILocation(line: 38, column: 29, scope: !38)
!41 = !DILocation(line: 38, column: 17, scope: !29)
!42 = !DILocation(line: 41, column: 27, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 41, column: 21)
!44 = distinct !DILexicalBlock(scope: !38, file: !1, line: 39, column: 13)
!45 = !DILocation(line: 41, column: 32, scope: !43)
!46 = !DILocation(line: 41, column: 31, scope: !43)
!47 = !DILocation(line: 41, column: 51, scope: !43)
!48 = !DILocation(line: 41, column: 50, scope: !43)
!49 = !DILocation(line: 41, column: 41, scope: !43)
!50 = !DILocation(line: 41, column: 61, scope: !43)
!51 = !DILocation(line: 41, column: 21, scope: !43)
!52 = !DILocation(line: 41, column: 68, scope: !43)
!53 = !DILocation(line: 41, column: 21, scope: !44)
!54 = !DILocation(line: 45, column: 38, scope: !55)
!55 = distinct !DILexicalBlock(scope: !43, file: !1, line: 42, column: 17)
!56 = !DILocation(line: 45, column: 31, scope: !55)
!57 = !DILocation(line: 45, column: 29, scope: !55)
!58 = !DILocation(line: 46, column: 25, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 46, column: 25)
!60 = !DILocation(line: 46, column: 33, scope: !59)
!61 = !DILocation(line: 46, column: 37, scope: !59)
!62 = !DILocation(line: 46, column: 40, scope: !59)
!63 = !DILocation(line: 46, column: 45, scope: !59)
!64 = !DILocation(line: 46, column: 52, scope: !59)
!65 = !DILocation(line: 46, column: 56, scope: !59)
!66 = !DILocation(line: 46, column: 25, scope: !55)
!67 = !DILocation(line: 48, column: 25, scope: !68)
!68 = distinct !DILexicalBlock(scope: !59, file: !1, line: 47, column: 21)
!69 = !DILocation(line: 48, column: 30, scope: !68)
!70 = !DILocation(line: 48, column: 37, scope: !68)
!71 = !DILocation(line: 48, column: 41, scope: !68)
!72 = !DILocation(line: 49, column: 21, scope: !68)
!73 = !DILocation(line: 50, column: 17, scope: !55)
!74 = !DILocation(line: 53, column: 21, scope: !75)
!75 = distinct !DILexicalBlock(scope: !43, file: !1, line: 52, column: 17)
!76 = !DILocation(line: 55, column: 21, scope: !75)
!77 = !DILocation(line: 55, column: 26, scope: !75)
!78 = !DILocation(line: 55, column: 35, scope: !75)
!79 = !DILocation(line: 57, column: 13, scope: !44)
!80 = !DILocation(line: 59, column: 5, scope: !30)
!81 = !DILocation(line: 60, column: 8, scope: !82)
!82 = distinct !DILexicalBlock(scope: !10, file: !1, line: 60, column: 8)
!83 = !DILocation(line: 60, column: 25, scope: !82)
!84 = !DILocation(line: 60, column: 8, scope: !10)
!85 = !DILocation(line: 63, column: 16, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 61, column: 5)
!87 = !DILocation(line: 63, column: 9, scope: !86)
!88 = !DILocation(line: 64, column: 5, scope: !86)
!89 = !DILocation(line: 65, column: 1, scope: !10)
!90 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 72, type: !11, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!91 = !DILocalVariable(name: "data", scope: !90, file: !1, line: 74, type: !14)
!92 = !DILocation(line: 74, column: 12, scope: !90)
!93 = !DILocalVariable(name: "dataBuffer", scope: !90, file: !1, line: 75, type: !18)
!94 = !DILocation(line: 75, column: 10, scope: !90)
!95 = !DILocation(line: 76, column: 12, scope: !90)
!96 = !DILocation(line: 76, column: 10, scope: !90)
!97 = !DILocation(line: 77, column: 8, scope: !98)
!98 = distinct !DILexicalBlock(scope: !90, file: !1, line: 77, column: 8)
!99 = !DILocation(line: 77, column: 25, scope: !98)
!100 = !DILocation(line: 77, column: 8, scope: !90)
!101 = !DILocalVariable(name: "dataLen", scope: !102, file: !1, line: 81, type: !31)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 79, column: 9)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 78, column: 5)
!104 = !DILocation(line: 81, column: 20, scope: !102)
!105 = !DILocation(line: 81, column: 37, scope: !102)
!106 = !DILocation(line: 81, column: 30, scope: !102)
!107 = !DILocation(line: 83, column: 21, scope: !108)
!108 = distinct !DILexicalBlock(scope: !102, file: !1, line: 83, column: 17)
!109 = !DILocation(line: 83, column: 20, scope: !108)
!110 = !DILocation(line: 83, column: 29, scope: !108)
!111 = !DILocation(line: 83, column: 17, scope: !102)
!112 = !DILocation(line: 86, column: 27, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !1, line: 86, column: 21)
!114 = distinct !DILexicalBlock(scope: !108, file: !1, line: 84, column: 13)
!115 = !DILocation(line: 86, column: 32, scope: !113)
!116 = !DILocation(line: 86, column: 31, scope: !113)
!117 = !DILocation(line: 86, column: 51, scope: !113)
!118 = !DILocation(line: 86, column: 50, scope: !113)
!119 = !DILocation(line: 86, column: 41, scope: !113)
!120 = !DILocation(line: 86, column: 61, scope: !113)
!121 = !DILocation(line: 86, column: 21, scope: !113)
!122 = !DILocation(line: 86, column: 68, scope: !113)
!123 = !DILocation(line: 86, column: 21, scope: !114)
!124 = !DILocation(line: 90, column: 38, scope: !125)
!125 = distinct !DILexicalBlock(scope: !113, file: !1, line: 87, column: 17)
!126 = !DILocation(line: 90, column: 31, scope: !125)
!127 = !DILocation(line: 90, column: 29, scope: !125)
!128 = !DILocation(line: 91, column: 25, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 91, column: 25)
!130 = !DILocation(line: 91, column: 33, scope: !129)
!131 = !DILocation(line: 91, column: 37, scope: !129)
!132 = !DILocation(line: 91, column: 40, scope: !129)
!133 = !DILocation(line: 91, column: 45, scope: !129)
!134 = !DILocation(line: 91, column: 52, scope: !129)
!135 = !DILocation(line: 91, column: 56, scope: !129)
!136 = !DILocation(line: 91, column: 25, scope: !125)
!137 = !DILocation(line: 93, column: 25, scope: !138)
!138 = distinct !DILexicalBlock(scope: !129, file: !1, line: 92, column: 21)
!139 = !DILocation(line: 93, column: 30, scope: !138)
!140 = !DILocation(line: 93, column: 37, scope: !138)
!141 = !DILocation(line: 93, column: 41, scope: !138)
!142 = !DILocation(line: 94, column: 21, scope: !138)
!143 = !DILocation(line: 95, column: 17, scope: !125)
!144 = !DILocation(line: 98, column: 21, scope: !145)
!145 = distinct !DILexicalBlock(scope: !113, file: !1, line: 97, column: 17)
!146 = !DILocation(line: 100, column: 21, scope: !145)
!147 = !DILocation(line: 100, column: 26, scope: !145)
!148 = !DILocation(line: 100, column: 35, scope: !145)
!149 = !DILocation(line: 102, column: 13, scope: !114)
!150 = !DILocation(line: 104, column: 5, scope: !103)
!151 = !DILocation(line: 105, column: 8, scope: !152)
!152 = distinct !DILexicalBlock(scope: !90, file: !1, line: 105, column: 8)
!153 = !DILocation(line: 105, column: 25, scope: !152)
!154 = !DILocation(line: 105, column: 8, scope: !90)
!155 = !DILocation(line: 108, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !1, line: 106, column: 5)
!157 = !DILocation(line: 109, column: 5, scope: !156)
!158 = !DILocation(line: 113, column: 24, scope: !159)
!159 = distinct !DILexicalBlock(scope: !152, file: !1, line: 111, column: 5)
!160 = !DILocation(line: 113, column: 9, scope: !159)
!161 = !DILocation(line: 115, column: 1, scope: !90)
!162 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 118, type: !11, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!163 = !DILocalVariable(name: "data", scope: !162, file: !1, line: 120, type: !14)
!164 = !DILocation(line: 120, column: 12, scope: !162)
!165 = !DILocalVariable(name: "dataBuffer", scope: !162, file: !1, line: 121, type: !18)
!166 = !DILocation(line: 121, column: 10, scope: !162)
!167 = !DILocation(line: 122, column: 12, scope: !162)
!168 = !DILocation(line: 122, column: 10, scope: !162)
!169 = !DILocation(line: 123, column: 8, scope: !170)
!170 = distinct !DILexicalBlock(scope: !162, file: !1, line: 123, column: 8)
!171 = !DILocation(line: 123, column: 25, scope: !170)
!172 = !DILocation(line: 123, column: 8, scope: !162)
!173 = !DILocalVariable(name: "dataLen", scope: !174, file: !1, line: 127, type: !31)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 125, column: 9)
!175 = distinct !DILexicalBlock(scope: !170, file: !1, line: 124, column: 5)
!176 = !DILocation(line: 127, column: 20, scope: !174)
!177 = !DILocation(line: 127, column: 37, scope: !174)
!178 = !DILocation(line: 127, column: 30, scope: !174)
!179 = !DILocation(line: 129, column: 21, scope: !180)
!180 = distinct !DILexicalBlock(scope: !174, file: !1, line: 129, column: 17)
!181 = !DILocation(line: 129, column: 20, scope: !180)
!182 = !DILocation(line: 129, column: 29, scope: !180)
!183 = !DILocation(line: 129, column: 17, scope: !174)
!184 = !DILocation(line: 132, column: 27, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 132, column: 21)
!186 = distinct !DILexicalBlock(scope: !180, file: !1, line: 130, column: 13)
!187 = !DILocation(line: 132, column: 32, scope: !185)
!188 = !DILocation(line: 132, column: 31, scope: !185)
!189 = !DILocation(line: 132, column: 51, scope: !185)
!190 = !DILocation(line: 132, column: 50, scope: !185)
!191 = !DILocation(line: 132, column: 41, scope: !185)
!192 = !DILocation(line: 132, column: 61, scope: !185)
!193 = !DILocation(line: 132, column: 21, scope: !185)
!194 = !DILocation(line: 132, column: 68, scope: !185)
!195 = !DILocation(line: 132, column: 21, scope: !186)
!196 = !DILocation(line: 136, column: 38, scope: !197)
!197 = distinct !DILexicalBlock(scope: !185, file: !1, line: 133, column: 17)
!198 = !DILocation(line: 136, column: 31, scope: !197)
!199 = !DILocation(line: 136, column: 29, scope: !197)
!200 = !DILocation(line: 137, column: 25, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !1, line: 137, column: 25)
!202 = !DILocation(line: 137, column: 33, scope: !201)
!203 = !DILocation(line: 137, column: 37, scope: !201)
!204 = !DILocation(line: 137, column: 40, scope: !201)
!205 = !DILocation(line: 137, column: 45, scope: !201)
!206 = !DILocation(line: 137, column: 52, scope: !201)
!207 = !DILocation(line: 137, column: 56, scope: !201)
!208 = !DILocation(line: 137, column: 25, scope: !197)
!209 = !DILocation(line: 139, column: 25, scope: !210)
!210 = distinct !DILexicalBlock(scope: !201, file: !1, line: 138, column: 21)
!211 = !DILocation(line: 139, column: 30, scope: !210)
!212 = !DILocation(line: 139, column: 37, scope: !210)
!213 = !DILocation(line: 139, column: 41, scope: !210)
!214 = !DILocation(line: 140, column: 21, scope: !210)
!215 = !DILocation(line: 141, column: 17, scope: !197)
!216 = !DILocation(line: 144, column: 21, scope: !217)
!217 = distinct !DILexicalBlock(scope: !185, file: !1, line: 143, column: 17)
!218 = !DILocation(line: 146, column: 21, scope: !217)
!219 = !DILocation(line: 146, column: 26, scope: !217)
!220 = !DILocation(line: 146, column: 35, scope: !217)
!221 = !DILocation(line: 148, column: 13, scope: !186)
!222 = !DILocation(line: 150, column: 5, scope: !175)
!223 = !DILocation(line: 151, column: 8, scope: !224)
!224 = distinct !DILexicalBlock(scope: !162, file: !1, line: 151, column: 8)
!225 = !DILocation(line: 151, column: 25, scope: !224)
!226 = !DILocation(line: 151, column: 8, scope: !162)
!227 = !DILocation(line: 154, column: 24, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !1, line: 152, column: 5)
!229 = !DILocation(line: 154, column: 9, scope: !228)
!230 = !DILocation(line: 155, column: 5, scope: !228)
!231 = !DILocation(line: 156, column: 1, scope: !162)
!232 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 159, type: !11, scopeLine: 160, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!233 = !DILocalVariable(name: "data", scope: !232, file: !1, line: 161, type: !14)
!234 = !DILocation(line: 161, column: 12, scope: !232)
!235 = !DILocalVariable(name: "dataBuffer", scope: !232, file: !1, line: 162, type: !18)
!236 = !DILocation(line: 162, column: 10, scope: !232)
!237 = !DILocation(line: 163, column: 12, scope: !232)
!238 = !DILocation(line: 163, column: 10, scope: !232)
!239 = !DILocation(line: 164, column: 8, scope: !240)
!240 = distinct !DILexicalBlock(scope: !232, file: !1, line: 164, column: 8)
!241 = !DILocation(line: 164, column: 25, scope: !240)
!242 = !DILocation(line: 164, column: 8, scope: !232)
!243 = !DILocation(line: 167, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !1, line: 165, column: 5)
!245 = !DILocation(line: 168, column: 5, scope: !244)
!246 = !DILocation(line: 172, column: 16, scope: !247)
!247 = distinct !DILexicalBlock(scope: !240, file: !1, line: 170, column: 5)
!248 = !DILocation(line: 172, column: 9, scope: !247)
!249 = !DILocation(line: 174, column: 8, scope: !250)
!250 = distinct !DILexicalBlock(scope: !232, file: !1, line: 174, column: 8)
!251 = !DILocation(line: 174, column: 25, scope: !250)
!252 = !DILocation(line: 174, column: 8, scope: !232)
!253 = !DILocation(line: 177, column: 16, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !1, line: 175, column: 5)
!255 = !DILocation(line: 177, column: 9, scope: !254)
!256 = !DILocation(line: 178, column: 5, scope: !254)
!257 = !DILocation(line: 179, column: 1, scope: !232)
!258 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 182, type: !11, scopeLine: 183, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!259 = !DILocalVariable(name: "data", scope: !258, file: !1, line: 184, type: !14)
!260 = !DILocation(line: 184, column: 12, scope: !258)
!261 = !DILocalVariable(name: "dataBuffer", scope: !258, file: !1, line: 185, type: !18)
!262 = !DILocation(line: 185, column: 10, scope: !258)
!263 = !DILocation(line: 186, column: 12, scope: !258)
!264 = !DILocation(line: 186, column: 10, scope: !258)
!265 = !DILocation(line: 187, column: 8, scope: !266)
!266 = distinct !DILexicalBlock(scope: !258, file: !1, line: 187, column: 8)
!267 = !DILocation(line: 187, column: 25, scope: !266)
!268 = !DILocation(line: 187, column: 8, scope: !258)
!269 = !DILocation(line: 190, column: 16, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !1, line: 188, column: 5)
!271 = !DILocation(line: 190, column: 9, scope: !270)
!272 = !DILocation(line: 191, column: 5, scope: !270)
!273 = !DILocation(line: 192, column: 8, scope: !274)
!274 = distinct !DILexicalBlock(scope: !258, file: !1, line: 192, column: 8)
!275 = !DILocation(line: 192, column: 25, scope: !274)
!276 = !DILocation(line: 192, column: 8, scope: !258)
!277 = !DILocation(line: 195, column: 16, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !1, line: 193, column: 5)
!279 = !DILocation(line: 195, column: 9, scope: !278)
!280 = !DILocation(line: 196, column: 5, scope: !278)
!281 = !DILocation(line: 197, column: 1, scope: !258)
!282 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_13_good", scope: !1, file: !1, line: 199, type: !11, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!283 = !DILocation(line: 201, column: 5, scope: !282)
!284 = !DILocation(line: 202, column: 5, scope: !282)
!285 = !DILocation(line: 203, column: 5, scope: !282)
!286 = !DILocation(line: 204, column: 5, scope: !282)
!287 = !DILocation(line: 205, column: 1, scope: !282)
