; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType = type { i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.11 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.13 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.14 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11.18 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_67_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, metadata !59, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !66, metadata !DIExpression()), !dbg !70
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !70
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !70
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !71
  store i8* %arraydecay, i8** %data, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !73, metadata !DIExpression()), !dbg !78
  %1 = load i8*, i8** %data, align 8, !dbg !79
  %call = call i64 @strlen(i8* %1) #7, !dbg !80
  store i64 %call, i64* %dataLen, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !81, metadata !DIExpression()), !dbg !137
  %2 = load i64, i64* %dataLen, align 8, !dbg !138
  %sub = sub i64 100, %2, !dbg !140
  %cmp = icmp ugt i64 %sub, 1, !dbg !141
  br i1 %cmp, label %if.then, label %if.end11, !dbg !142

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !143
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !145
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !146
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !148
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !149

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !150
  %5 = load i64, i64* %dataLen, align 8, !dbg !153
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !154
  %6 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub4 = sub i64 100, %6, !dbg !156
  %conv = trunc i64 %sub4 to i32, !dbg !157
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !158
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !159
  %cmp6 = icmp eq i8* %call5, null, !dbg !160
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !161

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !162
  %8 = load i8*, i8** %data, align 8, !dbg !164
  %9 = load i64, i64* %dataLen, align 8, !dbg !165
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !164
  store i8 0, i8* %arrayidx, align 1, !dbg !166
  br label %if.end, !dbg !167

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !168
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !169
  br label %if.end10, !dbg !170

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !171

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !172
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, i32 0, i32 0, !dbg !173
  store i8* %11, i8** %structFirst, align 8, !dbg !174
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, i32 0, i32 0, !dbg !175
  %12 = load i8*, i8** %coerce.dive, align 8, !dbg !175
  call void @CWE606_Unchecked_Loop_Condition__char_file_67b_badSink(i8* %12), !dbg !175
  ret void, !dbg !176
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !177 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !182, metadata !DIExpression()), !dbg !183
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !183
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !183
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !184
  store i8* %arraydecay, i8** %data, align 8, !dbg !185
  %1 = load i8*, i8** %data, align 8, !dbg !186
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !187
  %2 = load i8*, i8** %data, align 8, !dbg !188
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, i32 0, i32 0, !dbg !189
  store i8* %2, i8** %structFirst, align 8, !dbg !190
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, i32 0, i32 0, !dbg !191
  %3 = load i8*, i8** %coerce.dive, align 8, !dbg !191
  call void @CWE606_Unchecked_Loop_Condition__char_file_67b_goodG2BSink(i8* %3), !dbg !191
  ret void, !dbg !192
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !193 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !198, metadata !DIExpression()), !dbg !199
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !199
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !199
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !200
  store i8* %arraydecay, i8** %data, align 8, !dbg !201
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !202, metadata !DIExpression()), !dbg !204
  %1 = load i8*, i8** %data, align 8, !dbg !205
  %call = call i64 @strlen(i8* %1) #7, !dbg !206
  store i64 %call, i64* %dataLen, align 8, !dbg !204
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !207, metadata !DIExpression()), !dbg !208
  %2 = load i64, i64* %dataLen, align 8, !dbg !209
  %sub = sub i64 100, %2, !dbg !211
  %cmp = icmp ugt i64 %sub, 1, !dbg !212
  br i1 %cmp, label %if.then, label %if.end11, !dbg !213

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !214
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !216
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !217
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !219
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !220

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !221
  %5 = load i64, i64* %dataLen, align 8, !dbg !224
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !225
  %6 = load i64, i64* %dataLen, align 8, !dbg !226
  %sub4 = sub i64 100, %6, !dbg !227
  %conv = trunc i64 %sub4 to i32, !dbg !228
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !229
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !230
  %cmp6 = icmp eq i8* %call5, null, !dbg !231
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !232

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !233
  %8 = load i8*, i8** %data, align 8, !dbg !235
  %9 = load i64, i64* %dataLen, align 8, !dbg !236
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !235
  store i8 0, i8* %arrayidx, align 1, !dbg !237
  br label %if.end, !dbg !238

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !239
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !240
  br label %if.end10, !dbg !241

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !242

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !243
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, i32 0, i32 0, !dbg !244
  store i8* %11, i8** %structFirst, align 8, !dbg !245
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, i32 0, i32 0, !dbg !246
  %12 = load i8*, i8** %coerce.dive, align 8, !dbg !246
  call void @CWE606_Unchecked_Loop_Condition__char_file_67b_goodB2GSink(i8* %12), !dbg !246
  ret void, !dbg !247
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_67_good() #0 !dbg !248 {
entry:
  call void @goodG2B(), !dbg !249
  call void @goodB2G(), !dbg !250
  ret void, !dbg !251
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_67b_badSink(i8* %myStruct.coerce) #0 !dbg !252 {
entry:
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata i8** %data, metadata !261, metadata !DIExpression()), !dbg !262
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, i32 0, i32 0, !dbg !263
  %0 = load i8*, i8** %structFirst, align 8, !dbg !263
  store i8* %0, i8** %data, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata i32* %i, metadata !264, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %n, metadata !267, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !269, metadata !DIExpression()), !dbg !270
  %1 = load i8*, i8** %data, align 8, !dbg !271
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !273
  %cmp = icmp eq i32 %call, 1, !dbg !274
  br i1 %cmp, label %if.then, label %if.end, !dbg !275

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !276
  store i32 0, i32* %i, align 4, !dbg !278
  br label %for.cond, !dbg !280

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !281
  %3 = load i32, i32* %n, align 4, !dbg !283
  %cmp1 = icmp slt i32 %2, %3, !dbg !284
  br i1 %cmp1, label %for.body, label %for.end, !dbg !285

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !286
  %inc = add nsw i32 %4, 1, !dbg !286
  store i32 %inc, i32* %intVariable, align 4, !dbg !286
  br label %for.inc, !dbg !288

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !289
  %inc2 = add nsw i32 %5, 1, !dbg !289
  store i32 %inc2, i32* %i, align 4, !dbg !289
  br label %for.cond, !dbg !290, !llvm.loop !291

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !294
  call void @printIntLine(i32 %6), !dbg !295
  br label %if.end, !dbg !296

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !297
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_67b_goodG2BSink(i8* %myStruct.coerce) #0 !dbg !298 {
entry:
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata i8** %data, metadata !301, metadata !DIExpression()), !dbg !302
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, i32 0, i32 0, !dbg !303
  %0 = load i8*, i8** %structFirst, align 8, !dbg !303
  store i8* %0, i8** %data, align 8, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %i, metadata !304, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.declare(metadata i32* %n, metadata !307, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !309, metadata !DIExpression()), !dbg !310
  %1 = load i8*, i8** %data, align 8, !dbg !311
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !313
  %cmp = icmp eq i32 %call, 1, !dbg !314
  br i1 %cmp, label %if.then, label %if.end, !dbg !315

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !316
  store i32 0, i32* %i, align 4, !dbg !318
  br label %for.cond, !dbg !320

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !321
  %3 = load i32, i32* %n, align 4, !dbg !323
  %cmp1 = icmp slt i32 %2, %3, !dbg !324
  br i1 %cmp1, label %for.body, label %for.end, !dbg !325

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !326
  %inc = add nsw i32 %4, 1, !dbg !326
  store i32 %inc, i32* %intVariable, align 4, !dbg !326
  br label %for.inc, !dbg !328

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !329
  %inc2 = add nsw i32 %5, 1, !dbg !329
  store i32 %inc2, i32* %i, align 4, !dbg !329
  br label %for.cond, !dbg !330, !llvm.loop !331

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !333
  call void @printIntLine(i32 %6), !dbg !334
  br label %if.end, !dbg !335

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_67b_goodB2GSink(i8* %myStruct.coerce) #0 !dbg !337 {
entry:
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata i8** %data, metadata !340, metadata !DIExpression()), !dbg !341
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_file_67_structType* %myStruct, i32 0, i32 0, !dbg !342
  %0 = load i8*, i8** %structFirst, align 8, !dbg !342
  store i8* %0, i8** %data, align 8, !dbg !341
  call void @llvm.dbg.declare(metadata i32* %i, metadata !343, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata i32* %n, metadata !346, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !348, metadata !DIExpression()), !dbg !349
  %1 = load i8*, i8** %data, align 8, !dbg !350
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !352
  %cmp = icmp eq i32 %call, 1, !dbg !353
  br i1 %cmp, label %if.then, label %if.end5, !dbg !354

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !355
  %cmp1 = icmp slt i32 %2, 10000, !dbg !358
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !359

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !360
  store i32 0, i32* %i, align 4, !dbg !362
  br label %for.cond, !dbg !364

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !365
  %4 = load i32, i32* %n, align 4, !dbg !367
  %cmp3 = icmp slt i32 %3, %4, !dbg !368
  br i1 %cmp3, label %for.body, label %for.end, !dbg !369

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !370
  %inc = add nsw i32 %5, 1, !dbg !370
  store i32 %inc, i32* %intVariable, align 4, !dbg !370
  br label %for.inc, !dbg !372

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !373
  %inc4 = add nsw i32 %6, 1, !dbg !373
  store i32 %inc4, i32* %i, align 4, !dbg !373
  br label %for.cond, !dbg !374, !llvm.loop !375

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !377
  call void @printIntLine(i32 %7), !dbg !378
  br label %if.end, !dbg !379

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !380

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !381
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !382 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)), !dbg !387
  %0 = load i8*, i8** %line.addr, align 8, !dbg !388
  %cmp = icmp ne i8* %0, null, !dbg !390
  br i1 %cmp, label %if.then, label %if.end, !dbg !391

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !392
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !394
  br label %if.end, !dbg !395

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.13, i64 0, i64 0)), !dbg !396
  ret void, !dbg !397
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !398 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !399, metadata !DIExpression()), !dbg !400
  %0 = load i8*, i8** %line.addr, align 8, !dbg !401
  %cmp = icmp ne i8* %0, null, !dbg !403
  br i1 %cmp, label %if.then, label %if.end, !dbg !404

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !407
  br label %if.end, !dbg !408

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !410 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load i32*, i32** %line.addr, align 8, !dbg !417
  %cmp = icmp ne i32* %0, null, !dbg !419
  br i1 %cmp, label %if.then, label %if.end, !dbg !420

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !421
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.14, i64 0, i64 0), i32* %1), !dbg !423
  br label %if.end, !dbg !424

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !425
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !426 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !429, metadata !DIExpression()), !dbg !430
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !431
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.17, i64 0, i64 0), i32 %0), !dbg !432
  ret void, !dbg !433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !434 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !438, metadata !DIExpression()), !dbg !439
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !440
  %conv = sext i16 %0 to i32, !dbg !440
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !443 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !447, metadata !DIExpression()), !dbg !448
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !449
  %conv = fpext float %0 to double, !dbg !449
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !450
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !452 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !457
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !458
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !460 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !466, metadata !DIExpression()), !dbg !467
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !468
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !469
  ret void, !dbg !470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !471 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !474, metadata !DIExpression()), !dbg !475
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !476
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !477
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !479 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !482, metadata !DIExpression()), !dbg !483
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !484
  %conv = sext i8 %0 to i32, !dbg !484
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !485
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !487 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !492, metadata !DIExpression()), !dbg !496
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !497
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !498
  store i32 %0, i32* %arrayidx, align 4, !dbg !499
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !500
  store i32 0, i32* %arrayidx1, align 4, !dbg !501
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !502
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !503
  ret void, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !505 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !508, metadata !DIExpression()), !dbg !509
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !510
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11.18, i64 0, i64 0), i32 %0), !dbg !511
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !513 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !516, metadata !DIExpression()), !dbg !517
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !518
  %conv = zext i8 %0 to i32, !dbg !518
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !519
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !521 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !525, metadata !DIExpression()), !dbg !526
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !527
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !528
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !530 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !540, metadata !DIExpression()), !dbg !541
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !542
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !543
  %1 = load i32, i32* %intOne, align 4, !dbg !543
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !544
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !545
  %3 = load i32, i32* %intTwo, align 4, !dbg !545
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !546
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !548 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !552, metadata !DIExpression()), !dbg !553
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !554, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.declare(metadata i64* %i, metadata !556, metadata !DIExpression()), !dbg !557
  store i64 0, i64* %i, align 8, !dbg !558
  br label %for.cond, !dbg !560

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !561
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !563
  %cmp = icmp ult i64 %0, %1, !dbg !564
  br i1 %cmp, label %for.body, label %for.end, !dbg !565

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !566
  %3 = load i64, i64* %i, align 8, !dbg !568
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !566
  %4 = load i8, i8* %arrayidx, align 1, !dbg !566
  %conv = zext i8 %4 to i32, !dbg !566
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !569
  br label %for.inc, !dbg !570

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !571
  %inc = add i64 %5, 1, !dbg !571
  store i64 %inc, i64* %i, align 8, !dbg !571
  br label %for.cond, !dbg !572, !llvm.loop !573

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !575
  ret void, !dbg !576
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !577 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !580, metadata !DIExpression()), !dbg !581
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !582, metadata !DIExpression()), !dbg !583
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !584, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !586, metadata !DIExpression()), !dbg !587
  store i64 0, i64* %numWritten, align 8, !dbg !587
  br label %while.cond, !dbg !588

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !589
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !590
  %cmp = icmp ult i64 %0, %1, !dbg !591
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !592

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !593
  %2 = load i16*, i16** %call, align 8, !dbg !593
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !593
  %4 = load i64, i64* %numWritten, align 8, !dbg !593
  %mul = mul i64 2, %4, !dbg !593
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !593
  %5 = load i8, i8* %arrayidx, align 1, !dbg !593
  %conv = sext i8 %5 to i32, !dbg !593
  %idxprom = sext i32 %conv to i64, !dbg !593
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !593
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !593
  %conv2 = zext i16 %6 to i32, !dbg !593
  %and = and i32 %conv2, 4096, !dbg !593
  %tobool = icmp ne i32 %and, 0, !dbg !593
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !594

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !595
  %7 = load i16*, i16** %call3, align 8, !dbg !595
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !595
  %9 = load i64, i64* %numWritten, align 8, !dbg !595
  %mul4 = mul i64 2, %9, !dbg !595
  %add = add i64 %mul4, 1, !dbg !595
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !595
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !595
  %conv6 = sext i8 %10 to i32, !dbg !595
  %idxprom7 = sext i32 %conv6 to i64, !dbg !595
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !595
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !595
  %conv9 = zext i16 %11 to i32, !dbg !595
  %and10 = and i32 %conv9, 4096, !dbg !595
  %tobool11 = icmp ne i32 %and10, 0, !dbg !594
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !596
  br i1 %12, label %while.body, label %while.end, !dbg !588

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !597, metadata !DIExpression()), !dbg !599
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !600
  %14 = load i64, i64* %numWritten, align 8, !dbg !601
  %mul12 = mul i64 2, %14, !dbg !602
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !600
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !603
  %15 = load i32, i32* %byte, align 4, !dbg !604
  %conv15 = trunc i32 %15 to i8, !dbg !605
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !606
  %17 = load i64, i64* %numWritten, align 8, !dbg !607
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !606
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !608
  %18 = load i64, i64* %numWritten, align 8, !dbg !609
  %inc = add i64 %18, 1, !dbg !609
  store i64 %inc, i64* %numWritten, align 8, !dbg !609
  br label %while.cond, !dbg !588, !llvm.loop !610

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !612
  ret i64 %19, !dbg !613
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !614 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !617, metadata !DIExpression()), !dbg !618
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !619, metadata !DIExpression()), !dbg !620
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !621, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !623, metadata !DIExpression()), !dbg !624
  store i64 0, i64* %numWritten, align 8, !dbg !624
  br label %while.cond, !dbg !625

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !626
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !627
  %cmp = icmp ult i64 %0, %1, !dbg !628
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !629

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !630
  %3 = load i64, i64* %numWritten, align 8, !dbg !631
  %mul = mul i64 2, %3, !dbg !632
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !630
  %4 = load i32, i32* %arrayidx, align 4, !dbg !630
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !633
  %tobool = icmp ne i32 %call, 0, !dbg !633
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !634

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !635
  %6 = load i64, i64* %numWritten, align 8, !dbg !636
  %mul1 = mul i64 2, %6, !dbg !637
  %add = add i64 %mul1, 1, !dbg !638
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !635
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !635
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !639
  %tobool4 = icmp ne i32 %call3, 0, !dbg !634
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !640
  br i1 %8, label %while.body, label %while.end, !dbg !625

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !641, metadata !DIExpression()), !dbg !643
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !644
  %10 = load i64, i64* %numWritten, align 8, !dbg !645
  %mul5 = mul i64 2, %10, !dbg !646
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !644
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !647
  %11 = load i32, i32* %byte, align 4, !dbg !648
  %conv = trunc i32 %11 to i8, !dbg !649
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !650
  %13 = load i64, i64* %numWritten, align 8, !dbg !651
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !650
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !652
  %14 = load i64, i64* %numWritten, align 8, !dbg !653
  %inc = add i64 %14, 1, !dbg !653
  store i64 %inc, i64* %numWritten, align 8, !dbg !653
  br label %while.cond, !dbg !625, !llvm.loop !654

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !656
  ret i64 %15, !dbg !657
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !658 {
entry:
  ret i32 1, !dbg !661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !662 {
entry:
  ret i32 0, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !664 {
entry:
  %call = call i32 @rand() #8, !dbg !665
  %rem = srem i32 %call, 2, !dbg !666
  ret i32 %rem, !dbg !667
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !668 {
entry:
  ret void, !dbg !669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !670 {
entry:
  ret void, !dbg !671
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !672 {
entry:
  ret void, !dbg !673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !674 {
entry:
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !676 {
entry:
  ret void, !dbg !677
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !678 {
entry:
  ret void, !dbg !679
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !680 {
entry:
  ret void, !dbg !681
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !682 {
entry:
  ret void, !dbg !683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !684 {
entry:
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !686 {
entry:
  ret void, !dbg !687
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !688 {
entry:
  ret void, !dbg !689
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !690 {
entry:
  ret void, !dbg !691
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !692 {
entry:
  ret void, !dbg !693
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !694 {
entry:
  ret void, !dbg !695
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !696 {
entry:
  ret void, !dbg !697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !698 {
entry:
  ret void, !dbg !699
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !700 {
entry:
  ret void, !dbg !701
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !702 {
entry:
  ret void, !dbg !703
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

!llvm.dbg.cu = !{!44, !48, !2}
!llvm.ident = !{!50, !50, !50}
!llvm.module.flags = !{!51, !52, !53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_113/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_67a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_113/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_67b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_113/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_67_bad", scope: !45, file: !45, line: 38, type: !55, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 40, type: !42)
!58 = !DILocation(line: 40, column: 12, scope: !54)
!59 = !DILocalVariable(name: "myStruct", scope: !54, file: !45, line: 41, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_file_67_structType", file: !61, line: 8, baseType: !62)
!61 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_113/source_code")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE606_Unchecked_Loop_Condition__char_file_67_structType", file: !61, line: 5, size: 64, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !62, file: !61, line: 7, baseType: !42, size: 64)
!65 = !DILocation(line: 41, column: 62, scope: !54)
!66 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 42, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 100)
!70 = !DILocation(line: 42, column: 10, scope: !54)
!71 = !DILocation(line: 43, column: 12, scope: !54)
!72 = !DILocation(line: 43, column: 10, scope: !54)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 46, type: !75)
!74 = distinct !DILexicalBlock(scope: !54, file: !45, line: 44, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 46, column: 16, scope: !74)
!79 = !DILocation(line: 46, column: 33, scope: !74)
!80 = !DILocation(line: 46, column: 26, scope: !74)
!81 = !DILocalVariable(name: "pFile", scope: !74, file: !45, line: 47, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !84, line: 7, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !86, line: 49, size: 1728, elements: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !103, !105, !106, !107, !111, !112, !114, !118, !121, !123, !126, !129, !130, !131, !132, !133}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !85, file: !86, line: 51, baseType: !23, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !85, file: !86, line: 54, baseType: !42, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !85, file: !86, line: 55, baseType: !42, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !85, file: !86, line: 56, baseType: !42, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !85, file: !86, line: 57, baseType: !42, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !85, file: !86, line: 58, baseType: !42, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !85, file: !86, line: 59, baseType: !42, size: 64, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !85, file: !86, line: 60, baseType: !42, size: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !85, file: !86, line: 61, baseType: !42, size: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !85, file: !86, line: 64, baseType: !42, size: 64, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !85, file: !86, line: 65, baseType: !42, size: 64, offset: 640)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !85, file: !86, line: 66, baseType: !42, size: 64, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !85, file: !86, line: 68, baseType: !101, size: 64, offset: 768)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !86, line: 36, flags: DIFlagFwdDecl)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !85, file: !86, line: 70, baseType: !104, size: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !85, file: !86, line: 72, baseType: !23, size: 32, offset: 896)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !85, file: !86, line: 73, baseType: !23, size: 32, offset: 928)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !85, file: !86, line: 74, baseType: !108, size: 64, offset: 960)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !109, line: 152, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!110 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !85, file: !86, line: 77, baseType: !24, size: 16, offset: 1024)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !85, file: !86, line: 78, baseType: !113, size: 8, offset: 1040)
!113 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !85, file: !86, line: 79, baseType: !115, size: 8, offset: 1048)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 1)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !85, file: !86, line: 81, baseType: !119, size: 64, offset: 1088)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !86, line: 43, baseType: null)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !85, file: !86, line: 89, baseType: !122, size: 64, offset: 1152)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !109, line: 153, baseType: !110)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !85, file: !86, line: 91, baseType: !124, size: 64, offset: 1216)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !86, line: 37, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !85, file: !86, line: 92, baseType: !127, size: 64, offset: 1280)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !86, line: 38, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !85, file: !86, line: 93, baseType: !104, size: 64, offset: 1344)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !85, file: !86, line: 94, baseType: !22, size: 64, offset: 1408)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !85, file: !86, line: 95, baseType: !75, size: 64, offset: 1472)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !85, file: !86, line: 96, baseType: !23, size: 32, offset: 1536)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !85, file: !86, line: 98, baseType: !134, size: 160, offset: 1568)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 20)
!137 = !DILocation(line: 47, column: 16, scope: !74)
!138 = !DILocation(line: 49, column: 17, scope: !139)
!139 = distinct !DILexicalBlock(scope: !74, file: !45, line: 49, column: 13)
!140 = !DILocation(line: 49, column: 16, scope: !139)
!141 = !DILocation(line: 49, column: 25, scope: !139)
!142 = !DILocation(line: 49, column: 13, scope: !74)
!143 = !DILocation(line: 51, column: 21, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !45, line: 50, column: 9)
!145 = !DILocation(line: 51, column: 19, scope: !144)
!146 = !DILocation(line: 52, column: 17, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !45, line: 52, column: 17)
!148 = !DILocation(line: 52, column: 23, scope: !147)
!149 = !DILocation(line: 52, column: 17, scope: !144)
!150 = !DILocation(line: 55, column: 27, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !45, line: 55, column: 21)
!152 = distinct !DILexicalBlock(scope: !147, file: !45, line: 53, column: 13)
!153 = !DILocation(line: 55, column: 32, scope: !151)
!154 = !DILocation(line: 55, column: 31, scope: !151)
!155 = !DILocation(line: 55, column: 51, scope: !151)
!156 = !DILocation(line: 55, column: 50, scope: !151)
!157 = !DILocation(line: 55, column: 41, scope: !151)
!158 = !DILocation(line: 55, column: 61, scope: !151)
!159 = !DILocation(line: 55, column: 21, scope: !151)
!160 = !DILocation(line: 55, column: 68, scope: !151)
!161 = !DILocation(line: 55, column: 21, scope: !152)
!162 = !DILocation(line: 57, column: 21, scope: !163)
!163 = distinct !DILexicalBlock(scope: !151, file: !45, line: 56, column: 17)
!164 = !DILocation(line: 59, column: 21, scope: !163)
!165 = !DILocation(line: 59, column: 26, scope: !163)
!166 = !DILocation(line: 59, column: 35, scope: !163)
!167 = !DILocation(line: 60, column: 17, scope: !163)
!168 = !DILocation(line: 61, column: 24, scope: !152)
!169 = !DILocation(line: 61, column: 17, scope: !152)
!170 = !DILocation(line: 62, column: 13, scope: !152)
!171 = !DILocation(line: 63, column: 9, scope: !144)
!172 = !DILocation(line: 65, column: 28, scope: !54)
!173 = !DILocation(line: 65, column: 14, scope: !54)
!174 = !DILocation(line: 65, column: 26, scope: !54)
!175 = !DILocation(line: 66, column: 5, scope: !54)
!176 = !DILocation(line: 67, column: 1, scope: !54)
!177 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 75, type: !55, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!178 = !DILocalVariable(name: "data", scope: !177, file: !45, line: 77, type: !42)
!179 = !DILocation(line: 77, column: 12, scope: !177)
!180 = !DILocalVariable(name: "myStruct", scope: !177, file: !45, line: 78, type: !60)
!181 = !DILocation(line: 78, column: 62, scope: !177)
!182 = !DILocalVariable(name: "dataBuffer", scope: !177, file: !45, line: 79, type: !67)
!183 = !DILocation(line: 79, column: 10, scope: !177)
!184 = !DILocation(line: 80, column: 12, scope: !177)
!185 = !DILocation(line: 80, column: 10, scope: !177)
!186 = !DILocation(line: 82, column: 12, scope: !177)
!187 = !DILocation(line: 82, column: 5, scope: !177)
!188 = !DILocation(line: 83, column: 28, scope: !177)
!189 = !DILocation(line: 83, column: 14, scope: !177)
!190 = !DILocation(line: 83, column: 26, scope: !177)
!191 = !DILocation(line: 84, column: 5, scope: !177)
!192 = !DILocation(line: 85, column: 1, scope: !177)
!193 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 89, type: !55, scopeLine: 90, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!194 = !DILocalVariable(name: "data", scope: !193, file: !45, line: 91, type: !42)
!195 = !DILocation(line: 91, column: 12, scope: !193)
!196 = !DILocalVariable(name: "myStruct", scope: !193, file: !45, line: 92, type: !60)
!197 = !DILocation(line: 92, column: 62, scope: !193)
!198 = !DILocalVariable(name: "dataBuffer", scope: !193, file: !45, line: 93, type: !67)
!199 = !DILocation(line: 93, column: 10, scope: !193)
!200 = !DILocation(line: 94, column: 12, scope: !193)
!201 = !DILocation(line: 94, column: 10, scope: !193)
!202 = !DILocalVariable(name: "dataLen", scope: !203, file: !45, line: 97, type: !75)
!203 = distinct !DILexicalBlock(scope: !193, file: !45, line: 95, column: 5)
!204 = !DILocation(line: 97, column: 16, scope: !203)
!205 = !DILocation(line: 97, column: 33, scope: !203)
!206 = !DILocation(line: 97, column: 26, scope: !203)
!207 = !DILocalVariable(name: "pFile", scope: !203, file: !45, line: 98, type: !82)
!208 = !DILocation(line: 98, column: 16, scope: !203)
!209 = !DILocation(line: 100, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !203, file: !45, line: 100, column: 13)
!211 = !DILocation(line: 100, column: 16, scope: !210)
!212 = !DILocation(line: 100, column: 25, scope: !210)
!213 = !DILocation(line: 100, column: 13, scope: !203)
!214 = !DILocation(line: 102, column: 21, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !45, line: 101, column: 9)
!216 = !DILocation(line: 102, column: 19, scope: !215)
!217 = !DILocation(line: 103, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !45, line: 103, column: 17)
!219 = !DILocation(line: 103, column: 23, scope: !218)
!220 = !DILocation(line: 103, column: 17, scope: !215)
!221 = !DILocation(line: 106, column: 27, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !45, line: 106, column: 21)
!223 = distinct !DILexicalBlock(scope: !218, file: !45, line: 104, column: 13)
!224 = !DILocation(line: 106, column: 32, scope: !222)
!225 = !DILocation(line: 106, column: 31, scope: !222)
!226 = !DILocation(line: 106, column: 51, scope: !222)
!227 = !DILocation(line: 106, column: 50, scope: !222)
!228 = !DILocation(line: 106, column: 41, scope: !222)
!229 = !DILocation(line: 106, column: 61, scope: !222)
!230 = !DILocation(line: 106, column: 21, scope: !222)
!231 = !DILocation(line: 106, column: 68, scope: !222)
!232 = !DILocation(line: 106, column: 21, scope: !223)
!233 = !DILocation(line: 108, column: 21, scope: !234)
!234 = distinct !DILexicalBlock(scope: !222, file: !45, line: 107, column: 17)
!235 = !DILocation(line: 110, column: 21, scope: !234)
!236 = !DILocation(line: 110, column: 26, scope: !234)
!237 = !DILocation(line: 110, column: 35, scope: !234)
!238 = !DILocation(line: 111, column: 17, scope: !234)
!239 = !DILocation(line: 112, column: 24, scope: !223)
!240 = !DILocation(line: 112, column: 17, scope: !223)
!241 = !DILocation(line: 113, column: 13, scope: !223)
!242 = !DILocation(line: 114, column: 9, scope: !215)
!243 = !DILocation(line: 116, column: 28, scope: !193)
!244 = !DILocation(line: 116, column: 14, scope: !193)
!245 = !DILocation(line: 116, column: 26, scope: !193)
!246 = !DILocation(line: 117, column: 5, scope: !193)
!247 = !DILocation(line: 118, column: 1, scope: !193)
!248 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_67_good", scope: !45, file: !45, line: 120, type: !55, scopeLine: 121, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!249 = !DILocation(line: 122, column: 5, scope: !248)
!250 = !DILocation(line: 123, column: 5, scope: !248)
!251 = !DILocation(line: 124, column: 1, scope: !248)
!252 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_67b_badSink", scope: !49, file: !49, line: 39, type: !253, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !255}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_file_67_structType", file: !49, line: 35, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE606_Unchecked_Loop_Condition__char_file_67_structType", file: !49, line: 32, size: 64, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !256, file: !49, line: 34, baseType: !42, size: 64)
!259 = !DILocalVariable(name: "myStruct", arg: 1, scope: !252, file: !49, line: 39, type: !255)
!260 = !DILocation(line: 39, column: 118, scope: !252)
!261 = !DILocalVariable(name: "data", scope: !252, file: !49, line: 41, type: !42)
!262 = !DILocation(line: 41, column: 12, scope: !252)
!263 = !DILocation(line: 41, column: 28, scope: !252)
!264 = !DILocalVariable(name: "i", scope: !265, file: !49, line: 43, type: !23)
!265 = distinct !DILexicalBlock(scope: !252, file: !49, line: 42, column: 5)
!266 = !DILocation(line: 43, column: 13, scope: !265)
!267 = !DILocalVariable(name: "n", scope: !265, file: !49, line: 43, type: !23)
!268 = !DILocation(line: 43, column: 16, scope: !265)
!269 = !DILocalVariable(name: "intVariable", scope: !265, file: !49, line: 43, type: !23)
!270 = !DILocation(line: 43, column: 19, scope: !265)
!271 = !DILocation(line: 44, column: 20, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !49, line: 44, column: 13)
!273 = !DILocation(line: 44, column: 13, scope: !272)
!274 = !DILocation(line: 44, column: 36, scope: !272)
!275 = !DILocation(line: 44, column: 13, scope: !265)
!276 = !DILocation(line: 47, column: 25, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !49, line: 45, column: 9)
!278 = !DILocation(line: 48, column: 20, scope: !279)
!279 = distinct !DILexicalBlock(scope: !277, file: !49, line: 48, column: 13)
!280 = !DILocation(line: 48, column: 18, scope: !279)
!281 = !DILocation(line: 48, column: 25, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !49, line: 48, column: 13)
!283 = !DILocation(line: 48, column: 29, scope: !282)
!284 = !DILocation(line: 48, column: 27, scope: !282)
!285 = !DILocation(line: 48, column: 13, scope: !279)
!286 = !DILocation(line: 51, column: 28, scope: !287)
!287 = distinct !DILexicalBlock(scope: !282, file: !49, line: 49, column: 13)
!288 = !DILocation(line: 52, column: 13, scope: !287)
!289 = !DILocation(line: 48, column: 33, scope: !282)
!290 = !DILocation(line: 48, column: 13, scope: !282)
!291 = distinct !{!291, !285, !292, !293}
!292 = !DILocation(line: 52, column: 13, scope: !279)
!293 = !{!"llvm.loop.mustprogress"}
!294 = !DILocation(line: 53, column: 26, scope: !277)
!295 = !DILocation(line: 53, column: 13, scope: !277)
!296 = !DILocation(line: 54, column: 9, scope: !277)
!297 = !DILocation(line: 56, column: 1, scope: !252)
!298 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_67b_goodG2BSink", scope: !49, file: !49, line: 63, type: !253, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!299 = !DILocalVariable(name: "myStruct", arg: 1, scope: !298, file: !49, line: 63, type: !255)
!300 = !DILocation(line: 63, column: 122, scope: !298)
!301 = !DILocalVariable(name: "data", scope: !298, file: !49, line: 65, type: !42)
!302 = !DILocation(line: 65, column: 12, scope: !298)
!303 = !DILocation(line: 65, column: 28, scope: !298)
!304 = !DILocalVariable(name: "i", scope: !305, file: !49, line: 67, type: !23)
!305 = distinct !DILexicalBlock(scope: !298, file: !49, line: 66, column: 5)
!306 = !DILocation(line: 67, column: 13, scope: !305)
!307 = !DILocalVariable(name: "n", scope: !305, file: !49, line: 67, type: !23)
!308 = !DILocation(line: 67, column: 16, scope: !305)
!309 = !DILocalVariable(name: "intVariable", scope: !305, file: !49, line: 67, type: !23)
!310 = !DILocation(line: 67, column: 19, scope: !305)
!311 = !DILocation(line: 68, column: 20, scope: !312)
!312 = distinct !DILexicalBlock(scope: !305, file: !49, line: 68, column: 13)
!313 = !DILocation(line: 68, column: 13, scope: !312)
!314 = !DILocation(line: 68, column: 36, scope: !312)
!315 = !DILocation(line: 68, column: 13, scope: !305)
!316 = !DILocation(line: 71, column: 25, scope: !317)
!317 = distinct !DILexicalBlock(scope: !312, file: !49, line: 69, column: 9)
!318 = !DILocation(line: 72, column: 20, scope: !319)
!319 = distinct !DILexicalBlock(scope: !317, file: !49, line: 72, column: 13)
!320 = !DILocation(line: 72, column: 18, scope: !319)
!321 = !DILocation(line: 72, column: 25, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !49, line: 72, column: 13)
!323 = !DILocation(line: 72, column: 29, scope: !322)
!324 = !DILocation(line: 72, column: 27, scope: !322)
!325 = !DILocation(line: 72, column: 13, scope: !319)
!326 = !DILocation(line: 75, column: 28, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !49, line: 73, column: 13)
!328 = !DILocation(line: 76, column: 13, scope: !327)
!329 = !DILocation(line: 72, column: 33, scope: !322)
!330 = !DILocation(line: 72, column: 13, scope: !322)
!331 = distinct !{!331, !325, !332, !293}
!332 = !DILocation(line: 76, column: 13, scope: !319)
!333 = !DILocation(line: 77, column: 26, scope: !317)
!334 = !DILocation(line: 77, column: 13, scope: !317)
!335 = !DILocation(line: 78, column: 9, scope: !317)
!336 = !DILocation(line: 80, column: 1, scope: !298)
!337 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_67b_goodB2GSink", scope: !49, file: !49, line: 83, type: !253, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!338 = !DILocalVariable(name: "myStruct", arg: 1, scope: !337, file: !49, line: 83, type: !255)
!339 = !DILocation(line: 83, column: 122, scope: !337)
!340 = !DILocalVariable(name: "data", scope: !337, file: !49, line: 85, type: !42)
!341 = !DILocation(line: 85, column: 12, scope: !337)
!342 = !DILocation(line: 85, column: 28, scope: !337)
!343 = !DILocalVariable(name: "i", scope: !344, file: !49, line: 87, type: !23)
!344 = distinct !DILexicalBlock(scope: !337, file: !49, line: 86, column: 5)
!345 = !DILocation(line: 87, column: 13, scope: !344)
!346 = !DILocalVariable(name: "n", scope: !344, file: !49, line: 87, type: !23)
!347 = !DILocation(line: 87, column: 16, scope: !344)
!348 = !DILocalVariable(name: "intVariable", scope: !344, file: !49, line: 87, type: !23)
!349 = !DILocation(line: 87, column: 19, scope: !344)
!350 = !DILocation(line: 88, column: 20, scope: !351)
!351 = distinct !DILexicalBlock(scope: !344, file: !49, line: 88, column: 13)
!352 = !DILocation(line: 88, column: 13, scope: !351)
!353 = !DILocation(line: 88, column: 36, scope: !351)
!354 = !DILocation(line: 88, column: 13, scope: !344)
!355 = !DILocation(line: 91, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !49, line: 91, column: 17)
!357 = distinct !DILexicalBlock(scope: !351, file: !49, line: 89, column: 9)
!358 = !DILocation(line: 91, column: 19, scope: !356)
!359 = !DILocation(line: 91, column: 17, scope: !357)
!360 = !DILocation(line: 93, column: 29, scope: !361)
!361 = distinct !DILexicalBlock(scope: !356, file: !49, line: 92, column: 13)
!362 = !DILocation(line: 94, column: 24, scope: !363)
!363 = distinct !DILexicalBlock(scope: !361, file: !49, line: 94, column: 17)
!364 = !DILocation(line: 94, column: 22, scope: !363)
!365 = !DILocation(line: 94, column: 29, scope: !366)
!366 = distinct !DILexicalBlock(scope: !363, file: !49, line: 94, column: 17)
!367 = !DILocation(line: 94, column: 33, scope: !366)
!368 = !DILocation(line: 94, column: 31, scope: !366)
!369 = !DILocation(line: 94, column: 17, scope: !363)
!370 = !DILocation(line: 97, column: 32, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !49, line: 95, column: 17)
!372 = !DILocation(line: 98, column: 17, scope: !371)
!373 = !DILocation(line: 94, column: 37, scope: !366)
!374 = !DILocation(line: 94, column: 17, scope: !366)
!375 = distinct !{!375, !369, !376, !293}
!376 = !DILocation(line: 98, column: 17, scope: !363)
!377 = !DILocation(line: 99, column: 30, scope: !361)
!378 = !DILocation(line: 99, column: 17, scope: !361)
!379 = !DILocation(line: 100, column: 13, scope: !361)
!380 = !DILocation(line: 101, column: 9, scope: !357)
!381 = !DILocation(line: 103, column: 1, scope: !337)
!382 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !383, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !42}
!385 = !DILocalVariable(name: "line", arg: 1, scope: !382, file: !3, line: 11, type: !42)
!386 = !DILocation(line: 11, column: 25, scope: !382)
!387 = !DILocation(line: 13, column: 1, scope: !382)
!388 = !DILocation(line: 14, column: 8, scope: !389)
!389 = distinct !DILexicalBlock(scope: !382, file: !3, line: 14, column: 8)
!390 = !DILocation(line: 14, column: 13, scope: !389)
!391 = !DILocation(line: 14, column: 8, scope: !382)
!392 = !DILocation(line: 16, column: 24, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !3, line: 15, column: 5)
!394 = !DILocation(line: 16, column: 9, scope: !393)
!395 = !DILocation(line: 17, column: 5, scope: !393)
!396 = !DILocation(line: 18, column: 5, scope: !382)
!397 = !DILocation(line: 19, column: 1, scope: !382)
!398 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !383, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!399 = !DILocalVariable(name: "line", arg: 1, scope: !398, file: !3, line: 20, type: !42)
!400 = !DILocation(line: 20, column: 29, scope: !398)
!401 = !DILocation(line: 22, column: 8, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !3, line: 22, column: 8)
!403 = !DILocation(line: 22, column: 13, scope: !402)
!404 = !DILocation(line: 22, column: 8, scope: !398)
!405 = !DILocation(line: 24, column: 24, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !3, line: 23, column: 5)
!407 = !DILocation(line: 24, column: 9, scope: !406)
!408 = !DILocation(line: 25, column: 5, scope: !406)
!409 = !DILocation(line: 26, column: 1, scope: !398)
!410 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !411, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !23)
!415 = !DILocalVariable(name: "line", arg: 1, scope: !410, file: !3, line: 27, type: !413)
!416 = !DILocation(line: 27, column: 29, scope: !410)
!417 = !DILocation(line: 29, column: 8, scope: !418)
!418 = distinct !DILexicalBlock(scope: !410, file: !3, line: 29, column: 8)
!419 = !DILocation(line: 29, column: 13, scope: !418)
!420 = !DILocation(line: 29, column: 8, scope: !410)
!421 = !DILocation(line: 31, column: 27, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !3, line: 30, column: 5)
!423 = !DILocation(line: 31, column: 9, scope: !422)
!424 = !DILocation(line: 32, column: 5, scope: !422)
!425 = !DILocation(line: 33, column: 1, scope: !410)
!426 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !427, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !23}
!429 = !DILocalVariable(name: "intNumber", arg: 1, scope: !426, file: !3, line: 35, type: !23)
!430 = !DILocation(line: 35, column: 24, scope: !426)
!431 = !DILocation(line: 37, column: 20, scope: !426)
!432 = !DILocation(line: 37, column: 5, scope: !426)
!433 = !DILocation(line: 38, column: 1, scope: !426)
!434 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !435, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !437}
!437 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!438 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !434, file: !3, line: 40, type: !437)
!439 = !DILocation(line: 40, column: 28, scope: !434)
!440 = !DILocation(line: 42, column: 21, scope: !434)
!441 = !DILocation(line: 42, column: 5, scope: !434)
!442 = !DILocation(line: 43, column: 1, scope: !434)
!443 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !444, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !446}
!446 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!447 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !443, file: !3, line: 45, type: !446)
!448 = !DILocation(line: 45, column: 28, scope: !443)
!449 = !DILocation(line: 47, column: 20, scope: !443)
!450 = !DILocation(line: 47, column: 5, scope: !443)
!451 = !DILocation(line: 48, column: 1, scope: !443)
!452 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !453, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !110}
!455 = !DILocalVariable(name: "longNumber", arg: 1, scope: !452, file: !3, line: 50, type: !110)
!456 = !DILocation(line: 50, column: 26, scope: !452)
!457 = !DILocation(line: 52, column: 21, scope: !452)
!458 = !DILocation(line: 52, column: 5, scope: !452)
!459 = !DILocation(line: 53, column: 1, scope: !452)
!460 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !461, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !463}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !464, line: 27, baseType: !465)
!464 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !109, line: 44, baseType: !110)
!466 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !460, file: !3, line: 55, type: !463)
!467 = !DILocation(line: 55, column: 33, scope: !460)
!468 = !DILocation(line: 57, column: 29, scope: !460)
!469 = !DILocation(line: 57, column: 5, scope: !460)
!470 = !DILocation(line: 58, column: 1, scope: !460)
!471 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !472, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !75}
!474 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !471, file: !3, line: 60, type: !75)
!475 = !DILocation(line: 60, column: 29, scope: !471)
!476 = !DILocation(line: 62, column: 21, scope: !471)
!477 = !DILocation(line: 62, column: 5, scope: !471)
!478 = !DILocation(line: 63, column: 1, scope: !471)
!479 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !480, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !43}
!482 = !DILocalVariable(name: "charHex", arg: 1, scope: !479, file: !3, line: 65, type: !43)
!483 = !DILocation(line: 65, column: 29, scope: !479)
!484 = !DILocation(line: 67, column: 22, scope: !479)
!485 = !DILocation(line: 67, column: 5, scope: !479)
!486 = !DILocation(line: 68, column: 1, scope: !479)
!487 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !488, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !414}
!490 = !DILocalVariable(name: "wideChar", arg: 1, scope: !487, file: !3, line: 70, type: !414)
!491 = !DILocation(line: 70, column: 29, scope: !487)
!492 = !DILocalVariable(name: "s", scope: !487, file: !3, line: 74, type: !493)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 64, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 2)
!496 = !DILocation(line: 74, column: 13, scope: !487)
!497 = !DILocation(line: 75, column: 16, scope: !487)
!498 = !DILocation(line: 75, column: 9, scope: !487)
!499 = !DILocation(line: 75, column: 14, scope: !487)
!500 = !DILocation(line: 76, column: 9, scope: !487)
!501 = !DILocation(line: 76, column: 14, scope: !487)
!502 = !DILocation(line: 77, column: 21, scope: !487)
!503 = !DILocation(line: 77, column: 5, scope: !487)
!504 = !DILocation(line: 78, column: 1, scope: !487)
!505 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !506, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !7}
!508 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !505, file: !3, line: 80, type: !7)
!509 = !DILocation(line: 80, column: 33, scope: !505)
!510 = !DILocation(line: 82, column: 20, scope: !505)
!511 = !DILocation(line: 82, column: 5, scope: !505)
!512 = !DILocation(line: 83, column: 1, scope: !505)
!513 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !514, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !25}
!516 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !513, file: !3, line: 85, type: !25)
!517 = !DILocation(line: 85, column: 45, scope: !513)
!518 = !DILocation(line: 87, column: 22, scope: !513)
!519 = !DILocation(line: 87, column: 5, scope: !513)
!520 = !DILocation(line: 88, column: 1, scope: !513)
!521 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !522, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !524}
!524 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!525 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !521, file: !3, line: 90, type: !524)
!526 = !DILocation(line: 90, column: 29, scope: !521)
!527 = !DILocation(line: 92, column: 20, scope: !521)
!528 = !DILocation(line: 92, column: 5, scope: !521)
!529 = !DILocation(line: 93, column: 1, scope: !521)
!530 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !531, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !535, line: 100, baseType: !536)
!535 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_113/source_code")
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !535, line: 96, size: 64, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !536, file: !535, line: 98, baseType: !23, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !536, file: !535, line: 99, baseType: !23, size: 32, offset: 32)
!540 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !530, file: !3, line: 95, type: !533)
!541 = !DILocation(line: 95, column: 40, scope: !530)
!542 = !DILocation(line: 97, column: 26, scope: !530)
!543 = !DILocation(line: 97, column: 47, scope: !530)
!544 = !DILocation(line: 97, column: 55, scope: !530)
!545 = !DILocation(line: 97, column: 76, scope: !530)
!546 = !DILocation(line: 97, column: 5, scope: !530)
!547 = !DILocation(line: 98, column: 1, scope: !530)
!548 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !549, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !551, !75}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!552 = !DILocalVariable(name: "bytes", arg: 1, scope: !548, file: !3, line: 100, type: !551)
!553 = !DILocation(line: 100, column: 38, scope: !548)
!554 = !DILocalVariable(name: "numBytes", arg: 2, scope: !548, file: !3, line: 100, type: !75)
!555 = !DILocation(line: 100, column: 52, scope: !548)
!556 = !DILocalVariable(name: "i", scope: !548, file: !3, line: 102, type: !75)
!557 = !DILocation(line: 102, column: 12, scope: !548)
!558 = !DILocation(line: 103, column: 12, scope: !559)
!559 = distinct !DILexicalBlock(scope: !548, file: !3, line: 103, column: 5)
!560 = !DILocation(line: 103, column: 10, scope: !559)
!561 = !DILocation(line: 103, column: 17, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !3, line: 103, column: 5)
!563 = !DILocation(line: 103, column: 21, scope: !562)
!564 = !DILocation(line: 103, column: 19, scope: !562)
!565 = !DILocation(line: 103, column: 5, scope: !559)
!566 = !DILocation(line: 105, column: 24, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !3, line: 104, column: 5)
!568 = !DILocation(line: 105, column: 30, scope: !567)
!569 = !DILocation(line: 105, column: 9, scope: !567)
!570 = !DILocation(line: 106, column: 5, scope: !567)
!571 = !DILocation(line: 103, column: 31, scope: !562)
!572 = !DILocation(line: 103, column: 5, scope: !562)
!573 = distinct !{!573, !565, !574, !293}
!574 = !DILocation(line: 106, column: 5, scope: !559)
!575 = !DILocation(line: 107, column: 5, scope: !548)
!576 = !DILocation(line: 108, column: 1, scope: !548)
!577 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !578, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DISubroutineType(types: !579)
!579 = !{!75, !551, !75, !42}
!580 = !DILocalVariable(name: "bytes", arg: 1, scope: !577, file: !3, line: 113, type: !551)
!581 = !DILocation(line: 113, column: 39, scope: !577)
!582 = !DILocalVariable(name: "numBytes", arg: 2, scope: !577, file: !3, line: 113, type: !75)
!583 = !DILocation(line: 113, column: 53, scope: !577)
!584 = !DILocalVariable(name: "hex", arg: 3, scope: !577, file: !3, line: 113, type: !42)
!585 = !DILocation(line: 113, column: 71, scope: !577)
!586 = !DILocalVariable(name: "numWritten", scope: !577, file: !3, line: 115, type: !75)
!587 = !DILocation(line: 115, column: 12, scope: !577)
!588 = !DILocation(line: 121, column: 5, scope: !577)
!589 = !DILocation(line: 121, column: 12, scope: !577)
!590 = !DILocation(line: 121, column: 25, scope: !577)
!591 = !DILocation(line: 121, column: 23, scope: !577)
!592 = !DILocation(line: 121, column: 34, scope: !577)
!593 = !DILocation(line: 121, column: 37, scope: !577)
!594 = !DILocation(line: 121, column: 67, scope: !577)
!595 = !DILocation(line: 121, column: 70, scope: !577)
!596 = !DILocation(line: 0, scope: !577)
!597 = !DILocalVariable(name: "byte", scope: !598, file: !3, line: 123, type: !23)
!598 = distinct !DILexicalBlock(scope: !577, file: !3, line: 122, column: 5)
!599 = !DILocation(line: 123, column: 13, scope: !598)
!600 = !DILocation(line: 124, column: 17, scope: !598)
!601 = !DILocation(line: 124, column: 25, scope: !598)
!602 = !DILocation(line: 124, column: 23, scope: !598)
!603 = !DILocation(line: 124, column: 9, scope: !598)
!604 = !DILocation(line: 125, column: 45, scope: !598)
!605 = !DILocation(line: 125, column: 29, scope: !598)
!606 = !DILocation(line: 125, column: 9, scope: !598)
!607 = !DILocation(line: 125, column: 15, scope: !598)
!608 = !DILocation(line: 125, column: 27, scope: !598)
!609 = !DILocation(line: 126, column: 9, scope: !598)
!610 = distinct !{!610, !588, !611, !293}
!611 = !DILocation(line: 127, column: 5, scope: !577)
!612 = !DILocation(line: 129, column: 12, scope: !577)
!613 = !DILocation(line: 129, column: 5, scope: !577)
!614 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !615, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!615 = !DISubroutineType(types: !616)
!616 = !{!75, !551, !75, !413}
!617 = !DILocalVariable(name: "bytes", arg: 1, scope: !614, file: !3, line: 135, type: !551)
!618 = !DILocation(line: 135, column: 41, scope: !614)
!619 = !DILocalVariable(name: "numBytes", arg: 2, scope: !614, file: !3, line: 135, type: !75)
!620 = !DILocation(line: 135, column: 55, scope: !614)
!621 = !DILocalVariable(name: "hex", arg: 3, scope: !614, file: !3, line: 135, type: !413)
!622 = !DILocation(line: 135, column: 76, scope: !614)
!623 = !DILocalVariable(name: "numWritten", scope: !614, file: !3, line: 137, type: !75)
!624 = !DILocation(line: 137, column: 12, scope: !614)
!625 = !DILocation(line: 143, column: 5, scope: !614)
!626 = !DILocation(line: 143, column: 12, scope: !614)
!627 = !DILocation(line: 143, column: 25, scope: !614)
!628 = !DILocation(line: 143, column: 23, scope: !614)
!629 = !DILocation(line: 143, column: 34, scope: !614)
!630 = !DILocation(line: 143, column: 47, scope: !614)
!631 = !DILocation(line: 143, column: 55, scope: !614)
!632 = !DILocation(line: 143, column: 53, scope: !614)
!633 = !DILocation(line: 143, column: 37, scope: !614)
!634 = !DILocation(line: 143, column: 68, scope: !614)
!635 = !DILocation(line: 143, column: 81, scope: !614)
!636 = !DILocation(line: 143, column: 89, scope: !614)
!637 = !DILocation(line: 143, column: 87, scope: !614)
!638 = !DILocation(line: 143, column: 100, scope: !614)
!639 = !DILocation(line: 143, column: 71, scope: !614)
!640 = !DILocation(line: 0, scope: !614)
!641 = !DILocalVariable(name: "byte", scope: !642, file: !3, line: 145, type: !23)
!642 = distinct !DILexicalBlock(scope: !614, file: !3, line: 144, column: 5)
!643 = !DILocation(line: 145, column: 13, scope: !642)
!644 = !DILocation(line: 146, column: 18, scope: !642)
!645 = !DILocation(line: 146, column: 26, scope: !642)
!646 = !DILocation(line: 146, column: 24, scope: !642)
!647 = !DILocation(line: 146, column: 9, scope: !642)
!648 = !DILocation(line: 147, column: 45, scope: !642)
!649 = !DILocation(line: 147, column: 29, scope: !642)
!650 = !DILocation(line: 147, column: 9, scope: !642)
!651 = !DILocation(line: 147, column: 15, scope: !642)
!652 = !DILocation(line: 147, column: 27, scope: !642)
!653 = !DILocation(line: 148, column: 9, scope: !642)
!654 = distinct !{!654, !625, !655, !293}
!655 = !DILocation(line: 149, column: 5, scope: !614)
!656 = !DILocation(line: 151, column: 12, scope: !614)
!657 = !DILocation(line: 151, column: 5, scope: !614)
!658 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !659, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!659 = !DISubroutineType(types: !660)
!660 = !{!23}
!661 = !DILocation(line: 158, column: 5, scope: !658)
!662 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !659, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!663 = !DILocation(line: 163, column: 5, scope: !662)
!664 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !659, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!665 = !DILocation(line: 168, column: 13, scope: !664)
!666 = !DILocation(line: 168, column: 20, scope: !664)
!667 = !DILocation(line: 168, column: 5, scope: !664)
!668 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!669 = !DILocation(line: 187, column: 16, scope: !668)
!670 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!671 = !DILocation(line: 188, column: 16, scope: !670)
!672 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!673 = !DILocation(line: 189, column: 16, scope: !672)
!674 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!675 = !DILocation(line: 190, column: 16, scope: !674)
!676 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!677 = !DILocation(line: 191, column: 16, scope: !676)
!678 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!679 = !DILocation(line: 192, column: 16, scope: !678)
!680 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!681 = !DILocation(line: 193, column: 16, scope: !680)
!682 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!683 = !DILocation(line: 194, column: 16, scope: !682)
!684 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!685 = !DILocation(line: 195, column: 16, scope: !684)
!686 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!687 = !DILocation(line: 198, column: 15, scope: !686)
!688 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!689 = !DILocation(line: 199, column: 15, scope: !688)
!690 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!691 = !DILocation(line: 200, column: 15, scope: !690)
!692 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!693 = !DILocation(line: 201, column: 15, scope: !692)
!694 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!695 = !DILocation(line: 202, column: 15, scope: !694)
!696 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!697 = !DILocation(line: 203, column: 15, scope: !696)
!698 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!699 = !DILocation(line: 204, column: 15, scope: !698)
!700 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!701 = !DILocation(line: 205, column: 15, scope: !700)
!702 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!703 = !DILocation(line: 206, column: 15, scope: !702)
