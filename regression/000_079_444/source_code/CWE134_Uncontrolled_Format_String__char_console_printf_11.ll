; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_11.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_11_bad() #0 !dbg !10 {
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
  %call = call i32 (...) @globalReturnsTrue(), !dbg !24
  %tobool = icmp ne i32 %call, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.end21, !dbg !26

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
  br label %if.end21, !dbg !79

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 (...) @globalReturnsTrue(), !dbg !80
  %tobool23 = icmp ne i32 %call22, 0, !dbg !80
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !82

if.then24:                                        ; preds = %if.end21
  %16 = load i8*, i8** %data, align 8, !dbg !83
  %call25 = call i32 (i8*, ...) @printf(i8* %16), !dbg !85
  br label %if.end26, !dbg !86

if.end26:                                         ; preds = %if.then24, %if.end21
  ret void, !dbg !87
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @globalReturnsTrue(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !88 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !91, metadata !DIExpression()), !dbg !92
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !92
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !92
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !93
  store i8* %arraydecay, i8** %data, align 8, !dbg !94
  %call = call i32 (...) @globalReturnsTrue(), !dbg !95
  %tobool = icmp ne i32 %call, 0, !dbg !95
  br i1 %tobool, label %if.then, label %if.end21, !dbg !97

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !98, metadata !DIExpression()), !dbg !101
  %1 = load i8*, i8** %data, align 8, !dbg !102
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !103
  store i64 %call1, i64* %dataLen, align 8, !dbg !101
  %2 = load i64, i64* %dataLen, align 8, !dbg !104
  %sub = sub i64 100, %2, !dbg !106
  %cmp = icmp ugt i64 %sub, 1, !dbg !107
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !108

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !109
  %4 = load i64, i64* %dataLen, align 8, !dbg !112
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !113
  %5 = load i64, i64* %dataLen, align 8, !dbg !114
  %sub3 = sub i64 100, %5, !dbg !115
  %conv = trunc i64 %sub3 to i32, !dbg !116
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !117
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !118
  %cmp5 = icmp ne i8* %call4, null, !dbg !119
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !120

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !121
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !123
  store i64 %call8, i64* %dataLen, align 8, !dbg !124
  %8 = load i64, i64* %dataLen, align 8, !dbg !125
  %cmp9 = icmp ugt i64 %8, 0, !dbg !127
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !128

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !129
  %10 = load i64, i64* %dataLen, align 8, !dbg !130
  %sub11 = sub i64 %10, 1, !dbg !131
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !129
  %11 = load i8, i8* %arrayidx, align 1, !dbg !129
  %conv12 = sext i8 %11 to i32, !dbg !129
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !132
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !133

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !134
  %13 = load i64, i64* %dataLen, align 8, !dbg !136
  %sub16 = sub i64 %13, 1, !dbg !137
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !134
  store i8 0, i8* %arrayidx17, align 1, !dbg !138
  br label %if.end, !dbg !139

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !140

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !141
  %14 = load i8*, i8** %data, align 8, !dbg !143
  %15 = load i64, i64* %dataLen, align 8, !dbg !144
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !143
  store i8 0, i8* %arrayidx18, align 1, !dbg !145
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !146

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !147

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 (...) @globalReturnsFalse(), !dbg !148
  %tobool23 = icmp ne i32 %call22, 0, !dbg !148
  br i1 %tobool23, label %if.then24, label %if.else25, !dbg !150

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !151
  br label %if.end27, !dbg !153

if.else25:                                        ; preds = %if.end21
  %16 = load i8*, i8** %data, align 8, !dbg !154
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %16), !dbg !156
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then24
  ret void, !dbg !157
}

declare dso_local i32 @globalReturnsFalse(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !158 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !162
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !162
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !163
  store i8* %arraydecay, i8** %data, align 8, !dbg !164
  %call = call i32 (...) @globalReturnsTrue(), !dbg !165
  %tobool = icmp ne i32 %call, 0, !dbg !165
  br i1 %tobool, label %if.then, label %if.end21, !dbg !167

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !168, metadata !DIExpression()), !dbg !171
  %1 = load i8*, i8** %data, align 8, !dbg !172
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !173
  store i64 %call1, i64* %dataLen, align 8, !dbg !171
  %2 = load i64, i64* %dataLen, align 8, !dbg !174
  %sub = sub i64 100, %2, !dbg !176
  %cmp = icmp ugt i64 %sub, 1, !dbg !177
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !178

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !179
  %4 = load i64, i64* %dataLen, align 8, !dbg !182
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !183
  %5 = load i64, i64* %dataLen, align 8, !dbg !184
  %sub3 = sub i64 100, %5, !dbg !185
  %conv = trunc i64 %sub3 to i32, !dbg !186
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !187
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !188
  %cmp5 = icmp ne i8* %call4, null, !dbg !189
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !190

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !191
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !193
  store i64 %call8, i64* %dataLen, align 8, !dbg !194
  %8 = load i64, i64* %dataLen, align 8, !dbg !195
  %cmp9 = icmp ugt i64 %8, 0, !dbg !197
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !198

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !199
  %10 = load i64, i64* %dataLen, align 8, !dbg !200
  %sub11 = sub i64 %10, 1, !dbg !201
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !199
  %11 = load i8, i8* %arrayidx, align 1, !dbg !199
  %conv12 = sext i8 %11 to i32, !dbg !199
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !202
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !203

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !204
  %13 = load i64, i64* %dataLen, align 8, !dbg !206
  %sub16 = sub i64 %13, 1, !dbg !207
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !204
  store i8 0, i8* %arrayidx17, align 1, !dbg !208
  br label %if.end, !dbg !209

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !210

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !211
  %14 = load i8*, i8** %data, align 8, !dbg !213
  %15 = load i64, i64* %dataLen, align 8, !dbg !214
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !213
  store i8 0, i8* %arrayidx18, align 1, !dbg !215
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !216

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !217

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 (...) @globalReturnsTrue(), !dbg !218
  %tobool23 = icmp ne i32 %call22, 0, !dbg !218
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !220

if.then24:                                        ; preds = %if.end21
  %16 = load i8*, i8** %data, align 8, !dbg !221
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %16), !dbg !223
  br label %if.end26, !dbg !224

if.end26:                                         ; preds = %if.then24, %if.end21
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !226 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !229, metadata !DIExpression()), !dbg !230
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !230
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !230
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !231
  store i8* %arraydecay, i8** %data, align 8, !dbg !232
  %call = call i32 (...) @globalReturnsFalse(), !dbg !233
  %tobool = icmp ne i32 %call, 0, !dbg !233
  br i1 %tobool, label %if.then, label %if.else, !dbg !235

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !236
  br label %if.end, !dbg !238

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !239
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !241
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 (...) @globalReturnsTrue(), !dbg !242
  %tobool3 = icmp ne i32 %call2, 0, !dbg !242
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !244

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !245
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !247
  br label %if.end6, !dbg !248

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !249
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !250 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !253, metadata !DIExpression()), !dbg !254
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !254
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !254
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !255
  store i8* %arraydecay, i8** %data, align 8, !dbg !256
  %call = call i32 (...) @globalReturnsTrue(), !dbg !257
  %tobool = icmp ne i32 %call, 0, !dbg !257
  br i1 %tobool, label %if.then, label %if.end, !dbg !259

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !260
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !262
  br label %if.end, !dbg !263

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (...) @globalReturnsTrue(), !dbg !264
  %tobool3 = icmp ne i32 %call2, 0, !dbg !264
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !266

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !267
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !269
  br label %if.end6, !dbg !270

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !271
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_11_good() #0 !dbg !272 {
entry:
  call void @goodB2G1(), !dbg !273
  call void @goodB2G2(), !dbg !274
  call void @goodG2B1(), !dbg !275
  call void @goodG2B2(), !dbg !276
  ret void, !dbg !277
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_11.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_444/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_11_bad", scope: !1, file: !1, line: 27, type: !11, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!26 = !DILocation(line: 32, column: 8, scope: !10)
!27 = !DILocalVariable(name: "dataLen", scope: !28, file: !1, line: 36, type: !30)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 34, column: 9)
!29 = distinct !DILexicalBlock(scope: !25, file: !1, line: 33, column: 5)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 36, column: 20, scope: !28)
!34 = !DILocation(line: 36, column: 37, scope: !28)
!35 = !DILocation(line: 36, column: 30, scope: !28)
!36 = !DILocation(line: 38, column: 21, scope: !37)
!37 = distinct !DILexicalBlock(scope: !28, file: !1, line: 38, column: 17)
!38 = !DILocation(line: 38, column: 20, scope: !37)
!39 = !DILocation(line: 38, column: 29, scope: !37)
!40 = !DILocation(line: 38, column: 17, scope: !28)
!41 = !DILocation(line: 41, column: 27, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 41, column: 21)
!43 = distinct !DILexicalBlock(scope: !37, file: !1, line: 39, column: 13)
!44 = !DILocation(line: 41, column: 32, scope: !42)
!45 = !DILocation(line: 41, column: 31, scope: !42)
!46 = !DILocation(line: 41, column: 51, scope: !42)
!47 = !DILocation(line: 41, column: 50, scope: !42)
!48 = !DILocation(line: 41, column: 41, scope: !42)
!49 = !DILocation(line: 41, column: 61, scope: !42)
!50 = !DILocation(line: 41, column: 21, scope: !42)
!51 = !DILocation(line: 41, column: 68, scope: !42)
!52 = !DILocation(line: 41, column: 21, scope: !43)
!53 = !DILocation(line: 45, column: 38, scope: !54)
!54 = distinct !DILexicalBlock(scope: !42, file: !1, line: 42, column: 17)
!55 = !DILocation(line: 45, column: 31, scope: !54)
!56 = !DILocation(line: 45, column: 29, scope: !54)
!57 = !DILocation(line: 46, column: 25, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 46, column: 25)
!59 = !DILocation(line: 46, column: 33, scope: !58)
!60 = !DILocation(line: 46, column: 37, scope: !58)
!61 = !DILocation(line: 46, column: 40, scope: !58)
!62 = !DILocation(line: 46, column: 45, scope: !58)
!63 = !DILocation(line: 46, column: 52, scope: !58)
!64 = !DILocation(line: 46, column: 56, scope: !58)
!65 = !DILocation(line: 46, column: 25, scope: !54)
!66 = !DILocation(line: 48, column: 25, scope: !67)
!67 = distinct !DILexicalBlock(scope: !58, file: !1, line: 47, column: 21)
!68 = !DILocation(line: 48, column: 30, scope: !67)
!69 = !DILocation(line: 48, column: 37, scope: !67)
!70 = !DILocation(line: 48, column: 41, scope: !67)
!71 = !DILocation(line: 49, column: 21, scope: !67)
!72 = !DILocation(line: 50, column: 17, scope: !54)
!73 = !DILocation(line: 53, column: 21, scope: !74)
!74 = distinct !DILexicalBlock(scope: !42, file: !1, line: 52, column: 17)
!75 = !DILocation(line: 55, column: 21, scope: !74)
!76 = !DILocation(line: 55, column: 26, scope: !74)
!77 = !DILocation(line: 55, column: 35, scope: !74)
!78 = !DILocation(line: 57, column: 13, scope: !43)
!79 = !DILocation(line: 59, column: 5, scope: !29)
!80 = !DILocation(line: 60, column: 8, scope: !81)
!81 = distinct !DILexicalBlock(scope: !10, file: !1, line: 60, column: 8)
!82 = !DILocation(line: 60, column: 8, scope: !10)
!83 = !DILocation(line: 63, column: 16, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 61, column: 5)
!85 = !DILocation(line: 63, column: 9, scope: !84)
!86 = !DILocation(line: 64, column: 5, scope: !84)
!87 = !DILocation(line: 65, column: 1, scope: !10)
!88 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 72, type: !11, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!89 = !DILocalVariable(name: "data", scope: !88, file: !1, line: 74, type: !14)
!90 = !DILocation(line: 74, column: 12, scope: !88)
!91 = !DILocalVariable(name: "dataBuffer", scope: !88, file: !1, line: 75, type: !18)
!92 = !DILocation(line: 75, column: 10, scope: !88)
!93 = !DILocation(line: 76, column: 12, scope: !88)
!94 = !DILocation(line: 76, column: 10, scope: !88)
!95 = !DILocation(line: 77, column: 8, scope: !96)
!96 = distinct !DILexicalBlock(scope: !88, file: !1, line: 77, column: 8)
!97 = !DILocation(line: 77, column: 8, scope: !88)
!98 = !DILocalVariable(name: "dataLen", scope: !99, file: !1, line: 81, type: !30)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 79, column: 9)
!100 = distinct !DILexicalBlock(scope: !96, file: !1, line: 78, column: 5)
!101 = !DILocation(line: 81, column: 20, scope: !99)
!102 = !DILocation(line: 81, column: 37, scope: !99)
!103 = !DILocation(line: 81, column: 30, scope: !99)
!104 = !DILocation(line: 83, column: 21, scope: !105)
!105 = distinct !DILexicalBlock(scope: !99, file: !1, line: 83, column: 17)
!106 = !DILocation(line: 83, column: 20, scope: !105)
!107 = !DILocation(line: 83, column: 29, scope: !105)
!108 = !DILocation(line: 83, column: 17, scope: !99)
!109 = !DILocation(line: 86, column: 27, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 86, column: 21)
!111 = distinct !DILexicalBlock(scope: !105, file: !1, line: 84, column: 13)
!112 = !DILocation(line: 86, column: 32, scope: !110)
!113 = !DILocation(line: 86, column: 31, scope: !110)
!114 = !DILocation(line: 86, column: 51, scope: !110)
!115 = !DILocation(line: 86, column: 50, scope: !110)
!116 = !DILocation(line: 86, column: 41, scope: !110)
!117 = !DILocation(line: 86, column: 61, scope: !110)
!118 = !DILocation(line: 86, column: 21, scope: !110)
!119 = !DILocation(line: 86, column: 68, scope: !110)
!120 = !DILocation(line: 86, column: 21, scope: !111)
!121 = !DILocation(line: 90, column: 38, scope: !122)
!122 = distinct !DILexicalBlock(scope: !110, file: !1, line: 87, column: 17)
!123 = !DILocation(line: 90, column: 31, scope: !122)
!124 = !DILocation(line: 90, column: 29, scope: !122)
!125 = !DILocation(line: 91, column: 25, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !1, line: 91, column: 25)
!127 = !DILocation(line: 91, column: 33, scope: !126)
!128 = !DILocation(line: 91, column: 37, scope: !126)
!129 = !DILocation(line: 91, column: 40, scope: !126)
!130 = !DILocation(line: 91, column: 45, scope: !126)
!131 = !DILocation(line: 91, column: 52, scope: !126)
!132 = !DILocation(line: 91, column: 56, scope: !126)
!133 = !DILocation(line: 91, column: 25, scope: !122)
!134 = !DILocation(line: 93, column: 25, scope: !135)
!135 = distinct !DILexicalBlock(scope: !126, file: !1, line: 92, column: 21)
!136 = !DILocation(line: 93, column: 30, scope: !135)
!137 = !DILocation(line: 93, column: 37, scope: !135)
!138 = !DILocation(line: 93, column: 41, scope: !135)
!139 = !DILocation(line: 94, column: 21, scope: !135)
!140 = !DILocation(line: 95, column: 17, scope: !122)
!141 = !DILocation(line: 98, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !110, file: !1, line: 97, column: 17)
!143 = !DILocation(line: 100, column: 21, scope: !142)
!144 = !DILocation(line: 100, column: 26, scope: !142)
!145 = !DILocation(line: 100, column: 35, scope: !142)
!146 = !DILocation(line: 102, column: 13, scope: !111)
!147 = !DILocation(line: 104, column: 5, scope: !100)
!148 = !DILocation(line: 105, column: 8, scope: !149)
!149 = distinct !DILexicalBlock(scope: !88, file: !1, line: 105, column: 8)
!150 = !DILocation(line: 105, column: 8, scope: !88)
!151 = !DILocation(line: 108, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !1, line: 106, column: 5)
!153 = !DILocation(line: 109, column: 5, scope: !152)
!154 = !DILocation(line: 113, column: 24, scope: !155)
!155 = distinct !DILexicalBlock(scope: !149, file: !1, line: 111, column: 5)
!156 = !DILocation(line: 113, column: 9, scope: !155)
!157 = !DILocation(line: 115, column: 1, scope: !88)
!158 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 118, type: !11, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!159 = !DILocalVariable(name: "data", scope: !158, file: !1, line: 120, type: !14)
!160 = !DILocation(line: 120, column: 12, scope: !158)
!161 = !DILocalVariable(name: "dataBuffer", scope: !158, file: !1, line: 121, type: !18)
!162 = !DILocation(line: 121, column: 10, scope: !158)
!163 = !DILocation(line: 122, column: 12, scope: !158)
!164 = !DILocation(line: 122, column: 10, scope: !158)
!165 = !DILocation(line: 123, column: 8, scope: !166)
!166 = distinct !DILexicalBlock(scope: !158, file: !1, line: 123, column: 8)
!167 = !DILocation(line: 123, column: 8, scope: !158)
!168 = !DILocalVariable(name: "dataLen", scope: !169, file: !1, line: 127, type: !30)
!169 = distinct !DILexicalBlock(scope: !170, file: !1, line: 125, column: 9)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 124, column: 5)
!171 = !DILocation(line: 127, column: 20, scope: !169)
!172 = !DILocation(line: 127, column: 37, scope: !169)
!173 = !DILocation(line: 127, column: 30, scope: !169)
!174 = !DILocation(line: 129, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !169, file: !1, line: 129, column: 17)
!176 = !DILocation(line: 129, column: 20, scope: !175)
!177 = !DILocation(line: 129, column: 29, scope: !175)
!178 = !DILocation(line: 129, column: 17, scope: !169)
!179 = !DILocation(line: 132, column: 27, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 132, column: 21)
!181 = distinct !DILexicalBlock(scope: !175, file: !1, line: 130, column: 13)
!182 = !DILocation(line: 132, column: 32, scope: !180)
!183 = !DILocation(line: 132, column: 31, scope: !180)
!184 = !DILocation(line: 132, column: 51, scope: !180)
!185 = !DILocation(line: 132, column: 50, scope: !180)
!186 = !DILocation(line: 132, column: 41, scope: !180)
!187 = !DILocation(line: 132, column: 61, scope: !180)
!188 = !DILocation(line: 132, column: 21, scope: !180)
!189 = !DILocation(line: 132, column: 68, scope: !180)
!190 = !DILocation(line: 132, column: 21, scope: !181)
!191 = !DILocation(line: 136, column: 38, scope: !192)
!192 = distinct !DILexicalBlock(scope: !180, file: !1, line: 133, column: 17)
!193 = !DILocation(line: 136, column: 31, scope: !192)
!194 = !DILocation(line: 136, column: 29, scope: !192)
!195 = !DILocation(line: 137, column: 25, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 137, column: 25)
!197 = !DILocation(line: 137, column: 33, scope: !196)
!198 = !DILocation(line: 137, column: 37, scope: !196)
!199 = !DILocation(line: 137, column: 40, scope: !196)
!200 = !DILocation(line: 137, column: 45, scope: !196)
!201 = !DILocation(line: 137, column: 52, scope: !196)
!202 = !DILocation(line: 137, column: 56, scope: !196)
!203 = !DILocation(line: 137, column: 25, scope: !192)
!204 = !DILocation(line: 139, column: 25, scope: !205)
!205 = distinct !DILexicalBlock(scope: !196, file: !1, line: 138, column: 21)
!206 = !DILocation(line: 139, column: 30, scope: !205)
!207 = !DILocation(line: 139, column: 37, scope: !205)
!208 = !DILocation(line: 139, column: 41, scope: !205)
!209 = !DILocation(line: 140, column: 21, scope: !205)
!210 = !DILocation(line: 141, column: 17, scope: !192)
!211 = !DILocation(line: 144, column: 21, scope: !212)
!212 = distinct !DILexicalBlock(scope: !180, file: !1, line: 143, column: 17)
!213 = !DILocation(line: 146, column: 21, scope: !212)
!214 = !DILocation(line: 146, column: 26, scope: !212)
!215 = !DILocation(line: 146, column: 35, scope: !212)
!216 = !DILocation(line: 148, column: 13, scope: !181)
!217 = !DILocation(line: 150, column: 5, scope: !170)
!218 = !DILocation(line: 151, column: 8, scope: !219)
!219 = distinct !DILexicalBlock(scope: !158, file: !1, line: 151, column: 8)
!220 = !DILocation(line: 151, column: 8, scope: !158)
!221 = !DILocation(line: 154, column: 24, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !1, line: 152, column: 5)
!223 = !DILocation(line: 154, column: 9, scope: !222)
!224 = !DILocation(line: 155, column: 5, scope: !222)
!225 = !DILocation(line: 156, column: 1, scope: !158)
!226 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 159, type: !11, scopeLine: 160, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!227 = !DILocalVariable(name: "data", scope: !226, file: !1, line: 161, type: !14)
!228 = !DILocation(line: 161, column: 12, scope: !226)
!229 = !DILocalVariable(name: "dataBuffer", scope: !226, file: !1, line: 162, type: !18)
!230 = !DILocation(line: 162, column: 10, scope: !226)
!231 = !DILocation(line: 163, column: 12, scope: !226)
!232 = !DILocation(line: 163, column: 10, scope: !226)
!233 = !DILocation(line: 164, column: 8, scope: !234)
!234 = distinct !DILexicalBlock(scope: !226, file: !1, line: 164, column: 8)
!235 = !DILocation(line: 164, column: 8, scope: !226)
!236 = !DILocation(line: 167, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !1, line: 165, column: 5)
!238 = !DILocation(line: 168, column: 5, scope: !237)
!239 = !DILocation(line: 172, column: 16, scope: !240)
!240 = distinct !DILexicalBlock(scope: !234, file: !1, line: 170, column: 5)
!241 = !DILocation(line: 172, column: 9, scope: !240)
!242 = !DILocation(line: 174, column: 8, scope: !243)
!243 = distinct !DILexicalBlock(scope: !226, file: !1, line: 174, column: 8)
!244 = !DILocation(line: 174, column: 8, scope: !226)
!245 = !DILocation(line: 177, column: 16, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !1, line: 175, column: 5)
!247 = !DILocation(line: 177, column: 9, scope: !246)
!248 = !DILocation(line: 178, column: 5, scope: !246)
!249 = !DILocation(line: 179, column: 1, scope: !226)
!250 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 182, type: !11, scopeLine: 183, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!251 = !DILocalVariable(name: "data", scope: !250, file: !1, line: 184, type: !14)
!252 = !DILocation(line: 184, column: 12, scope: !250)
!253 = !DILocalVariable(name: "dataBuffer", scope: !250, file: !1, line: 185, type: !18)
!254 = !DILocation(line: 185, column: 10, scope: !250)
!255 = !DILocation(line: 186, column: 12, scope: !250)
!256 = !DILocation(line: 186, column: 10, scope: !250)
!257 = !DILocation(line: 187, column: 8, scope: !258)
!258 = distinct !DILexicalBlock(scope: !250, file: !1, line: 187, column: 8)
!259 = !DILocation(line: 187, column: 8, scope: !250)
!260 = !DILocation(line: 190, column: 16, scope: !261)
!261 = distinct !DILexicalBlock(scope: !258, file: !1, line: 188, column: 5)
!262 = !DILocation(line: 190, column: 9, scope: !261)
!263 = !DILocation(line: 191, column: 5, scope: !261)
!264 = !DILocation(line: 192, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !250, file: !1, line: 192, column: 8)
!266 = !DILocation(line: 192, column: 8, scope: !250)
!267 = !DILocation(line: 195, column: 16, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !1, line: 193, column: 5)
!269 = !DILocation(line: 195, column: 9, scope: !268)
!270 = !DILocation(line: 196, column: 5, scope: !268)
!271 = !DILocation(line: 197, column: 1, scope: !250)
!272 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_11_good", scope: !1, file: !1, line: 199, type: !11, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!273 = !DILocation(line: 201, column: 5, scope: !272)
!274 = !DILocation(line: 202, column: 5, scope: !272)
!275 = !DILocation(line: 203, column: 5, scope: !272)
!276 = !DILocation(line: 204, column: 5, scope: !272)
!277 = !DILocation(line: 205, column: 1, scope: !272)
