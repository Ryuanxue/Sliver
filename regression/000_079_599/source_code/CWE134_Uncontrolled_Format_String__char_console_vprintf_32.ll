; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_vprintf_32.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_vprintf_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !10 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !17, metadata !DIExpression()), !dbg !34
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !35
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !35
  call void @llvm.va_start(i8* %arraydecay1), !dbg !35
  %0 = load i8*, i8** %data.addr, align 8, !dbg !36
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !37
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !38
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !39
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !39
  call void @llvm.va_end(i8* %arraydecay34), !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad() #0 !dbg !41 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %data20 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !46, metadata !DIExpression()), !dbg !48
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !48
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !49, metadata !DIExpression()), !dbg !50
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !50
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !51, metadata !DIExpression()), !dbg !55
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !55
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !55
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !56
  store i8* %arraydecay, i8** %data, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !58, metadata !DIExpression()), !dbg !60
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !61
  %2 = load i8*, i8** %1, align 8, !dbg !62
  store i8* %2, i8** %data1, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !63, metadata !DIExpression()), !dbg !68
  %3 = load i8*, i8** %data1, align 8, !dbg !69
  %call = call i64 @strlen(i8* %3) #7, !dbg !70
  store i64 %call, i64* %dataLen, align 8, !dbg !68
  %4 = load i64, i64* %dataLen, align 8, !dbg !71
  %sub = sub i64 100, %4, !dbg !73
  %cmp = icmp ugt i64 %sub, 1, !dbg !74
  br i1 %cmp, label %if.then, label %if.end19, !dbg !75

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !76
  %6 = load i64, i64* %dataLen, align 8, !dbg !79
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !80
  %7 = load i64, i64* %dataLen, align 8, !dbg !81
  %sub2 = sub i64 100, %7, !dbg !82
  %conv = trunc i64 %sub2 to i32, !dbg !83
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !84
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !85
  %cmp4 = icmp ne i8* %call3, null, !dbg !86
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !87

if.then6:                                         ; preds = %if.then
  %9 = load i8*, i8** %data1, align 8, !dbg !88
  %call7 = call i64 @strlen(i8* %9) #7, !dbg !90
  store i64 %call7, i64* %dataLen, align 8, !dbg !91
  %10 = load i64, i64* %dataLen, align 8, !dbg !92
  %cmp8 = icmp ugt i64 %10, 0, !dbg !94
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !95

land.lhs.true:                                    ; preds = %if.then6
  %11 = load i8*, i8** %data1, align 8, !dbg !96
  %12 = load i64, i64* %dataLen, align 8, !dbg !97
  %sub10 = sub i64 %12, 1, !dbg !98
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub10, !dbg !96
  %13 = load i8, i8* %arrayidx, align 1, !dbg !96
  %conv11 = sext i8 %13 to i32, !dbg !96
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !99
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !100

if.then14:                                        ; preds = %land.lhs.true
  %14 = load i8*, i8** %data1, align 8, !dbg !101
  %15 = load i64, i64* %dataLen, align 8, !dbg !103
  %sub15 = sub i64 %15, 1, !dbg !104
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %sub15, !dbg !101
  store i8 0, i8* %arrayidx16, align 1, !dbg !105
  br label %if.end, !dbg !106

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !107

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !108
  %16 = load i8*, i8** %data1, align 8, !dbg !110
  %17 = load i64, i64* %dataLen, align 8, !dbg !111
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !110
  store i8 0, i8* %arrayidx17, align 1, !dbg !112
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !113

if.end19:                                         ; preds = %if.end18, %entry
  %18 = load i8*, i8** %data1, align 8, !dbg !114
  %19 = load i8**, i8*** %dataPtr1, align 8, !dbg !115
  store i8* %18, i8** %19, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata i8** %data20, metadata !117, metadata !DIExpression()), !dbg !119
  %20 = load i8**, i8*** %dataPtr2, align 8, !dbg !120
  %21 = load i8*, i8** %20, align 8, !dbg !121
  store i8* %21, i8** %data20, align 8, !dbg !119
  %22 = load i8*, i8** %data20, align 8, !dbg !122
  %23 = load i8*, i8** %data20, align 8, !dbg !123
  call void (i8*, ...) @badVaSink(i8* %22, i8* %23), !dbg !124
  ret void, !dbg !125
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !126 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !129, metadata !DIExpression()), !dbg !131
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !132
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !132
  call void @llvm.va_start(i8* %arraydecay1), !dbg !132
  %0 = load i8*, i8** %data.addr, align 8, !dbg !133
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !134
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !135
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !136
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !136
  call void @llvm.va_end(i8* %arraydecay34), !dbg !136
  ret void, !dbg !137
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !138 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !141, metadata !DIExpression()), !dbg !142
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !142
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !143, metadata !DIExpression()), !dbg !144
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !144
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !145, metadata !DIExpression()), !dbg !146
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !146
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !146
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !147
  store i8* %arraydecay, i8** %data, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !149, metadata !DIExpression()), !dbg !151
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !152
  %2 = load i8*, i8** %1, align 8, !dbg !153
  store i8* %2, i8** %data1, align 8, !dbg !151
  %3 = load i8*, i8** %data1, align 8, !dbg !154
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !155
  %4 = load i8*, i8** %data1, align 8, !dbg !156
  %5 = load i8**, i8*** %dataPtr1, align 8, !dbg !157
  store i8* %4, i8** %5, align 8, !dbg !158
  call void @llvm.dbg.declare(metadata i8** %data2, metadata !159, metadata !DIExpression()), !dbg !161
  %6 = load i8**, i8*** %dataPtr2, align 8, !dbg !162
  %7 = load i8*, i8** %6, align 8, !dbg !163
  store i8* %7, i8** %data2, align 8, !dbg !161
  %8 = load i8*, i8** %data2, align 8, !dbg !164
  %9 = load i8*, i8** %data2, align 8, !dbg !165
  call void (i8*, ...) @goodG2BVaSink(i8* %8, i8* %9), !dbg !166
  ret void, !dbg !167
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !168 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !171, metadata !DIExpression()), !dbg !173
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !174
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !174
  call void @llvm.va_start(i8* %arraydecay1), !dbg !174
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !175
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !176
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !177
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !177
  call void @llvm.va_end(i8* %arraydecay34), !dbg !177
  ret void, !dbg !178
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !179 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %data20 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !182, metadata !DIExpression()), !dbg !183
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !183
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !184, metadata !DIExpression()), !dbg !185
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !185
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !186, metadata !DIExpression()), !dbg !187
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !187
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !187
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !188
  store i8* %arraydecay, i8** %data, align 8, !dbg !189
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !190, metadata !DIExpression()), !dbg !192
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !193
  %2 = load i8*, i8** %1, align 8, !dbg !194
  store i8* %2, i8** %data1, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !195, metadata !DIExpression()), !dbg !197
  %3 = load i8*, i8** %data1, align 8, !dbg !198
  %call = call i64 @strlen(i8* %3) #7, !dbg !199
  store i64 %call, i64* %dataLen, align 8, !dbg !197
  %4 = load i64, i64* %dataLen, align 8, !dbg !200
  %sub = sub i64 100, %4, !dbg !202
  %cmp = icmp ugt i64 %sub, 1, !dbg !203
  br i1 %cmp, label %if.then, label %if.end19, !dbg !204

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !205
  %6 = load i64, i64* %dataLen, align 8, !dbg !208
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !209
  %7 = load i64, i64* %dataLen, align 8, !dbg !210
  %sub2 = sub i64 100, %7, !dbg !211
  %conv = trunc i64 %sub2 to i32, !dbg !212
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !213
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !214
  %cmp4 = icmp ne i8* %call3, null, !dbg !215
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !216

if.then6:                                         ; preds = %if.then
  %9 = load i8*, i8** %data1, align 8, !dbg !217
  %call7 = call i64 @strlen(i8* %9) #7, !dbg !219
  store i64 %call7, i64* %dataLen, align 8, !dbg !220
  %10 = load i64, i64* %dataLen, align 8, !dbg !221
  %cmp8 = icmp ugt i64 %10, 0, !dbg !223
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !224

land.lhs.true:                                    ; preds = %if.then6
  %11 = load i8*, i8** %data1, align 8, !dbg !225
  %12 = load i64, i64* %dataLen, align 8, !dbg !226
  %sub10 = sub i64 %12, 1, !dbg !227
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub10, !dbg !225
  %13 = load i8, i8* %arrayidx, align 1, !dbg !225
  %conv11 = sext i8 %13 to i32, !dbg !225
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !228
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !229

if.then14:                                        ; preds = %land.lhs.true
  %14 = load i8*, i8** %data1, align 8, !dbg !230
  %15 = load i64, i64* %dataLen, align 8, !dbg !232
  %sub15 = sub i64 %15, 1, !dbg !233
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %sub15, !dbg !230
  store i8 0, i8* %arrayidx16, align 1, !dbg !234
  br label %if.end, !dbg !235

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !236

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !237
  %16 = load i8*, i8** %data1, align 8, !dbg !239
  %17 = load i64, i64* %dataLen, align 8, !dbg !240
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !239
  store i8 0, i8* %arrayidx17, align 1, !dbg !241
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !242

if.end19:                                         ; preds = %if.end18, %entry
  %18 = load i8*, i8** %data1, align 8, !dbg !243
  %19 = load i8**, i8*** %dataPtr1, align 8, !dbg !244
  store i8* %18, i8** %19, align 8, !dbg !245
  call void @llvm.dbg.declare(metadata i8** %data20, metadata !246, metadata !DIExpression()), !dbg !248
  %20 = load i8**, i8*** %dataPtr2, align 8, !dbg !249
  %21 = load i8*, i8** %20, align 8, !dbg !250
  store i8* %21, i8** %data20, align 8, !dbg !248
  %22 = load i8*, i8** %data20, align 8, !dbg !251
  %23 = load i8*, i8** %data20, align 8, !dbg !252
  call void (i8*, ...) @goodB2GVaSink(i8* %22, i8* %23), !dbg !253
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_32_good() #0 !dbg !255 {
entry:
  call void @goodG2B(), !dbg !256
  call void @goodB2G(), !dbg !257
  ret void, !dbg !258
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_vprintf_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_599/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "badVaSink", scope: !1, file: !1, line: 28, type: !11, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, null}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 28, type: !13)
!16 = !DILocation(line: 28, column: 23, scope: !10)
!17 = !DILocalVariable(name: "args", scope: !18, file: !1, line: 31, type: !19)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 30, column: 5)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !20, line: 52, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !22, line: 32, baseType: !23)
!22 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 192, elements: !32)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !26)
!26 = !{!27, !29, !30, !31}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !25, file: !1, line: 31, baseType: !28, size: 32)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !25, file: !1, line: 31, baseType: !28, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !25, file: !1, line: 31, baseType: !5, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !25, file: !1, line: 31, baseType: !5, size: 64, offset: 128)
!32 = !{!33}
!33 = !DISubrange(count: 1)
!34 = !DILocation(line: 31, column: 17, scope: !18)
!35 = !DILocation(line: 32, column: 9, scope: !18)
!36 = !DILocation(line: 34, column: 17, scope: !18)
!37 = !DILocation(line: 34, column: 23, scope: !18)
!38 = !DILocation(line: 34, column: 9, scope: !18)
!39 = !DILocation(line: 35, column: 9, scope: !18)
!40 = !DILocation(line: 37, column: 1, scope: !10)
!41 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad", scope: !1, file: !1, line: 39, type: !42, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{null}
!44 = !DILocalVariable(name: "data", scope: !41, file: !1, line: 41, type: !13)
!45 = !DILocation(line: 41, column: 12, scope: !41)
!46 = !DILocalVariable(name: "dataPtr1", scope: !41, file: !1, line: 42, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!48 = !DILocation(line: 42, column: 13, scope: !41)
!49 = !DILocalVariable(name: "dataPtr2", scope: !41, file: !1, line: 43, type: !47)
!50 = !DILocation(line: 43, column: 13, scope: !41)
!51 = !DILocalVariable(name: "dataBuffer", scope: !41, file: !1, line: 44, type: !52)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 100)
!55 = !DILocation(line: 44, column: 10, scope: !41)
!56 = !DILocation(line: 45, column: 12, scope: !41)
!57 = !DILocation(line: 45, column: 10, scope: !41)
!58 = !DILocalVariable(name: "data", scope: !59, file: !1, line: 47, type: !13)
!59 = distinct !DILexicalBlock(scope: !41, file: !1, line: 46, column: 5)
!60 = !DILocation(line: 47, column: 16, scope: !59)
!61 = !DILocation(line: 47, column: 24, scope: !59)
!62 = !DILocation(line: 47, column: 23, scope: !59)
!63 = !DILocalVariable(name: "dataLen", scope: !64, file: !1, line: 50, type: !65)
!64 = distinct !DILexicalBlock(scope: !59, file: !1, line: 48, column: 9)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 46, baseType: !67)
!66 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!67 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!68 = !DILocation(line: 50, column: 20, scope: !64)
!69 = !DILocation(line: 50, column: 37, scope: !64)
!70 = !DILocation(line: 50, column: 30, scope: !64)
!71 = !DILocation(line: 52, column: 21, scope: !72)
!72 = distinct !DILexicalBlock(scope: !64, file: !1, line: 52, column: 17)
!73 = !DILocation(line: 52, column: 20, scope: !72)
!74 = !DILocation(line: 52, column: 29, scope: !72)
!75 = !DILocation(line: 52, column: 17, scope: !64)
!76 = !DILocation(line: 55, column: 27, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 55, column: 21)
!78 = distinct !DILexicalBlock(scope: !72, file: !1, line: 53, column: 13)
!79 = !DILocation(line: 55, column: 32, scope: !77)
!80 = !DILocation(line: 55, column: 31, scope: !77)
!81 = !DILocation(line: 55, column: 51, scope: !77)
!82 = !DILocation(line: 55, column: 50, scope: !77)
!83 = !DILocation(line: 55, column: 41, scope: !77)
!84 = !DILocation(line: 55, column: 61, scope: !77)
!85 = !DILocation(line: 55, column: 21, scope: !77)
!86 = !DILocation(line: 55, column: 68, scope: !77)
!87 = !DILocation(line: 55, column: 21, scope: !78)
!88 = !DILocation(line: 59, column: 38, scope: !89)
!89 = distinct !DILexicalBlock(scope: !77, file: !1, line: 56, column: 17)
!90 = !DILocation(line: 59, column: 31, scope: !89)
!91 = !DILocation(line: 59, column: 29, scope: !89)
!92 = !DILocation(line: 60, column: 25, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 60, column: 25)
!94 = !DILocation(line: 60, column: 33, scope: !93)
!95 = !DILocation(line: 60, column: 37, scope: !93)
!96 = !DILocation(line: 60, column: 40, scope: !93)
!97 = !DILocation(line: 60, column: 45, scope: !93)
!98 = !DILocation(line: 60, column: 52, scope: !93)
!99 = !DILocation(line: 60, column: 56, scope: !93)
!100 = !DILocation(line: 60, column: 25, scope: !89)
!101 = !DILocation(line: 62, column: 25, scope: !102)
!102 = distinct !DILexicalBlock(scope: !93, file: !1, line: 61, column: 21)
!103 = !DILocation(line: 62, column: 30, scope: !102)
!104 = !DILocation(line: 62, column: 37, scope: !102)
!105 = !DILocation(line: 62, column: 41, scope: !102)
!106 = !DILocation(line: 63, column: 21, scope: !102)
!107 = !DILocation(line: 64, column: 17, scope: !89)
!108 = !DILocation(line: 67, column: 21, scope: !109)
!109 = distinct !DILexicalBlock(scope: !77, file: !1, line: 66, column: 17)
!110 = !DILocation(line: 69, column: 21, scope: !109)
!111 = !DILocation(line: 69, column: 26, scope: !109)
!112 = !DILocation(line: 69, column: 35, scope: !109)
!113 = !DILocation(line: 71, column: 13, scope: !78)
!114 = !DILocation(line: 73, column: 21, scope: !59)
!115 = !DILocation(line: 73, column: 10, scope: !59)
!116 = !DILocation(line: 73, column: 19, scope: !59)
!117 = !DILocalVariable(name: "data", scope: !118, file: !1, line: 76, type: !13)
!118 = distinct !DILexicalBlock(scope: !41, file: !1, line: 75, column: 5)
!119 = !DILocation(line: 76, column: 16, scope: !118)
!120 = !DILocation(line: 76, column: 24, scope: !118)
!121 = !DILocation(line: 76, column: 23, scope: !118)
!122 = !DILocation(line: 77, column: 19, scope: !118)
!123 = !DILocation(line: 77, column: 25, scope: !118)
!124 = !DILocation(line: 77, column: 9, scope: !118)
!125 = !DILocation(line: 79, column: 1, scope: !41)
!126 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !1, file: !1, line: 86, type: !11, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!127 = !DILocalVariable(name: "data", arg: 1, scope: !126, file: !1, line: 86, type: !13)
!128 = !DILocation(line: 86, column: 27, scope: !126)
!129 = !DILocalVariable(name: "args", scope: !130, file: !1, line: 89, type: !19)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 88, column: 5)
!131 = !DILocation(line: 89, column: 17, scope: !130)
!132 = !DILocation(line: 90, column: 9, scope: !130)
!133 = !DILocation(line: 92, column: 17, scope: !130)
!134 = !DILocation(line: 92, column: 23, scope: !130)
!135 = !DILocation(line: 92, column: 9, scope: !130)
!136 = !DILocation(line: 93, column: 9, scope: !130)
!137 = !DILocation(line: 95, column: 1, scope: !126)
!138 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 97, type: !42, scopeLine: 98, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!139 = !DILocalVariable(name: "data", scope: !138, file: !1, line: 99, type: !13)
!140 = !DILocation(line: 99, column: 12, scope: !138)
!141 = !DILocalVariable(name: "dataPtr1", scope: !138, file: !1, line: 100, type: !47)
!142 = !DILocation(line: 100, column: 13, scope: !138)
!143 = !DILocalVariable(name: "dataPtr2", scope: !138, file: !1, line: 101, type: !47)
!144 = !DILocation(line: 101, column: 13, scope: !138)
!145 = !DILocalVariable(name: "dataBuffer", scope: !138, file: !1, line: 102, type: !52)
!146 = !DILocation(line: 102, column: 10, scope: !138)
!147 = !DILocation(line: 103, column: 12, scope: !138)
!148 = !DILocation(line: 103, column: 10, scope: !138)
!149 = !DILocalVariable(name: "data", scope: !150, file: !1, line: 105, type: !13)
!150 = distinct !DILexicalBlock(scope: !138, file: !1, line: 104, column: 5)
!151 = !DILocation(line: 105, column: 16, scope: !150)
!152 = !DILocation(line: 105, column: 24, scope: !150)
!153 = !DILocation(line: 105, column: 23, scope: !150)
!154 = !DILocation(line: 107, column: 16, scope: !150)
!155 = !DILocation(line: 107, column: 9, scope: !150)
!156 = !DILocation(line: 108, column: 21, scope: !150)
!157 = !DILocation(line: 108, column: 10, scope: !150)
!158 = !DILocation(line: 108, column: 19, scope: !150)
!159 = !DILocalVariable(name: "data", scope: !160, file: !1, line: 111, type: !13)
!160 = distinct !DILexicalBlock(scope: !138, file: !1, line: 110, column: 5)
!161 = !DILocation(line: 111, column: 16, scope: !160)
!162 = !DILocation(line: 111, column: 24, scope: !160)
!163 = !DILocation(line: 111, column: 23, scope: !160)
!164 = !DILocation(line: 112, column: 23, scope: !160)
!165 = !DILocation(line: 112, column: 29, scope: !160)
!166 = !DILocation(line: 112, column: 9, scope: !160)
!167 = !DILocation(line: 114, column: 1, scope: !138)
!168 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !1, file: !1, line: 117, type: !11, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!169 = !DILocalVariable(name: "data", arg: 1, scope: !168, file: !1, line: 117, type: !13)
!170 = !DILocation(line: 117, column: 27, scope: !168)
!171 = !DILocalVariable(name: "args", scope: !172, file: !1, line: 120, type: !19)
!172 = distinct !DILexicalBlock(scope: !168, file: !1, line: 119, column: 5)
!173 = !DILocation(line: 120, column: 17, scope: !172)
!174 = !DILocation(line: 121, column: 9, scope: !172)
!175 = !DILocation(line: 123, column: 23, scope: !172)
!176 = !DILocation(line: 123, column: 9, scope: !172)
!177 = !DILocation(line: 124, column: 9, scope: !172)
!178 = !DILocation(line: 126, column: 1, scope: !168)
!179 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 128, type: !42, scopeLine: 129, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!180 = !DILocalVariable(name: "data", scope: !179, file: !1, line: 130, type: !13)
!181 = !DILocation(line: 130, column: 12, scope: !179)
!182 = !DILocalVariable(name: "dataPtr1", scope: !179, file: !1, line: 131, type: !47)
!183 = !DILocation(line: 131, column: 13, scope: !179)
!184 = !DILocalVariable(name: "dataPtr2", scope: !179, file: !1, line: 132, type: !47)
!185 = !DILocation(line: 132, column: 13, scope: !179)
!186 = !DILocalVariable(name: "dataBuffer", scope: !179, file: !1, line: 133, type: !52)
!187 = !DILocation(line: 133, column: 10, scope: !179)
!188 = !DILocation(line: 134, column: 12, scope: !179)
!189 = !DILocation(line: 134, column: 10, scope: !179)
!190 = !DILocalVariable(name: "data", scope: !191, file: !1, line: 136, type: !13)
!191 = distinct !DILexicalBlock(scope: !179, file: !1, line: 135, column: 5)
!192 = !DILocation(line: 136, column: 16, scope: !191)
!193 = !DILocation(line: 136, column: 24, scope: !191)
!194 = !DILocation(line: 136, column: 23, scope: !191)
!195 = !DILocalVariable(name: "dataLen", scope: !196, file: !1, line: 139, type: !65)
!196 = distinct !DILexicalBlock(scope: !191, file: !1, line: 137, column: 9)
!197 = !DILocation(line: 139, column: 20, scope: !196)
!198 = !DILocation(line: 139, column: 37, scope: !196)
!199 = !DILocation(line: 139, column: 30, scope: !196)
!200 = !DILocation(line: 141, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !1, line: 141, column: 17)
!202 = !DILocation(line: 141, column: 20, scope: !201)
!203 = !DILocation(line: 141, column: 29, scope: !201)
!204 = !DILocation(line: 141, column: 17, scope: !196)
!205 = !DILocation(line: 144, column: 27, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 144, column: 21)
!207 = distinct !DILexicalBlock(scope: !201, file: !1, line: 142, column: 13)
!208 = !DILocation(line: 144, column: 32, scope: !206)
!209 = !DILocation(line: 144, column: 31, scope: !206)
!210 = !DILocation(line: 144, column: 51, scope: !206)
!211 = !DILocation(line: 144, column: 50, scope: !206)
!212 = !DILocation(line: 144, column: 41, scope: !206)
!213 = !DILocation(line: 144, column: 61, scope: !206)
!214 = !DILocation(line: 144, column: 21, scope: !206)
!215 = !DILocation(line: 144, column: 68, scope: !206)
!216 = !DILocation(line: 144, column: 21, scope: !207)
!217 = !DILocation(line: 148, column: 38, scope: !218)
!218 = distinct !DILexicalBlock(scope: !206, file: !1, line: 145, column: 17)
!219 = !DILocation(line: 148, column: 31, scope: !218)
!220 = !DILocation(line: 148, column: 29, scope: !218)
!221 = !DILocation(line: 149, column: 25, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !1, line: 149, column: 25)
!223 = !DILocation(line: 149, column: 33, scope: !222)
!224 = !DILocation(line: 149, column: 37, scope: !222)
!225 = !DILocation(line: 149, column: 40, scope: !222)
!226 = !DILocation(line: 149, column: 45, scope: !222)
!227 = !DILocation(line: 149, column: 52, scope: !222)
!228 = !DILocation(line: 149, column: 56, scope: !222)
!229 = !DILocation(line: 149, column: 25, scope: !218)
!230 = !DILocation(line: 151, column: 25, scope: !231)
!231 = distinct !DILexicalBlock(scope: !222, file: !1, line: 150, column: 21)
!232 = !DILocation(line: 151, column: 30, scope: !231)
!233 = !DILocation(line: 151, column: 37, scope: !231)
!234 = !DILocation(line: 151, column: 41, scope: !231)
!235 = !DILocation(line: 152, column: 21, scope: !231)
!236 = !DILocation(line: 153, column: 17, scope: !218)
!237 = !DILocation(line: 156, column: 21, scope: !238)
!238 = distinct !DILexicalBlock(scope: !206, file: !1, line: 155, column: 17)
!239 = !DILocation(line: 158, column: 21, scope: !238)
!240 = !DILocation(line: 158, column: 26, scope: !238)
!241 = !DILocation(line: 158, column: 35, scope: !238)
!242 = !DILocation(line: 160, column: 13, scope: !207)
!243 = !DILocation(line: 162, column: 21, scope: !191)
!244 = !DILocation(line: 162, column: 10, scope: !191)
!245 = !DILocation(line: 162, column: 19, scope: !191)
!246 = !DILocalVariable(name: "data", scope: !247, file: !1, line: 165, type: !13)
!247 = distinct !DILexicalBlock(scope: !179, file: !1, line: 164, column: 5)
!248 = !DILocation(line: 165, column: 16, scope: !247)
!249 = !DILocation(line: 165, column: 24, scope: !247)
!250 = !DILocation(line: 165, column: 23, scope: !247)
!251 = !DILocation(line: 166, column: 23, scope: !247)
!252 = !DILocation(line: 166, column: 29, scope: !247)
!253 = !DILocation(line: 166, column: 9, scope: !247)
!254 = !DILocation(line: 168, column: 1, scope: !179)
!255 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_32_good", scope: !1, file: !1, line: 170, type: !42, scopeLine: 171, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!256 = !DILocation(line: 172, column: 5, scope: !255)
!257 = !DILocation(line: 173, column: 5, scope: !255)
!258 = !DILocation(line: 174, column: 1, scope: !255)
