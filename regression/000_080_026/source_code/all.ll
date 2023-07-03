; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.5 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.8 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_17_bad() #0 !dbg !52 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %j, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i8** %data, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !61, metadata !DIExpression()), !dbg !65
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !66
  store i8* %arraydecay, i8** %data, align 8, !dbg !67
  store i32 0, i32* %i, align 4, !dbg !68
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !71
  %cmp = icmp slt i32 %1, 1, !dbg !73
  br i1 %cmp, label %for.body, label %for.end, !dbg !74

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !75, metadata !DIExpression()), !dbg !81
  %2 = load i8*, i8** %data, align 8, !dbg !82
  %call = call i64 @strlen(i8* %2) #7, !dbg !83
  store i64 %call, i64* %dataLen, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !84, metadata !DIExpression()), !dbg !140
  %3 = load i64, i64* %dataLen, align 8, !dbg !141
  %sub = sub i64 100, %3, !dbg !143
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !144
  br i1 %cmp1, label %if.then, label %if.end12, !dbg !145

if.then:                                          ; preds = %for.body
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !146
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !148
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !149
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !151
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !152

if.then4:                                         ; preds = %if.then
  %5 = load i8*, i8** %data, align 8, !dbg !153
  %6 = load i64, i64* %dataLen, align 8, !dbg !156
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !157
  %7 = load i64, i64* %dataLen, align 8, !dbg !158
  %sub5 = sub i64 100, %7, !dbg !159
  %conv = trunc i64 %sub5 to i32, !dbg !160
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !161
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !162
  %cmp7 = icmp eq i8* %call6, null, !dbg !163
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !164

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !165
  %9 = load i8*, i8** %data, align 8, !dbg !167
  %10 = load i64, i64* %dataLen, align 8, !dbg !168
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !167
  store i8 0, i8* %arrayidx, align 1, !dbg !169
  br label %if.end, !dbg !170

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !171
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !172
  br label %if.end11, !dbg !173

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !174

if.end12:                                         ; preds = %if.end11, %for.body
  br label %for.inc, !dbg !175

for.inc:                                          ; preds = %if.end12
  %12 = load i32, i32* %i, align 4, !dbg !176
  %inc = add nsw i32 %12, 1, !dbg !176
  store i32 %inc, i32* %i, align 4, !dbg !176
  br label %for.cond, !dbg !177, !llvm.loop !178

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !181
  br label %for.cond13, !dbg !183

for.cond13:                                       ; preds = %for.inc18, %for.end
  %13 = load i32, i32* %j, align 4, !dbg !184
  %cmp14 = icmp slt i32 %13, 1, !dbg !186
  br i1 %cmp14, label %for.body16, label %for.end20, !dbg !187

for.body16:                                       ; preds = %for.cond13
  %14 = load i8*, i8** %data, align 8, !dbg !188
  %call17 = call i32 (i8*, ...) @printf(i8* %14), !dbg !190
  br label %for.inc18, !dbg !191

for.inc18:                                        ; preds = %for.body16
  %15 = load i32, i32* %j, align 4, !dbg !192
  %inc19 = add nsw i32 %15, 1, !dbg !192
  store i32 %inc19, i32* %j, align 4, !dbg !192
  br label %for.cond13, !dbg !193, !llvm.loop !194

for.end20:                                        ; preds = %for.cond13
  ret void, !dbg !196
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !197 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata i32* %k, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i8** %data, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !204, metadata !DIExpression()), !dbg !205
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !205
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !205
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !206
  store i8* %arraydecay, i8** %data, align 8, !dbg !207
  store i32 0, i32* %i, align 4, !dbg !208
  br label %for.cond, !dbg !210

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !211
  %cmp = icmp slt i32 %1, 1, !dbg !213
  br i1 %cmp, label %for.body, label %for.end, !dbg !214

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !215, metadata !DIExpression()), !dbg !218
  %2 = load i8*, i8** %data, align 8, !dbg !219
  %call = call i64 @strlen(i8* %2) #7, !dbg !220
  store i64 %call, i64* %dataLen, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !221, metadata !DIExpression()), !dbg !222
  %3 = load i64, i64* %dataLen, align 8, !dbg !223
  %sub = sub i64 100, %3, !dbg !225
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !226
  br i1 %cmp1, label %if.then, label %if.end12, !dbg !227

if.then:                                          ; preds = %for.body
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !228
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !230
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !231
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !233
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !234

if.then4:                                         ; preds = %if.then
  %5 = load i8*, i8** %data, align 8, !dbg !235
  %6 = load i64, i64* %dataLen, align 8, !dbg !238
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !239
  %7 = load i64, i64* %dataLen, align 8, !dbg !240
  %sub5 = sub i64 100, %7, !dbg !241
  %conv = trunc i64 %sub5 to i32, !dbg !242
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !243
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !244
  %cmp7 = icmp eq i8* %call6, null, !dbg !245
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !246

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !247
  %9 = load i8*, i8** %data, align 8, !dbg !249
  %10 = load i64, i64* %dataLen, align 8, !dbg !250
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !249
  store i8 0, i8* %arrayidx, align 1, !dbg !251
  br label %if.end, !dbg !252

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !253
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !254
  br label %if.end11, !dbg !255

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !256

if.end12:                                         ; preds = %if.end11, %for.body
  br label %for.inc, !dbg !257

for.inc:                                          ; preds = %if.end12
  %12 = load i32, i32* %i, align 4, !dbg !258
  %inc = add nsw i32 %12, 1, !dbg !258
  store i32 %inc, i32* %i, align 4, !dbg !258
  br label %for.cond, !dbg !259, !llvm.loop !260

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !262
  br label %for.cond13, !dbg !264

for.cond13:                                       ; preds = %for.inc18, %for.end
  %13 = load i32, i32* %k, align 4, !dbg !265
  %cmp14 = icmp slt i32 %13, 1, !dbg !267
  br i1 %cmp14, label %for.body16, label %for.end20, !dbg !268

for.body16:                                       ; preds = %for.cond13
  %14 = load i8*, i8** %data, align 8, !dbg !269
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %14), !dbg !271
  br label %for.inc18, !dbg !272

for.inc18:                                        ; preds = %for.body16
  %15 = load i32, i32* %k, align 4, !dbg !273
  %inc19 = add nsw i32 %15, 1, !dbg !273
  store i32 %inc19, i32* %k, align 4, !dbg !273
  br label %for.cond13, !dbg !274, !llvm.loop !275

for.end20:                                        ; preds = %for.cond13
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !278 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i32* %h, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata i32* %j, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata i8** %data, metadata !283, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !286
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !286
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !287
  store i8* %arraydecay, i8** %data, align 8, !dbg !288
  store i32 0, i32* %h, align 4, !dbg !289
  br label %for.cond, !dbg !291

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %h, align 4, !dbg !292
  %cmp = icmp slt i32 %1, 1, !dbg !294
  br i1 %cmp, label %for.body, label %for.end, !dbg !295

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data, align 8, !dbg !296
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !298
  br label %for.inc, !dbg !299

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %h, align 4, !dbg !300
  %inc = add nsw i32 %3, 1, !dbg !300
  store i32 %inc, i32* %h, align 4, !dbg !300
  br label %for.cond, !dbg !301, !llvm.loop !302

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !304
  br label %for.cond1, !dbg !306

for.cond1:                                        ; preds = %for.inc5, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !307
  %cmp2 = icmp slt i32 %4, 1, !dbg !309
  br i1 %cmp2, label %for.body3, label %for.end7, !dbg !310

for.body3:                                        ; preds = %for.cond1
  %5 = load i8*, i8** %data, align 8, !dbg !311
  %call4 = call i32 (i8*, ...) @printf(i8* %5), !dbg !313
  br label %for.inc5, !dbg !314

for.inc5:                                         ; preds = %for.body3
  %6 = load i32, i32* %j, align 4, !dbg !315
  %inc6 = add nsw i32 %6, 1, !dbg !315
  store i32 %inc6, i32* %j, align 4, !dbg !315
  br label %for.cond1, !dbg !316, !llvm.loop !317

for.end7:                                         ; preds = %for.cond1
  ret void, !dbg !319
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_17_good() #0 !dbg !320 {
entry:
  call void @goodB2G(), !dbg !321
  call void @goodG2B(), !dbg !322
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !324 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !327, metadata !DIExpression()), !dbg !328
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !329
  %0 = load i8*, i8** %line.addr, align 8, !dbg !330
  %cmp = icmp ne i8* %0, null, !dbg !332
  br i1 %cmp, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !334
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !336
  br label %if.end, !dbg !337

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !338
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !349
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
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !365
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.9, i64 0, i64 0), i32 %0), !dbg !374
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.10, i64 0, i64 0), i32 %conv), !dbg !383
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
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !397, metadata !DIExpression()), !dbg !398
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !399
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !400
  ret void, !dbg !401
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !402 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !413 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !418
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !421 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !426
  %conv = sext i8 %0 to i32, !dbg !426
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !427
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !429 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !434, metadata !DIExpression()), !dbg !438
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !439
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !440
  store i32 %0, i32* %arrayidx, align 4, !dbg !441
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !442
  store i32 0, i32* %arrayidx1, align 4, !dbg !443
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !447 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !452
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !455 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !458, metadata !DIExpression()), !dbg !459
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !460
  %conv = zext i8 %0 to i32, !dbg !460
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !461
  ret void, !dbg !462
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !463 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !469
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !470
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !472 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !482, metadata !DIExpression()), !dbg !483
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !484
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !485
  %1 = load i32, i32* %intOne, align 4, !dbg !485
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !486
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !487
  %3 = load i32, i32* %intTwo, align 4, !dbg !487
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !488
  ret void, !dbg !489
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !490 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !494, metadata !DIExpression()), !dbg !495
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !496, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.declare(metadata i64* %i, metadata !498, metadata !DIExpression()), !dbg !499
  store i64 0, i64* %i, align 8, !dbg !500
  br label %for.cond, !dbg !502

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !503
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !505
  %cmp = icmp ult i64 %0, %1, !dbg !506
  br i1 %cmp, label %for.body, label %for.end, !dbg !507

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !508
  %3 = load i64, i64* %i, align 8, !dbg !510
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !508
  %4 = load i8, i8* %arrayidx, align 1, !dbg !508
  %conv = zext i8 %4 to i32, !dbg !508
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !511
  br label %for.inc, !dbg !512

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !513
  %inc = add i64 %5, 1, !dbg !513
  store i64 %inc, i64* %i, align 8, !dbg !513
  br label %for.cond, !dbg !514, !llvm.loop !515

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !517
  ret void, !dbg !518
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !519 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !522, metadata !DIExpression()), !dbg !523
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !524, metadata !DIExpression()), !dbg !525
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !528, metadata !DIExpression()), !dbg !529
  store i64 0, i64* %numWritten, align 8, !dbg !529
  br label %while.cond, !dbg !530

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !531
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !532
  %cmp = icmp ult i64 %0, %1, !dbg !533
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !534

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !535
  %2 = load i16*, i16** %call, align 8, !dbg !535
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !535
  %4 = load i64, i64* %numWritten, align 8, !dbg !535
  %mul = mul i64 2, %4, !dbg !535
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !535
  %5 = load i8, i8* %arrayidx, align 1, !dbg !535
  %conv = sext i8 %5 to i32, !dbg !535
  %idxprom = sext i32 %conv to i64, !dbg !535
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !535
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !535
  %conv2 = zext i16 %6 to i32, !dbg !535
  %and = and i32 %conv2, 4096, !dbg !535
  %tobool = icmp ne i32 %and, 0, !dbg !535
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !536

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !537
  %7 = load i16*, i16** %call3, align 8, !dbg !537
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !537
  %9 = load i64, i64* %numWritten, align 8, !dbg !537
  %mul4 = mul i64 2, %9, !dbg !537
  %add = add i64 %mul4, 1, !dbg !537
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !537
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !537
  %conv6 = sext i8 %10 to i32, !dbg !537
  %idxprom7 = sext i32 %conv6 to i64, !dbg !537
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !537
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !537
  %conv9 = zext i16 %11 to i32, !dbg !537
  %and10 = and i32 %conv9, 4096, !dbg !537
  %tobool11 = icmp ne i32 %and10, 0, !dbg !536
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !538
  br i1 %12, label %while.body, label %while.end, !dbg !530

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !539, metadata !DIExpression()), !dbg !541
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !542
  %14 = load i64, i64* %numWritten, align 8, !dbg !543
  %mul12 = mul i64 2, %14, !dbg !544
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !542
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !545
  %15 = load i32, i32* %byte, align 4, !dbg !546
  %conv15 = trunc i32 %15 to i8, !dbg !547
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !548
  %17 = load i64, i64* %numWritten, align 8, !dbg !549
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !548
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !550
  %18 = load i64, i64* %numWritten, align 8, !dbg !551
  %inc = add i64 %18, 1, !dbg !551
  store i64 %inc, i64* %numWritten, align 8, !dbg !551
  br label %while.cond, !dbg !530, !llvm.loop !552

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !554
  ret i64 %19, !dbg !555
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !556 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !559, metadata !DIExpression()), !dbg !560
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !561, metadata !DIExpression()), !dbg !562
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !563, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !565, metadata !DIExpression()), !dbg !566
  store i64 0, i64* %numWritten, align 8, !dbg !566
  br label %while.cond, !dbg !567

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !568
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !569
  %cmp = icmp ult i64 %0, %1, !dbg !570
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !571

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !572
  %3 = load i64, i64* %numWritten, align 8, !dbg !573
  %mul = mul i64 2, %3, !dbg !574
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !572
  %4 = load i32, i32* %arrayidx, align 4, !dbg !572
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !575
  %tobool = icmp ne i32 %call, 0, !dbg !575
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !576

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !577
  %6 = load i64, i64* %numWritten, align 8, !dbg !578
  %mul1 = mul i64 2, %6, !dbg !579
  %add = add i64 %mul1, 1, !dbg !580
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !577
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !577
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !581
  %tobool4 = icmp ne i32 %call3, 0, !dbg !576
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !582
  br i1 %8, label %while.body, label %while.end, !dbg !567

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !583, metadata !DIExpression()), !dbg !585
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !586
  %10 = load i64, i64* %numWritten, align 8, !dbg !587
  %mul5 = mul i64 2, %10, !dbg !588
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !586
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !589
  %11 = load i32, i32* %byte, align 4, !dbg !590
  %conv = trunc i32 %11 to i8, !dbg !591
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !592
  %13 = load i64, i64* %numWritten, align 8, !dbg !593
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !592
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !594
  %14 = load i64, i64* %numWritten, align 8, !dbg !595
  %inc = add i64 %14, 1, !dbg !595
  store i64 %inc, i64* %numWritten, align 8, !dbg !595
  br label %while.cond, !dbg !567, !llvm.loop !596

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !598
  ret i64 %15, !dbg !599
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !600 {
entry:
  ret i32 1, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !604 {
entry:
  ret i32 0, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !606 {
entry:
  %call = call i32 @rand() #8, !dbg !607
  %rem = srem i32 %call, 2, !dbg !608
  ret i32 %rem, !dbg !609
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !610 {
entry:
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !612 {
entry:
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !614 {
entry:
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !616 {
entry:
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !618 {
entry:
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !620 {
entry:
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !622 {
entry:
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !624 {
entry:
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !626 {
entry:
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !630 {
entry:
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !632 {
entry:
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !634 {
entry:
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !636 {
entry:
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !638 {
entry:
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !640 {
entry:
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !642 {
entry:
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !644 {
entry:
  ret void, !dbg !645
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_026/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_026/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_17_bad", scope: !45, file: !45, line: 33, type: !53, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "i", scope: !52, file: !45, line: 35, type: !23)
!56 = !DILocation(line: 35, column: 9, scope: !52)
!57 = !DILocalVariable(name: "j", scope: !52, file: !45, line: 35, type: !23)
!58 = !DILocation(line: 35, column: 11, scope: !52)
!59 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 36, type: !42)
!60 = !DILocation(line: 36, column: 12, scope: !52)
!61 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 37, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 37, column: 10, scope: !52)
!66 = !DILocation(line: 38, column: 12, scope: !52)
!67 = !DILocation(line: 38, column: 10, scope: !52)
!68 = !DILocation(line: 39, column: 11, scope: !69)
!69 = distinct !DILexicalBlock(scope: !52, file: !45, line: 39, column: 5)
!70 = !DILocation(line: 39, column: 9, scope: !69)
!71 = !DILocation(line: 39, column: 16, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !45, line: 39, column: 5)
!73 = !DILocation(line: 39, column: 18, scope: !72)
!74 = !DILocation(line: 39, column: 5, scope: !69)
!75 = !DILocalVariable(name: "dataLen", scope: !76, file: !45, line: 43, type: !78)
!76 = distinct !DILexicalBlock(scope: !77, file: !45, line: 41, column: 9)
!77 = distinct !DILexicalBlock(scope: !72, file: !45, line: 40, column: 5)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !79, line: 46, baseType: !80)
!79 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!80 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!81 = !DILocation(line: 43, column: 20, scope: !76)
!82 = !DILocation(line: 43, column: 37, scope: !76)
!83 = !DILocation(line: 43, column: 30, scope: !76)
!84 = !DILocalVariable(name: "pFile", scope: !76, file: !45, line: 44, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !106, !108, !109, !110, !114, !115, !117, !121, !124, !126, !129, !132, !133, !134, !135, !136}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !88, file: !89, line: 51, baseType: !23, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !88, file: !89, line: 54, baseType: !42, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !88, file: !89, line: 55, baseType: !42, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !88, file: !89, line: 56, baseType: !42, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !88, file: !89, line: 57, baseType: !42, size: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !88, file: !89, line: 58, baseType: !42, size: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !88, file: !89, line: 59, baseType: !42, size: 64, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !88, file: !89, line: 60, baseType: !42, size: 64, offset: 448)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !88, file: !89, line: 61, baseType: !42, size: 64, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !88, file: !89, line: 64, baseType: !42, size: 64, offset: 576)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !88, file: !89, line: 65, baseType: !42, size: 64, offset: 640)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !88, file: !89, line: 66, baseType: !42, size: 64, offset: 704)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !88, file: !89, line: 68, baseType: !104, size: 64, offset: 768)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !89, line: 36, flags: DIFlagFwdDecl)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !88, file: !89, line: 70, baseType: !107, size: 64, offset: 832)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !88, file: !89, line: 72, baseType: !23, size: 32, offset: 896)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !88, file: !89, line: 73, baseType: !23, size: 32, offset: 928)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !88, file: !89, line: 74, baseType: !111, size: 64, offset: 960)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !112, line: 152, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!113 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !88, file: !89, line: 77, baseType: !24, size: 16, offset: 1024)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !88, file: !89, line: 78, baseType: !116, size: 8, offset: 1040)
!116 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !88, file: !89, line: 79, baseType: !118, size: 8, offset: 1048)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 1)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !88, file: !89, line: 81, baseType: !122, size: 64, offset: 1088)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !89, line: 43, baseType: null)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !88, file: !89, line: 89, baseType: !125, size: 64, offset: 1152)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !112, line: 153, baseType: !113)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !88, file: !89, line: 91, baseType: !127, size: 64, offset: 1216)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !89, line: 37, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !88, file: !89, line: 92, baseType: !130, size: 64, offset: 1280)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !89, line: 38, flags: DIFlagFwdDecl)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !88, file: !89, line: 93, baseType: !107, size: 64, offset: 1344)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !88, file: !89, line: 94, baseType: !22, size: 64, offset: 1408)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !88, file: !89, line: 95, baseType: !78, size: 64, offset: 1472)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !88, file: !89, line: 96, baseType: !23, size: 32, offset: 1536)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !88, file: !89, line: 98, baseType: !137, size: 160, offset: 1568)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 20)
!140 = !DILocation(line: 44, column: 20, scope: !76)
!141 = !DILocation(line: 46, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !76, file: !45, line: 46, column: 17)
!143 = !DILocation(line: 46, column: 20, scope: !142)
!144 = !DILocation(line: 46, column: 29, scope: !142)
!145 = !DILocation(line: 46, column: 17, scope: !76)
!146 = !DILocation(line: 48, column: 25, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !45, line: 47, column: 13)
!148 = !DILocation(line: 48, column: 23, scope: !147)
!149 = !DILocation(line: 49, column: 21, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !45, line: 49, column: 21)
!151 = !DILocation(line: 49, column: 27, scope: !150)
!152 = !DILocation(line: 49, column: 21, scope: !147)
!153 = !DILocation(line: 52, column: 31, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !45, line: 52, column: 25)
!155 = distinct !DILexicalBlock(scope: !150, file: !45, line: 50, column: 17)
!156 = !DILocation(line: 52, column: 36, scope: !154)
!157 = !DILocation(line: 52, column: 35, scope: !154)
!158 = !DILocation(line: 52, column: 55, scope: !154)
!159 = !DILocation(line: 52, column: 54, scope: !154)
!160 = !DILocation(line: 52, column: 45, scope: !154)
!161 = !DILocation(line: 52, column: 65, scope: !154)
!162 = !DILocation(line: 52, column: 25, scope: !154)
!163 = !DILocation(line: 52, column: 72, scope: !154)
!164 = !DILocation(line: 52, column: 25, scope: !155)
!165 = !DILocation(line: 54, column: 25, scope: !166)
!166 = distinct !DILexicalBlock(scope: !154, file: !45, line: 53, column: 21)
!167 = !DILocation(line: 56, column: 25, scope: !166)
!168 = !DILocation(line: 56, column: 30, scope: !166)
!169 = !DILocation(line: 56, column: 39, scope: !166)
!170 = !DILocation(line: 57, column: 21, scope: !166)
!171 = !DILocation(line: 58, column: 28, scope: !155)
!172 = !DILocation(line: 58, column: 21, scope: !155)
!173 = !DILocation(line: 59, column: 17, scope: !155)
!174 = !DILocation(line: 60, column: 13, scope: !147)
!175 = !DILocation(line: 62, column: 5, scope: !77)
!176 = !DILocation(line: 39, column: 24, scope: !72)
!177 = !DILocation(line: 39, column: 5, scope: !72)
!178 = distinct !{!178, !74, !179, !180}
!179 = !DILocation(line: 62, column: 5, scope: !69)
!180 = !{!"llvm.loop.mustprogress"}
!181 = !DILocation(line: 63, column: 11, scope: !182)
!182 = distinct !DILexicalBlock(scope: !52, file: !45, line: 63, column: 5)
!183 = !DILocation(line: 63, column: 9, scope: !182)
!184 = !DILocation(line: 63, column: 16, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !45, line: 63, column: 5)
!186 = !DILocation(line: 63, column: 18, scope: !185)
!187 = !DILocation(line: 63, column: 5, scope: !182)
!188 = !DILocation(line: 66, column: 16, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !45, line: 64, column: 5)
!190 = !DILocation(line: 66, column: 9, scope: !189)
!191 = !DILocation(line: 67, column: 5, scope: !189)
!192 = !DILocation(line: 63, column: 24, scope: !185)
!193 = !DILocation(line: 63, column: 5, scope: !185)
!194 = distinct !{!194, !187, !195, !180}
!195 = !DILocation(line: 67, column: 5, scope: !182)
!196 = !DILocation(line: 68, column: 1, scope: !52)
!197 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 75, type: !53, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!198 = !DILocalVariable(name: "i", scope: !197, file: !45, line: 77, type: !23)
!199 = !DILocation(line: 77, column: 9, scope: !197)
!200 = !DILocalVariable(name: "k", scope: !197, file: !45, line: 77, type: !23)
!201 = !DILocation(line: 77, column: 11, scope: !197)
!202 = !DILocalVariable(name: "data", scope: !197, file: !45, line: 78, type: !42)
!203 = !DILocation(line: 78, column: 12, scope: !197)
!204 = !DILocalVariable(name: "dataBuffer", scope: !197, file: !45, line: 79, type: !62)
!205 = !DILocation(line: 79, column: 10, scope: !197)
!206 = !DILocation(line: 80, column: 12, scope: !197)
!207 = !DILocation(line: 80, column: 10, scope: !197)
!208 = !DILocation(line: 81, column: 11, scope: !209)
!209 = distinct !DILexicalBlock(scope: !197, file: !45, line: 81, column: 5)
!210 = !DILocation(line: 81, column: 9, scope: !209)
!211 = !DILocation(line: 81, column: 16, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !45, line: 81, column: 5)
!213 = !DILocation(line: 81, column: 18, scope: !212)
!214 = !DILocation(line: 81, column: 5, scope: !209)
!215 = !DILocalVariable(name: "dataLen", scope: !216, file: !45, line: 85, type: !78)
!216 = distinct !DILexicalBlock(scope: !217, file: !45, line: 83, column: 9)
!217 = distinct !DILexicalBlock(scope: !212, file: !45, line: 82, column: 5)
!218 = !DILocation(line: 85, column: 20, scope: !216)
!219 = !DILocation(line: 85, column: 37, scope: !216)
!220 = !DILocation(line: 85, column: 30, scope: !216)
!221 = !DILocalVariable(name: "pFile", scope: !216, file: !45, line: 86, type: !85)
!222 = !DILocation(line: 86, column: 20, scope: !216)
!223 = !DILocation(line: 88, column: 21, scope: !224)
!224 = distinct !DILexicalBlock(scope: !216, file: !45, line: 88, column: 17)
!225 = !DILocation(line: 88, column: 20, scope: !224)
!226 = !DILocation(line: 88, column: 29, scope: !224)
!227 = !DILocation(line: 88, column: 17, scope: !216)
!228 = !DILocation(line: 90, column: 25, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !45, line: 89, column: 13)
!230 = !DILocation(line: 90, column: 23, scope: !229)
!231 = !DILocation(line: 91, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !45, line: 91, column: 21)
!233 = !DILocation(line: 91, column: 27, scope: !232)
!234 = !DILocation(line: 91, column: 21, scope: !229)
!235 = !DILocation(line: 94, column: 31, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !45, line: 94, column: 25)
!237 = distinct !DILexicalBlock(scope: !232, file: !45, line: 92, column: 17)
!238 = !DILocation(line: 94, column: 36, scope: !236)
!239 = !DILocation(line: 94, column: 35, scope: !236)
!240 = !DILocation(line: 94, column: 55, scope: !236)
!241 = !DILocation(line: 94, column: 54, scope: !236)
!242 = !DILocation(line: 94, column: 45, scope: !236)
!243 = !DILocation(line: 94, column: 65, scope: !236)
!244 = !DILocation(line: 94, column: 25, scope: !236)
!245 = !DILocation(line: 94, column: 72, scope: !236)
!246 = !DILocation(line: 94, column: 25, scope: !237)
!247 = !DILocation(line: 96, column: 25, scope: !248)
!248 = distinct !DILexicalBlock(scope: !236, file: !45, line: 95, column: 21)
!249 = !DILocation(line: 98, column: 25, scope: !248)
!250 = !DILocation(line: 98, column: 30, scope: !248)
!251 = !DILocation(line: 98, column: 39, scope: !248)
!252 = !DILocation(line: 99, column: 21, scope: !248)
!253 = !DILocation(line: 100, column: 28, scope: !237)
!254 = !DILocation(line: 100, column: 21, scope: !237)
!255 = !DILocation(line: 101, column: 17, scope: !237)
!256 = !DILocation(line: 102, column: 13, scope: !229)
!257 = !DILocation(line: 104, column: 5, scope: !217)
!258 = !DILocation(line: 81, column: 24, scope: !212)
!259 = !DILocation(line: 81, column: 5, scope: !212)
!260 = distinct !{!260, !214, !261, !180}
!261 = !DILocation(line: 104, column: 5, scope: !209)
!262 = !DILocation(line: 105, column: 11, scope: !263)
!263 = distinct !DILexicalBlock(scope: !197, file: !45, line: 105, column: 5)
!264 = !DILocation(line: 105, column: 9, scope: !263)
!265 = !DILocation(line: 105, column: 16, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !45, line: 105, column: 5)
!267 = !DILocation(line: 105, column: 18, scope: !266)
!268 = !DILocation(line: 105, column: 5, scope: !263)
!269 = !DILocation(line: 108, column: 24, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !45, line: 106, column: 5)
!271 = !DILocation(line: 108, column: 9, scope: !270)
!272 = !DILocation(line: 109, column: 5, scope: !270)
!273 = !DILocation(line: 105, column: 24, scope: !266)
!274 = !DILocation(line: 105, column: 5, scope: !266)
!275 = distinct !{!275, !268, !276, !180}
!276 = !DILocation(line: 109, column: 5, scope: !263)
!277 = !DILocation(line: 110, column: 1, scope: !197)
!278 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 113, type: !53, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!279 = !DILocalVariable(name: "h", scope: !278, file: !45, line: 115, type: !23)
!280 = !DILocation(line: 115, column: 9, scope: !278)
!281 = !DILocalVariable(name: "j", scope: !278, file: !45, line: 115, type: !23)
!282 = !DILocation(line: 115, column: 11, scope: !278)
!283 = !DILocalVariable(name: "data", scope: !278, file: !45, line: 116, type: !42)
!284 = !DILocation(line: 116, column: 12, scope: !278)
!285 = !DILocalVariable(name: "dataBuffer", scope: !278, file: !45, line: 117, type: !62)
!286 = !DILocation(line: 117, column: 10, scope: !278)
!287 = !DILocation(line: 118, column: 12, scope: !278)
!288 = !DILocation(line: 118, column: 10, scope: !278)
!289 = !DILocation(line: 119, column: 11, scope: !290)
!290 = distinct !DILexicalBlock(scope: !278, file: !45, line: 119, column: 5)
!291 = !DILocation(line: 119, column: 9, scope: !290)
!292 = !DILocation(line: 119, column: 16, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !45, line: 119, column: 5)
!294 = !DILocation(line: 119, column: 18, scope: !293)
!295 = !DILocation(line: 119, column: 5, scope: !290)
!296 = !DILocation(line: 122, column: 16, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !45, line: 120, column: 5)
!298 = !DILocation(line: 122, column: 9, scope: !297)
!299 = !DILocation(line: 123, column: 5, scope: !297)
!300 = !DILocation(line: 119, column: 24, scope: !293)
!301 = !DILocation(line: 119, column: 5, scope: !293)
!302 = distinct !{!302, !295, !303, !180}
!303 = !DILocation(line: 123, column: 5, scope: !290)
!304 = !DILocation(line: 124, column: 11, scope: !305)
!305 = distinct !DILexicalBlock(scope: !278, file: !45, line: 124, column: 5)
!306 = !DILocation(line: 124, column: 9, scope: !305)
!307 = !DILocation(line: 124, column: 16, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !45, line: 124, column: 5)
!309 = !DILocation(line: 124, column: 18, scope: !308)
!310 = !DILocation(line: 124, column: 5, scope: !305)
!311 = !DILocation(line: 127, column: 16, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !45, line: 125, column: 5)
!313 = !DILocation(line: 127, column: 9, scope: !312)
!314 = !DILocation(line: 128, column: 5, scope: !312)
!315 = !DILocation(line: 124, column: 24, scope: !308)
!316 = !DILocation(line: 124, column: 5, scope: !308)
!317 = distinct !{!317, !310, !318, !180}
!318 = !DILocation(line: 128, column: 5, scope: !305)
!319 = !DILocation(line: 129, column: 1, scope: !278)
!320 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_17_good", scope: !45, file: !45, line: 131, type: !53, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!321 = !DILocation(line: 133, column: 5, scope: !320)
!322 = !DILocation(line: 134, column: 5, scope: !320)
!323 = !DILocation(line: 135, column: 1, scope: !320)
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
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !79, line: 74, baseType: !23)
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
!396 = !{null, !113}
!397 = !DILocalVariable(name: "longNumber", arg: 1, scope: !394, file: !3, line: 50, type: !113)
!398 = !DILocation(line: 50, column: 26, scope: !394)
!399 = !DILocation(line: 52, column: 21, scope: !394)
!400 = !DILocation(line: 52, column: 5, scope: !394)
!401 = !DILocation(line: 53, column: 1, scope: !394)
!402 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !403, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !405}
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !406, line: 27, baseType: !407)
!406 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !112, line: 44, baseType: !113)
!408 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !402, file: !3, line: 55, type: !405)
!409 = !DILocation(line: 55, column: 33, scope: !402)
!410 = !DILocation(line: 57, column: 29, scope: !402)
!411 = !DILocation(line: 57, column: 5, scope: !402)
!412 = !DILocation(line: 58, column: 1, scope: !402)
!413 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !414, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !78}
!416 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !413, file: !3, line: 60, type: !78)
!417 = !DILocation(line: 60, column: 29, scope: !413)
!418 = !DILocation(line: 62, column: 21, scope: !413)
!419 = !DILocation(line: 62, column: 5, scope: !413)
!420 = !DILocation(line: 63, column: 1, scope: !413)
!421 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !422, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !43}
!424 = !DILocalVariable(name: "charHex", arg: 1, scope: !421, file: !3, line: 65, type: !43)
!425 = !DILocation(line: 65, column: 29, scope: !421)
!426 = !DILocation(line: 67, column: 22, scope: !421)
!427 = !DILocation(line: 67, column: 5, scope: !421)
!428 = !DILocation(line: 68, column: 1, scope: !421)
!429 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !430, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !356}
!432 = !DILocalVariable(name: "wideChar", arg: 1, scope: !429, file: !3, line: 70, type: !356)
!433 = !DILocation(line: 70, column: 29, scope: !429)
!434 = !DILocalVariable(name: "s", scope: !429, file: !3, line: 74, type: !435)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 64, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 2)
!438 = !DILocation(line: 74, column: 13, scope: !429)
!439 = !DILocation(line: 75, column: 16, scope: !429)
!440 = !DILocation(line: 75, column: 9, scope: !429)
!441 = !DILocation(line: 75, column: 14, scope: !429)
!442 = !DILocation(line: 76, column: 9, scope: !429)
!443 = !DILocation(line: 76, column: 14, scope: !429)
!444 = !DILocation(line: 77, column: 21, scope: !429)
!445 = !DILocation(line: 77, column: 5, scope: !429)
!446 = !DILocation(line: 78, column: 1, scope: !429)
!447 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !448, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !7}
!450 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !447, file: !3, line: 80, type: !7)
!451 = !DILocation(line: 80, column: 33, scope: !447)
!452 = !DILocation(line: 82, column: 20, scope: !447)
!453 = !DILocation(line: 82, column: 5, scope: !447)
!454 = !DILocation(line: 83, column: 1, scope: !447)
!455 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !456, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !25}
!458 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !455, file: !3, line: 85, type: !25)
!459 = !DILocation(line: 85, column: 45, scope: !455)
!460 = !DILocation(line: 87, column: 22, scope: !455)
!461 = !DILocation(line: 87, column: 5, scope: !455)
!462 = !DILocation(line: 88, column: 1, scope: !455)
!463 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !464, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !466}
!466 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!467 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !463, file: !3, line: 90, type: !466)
!468 = !DILocation(line: 90, column: 29, scope: !463)
!469 = !DILocation(line: 92, column: 20, scope: !463)
!470 = !DILocation(line: 92, column: 5, scope: !463)
!471 = !DILocation(line: 93, column: 1, scope: !463)
!472 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !473, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !477, line: 100, baseType: !478)
!477 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_026/source_code")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !477, line: 96, size: 64, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !478, file: !477, line: 98, baseType: !23, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !478, file: !477, line: 99, baseType: !23, size: 32, offset: 32)
!482 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !472, file: !3, line: 95, type: !475)
!483 = !DILocation(line: 95, column: 40, scope: !472)
!484 = !DILocation(line: 97, column: 26, scope: !472)
!485 = !DILocation(line: 97, column: 47, scope: !472)
!486 = !DILocation(line: 97, column: 55, scope: !472)
!487 = !DILocation(line: 97, column: 76, scope: !472)
!488 = !DILocation(line: 97, column: 5, scope: !472)
!489 = !DILocation(line: 98, column: 1, scope: !472)
!490 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !491, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !493, !78}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!494 = !DILocalVariable(name: "bytes", arg: 1, scope: !490, file: !3, line: 100, type: !493)
!495 = !DILocation(line: 100, column: 38, scope: !490)
!496 = !DILocalVariable(name: "numBytes", arg: 2, scope: !490, file: !3, line: 100, type: !78)
!497 = !DILocation(line: 100, column: 52, scope: !490)
!498 = !DILocalVariable(name: "i", scope: !490, file: !3, line: 102, type: !78)
!499 = !DILocation(line: 102, column: 12, scope: !490)
!500 = !DILocation(line: 103, column: 12, scope: !501)
!501 = distinct !DILexicalBlock(scope: !490, file: !3, line: 103, column: 5)
!502 = !DILocation(line: 103, column: 10, scope: !501)
!503 = !DILocation(line: 103, column: 17, scope: !504)
!504 = distinct !DILexicalBlock(scope: !501, file: !3, line: 103, column: 5)
!505 = !DILocation(line: 103, column: 21, scope: !504)
!506 = !DILocation(line: 103, column: 19, scope: !504)
!507 = !DILocation(line: 103, column: 5, scope: !501)
!508 = !DILocation(line: 105, column: 24, scope: !509)
!509 = distinct !DILexicalBlock(scope: !504, file: !3, line: 104, column: 5)
!510 = !DILocation(line: 105, column: 30, scope: !509)
!511 = !DILocation(line: 105, column: 9, scope: !509)
!512 = !DILocation(line: 106, column: 5, scope: !509)
!513 = !DILocation(line: 103, column: 31, scope: !504)
!514 = !DILocation(line: 103, column: 5, scope: !504)
!515 = distinct !{!515, !507, !516, !180}
!516 = !DILocation(line: 106, column: 5, scope: !501)
!517 = !DILocation(line: 107, column: 5, scope: !490)
!518 = !DILocation(line: 108, column: 1, scope: !490)
!519 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !520, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DISubroutineType(types: !521)
!521 = !{!78, !493, !78, !42}
!522 = !DILocalVariable(name: "bytes", arg: 1, scope: !519, file: !3, line: 113, type: !493)
!523 = !DILocation(line: 113, column: 39, scope: !519)
!524 = !DILocalVariable(name: "numBytes", arg: 2, scope: !519, file: !3, line: 113, type: !78)
!525 = !DILocation(line: 113, column: 53, scope: !519)
!526 = !DILocalVariable(name: "hex", arg: 3, scope: !519, file: !3, line: 113, type: !42)
!527 = !DILocation(line: 113, column: 71, scope: !519)
!528 = !DILocalVariable(name: "numWritten", scope: !519, file: !3, line: 115, type: !78)
!529 = !DILocation(line: 115, column: 12, scope: !519)
!530 = !DILocation(line: 121, column: 5, scope: !519)
!531 = !DILocation(line: 121, column: 12, scope: !519)
!532 = !DILocation(line: 121, column: 25, scope: !519)
!533 = !DILocation(line: 121, column: 23, scope: !519)
!534 = !DILocation(line: 121, column: 34, scope: !519)
!535 = !DILocation(line: 121, column: 37, scope: !519)
!536 = !DILocation(line: 121, column: 67, scope: !519)
!537 = !DILocation(line: 121, column: 70, scope: !519)
!538 = !DILocation(line: 0, scope: !519)
!539 = !DILocalVariable(name: "byte", scope: !540, file: !3, line: 123, type: !23)
!540 = distinct !DILexicalBlock(scope: !519, file: !3, line: 122, column: 5)
!541 = !DILocation(line: 123, column: 13, scope: !540)
!542 = !DILocation(line: 124, column: 17, scope: !540)
!543 = !DILocation(line: 124, column: 25, scope: !540)
!544 = !DILocation(line: 124, column: 23, scope: !540)
!545 = !DILocation(line: 124, column: 9, scope: !540)
!546 = !DILocation(line: 125, column: 45, scope: !540)
!547 = !DILocation(line: 125, column: 29, scope: !540)
!548 = !DILocation(line: 125, column: 9, scope: !540)
!549 = !DILocation(line: 125, column: 15, scope: !540)
!550 = !DILocation(line: 125, column: 27, scope: !540)
!551 = !DILocation(line: 126, column: 9, scope: !540)
!552 = distinct !{!552, !530, !553, !180}
!553 = !DILocation(line: 127, column: 5, scope: !519)
!554 = !DILocation(line: 129, column: 12, scope: !519)
!555 = !DILocation(line: 129, column: 5, scope: !519)
!556 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !557, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DISubroutineType(types: !558)
!558 = !{!78, !493, !78, !355}
!559 = !DILocalVariable(name: "bytes", arg: 1, scope: !556, file: !3, line: 135, type: !493)
!560 = !DILocation(line: 135, column: 41, scope: !556)
!561 = !DILocalVariable(name: "numBytes", arg: 2, scope: !556, file: !3, line: 135, type: !78)
!562 = !DILocation(line: 135, column: 55, scope: !556)
!563 = !DILocalVariable(name: "hex", arg: 3, scope: !556, file: !3, line: 135, type: !355)
!564 = !DILocation(line: 135, column: 76, scope: !556)
!565 = !DILocalVariable(name: "numWritten", scope: !556, file: !3, line: 137, type: !78)
!566 = !DILocation(line: 137, column: 12, scope: !556)
!567 = !DILocation(line: 143, column: 5, scope: !556)
!568 = !DILocation(line: 143, column: 12, scope: !556)
!569 = !DILocation(line: 143, column: 25, scope: !556)
!570 = !DILocation(line: 143, column: 23, scope: !556)
!571 = !DILocation(line: 143, column: 34, scope: !556)
!572 = !DILocation(line: 143, column: 47, scope: !556)
!573 = !DILocation(line: 143, column: 55, scope: !556)
!574 = !DILocation(line: 143, column: 53, scope: !556)
!575 = !DILocation(line: 143, column: 37, scope: !556)
!576 = !DILocation(line: 143, column: 68, scope: !556)
!577 = !DILocation(line: 143, column: 81, scope: !556)
!578 = !DILocation(line: 143, column: 89, scope: !556)
!579 = !DILocation(line: 143, column: 87, scope: !556)
!580 = !DILocation(line: 143, column: 100, scope: !556)
!581 = !DILocation(line: 143, column: 71, scope: !556)
!582 = !DILocation(line: 0, scope: !556)
!583 = !DILocalVariable(name: "byte", scope: !584, file: !3, line: 145, type: !23)
!584 = distinct !DILexicalBlock(scope: !556, file: !3, line: 144, column: 5)
!585 = !DILocation(line: 145, column: 13, scope: !584)
!586 = !DILocation(line: 146, column: 18, scope: !584)
!587 = !DILocation(line: 146, column: 26, scope: !584)
!588 = !DILocation(line: 146, column: 24, scope: !584)
!589 = !DILocation(line: 146, column: 9, scope: !584)
!590 = !DILocation(line: 147, column: 45, scope: !584)
!591 = !DILocation(line: 147, column: 29, scope: !584)
!592 = !DILocation(line: 147, column: 9, scope: !584)
!593 = !DILocation(line: 147, column: 15, scope: !584)
!594 = !DILocation(line: 147, column: 27, scope: !584)
!595 = !DILocation(line: 148, column: 9, scope: !584)
!596 = distinct !{!596, !567, !597, !180}
!597 = !DILocation(line: 149, column: 5, scope: !556)
!598 = !DILocation(line: 151, column: 12, scope: !556)
!599 = !DILocation(line: 151, column: 5, scope: !556)
!600 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !601, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!601 = !DISubroutineType(types: !602)
!602 = !{!23}
!603 = !DILocation(line: 158, column: 5, scope: !600)
!604 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !601, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DILocation(line: 163, column: 5, scope: !604)
!606 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !601, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DILocation(line: 168, column: 13, scope: !606)
!608 = !DILocation(line: 168, column: 20, scope: !606)
!609 = !DILocation(line: 168, column: 5, scope: !606)
!610 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DILocation(line: 187, column: 16, scope: !610)
!612 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!613 = !DILocation(line: 188, column: 16, scope: !612)
!614 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!615 = !DILocation(line: 189, column: 16, scope: !614)
!616 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!617 = !DILocation(line: 190, column: 16, scope: !616)
!618 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!619 = !DILocation(line: 191, column: 16, scope: !618)
!620 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DILocation(line: 192, column: 16, scope: !620)
!622 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!623 = !DILocation(line: 193, column: 16, scope: !622)
!624 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DILocation(line: 194, column: 16, scope: !624)
!626 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!627 = !DILocation(line: 195, column: 16, scope: !626)
!628 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!629 = !DILocation(line: 198, column: 15, scope: !628)
!630 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!631 = !DILocation(line: 199, column: 15, scope: !630)
!632 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DILocation(line: 200, column: 15, scope: !632)
!634 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!635 = !DILocation(line: 201, column: 15, scope: !634)
!636 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!637 = !DILocation(line: 202, column: 15, scope: !636)
!638 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!639 = !DILocation(line: 203, column: 15, scope: !638)
!640 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!641 = !DILocation(line: 204, column: 15, scope: !640)
!642 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!643 = !DILocation(line: 205, column: 15, scope: !642)
!644 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!645 = !DILocation(line: 206, column: 15, scope: !644)
