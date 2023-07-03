; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_vprintf_21.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_vprintf_21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@badStatic = dso_local global i32 0, align 4, !dbg !0
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !9
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !11
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !13
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !19 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !24, metadata !DIExpression()), !dbg !25
  %0 = load i32, i32* @badStatic, align 4, !dbg !26
  %tobool = icmp ne i32 %0, 0, !dbg !26
  br i1 %tobool, label %if.then, label %if.end, !dbg !28

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !29, metadata !DIExpression()), !dbg !47
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !48
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !48
  call void @llvm.va_start(i8* %arraydecay1), !dbg !48
  %1 = load i8*, i8** %data.addr, align 8, !dbg !49
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !50
  %call = call i32 @vprintf(i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !51
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !52
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !52
  call void @llvm.va_end(i8* %arraydecay34), !dbg !52
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_21_bad() #0 !dbg !55 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !64
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !65
  store i8* %arraydecay, i8** %data, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !72
  %1 = load i8*, i8** %data, align 8, !dbg !73
  %call = call i64 @strlen(i8* %1) #7, !dbg !74
  store i64 %call, i64* %dataLen, align 8, !dbg !72
  %2 = load i64, i64* %dataLen, align 8, !dbg !75
  %sub = sub i64 100, %2, !dbg !77
  %cmp = icmp ugt i64 %sub, 1, !dbg !78
  br i1 %cmp, label %if.then, label %if.end18, !dbg !79

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !80
  %4 = load i64, i64* %dataLen, align 8, !dbg !83
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !84
  %5 = load i64, i64* %dataLen, align 8, !dbg !85
  %sub1 = sub i64 100, %5, !dbg !86
  %conv = trunc i64 %sub1 to i32, !dbg !87
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !88
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !89
  %cmp3 = icmp ne i8* %call2, null, !dbg !90
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !91

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !92
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !94
  store i64 %call6, i64* %dataLen, align 8, !dbg !95
  %8 = load i64, i64* %dataLen, align 8, !dbg !96
  %cmp7 = icmp ugt i64 %8, 0, !dbg !98
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !99

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !100
  %10 = load i64, i64* %dataLen, align 8, !dbg !101
  %sub9 = sub i64 %10, 1, !dbg !102
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !100
  %11 = load i8, i8* %arrayidx, align 1, !dbg !100
  %conv10 = sext i8 %11 to i32, !dbg !100
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !103
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !104

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !105
  %13 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub14 = sub i64 %13, 1, !dbg !108
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !105
  store i8 0, i8* %arrayidx15, align 1, !dbg !109
  br label %if.end, !dbg !110

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !111

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !112
  %14 = load i8*, i8** %data, align 8, !dbg !114
  %15 = load i64, i64* %dataLen, align 8, !dbg !115
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !114
  store i8 0, i8* %arrayidx16, align 1, !dbg !116
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !117

if.end18:                                         ; preds = %if.end17, %entry
  store i32 1, i32* @badStatic, align 4, !dbg !118
  %16 = load i8*, i8** %data, align 8, !dbg !119
  %17 = load i8*, i8** %data, align 8, !dbg !120
  call void (i8*, ...) @badVaSink(i8* %16, i8* %17), !dbg !121
  ret void, !dbg !122
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1_vasink(i8* %data, ...) #0 !dbg !123 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !126
  %tobool = icmp ne i32 %0, 0, !dbg !126
  br i1 %tobool, label %if.then, label %if.else, !dbg !128

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !129
  br label %if.end, !dbg !131

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !132, metadata !DIExpression()), !dbg !135
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !136
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !136
  call void @llvm.va_start(i8* %arraydecay1), !dbg !136
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !137
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !138
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !139
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !139
  call void @llvm.va_end(i8* %arraydecay34), !dbg !139
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !140
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !141 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !144, metadata !DIExpression()), !dbg !145
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !145
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !145
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !146
  store i8* %arraydecay, i8** %data, align 8, !dbg !147
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !148, metadata !DIExpression()), !dbg !150
  %1 = load i8*, i8** %data, align 8, !dbg !151
  %call = call i64 @strlen(i8* %1) #7, !dbg !152
  store i64 %call, i64* %dataLen, align 8, !dbg !150
  %2 = load i64, i64* %dataLen, align 8, !dbg !153
  %sub = sub i64 100, %2, !dbg !155
  %cmp = icmp ugt i64 %sub, 1, !dbg !156
  br i1 %cmp, label %if.then, label %if.end18, !dbg !157

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !158
  %4 = load i64, i64* %dataLen, align 8, !dbg !161
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !162
  %5 = load i64, i64* %dataLen, align 8, !dbg !163
  %sub1 = sub i64 100, %5, !dbg !164
  %conv = trunc i64 %sub1 to i32, !dbg !165
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !166
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !167
  %cmp3 = icmp ne i8* %call2, null, !dbg !168
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !169

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !170
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !172
  store i64 %call6, i64* %dataLen, align 8, !dbg !173
  %8 = load i64, i64* %dataLen, align 8, !dbg !174
  %cmp7 = icmp ugt i64 %8, 0, !dbg !176
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !177

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !178
  %10 = load i64, i64* %dataLen, align 8, !dbg !179
  %sub9 = sub i64 %10, 1, !dbg !180
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !178
  %11 = load i8, i8* %arrayidx, align 1, !dbg !178
  %conv10 = sext i8 %11 to i32, !dbg !178
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !181
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !182

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !183
  %13 = load i64, i64* %dataLen, align 8, !dbg !185
  %sub14 = sub i64 %13, 1, !dbg !186
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !183
  store i8 0, i8* %arrayidx15, align 1, !dbg !187
  br label %if.end, !dbg !188

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !189

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !190
  %14 = load i8*, i8** %data, align 8, !dbg !192
  %15 = load i64, i64* %dataLen, align 8, !dbg !193
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !192
  store i8 0, i8* %arrayidx16, align 1, !dbg !194
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !195

if.end18:                                         ; preds = %if.end17, %entry
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !196
  %16 = load i8*, i8** %data, align 8, !dbg !197
  %17 = load i8*, i8** %data, align 8, !dbg !198
  call void (i8*, ...) @goodB2G1_vasink(i8* %16, i8* %17), !dbg !199
  ret void, !dbg !200
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2_vasink(i8* %data, ...) #0 !dbg !201 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !202, metadata !DIExpression()), !dbg !203
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !204
  %tobool = icmp ne i32 %0, 0, !dbg !204
  br i1 %tobool, label %if.then, label %if.end, !dbg !206

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !207, metadata !DIExpression()), !dbg !210
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !211
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !211
  call void @llvm.va_start(i8* %arraydecay1), !dbg !211
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !212
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !213
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !214
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !214
  call void @llvm.va_end(i8* %arraydecay34), !dbg !214
  br label %if.end, !dbg !215

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !216
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !217 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !220, metadata !DIExpression()), !dbg !221
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !221
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !221
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !222
  store i8* %arraydecay, i8** %data, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !224, metadata !DIExpression()), !dbg !226
  %1 = load i8*, i8** %data, align 8, !dbg !227
  %call = call i64 @strlen(i8* %1) #7, !dbg !228
  store i64 %call, i64* %dataLen, align 8, !dbg !226
  %2 = load i64, i64* %dataLen, align 8, !dbg !229
  %sub = sub i64 100, %2, !dbg !231
  %cmp = icmp ugt i64 %sub, 1, !dbg !232
  br i1 %cmp, label %if.then, label %if.end18, !dbg !233

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !234
  %4 = load i64, i64* %dataLen, align 8, !dbg !237
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !238
  %5 = load i64, i64* %dataLen, align 8, !dbg !239
  %sub1 = sub i64 100, %5, !dbg !240
  %conv = trunc i64 %sub1 to i32, !dbg !241
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !242
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !243
  %cmp3 = icmp ne i8* %call2, null, !dbg !244
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !245

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !246
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !248
  store i64 %call6, i64* %dataLen, align 8, !dbg !249
  %8 = load i64, i64* %dataLen, align 8, !dbg !250
  %cmp7 = icmp ugt i64 %8, 0, !dbg !252
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !253

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !254
  %10 = load i64, i64* %dataLen, align 8, !dbg !255
  %sub9 = sub i64 %10, 1, !dbg !256
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !254
  %11 = load i8, i8* %arrayidx, align 1, !dbg !254
  %conv10 = sext i8 %11 to i32, !dbg !254
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !257
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !258

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !259
  %13 = load i64, i64* %dataLen, align 8, !dbg !261
  %sub14 = sub i64 %13, 1, !dbg !262
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !259
  store i8 0, i8* %arrayidx15, align 1, !dbg !263
  br label %if.end, !dbg !264

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !265

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !266
  %14 = load i8*, i8** %data, align 8, !dbg !268
  %15 = load i64, i64* %dataLen, align 8, !dbg !269
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !268
  store i8 0, i8* %arrayidx16, align 1, !dbg !270
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !271

if.end18:                                         ; preds = %if.end17, %entry
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !272
  %16 = load i8*, i8** %data, align 8, !dbg !273
  %17 = load i8*, i8** %data, align 8, !dbg !274
  call void (i8*, ...) @goodB2G2_vasink(i8* %16, i8* %17), !dbg !275
  ret void, !dbg !276
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !277 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !280
  %tobool = icmp ne i32 %0, 0, !dbg !280
  br i1 %tobool, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !283, metadata !DIExpression()), !dbg !286
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !287
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !287
  call void @llvm.va_start(i8* %arraydecay1), !dbg !287
  %1 = load i8*, i8** %data.addr, align 8, !dbg !288
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !289
  %call = call i32 @vprintf(i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !290
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !291
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !291
  call void @llvm.va_end(i8* %arraydecay34), !dbg !291
  br label %if.end, !dbg !292

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !293
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !294 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !298
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !298
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !299
  store i8* %arraydecay, i8** %data, align 8, !dbg !300
  %1 = load i8*, i8** %data, align 8, !dbg !301
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !302
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !303
  %2 = load i8*, i8** %data, align 8, !dbg !304
  %3 = load i8*, i8** %data, align 8, !dbg !305
  call void (i8*, ...) @goodG2BVaSink(i8* %2, i8* %3), !dbg !306
  ret void, !dbg !307
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_21_good() #0 !dbg !308 {
entry:
  call void @goodB2G1(), !dbg !309
  call void @goodB2G2(), !dbg !310
  call void @goodG2B(), !dbg !311
  ret void, !dbg !312
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 29, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_vprintf_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_596/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 84, type: !6, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 85, type: !6, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 86, type: !6, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "badVaSink", scope: !3, file: !3, line: 31, type: !20, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, null}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DILocalVariable(name: "data", arg: 1, scope: !19, file: !3, line: 31, type: !22)
!25 = !DILocation(line: 31, column: 23, scope: !19)
!26 = !DILocation(line: 33, column: 8, scope: !27)
!27 = distinct !DILexicalBlock(scope: !19, file: !3, line: 33, column: 8)
!28 = !DILocation(line: 33, column: 8, scope: !19)
!29 = !DILocalVariable(name: "args", scope: !30, file: !3, line: 36, type: !32)
!30 = distinct !DILexicalBlock(scope: !31, file: !3, line: 35, column: 9)
!31 = distinct !DILexicalBlock(scope: !27, file: !3, line: 34, column: 5)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !33, line: 52, baseType: !34)
!33 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !35, line: 32, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 192, elements: !45)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !39)
!39 = !{!40, !42, !43, !44}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !38, file: !3, line: 36, baseType: !41, size: 32)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !38, file: !3, line: 36, baseType: !41, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !38, file: !3, line: 36, baseType: !7, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !38, file: !3, line: 36, baseType: !7, size: 64, offset: 128)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DILocation(line: 36, column: 21, scope: !30)
!48 = !DILocation(line: 37, column: 13, scope: !30)
!49 = !DILocation(line: 39, column: 21, scope: !30)
!50 = !DILocation(line: 39, column: 27, scope: !30)
!51 = !DILocation(line: 39, column: 13, scope: !30)
!52 = !DILocation(line: 40, column: 13, scope: !30)
!53 = !DILocation(line: 42, column: 5, scope: !31)
!54 = !DILocation(line: 43, column: 1, scope: !19)
!55 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_21_bad", scope: !3, file: !3, line: 45, type: !56, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !3, line: 47, type: !22)
!59 = !DILocation(line: 47, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !3, line: 48, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 48, column: 10, scope: !55)
!65 = !DILocation(line: 49, column: 12, scope: !55)
!66 = !DILocation(line: 49, column: 10, scope: !55)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !3, line: 52, type: !69)
!68 = distinct !DILexicalBlock(scope: !55, file: !3, line: 50, column: 5)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 52, column: 16, scope: !68)
!73 = !DILocation(line: 52, column: 33, scope: !68)
!74 = !DILocation(line: 52, column: 26, scope: !68)
!75 = !DILocation(line: 54, column: 17, scope: !76)
!76 = distinct !DILexicalBlock(scope: !68, file: !3, line: 54, column: 13)
!77 = !DILocation(line: 54, column: 16, scope: !76)
!78 = !DILocation(line: 54, column: 25, scope: !76)
!79 = !DILocation(line: 54, column: 13, scope: !68)
!80 = !DILocation(line: 57, column: 23, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !3, line: 57, column: 17)
!82 = distinct !DILexicalBlock(scope: !76, file: !3, line: 55, column: 9)
!83 = !DILocation(line: 57, column: 28, scope: !81)
!84 = !DILocation(line: 57, column: 27, scope: !81)
!85 = !DILocation(line: 57, column: 47, scope: !81)
!86 = !DILocation(line: 57, column: 46, scope: !81)
!87 = !DILocation(line: 57, column: 37, scope: !81)
!88 = !DILocation(line: 57, column: 57, scope: !81)
!89 = !DILocation(line: 57, column: 17, scope: !81)
!90 = !DILocation(line: 57, column: 64, scope: !81)
!91 = !DILocation(line: 57, column: 17, scope: !82)
!92 = !DILocation(line: 61, column: 34, scope: !93)
!93 = distinct !DILexicalBlock(scope: !81, file: !3, line: 58, column: 13)
!94 = !DILocation(line: 61, column: 27, scope: !93)
!95 = !DILocation(line: 61, column: 25, scope: !93)
!96 = !DILocation(line: 62, column: 21, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !3, line: 62, column: 21)
!98 = !DILocation(line: 62, column: 29, scope: !97)
!99 = !DILocation(line: 62, column: 33, scope: !97)
!100 = !DILocation(line: 62, column: 36, scope: !97)
!101 = !DILocation(line: 62, column: 41, scope: !97)
!102 = !DILocation(line: 62, column: 48, scope: !97)
!103 = !DILocation(line: 62, column: 52, scope: !97)
!104 = !DILocation(line: 62, column: 21, scope: !93)
!105 = !DILocation(line: 64, column: 21, scope: !106)
!106 = distinct !DILexicalBlock(scope: !97, file: !3, line: 63, column: 17)
!107 = !DILocation(line: 64, column: 26, scope: !106)
!108 = !DILocation(line: 64, column: 33, scope: !106)
!109 = !DILocation(line: 64, column: 37, scope: !106)
!110 = !DILocation(line: 65, column: 17, scope: !106)
!111 = !DILocation(line: 66, column: 13, scope: !93)
!112 = !DILocation(line: 69, column: 17, scope: !113)
!113 = distinct !DILexicalBlock(scope: !81, file: !3, line: 68, column: 13)
!114 = !DILocation(line: 71, column: 17, scope: !113)
!115 = !DILocation(line: 71, column: 22, scope: !113)
!116 = !DILocation(line: 71, column: 31, scope: !113)
!117 = !DILocation(line: 73, column: 9, scope: !82)
!118 = !DILocation(line: 75, column: 15, scope: !55)
!119 = !DILocation(line: 76, column: 15, scope: !55)
!120 = !DILocation(line: 76, column: 21, scope: !55)
!121 = !DILocation(line: 76, column: 5, scope: !55)
!122 = !DILocation(line: 77, column: 1, scope: !55)
!123 = distinct !DISubprogram(name: "goodB2G1_vasink", scope: !3, file: !3, line: 89, type: !20, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!124 = !DILocalVariable(name: "data", arg: 1, scope: !123, file: !3, line: 89, type: !22)
!125 = !DILocation(line: 89, column: 29, scope: !123)
!126 = !DILocation(line: 91, column: 8, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !3, line: 91, column: 8)
!128 = !DILocation(line: 91, column: 8, scope: !123)
!129 = !DILocation(line: 94, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !3, line: 92, column: 5)
!131 = !DILocation(line: 95, column: 5, scope: !130)
!132 = !DILocalVariable(name: "args", scope: !133, file: !3, line: 99, type: !32)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 98, column: 9)
!134 = distinct !DILexicalBlock(scope: !127, file: !3, line: 97, column: 5)
!135 = !DILocation(line: 99, column: 21, scope: !133)
!136 = !DILocation(line: 100, column: 13, scope: !133)
!137 = !DILocation(line: 102, column: 27, scope: !133)
!138 = !DILocation(line: 102, column: 13, scope: !133)
!139 = !DILocation(line: 103, column: 13, scope: !133)
!140 = !DILocation(line: 106, column: 1, scope: !123)
!141 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 108, type: !56, scopeLine: 109, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!142 = !DILocalVariable(name: "data", scope: !141, file: !3, line: 110, type: !22)
!143 = !DILocation(line: 110, column: 12, scope: !141)
!144 = !DILocalVariable(name: "dataBuffer", scope: !141, file: !3, line: 111, type: !61)
!145 = !DILocation(line: 111, column: 10, scope: !141)
!146 = !DILocation(line: 112, column: 12, scope: !141)
!147 = !DILocation(line: 112, column: 10, scope: !141)
!148 = !DILocalVariable(name: "dataLen", scope: !149, file: !3, line: 115, type: !69)
!149 = distinct !DILexicalBlock(scope: !141, file: !3, line: 113, column: 5)
!150 = !DILocation(line: 115, column: 16, scope: !149)
!151 = !DILocation(line: 115, column: 33, scope: !149)
!152 = !DILocation(line: 115, column: 26, scope: !149)
!153 = !DILocation(line: 117, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !3, line: 117, column: 13)
!155 = !DILocation(line: 117, column: 16, scope: !154)
!156 = !DILocation(line: 117, column: 25, scope: !154)
!157 = !DILocation(line: 117, column: 13, scope: !149)
!158 = !DILocation(line: 120, column: 23, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 120, column: 17)
!160 = distinct !DILexicalBlock(scope: !154, file: !3, line: 118, column: 9)
!161 = !DILocation(line: 120, column: 28, scope: !159)
!162 = !DILocation(line: 120, column: 27, scope: !159)
!163 = !DILocation(line: 120, column: 47, scope: !159)
!164 = !DILocation(line: 120, column: 46, scope: !159)
!165 = !DILocation(line: 120, column: 37, scope: !159)
!166 = !DILocation(line: 120, column: 57, scope: !159)
!167 = !DILocation(line: 120, column: 17, scope: !159)
!168 = !DILocation(line: 120, column: 64, scope: !159)
!169 = !DILocation(line: 120, column: 17, scope: !160)
!170 = !DILocation(line: 124, column: 34, scope: !171)
!171 = distinct !DILexicalBlock(scope: !159, file: !3, line: 121, column: 13)
!172 = !DILocation(line: 124, column: 27, scope: !171)
!173 = !DILocation(line: 124, column: 25, scope: !171)
!174 = !DILocation(line: 125, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !3, line: 125, column: 21)
!176 = !DILocation(line: 125, column: 29, scope: !175)
!177 = !DILocation(line: 125, column: 33, scope: !175)
!178 = !DILocation(line: 125, column: 36, scope: !175)
!179 = !DILocation(line: 125, column: 41, scope: !175)
!180 = !DILocation(line: 125, column: 48, scope: !175)
!181 = !DILocation(line: 125, column: 52, scope: !175)
!182 = !DILocation(line: 125, column: 21, scope: !171)
!183 = !DILocation(line: 127, column: 21, scope: !184)
!184 = distinct !DILexicalBlock(scope: !175, file: !3, line: 126, column: 17)
!185 = !DILocation(line: 127, column: 26, scope: !184)
!186 = !DILocation(line: 127, column: 33, scope: !184)
!187 = !DILocation(line: 127, column: 37, scope: !184)
!188 = !DILocation(line: 128, column: 17, scope: !184)
!189 = !DILocation(line: 129, column: 13, scope: !171)
!190 = !DILocation(line: 132, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !159, file: !3, line: 131, column: 13)
!192 = !DILocation(line: 134, column: 17, scope: !191)
!193 = !DILocation(line: 134, column: 22, scope: !191)
!194 = !DILocation(line: 134, column: 31, scope: !191)
!195 = !DILocation(line: 136, column: 9, scope: !160)
!196 = !DILocation(line: 138, column: 20, scope: !141)
!197 = !DILocation(line: 139, column: 21, scope: !141)
!198 = !DILocation(line: 139, column: 27, scope: !141)
!199 = !DILocation(line: 139, column: 5, scope: !141)
!200 = !DILocation(line: 140, column: 1, scope: !141)
!201 = distinct !DISubprogram(name: "goodB2G2_vasink", scope: !3, file: !3, line: 143, type: !20, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!202 = !DILocalVariable(name: "data", arg: 1, scope: !201, file: !3, line: 143, type: !22)
!203 = !DILocation(line: 143, column: 29, scope: !201)
!204 = !DILocation(line: 145, column: 8, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !3, line: 145, column: 8)
!206 = !DILocation(line: 145, column: 8, scope: !201)
!207 = !DILocalVariable(name: "args", scope: !208, file: !3, line: 148, type: !32)
!208 = distinct !DILexicalBlock(scope: !209, file: !3, line: 147, column: 9)
!209 = distinct !DILexicalBlock(scope: !205, file: !3, line: 146, column: 5)
!210 = !DILocation(line: 148, column: 21, scope: !208)
!211 = !DILocation(line: 149, column: 13, scope: !208)
!212 = !DILocation(line: 151, column: 27, scope: !208)
!213 = !DILocation(line: 151, column: 13, scope: !208)
!214 = !DILocation(line: 152, column: 13, scope: !208)
!215 = !DILocation(line: 154, column: 5, scope: !209)
!216 = !DILocation(line: 155, column: 1, scope: !201)
!217 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 157, type: !56, scopeLine: 158, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!218 = !DILocalVariable(name: "data", scope: !217, file: !3, line: 159, type: !22)
!219 = !DILocation(line: 159, column: 12, scope: !217)
!220 = !DILocalVariable(name: "dataBuffer", scope: !217, file: !3, line: 160, type: !61)
!221 = !DILocation(line: 160, column: 10, scope: !217)
!222 = !DILocation(line: 161, column: 12, scope: !217)
!223 = !DILocation(line: 161, column: 10, scope: !217)
!224 = !DILocalVariable(name: "dataLen", scope: !225, file: !3, line: 164, type: !69)
!225 = distinct !DILexicalBlock(scope: !217, file: !3, line: 162, column: 5)
!226 = !DILocation(line: 164, column: 16, scope: !225)
!227 = !DILocation(line: 164, column: 33, scope: !225)
!228 = !DILocation(line: 164, column: 26, scope: !225)
!229 = !DILocation(line: 166, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !3, line: 166, column: 13)
!231 = !DILocation(line: 166, column: 16, scope: !230)
!232 = !DILocation(line: 166, column: 25, scope: !230)
!233 = !DILocation(line: 166, column: 13, scope: !225)
!234 = !DILocation(line: 169, column: 23, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 169, column: 17)
!236 = distinct !DILexicalBlock(scope: !230, file: !3, line: 167, column: 9)
!237 = !DILocation(line: 169, column: 28, scope: !235)
!238 = !DILocation(line: 169, column: 27, scope: !235)
!239 = !DILocation(line: 169, column: 47, scope: !235)
!240 = !DILocation(line: 169, column: 46, scope: !235)
!241 = !DILocation(line: 169, column: 37, scope: !235)
!242 = !DILocation(line: 169, column: 57, scope: !235)
!243 = !DILocation(line: 169, column: 17, scope: !235)
!244 = !DILocation(line: 169, column: 64, scope: !235)
!245 = !DILocation(line: 169, column: 17, scope: !236)
!246 = !DILocation(line: 173, column: 34, scope: !247)
!247 = distinct !DILexicalBlock(scope: !235, file: !3, line: 170, column: 13)
!248 = !DILocation(line: 173, column: 27, scope: !247)
!249 = !DILocation(line: 173, column: 25, scope: !247)
!250 = !DILocation(line: 174, column: 21, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !3, line: 174, column: 21)
!252 = !DILocation(line: 174, column: 29, scope: !251)
!253 = !DILocation(line: 174, column: 33, scope: !251)
!254 = !DILocation(line: 174, column: 36, scope: !251)
!255 = !DILocation(line: 174, column: 41, scope: !251)
!256 = !DILocation(line: 174, column: 48, scope: !251)
!257 = !DILocation(line: 174, column: 52, scope: !251)
!258 = !DILocation(line: 174, column: 21, scope: !247)
!259 = !DILocation(line: 176, column: 21, scope: !260)
!260 = distinct !DILexicalBlock(scope: !251, file: !3, line: 175, column: 17)
!261 = !DILocation(line: 176, column: 26, scope: !260)
!262 = !DILocation(line: 176, column: 33, scope: !260)
!263 = !DILocation(line: 176, column: 37, scope: !260)
!264 = !DILocation(line: 177, column: 17, scope: !260)
!265 = !DILocation(line: 178, column: 13, scope: !247)
!266 = !DILocation(line: 181, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !235, file: !3, line: 180, column: 13)
!268 = !DILocation(line: 183, column: 17, scope: !267)
!269 = !DILocation(line: 183, column: 22, scope: !267)
!270 = !DILocation(line: 183, column: 31, scope: !267)
!271 = !DILocation(line: 185, column: 9, scope: !236)
!272 = !DILocation(line: 187, column: 20, scope: !217)
!273 = !DILocation(line: 188, column: 21, scope: !217)
!274 = !DILocation(line: 188, column: 27, scope: !217)
!275 = !DILocation(line: 188, column: 5, scope: !217)
!276 = !DILocation(line: 189, column: 1, scope: !217)
!277 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !3, file: !3, line: 192, type: !20, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!278 = !DILocalVariable(name: "data", arg: 1, scope: !277, file: !3, line: 192, type: !22)
!279 = !DILocation(line: 192, column: 27, scope: !277)
!280 = !DILocation(line: 194, column: 8, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !3, line: 194, column: 8)
!282 = !DILocation(line: 194, column: 8, scope: !277)
!283 = !DILocalVariable(name: "args", scope: !284, file: !3, line: 197, type: !32)
!284 = distinct !DILexicalBlock(scope: !285, file: !3, line: 196, column: 9)
!285 = distinct !DILexicalBlock(scope: !281, file: !3, line: 195, column: 5)
!286 = !DILocation(line: 197, column: 21, scope: !284)
!287 = !DILocation(line: 198, column: 13, scope: !284)
!288 = !DILocation(line: 200, column: 21, scope: !284)
!289 = !DILocation(line: 200, column: 27, scope: !284)
!290 = !DILocation(line: 200, column: 13, scope: !284)
!291 = !DILocation(line: 201, column: 13, scope: !284)
!292 = !DILocation(line: 203, column: 5, scope: !285)
!293 = !DILocation(line: 204, column: 1, scope: !277)
!294 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 206, type: !56, scopeLine: 207, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!295 = !DILocalVariable(name: "data", scope: !294, file: !3, line: 208, type: !22)
!296 = !DILocation(line: 208, column: 12, scope: !294)
!297 = !DILocalVariable(name: "dataBuffer", scope: !294, file: !3, line: 209, type: !61)
!298 = !DILocation(line: 209, column: 10, scope: !294)
!299 = !DILocation(line: 210, column: 12, scope: !294)
!300 = !DILocation(line: 210, column: 10, scope: !294)
!301 = !DILocation(line: 212, column: 12, scope: !294)
!302 = !DILocation(line: 212, column: 5, scope: !294)
!303 = !DILocation(line: 213, column: 19, scope: !294)
!304 = !DILocation(line: 214, column: 19, scope: !294)
!305 = !DILocation(line: 214, column: 25, scope: !294)
!306 = !DILocation(line: 214, column: 5, scope: !294)
!307 = !DILocation(line: 215, column: 1, scope: !294)
!308 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_21_good", scope: !3, file: !3, line: 217, type: !56, scopeLine: 218, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!309 = !DILocation(line: 219, column: 5, scope: !308)
!310 = !DILocation(line: 220, column: 5, scope: !308)
!311 = !DILocation(line: 221, column: 5, scope: !308)
!312 = !DILocation(line: 222, column: 1, scope: !308)
