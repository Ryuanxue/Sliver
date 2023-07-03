; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_05.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_05.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@staticTrue = dso_local global i32 1, align 4, !dbg !0
@staticFalse = dso_local global i32 0, align 4, !dbg !9
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_05_bad() #0 !dbg !15 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %data, align 8, !dbg !28
  %1 = load i32, i32* @staticTrue, align 4, !dbg !29
  %tobool = icmp ne i32 %1, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end20, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !32, metadata !DIExpression()), !dbg !38
  %2 = load i8*, i8** %data, align 8, !dbg !39
  %call = call i64 @strlen(i8* %2) #6, !dbg !40
  store i64 %call, i64* %dataLen, align 8, !dbg !38
  %3 = load i64, i64* %dataLen, align 8, !dbg !41
  %sub = sub i64 100, %3, !dbg !43
  %cmp = icmp ugt i64 %sub, 1, !dbg !44
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !45

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !46
  %5 = load i64, i64* %dataLen, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !50
  %6 = load i64, i64* %dataLen, align 8, !dbg !51
  %sub2 = sub i64 100, %6, !dbg !52
  %conv = trunc i64 %sub2 to i32, !dbg !53
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !55
  %cmp4 = icmp ne i8* %call3, null, !dbg !56
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !57

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !58
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !60
  store i64 %call7, i64* %dataLen, align 8, !dbg !61
  %9 = load i64, i64* %dataLen, align 8, !dbg !62
  %cmp8 = icmp ugt i64 %9, 0, !dbg !64
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !65

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !66
  %11 = load i64, i64* %dataLen, align 8, !dbg !67
  %sub10 = sub i64 %11, 1, !dbg !68
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !66
  %12 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv11 = sext i8 %12 to i32, !dbg !66
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !69
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !70

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !71
  %14 = load i64, i64* %dataLen, align 8, !dbg !73
  %sub15 = sub i64 %14, 1, !dbg !74
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !71
  store i8 0, i8* %arrayidx16, align 1, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !77

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %15 = load i8*, i8** %data, align 8, !dbg !80
  %16 = load i64, i64* %dataLen, align 8, !dbg !81
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !80
  store i8 0, i8* %arrayidx17, align 1, !dbg !82
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !83

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !84

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @staticTrue, align 4, !dbg !85
  %tobool21 = icmp ne i32 %17, 0, !dbg !85
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !87

if.then22:                                        ; preds = %if.end20
  %18 = load i8*, i8** %data, align 8, !dbg !88
  %call23 = call i32 (i8*, ...) @printf(i8* %18), !dbg !90
  br label %if.end24, !dbg !91

if.end24:                                         ; preds = %if.then22, %if.end20
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
  %1 = load i32, i32* @staticTrue, align 4, !dbg !100
  %tobool = icmp ne i32 %1, 0, !dbg !100
  br i1 %tobool, label %if.then, label %if.end20, !dbg !102

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !103, metadata !DIExpression()), !dbg !106
  %2 = load i8*, i8** %data, align 8, !dbg !107
  %call = call i64 @strlen(i8* %2) #6, !dbg !108
  store i64 %call, i64* %dataLen, align 8, !dbg !106
  %3 = load i64, i64* %dataLen, align 8, !dbg !109
  %sub = sub i64 100, %3, !dbg !111
  %cmp = icmp ugt i64 %sub, 1, !dbg !112
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !113

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !114
  %5 = load i64, i64* %dataLen, align 8, !dbg !117
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !118
  %6 = load i64, i64* %dataLen, align 8, !dbg !119
  %sub2 = sub i64 100, %6, !dbg !120
  %conv = trunc i64 %sub2 to i32, !dbg !121
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !122
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !123
  %cmp4 = icmp ne i8* %call3, null, !dbg !124
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !125

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !126
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !128
  store i64 %call7, i64* %dataLen, align 8, !dbg !129
  %9 = load i64, i64* %dataLen, align 8, !dbg !130
  %cmp8 = icmp ugt i64 %9, 0, !dbg !132
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !133

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !134
  %11 = load i64, i64* %dataLen, align 8, !dbg !135
  %sub10 = sub i64 %11, 1, !dbg !136
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !134
  %12 = load i8, i8* %arrayidx, align 1, !dbg !134
  %conv11 = sext i8 %12 to i32, !dbg !134
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !137
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !138

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !139
  %14 = load i64, i64* %dataLen, align 8, !dbg !141
  %sub15 = sub i64 %14, 1, !dbg !142
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !139
  store i8 0, i8* %arrayidx16, align 1, !dbg !143
  br label %if.end, !dbg !144

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !145

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !146
  %15 = load i8*, i8** %data, align 8, !dbg !148
  %16 = load i64, i64* %dataLen, align 8, !dbg !149
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !148
  store i8 0, i8* %arrayidx17, align 1, !dbg !150
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !151

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !152

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @staticFalse, align 4, !dbg !153
  %tobool21 = icmp ne i32 %17, 0, !dbg !153
  br i1 %tobool21, label %if.then22, label %if.else23, !dbg !155

if.then22:                                        ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !156
  br label %if.end25, !dbg !158

if.else23:                                        ; preds = %if.end20
  %18 = load i8*, i8** %data, align 8, !dbg !159
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !161
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then22
  ret void, !dbg !162
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !163 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !166, metadata !DIExpression()), !dbg !167
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !167
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !167
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !168
  store i8* %arraydecay, i8** %data, align 8, !dbg !169
  %1 = load i32, i32* @staticTrue, align 4, !dbg !170
  %tobool = icmp ne i32 %1, 0, !dbg !170
  br i1 %tobool, label %if.then, label %if.end20, !dbg !172

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !173, metadata !DIExpression()), !dbg !176
  %2 = load i8*, i8** %data, align 8, !dbg !177
  %call = call i64 @strlen(i8* %2) #6, !dbg !178
  store i64 %call, i64* %dataLen, align 8, !dbg !176
  %3 = load i64, i64* %dataLen, align 8, !dbg !179
  %sub = sub i64 100, %3, !dbg !181
  %cmp = icmp ugt i64 %sub, 1, !dbg !182
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !183

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !184
  %5 = load i64, i64* %dataLen, align 8, !dbg !187
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !188
  %6 = load i64, i64* %dataLen, align 8, !dbg !189
  %sub2 = sub i64 100, %6, !dbg !190
  %conv = trunc i64 %sub2 to i32, !dbg !191
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !192
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !193
  %cmp4 = icmp ne i8* %call3, null, !dbg !194
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !195

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !196
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !198
  store i64 %call7, i64* %dataLen, align 8, !dbg !199
  %9 = load i64, i64* %dataLen, align 8, !dbg !200
  %cmp8 = icmp ugt i64 %9, 0, !dbg !202
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !203

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !204
  %11 = load i64, i64* %dataLen, align 8, !dbg !205
  %sub10 = sub i64 %11, 1, !dbg !206
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !204
  %12 = load i8, i8* %arrayidx, align 1, !dbg !204
  %conv11 = sext i8 %12 to i32, !dbg !204
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !207
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !208

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !209
  %14 = load i64, i64* %dataLen, align 8, !dbg !211
  %sub15 = sub i64 %14, 1, !dbg !212
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !209
  store i8 0, i8* %arrayidx16, align 1, !dbg !213
  br label %if.end, !dbg !214

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !215

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !216
  %15 = load i8*, i8** %data, align 8, !dbg !218
  %16 = load i64, i64* %dataLen, align 8, !dbg !219
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !218
  store i8 0, i8* %arrayidx17, align 1, !dbg !220
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !221

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !222

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @staticTrue, align 4, !dbg !223
  %tobool21 = icmp ne i32 %17, 0, !dbg !223
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !225

if.then22:                                        ; preds = %if.end20
  %18 = load i8*, i8** %data, align 8, !dbg !226
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !228
  br label %if.end24, !dbg !229

if.end24:                                         ; preds = %if.then22, %if.end20
  ret void, !dbg !230
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !231 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !235
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !235
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !236
  store i8* %arraydecay, i8** %data, align 8, !dbg !237
  %1 = load i32, i32* @staticFalse, align 4, !dbg !238
  %tobool = icmp ne i32 %1, 0, !dbg !238
  br i1 %tobool, label %if.then, label %if.else, !dbg !240

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !241
  br label %if.end, !dbg !243

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !244
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !246
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @staticTrue, align 4, !dbg !247
  %tobool1 = icmp ne i32 %3, 0, !dbg !247
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !249

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !250
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !252
  br label %if.end4, !dbg !253

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !254
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !255 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !258, metadata !DIExpression()), !dbg !259
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !259
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !259
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !260
  store i8* %arraydecay, i8** %data, align 8, !dbg !261
  %1 = load i32, i32* @staticTrue, align 4, !dbg !262
  %tobool = icmp ne i32 %1, 0, !dbg !262
  br i1 %tobool, label %if.then, label %if.end, !dbg !264

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !265
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !267
  br label %if.end, !dbg !268

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @staticTrue, align 4, !dbg !269
  %tobool1 = icmp ne i32 %3, 0, !dbg !269
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !271

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !272
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !274
  br label %if.end4, !dbg !275

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !276
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_05_good() #0 !dbg !277 {
entry:
  call void @goodB2G1(), !dbg !278
  call void @goodB2G2(), !dbg !279
  call void @goodG2B1(), !dbg !280
  call void @goodG2B2(), !dbg !281
  ret void, !dbg !282
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
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticTrue", scope: !2, file: !3, line: 28, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_05.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_438/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "staticFalse", scope: !2, file: !3, line: 29, type: !6, isLocal: false, isDefinition: true)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 12.0.0"}
!15 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_05_bad", scope: !3, file: !3, line: 33, type: !16, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !DILocalVariable(name: "data", scope: !15, file: !3, line: 35, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DILocation(line: 35, column: 12, scope: !15)
!22 = !DILocalVariable(name: "dataBuffer", scope: !15, file: !3, line: 36, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 36, column: 10, scope: !15)
!27 = !DILocation(line: 37, column: 12, scope: !15)
!28 = !DILocation(line: 37, column: 10, scope: !15)
!29 = !DILocation(line: 38, column: 8, scope: !30)
!30 = distinct !DILexicalBlock(scope: !15, file: !3, line: 38, column: 8)
!31 = !DILocation(line: 38, column: 8, scope: !15)
!32 = !DILocalVariable(name: "dataLen", scope: !33, file: !3, line: 42, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !3, line: 40, column: 9)
!34 = distinct !DILexicalBlock(scope: !30, file: !3, line: 39, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 42, column: 20, scope: !33)
!39 = !DILocation(line: 42, column: 37, scope: !33)
!40 = !DILocation(line: 42, column: 30, scope: !33)
!41 = !DILocation(line: 44, column: 21, scope: !42)
!42 = distinct !DILexicalBlock(scope: !33, file: !3, line: 44, column: 17)
!43 = !DILocation(line: 44, column: 20, scope: !42)
!44 = !DILocation(line: 44, column: 29, scope: !42)
!45 = !DILocation(line: 44, column: 17, scope: !33)
!46 = !DILocation(line: 47, column: 27, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !3, line: 47, column: 21)
!48 = distinct !DILexicalBlock(scope: !42, file: !3, line: 45, column: 13)
!49 = !DILocation(line: 47, column: 32, scope: !47)
!50 = !DILocation(line: 47, column: 31, scope: !47)
!51 = !DILocation(line: 47, column: 51, scope: !47)
!52 = !DILocation(line: 47, column: 50, scope: !47)
!53 = !DILocation(line: 47, column: 41, scope: !47)
!54 = !DILocation(line: 47, column: 61, scope: !47)
!55 = !DILocation(line: 47, column: 21, scope: !47)
!56 = !DILocation(line: 47, column: 68, scope: !47)
!57 = !DILocation(line: 47, column: 21, scope: !48)
!58 = !DILocation(line: 51, column: 38, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !3, line: 48, column: 17)
!60 = !DILocation(line: 51, column: 31, scope: !59)
!61 = !DILocation(line: 51, column: 29, scope: !59)
!62 = !DILocation(line: 52, column: 25, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !3, line: 52, column: 25)
!64 = !DILocation(line: 52, column: 33, scope: !63)
!65 = !DILocation(line: 52, column: 37, scope: !63)
!66 = !DILocation(line: 52, column: 40, scope: !63)
!67 = !DILocation(line: 52, column: 45, scope: !63)
!68 = !DILocation(line: 52, column: 52, scope: !63)
!69 = !DILocation(line: 52, column: 56, scope: !63)
!70 = !DILocation(line: 52, column: 25, scope: !59)
!71 = !DILocation(line: 54, column: 25, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !3, line: 53, column: 21)
!73 = !DILocation(line: 54, column: 30, scope: !72)
!74 = !DILocation(line: 54, column: 37, scope: !72)
!75 = !DILocation(line: 54, column: 41, scope: !72)
!76 = !DILocation(line: 55, column: 21, scope: !72)
!77 = !DILocation(line: 56, column: 17, scope: !59)
!78 = !DILocation(line: 59, column: 21, scope: !79)
!79 = distinct !DILexicalBlock(scope: !47, file: !3, line: 58, column: 17)
!80 = !DILocation(line: 61, column: 21, scope: !79)
!81 = !DILocation(line: 61, column: 26, scope: !79)
!82 = !DILocation(line: 61, column: 35, scope: !79)
!83 = !DILocation(line: 63, column: 13, scope: !48)
!84 = !DILocation(line: 65, column: 5, scope: !34)
!85 = !DILocation(line: 66, column: 8, scope: !86)
!86 = distinct !DILexicalBlock(scope: !15, file: !3, line: 66, column: 8)
!87 = !DILocation(line: 66, column: 8, scope: !15)
!88 = !DILocation(line: 69, column: 16, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !3, line: 67, column: 5)
!90 = !DILocation(line: 69, column: 9, scope: !89)
!91 = !DILocation(line: 70, column: 5, scope: !89)
!92 = !DILocation(line: 71, column: 1, scope: !15)
!93 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 78, type: !16, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!94 = !DILocalVariable(name: "data", scope: !93, file: !3, line: 80, type: !19)
!95 = !DILocation(line: 80, column: 12, scope: !93)
!96 = !DILocalVariable(name: "dataBuffer", scope: !93, file: !3, line: 81, type: !23)
!97 = !DILocation(line: 81, column: 10, scope: !93)
!98 = !DILocation(line: 82, column: 12, scope: !93)
!99 = !DILocation(line: 82, column: 10, scope: !93)
!100 = !DILocation(line: 83, column: 8, scope: !101)
!101 = distinct !DILexicalBlock(scope: !93, file: !3, line: 83, column: 8)
!102 = !DILocation(line: 83, column: 8, scope: !93)
!103 = !DILocalVariable(name: "dataLen", scope: !104, file: !3, line: 87, type: !35)
!104 = distinct !DILexicalBlock(scope: !105, file: !3, line: 85, column: 9)
!105 = distinct !DILexicalBlock(scope: !101, file: !3, line: 84, column: 5)
!106 = !DILocation(line: 87, column: 20, scope: !104)
!107 = !DILocation(line: 87, column: 37, scope: !104)
!108 = !DILocation(line: 87, column: 30, scope: !104)
!109 = !DILocation(line: 89, column: 21, scope: !110)
!110 = distinct !DILexicalBlock(scope: !104, file: !3, line: 89, column: 17)
!111 = !DILocation(line: 89, column: 20, scope: !110)
!112 = !DILocation(line: 89, column: 29, scope: !110)
!113 = !DILocation(line: 89, column: 17, scope: !104)
!114 = !DILocation(line: 92, column: 27, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 92, column: 21)
!116 = distinct !DILexicalBlock(scope: !110, file: !3, line: 90, column: 13)
!117 = !DILocation(line: 92, column: 32, scope: !115)
!118 = !DILocation(line: 92, column: 31, scope: !115)
!119 = !DILocation(line: 92, column: 51, scope: !115)
!120 = !DILocation(line: 92, column: 50, scope: !115)
!121 = !DILocation(line: 92, column: 41, scope: !115)
!122 = !DILocation(line: 92, column: 61, scope: !115)
!123 = !DILocation(line: 92, column: 21, scope: !115)
!124 = !DILocation(line: 92, column: 68, scope: !115)
!125 = !DILocation(line: 92, column: 21, scope: !116)
!126 = !DILocation(line: 96, column: 38, scope: !127)
!127 = distinct !DILexicalBlock(scope: !115, file: !3, line: 93, column: 17)
!128 = !DILocation(line: 96, column: 31, scope: !127)
!129 = !DILocation(line: 96, column: 29, scope: !127)
!130 = !DILocation(line: 97, column: 25, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !3, line: 97, column: 25)
!132 = !DILocation(line: 97, column: 33, scope: !131)
!133 = !DILocation(line: 97, column: 37, scope: !131)
!134 = !DILocation(line: 97, column: 40, scope: !131)
!135 = !DILocation(line: 97, column: 45, scope: !131)
!136 = !DILocation(line: 97, column: 52, scope: !131)
!137 = !DILocation(line: 97, column: 56, scope: !131)
!138 = !DILocation(line: 97, column: 25, scope: !127)
!139 = !DILocation(line: 99, column: 25, scope: !140)
!140 = distinct !DILexicalBlock(scope: !131, file: !3, line: 98, column: 21)
!141 = !DILocation(line: 99, column: 30, scope: !140)
!142 = !DILocation(line: 99, column: 37, scope: !140)
!143 = !DILocation(line: 99, column: 41, scope: !140)
!144 = !DILocation(line: 100, column: 21, scope: !140)
!145 = !DILocation(line: 101, column: 17, scope: !127)
!146 = !DILocation(line: 104, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !115, file: !3, line: 103, column: 17)
!148 = !DILocation(line: 106, column: 21, scope: !147)
!149 = !DILocation(line: 106, column: 26, scope: !147)
!150 = !DILocation(line: 106, column: 35, scope: !147)
!151 = !DILocation(line: 108, column: 13, scope: !116)
!152 = !DILocation(line: 110, column: 5, scope: !105)
!153 = !DILocation(line: 111, column: 8, scope: !154)
!154 = distinct !DILexicalBlock(scope: !93, file: !3, line: 111, column: 8)
!155 = !DILocation(line: 111, column: 8, scope: !93)
!156 = !DILocation(line: 114, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !3, line: 112, column: 5)
!158 = !DILocation(line: 115, column: 5, scope: !157)
!159 = !DILocation(line: 119, column: 24, scope: !160)
!160 = distinct !DILexicalBlock(scope: !154, file: !3, line: 117, column: 5)
!161 = !DILocation(line: 119, column: 9, scope: !160)
!162 = !DILocation(line: 121, column: 1, scope: !93)
!163 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 124, type: !16, scopeLine: 125, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!164 = !DILocalVariable(name: "data", scope: !163, file: !3, line: 126, type: !19)
!165 = !DILocation(line: 126, column: 12, scope: !163)
!166 = !DILocalVariable(name: "dataBuffer", scope: !163, file: !3, line: 127, type: !23)
!167 = !DILocation(line: 127, column: 10, scope: !163)
!168 = !DILocation(line: 128, column: 12, scope: !163)
!169 = !DILocation(line: 128, column: 10, scope: !163)
!170 = !DILocation(line: 129, column: 8, scope: !171)
!171 = distinct !DILexicalBlock(scope: !163, file: !3, line: 129, column: 8)
!172 = !DILocation(line: 129, column: 8, scope: !163)
!173 = !DILocalVariable(name: "dataLen", scope: !174, file: !3, line: 133, type: !35)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 131, column: 9)
!175 = distinct !DILexicalBlock(scope: !171, file: !3, line: 130, column: 5)
!176 = !DILocation(line: 133, column: 20, scope: !174)
!177 = !DILocation(line: 133, column: 37, scope: !174)
!178 = !DILocation(line: 133, column: 30, scope: !174)
!179 = !DILocation(line: 135, column: 21, scope: !180)
!180 = distinct !DILexicalBlock(scope: !174, file: !3, line: 135, column: 17)
!181 = !DILocation(line: 135, column: 20, scope: !180)
!182 = !DILocation(line: 135, column: 29, scope: !180)
!183 = !DILocation(line: 135, column: 17, scope: !174)
!184 = !DILocation(line: 138, column: 27, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 138, column: 21)
!186 = distinct !DILexicalBlock(scope: !180, file: !3, line: 136, column: 13)
!187 = !DILocation(line: 138, column: 32, scope: !185)
!188 = !DILocation(line: 138, column: 31, scope: !185)
!189 = !DILocation(line: 138, column: 51, scope: !185)
!190 = !DILocation(line: 138, column: 50, scope: !185)
!191 = !DILocation(line: 138, column: 41, scope: !185)
!192 = !DILocation(line: 138, column: 61, scope: !185)
!193 = !DILocation(line: 138, column: 21, scope: !185)
!194 = !DILocation(line: 138, column: 68, scope: !185)
!195 = !DILocation(line: 138, column: 21, scope: !186)
!196 = !DILocation(line: 142, column: 38, scope: !197)
!197 = distinct !DILexicalBlock(scope: !185, file: !3, line: 139, column: 17)
!198 = !DILocation(line: 142, column: 31, scope: !197)
!199 = !DILocation(line: 142, column: 29, scope: !197)
!200 = !DILocation(line: 143, column: 25, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !3, line: 143, column: 25)
!202 = !DILocation(line: 143, column: 33, scope: !201)
!203 = !DILocation(line: 143, column: 37, scope: !201)
!204 = !DILocation(line: 143, column: 40, scope: !201)
!205 = !DILocation(line: 143, column: 45, scope: !201)
!206 = !DILocation(line: 143, column: 52, scope: !201)
!207 = !DILocation(line: 143, column: 56, scope: !201)
!208 = !DILocation(line: 143, column: 25, scope: !197)
!209 = !DILocation(line: 145, column: 25, scope: !210)
!210 = distinct !DILexicalBlock(scope: !201, file: !3, line: 144, column: 21)
!211 = !DILocation(line: 145, column: 30, scope: !210)
!212 = !DILocation(line: 145, column: 37, scope: !210)
!213 = !DILocation(line: 145, column: 41, scope: !210)
!214 = !DILocation(line: 146, column: 21, scope: !210)
!215 = !DILocation(line: 147, column: 17, scope: !197)
!216 = !DILocation(line: 150, column: 21, scope: !217)
!217 = distinct !DILexicalBlock(scope: !185, file: !3, line: 149, column: 17)
!218 = !DILocation(line: 152, column: 21, scope: !217)
!219 = !DILocation(line: 152, column: 26, scope: !217)
!220 = !DILocation(line: 152, column: 35, scope: !217)
!221 = !DILocation(line: 154, column: 13, scope: !186)
!222 = !DILocation(line: 156, column: 5, scope: !175)
!223 = !DILocation(line: 157, column: 8, scope: !224)
!224 = distinct !DILexicalBlock(scope: !163, file: !3, line: 157, column: 8)
!225 = !DILocation(line: 157, column: 8, scope: !163)
!226 = !DILocation(line: 160, column: 24, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !3, line: 158, column: 5)
!228 = !DILocation(line: 160, column: 9, scope: !227)
!229 = !DILocation(line: 161, column: 5, scope: !227)
!230 = !DILocation(line: 162, column: 1, scope: !163)
!231 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 165, type: !16, scopeLine: 166, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!232 = !DILocalVariable(name: "data", scope: !231, file: !3, line: 167, type: !19)
!233 = !DILocation(line: 167, column: 12, scope: !231)
!234 = !DILocalVariable(name: "dataBuffer", scope: !231, file: !3, line: 168, type: !23)
!235 = !DILocation(line: 168, column: 10, scope: !231)
!236 = !DILocation(line: 169, column: 12, scope: !231)
!237 = !DILocation(line: 169, column: 10, scope: !231)
!238 = !DILocation(line: 170, column: 8, scope: !239)
!239 = distinct !DILexicalBlock(scope: !231, file: !3, line: 170, column: 8)
!240 = !DILocation(line: 170, column: 8, scope: !231)
!241 = !DILocation(line: 173, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !3, line: 171, column: 5)
!243 = !DILocation(line: 174, column: 5, scope: !242)
!244 = !DILocation(line: 178, column: 16, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !3, line: 176, column: 5)
!246 = !DILocation(line: 178, column: 9, scope: !245)
!247 = !DILocation(line: 180, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !231, file: !3, line: 180, column: 8)
!249 = !DILocation(line: 180, column: 8, scope: !231)
!250 = !DILocation(line: 183, column: 16, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !3, line: 181, column: 5)
!252 = !DILocation(line: 183, column: 9, scope: !251)
!253 = !DILocation(line: 184, column: 5, scope: !251)
!254 = !DILocation(line: 185, column: 1, scope: !231)
!255 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 188, type: !16, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!256 = !DILocalVariable(name: "data", scope: !255, file: !3, line: 190, type: !19)
!257 = !DILocation(line: 190, column: 12, scope: !255)
!258 = !DILocalVariable(name: "dataBuffer", scope: !255, file: !3, line: 191, type: !23)
!259 = !DILocation(line: 191, column: 10, scope: !255)
!260 = !DILocation(line: 192, column: 12, scope: !255)
!261 = !DILocation(line: 192, column: 10, scope: !255)
!262 = !DILocation(line: 193, column: 8, scope: !263)
!263 = distinct !DILexicalBlock(scope: !255, file: !3, line: 193, column: 8)
!264 = !DILocation(line: 193, column: 8, scope: !255)
!265 = !DILocation(line: 196, column: 16, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !3, line: 194, column: 5)
!267 = !DILocation(line: 196, column: 9, scope: !266)
!268 = !DILocation(line: 197, column: 5, scope: !266)
!269 = !DILocation(line: 198, column: 8, scope: !270)
!270 = distinct !DILexicalBlock(scope: !255, file: !3, line: 198, column: 8)
!271 = !DILocation(line: 198, column: 8, scope: !255)
!272 = !DILocation(line: 201, column: 16, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !3, line: 199, column: 5)
!274 = !DILocation(line: 201, column: 9, scope: !273)
!275 = !DILocation(line: 202, column: 5, scope: !273)
!276 = !DILocation(line: 203, column: 1, scope: !255)
!277 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_05_good", scope: !3, file: !3, line: 205, type: !16, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!278 = !DILocation(line: 207, column: 5, scope: !277)
!279 = !DILocation(line: 208, column: 5, scope: !277)
!280 = !DILocation(line: 209, column: 5, scope: !277)
!281 = !DILocation(line: 210, column: 5, scope: !277)
!282 = !DILocation(line: 211, column: 1, scope: !277)
