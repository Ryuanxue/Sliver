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
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
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
@.str.4.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_08_bad() #0 !dbg !58 {
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
  %call = call i32 @staticReturnsTrue(), !dbg !70
  %tobool = icmp ne i32 %call, 0, !dbg !70
  br i1 %tobool, label %if.then, label %if.end21, !dbg !72

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !73, metadata !DIExpression()), !dbg !79
  %1 = load i8*, i8** %data, align 8, !dbg !80
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !81
  store i64 %call1, i64* %dataLen, align 8, !dbg !79
  %2 = load i64, i64* %dataLen, align 8, !dbg !82
  %sub = sub i64 100, %2, !dbg !84
  %cmp = icmp ugt i64 %sub, 1, !dbg !85
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !86

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !87
  %4 = load i64, i64* %dataLen, align 8, !dbg !90
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !91
  %5 = load i64, i64* %dataLen, align 8, !dbg !92
  %sub3 = sub i64 100, %5, !dbg !93
  %conv = trunc i64 %sub3 to i32, !dbg !94
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !95
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !96
  %cmp5 = icmp ne i8* %call4, null, !dbg !97
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !98

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !99
  %call8 = call i64 @strlen(i8* %7) #7, !dbg !101
  store i64 %call8, i64* %dataLen, align 8, !dbg !102
  %8 = load i64, i64* %dataLen, align 8, !dbg !103
  %cmp9 = icmp ugt i64 %8, 0, !dbg !105
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !106

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !107
  %10 = load i64, i64* %dataLen, align 8, !dbg !108
  %sub11 = sub i64 %10, 1, !dbg !109
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !107
  %11 = load i8, i8* %arrayidx, align 1, !dbg !107
  %conv12 = sext i8 %11 to i32, !dbg !107
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !110
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !111

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !112
  %13 = load i64, i64* %dataLen, align 8, !dbg !114
  %sub16 = sub i64 %13, 1, !dbg !115
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !112
  store i8 0, i8* %arrayidx17, align 1, !dbg !116
  br label %if.end, !dbg !117

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !118

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !119
  %14 = load i8*, i8** %data, align 8, !dbg !121
  %15 = load i64, i64* %dataLen, align 8, !dbg !122
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !121
  store i8 0, i8* %arrayidx18, align 1, !dbg !123
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !124

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !125

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 @staticReturnsTrue(), !dbg !126
  %tobool23 = icmp ne i32 %call22, 0, !dbg !126
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !128

if.then24:                                        ; preds = %if.end21
  %16 = load i8*, i8** %data, align 8, !dbg !129
  %call25 = call i32 (i8*, ...) @printf(i8* %16), !dbg !131
  br label %if.end26, !dbg !132

if.end26:                                         ; preds = %if.then24, %if.end21
  ret void, !dbg !133
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !134 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !137, metadata !DIExpression()), !dbg !138
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !138
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !138
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !139
  store i8* %arraydecay, i8** %data, align 8, !dbg !140
  %call = call i32 @staticReturnsTrue(), !dbg !141
  %tobool = icmp ne i32 %call, 0, !dbg !141
  br i1 %tobool, label %if.then, label %if.end21, !dbg !143

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !144, metadata !DIExpression()), !dbg !147
  %1 = load i8*, i8** %data, align 8, !dbg !148
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !149
  store i64 %call1, i64* %dataLen, align 8, !dbg !147
  %2 = load i64, i64* %dataLen, align 8, !dbg !150
  %sub = sub i64 100, %2, !dbg !152
  %cmp = icmp ugt i64 %sub, 1, !dbg !153
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !154

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !155
  %4 = load i64, i64* %dataLen, align 8, !dbg !158
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !159
  %5 = load i64, i64* %dataLen, align 8, !dbg !160
  %sub3 = sub i64 100, %5, !dbg !161
  %conv = trunc i64 %sub3 to i32, !dbg !162
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !163
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !164
  %cmp5 = icmp ne i8* %call4, null, !dbg !165
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !166

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !167
  %call8 = call i64 @strlen(i8* %7) #7, !dbg !169
  store i64 %call8, i64* %dataLen, align 8, !dbg !170
  %8 = load i64, i64* %dataLen, align 8, !dbg !171
  %cmp9 = icmp ugt i64 %8, 0, !dbg !173
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !174

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !175
  %10 = load i64, i64* %dataLen, align 8, !dbg !176
  %sub11 = sub i64 %10, 1, !dbg !177
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !175
  %11 = load i8, i8* %arrayidx, align 1, !dbg !175
  %conv12 = sext i8 %11 to i32, !dbg !175
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !178
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !179

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !180
  %13 = load i64, i64* %dataLen, align 8, !dbg !182
  %sub16 = sub i64 %13, 1, !dbg !183
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !180
  store i8 0, i8* %arrayidx17, align 1, !dbg !184
  br label %if.end, !dbg !185

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !186

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !187
  %14 = load i8*, i8** %data, align 8, !dbg !189
  %15 = load i64, i64* %dataLen, align 8, !dbg !190
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !189
  store i8 0, i8* %arrayidx18, align 1, !dbg !191
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !192

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !193

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 @staticReturnsFalse(), !dbg !194
  %tobool23 = icmp ne i32 %call22, 0, !dbg !194
  br i1 %tobool23, label %if.then24, label %if.else25, !dbg !196

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !197
  br label %if.end27, !dbg !199

if.else25:                                        ; preds = %if.end21
  %16 = load i8*, i8** %data, align 8, !dbg !200
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %16), !dbg !202
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then24
  ret void, !dbg !203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !204 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !208
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !208
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !209
  store i8* %arraydecay, i8** %data, align 8, !dbg !210
  %call = call i32 @staticReturnsTrue(), !dbg !211
  %tobool = icmp ne i32 %call, 0, !dbg !211
  br i1 %tobool, label %if.then, label %if.end21, !dbg !213

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !214, metadata !DIExpression()), !dbg !217
  %1 = load i8*, i8** %data, align 8, !dbg !218
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !219
  store i64 %call1, i64* %dataLen, align 8, !dbg !217
  %2 = load i64, i64* %dataLen, align 8, !dbg !220
  %sub = sub i64 100, %2, !dbg !222
  %cmp = icmp ugt i64 %sub, 1, !dbg !223
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !224

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !225
  %4 = load i64, i64* %dataLen, align 8, !dbg !228
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !229
  %5 = load i64, i64* %dataLen, align 8, !dbg !230
  %sub3 = sub i64 100, %5, !dbg !231
  %conv = trunc i64 %sub3 to i32, !dbg !232
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !233
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !234
  %cmp5 = icmp ne i8* %call4, null, !dbg !235
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !236

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !237
  %call8 = call i64 @strlen(i8* %7) #7, !dbg !239
  store i64 %call8, i64* %dataLen, align 8, !dbg !240
  %8 = load i64, i64* %dataLen, align 8, !dbg !241
  %cmp9 = icmp ugt i64 %8, 0, !dbg !243
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !244

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !245
  %10 = load i64, i64* %dataLen, align 8, !dbg !246
  %sub11 = sub i64 %10, 1, !dbg !247
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !245
  %11 = load i8, i8* %arrayidx, align 1, !dbg !245
  %conv12 = sext i8 %11 to i32, !dbg !245
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !248
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !249

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !250
  %13 = load i64, i64* %dataLen, align 8, !dbg !252
  %sub16 = sub i64 %13, 1, !dbg !253
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !250
  store i8 0, i8* %arrayidx17, align 1, !dbg !254
  br label %if.end, !dbg !255

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !256

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !257
  %14 = load i8*, i8** %data, align 8, !dbg !259
  %15 = load i64, i64* %dataLen, align 8, !dbg !260
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !259
  store i8 0, i8* %arrayidx18, align 1, !dbg !261
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !262

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !263

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 @staticReturnsTrue(), !dbg !264
  %tobool23 = icmp ne i32 %call22, 0, !dbg !264
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !266

if.then24:                                        ; preds = %if.end21
  %16 = load i8*, i8** %data, align 8, !dbg !267
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %16), !dbg !269
  br label %if.end26, !dbg !270

if.end26:                                         ; preds = %if.then24, %if.end21
  ret void, !dbg !271
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !272 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !276
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !276
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !277
  store i8* %arraydecay, i8** %data, align 8, !dbg !278
  %call = call i32 @staticReturnsFalse(), !dbg !279
  %tobool = icmp ne i32 %call, 0, !dbg !279
  br i1 %tobool, label %if.then, label %if.else, !dbg !281

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !282
  br label %if.end, !dbg !284

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !285
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !287
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @staticReturnsTrue(), !dbg !288
  %tobool3 = icmp ne i32 %call2, 0, !dbg !288
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !290

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !291
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !293
  br label %if.end6, !dbg !294

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !295
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !296 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !300
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !300
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !301
  store i8* %arraydecay, i8** %data, align 8, !dbg !302
  %call = call i32 @staticReturnsTrue(), !dbg !303
  %tobool = icmp ne i32 %call, 0, !dbg !303
  br i1 %tobool, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !306
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !308
  br label %if.end, !dbg !309

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @staticReturnsTrue(), !dbg !310
  %tobool3 = icmp ne i32 %call2, 0, !dbg !310
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !312

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !313
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !315
  br label %if.end6, !dbg !316

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_08_good() #0 !dbg !318 {
entry:
  call void @goodB2G1(), !dbg !319
  call void @goodB2G2(), !dbg !320
  call void @goodG2B1(), !dbg !321
  call void @goodG2B2(), !dbg !322
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !324 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !327, metadata !DIExpression()), !dbg !328
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !329
  %0 = load i8*, i8** %line.addr, align 8, !dbg !330
  %cmp = icmp ne i8* %0, null, !dbg !332
  br i1 %cmp, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !334
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !336
  br label %if.end, !dbg !337

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !338
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !340 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !341, metadata !DIExpression()), !dbg !342
  %0 = load i8*, i8** %line.addr, align 8, !dbg !343
  %cmp = icmp ne i8* %0, null, !dbg !345
  br i1 %cmp, label %if.then, label %if.end, !dbg !346

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !347
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !349
  br label %if.end, !dbg !350

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !352 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !357, metadata !DIExpression()), !dbg !358
  %0 = load i32*, i32** %line.addr, align 8, !dbg !359
  %cmp = icmp ne i32* %0, null, !dbg !361
  br i1 %cmp, label %if.then, label %if.end, !dbg !362

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !363
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !365
  br label %if.end, !dbg !366

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !367
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !368 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.8, i64 0, i64 0), i32 %0), !dbg !374
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !376 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !382
  %conv = sext i16 %0 to i32, !dbg !382
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !383
  ret void, !dbg !384
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !385 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !389, metadata !DIExpression()), !dbg !390
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !391
  %conv = fpext float %0 to double, !dbg !391
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !392
  ret void, !dbg !393
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !394 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !400
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !401
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !403 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !415 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !418, metadata !DIExpression()), !dbg !419
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !420
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !421
  ret void, !dbg !422
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !423 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !428
  %conv = sext i8 %0 to i32, !dbg !428
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !429
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !431 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !434, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !436, metadata !DIExpression()), !dbg !440
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !441
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !442
  store i32 %0, i32* %arrayidx, align 4, !dbg !443
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !444
  store i32 0, i32* %arrayidx1, align 4, !dbg !445
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !446
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !447
  ret void, !dbg !448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !449 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !452, metadata !DIExpression()), !dbg !453
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !454
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !455
  ret void, !dbg !456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !457 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !460, metadata !DIExpression()), !dbg !461
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !462
  %conv = zext i8 %0 to i32, !dbg !462
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !463
  ret void, !dbg !464
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !465 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !469, metadata !DIExpression()), !dbg !470
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !471
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !472
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !474 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !484, metadata !DIExpression()), !dbg !485
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !486
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !487
  %1 = load i32, i32* %intOne, align 4, !dbg !487
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !488
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !489
  %3 = load i32, i32* %intTwo, align 4, !dbg !489
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !490
  ret void, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !492 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !496, metadata !DIExpression()), !dbg !497
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !498, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.declare(metadata i64* %i, metadata !500, metadata !DIExpression()), !dbg !501
  store i64 0, i64* %i, align 8, !dbg !502
  br label %for.cond, !dbg !504

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !505
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !507
  %cmp = icmp ult i64 %0, %1, !dbg !508
  br i1 %cmp, label %for.body, label %for.end, !dbg !509

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !510
  %3 = load i64, i64* %i, align 8, !dbg !512
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !510
  %4 = load i8, i8* %arrayidx, align 1, !dbg !510
  %conv = zext i8 %4 to i32, !dbg !510
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !513
  br label %for.inc, !dbg !514

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !515
  %inc = add i64 %5, 1, !dbg !515
  store i64 %inc, i64* %i, align 8, !dbg !515
  br label %for.cond, !dbg !516, !llvm.loop !517

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !520
  ret void, !dbg !521
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !522 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !525, metadata !DIExpression()), !dbg !526
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !527, metadata !DIExpression()), !dbg !528
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !529, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !531, metadata !DIExpression()), !dbg !532
  store i64 0, i64* %numWritten, align 8, !dbg !532
  br label %while.cond, !dbg !533

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !534
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !535
  %cmp = icmp ult i64 %0, %1, !dbg !536
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !537

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !538
  %2 = load i16*, i16** %call, align 8, !dbg !538
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !538
  %4 = load i64, i64* %numWritten, align 8, !dbg !538
  %mul = mul i64 2, %4, !dbg !538
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !538
  %5 = load i8, i8* %arrayidx, align 1, !dbg !538
  %conv = sext i8 %5 to i32, !dbg !538
  %idxprom = sext i32 %conv to i64, !dbg !538
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !538
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !538
  %conv2 = zext i16 %6 to i32, !dbg !538
  %and = and i32 %conv2, 4096, !dbg !538
  %tobool = icmp ne i32 %and, 0, !dbg !538
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !539

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !540
  %7 = load i16*, i16** %call3, align 8, !dbg !540
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !540
  %9 = load i64, i64* %numWritten, align 8, !dbg !540
  %mul4 = mul i64 2, %9, !dbg !540
  %add = add i64 %mul4, 1, !dbg !540
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !540
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !540
  %conv6 = sext i8 %10 to i32, !dbg !540
  %idxprom7 = sext i32 %conv6 to i64, !dbg !540
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !540
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !540
  %conv9 = zext i16 %11 to i32, !dbg !540
  %and10 = and i32 %conv9, 4096, !dbg !540
  %tobool11 = icmp ne i32 %and10, 0, !dbg !539
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !541
  br i1 %12, label %while.body, label %while.end, !dbg !533

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !542, metadata !DIExpression()), !dbg !544
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !545
  %14 = load i64, i64* %numWritten, align 8, !dbg !546
  %mul12 = mul i64 2, %14, !dbg !547
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !545
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !548
  %15 = load i32, i32* %byte, align 4, !dbg !549
  %conv15 = trunc i32 %15 to i8, !dbg !550
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !551
  %17 = load i64, i64* %numWritten, align 8, !dbg !552
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !551
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !553
  %18 = load i64, i64* %numWritten, align 8, !dbg !554
  %inc = add i64 %18, 1, !dbg !554
  store i64 %inc, i64* %numWritten, align 8, !dbg !554
  br label %while.cond, !dbg !533, !llvm.loop !555

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !557
  ret i64 %19, !dbg !558
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !559 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !562, metadata !DIExpression()), !dbg !563
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !564, metadata !DIExpression()), !dbg !565
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !566, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !568, metadata !DIExpression()), !dbg !569
  store i64 0, i64* %numWritten, align 8, !dbg !569
  br label %while.cond, !dbg !570

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !571
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !572
  %cmp = icmp ult i64 %0, %1, !dbg !573
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !574

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !575
  %3 = load i64, i64* %numWritten, align 8, !dbg !576
  %mul = mul i64 2, %3, !dbg !577
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !575
  %4 = load i32, i32* %arrayidx, align 4, !dbg !575
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !578
  %tobool = icmp ne i32 %call, 0, !dbg !578
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !579

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !580
  %6 = load i64, i64* %numWritten, align 8, !dbg !581
  %mul1 = mul i64 2, %6, !dbg !582
  %add = add i64 %mul1, 1, !dbg !583
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !580
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !580
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !584
  %tobool4 = icmp ne i32 %call3, 0, !dbg !579
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !585
  br i1 %8, label %while.body, label %while.end, !dbg !570

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !586, metadata !DIExpression()), !dbg !588
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !589
  %10 = load i64, i64* %numWritten, align 8, !dbg !590
  %mul5 = mul i64 2, %10, !dbg !591
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !589
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !592
  %11 = load i32, i32* %byte, align 4, !dbg !593
  %conv = trunc i32 %11 to i8, !dbg !594
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !595
  %13 = load i64, i64* %numWritten, align 8, !dbg !596
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !595
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !597
  %14 = load i64, i64* %numWritten, align 8, !dbg !598
  %inc = add i64 %14, 1, !dbg !598
  store i64 %inc, i64* %numWritten, align 8, !dbg !598
  br label %while.cond, !dbg !570, !llvm.loop !599

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !601
  ret i64 %15, !dbg !602
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !603 {
entry:
  ret i32 1, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !605 {
entry:
  ret i32 0, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !607 {
entry:
  %call = call i32 @rand() #8, !dbg !608
  %rem = srem i32 %call, 2, !dbg !609
  ret i32 %rem, !dbg !610
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !631 {
entry:
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !633 {
entry:
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !635 {
entry:
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !637 {
entry:
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !639 {
entry:
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !641 {
entry:
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !645 {
entry:
  ret void, !dbg !646
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

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_441/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_441/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !45, file: !45, line: 28, type: !53, scopeLine: 29, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{!23}
!55 = !DILocation(line: 30, column: 5, scope: !52)
!56 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !45, file: !45, line: 33, type: !53, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!57 = !DILocation(line: 35, column: 5, scope: !56)
!58 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_08_bad", scope: !45, file: !45, line: 40, type: !59, scopeLine: 41, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocalVariable(name: "data", scope: !58, file: !45, line: 42, type: !42)
!62 = !DILocation(line: 42, column: 12, scope: !58)
!63 = !DILocalVariable(name: "dataBuffer", scope: !58, file: !45, line: 43, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 100)
!67 = !DILocation(line: 43, column: 10, scope: !58)
!68 = !DILocation(line: 44, column: 12, scope: !58)
!69 = !DILocation(line: 44, column: 10, scope: !58)
!70 = !DILocation(line: 45, column: 8, scope: !71)
!71 = distinct !DILexicalBlock(scope: !58, file: !45, line: 45, column: 8)
!72 = !DILocation(line: 45, column: 8, scope: !58)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 49, type: !76)
!74 = distinct !DILexicalBlock(scope: !75, file: !45, line: 47, column: 9)
!75 = distinct !DILexicalBlock(scope: !71, file: !45, line: 46, column: 5)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 46, baseType: !78)
!77 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !DILocation(line: 49, column: 20, scope: !74)
!80 = !DILocation(line: 49, column: 37, scope: !74)
!81 = !DILocation(line: 49, column: 30, scope: !74)
!82 = !DILocation(line: 51, column: 21, scope: !83)
!83 = distinct !DILexicalBlock(scope: !74, file: !45, line: 51, column: 17)
!84 = !DILocation(line: 51, column: 20, scope: !83)
!85 = !DILocation(line: 51, column: 29, scope: !83)
!86 = !DILocation(line: 51, column: 17, scope: !74)
!87 = !DILocation(line: 54, column: 27, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !45, line: 54, column: 21)
!89 = distinct !DILexicalBlock(scope: !83, file: !45, line: 52, column: 13)
!90 = !DILocation(line: 54, column: 32, scope: !88)
!91 = !DILocation(line: 54, column: 31, scope: !88)
!92 = !DILocation(line: 54, column: 51, scope: !88)
!93 = !DILocation(line: 54, column: 50, scope: !88)
!94 = !DILocation(line: 54, column: 41, scope: !88)
!95 = !DILocation(line: 54, column: 61, scope: !88)
!96 = !DILocation(line: 54, column: 21, scope: !88)
!97 = !DILocation(line: 54, column: 68, scope: !88)
!98 = !DILocation(line: 54, column: 21, scope: !89)
!99 = !DILocation(line: 58, column: 38, scope: !100)
!100 = distinct !DILexicalBlock(scope: !88, file: !45, line: 55, column: 17)
!101 = !DILocation(line: 58, column: 31, scope: !100)
!102 = !DILocation(line: 58, column: 29, scope: !100)
!103 = !DILocation(line: 59, column: 25, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !45, line: 59, column: 25)
!105 = !DILocation(line: 59, column: 33, scope: !104)
!106 = !DILocation(line: 59, column: 37, scope: !104)
!107 = !DILocation(line: 59, column: 40, scope: !104)
!108 = !DILocation(line: 59, column: 45, scope: !104)
!109 = !DILocation(line: 59, column: 52, scope: !104)
!110 = !DILocation(line: 59, column: 56, scope: !104)
!111 = !DILocation(line: 59, column: 25, scope: !100)
!112 = !DILocation(line: 61, column: 25, scope: !113)
!113 = distinct !DILexicalBlock(scope: !104, file: !45, line: 60, column: 21)
!114 = !DILocation(line: 61, column: 30, scope: !113)
!115 = !DILocation(line: 61, column: 37, scope: !113)
!116 = !DILocation(line: 61, column: 41, scope: !113)
!117 = !DILocation(line: 62, column: 21, scope: !113)
!118 = !DILocation(line: 63, column: 17, scope: !100)
!119 = !DILocation(line: 66, column: 21, scope: !120)
!120 = distinct !DILexicalBlock(scope: !88, file: !45, line: 65, column: 17)
!121 = !DILocation(line: 68, column: 21, scope: !120)
!122 = !DILocation(line: 68, column: 26, scope: !120)
!123 = !DILocation(line: 68, column: 35, scope: !120)
!124 = !DILocation(line: 70, column: 13, scope: !89)
!125 = !DILocation(line: 72, column: 5, scope: !75)
!126 = !DILocation(line: 73, column: 8, scope: !127)
!127 = distinct !DILexicalBlock(scope: !58, file: !45, line: 73, column: 8)
!128 = !DILocation(line: 73, column: 8, scope: !58)
!129 = !DILocation(line: 76, column: 16, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !45, line: 74, column: 5)
!131 = !DILocation(line: 76, column: 9, scope: !130)
!132 = !DILocation(line: 77, column: 5, scope: !130)
!133 = !DILocation(line: 78, column: 1, scope: !58)
!134 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 85, type: !59, scopeLine: 86, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!135 = !DILocalVariable(name: "data", scope: !134, file: !45, line: 87, type: !42)
!136 = !DILocation(line: 87, column: 12, scope: !134)
!137 = !DILocalVariable(name: "dataBuffer", scope: !134, file: !45, line: 88, type: !64)
!138 = !DILocation(line: 88, column: 10, scope: !134)
!139 = !DILocation(line: 89, column: 12, scope: !134)
!140 = !DILocation(line: 89, column: 10, scope: !134)
!141 = !DILocation(line: 90, column: 8, scope: !142)
!142 = distinct !DILexicalBlock(scope: !134, file: !45, line: 90, column: 8)
!143 = !DILocation(line: 90, column: 8, scope: !134)
!144 = !DILocalVariable(name: "dataLen", scope: !145, file: !45, line: 94, type: !76)
!145 = distinct !DILexicalBlock(scope: !146, file: !45, line: 92, column: 9)
!146 = distinct !DILexicalBlock(scope: !142, file: !45, line: 91, column: 5)
!147 = !DILocation(line: 94, column: 20, scope: !145)
!148 = !DILocation(line: 94, column: 37, scope: !145)
!149 = !DILocation(line: 94, column: 30, scope: !145)
!150 = !DILocation(line: 96, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !145, file: !45, line: 96, column: 17)
!152 = !DILocation(line: 96, column: 20, scope: !151)
!153 = !DILocation(line: 96, column: 29, scope: !151)
!154 = !DILocation(line: 96, column: 17, scope: !145)
!155 = !DILocation(line: 99, column: 27, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !45, line: 99, column: 21)
!157 = distinct !DILexicalBlock(scope: !151, file: !45, line: 97, column: 13)
!158 = !DILocation(line: 99, column: 32, scope: !156)
!159 = !DILocation(line: 99, column: 31, scope: !156)
!160 = !DILocation(line: 99, column: 51, scope: !156)
!161 = !DILocation(line: 99, column: 50, scope: !156)
!162 = !DILocation(line: 99, column: 41, scope: !156)
!163 = !DILocation(line: 99, column: 61, scope: !156)
!164 = !DILocation(line: 99, column: 21, scope: !156)
!165 = !DILocation(line: 99, column: 68, scope: !156)
!166 = !DILocation(line: 99, column: 21, scope: !157)
!167 = !DILocation(line: 103, column: 38, scope: !168)
!168 = distinct !DILexicalBlock(scope: !156, file: !45, line: 100, column: 17)
!169 = !DILocation(line: 103, column: 31, scope: !168)
!170 = !DILocation(line: 103, column: 29, scope: !168)
!171 = !DILocation(line: 104, column: 25, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !45, line: 104, column: 25)
!173 = !DILocation(line: 104, column: 33, scope: !172)
!174 = !DILocation(line: 104, column: 37, scope: !172)
!175 = !DILocation(line: 104, column: 40, scope: !172)
!176 = !DILocation(line: 104, column: 45, scope: !172)
!177 = !DILocation(line: 104, column: 52, scope: !172)
!178 = !DILocation(line: 104, column: 56, scope: !172)
!179 = !DILocation(line: 104, column: 25, scope: !168)
!180 = !DILocation(line: 106, column: 25, scope: !181)
!181 = distinct !DILexicalBlock(scope: !172, file: !45, line: 105, column: 21)
!182 = !DILocation(line: 106, column: 30, scope: !181)
!183 = !DILocation(line: 106, column: 37, scope: !181)
!184 = !DILocation(line: 106, column: 41, scope: !181)
!185 = !DILocation(line: 107, column: 21, scope: !181)
!186 = !DILocation(line: 108, column: 17, scope: !168)
!187 = !DILocation(line: 111, column: 21, scope: !188)
!188 = distinct !DILexicalBlock(scope: !156, file: !45, line: 110, column: 17)
!189 = !DILocation(line: 113, column: 21, scope: !188)
!190 = !DILocation(line: 113, column: 26, scope: !188)
!191 = !DILocation(line: 113, column: 35, scope: !188)
!192 = !DILocation(line: 115, column: 13, scope: !157)
!193 = !DILocation(line: 117, column: 5, scope: !146)
!194 = !DILocation(line: 118, column: 8, scope: !195)
!195 = distinct !DILexicalBlock(scope: !134, file: !45, line: 118, column: 8)
!196 = !DILocation(line: 118, column: 8, scope: !134)
!197 = !DILocation(line: 121, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !45, line: 119, column: 5)
!199 = !DILocation(line: 122, column: 5, scope: !198)
!200 = !DILocation(line: 126, column: 24, scope: !201)
!201 = distinct !DILexicalBlock(scope: !195, file: !45, line: 124, column: 5)
!202 = !DILocation(line: 126, column: 9, scope: !201)
!203 = !DILocation(line: 128, column: 1, scope: !134)
!204 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 131, type: !59, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!205 = !DILocalVariable(name: "data", scope: !204, file: !45, line: 133, type: !42)
!206 = !DILocation(line: 133, column: 12, scope: !204)
!207 = !DILocalVariable(name: "dataBuffer", scope: !204, file: !45, line: 134, type: !64)
!208 = !DILocation(line: 134, column: 10, scope: !204)
!209 = !DILocation(line: 135, column: 12, scope: !204)
!210 = !DILocation(line: 135, column: 10, scope: !204)
!211 = !DILocation(line: 136, column: 8, scope: !212)
!212 = distinct !DILexicalBlock(scope: !204, file: !45, line: 136, column: 8)
!213 = !DILocation(line: 136, column: 8, scope: !204)
!214 = !DILocalVariable(name: "dataLen", scope: !215, file: !45, line: 140, type: !76)
!215 = distinct !DILexicalBlock(scope: !216, file: !45, line: 138, column: 9)
!216 = distinct !DILexicalBlock(scope: !212, file: !45, line: 137, column: 5)
!217 = !DILocation(line: 140, column: 20, scope: !215)
!218 = !DILocation(line: 140, column: 37, scope: !215)
!219 = !DILocation(line: 140, column: 30, scope: !215)
!220 = !DILocation(line: 142, column: 21, scope: !221)
!221 = distinct !DILexicalBlock(scope: !215, file: !45, line: 142, column: 17)
!222 = !DILocation(line: 142, column: 20, scope: !221)
!223 = !DILocation(line: 142, column: 29, scope: !221)
!224 = !DILocation(line: 142, column: 17, scope: !215)
!225 = !DILocation(line: 145, column: 27, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !45, line: 145, column: 21)
!227 = distinct !DILexicalBlock(scope: !221, file: !45, line: 143, column: 13)
!228 = !DILocation(line: 145, column: 32, scope: !226)
!229 = !DILocation(line: 145, column: 31, scope: !226)
!230 = !DILocation(line: 145, column: 51, scope: !226)
!231 = !DILocation(line: 145, column: 50, scope: !226)
!232 = !DILocation(line: 145, column: 41, scope: !226)
!233 = !DILocation(line: 145, column: 61, scope: !226)
!234 = !DILocation(line: 145, column: 21, scope: !226)
!235 = !DILocation(line: 145, column: 68, scope: !226)
!236 = !DILocation(line: 145, column: 21, scope: !227)
!237 = !DILocation(line: 149, column: 38, scope: !238)
!238 = distinct !DILexicalBlock(scope: !226, file: !45, line: 146, column: 17)
!239 = !DILocation(line: 149, column: 31, scope: !238)
!240 = !DILocation(line: 149, column: 29, scope: !238)
!241 = !DILocation(line: 150, column: 25, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !45, line: 150, column: 25)
!243 = !DILocation(line: 150, column: 33, scope: !242)
!244 = !DILocation(line: 150, column: 37, scope: !242)
!245 = !DILocation(line: 150, column: 40, scope: !242)
!246 = !DILocation(line: 150, column: 45, scope: !242)
!247 = !DILocation(line: 150, column: 52, scope: !242)
!248 = !DILocation(line: 150, column: 56, scope: !242)
!249 = !DILocation(line: 150, column: 25, scope: !238)
!250 = !DILocation(line: 152, column: 25, scope: !251)
!251 = distinct !DILexicalBlock(scope: !242, file: !45, line: 151, column: 21)
!252 = !DILocation(line: 152, column: 30, scope: !251)
!253 = !DILocation(line: 152, column: 37, scope: !251)
!254 = !DILocation(line: 152, column: 41, scope: !251)
!255 = !DILocation(line: 153, column: 21, scope: !251)
!256 = !DILocation(line: 154, column: 17, scope: !238)
!257 = !DILocation(line: 157, column: 21, scope: !258)
!258 = distinct !DILexicalBlock(scope: !226, file: !45, line: 156, column: 17)
!259 = !DILocation(line: 159, column: 21, scope: !258)
!260 = !DILocation(line: 159, column: 26, scope: !258)
!261 = !DILocation(line: 159, column: 35, scope: !258)
!262 = !DILocation(line: 161, column: 13, scope: !227)
!263 = !DILocation(line: 163, column: 5, scope: !216)
!264 = !DILocation(line: 164, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !204, file: !45, line: 164, column: 8)
!266 = !DILocation(line: 164, column: 8, scope: !204)
!267 = !DILocation(line: 167, column: 24, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !45, line: 165, column: 5)
!269 = !DILocation(line: 167, column: 9, scope: !268)
!270 = !DILocation(line: 168, column: 5, scope: !268)
!271 = !DILocation(line: 169, column: 1, scope: !204)
!272 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 172, type: !59, scopeLine: 173, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!273 = !DILocalVariable(name: "data", scope: !272, file: !45, line: 174, type: !42)
!274 = !DILocation(line: 174, column: 12, scope: !272)
!275 = !DILocalVariable(name: "dataBuffer", scope: !272, file: !45, line: 175, type: !64)
!276 = !DILocation(line: 175, column: 10, scope: !272)
!277 = !DILocation(line: 176, column: 12, scope: !272)
!278 = !DILocation(line: 176, column: 10, scope: !272)
!279 = !DILocation(line: 177, column: 8, scope: !280)
!280 = distinct !DILexicalBlock(scope: !272, file: !45, line: 177, column: 8)
!281 = !DILocation(line: 177, column: 8, scope: !272)
!282 = !DILocation(line: 180, column: 9, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !45, line: 178, column: 5)
!284 = !DILocation(line: 181, column: 5, scope: !283)
!285 = !DILocation(line: 185, column: 16, scope: !286)
!286 = distinct !DILexicalBlock(scope: !280, file: !45, line: 183, column: 5)
!287 = !DILocation(line: 185, column: 9, scope: !286)
!288 = !DILocation(line: 187, column: 8, scope: !289)
!289 = distinct !DILexicalBlock(scope: !272, file: !45, line: 187, column: 8)
!290 = !DILocation(line: 187, column: 8, scope: !272)
!291 = !DILocation(line: 190, column: 16, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !45, line: 188, column: 5)
!293 = !DILocation(line: 190, column: 9, scope: !292)
!294 = !DILocation(line: 191, column: 5, scope: !292)
!295 = !DILocation(line: 192, column: 1, scope: !272)
!296 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 195, type: !59, scopeLine: 196, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!297 = !DILocalVariable(name: "data", scope: !296, file: !45, line: 197, type: !42)
!298 = !DILocation(line: 197, column: 12, scope: !296)
!299 = !DILocalVariable(name: "dataBuffer", scope: !296, file: !45, line: 198, type: !64)
!300 = !DILocation(line: 198, column: 10, scope: !296)
!301 = !DILocation(line: 199, column: 12, scope: !296)
!302 = !DILocation(line: 199, column: 10, scope: !296)
!303 = !DILocation(line: 200, column: 8, scope: !304)
!304 = distinct !DILexicalBlock(scope: !296, file: !45, line: 200, column: 8)
!305 = !DILocation(line: 200, column: 8, scope: !296)
!306 = !DILocation(line: 203, column: 16, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !45, line: 201, column: 5)
!308 = !DILocation(line: 203, column: 9, scope: !307)
!309 = !DILocation(line: 204, column: 5, scope: !307)
!310 = !DILocation(line: 205, column: 8, scope: !311)
!311 = distinct !DILexicalBlock(scope: !296, file: !45, line: 205, column: 8)
!312 = !DILocation(line: 205, column: 8, scope: !296)
!313 = !DILocation(line: 208, column: 16, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !45, line: 206, column: 5)
!315 = !DILocation(line: 208, column: 9, scope: !314)
!316 = !DILocation(line: 209, column: 5, scope: !314)
!317 = !DILocation(line: 210, column: 1, scope: !296)
!318 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_08_good", scope: !45, file: !45, line: 212, type: !59, scopeLine: 213, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!319 = !DILocation(line: 214, column: 5, scope: !318)
!320 = !DILocation(line: 215, column: 5, scope: !318)
!321 = !DILocation(line: 216, column: 5, scope: !318)
!322 = !DILocation(line: 217, column: 5, scope: !318)
!323 = !DILocation(line: 218, column: 1, scope: !318)
!324 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !325, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !42}
!327 = !DILocalVariable(name: "line", arg: 1, scope: !324, file: !3, line: 11, type: !42)
!328 = !DILocation(line: 11, column: 25, scope: !324)
!329 = !DILocation(line: 13, column: 1, scope: !324)
!330 = !DILocation(line: 14, column: 8, scope: !331)
!331 = distinct !DILexicalBlock(scope: !324, file: !3, line: 14, column: 8)
!332 = !DILocation(line: 14, column: 13, scope: !331)
!333 = !DILocation(line: 14, column: 8, scope: !324)
!334 = !DILocation(line: 16, column: 24, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !3, line: 15, column: 5)
!336 = !DILocation(line: 16, column: 9, scope: !335)
!337 = !DILocation(line: 17, column: 5, scope: !335)
!338 = !DILocation(line: 18, column: 5, scope: !324)
!339 = !DILocation(line: 19, column: 1, scope: !324)
!340 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !325, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!341 = !DILocalVariable(name: "line", arg: 1, scope: !340, file: !3, line: 20, type: !42)
!342 = !DILocation(line: 20, column: 29, scope: !340)
!343 = !DILocation(line: 22, column: 8, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !3, line: 22, column: 8)
!345 = !DILocation(line: 22, column: 13, scope: !344)
!346 = !DILocation(line: 22, column: 8, scope: !340)
!347 = !DILocation(line: 24, column: 24, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !3, line: 23, column: 5)
!349 = !DILocation(line: 24, column: 9, scope: !348)
!350 = !DILocation(line: 25, column: 5, scope: !348)
!351 = !DILocation(line: 26, column: 1, scope: !340)
!352 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !353, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 74, baseType: !23)
!357 = !DILocalVariable(name: "line", arg: 1, scope: !352, file: !3, line: 27, type: !355)
!358 = !DILocation(line: 27, column: 29, scope: !352)
!359 = !DILocation(line: 29, column: 8, scope: !360)
!360 = distinct !DILexicalBlock(scope: !352, file: !3, line: 29, column: 8)
!361 = !DILocation(line: 29, column: 13, scope: !360)
!362 = !DILocation(line: 29, column: 8, scope: !352)
!363 = !DILocation(line: 31, column: 27, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !3, line: 30, column: 5)
!365 = !DILocation(line: 31, column: 9, scope: !364)
!366 = !DILocation(line: 32, column: 5, scope: !364)
!367 = !DILocation(line: 33, column: 1, scope: !352)
!368 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !369, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !23}
!371 = !DILocalVariable(name: "intNumber", arg: 1, scope: !368, file: !3, line: 35, type: !23)
!372 = !DILocation(line: 35, column: 24, scope: !368)
!373 = !DILocation(line: 37, column: 20, scope: !368)
!374 = !DILocation(line: 37, column: 5, scope: !368)
!375 = !DILocation(line: 38, column: 1, scope: !368)
!376 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !377, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379}
!379 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!380 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !376, file: !3, line: 40, type: !379)
!381 = !DILocation(line: 40, column: 28, scope: !376)
!382 = !DILocation(line: 42, column: 21, scope: !376)
!383 = !DILocation(line: 42, column: 5, scope: !376)
!384 = !DILocation(line: 43, column: 1, scope: !376)
!385 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !386, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388}
!388 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!389 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !385, file: !3, line: 45, type: !388)
!390 = !DILocation(line: 45, column: 28, scope: !385)
!391 = !DILocation(line: 47, column: 20, scope: !385)
!392 = !DILocation(line: 47, column: 5, scope: !385)
!393 = !DILocation(line: 48, column: 1, scope: !385)
!394 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !395, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397}
!397 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!398 = !DILocalVariable(name: "longNumber", arg: 1, scope: !394, file: !3, line: 50, type: !397)
!399 = !DILocation(line: 50, column: 26, scope: !394)
!400 = !DILocation(line: 52, column: 21, scope: !394)
!401 = !DILocation(line: 52, column: 5, scope: !394)
!402 = !DILocation(line: 53, column: 1, scope: !394)
!403 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !404, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !406}
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !407, line: 27, baseType: !408)
!407 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !409, line: 44, baseType: !397)
!409 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!410 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !403, file: !3, line: 55, type: !406)
!411 = !DILocation(line: 55, column: 33, scope: !403)
!412 = !DILocation(line: 57, column: 29, scope: !403)
!413 = !DILocation(line: 57, column: 5, scope: !403)
!414 = !DILocation(line: 58, column: 1, scope: !403)
!415 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !416, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !76}
!418 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !415, file: !3, line: 60, type: !76)
!419 = !DILocation(line: 60, column: 29, scope: !415)
!420 = !DILocation(line: 62, column: 21, scope: !415)
!421 = !DILocation(line: 62, column: 5, scope: !415)
!422 = !DILocation(line: 63, column: 1, scope: !415)
!423 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !424, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !43}
!426 = !DILocalVariable(name: "charHex", arg: 1, scope: !423, file: !3, line: 65, type: !43)
!427 = !DILocation(line: 65, column: 29, scope: !423)
!428 = !DILocation(line: 67, column: 22, scope: !423)
!429 = !DILocation(line: 67, column: 5, scope: !423)
!430 = !DILocation(line: 68, column: 1, scope: !423)
!431 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !432, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !356}
!434 = !DILocalVariable(name: "wideChar", arg: 1, scope: !431, file: !3, line: 70, type: !356)
!435 = !DILocation(line: 70, column: 29, scope: !431)
!436 = !DILocalVariable(name: "s", scope: !431, file: !3, line: 74, type: !437)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 64, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 2)
!440 = !DILocation(line: 74, column: 13, scope: !431)
!441 = !DILocation(line: 75, column: 16, scope: !431)
!442 = !DILocation(line: 75, column: 9, scope: !431)
!443 = !DILocation(line: 75, column: 14, scope: !431)
!444 = !DILocation(line: 76, column: 9, scope: !431)
!445 = !DILocation(line: 76, column: 14, scope: !431)
!446 = !DILocation(line: 77, column: 21, scope: !431)
!447 = !DILocation(line: 77, column: 5, scope: !431)
!448 = !DILocation(line: 78, column: 1, scope: !431)
!449 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !450, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !7}
!452 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !449, file: !3, line: 80, type: !7)
!453 = !DILocation(line: 80, column: 33, scope: !449)
!454 = !DILocation(line: 82, column: 20, scope: !449)
!455 = !DILocation(line: 82, column: 5, scope: !449)
!456 = !DILocation(line: 83, column: 1, scope: !449)
!457 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !458, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !25}
!460 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !457, file: !3, line: 85, type: !25)
!461 = !DILocation(line: 85, column: 45, scope: !457)
!462 = !DILocation(line: 87, column: 22, scope: !457)
!463 = !DILocation(line: 87, column: 5, scope: !457)
!464 = !DILocation(line: 88, column: 1, scope: !457)
!465 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !466, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !468}
!468 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!469 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !465, file: !3, line: 90, type: !468)
!470 = !DILocation(line: 90, column: 29, scope: !465)
!471 = !DILocation(line: 92, column: 20, scope: !465)
!472 = !DILocation(line: 92, column: 5, scope: !465)
!473 = !DILocation(line: 93, column: 1, scope: !465)
!474 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !475, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !479, line: 100, baseType: !480)
!479 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_441/source_code")
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !479, line: 96, size: 64, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !480, file: !479, line: 98, baseType: !23, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !480, file: !479, line: 99, baseType: !23, size: 32, offset: 32)
!484 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !474, file: !3, line: 95, type: !477)
!485 = !DILocation(line: 95, column: 40, scope: !474)
!486 = !DILocation(line: 97, column: 26, scope: !474)
!487 = !DILocation(line: 97, column: 47, scope: !474)
!488 = !DILocation(line: 97, column: 55, scope: !474)
!489 = !DILocation(line: 97, column: 76, scope: !474)
!490 = !DILocation(line: 97, column: 5, scope: !474)
!491 = !DILocation(line: 98, column: 1, scope: !474)
!492 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !493, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !495, !76}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!496 = !DILocalVariable(name: "bytes", arg: 1, scope: !492, file: !3, line: 100, type: !495)
!497 = !DILocation(line: 100, column: 38, scope: !492)
!498 = !DILocalVariable(name: "numBytes", arg: 2, scope: !492, file: !3, line: 100, type: !76)
!499 = !DILocation(line: 100, column: 52, scope: !492)
!500 = !DILocalVariable(name: "i", scope: !492, file: !3, line: 102, type: !76)
!501 = !DILocation(line: 102, column: 12, scope: !492)
!502 = !DILocation(line: 103, column: 12, scope: !503)
!503 = distinct !DILexicalBlock(scope: !492, file: !3, line: 103, column: 5)
!504 = !DILocation(line: 103, column: 10, scope: !503)
!505 = !DILocation(line: 103, column: 17, scope: !506)
!506 = distinct !DILexicalBlock(scope: !503, file: !3, line: 103, column: 5)
!507 = !DILocation(line: 103, column: 21, scope: !506)
!508 = !DILocation(line: 103, column: 19, scope: !506)
!509 = !DILocation(line: 103, column: 5, scope: !503)
!510 = !DILocation(line: 105, column: 24, scope: !511)
!511 = distinct !DILexicalBlock(scope: !506, file: !3, line: 104, column: 5)
!512 = !DILocation(line: 105, column: 30, scope: !511)
!513 = !DILocation(line: 105, column: 9, scope: !511)
!514 = !DILocation(line: 106, column: 5, scope: !511)
!515 = !DILocation(line: 103, column: 31, scope: !506)
!516 = !DILocation(line: 103, column: 5, scope: !506)
!517 = distinct !{!517, !509, !518, !519}
!518 = !DILocation(line: 106, column: 5, scope: !503)
!519 = !{!"llvm.loop.mustprogress"}
!520 = !DILocation(line: 107, column: 5, scope: !492)
!521 = !DILocation(line: 108, column: 1, scope: !492)
!522 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !523, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!523 = !DISubroutineType(types: !524)
!524 = !{!76, !495, !76, !42}
!525 = !DILocalVariable(name: "bytes", arg: 1, scope: !522, file: !3, line: 113, type: !495)
!526 = !DILocation(line: 113, column: 39, scope: !522)
!527 = !DILocalVariable(name: "numBytes", arg: 2, scope: !522, file: !3, line: 113, type: !76)
!528 = !DILocation(line: 113, column: 53, scope: !522)
!529 = !DILocalVariable(name: "hex", arg: 3, scope: !522, file: !3, line: 113, type: !42)
!530 = !DILocation(line: 113, column: 71, scope: !522)
!531 = !DILocalVariable(name: "numWritten", scope: !522, file: !3, line: 115, type: !76)
!532 = !DILocation(line: 115, column: 12, scope: !522)
!533 = !DILocation(line: 121, column: 5, scope: !522)
!534 = !DILocation(line: 121, column: 12, scope: !522)
!535 = !DILocation(line: 121, column: 25, scope: !522)
!536 = !DILocation(line: 121, column: 23, scope: !522)
!537 = !DILocation(line: 121, column: 34, scope: !522)
!538 = !DILocation(line: 121, column: 37, scope: !522)
!539 = !DILocation(line: 121, column: 67, scope: !522)
!540 = !DILocation(line: 121, column: 70, scope: !522)
!541 = !DILocation(line: 0, scope: !522)
!542 = !DILocalVariable(name: "byte", scope: !543, file: !3, line: 123, type: !23)
!543 = distinct !DILexicalBlock(scope: !522, file: !3, line: 122, column: 5)
!544 = !DILocation(line: 123, column: 13, scope: !543)
!545 = !DILocation(line: 124, column: 17, scope: !543)
!546 = !DILocation(line: 124, column: 25, scope: !543)
!547 = !DILocation(line: 124, column: 23, scope: !543)
!548 = !DILocation(line: 124, column: 9, scope: !543)
!549 = !DILocation(line: 125, column: 45, scope: !543)
!550 = !DILocation(line: 125, column: 29, scope: !543)
!551 = !DILocation(line: 125, column: 9, scope: !543)
!552 = !DILocation(line: 125, column: 15, scope: !543)
!553 = !DILocation(line: 125, column: 27, scope: !543)
!554 = !DILocation(line: 126, column: 9, scope: !543)
!555 = distinct !{!555, !533, !556, !519}
!556 = !DILocation(line: 127, column: 5, scope: !522)
!557 = !DILocation(line: 129, column: 12, scope: !522)
!558 = !DILocation(line: 129, column: 5, scope: !522)
!559 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !560, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DISubroutineType(types: !561)
!561 = !{!76, !495, !76, !355}
!562 = !DILocalVariable(name: "bytes", arg: 1, scope: !559, file: !3, line: 135, type: !495)
!563 = !DILocation(line: 135, column: 41, scope: !559)
!564 = !DILocalVariable(name: "numBytes", arg: 2, scope: !559, file: !3, line: 135, type: !76)
!565 = !DILocation(line: 135, column: 55, scope: !559)
!566 = !DILocalVariable(name: "hex", arg: 3, scope: !559, file: !3, line: 135, type: !355)
!567 = !DILocation(line: 135, column: 76, scope: !559)
!568 = !DILocalVariable(name: "numWritten", scope: !559, file: !3, line: 137, type: !76)
!569 = !DILocation(line: 137, column: 12, scope: !559)
!570 = !DILocation(line: 143, column: 5, scope: !559)
!571 = !DILocation(line: 143, column: 12, scope: !559)
!572 = !DILocation(line: 143, column: 25, scope: !559)
!573 = !DILocation(line: 143, column: 23, scope: !559)
!574 = !DILocation(line: 143, column: 34, scope: !559)
!575 = !DILocation(line: 143, column: 47, scope: !559)
!576 = !DILocation(line: 143, column: 55, scope: !559)
!577 = !DILocation(line: 143, column: 53, scope: !559)
!578 = !DILocation(line: 143, column: 37, scope: !559)
!579 = !DILocation(line: 143, column: 68, scope: !559)
!580 = !DILocation(line: 143, column: 81, scope: !559)
!581 = !DILocation(line: 143, column: 89, scope: !559)
!582 = !DILocation(line: 143, column: 87, scope: !559)
!583 = !DILocation(line: 143, column: 100, scope: !559)
!584 = !DILocation(line: 143, column: 71, scope: !559)
!585 = !DILocation(line: 0, scope: !559)
!586 = !DILocalVariable(name: "byte", scope: !587, file: !3, line: 145, type: !23)
!587 = distinct !DILexicalBlock(scope: !559, file: !3, line: 144, column: 5)
!588 = !DILocation(line: 145, column: 13, scope: !587)
!589 = !DILocation(line: 146, column: 18, scope: !587)
!590 = !DILocation(line: 146, column: 26, scope: !587)
!591 = !DILocation(line: 146, column: 24, scope: !587)
!592 = !DILocation(line: 146, column: 9, scope: !587)
!593 = !DILocation(line: 147, column: 45, scope: !587)
!594 = !DILocation(line: 147, column: 29, scope: !587)
!595 = !DILocation(line: 147, column: 9, scope: !587)
!596 = !DILocation(line: 147, column: 15, scope: !587)
!597 = !DILocation(line: 147, column: 27, scope: !587)
!598 = !DILocation(line: 148, column: 9, scope: !587)
!599 = distinct !{!599, !570, !600, !519}
!600 = !DILocation(line: 149, column: 5, scope: !559)
!601 = !DILocation(line: 151, column: 12, scope: !559)
!602 = !DILocation(line: 151, column: 5, scope: !559)
!603 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !53, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 158, column: 5, scope: !603)
!605 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !53, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 163, column: 5, scope: !605)
!607 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !53, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 168, column: 13, scope: !607)
!609 = !DILocation(line: 168, column: 20, scope: !607)
!610 = !DILocation(line: 168, column: 5, scope: !607)
!611 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !59, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 187, column: 16, scope: !611)
!613 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !59, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 188, column: 16, scope: !613)
!615 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !59, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 189, column: 16, scope: !615)
!617 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 190, column: 16, scope: !617)
!619 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !59, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 191, column: 16, scope: !619)
!621 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !59, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 192, column: 16, scope: !621)
!623 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !59, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 193, column: 16, scope: !623)
!625 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !59, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 194, column: 16, scope: !625)
!627 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !59, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 195, column: 16, scope: !627)
!629 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !59, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 198, column: 15, scope: !629)
!631 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !59, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 199, column: 15, scope: !631)
!633 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !59, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 200, column: 15, scope: !633)
!635 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !59, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 201, column: 15, scope: !635)
!637 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !59, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 202, column: 15, scope: !637)
!639 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !59, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 203, column: 15, scope: !639)
!641 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !59, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DILocation(line: 204, column: 15, scope: !641)
!643 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !59, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DILocation(line: 205, column: 15, scope: !643)
!645 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !59, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!646 = !DILocation(line: 206, column: 15, scope: !645)
