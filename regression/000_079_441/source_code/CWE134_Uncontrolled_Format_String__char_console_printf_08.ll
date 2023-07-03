; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_08.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_08.c"
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
define dso_local i32 @staticReturnsTrue() #0 !dbg !10 {
entry:
  ret i32 1, !dbg !13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsFalse() #0 !dbg !14 {
entry:
  ret i32 0, !dbg !15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_08_bad() #0 !dbg !16 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !19, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !23, metadata !DIExpression()), !dbg !27
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !27
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !28
  store i8* %arraydecay, i8** %data, align 8, !dbg !29
  %call = call i32 @staticReturnsTrue(), !dbg !30
  %tobool = icmp ne i32 %call, 0, !dbg !30
  br i1 %tobool, label %if.then, label %if.end21, !dbg !32

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !33, metadata !DIExpression()), !dbg !39
  %1 = load i8*, i8** %data, align 8, !dbg !40
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !41
  store i64 %call1, i64* %dataLen, align 8, !dbg !39
  %2 = load i64, i64* %dataLen, align 8, !dbg !42
  %sub = sub i64 100, %2, !dbg !44
  %cmp = icmp ugt i64 %sub, 1, !dbg !45
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !46

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !47
  %4 = load i64, i64* %dataLen, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !51
  %5 = load i64, i64* %dataLen, align 8, !dbg !52
  %sub3 = sub i64 100, %5, !dbg !53
  %conv = trunc i64 %sub3 to i32, !dbg !54
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !55
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !56
  %cmp5 = icmp ne i8* %call4, null, !dbg !57
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !58

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !59
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !61
  store i64 %call8, i64* %dataLen, align 8, !dbg !62
  %8 = load i64, i64* %dataLen, align 8, !dbg !63
  %cmp9 = icmp ugt i64 %8, 0, !dbg !65
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !66

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !67
  %10 = load i64, i64* %dataLen, align 8, !dbg !68
  %sub11 = sub i64 %10, 1, !dbg !69
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !67
  %11 = load i8, i8* %arrayidx, align 1, !dbg !67
  %conv12 = sext i8 %11 to i32, !dbg !67
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !70
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !71

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !72
  %13 = load i64, i64* %dataLen, align 8, !dbg !74
  %sub16 = sub i64 %13, 1, !dbg !75
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !72
  store i8 0, i8* %arrayidx17, align 1, !dbg !76
  br label %if.end, !dbg !77

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !78

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !79
  %14 = load i8*, i8** %data, align 8, !dbg !81
  %15 = load i64, i64* %dataLen, align 8, !dbg !82
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !81
  store i8 0, i8* %arrayidx18, align 1, !dbg !83
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !84

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !85

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 @staticReturnsTrue(), !dbg !86
  %tobool23 = icmp ne i32 %call22, 0, !dbg !86
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !88

if.then24:                                        ; preds = %if.end21
  %16 = load i8*, i8** %data, align 8, !dbg !89
  %call25 = call i32 (i8*, ...) @printf(i8* %16), !dbg !91
  br label %if.end26, !dbg !92

if.end26:                                         ; preds = %if.then24, %if.end21
  ret void, !dbg !93
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
define dso_local void @goodB2G1() #0 !dbg !94 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !97, metadata !DIExpression()), !dbg !98
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !98
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !99
  store i8* %arraydecay, i8** %data, align 8, !dbg !100
  %call = call i32 @staticReturnsTrue(), !dbg !101
  %tobool = icmp ne i32 %call, 0, !dbg !101
  br i1 %tobool, label %if.then, label %if.end21, !dbg !103

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !104, metadata !DIExpression()), !dbg !107
  %1 = load i8*, i8** %data, align 8, !dbg !108
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !109
  store i64 %call1, i64* %dataLen, align 8, !dbg !107
  %2 = load i64, i64* %dataLen, align 8, !dbg !110
  %sub = sub i64 100, %2, !dbg !112
  %cmp = icmp ugt i64 %sub, 1, !dbg !113
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !114

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !115
  %4 = load i64, i64* %dataLen, align 8, !dbg !118
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !119
  %5 = load i64, i64* %dataLen, align 8, !dbg !120
  %sub3 = sub i64 100, %5, !dbg !121
  %conv = trunc i64 %sub3 to i32, !dbg !122
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !123
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !124
  %cmp5 = icmp ne i8* %call4, null, !dbg !125
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !126

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !127
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !129
  store i64 %call8, i64* %dataLen, align 8, !dbg !130
  %8 = load i64, i64* %dataLen, align 8, !dbg !131
  %cmp9 = icmp ugt i64 %8, 0, !dbg !133
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !134

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !135
  %10 = load i64, i64* %dataLen, align 8, !dbg !136
  %sub11 = sub i64 %10, 1, !dbg !137
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !135
  %11 = load i8, i8* %arrayidx, align 1, !dbg !135
  %conv12 = sext i8 %11 to i32, !dbg !135
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !138
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !139

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !140
  %13 = load i64, i64* %dataLen, align 8, !dbg !142
  %sub16 = sub i64 %13, 1, !dbg !143
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !140
  store i8 0, i8* %arrayidx17, align 1, !dbg !144
  br label %if.end, !dbg !145

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !146

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !147
  %14 = load i8*, i8** %data, align 8, !dbg !149
  %15 = load i64, i64* %dataLen, align 8, !dbg !150
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !149
  store i8 0, i8* %arrayidx18, align 1, !dbg !151
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !152

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !153

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 @staticReturnsFalse(), !dbg !154
  %tobool23 = icmp ne i32 %call22, 0, !dbg !154
  br i1 %tobool23, label %if.then24, label %if.else25, !dbg !156

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !157
  br label %if.end27, !dbg !159

if.else25:                                        ; preds = %if.end21
  %16 = load i8*, i8** %data, align 8, !dbg !160
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %16), !dbg !162
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then24
  ret void, !dbg !163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !164 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !167, metadata !DIExpression()), !dbg !168
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !168
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !168
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !169
  store i8* %arraydecay, i8** %data, align 8, !dbg !170
  %call = call i32 @staticReturnsTrue(), !dbg !171
  %tobool = icmp ne i32 %call, 0, !dbg !171
  br i1 %tobool, label %if.then, label %if.end21, !dbg !173

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !174, metadata !DIExpression()), !dbg !177
  %1 = load i8*, i8** %data, align 8, !dbg !178
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !179
  store i64 %call1, i64* %dataLen, align 8, !dbg !177
  %2 = load i64, i64* %dataLen, align 8, !dbg !180
  %sub = sub i64 100, %2, !dbg !182
  %cmp = icmp ugt i64 %sub, 1, !dbg !183
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !184

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !185
  %4 = load i64, i64* %dataLen, align 8, !dbg !188
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !189
  %5 = load i64, i64* %dataLen, align 8, !dbg !190
  %sub3 = sub i64 100, %5, !dbg !191
  %conv = trunc i64 %sub3 to i32, !dbg !192
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !193
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !194
  %cmp5 = icmp ne i8* %call4, null, !dbg !195
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !196

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !197
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !199
  store i64 %call8, i64* %dataLen, align 8, !dbg !200
  %8 = load i64, i64* %dataLen, align 8, !dbg !201
  %cmp9 = icmp ugt i64 %8, 0, !dbg !203
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !204

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !205
  %10 = load i64, i64* %dataLen, align 8, !dbg !206
  %sub11 = sub i64 %10, 1, !dbg !207
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !205
  %11 = load i8, i8* %arrayidx, align 1, !dbg !205
  %conv12 = sext i8 %11 to i32, !dbg !205
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !208
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !209

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !210
  %13 = load i64, i64* %dataLen, align 8, !dbg !212
  %sub16 = sub i64 %13, 1, !dbg !213
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !210
  store i8 0, i8* %arrayidx17, align 1, !dbg !214
  br label %if.end, !dbg !215

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !216

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !217
  %14 = load i8*, i8** %data, align 8, !dbg !219
  %15 = load i64, i64* %dataLen, align 8, !dbg !220
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !219
  store i8 0, i8* %arrayidx18, align 1, !dbg !221
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !222

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !223

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 @staticReturnsTrue(), !dbg !224
  %tobool23 = icmp ne i32 %call22, 0, !dbg !224
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !226

if.then24:                                        ; preds = %if.end21
  %16 = load i8*, i8** %data, align 8, !dbg !227
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %16), !dbg !229
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
  %call = call i32 @staticReturnsFalse(), !dbg !239
  %tobool = icmp ne i32 %call, 0, !dbg !239
  br i1 %tobool, label %if.then, label %if.else, !dbg !241

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !242
  br label %if.end, !dbg !244

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !245
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !247
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @staticReturnsTrue(), !dbg !248
  %tobool3 = icmp ne i32 %call2, 0, !dbg !248
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !250

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !251
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !253
  br label %if.end6, !dbg !254

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !255
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !256 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !260
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !260
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !261
  store i8* %arraydecay, i8** %data, align 8, !dbg !262
  %call = call i32 @staticReturnsTrue(), !dbg !263
  %tobool = icmp ne i32 %call, 0, !dbg !263
  br i1 %tobool, label %if.then, label %if.end, !dbg !265

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !266
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !268
  br label %if.end, !dbg !269

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @staticReturnsTrue(), !dbg !270
  %tobool3 = icmp ne i32 %call2, 0, !dbg !270
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !272

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !273
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !275
  br label %if.end6, !dbg !276

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_08_good() #0 !dbg !278 {
entry:
  call void @goodB2G1(), !dbg !279
  call void @goodB2G2(), !dbg !280
  call void @goodG2B1(), !dbg !281
  call void @goodG2B2(), !dbg !282
  ret void, !dbg !283
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_441/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !1, file: !1, line: 28, type: !11, scopeLine: 29, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!4}
!13 = !DILocation(line: 30, column: 5, scope: !10)
!14 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !1, file: !1, line: 33, type: !11, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 35, column: 5, scope: !14)
!16 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_08_bad", scope: !1, file: !1, line: 40, type: !17, scopeLine: 41, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !DILocalVariable(name: "data", scope: !16, file: !1, line: 42, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DILocation(line: 42, column: 12, scope: !16)
!23 = !DILocalVariable(name: "dataBuffer", scope: !16, file: !1, line: 43, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 43, column: 10, scope: !16)
!28 = !DILocation(line: 44, column: 12, scope: !16)
!29 = !DILocation(line: 44, column: 10, scope: !16)
!30 = !DILocation(line: 45, column: 8, scope: !31)
!31 = distinct !DILexicalBlock(scope: !16, file: !1, line: 45, column: 8)
!32 = !DILocation(line: 45, column: 8, scope: !16)
!33 = !DILocalVariable(name: "dataLen", scope: !34, file: !1, line: 49, type: !36)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 47, column: 9)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 46, column: 5)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 49, column: 20, scope: !34)
!40 = !DILocation(line: 49, column: 37, scope: !34)
!41 = !DILocation(line: 49, column: 30, scope: !34)
!42 = !DILocation(line: 51, column: 21, scope: !43)
!43 = distinct !DILexicalBlock(scope: !34, file: !1, line: 51, column: 17)
!44 = !DILocation(line: 51, column: 20, scope: !43)
!45 = !DILocation(line: 51, column: 29, scope: !43)
!46 = !DILocation(line: 51, column: 17, scope: !34)
!47 = !DILocation(line: 54, column: 27, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 54, column: 21)
!49 = distinct !DILexicalBlock(scope: !43, file: !1, line: 52, column: 13)
!50 = !DILocation(line: 54, column: 32, scope: !48)
!51 = !DILocation(line: 54, column: 31, scope: !48)
!52 = !DILocation(line: 54, column: 51, scope: !48)
!53 = !DILocation(line: 54, column: 50, scope: !48)
!54 = !DILocation(line: 54, column: 41, scope: !48)
!55 = !DILocation(line: 54, column: 61, scope: !48)
!56 = !DILocation(line: 54, column: 21, scope: !48)
!57 = !DILocation(line: 54, column: 68, scope: !48)
!58 = !DILocation(line: 54, column: 21, scope: !49)
!59 = !DILocation(line: 58, column: 38, scope: !60)
!60 = distinct !DILexicalBlock(scope: !48, file: !1, line: 55, column: 17)
!61 = !DILocation(line: 58, column: 31, scope: !60)
!62 = !DILocation(line: 58, column: 29, scope: !60)
!63 = !DILocation(line: 59, column: 25, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 59, column: 25)
!65 = !DILocation(line: 59, column: 33, scope: !64)
!66 = !DILocation(line: 59, column: 37, scope: !64)
!67 = !DILocation(line: 59, column: 40, scope: !64)
!68 = !DILocation(line: 59, column: 45, scope: !64)
!69 = !DILocation(line: 59, column: 52, scope: !64)
!70 = !DILocation(line: 59, column: 56, scope: !64)
!71 = !DILocation(line: 59, column: 25, scope: !60)
!72 = !DILocation(line: 61, column: 25, scope: !73)
!73 = distinct !DILexicalBlock(scope: !64, file: !1, line: 60, column: 21)
!74 = !DILocation(line: 61, column: 30, scope: !73)
!75 = !DILocation(line: 61, column: 37, scope: !73)
!76 = !DILocation(line: 61, column: 41, scope: !73)
!77 = !DILocation(line: 62, column: 21, scope: !73)
!78 = !DILocation(line: 63, column: 17, scope: !60)
!79 = !DILocation(line: 66, column: 21, scope: !80)
!80 = distinct !DILexicalBlock(scope: !48, file: !1, line: 65, column: 17)
!81 = !DILocation(line: 68, column: 21, scope: !80)
!82 = !DILocation(line: 68, column: 26, scope: !80)
!83 = !DILocation(line: 68, column: 35, scope: !80)
!84 = !DILocation(line: 70, column: 13, scope: !49)
!85 = !DILocation(line: 72, column: 5, scope: !35)
!86 = !DILocation(line: 73, column: 8, scope: !87)
!87 = distinct !DILexicalBlock(scope: !16, file: !1, line: 73, column: 8)
!88 = !DILocation(line: 73, column: 8, scope: !16)
!89 = !DILocation(line: 76, column: 16, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 74, column: 5)
!91 = !DILocation(line: 76, column: 9, scope: !90)
!92 = !DILocation(line: 77, column: 5, scope: !90)
!93 = !DILocation(line: 78, column: 1, scope: !16)
!94 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 85, type: !17, scopeLine: 86, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!95 = !DILocalVariable(name: "data", scope: !94, file: !1, line: 87, type: !20)
!96 = !DILocation(line: 87, column: 12, scope: !94)
!97 = !DILocalVariable(name: "dataBuffer", scope: !94, file: !1, line: 88, type: !24)
!98 = !DILocation(line: 88, column: 10, scope: !94)
!99 = !DILocation(line: 89, column: 12, scope: !94)
!100 = !DILocation(line: 89, column: 10, scope: !94)
!101 = !DILocation(line: 90, column: 8, scope: !102)
!102 = distinct !DILexicalBlock(scope: !94, file: !1, line: 90, column: 8)
!103 = !DILocation(line: 90, column: 8, scope: !94)
!104 = !DILocalVariable(name: "dataLen", scope: !105, file: !1, line: 94, type: !36)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 92, column: 9)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 91, column: 5)
!107 = !DILocation(line: 94, column: 20, scope: !105)
!108 = !DILocation(line: 94, column: 37, scope: !105)
!109 = !DILocation(line: 94, column: 30, scope: !105)
!110 = !DILocation(line: 96, column: 21, scope: !111)
!111 = distinct !DILexicalBlock(scope: !105, file: !1, line: 96, column: 17)
!112 = !DILocation(line: 96, column: 20, scope: !111)
!113 = !DILocation(line: 96, column: 29, scope: !111)
!114 = !DILocation(line: 96, column: 17, scope: !105)
!115 = !DILocation(line: 99, column: 27, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 99, column: 21)
!117 = distinct !DILexicalBlock(scope: !111, file: !1, line: 97, column: 13)
!118 = !DILocation(line: 99, column: 32, scope: !116)
!119 = !DILocation(line: 99, column: 31, scope: !116)
!120 = !DILocation(line: 99, column: 51, scope: !116)
!121 = !DILocation(line: 99, column: 50, scope: !116)
!122 = !DILocation(line: 99, column: 41, scope: !116)
!123 = !DILocation(line: 99, column: 61, scope: !116)
!124 = !DILocation(line: 99, column: 21, scope: !116)
!125 = !DILocation(line: 99, column: 68, scope: !116)
!126 = !DILocation(line: 99, column: 21, scope: !117)
!127 = !DILocation(line: 103, column: 38, scope: !128)
!128 = distinct !DILexicalBlock(scope: !116, file: !1, line: 100, column: 17)
!129 = !DILocation(line: 103, column: 31, scope: !128)
!130 = !DILocation(line: 103, column: 29, scope: !128)
!131 = !DILocation(line: 104, column: 25, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 104, column: 25)
!133 = !DILocation(line: 104, column: 33, scope: !132)
!134 = !DILocation(line: 104, column: 37, scope: !132)
!135 = !DILocation(line: 104, column: 40, scope: !132)
!136 = !DILocation(line: 104, column: 45, scope: !132)
!137 = !DILocation(line: 104, column: 52, scope: !132)
!138 = !DILocation(line: 104, column: 56, scope: !132)
!139 = !DILocation(line: 104, column: 25, scope: !128)
!140 = !DILocation(line: 106, column: 25, scope: !141)
!141 = distinct !DILexicalBlock(scope: !132, file: !1, line: 105, column: 21)
!142 = !DILocation(line: 106, column: 30, scope: !141)
!143 = !DILocation(line: 106, column: 37, scope: !141)
!144 = !DILocation(line: 106, column: 41, scope: !141)
!145 = !DILocation(line: 107, column: 21, scope: !141)
!146 = !DILocation(line: 108, column: 17, scope: !128)
!147 = !DILocation(line: 111, column: 21, scope: !148)
!148 = distinct !DILexicalBlock(scope: !116, file: !1, line: 110, column: 17)
!149 = !DILocation(line: 113, column: 21, scope: !148)
!150 = !DILocation(line: 113, column: 26, scope: !148)
!151 = !DILocation(line: 113, column: 35, scope: !148)
!152 = !DILocation(line: 115, column: 13, scope: !117)
!153 = !DILocation(line: 117, column: 5, scope: !106)
!154 = !DILocation(line: 118, column: 8, scope: !155)
!155 = distinct !DILexicalBlock(scope: !94, file: !1, line: 118, column: 8)
!156 = !DILocation(line: 118, column: 8, scope: !94)
!157 = !DILocation(line: 121, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 119, column: 5)
!159 = !DILocation(line: 122, column: 5, scope: !158)
!160 = !DILocation(line: 126, column: 24, scope: !161)
!161 = distinct !DILexicalBlock(scope: !155, file: !1, line: 124, column: 5)
!162 = !DILocation(line: 126, column: 9, scope: !161)
!163 = !DILocation(line: 128, column: 1, scope: !94)
!164 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 131, type: !17, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!165 = !DILocalVariable(name: "data", scope: !164, file: !1, line: 133, type: !20)
!166 = !DILocation(line: 133, column: 12, scope: !164)
!167 = !DILocalVariable(name: "dataBuffer", scope: !164, file: !1, line: 134, type: !24)
!168 = !DILocation(line: 134, column: 10, scope: !164)
!169 = !DILocation(line: 135, column: 12, scope: !164)
!170 = !DILocation(line: 135, column: 10, scope: !164)
!171 = !DILocation(line: 136, column: 8, scope: !172)
!172 = distinct !DILexicalBlock(scope: !164, file: !1, line: 136, column: 8)
!173 = !DILocation(line: 136, column: 8, scope: !164)
!174 = !DILocalVariable(name: "dataLen", scope: !175, file: !1, line: 140, type: !36)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 138, column: 9)
!176 = distinct !DILexicalBlock(scope: !172, file: !1, line: 137, column: 5)
!177 = !DILocation(line: 140, column: 20, scope: !175)
!178 = !DILocation(line: 140, column: 37, scope: !175)
!179 = !DILocation(line: 140, column: 30, scope: !175)
!180 = !DILocation(line: 142, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !175, file: !1, line: 142, column: 17)
!182 = !DILocation(line: 142, column: 20, scope: !181)
!183 = !DILocation(line: 142, column: 29, scope: !181)
!184 = !DILocation(line: 142, column: 17, scope: !175)
!185 = !DILocation(line: 145, column: 27, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 145, column: 21)
!187 = distinct !DILexicalBlock(scope: !181, file: !1, line: 143, column: 13)
!188 = !DILocation(line: 145, column: 32, scope: !186)
!189 = !DILocation(line: 145, column: 31, scope: !186)
!190 = !DILocation(line: 145, column: 51, scope: !186)
!191 = !DILocation(line: 145, column: 50, scope: !186)
!192 = !DILocation(line: 145, column: 41, scope: !186)
!193 = !DILocation(line: 145, column: 61, scope: !186)
!194 = !DILocation(line: 145, column: 21, scope: !186)
!195 = !DILocation(line: 145, column: 68, scope: !186)
!196 = !DILocation(line: 145, column: 21, scope: !187)
!197 = !DILocation(line: 149, column: 38, scope: !198)
!198 = distinct !DILexicalBlock(scope: !186, file: !1, line: 146, column: 17)
!199 = !DILocation(line: 149, column: 31, scope: !198)
!200 = !DILocation(line: 149, column: 29, scope: !198)
!201 = !DILocation(line: 150, column: 25, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 150, column: 25)
!203 = !DILocation(line: 150, column: 33, scope: !202)
!204 = !DILocation(line: 150, column: 37, scope: !202)
!205 = !DILocation(line: 150, column: 40, scope: !202)
!206 = !DILocation(line: 150, column: 45, scope: !202)
!207 = !DILocation(line: 150, column: 52, scope: !202)
!208 = !DILocation(line: 150, column: 56, scope: !202)
!209 = !DILocation(line: 150, column: 25, scope: !198)
!210 = !DILocation(line: 152, column: 25, scope: !211)
!211 = distinct !DILexicalBlock(scope: !202, file: !1, line: 151, column: 21)
!212 = !DILocation(line: 152, column: 30, scope: !211)
!213 = !DILocation(line: 152, column: 37, scope: !211)
!214 = !DILocation(line: 152, column: 41, scope: !211)
!215 = !DILocation(line: 153, column: 21, scope: !211)
!216 = !DILocation(line: 154, column: 17, scope: !198)
!217 = !DILocation(line: 157, column: 21, scope: !218)
!218 = distinct !DILexicalBlock(scope: !186, file: !1, line: 156, column: 17)
!219 = !DILocation(line: 159, column: 21, scope: !218)
!220 = !DILocation(line: 159, column: 26, scope: !218)
!221 = !DILocation(line: 159, column: 35, scope: !218)
!222 = !DILocation(line: 161, column: 13, scope: !187)
!223 = !DILocation(line: 163, column: 5, scope: !176)
!224 = !DILocation(line: 164, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !164, file: !1, line: 164, column: 8)
!226 = !DILocation(line: 164, column: 8, scope: !164)
!227 = !DILocation(line: 167, column: 24, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !1, line: 165, column: 5)
!229 = !DILocation(line: 167, column: 9, scope: !228)
!230 = !DILocation(line: 168, column: 5, scope: !228)
!231 = !DILocation(line: 169, column: 1, scope: !164)
!232 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 172, type: !17, scopeLine: 173, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!233 = !DILocalVariable(name: "data", scope: !232, file: !1, line: 174, type: !20)
!234 = !DILocation(line: 174, column: 12, scope: !232)
!235 = !DILocalVariable(name: "dataBuffer", scope: !232, file: !1, line: 175, type: !24)
!236 = !DILocation(line: 175, column: 10, scope: !232)
!237 = !DILocation(line: 176, column: 12, scope: !232)
!238 = !DILocation(line: 176, column: 10, scope: !232)
!239 = !DILocation(line: 177, column: 8, scope: !240)
!240 = distinct !DILexicalBlock(scope: !232, file: !1, line: 177, column: 8)
!241 = !DILocation(line: 177, column: 8, scope: !232)
!242 = !DILocation(line: 180, column: 9, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !1, line: 178, column: 5)
!244 = !DILocation(line: 181, column: 5, scope: !243)
!245 = !DILocation(line: 185, column: 16, scope: !246)
!246 = distinct !DILexicalBlock(scope: !240, file: !1, line: 183, column: 5)
!247 = !DILocation(line: 185, column: 9, scope: !246)
!248 = !DILocation(line: 187, column: 8, scope: !249)
!249 = distinct !DILexicalBlock(scope: !232, file: !1, line: 187, column: 8)
!250 = !DILocation(line: 187, column: 8, scope: !232)
!251 = !DILocation(line: 190, column: 16, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !1, line: 188, column: 5)
!253 = !DILocation(line: 190, column: 9, scope: !252)
!254 = !DILocation(line: 191, column: 5, scope: !252)
!255 = !DILocation(line: 192, column: 1, scope: !232)
!256 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 195, type: !17, scopeLine: 196, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!257 = !DILocalVariable(name: "data", scope: !256, file: !1, line: 197, type: !20)
!258 = !DILocation(line: 197, column: 12, scope: !256)
!259 = !DILocalVariable(name: "dataBuffer", scope: !256, file: !1, line: 198, type: !24)
!260 = !DILocation(line: 198, column: 10, scope: !256)
!261 = !DILocation(line: 199, column: 12, scope: !256)
!262 = !DILocation(line: 199, column: 10, scope: !256)
!263 = !DILocation(line: 200, column: 8, scope: !264)
!264 = distinct !DILexicalBlock(scope: !256, file: !1, line: 200, column: 8)
!265 = !DILocation(line: 200, column: 8, scope: !256)
!266 = !DILocation(line: 203, column: 16, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !1, line: 201, column: 5)
!268 = !DILocation(line: 203, column: 9, scope: !267)
!269 = !DILocation(line: 204, column: 5, scope: !267)
!270 = !DILocation(line: 205, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !256, file: !1, line: 205, column: 8)
!272 = !DILocation(line: 205, column: 8, scope: !256)
!273 = !DILocation(line: 208, column: 16, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !1, line: 206, column: 5)
!275 = !DILocation(line: 208, column: 9, scope: !274)
!276 = !DILocation(line: 209, column: 5, scope: !274)
!277 = !DILocation(line: 210, column: 1, scope: !256)
!278 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_08_good", scope: !1, file: !1, line: 212, type: !17, scopeLine: 213, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!279 = !DILocation(line: 214, column: 5, scope: !278)
!280 = !DILocation(line: 215, column: 5, scope: !278)
!281 = !DILocation(line: 216, column: 5, scope: !278)
!282 = !DILocation(line: 217, column: 5, scope: !278)
!283 = !DILocation(line: 218, column: 1, scope: !278)
