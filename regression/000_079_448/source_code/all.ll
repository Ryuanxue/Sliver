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
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.3 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.5 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.6 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_15_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !69
  %1 = load i8*, i8** %data, align 8, !dbg !70
  %call = call i64 @strlen(i8* %1) #7, !dbg !71
  store i64 %call, i64* %dataLen, align 8, !dbg !69
  %2 = load i64, i64* %dataLen, align 8, !dbg !72
  %sub = sub i64 100, %2, !dbg !74
  %cmp = icmp ugt i64 %sub, 1, !dbg !75
  br i1 %cmp, label %if.then, label %if.end18, !dbg !76

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !77
  %4 = load i64, i64* %dataLen, align 8, !dbg !80
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !81
  %5 = load i64, i64* %dataLen, align 8, !dbg !82
  %sub1 = sub i64 100, %5, !dbg !83
  %conv = trunc i64 %sub1 to i32, !dbg !84
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !85
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !86
  %cmp3 = icmp ne i8* %call2, null, !dbg !87
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !88

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !89
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !91
  store i64 %call6, i64* %dataLen, align 8, !dbg !92
  %8 = load i64, i64* %dataLen, align 8, !dbg !93
  %cmp7 = icmp ugt i64 %8, 0, !dbg !95
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !96

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !97
  %10 = load i64, i64* %dataLen, align 8, !dbg !98
  %sub9 = sub i64 %10, 1, !dbg !99
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !97
  %11 = load i8, i8* %arrayidx, align 1, !dbg !97
  %conv10 = sext i8 %11 to i32, !dbg !97
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !100
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !101

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !102
  %13 = load i64, i64* %dataLen, align 8, !dbg !104
  %sub14 = sub i64 %13, 1, !dbg !105
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !102
  store i8 0, i8* %arrayidx15, align 1, !dbg !106
  br label %if.end, !dbg !107

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !108

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !109
  %14 = load i8*, i8** %data, align 8, !dbg !111
  %15 = load i64, i64* %dataLen, align 8, !dbg !112
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !111
  store i8 0, i8* %arrayidx16, align 1, !dbg !113
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !114

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !115
  %call19 = call i32 (i8*, ...) @printf(i8* %16), !dbg !116
  ret void, !dbg !117
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
define dso_local void @goodB2G1() #0 !dbg !118 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !121, metadata !DIExpression()), !dbg !122
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !122
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !122
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !123
  store i8* %arraydecay, i8** %data, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !125, metadata !DIExpression()), !dbg !127
  %1 = load i8*, i8** %data, align 8, !dbg !128
  %call = call i64 @strlen(i8* %1) #7, !dbg !129
  store i64 %call, i64* %dataLen, align 8, !dbg !127
  %2 = load i64, i64* %dataLen, align 8, !dbg !130
  %sub = sub i64 100, %2, !dbg !132
  %cmp = icmp ugt i64 %sub, 1, !dbg !133
  br i1 %cmp, label %if.then, label %if.end18, !dbg !134

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !135
  %4 = load i64, i64* %dataLen, align 8, !dbg !138
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !139
  %5 = load i64, i64* %dataLen, align 8, !dbg !140
  %sub1 = sub i64 100, %5, !dbg !141
  %conv = trunc i64 %sub1 to i32, !dbg !142
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !143
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !144
  %cmp3 = icmp ne i8* %call2, null, !dbg !145
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !146

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !147
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !149
  store i64 %call6, i64* %dataLen, align 8, !dbg !150
  %8 = load i64, i64* %dataLen, align 8, !dbg !151
  %cmp7 = icmp ugt i64 %8, 0, !dbg !153
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !154

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !155
  %10 = load i64, i64* %dataLen, align 8, !dbg !156
  %sub9 = sub i64 %10, 1, !dbg !157
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !155
  %11 = load i8, i8* %arrayidx, align 1, !dbg !155
  %conv10 = sext i8 %11 to i32, !dbg !155
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !158
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !159

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !160
  %13 = load i64, i64* %dataLen, align 8, !dbg !162
  %sub14 = sub i64 %13, 1, !dbg !163
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !160
  store i8 0, i8* %arrayidx15, align 1, !dbg !164
  br label %if.end, !dbg !165

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !166

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !167
  %14 = load i8*, i8** %data, align 8, !dbg !169
  %15 = load i64, i64* %dataLen, align 8, !dbg !170
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !169
  store i8 0, i8* %arrayidx16, align 1, !dbg !171
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !172

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !173
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16), !dbg !174
  ret void, !dbg !175
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !176 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !179, metadata !DIExpression()), !dbg !180
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !180
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !180
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !181
  store i8* %arraydecay, i8** %data, align 8, !dbg !182
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !183, metadata !DIExpression()), !dbg !185
  %1 = load i8*, i8** %data, align 8, !dbg !186
  %call = call i64 @strlen(i8* %1) #7, !dbg !187
  store i64 %call, i64* %dataLen, align 8, !dbg !185
  %2 = load i64, i64* %dataLen, align 8, !dbg !188
  %sub = sub i64 100, %2, !dbg !190
  %cmp = icmp ugt i64 %sub, 1, !dbg !191
  br i1 %cmp, label %if.then, label %if.end18, !dbg !192

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !193
  %4 = load i64, i64* %dataLen, align 8, !dbg !196
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !197
  %5 = load i64, i64* %dataLen, align 8, !dbg !198
  %sub1 = sub i64 100, %5, !dbg !199
  %conv = trunc i64 %sub1 to i32, !dbg !200
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !201
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !202
  %cmp3 = icmp ne i8* %call2, null, !dbg !203
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !204

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !205
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !207
  store i64 %call6, i64* %dataLen, align 8, !dbg !208
  %8 = load i64, i64* %dataLen, align 8, !dbg !209
  %cmp7 = icmp ugt i64 %8, 0, !dbg !211
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !212

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !213
  %10 = load i64, i64* %dataLen, align 8, !dbg !214
  %sub9 = sub i64 %10, 1, !dbg !215
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !213
  %11 = load i8, i8* %arrayidx, align 1, !dbg !213
  %conv10 = sext i8 %11 to i32, !dbg !213
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !216
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !217

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !218
  %13 = load i64, i64* %dataLen, align 8, !dbg !220
  %sub14 = sub i64 %13, 1, !dbg !221
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !218
  store i8 0, i8* %arrayidx15, align 1, !dbg !222
  br label %if.end, !dbg !223

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !224

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !225
  %14 = load i8*, i8** %data, align 8, !dbg !227
  %15 = load i64, i64* %dataLen, align 8, !dbg !228
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !227
  store i8 0, i8* %arrayidx16, align 1, !dbg !229
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !230

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !231
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16), !dbg !232
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !234 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !237, metadata !DIExpression()), !dbg !238
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !238
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !238
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !239
  store i8* %arraydecay, i8** %data, align 8, !dbg !240
  %1 = load i8*, i8** %data, align 8, !dbg !241
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !242
  %2 = load i8*, i8** %data, align 8, !dbg !243
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !244
  ret void, !dbg !245
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !246 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !249, metadata !DIExpression()), !dbg !250
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !250
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !250
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !251
  store i8* %arraydecay, i8** %data, align 8, !dbg !252
  %1 = load i8*, i8** %data, align 8, !dbg !253
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !254
  %2 = load i8*, i8** %data, align 8, !dbg !255
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !256
  ret void, !dbg !257
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_15_good() #0 !dbg !258 {
entry:
  call void @goodB2G1(), !dbg !259
  call void @goodB2G2(), !dbg !260
  call void @goodG2B1(), !dbg !261
  call void @goodG2B2(), !dbg !262
  ret void, !dbg !263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !264 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !267, metadata !DIExpression()), !dbg !268
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !269
  %0 = load i8*, i8** %line.addr, align 8, !dbg !270
  %cmp = icmp ne i8* %0, null, !dbg !272
  br i1 %cmp, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !274
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !276
  br label %if.end, !dbg !277

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !278
  ret void, !dbg !279
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !280 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = load i8*, i8** %line.addr, align 8, !dbg !283
  %cmp = icmp ne i8* %0, null, !dbg !285
  br i1 %cmp, label %if.then, label %if.end, !dbg !286

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !287
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !289
  br label %if.end, !dbg !290

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !291
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !292 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load i32*, i32** %line.addr, align 8, !dbg !299
  %cmp = icmp ne i32* %0, null, !dbg !301
  br i1 %cmp, label %if.then, label %if.end, !dbg !302

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !303
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !305
  br label %if.end, !dbg !306

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !307
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !308 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !313
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !316 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !322
  %conv = sext i16 %0 to i32, !dbg !322
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !325 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !331
  %conv = fpext float %0 to double, !dbg !331
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !332
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !334 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !340
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !341
  ret void, !dbg !342
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !343 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !352
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !353
  ret void, !dbg !354
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !355 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !360
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !363 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !366, metadata !DIExpression()), !dbg !367
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !368
  %conv = sext i8 %0 to i32, !dbg !368
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !369
  ret void, !dbg !370
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !371 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !374, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !376, metadata !DIExpression()), !dbg !380
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !381
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !382
  store i32 %0, i32* %arrayidx, align 4, !dbg !383
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !384
  store i32 0, i32* %arrayidx1, align 4, !dbg !385
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !386
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !387
  ret void, !dbg !388
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !389 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !394
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !395
  ret void, !dbg !396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !397 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !400, metadata !DIExpression()), !dbg !401
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !402
  %conv = zext i8 %0 to i32, !dbg !402
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !403
  ret void, !dbg !404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !405 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !411
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !414 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !426
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !427
  %1 = load i32, i32* %intOne, align 4, !dbg !427
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !428
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !429
  %3 = load i32, i32* %intTwo, align 4, !dbg !429
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !430
  ret void, !dbg !431
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !432 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !436, metadata !DIExpression()), !dbg !437
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !438, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata i64* %i, metadata !440, metadata !DIExpression()), !dbg !441
  store i64 0, i64* %i, align 8, !dbg !442
  br label %for.cond, !dbg !444

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !445
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !447
  %cmp = icmp ult i64 %0, %1, !dbg !448
  br i1 %cmp, label %for.body, label %for.end, !dbg !449

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !450
  %3 = load i64, i64* %i, align 8, !dbg !452
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !450
  %4 = load i8, i8* %arrayidx, align 1, !dbg !450
  %conv = zext i8 %4 to i32, !dbg !450
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !453
  br label %for.inc, !dbg !454

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !455
  %inc = add i64 %5, 1, !dbg !455
  store i64 %inc, i64* %i, align 8, !dbg !455
  br label %for.cond, !dbg !456, !llvm.loop !457

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !460
  ret void, !dbg !461
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !462 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !465, metadata !DIExpression()), !dbg !466
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !467, metadata !DIExpression()), !dbg !468
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !471, metadata !DIExpression()), !dbg !472
  store i64 0, i64* %numWritten, align 8, !dbg !472
  br label %while.cond, !dbg !473

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !474
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !475
  %cmp = icmp ult i64 %0, %1, !dbg !476
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !477

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !478
  %2 = load i16*, i16** %call, align 8, !dbg !478
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !478
  %4 = load i64, i64* %numWritten, align 8, !dbg !478
  %mul = mul i64 2, %4, !dbg !478
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !478
  %5 = load i8, i8* %arrayidx, align 1, !dbg !478
  %conv = sext i8 %5 to i32, !dbg !478
  %idxprom = sext i32 %conv to i64, !dbg !478
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !478
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !478
  %conv2 = zext i16 %6 to i32, !dbg !478
  %and = and i32 %conv2, 4096, !dbg !478
  %tobool = icmp ne i32 %and, 0, !dbg !478
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !479

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !480
  %7 = load i16*, i16** %call3, align 8, !dbg !480
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !480
  %9 = load i64, i64* %numWritten, align 8, !dbg !480
  %mul4 = mul i64 2, %9, !dbg !480
  %add = add i64 %mul4, 1, !dbg !480
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !480
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !480
  %conv6 = sext i8 %10 to i32, !dbg !480
  %idxprom7 = sext i32 %conv6 to i64, !dbg !480
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !480
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !480
  %conv9 = zext i16 %11 to i32, !dbg !480
  %and10 = and i32 %conv9, 4096, !dbg !480
  %tobool11 = icmp ne i32 %and10, 0, !dbg !479
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !481
  br i1 %12, label %while.body, label %while.end, !dbg !473

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !482, metadata !DIExpression()), !dbg !484
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !485
  %14 = load i64, i64* %numWritten, align 8, !dbg !486
  %mul12 = mul i64 2, %14, !dbg !487
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !485
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !488
  %15 = load i32, i32* %byte, align 4, !dbg !489
  %conv15 = trunc i32 %15 to i8, !dbg !490
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !491
  %17 = load i64, i64* %numWritten, align 8, !dbg !492
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !491
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !493
  %18 = load i64, i64* %numWritten, align 8, !dbg !494
  %inc = add i64 %18, 1, !dbg !494
  store i64 %inc, i64* %numWritten, align 8, !dbg !494
  br label %while.cond, !dbg !473, !llvm.loop !495

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !497
  ret i64 %19, !dbg !498
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !499 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !502, metadata !DIExpression()), !dbg !503
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !504, metadata !DIExpression()), !dbg !505
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !506, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !508, metadata !DIExpression()), !dbg !509
  store i64 0, i64* %numWritten, align 8, !dbg !509
  br label %while.cond, !dbg !510

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !511
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !512
  %cmp = icmp ult i64 %0, %1, !dbg !513
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !514

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !515
  %3 = load i64, i64* %numWritten, align 8, !dbg !516
  %mul = mul i64 2, %3, !dbg !517
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !515
  %4 = load i32, i32* %arrayidx, align 4, !dbg !515
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !518
  %tobool = icmp ne i32 %call, 0, !dbg !518
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !519

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !520
  %6 = load i64, i64* %numWritten, align 8, !dbg !521
  %mul1 = mul i64 2, %6, !dbg !522
  %add = add i64 %mul1, 1, !dbg !523
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !520
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !520
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !524
  %tobool4 = icmp ne i32 %call3, 0, !dbg !519
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !525
  br i1 %8, label %while.body, label %while.end, !dbg !510

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !526, metadata !DIExpression()), !dbg !528
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !529
  %10 = load i64, i64* %numWritten, align 8, !dbg !530
  %mul5 = mul i64 2, %10, !dbg !531
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !529
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !532
  %11 = load i32, i32* %byte, align 4, !dbg !533
  %conv = trunc i32 %11 to i8, !dbg !534
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !535
  %13 = load i64, i64* %numWritten, align 8, !dbg !536
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !535
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !537
  %14 = load i64, i64* %numWritten, align 8, !dbg !538
  %inc = add i64 %14, 1, !dbg !538
  store i64 %inc, i64* %numWritten, align 8, !dbg !538
  br label %while.cond, !dbg !510, !llvm.loop !539

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !541
  ret i64 %15, !dbg !542
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !543 {
entry:
  ret i32 1, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !547 {
entry:
  ret i32 0, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !549 {
entry:
  %call = call i32 @rand() #8, !dbg !550
  %rem = srem i32 %call, 2, !dbg !551
  ret i32 %rem, !dbg !552
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !587 {
entry:
  ret void, !dbg !588
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_448/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_448/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_15_bad", scope: !45, file: !45, line: 27, type: !53, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 29, type: !42)
!56 = !DILocation(line: 29, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 30, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 100)
!61 = !DILocation(line: 30, column: 10, scope: !52)
!62 = !DILocation(line: 31, column: 12, scope: !52)
!63 = !DILocation(line: 31, column: 10, scope: !52)
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 37, type: !66)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 35, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocation(line: 37, column: 16, scope: !65)
!70 = !DILocation(line: 37, column: 33, scope: !65)
!71 = !DILocation(line: 37, column: 26, scope: !65)
!72 = !DILocation(line: 39, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !65, file: !45, line: 39, column: 13)
!74 = !DILocation(line: 39, column: 16, scope: !73)
!75 = !DILocation(line: 39, column: 25, scope: !73)
!76 = !DILocation(line: 39, column: 13, scope: !65)
!77 = !DILocation(line: 42, column: 23, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !45, line: 42, column: 17)
!79 = distinct !DILexicalBlock(scope: !73, file: !45, line: 40, column: 9)
!80 = !DILocation(line: 42, column: 28, scope: !78)
!81 = !DILocation(line: 42, column: 27, scope: !78)
!82 = !DILocation(line: 42, column: 47, scope: !78)
!83 = !DILocation(line: 42, column: 46, scope: !78)
!84 = !DILocation(line: 42, column: 37, scope: !78)
!85 = !DILocation(line: 42, column: 57, scope: !78)
!86 = !DILocation(line: 42, column: 17, scope: !78)
!87 = !DILocation(line: 42, column: 64, scope: !78)
!88 = !DILocation(line: 42, column: 17, scope: !79)
!89 = !DILocation(line: 46, column: 34, scope: !90)
!90 = distinct !DILexicalBlock(scope: !78, file: !45, line: 43, column: 13)
!91 = !DILocation(line: 46, column: 27, scope: !90)
!92 = !DILocation(line: 46, column: 25, scope: !90)
!93 = !DILocation(line: 47, column: 21, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !45, line: 47, column: 21)
!95 = !DILocation(line: 47, column: 29, scope: !94)
!96 = !DILocation(line: 47, column: 33, scope: !94)
!97 = !DILocation(line: 47, column: 36, scope: !94)
!98 = !DILocation(line: 47, column: 41, scope: !94)
!99 = !DILocation(line: 47, column: 48, scope: !94)
!100 = !DILocation(line: 47, column: 52, scope: !94)
!101 = !DILocation(line: 47, column: 21, scope: !90)
!102 = !DILocation(line: 49, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !94, file: !45, line: 48, column: 17)
!104 = !DILocation(line: 49, column: 26, scope: !103)
!105 = !DILocation(line: 49, column: 33, scope: !103)
!106 = !DILocation(line: 49, column: 37, scope: !103)
!107 = !DILocation(line: 50, column: 17, scope: !103)
!108 = !DILocation(line: 51, column: 13, scope: !90)
!109 = !DILocation(line: 54, column: 17, scope: !110)
!110 = distinct !DILexicalBlock(scope: !78, file: !45, line: 53, column: 13)
!111 = !DILocation(line: 56, column: 17, scope: !110)
!112 = !DILocation(line: 56, column: 22, scope: !110)
!113 = !DILocation(line: 56, column: 31, scope: !110)
!114 = !DILocation(line: 58, column: 9, scope: !79)
!115 = !DILocation(line: 70, column: 16, scope: !52)
!116 = !DILocation(line: 70, column: 9, scope: !52)
!117 = !DILocation(line: 77, column: 1, scope: !52)
!118 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 84, type: !53, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!119 = !DILocalVariable(name: "data", scope: !118, file: !45, line: 86, type: !42)
!120 = !DILocation(line: 86, column: 12, scope: !118)
!121 = !DILocalVariable(name: "dataBuffer", scope: !118, file: !45, line: 87, type: !58)
!122 = !DILocation(line: 87, column: 10, scope: !118)
!123 = !DILocation(line: 88, column: 12, scope: !118)
!124 = !DILocation(line: 88, column: 10, scope: !118)
!125 = !DILocalVariable(name: "dataLen", scope: !126, file: !45, line: 94, type: !66)
!126 = distinct !DILexicalBlock(scope: !118, file: !45, line: 92, column: 5)
!127 = !DILocation(line: 94, column: 16, scope: !126)
!128 = !DILocation(line: 94, column: 33, scope: !126)
!129 = !DILocation(line: 94, column: 26, scope: !126)
!130 = !DILocation(line: 96, column: 17, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !45, line: 96, column: 13)
!132 = !DILocation(line: 96, column: 16, scope: !131)
!133 = !DILocation(line: 96, column: 25, scope: !131)
!134 = !DILocation(line: 96, column: 13, scope: !126)
!135 = !DILocation(line: 99, column: 23, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !45, line: 99, column: 17)
!137 = distinct !DILexicalBlock(scope: !131, file: !45, line: 97, column: 9)
!138 = !DILocation(line: 99, column: 28, scope: !136)
!139 = !DILocation(line: 99, column: 27, scope: !136)
!140 = !DILocation(line: 99, column: 47, scope: !136)
!141 = !DILocation(line: 99, column: 46, scope: !136)
!142 = !DILocation(line: 99, column: 37, scope: !136)
!143 = !DILocation(line: 99, column: 57, scope: !136)
!144 = !DILocation(line: 99, column: 17, scope: !136)
!145 = !DILocation(line: 99, column: 64, scope: !136)
!146 = !DILocation(line: 99, column: 17, scope: !137)
!147 = !DILocation(line: 103, column: 34, scope: !148)
!148 = distinct !DILexicalBlock(scope: !136, file: !45, line: 100, column: 13)
!149 = !DILocation(line: 103, column: 27, scope: !148)
!150 = !DILocation(line: 103, column: 25, scope: !148)
!151 = !DILocation(line: 104, column: 21, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !45, line: 104, column: 21)
!153 = !DILocation(line: 104, column: 29, scope: !152)
!154 = !DILocation(line: 104, column: 33, scope: !152)
!155 = !DILocation(line: 104, column: 36, scope: !152)
!156 = !DILocation(line: 104, column: 41, scope: !152)
!157 = !DILocation(line: 104, column: 48, scope: !152)
!158 = !DILocation(line: 104, column: 52, scope: !152)
!159 = !DILocation(line: 104, column: 21, scope: !148)
!160 = !DILocation(line: 106, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !152, file: !45, line: 105, column: 17)
!162 = !DILocation(line: 106, column: 26, scope: !161)
!163 = !DILocation(line: 106, column: 33, scope: !161)
!164 = !DILocation(line: 106, column: 37, scope: !161)
!165 = !DILocation(line: 107, column: 17, scope: !161)
!166 = !DILocation(line: 108, column: 13, scope: !148)
!167 = !DILocation(line: 111, column: 17, scope: !168)
!168 = distinct !DILexicalBlock(scope: !136, file: !45, line: 110, column: 13)
!169 = !DILocation(line: 113, column: 17, scope: !168)
!170 = !DILocation(line: 113, column: 22, scope: !168)
!171 = !DILocation(line: 113, column: 31, scope: !168)
!172 = !DILocation(line: 115, column: 9, scope: !137)
!173 = !DILocation(line: 131, column: 24, scope: !118)
!174 = !DILocation(line: 131, column: 9, scope: !118)
!175 = !DILocation(line: 134, column: 1, scope: !118)
!176 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 137, type: !53, scopeLine: 138, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!177 = !DILocalVariable(name: "data", scope: !176, file: !45, line: 139, type: !42)
!178 = !DILocation(line: 139, column: 12, scope: !176)
!179 = !DILocalVariable(name: "dataBuffer", scope: !176, file: !45, line: 140, type: !58)
!180 = !DILocation(line: 140, column: 10, scope: !176)
!181 = !DILocation(line: 141, column: 12, scope: !176)
!182 = !DILocation(line: 141, column: 10, scope: !176)
!183 = !DILocalVariable(name: "dataLen", scope: !184, file: !45, line: 147, type: !66)
!184 = distinct !DILexicalBlock(scope: !176, file: !45, line: 145, column: 5)
!185 = !DILocation(line: 147, column: 16, scope: !184)
!186 = !DILocation(line: 147, column: 33, scope: !184)
!187 = !DILocation(line: 147, column: 26, scope: !184)
!188 = !DILocation(line: 149, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !184, file: !45, line: 149, column: 13)
!190 = !DILocation(line: 149, column: 16, scope: !189)
!191 = !DILocation(line: 149, column: 25, scope: !189)
!192 = !DILocation(line: 149, column: 13, scope: !184)
!193 = !DILocation(line: 152, column: 23, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !45, line: 152, column: 17)
!195 = distinct !DILexicalBlock(scope: !189, file: !45, line: 150, column: 9)
!196 = !DILocation(line: 152, column: 28, scope: !194)
!197 = !DILocation(line: 152, column: 27, scope: !194)
!198 = !DILocation(line: 152, column: 47, scope: !194)
!199 = !DILocation(line: 152, column: 46, scope: !194)
!200 = !DILocation(line: 152, column: 37, scope: !194)
!201 = !DILocation(line: 152, column: 57, scope: !194)
!202 = !DILocation(line: 152, column: 17, scope: !194)
!203 = !DILocation(line: 152, column: 64, scope: !194)
!204 = !DILocation(line: 152, column: 17, scope: !195)
!205 = !DILocation(line: 156, column: 34, scope: !206)
!206 = distinct !DILexicalBlock(scope: !194, file: !45, line: 153, column: 13)
!207 = !DILocation(line: 156, column: 27, scope: !206)
!208 = !DILocation(line: 156, column: 25, scope: !206)
!209 = !DILocation(line: 157, column: 21, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !45, line: 157, column: 21)
!211 = !DILocation(line: 157, column: 29, scope: !210)
!212 = !DILocation(line: 157, column: 33, scope: !210)
!213 = !DILocation(line: 157, column: 36, scope: !210)
!214 = !DILocation(line: 157, column: 41, scope: !210)
!215 = !DILocation(line: 157, column: 48, scope: !210)
!216 = !DILocation(line: 157, column: 52, scope: !210)
!217 = !DILocation(line: 157, column: 21, scope: !206)
!218 = !DILocation(line: 159, column: 21, scope: !219)
!219 = distinct !DILexicalBlock(scope: !210, file: !45, line: 158, column: 17)
!220 = !DILocation(line: 159, column: 26, scope: !219)
!221 = !DILocation(line: 159, column: 33, scope: !219)
!222 = !DILocation(line: 159, column: 37, scope: !219)
!223 = !DILocation(line: 160, column: 17, scope: !219)
!224 = !DILocation(line: 161, column: 13, scope: !206)
!225 = !DILocation(line: 164, column: 17, scope: !226)
!226 = distinct !DILexicalBlock(scope: !194, file: !45, line: 163, column: 13)
!227 = !DILocation(line: 166, column: 17, scope: !226)
!228 = !DILocation(line: 166, column: 22, scope: !226)
!229 = !DILocation(line: 166, column: 31, scope: !226)
!230 = !DILocation(line: 168, column: 9, scope: !195)
!231 = !DILocation(line: 180, column: 24, scope: !176)
!232 = !DILocation(line: 180, column: 9, scope: !176)
!233 = !DILocation(line: 187, column: 1, scope: !176)
!234 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 190, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!235 = !DILocalVariable(name: "data", scope: !234, file: !45, line: 192, type: !42)
!236 = !DILocation(line: 192, column: 12, scope: !234)
!237 = !DILocalVariable(name: "dataBuffer", scope: !234, file: !45, line: 193, type: !58)
!238 = !DILocation(line: 193, column: 10, scope: !234)
!239 = !DILocation(line: 194, column: 12, scope: !234)
!240 = !DILocation(line: 194, column: 10, scope: !234)
!241 = !DILocation(line: 203, column: 16, scope: !234)
!242 = !DILocation(line: 203, column: 9, scope: !234)
!243 = !DILocation(line: 210, column: 16, scope: !234)
!244 = !DILocation(line: 210, column: 9, scope: !234)
!245 = !DILocation(line: 217, column: 1, scope: !234)
!246 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 220, type: !53, scopeLine: 221, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!247 = !DILocalVariable(name: "data", scope: !246, file: !45, line: 222, type: !42)
!248 = !DILocation(line: 222, column: 12, scope: !246)
!249 = !DILocalVariable(name: "dataBuffer", scope: !246, file: !45, line: 223, type: !58)
!250 = !DILocation(line: 223, column: 10, scope: !246)
!251 = !DILocation(line: 224, column: 12, scope: !246)
!252 = !DILocation(line: 224, column: 10, scope: !246)
!253 = !DILocation(line: 229, column: 16, scope: !246)
!254 = !DILocation(line: 229, column: 9, scope: !246)
!255 = !DILocation(line: 240, column: 16, scope: !246)
!256 = !DILocation(line: 240, column: 9, scope: !246)
!257 = !DILocation(line: 247, column: 1, scope: !246)
!258 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_15_good", scope: !45, file: !45, line: 249, type: !53, scopeLine: 250, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!259 = !DILocation(line: 251, column: 5, scope: !258)
!260 = !DILocation(line: 252, column: 5, scope: !258)
!261 = !DILocation(line: 253, column: 5, scope: !258)
!262 = !DILocation(line: 254, column: 5, scope: !258)
!263 = !DILocation(line: 255, column: 1, scope: !258)
!264 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !265, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !42}
!267 = !DILocalVariable(name: "line", arg: 1, scope: !264, file: !3, line: 11, type: !42)
!268 = !DILocation(line: 11, column: 25, scope: !264)
!269 = !DILocation(line: 13, column: 1, scope: !264)
!270 = !DILocation(line: 14, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !264, file: !3, line: 14, column: 8)
!272 = !DILocation(line: 14, column: 13, scope: !271)
!273 = !DILocation(line: 14, column: 8, scope: !264)
!274 = !DILocation(line: 16, column: 24, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 15, column: 5)
!276 = !DILocation(line: 16, column: 9, scope: !275)
!277 = !DILocation(line: 17, column: 5, scope: !275)
!278 = !DILocation(line: 18, column: 5, scope: !264)
!279 = !DILocation(line: 19, column: 1, scope: !264)
!280 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !265, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!281 = !DILocalVariable(name: "line", arg: 1, scope: !280, file: !3, line: 20, type: !42)
!282 = !DILocation(line: 20, column: 29, scope: !280)
!283 = !DILocation(line: 22, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !3, line: 22, column: 8)
!285 = !DILocation(line: 22, column: 13, scope: !284)
!286 = !DILocation(line: 22, column: 8, scope: !280)
!287 = !DILocation(line: 24, column: 24, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !3, line: 23, column: 5)
!289 = !DILocation(line: 24, column: 9, scope: !288)
!290 = !DILocation(line: 25, column: 5, scope: !288)
!291 = !DILocation(line: 26, column: 1, scope: !280)
!292 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !293, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !67, line: 74, baseType: !23)
!297 = !DILocalVariable(name: "line", arg: 1, scope: !292, file: !3, line: 27, type: !295)
!298 = !DILocation(line: 27, column: 29, scope: !292)
!299 = !DILocation(line: 29, column: 8, scope: !300)
!300 = distinct !DILexicalBlock(scope: !292, file: !3, line: 29, column: 8)
!301 = !DILocation(line: 29, column: 13, scope: !300)
!302 = !DILocation(line: 29, column: 8, scope: !292)
!303 = !DILocation(line: 31, column: 27, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !3, line: 30, column: 5)
!305 = !DILocation(line: 31, column: 9, scope: !304)
!306 = !DILocation(line: 32, column: 5, scope: !304)
!307 = !DILocation(line: 33, column: 1, scope: !292)
!308 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !309, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !23}
!311 = !DILocalVariable(name: "intNumber", arg: 1, scope: !308, file: !3, line: 35, type: !23)
!312 = !DILocation(line: 35, column: 24, scope: !308)
!313 = !DILocation(line: 37, column: 20, scope: !308)
!314 = !DILocation(line: 37, column: 5, scope: !308)
!315 = !DILocation(line: 38, column: 1, scope: !308)
!316 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !317, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319}
!319 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!320 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !316, file: !3, line: 40, type: !319)
!321 = !DILocation(line: 40, column: 28, scope: !316)
!322 = !DILocation(line: 42, column: 21, scope: !316)
!323 = !DILocation(line: 42, column: 5, scope: !316)
!324 = !DILocation(line: 43, column: 1, scope: !316)
!325 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !326, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!329 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !325, file: !3, line: 45, type: !328)
!330 = !DILocation(line: 45, column: 28, scope: !325)
!331 = !DILocation(line: 47, column: 20, scope: !325)
!332 = !DILocation(line: 47, column: 5, scope: !325)
!333 = !DILocation(line: 48, column: 1, scope: !325)
!334 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !335, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !337}
!337 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!338 = !DILocalVariable(name: "longNumber", arg: 1, scope: !334, file: !3, line: 50, type: !337)
!339 = !DILocation(line: 50, column: 26, scope: !334)
!340 = !DILocation(line: 52, column: 21, scope: !334)
!341 = !DILocation(line: 52, column: 5, scope: !334)
!342 = !DILocation(line: 53, column: 1, scope: !334)
!343 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !344, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !346}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !347, line: 27, baseType: !348)
!347 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !349, line: 44, baseType: !337)
!349 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!350 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !343, file: !3, line: 55, type: !346)
!351 = !DILocation(line: 55, column: 33, scope: !343)
!352 = !DILocation(line: 57, column: 29, scope: !343)
!353 = !DILocation(line: 57, column: 5, scope: !343)
!354 = !DILocation(line: 58, column: 1, scope: !343)
!355 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !356, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !66}
!358 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !355, file: !3, line: 60, type: !66)
!359 = !DILocation(line: 60, column: 29, scope: !355)
!360 = !DILocation(line: 62, column: 21, scope: !355)
!361 = !DILocation(line: 62, column: 5, scope: !355)
!362 = !DILocation(line: 63, column: 1, scope: !355)
!363 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !364, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !43}
!366 = !DILocalVariable(name: "charHex", arg: 1, scope: !363, file: !3, line: 65, type: !43)
!367 = !DILocation(line: 65, column: 29, scope: !363)
!368 = !DILocation(line: 67, column: 22, scope: !363)
!369 = !DILocation(line: 67, column: 5, scope: !363)
!370 = !DILocation(line: 68, column: 1, scope: !363)
!371 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !372, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !296}
!374 = !DILocalVariable(name: "wideChar", arg: 1, scope: !371, file: !3, line: 70, type: !296)
!375 = !DILocation(line: 70, column: 29, scope: !371)
!376 = !DILocalVariable(name: "s", scope: !371, file: !3, line: 74, type: !377)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 64, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 2)
!380 = !DILocation(line: 74, column: 13, scope: !371)
!381 = !DILocation(line: 75, column: 16, scope: !371)
!382 = !DILocation(line: 75, column: 9, scope: !371)
!383 = !DILocation(line: 75, column: 14, scope: !371)
!384 = !DILocation(line: 76, column: 9, scope: !371)
!385 = !DILocation(line: 76, column: 14, scope: !371)
!386 = !DILocation(line: 77, column: 21, scope: !371)
!387 = !DILocation(line: 77, column: 5, scope: !371)
!388 = !DILocation(line: 78, column: 1, scope: !371)
!389 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !390, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !7}
!392 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !389, file: !3, line: 80, type: !7)
!393 = !DILocation(line: 80, column: 33, scope: !389)
!394 = !DILocation(line: 82, column: 20, scope: !389)
!395 = !DILocation(line: 82, column: 5, scope: !389)
!396 = !DILocation(line: 83, column: 1, scope: !389)
!397 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !398, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !25}
!400 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !397, file: !3, line: 85, type: !25)
!401 = !DILocation(line: 85, column: 45, scope: !397)
!402 = !DILocation(line: 87, column: 22, scope: !397)
!403 = !DILocation(line: 87, column: 5, scope: !397)
!404 = !DILocation(line: 88, column: 1, scope: !397)
!405 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !406, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !408}
!408 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!409 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !405, file: !3, line: 90, type: !408)
!410 = !DILocation(line: 90, column: 29, scope: !405)
!411 = !DILocation(line: 92, column: 20, scope: !405)
!412 = !DILocation(line: 92, column: 5, scope: !405)
!413 = !DILocation(line: 93, column: 1, scope: !405)
!414 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !415, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !417}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !419, line: 100, baseType: !420)
!419 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_448/source_code")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !419, line: 96, size: 64, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !420, file: !419, line: 98, baseType: !23, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !420, file: !419, line: 99, baseType: !23, size: 32, offset: 32)
!424 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !414, file: !3, line: 95, type: !417)
!425 = !DILocation(line: 95, column: 40, scope: !414)
!426 = !DILocation(line: 97, column: 26, scope: !414)
!427 = !DILocation(line: 97, column: 47, scope: !414)
!428 = !DILocation(line: 97, column: 55, scope: !414)
!429 = !DILocation(line: 97, column: 76, scope: !414)
!430 = !DILocation(line: 97, column: 5, scope: !414)
!431 = !DILocation(line: 98, column: 1, scope: !414)
!432 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !433, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !435, !66}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!436 = !DILocalVariable(name: "bytes", arg: 1, scope: !432, file: !3, line: 100, type: !435)
!437 = !DILocation(line: 100, column: 38, scope: !432)
!438 = !DILocalVariable(name: "numBytes", arg: 2, scope: !432, file: !3, line: 100, type: !66)
!439 = !DILocation(line: 100, column: 52, scope: !432)
!440 = !DILocalVariable(name: "i", scope: !432, file: !3, line: 102, type: !66)
!441 = !DILocation(line: 102, column: 12, scope: !432)
!442 = !DILocation(line: 103, column: 12, scope: !443)
!443 = distinct !DILexicalBlock(scope: !432, file: !3, line: 103, column: 5)
!444 = !DILocation(line: 103, column: 10, scope: !443)
!445 = !DILocation(line: 103, column: 17, scope: !446)
!446 = distinct !DILexicalBlock(scope: !443, file: !3, line: 103, column: 5)
!447 = !DILocation(line: 103, column: 21, scope: !446)
!448 = !DILocation(line: 103, column: 19, scope: !446)
!449 = !DILocation(line: 103, column: 5, scope: !443)
!450 = !DILocation(line: 105, column: 24, scope: !451)
!451 = distinct !DILexicalBlock(scope: !446, file: !3, line: 104, column: 5)
!452 = !DILocation(line: 105, column: 30, scope: !451)
!453 = !DILocation(line: 105, column: 9, scope: !451)
!454 = !DILocation(line: 106, column: 5, scope: !451)
!455 = !DILocation(line: 103, column: 31, scope: !446)
!456 = !DILocation(line: 103, column: 5, scope: !446)
!457 = distinct !{!457, !449, !458, !459}
!458 = !DILocation(line: 106, column: 5, scope: !443)
!459 = !{!"llvm.loop.mustprogress"}
!460 = !DILocation(line: 107, column: 5, scope: !432)
!461 = !DILocation(line: 108, column: 1, scope: !432)
!462 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !463, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!463 = !DISubroutineType(types: !464)
!464 = !{!66, !435, !66, !42}
!465 = !DILocalVariable(name: "bytes", arg: 1, scope: !462, file: !3, line: 113, type: !435)
!466 = !DILocation(line: 113, column: 39, scope: !462)
!467 = !DILocalVariable(name: "numBytes", arg: 2, scope: !462, file: !3, line: 113, type: !66)
!468 = !DILocation(line: 113, column: 53, scope: !462)
!469 = !DILocalVariable(name: "hex", arg: 3, scope: !462, file: !3, line: 113, type: !42)
!470 = !DILocation(line: 113, column: 71, scope: !462)
!471 = !DILocalVariable(name: "numWritten", scope: !462, file: !3, line: 115, type: !66)
!472 = !DILocation(line: 115, column: 12, scope: !462)
!473 = !DILocation(line: 121, column: 5, scope: !462)
!474 = !DILocation(line: 121, column: 12, scope: !462)
!475 = !DILocation(line: 121, column: 25, scope: !462)
!476 = !DILocation(line: 121, column: 23, scope: !462)
!477 = !DILocation(line: 121, column: 34, scope: !462)
!478 = !DILocation(line: 121, column: 37, scope: !462)
!479 = !DILocation(line: 121, column: 67, scope: !462)
!480 = !DILocation(line: 121, column: 70, scope: !462)
!481 = !DILocation(line: 0, scope: !462)
!482 = !DILocalVariable(name: "byte", scope: !483, file: !3, line: 123, type: !23)
!483 = distinct !DILexicalBlock(scope: !462, file: !3, line: 122, column: 5)
!484 = !DILocation(line: 123, column: 13, scope: !483)
!485 = !DILocation(line: 124, column: 17, scope: !483)
!486 = !DILocation(line: 124, column: 25, scope: !483)
!487 = !DILocation(line: 124, column: 23, scope: !483)
!488 = !DILocation(line: 124, column: 9, scope: !483)
!489 = !DILocation(line: 125, column: 45, scope: !483)
!490 = !DILocation(line: 125, column: 29, scope: !483)
!491 = !DILocation(line: 125, column: 9, scope: !483)
!492 = !DILocation(line: 125, column: 15, scope: !483)
!493 = !DILocation(line: 125, column: 27, scope: !483)
!494 = !DILocation(line: 126, column: 9, scope: !483)
!495 = distinct !{!495, !473, !496, !459}
!496 = !DILocation(line: 127, column: 5, scope: !462)
!497 = !DILocation(line: 129, column: 12, scope: !462)
!498 = !DILocation(line: 129, column: 5, scope: !462)
!499 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !500, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DISubroutineType(types: !501)
!501 = !{!66, !435, !66, !295}
!502 = !DILocalVariable(name: "bytes", arg: 1, scope: !499, file: !3, line: 135, type: !435)
!503 = !DILocation(line: 135, column: 41, scope: !499)
!504 = !DILocalVariable(name: "numBytes", arg: 2, scope: !499, file: !3, line: 135, type: !66)
!505 = !DILocation(line: 135, column: 55, scope: !499)
!506 = !DILocalVariable(name: "hex", arg: 3, scope: !499, file: !3, line: 135, type: !295)
!507 = !DILocation(line: 135, column: 76, scope: !499)
!508 = !DILocalVariable(name: "numWritten", scope: !499, file: !3, line: 137, type: !66)
!509 = !DILocation(line: 137, column: 12, scope: !499)
!510 = !DILocation(line: 143, column: 5, scope: !499)
!511 = !DILocation(line: 143, column: 12, scope: !499)
!512 = !DILocation(line: 143, column: 25, scope: !499)
!513 = !DILocation(line: 143, column: 23, scope: !499)
!514 = !DILocation(line: 143, column: 34, scope: !499)
!515 = !DILocation(line: 143, column: 47, scope: !499)
!516 = !DILocation(line: 143, column: 55, scope: !499)
!517 = !DILocation(line: 143, column: 53, scope: !499)
!518 = !DILocation(line: 143, column: 37, scope: !499)
!519 = !DILocation(line: 143, column: 68, scope: !499)
!520 = !DILocation(line: 143, column: 81, scope: !499)
!521 = !DILocation(line: 143, column: 89, scope: !499)
!522 = !DILocation(line: 143, column: 87, scope: !499)
!523 = !DILocation(line: 143, column: 100, scope: !499)
!524 = !DILocation(line: 143, column: 71, scope: !499)
!525 = !DILocation(line: 0, scope: !499)
!526 = !DILocalVariable(name: "byte", scope: !527, file: !3, line: 145, type: !23)
!527 = distinct !DILexicalBlock(scope: !499, file: !3, line: 144, column: 5)
!528 = !DILocation(line: 145, column: 13, scope: !527)
!529 = !DILocation(line: 146, column: 18, scope: !527)
!530 = !DILocation(line: 146, column: 26, scope: !527)
!531 = !DILocation(line: 146, column: 24, scope: !527)
!532 = !DILocation(line: 146, column: 9, scope: !527)
!533 = !DILocation(line: 147, column: 45, scope: !527)
!534 = !DILocation(line: 147, column: 29, scope: !527)
!535 = !DILocation(line: 147, column: 9, scope: !527)
!536 = !DILocation(line: 147, column: 15, scope: !527)
!537 = !DILocation(line: 147, column: 27, scope: !527)
!538 = !DILocation(line: 148, column: 9, scope: !527)
!539 = distinct !{!539, !510, !540, !459}
!540 = !DILocation(line: 149, column: 5, scope: !499)
!541 = !DILocation(line: 151, column: 12, scope: !499)
!542 = !DILocation(line: 151, column: 5, scope: !499)
!543 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !544, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DISubroutineType(types: !545)
!545 = !{!23}
!546 = !DILocation(line: 158, column: 5, scope: !543)
!547 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !544, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 163, column: 5, scope: !547)
!549 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !544, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 168, column: 13, scope: !549)
!551 = !DILocation(line: 168, column: 20, scope: !549)
!552 = !DILocation(line: 168, column: 5, scope: !549)
!553 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 187, column: 16, scope: !553)
!555 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 188, column: 16, scope: !555)
!557 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 189, column: 16, scope: !557)
!559 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 190, column: 16, scope: !559)
!561 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 191, column: 16, scope: !561)
!563 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 192, column: 16, scope: !563)
!565 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 193, column: 16, scope: !565)
!567 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 194, column: 16, scope: !567)
!569 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 195, column: 16, scope: !569)
!571 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 198, column: 15, scope: !571)
!573 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 199, column: 15, scope: !573)
!575 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 200, column: 15, scope: !575)
!577 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 201, column: 15, scope: !577)
!579 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 202, column: 15, scope: !579)
!581 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 203, column: 15, scope: !581)
!583 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 204, column: 15, scope: !583)
!585 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 205, column: 15, scope: !585)
!587 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 206, column: 15, scope: !587)
