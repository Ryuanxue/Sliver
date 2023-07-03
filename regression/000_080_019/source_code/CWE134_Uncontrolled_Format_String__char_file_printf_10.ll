; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_10.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@globalTrue = external dso_local global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@globalFalse = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_10_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !21
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !22
  store i8* %arraydecay, i8** %data, align 8, !dbg !23
  %1 = load i32, i32* @globalTrue, align 4, !dbg !24
  %tobool = icmp ne i32 %1, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.end13, !dbg !26

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !27, metadata !DIExpression()), !dbg !33
  %2 = load i8*, i8** %data, align 8, !dbg !34
  %call = call i64 @strlen(i8* %2) #6, !dbg !35
  store i64 %call, i64* %dataLen, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !36, metadata !DIExpression()), !dbg !93
  %3 = load i64, i64* %dataLen, align 8, !dbg !94
  %sub = sub i64 100, %3, !dbg !96
  %cmp = icmp ugt i64 %sub, 1, !dbg !97
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !98

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !99
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !101
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !102
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !104
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !105

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !106
  %6 = load i64, i64* %dataLen, align 8, !dbg !109
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !110
  %7 = load i64, i64* %dataLen, align 8, !dbg !111
  %sub5 = sub i64 100, %7, !dbg !112
  %conv = trunc i64 %sub5 to i32, !dbg !113
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !114
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !115
  %cmp7 = icmp eq i8* %call6, null, !dbg !116
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !117

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !118
  %9 = load i8*, i8** %data, align 8, !dbg !120
  %10 = load i64, i64* %dataLen, align 8, !dbg !121
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !120
  store i8 0, i8* %arrayidx, align 1, !dbg !122
  br label %if.end, !dbg !123

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !124
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !125
  br label %if.end11, !dbg !126

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !127

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !128

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @globalTrue, align 4, !dbg !129
  %tobool14 = icmp ne i32 %12, 0, !dbg !129
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !131

if.then15:                                        ; preds = %if.end13
  %13 = load i8*, i8** %data, align 8, !dbg !132
  %call16 = call i32 (i8*, ...) @printf(i8* %13), !dbg !134
  br label %if.end17, !dbg !135

if.end17:                                         ; preds = %if.then15, %if.end13
  ret void, !dbg !136
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !137 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !141
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !141
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !142
  store i8* %arraydecay, i8** %data, align 8, !dbg !143
  %1 = load i32, i32* @globalTrue, align 4, !dbg !144
  %tobool = icmp ne i32 %1, 0, !dbg !144
  br i1 %tobool, label %if.then, label %if.end13, !dbg !146

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !147, metadata !DIExpression()), !dbg !150
  %2 = load i8*, i8** %data, align 8, !dbg !151
  %call = call i64 @strlen(i8* %2) #6, !dbg !152
  store i64 %call, i64* %dataLen, align 8, !dbg !150
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !153, metadata !DIExpression()), !dbg !154
  %3 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub = sub i64 100, %3, !dbg !157
  %cmp = icmp ugt i64 %sub, 1, !dbg !158
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !159

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !160
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !162
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !163
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !165
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !166

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !167
  %6 = load i64, i64* %dataLen, align 8, !dbg !170
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !171
  %7 = load i64, i64* %dataLen, align 8, !dbg !172
  %sub5 = sub i64 100, %7, !dbg !173
  %conv = trunc i64 %sub5 to i32, !dbg !174
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !175
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !176
  %cmp7 = icmp eq i8* %call6, null, !dbg !177
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !178

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !179
  %9 = load i8*, i8** %data, align 8, !dbg !181
  %10 = load i64, i64* %dataLen, align 8, !dbg !182
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !181
  store i8 0, i8* %arrayidx, align 1, !dbg !183
  br label %if.end, !dbg !184

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !185
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !186
  br label %if.end11, !dbg !187

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !188

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !189

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @globalFalse, align 4, !dbg !190
  %tobool14 = icmp ne i32 %12, 0, !dbg !190
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !192

if.then15:                                        ; preds = %if.end13
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !193
  br label %if.end17, !dbg !195

if.else:                                          ; preds = %if.end13
  %13 = load i8*, i8** %data, align 8, !dbg !196
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !198
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  ret void, !dbg !199
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !200 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !203, metadata !DIExpression()), !dbg !204
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !204
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !204
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !205
  store i8* %arraydecay, i8** %data, align 8, !dbg !206
  %1 = load i32, i32* @globalTrue, align 4, !dbg !207
  %tobool = icmp ne i32 %1, 0, !dbg !207
  br i1 %tobool, label %if.then, label %if.end13, !dbg !209

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !210, metadata !DIExpression()), !dbg !213
  %2 = load i8*, i8** %data, align 8, !dbg !214
  %call = call i64 @strlen(i8* %2) #6, !dbg !215
  store i64 %call, i64* %dataLen, align 8, !dbg !213
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !216, metadata !DIExpression()), !dbg !217
  %3 = load i64, i64* %dataLen, align 8, !dbg !218
  %sub = sub i64 100, %3, !dbg !220
  %cmp = icmp ugt i64 %sub, 1, !dbg !221
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !222

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !223
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !225
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !226
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !228
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !229

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !230
  %6 = load i64, i64* %dataLen, align 8, !dbg !233
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !234
  %7 = load i64, i64* %dataLen, align 8, !dbg !235
  %sub5 = sub i64 100, %7, !dbg !236
  %conv = trunc i64 %sub5 to i32, !dbg !237
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !238
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !239
  %cmp7 = icmp eq i8* %call6, null, !dbg !240
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !241

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !242
  %9 = load i8*, i8** %data, align 8, !dbg !244
  %10 = load i64, i64* %dataLen, align 8, !dbg !245
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !244
  store i8 0, i8* %arrayidx, align 1, !dbg !246
  br label %if.end, !dbg !247

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !248
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !249
  br label %if.end11, !dbg !250

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !251

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !252

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @globalTrue, align 4, !dbg !253
  %tobool14 = icmp ne i32 %12, 0, !dbg !253
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !255

if.then15:                                        ; preds = %if.end13
  %13 = load i8*, i8** %data, align 8, !dbg !256
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !258
  br label %if.end17, !dbg !259

if.end17:                                         ; preds = %if.then15, %if.end13
  ret void, !dbg !260
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !261 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !265
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !265
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !266
  store i8* %arraydecay, i8** %data, align 8, !dbg !267
  %1 = load i32, i32* @globalFalse, align 4, !dbg !268
  %tobool = icmp ne i32 %1, 0, !dbg !268
  br i1 %tobool, label %if.then, label %if.else, !dbg !270

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !271
  br label %if.end, !dbg !273

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !274
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !276
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalTrue, align 4, !dbg !277
  %tobool1 = icmp ne i32 %3, 0, !dbg !277
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !279

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !280
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !282
  br label %if.end4, !dbg !283

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !284
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !285 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !286, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !288, metadata !DIExpression()), !dbg !289
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !289
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !289
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !290
  store i8* %arraydecay, i8** %data, align 8, !dbg !291
  %1 = load i32, i32* @globalTrue, align 4, !dbg !292
  %tobool = icmp ne i32 %1, 0, !dbg !292
  br i1 %tobool, label %if.then, label %if.end, !dbg !294

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !295
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !297
  br label %if.end, !dbg !298

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalTrue, align 4, !dbg !299
  %tobool1 = icmp ne i32 %3, 0, !dbg !299
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !301

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !302
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !304
  br label %if.end4, !dbg !305

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_10_good() #0 !dbg !307 {
entry:
  call void @goodB2G1(), !dbg !308
  call void @goodB2G2(), !dbg !309
  call void @goodG2B1(), !dbg !310
  call void @goodG2B2(), !dbg !311
  ret void, !dbg !312
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_10.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_019/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_10_bad", scope: !1, file: !1, line: 33, type: !11, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 35, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 35, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 36, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 36, column: 10, scope: !10)
!22 = !DILocation(line: 37, column: 12, scope: !10)
!23 = !DILocation(line: 37, column: 10, scope: !10)
!24 = !DILocation(line: 38, column: 8, scope: !25)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 38, column: 8)
!26 = !DILocation(line: 38, column: 8, scope: !10)
!27 = !DILocalVariable(name: "dataLen", scope: !28, file: !1, line: 42, type: !30)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 40, column: 9)
!29 = distinct !DILexicalBlock(scope: !25, file: !1, line: 39, column: 5)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 42, column: 20, scope: !28)
!34 = !DILocation(line: 42, column: 37, scope: !28)
!35 = !DILocation(line: 42, column: 30, scope: !28)
!36 = !DILocalVariable(name: "pFile", scope: !28, file: !1, line: 43, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !39, line: 7, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !41, line: 49, size: 1728, elements: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !58, !60, !61, !62, !66, !68, !70, !74, !77, !79, !82, !85, !86, !87, !88, !89}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !40, file: !41, line: 51, baseType: !5, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !40, file: !41, line: 54, baseType: !14, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !40, file: !41, line: 55, baseType: !14, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !40, file: !41, line: 56, baseType: !14, size: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !40, file: !41, line: 57, baseType: !14, size: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !40, file: !41, line: 58, baseType: !14, size: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !40, file: !41, line: 59, baseType: !14, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !40, file: !41, line: 60, baseType: !14, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !40, file: !41, line: 61, baseType: !14, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !40, file: !41, line: 64, baseType: !14, size: 64, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !40, file: !41, line: 65, baseType: !14, size: 64, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !40, file: !41, line: 66, baseType: !14, size: 64, offset: 704)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !40, file: !41, line: 68, baseType: !56, size: 64, offset: 768)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !41, line: 36, flags: DIFlagFwdDecl)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !40, file: !41, line: 70, baseType: !59, size: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !40, file: !41, line: 72, baseType: !5, size: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !40, file: !41, line: 73, baseType: !5, size: 32, offset: 928)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !40, file: !41, line: 74, baseType: !63, size: 64, offset: 960)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !64, line: 152, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !40, file: !41, line: 77, baseType: !67, size: 16, offset: 1024)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !40, file: !41, line: 78, baseType: !69, size: 8, offset: 1040)
!69 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !40, file: !41, line: 79, baseType: !71, size: 8, offset: 1048)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !40, file: !41, line: 81, baseType: !75, size: 64, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !41, line: 43, baseType: null)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !40, file: !41, line: 89, baseType: !78, size: 64, offset: 1152)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !64, line: 153, baseType: !65)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !40, file: !41, line: 91, baseType: !80, size: 64, offset: 1216)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !41, line: 37, flags: DIFlagFwdDecl)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !40, file: !41, line: 92, baseType: !83, size: 64, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !41, line: 38, flags: DIFlagFwdDecl)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !40, file: !41, line: 93, baseType: !59, size: 64, offset: 1344)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !40, file: !41, line: 94, baseType: !4, size: 64, offset: 1408)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !40, file: !41, line: 95, baseType: !30, size: 64, offset: 1472)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !40, file: !41, line: 96, baseType: !5, size: 32, offset: 1536)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !40, file: !41, line: 98, baseType: !90, size: 160, offset: 1568)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 20)
!93 = !DILocation(line: 43, column: 20, scope: !28)
!94 = !DILocation(line: 45, column: 21, scope: !95)
!95 = distinct !DILexicalBlock(scope: !28, file: !1, line: 45, column: 17)
!96 = !DILocation(line: 45, column: 20, scope: !95)
!97 = !DILocation(line: 45, column: 29, scope: !95)
!98 = !DILocation(line: 45, column: 17, scope: !28)
!99 = !DILocation(line: 47, column: 25, scope: !100)
!100 = distinct !DILexicalBlock(scope: !95, file: !1, line: 46, column: 13)
!101 = !DILocation(line: 47, column: 23, scope: !100)
!102 = !DILocation(line: 48, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !1, line: 48, column: 21)
!104 = !DILocation(line: 48, column: 27, scope: !103)
!105 = !DILocation(line: 48, column: 21, scope: !100)
!106 = !DILocation(line: 51, column: 31, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !1, line: 51, column: 25)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 49, column: 17)
!109 = !DILocation(line: 51, column: 36, scope: !107)
!110 = !DILocation(line: 51, column: 35, scope: !107)
!111 = !DILocation(line: 51, column: 55, scope: !107)
!112 = !DILocation(line: 51, column: 54, scope: !107)
!113 = !DILocation(line: 51, column: 45, scope: !107)
!114 = !DILocation(line: 51, column: 65, scope: !107)
!115 = !DILocation(line: 51, column: 25, scope: !107)
!116 = !DILocation(line: 51, column: 72, scope: !107)
!117 = !DILocation(line: 51, column: 25, scope: !108)
!118 = !DILocation(line: 53, column: 25, scope: !119)
!119 = distinct !DILexicalBlock(scope: !107, file: !1, line: 52, column: 21)
!120 = !DILocation(line: 55, column: 25, scope: !119)
!121 = !DILocation(line: 55, column: 30, scope: !119)
!122 = !DILocation(line: 55, column: 39, scope: !119)
!123 = !DILocation(line: 56, column: 21, scope: !119)
!124 = !DILocation(line: 57, column: 28, scope: !108)
!125 = !DILocation(line: 57, column: 21, scope: !108)
!126 = !DILocation(line: 58, column: 17, scope: !108)
!127 = !DILocation(line: 59, column: 13, scope: !100)
!128 = !DILocation(line: 61, column: 5, scope: !29)
!129 = !DILocation(line: 62, column: 8, scope: !130)
!130 = distinct !DILexicalBlock(scope: !10, file: !1, line: 62, column: 8)
!131 = !DILocation(line: 62, column: 8, scope: !10)
!132 = !DILocation(line: 65, column: 16, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !1, line: 63, column: 5)
!134 = !DILocation(line: 65, column: 9, scope: !133)
!135 = !DILocation(line: 66, column: 5, scope: !133)
!136 = !DILocation(line: 67, column: 1, scope: !10)
!137 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 74, type: !11, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!138 = !DILocalVariable(name: "data", scope: !137, file: !1, line: 76, type: !14)
!139 = !DILocation(line: 76, column: 12, scope: !137)
!140 = !DILocalVariable(name: "dataBuffer", scope: !137, file: !1, line: 77, type: !18)
!141 = !DILocation(line: 77, column: 10, scope: !137)
!142 = !DILocation(line: 78, column: 12, scope: !137)
!143 = !DILocation(line: 78, column: 10, scope: !137)
!144 = !DILocation(line: 79, column: 8, scope: !145)
!145 = distinct !DILexicalBlock(scope: !137, file: !1, line: 79, column: 8)
!146 = !DILocation(line: 79, column: 8, scope: !137)
!147 = !DILocalVariable(name: "dataLen", scope: !148, file: !1, line: 83, type: !30)
!148 = distinct !DILexicalBlock(scope: !149, file: !1, line: 81, column: 9)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 80, column: 5)
!150 = !DILocation(line: 83, column: 20, scope: !148)
!151 = !DILocation(line: 83, column: 37, scope: !148)
!152 = !DILocation(line: 83, column: 30, scope: !148)
!153 = !DILocalVariable(name: "pFile", scope: !148, file: !1, line: 84, type: !37)
!154 = !DILocation(line: 84, column: 20, scope: !148)
!155 = !DILocation(line: 86, column: 21, scope: !156)
!156 = distinct !DILexicalBlock(scope: !148, file: !1, line: 86, column: 17)
!157 = !DILocation(line: 86, column: 20, scope: !156)
!158 = !DILocation(line: 86, column: 29, scope: !156)
!159 = !DILocation(line: 86, column: 17, scope: !148)
!160 = !DILocation(line: 88, column: 25, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !1, line: 87, column: 13)
!162 = !DILocation(line: 88, column: 23, scope: !161)
!163 = !DILocation(line: 89, column: 21, scope: !164)
!164 = distinct !DILexicalBlock(scope: !161, file: !1, line: 89, column: 21)
!165 = !DILocation(line: 89, column: 27, scope: !164)
!166 = !DILocation(line: 89, column: 21, scope: !161)
!167 = !DILocation(line: 92, column: 31, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 92, column: 25)
!169 = distinct !DILexicalBlock(scope: !164, file: !1, line: 90, column: 17)
!170 = !DILocation(line: 92, column: 36, scope: !168)
!171 = !DILocation(line: 92, column: 35, scope: !168)
!172 = !DILocation(line: 92, column: 55, scope: !168)
!173 = !DILocation(line: 92, column: 54, scope: !168)
!174 = !DILocation(line: 92, column: 45, scope: !168)
!175 = !DILocation(line: 92, column: 65, scope: !168)
!176 = !DILocation(line: 92, column: 25, scope: !168)
!177 = !DILocation(line: 92, column: 72, scope: !168)
!178 = !DILocation(line: 92, column: 25, scope: !169)
!179 = !DILocation(line: 94, column: 25, scope: !180)
!180 = distinct !DILexicalBlock(scope: !168, file: !1, line: 93, column: 21)
!181 = !DILocation(line: 96, column: 25, scope: !180)
!182 = !DILocation(line: 96, column: 30, scope: !180)
!183 = !DILocation(line: 96, column: 39, scope: !180)
!184 = !DILocation(line: 97, column: 21, scope: !180)
!185 = !DILocation(line: 98, column: 28, scope: !169)
!186 = !DILocation(line: 98, column: 21, scope: !169)
!187 = !DILocation(line: 99, column: 17, scope: !169)
!188 = !DILocation(line: 100, column: 13, scope: !161)
!189 = !DILocation(line: 102, column: 5, scope: !149)
!190 = !DILocation(line: 103, column: 8, scope: !191)
!191 = distinct !DILexicalBlock(scope: !137, file: !1, line: 103, column: 8)
!192 = !DILocation(line: 103, column: 8, scope: !137)
!193 = !DILocation(line: 106, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !1, line: 104, column: 5)
!195 = !DILocation(line: 107, column: 5, scope: !194)
!196 = !DILocation(line: 111, column: 24, scope: !197)
!197 = distinct !DILexicalBlock(scope: !191, file: !1, line: 109, column: 5)
!198 = !DILocation(line: 111, column: 9, scope: !197)
!199 = !DILocation(line: 113, column: 1, scope: !137)
!200 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 116, type: !11, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!201 = !DILocalVariable(name: "data", scope: !200, file: !1, line: 118, type: !14)
!202 = !DILocation(line: 118, column: 12, scope: !200)
!203 = !DILocalVariable(name: "dataBuffer", scope: !200, file: !1, line: 119, type: !18)
!204 = !DILocation(line: 119, column: 10, scope: !200)
!205 = !DILocation(line: 120, column: 12, scope: !200)
!206 = !DILocation(line: 120, column: 10, scope: !200)
!207 = !DILocation(line: 121, column: 8, scope: !208)
!208 = distinct !DILexicalBlock(scope: !200, file: !1, line: 121, column: 8)
!209 = !DILocation(line: 121, column: 8, scope: !200)
!210 = !DILocalVariable(name: "dataLen", scope: !211, file: !1, line: 125, type: !30)
!211 = distinct !DILexicalBlock(scope: !212, file: !1, line: 123, column: 9)
!212 = distinct !DILexicalBlock(scope: !208, file: !1, line: 122, column: 5)
!213 = !DILocation(line: 125, column: 20, scope: !211)
!214 = !DILocation(line: 125, column: 37, scope: !211)
!215 = !DILocation(line: 125, column: 30, scope: !211)
!216 = !DILocalVariable(name: "pFile", scope: !211, file: !1, line: 126, type: !37)
!217 = !DILocation(line: 126, column: 20, scope: !211)
!218 = !DILocation(line: 128, column: 21, scope: !219)
!219 = distinct !DILexicalBlock(scope: !211, file: !1, line: 128, column: 17)
!220 = !DILocation(line: 128, column: 20, scope: !219)
!221 = !DILocation(line: 128, column: 29, scope: !219)
!222 = !DILocation(line: 128, column: 17, scope: !211)
!223 = !DILocation(line: 130, column: 25, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 129, column: 13)
!225 = !DILocation(line: 130, column: 23, scope: !224)
!226 = !DILocation(line: 131, column: 21, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !1, line: 131, column: 21)
!228 = !DILocation(line: 131, column: 27, scope: !227)
!229 = !DILocation(line: 131, column: 21, scope: !224)
!230 = !DILocation(line: 134, column: 31, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !1, line: 134, column: 25)
!232 = distinct !DILexicalBlock(scope: !227, file: !1, line: 132, column: 17)
!233 = !DILocation(line: 134, column: 36, scope: !231)
!234 = !DILocation(line: 134, column: 35, scope: !231)
!235 = !DILocation(line: 134, column: 55, scope: !231)
!236 = !DILocation(line: 134, column: 54, scope: !231)
!237 = !DILocation(line: 134, column: 45, scope: !231)
!238 = !DILocation(line: 134, column: 65, scope: !231)
!239 = !DILocation(line: 134, column: 25, scope: !231)
!240 = !DILocation(line: 134, column: 72, scope: !231)
!241 = !DILocation(line: 134, column: 25, scope: !232)
!242 = !DILocation(line: 136, column: 25, scope: !243)
!243 = distinct !DILexicalBlock(scope: !231, file: !1, line: 135, column: 21)
!244 = !DILocation(line: 138, column: 25, scope: !243)
!245 = !DILocation(line: 138, column: 30, scope: !243)
!246 = !DILocation(line: 138, column: 39, scope: !243)
!247 = !DILocation(line: 139, column: 21, scope: !243)
!248 = !DILocation(line: 140, column: 28, scope: !232)
!249 = !DILocation(line: 140, column: 21, scope: !232)
!250 = !DILocation(line: 141, column: 17, scope: !232)
!251 = !DILocation(line: 142, column: 13, scope: !224)
!252 = !DILocation(line: 144, column: 5, scope: !212)
!253 = !DILocation(line: 145, column: 8, scope: !254)
!254 = distinct !DILexicalBlock(scope: !200, file: !1, line: 145, column: 8)
!255 = !DILocation(line: 145, column: 8, scope: !200)
!256 = !DILocation(line: 148, column: 24, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !1, line: 146, column: 5)
!258 = !DILocation(line: 148, column: 9, scope: !257)
!259 = !DILocation(line: 149, column: 5, scope: !257)
!260 = !DILocation(line: 150, column: 1, scope: !200)
!261 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 153, type: !11, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!262 = !DILocalVariable(name: "data", scope: !261, file: !1, line: 155, type: !14)
!263 = !DILocation(line: 155, column: 12, scope: !261)
!264 = !DILocalVariable(name: "dataBuffer", scope: !261, file: !1, line: 156, type: !18)
!265 = !DILocation(line: 156, column: 10, scope: !261)
!266 = !DILocation(line: 157, column: 12, scope: !261)
!267 = !DILocation(line: 157, column: 10, scope: !261)
!268 = !DILocation(line: 158, column: 8, scope: !269)
!269 = distinct !DILexicalBlock(scope: !261, file: !1, line: 158, column: 8)
!270 = !DILocation(line: 158, column: 8, scope: !261)
!271 = !DILocation(line: 161, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !1, line: 159, column: 5)
!273 = !DILocation(line: 162, column: 5, scope: !272)
!274 = !DILocation(line: 166, column: 16, scope: !275)
!275 = distinct !DILexicalBlock(scope: !269, file: !1, line: 164, column: 5)
!276 = !DILocation(line: 166, column: 9, scope: !275)
!277 = !DILocation(line: 168, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !261, file: !1, line: 168, column: 8)
!279 = !DILocation(line: 168, column: 8, scope: !261)
!280 = !DILocation(line: 171, column: 16, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !1, line: 169, column: 5)
!282 = !DILocation(line: 171, column: 9, scope: !281)
!283 = !DILocation(line: 172, column: 5, scope: !281)
!284 = !DILocation(line: 173, column: 1, scope: !261)
!285 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 176, type: !11, scopeLine: 177, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!286 = !DILocalVariable(name: "data", scope: !285, file: !1, line: 178, type: !14)
!287 = !DILocation(line: 178, column: 12, scope: !285)
!288 = !DILocalVariable(name: "dataBuffer", scope: !285, file: !1, line: 179, type: !18)
!289 = !DILocation(line: 179, column: 10, scope: !285)
!290 = !DILocation(line: 180, column: 12, scope: !285)
!291 = !DILocation(line: 180, column: 10, scope: !285)
!292 = !DILocation(line: 181, column: 8, scope: !293)
!293 = distinct !DILexicalBlock(scope: !285, file: !1, line: 181, column: 8)
!294 = !DILocation(line: 181, column: 8, scope: !285)
!295 = !DILocation(line: 184, column: 16, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !1, line: 182, column: 5)
!297 = !DILocation(line: 184, column: 9, scope: !296)
!298 = !DILocation(line: 185, column: 5, scope: !296)
!299 = !DILocation(line: 186, column: 8, scope: !300)
!300 = distinct !DILexicalBlock(scope: !285, file: !1, line: 186, column: 8)
!301 = !DILocation(line: 186, column: 8, scope: !285)
!302 = !DILocation(line: 189, column: 16, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !1, line: 187, column: 5)
!304 = !DILocation(line: 189, column: 9, scope: !303)
!305 = !DILocation(line: 190, column: 5, scope: !303)
!306 = !DILocation(line: 191, column: 1, scope: !285)
!307 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_10_good", scope: !1, file: !1, line: 193, type: !11, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!308 = !DILocation(line: 195, column: 5, scope: !307)
!309 = !DILocation(line: 196, column: 5, scope: !307)
!310 = !DILocation(line: 197, column: 5, scope: !307)
!311 = !DILocation(line: 198, column: 5, scope: !307)
!312 = !DILocation(line: 199, column: 1, scope: !307)
