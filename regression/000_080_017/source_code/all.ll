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
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.6 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.8 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.9 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.11 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6.12 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_08_bad() #0 !dbg !58 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !63, metadata !DIExpression()), !dbg !67
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !67
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !68
  store i8* %arraydecay, i8** %data, align 8, !dbg !69
  %call = call i32 @staticReturnsTrue(), !dbg !70
  %tobool = icmp ne i32 %call, 0, !dbg !70
  br i1 %tobool, label %if.then, label %if.end14, !dbg !72

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !73, metadata !DIExpression()), !dbg !79
  %1 = load i8*, i8** %data, align 8, !dbg !80
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !81
  store i64 %call1, i64* %dataLen, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !82, metadata !DIExpression()), !dbg !138
  %2 = load i64, i64* %dataLen, align 8, !dbg !139
  %sub = sub i64 100, %2, !dbg !141
  %cmp = icmp ugt i64 %sub, 1, !dbg !142
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !143

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !144
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !146
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !147
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !149
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !150

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !151
  %5 = load i64, i64* %dataLen, align 8, !dbg !154
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !155
  %6 = load i64, i64* %dataLen, align 8, !dbg !156
  %sub6 = sub i64 100, %6, !dbg !157
  %conv = trunc i64 %sub6 to i32, !dbg !158
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !159
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !160
  %cmp8 = icmp eq i8* %call7, null, !dbg !161
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !162

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !163
  %8 = load i8*, i8** %data, align 8, !dbg !165
  %9 = load i64, i64* %dataLen, align 8, !dbg !166
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !165
  store i8 0, i8* %arrayidx, align 1, !dbg !167
  br label %if.end, !dbg !168

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !169
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !170
  br label %if.end12, !dbg !171

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !172

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !173

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 @staticReturnsTrue(), !dbg !174
  %tobool16 = icmp ne i32 %call15, 0, !dbg !174
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !176

if.then17:                                        ; preds = %if.end14
  %11 = load i8*, i8** %data, align 8, !dbg !177
  %call18 = call i32 (i8*, ...) @printf(i8* %11), !dbg !179
  br label %if.end19, !dbg !180

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void, !dbg !181
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
define dso_local void @goodB2G1() #0 !dbg !182 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !185, metadata !DIExpression()), !dbg !186
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !186
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !186
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !187
  store i8* %arraydecay, i8** %data, align 8, !dbg !188
  %call = call i32 @staticReturnsTrue(), !dbg !189
  %tobool = icmp ne i32 %call, 0, !dbg !189
  br i1 %tobool, label %if.then, label %if.end14, !dbg !191

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !192, metadata !DIExpression()), !dbg !195
  %1 = load i8*, i8** %data, align 8, !dbg !196
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !197
  store i64 %call1, i64* %dataLen, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !198, metadata !DIExpression()), !dbg !199
  %2 = load i64, i64* %dataLen, align 8, !dbg !200
  %sub = sub i64 100, %2, !dbg !202
  %cmp = icmp ugt i64 %sub, 1, !dbg !203
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !204

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !205
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !207
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !208
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !210
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !211

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !212
  %5 = load i64, i64* %dataLen, align 8, !dbg !215
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !216
  %6 = load i64, i64* %dataLen, align 8, !dbg !217
  %sub6 = sub i64 100, %6, !dbg !218
  %conv = trunc i64 %sub6 to i32, !dbg !219
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !220
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !221
  %cmp8 = icmp eq i8* %call7, null, !dbg !222
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !223

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !224
  %8 = load i8*, i8** %data, align 8, !dbg !226
  %9 = load i64, i64* %dataLen, align 8, !dbg !227
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !226
  store i8 0, i8* %arrayidx, align 1, !dbg !228
  br label %if.end, !dbg !229

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !230
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !231
  br label %if.end12, !dbg !232

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !233

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !234

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 @staticReturnsFalse(), !dbg !235
  %tobool16 = icmp ne i32 %call15, 0, !dbg !235
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !237

if.then17:                                        ; preds = %if.end14
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !238
  br label %if.end19, !dbg !240

if.else:                                          ; preds = %if.end14
  %11 = load i8*, i8** %data, align 8, !dbg !241
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %11), !dbg !243
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  ret void, !dbg !244
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !245 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !246, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !249
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !249
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !250
  store i8* %arraydecay, i8** %data, align 8, !dbg !251
  %call = call i32 @staticReturnsTrue(), !dbg !252
  %tobool = icmp ne i32 %call, 0, !dbg !252
  br i1 %tobool, label %if.then, label %if.end14, !dbg !254

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !255, metadata !DIExpression()), !dbg !258
  %1 = load i8*, i8** %data, align 8, !dbg !259
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !260
  store i64 %call1, i64* %dataLen, align 8, !dbg !258
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !261, metadata !DIExpression()), !dbg !262
  %2 = load i64, i64* %dataLen, align 8, !dbg !263
  %sub = sub i64 100, %2, !dbg !265
  %cmp = icmp ugt i64 %sub, 1, !dbg !266
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !267

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !268
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !270
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !271
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !273
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !274

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !275
  %5 = load i64, i64* %dataLen, align 8, !dbg !278
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !279
  %6 = load i64, i64* %dataLen, align 8, !dbg !280
  %sub6 = sub i64 100, %6, !dbg !281
  %conv = trunc i64 %sub6 to i32, !dbg !282
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !283
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !284
  %cmp8 = icmp eq i8* %call7, null, !dbg !285
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !286

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !287
  %8 = load i8*, i8** %data, align 8, !dbg !289
  %9 = load i64, i64* %dataLen, align 8, !dbg !290
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !289
  store i8 0, i8* %arrayidx, align 1, !dbg !291
  br label %if.end, !dbg !292

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !293
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !294
  br label %if.end12, !dbg !295

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !296

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !297

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 @staticReturnsTrue(), !dbg !298
  %tobool16 = icmp ne i32 %call15, 0, !dbg !298
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !300

if.then17:                                        ; preds = %if.end14
  %11 = load i8*, i8** %data, align 8, !dbg !301
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %11), !dbg !303
  br label %if.end19, !dbg !304

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void, !dbg !305
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !306 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !307, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !310
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !310
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !311
  store i8* %arraydecay, i8** %data, align 8, !dbg !312
  %call = call i32 @staticReturnsFalse(), !dbg !313
  %tobool = icmp ne i32 %call, 0, !dbg !313
  br i1 %tobool, label %if.then, label %if.else, !dbg !315

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !316
  br label %if.end, !dbg !318

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !319
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !321
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @staticReturnsTrue(), !dbg !322
  %tobool3 = icmp ne i32 %call2, 0, !dbg !322
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !324

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !325
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !327
  br label %if.end6, !dbg !328

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !329
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !330 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !331, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !334
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !334
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !335
  store i8* %arraydecay, i8** %data, align 8, !dbg !336
  %call = call i32 @staticReturnsTrue(), !dbg !337
  %tobool = icmp ne i32 %call, 0, !dbg !337
  br i1 %tobool, label %if.then, label %if.end, !dbg !339

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !340
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !342
  br label %if.end, !dbg !343

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @staticReturnsTrue(), !dbg !344
  %tobool3 = icmp ne i32 %call2, 0, !dbg !344
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !346

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !347
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !349
  br label %if.end6, !dbg !350

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_08_good() #0 !dbg !352 {
entry:
  call void @goodB2G1(), !dbg !353
  call void @goodB2G2(), !dbg !354
  call void @goodG2B1(), !dbg !355
  call void @goodG2B2(), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !358 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !361, metadata !DIExpression()), !dbg !362
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !363
  %0 = load i8*, i8** %line.addr, align 8, !dbg !364
  %cmp = icmp ne i8* %0, null, !dbg !366
  br i1 %cmp, label %if.then, label %if.end, !dbg !367

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !368
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !370
  br label %if.end, !dbg !371

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.8, i64 0, i64 0)), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !374 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = load i8*, i8** %line.addr, align 8, !dbg !377
  %cmp = icmp ne i8* %0, null, !dbg !379
  br i1 %cmp, label %if.then, label %if.end, !dbg !380

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !381
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !383
  br label %if.end, !dbg !384

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !386 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load i32*, i32** %line.addr, align 8, !dbg !393
  %cmp = icmp ne i32* %0, null, !dbg !395
  br i1 %cmp, label %if.then, label %if.end, !dbg !396

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !397
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !399
  br label %if.end, !dbg !400

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !401
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !402 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !405, metadata !DIExpression()), !dbg !406
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !407
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !408
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !410 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !416
  %conv = sext i16 %0 to i32, !dbg !416
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.11, i64 0, i64 0), i32 %conv), !dbg !417
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !419 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !425
  %conv = fpext float %0 to double, !dbg !425
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.12, i64 0, i64 0), double %conv), !dbg !426
  ret void, !dbg !427
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !428 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !431, metadata !DIExpression()), !dbg !432
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !433
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !434
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !436 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !447 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !452
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !455 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !458, metadata !DIExpression()), !dbg !459
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !460
  %conv = sext i8 %0 to i32, !dbg !460
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !461
  ret void, !dbg !462
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !463 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !468, metadata !DIExpression()), !dbg !472
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !473
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !474
  store i32 %0, i32* %arrayidx, align 4, !dbg !475
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !476
  store i32 0, i32* %arrayidx1, align 4, !dbg !477
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !478
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !481 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !484, metadata !DIExpression()), !dbg !485
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !486
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !487
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !489 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !492, metadata !DIExpression()), !dbg !493
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !494
  %conv = zext i8 %0 to i32, !dbg !494
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !495
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !497 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !501, metadata !DIExpression()), !dbg !502
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !503
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !504
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !506 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !516, metadata !DIExpression()), !dbg !517
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !518
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !519
  %1 = load i32, i32* %intOne, align 4, !dbg !519
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !520
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !521
  %3 = load i32, i32* %intTwo, align 4, !dbg !521
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !522
  ret void, !dbg !523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !524 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !528, metadata !DIExpression()), !dbg !529
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.declare(metadata i64* %i, metadata !532, metadata !DIExpression()), !dbg !533
  store i64 0, i64* %i, align 8, !dbg !534
  br label %for.cond, !dbg !536

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !537
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !539
  %cmp = icmp ult i64 %0, %1, !dbg !540
  br i1 %cmp, label %for.body, label %for.end, !dbg !541

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !542
  %3 = load i64, i64* %i, align 8, !dbg !544
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !542
  %4 = load i8, i8* %arrayidx, align 1, !dbg !542
  %conv = zext i8 %4 to i32, !dbg !542
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !545
  br label %for.inc, !dbg !546

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !547
  %inc = add i64 %5, 1, !dbg !547
  store i64 %inc, i64* %i, align 8, !dbg !547
  br label %for.cond, !dbg !548, !llvm.loop !549

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !552
  ret void, !dbg !553
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !554 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !557, metadata !DIExpression()), !dbg !558
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !559, metadata !DIExpression()), !dbg !560
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !561, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !563, metadata !DIExpression()), !dbg !564
  store i64 0, i64* %numWritten, align 8, !dbg !564
  br label %while.cond, !dbg !565

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !566
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !567
  %cmp = icmp ult i64 %0, %1, !dbg !568
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !569

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !570
  %2 = load i16*, i16** %call, align 8, !dbg !570
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !570
  %4 = load i64, i64* %numWritten, align 8, !dbg !570
  %mul = mul i64 2, %4, !dbg !570
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !570
  %5 = load i8, i8* %arrayidx, align 1, !dbg !570
  %conv = sext i8 %5 to i32, !dbg !570
  %idxprom = sext i32 %conv to i64, !dbg !570
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !570
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !570
  %conv2 = zext i16 %6 to i32, !dbg !570
  %and = and i32 %conv2, 4096, !dbg !570
  %tobool = icmp ne i32 %and, 0, !dbg !570
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !571

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !572
  %7 = load i16*, i16** %call3, align 8, !dbg !572
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !572
  %9 = load i64, i64* %numWritten, align 8, !dbg !572
  %mul4 = mul i64 2, %9, !dbg !572
  %add = add i64 %mul4, 1, !dbg !572
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !572
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !572
  %conv6 = sext i8 %10 to i32, !dbg !572
  %idxprom7 = sext i32 %conv6 to i64, !dbg !572
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !572
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !572
  %conv9 = zext i16 %11 to i32, !dbg !572
  %and10 = and i32 %conv9, 4096, !dbg !572
  %tobool11 = icmp ne i32 %and10, 0, !dbg !571
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !573
  br i1 %12, label %while.body, label %while.end, !dbg !565

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !574, metadata !DIExpression()), !dbg !576
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !577
  %14 = load i64, i64* %numWritten, align 8, !dbg !578
  %mul12 = mul i64 2, %14, !dbg !579
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !577
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !580
  %15 = load i32, i32* %byte, align 4, !dbg !581
  %conv15 = trunc i32 %15 to i8, !dbg !582
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !583
  %17 = load i64, i64* %numWritten, align 8, !dbg !584
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !583
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !585
  %18 = load i64, i64* %numWritten, align 8, !dbg !586
  %inc = add i64 %18, 1, !dbg !586
  store i64 %inc, i64* %numWritten, align 8, !dbg !586
  br label %while.cond, !dbg !565, !llvm.loop !587

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !589
  ret i64 %19, !dbg !590
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !591 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !594, metadata !DIExpression()), !dbg !595
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !596, metadata !DIExpression()), !dbg !597
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !598, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !600, metadata !DIExpression()), !dbg !601
  store i64 0, i64* %numWritten, align 8, !dbg !601
  br label %while.cond, !dbg !602

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !603
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !604
  %cmp = icmp ult i64 %0, %1, !dbg !605
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !606

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !607
  %3 = load i64, i64* %numWritten, align 8, !dbg !608
  %mul = mul i64 2, %3, !dbg !609
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !607
  %4 = load i32, i32* %arrayidx, align 4, !dbg !607
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !610
  %tobool = icmp ne i32 %call, 0, !dbg !610
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !611

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !612
  %6 = load i64, i64* %numWritten, align 8, !dbg !613
  %mul1 = mul i64 2, %6, !dbg !614
  %add = add i64 %mul1, 1, !dbg !615
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !612
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !612
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !616
  %tobool4 = icmp ne i32 %call3, 0, !dbg !611
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !617
  br i1 %8, label %while.body, label %while.end, !dbg !602

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !618, metadata !DIExpression()), !dbg !620
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !621
  %10 = load i64, i64* %numWritten, align 8, !dbg !622
  %mul5 = mul i64 2, %10, !dbg !623
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !621
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !624
  %11 = load i32, i32* %byte, align 4, !dbg !625
  %conv = trunc i32 %11 to i8, !dbg !626
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !627
  %13 = load i64, i64* %numWritten, align 8, !dbg !628
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !627
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !629
  %14 = load i64, i64* %numWritten, align 8, !dbg !630
  %inc = add i64 %14, 1, !dbg !630
  store i64 %inc, i64* %numWritten, align 8, !dbg !630
  br label %while.cond, !dbg !602, !llvm.loop !631

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !633
  ret i64 %15, !dbg !634
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !635 {
entry:
  ret i32 1, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !637 {
entry:
  ret i32 0, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !639 {
entry:
  %call = call i32 @rand() #8, !dbg !640
  %rem = srem i32 %call, 2, !dbg !641
  ret i32 %rem, !dbg !642
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !645 {
entry:
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !677 {
entry:
  ret void, !dbg !678
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_017/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_017/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !45, file: !45, line: 34, type: !53, scopeLine: 35, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{!23}
!55 = !DILocation(line: 36, column: 5, scope: !52)
!56 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !45, file: !45, line: 39, type: !53, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!57 = !DILocation(line: 41, column: 5, scope: !56)
!58 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_08_bad", scope: !45, file: !45, line: 46, type: !59, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocalVariable(name: "data", scope: !58, file: !45, line: 48, type: !42)
!62 = !DILocation(line: 48, column: 12, scope: !58)
!63 = !DILocalVariable(name: "dataBuffer", scope: !58, file: !45, line: 49, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 100)
!67 = !DILocation(line: 49, column: 10, scope: !58)
!68 = !DILocation(line: 50, column: 12, scope: !58)
!69 = !DILocation(line: 50, column: 10, scope: !58)
!70 = !DILocation(line: 51, column: 8, scope: !71)
!71 = distinct !DILexicalBlock(scope: !58, file: !45, line: 51, column: 8)
!72 = !DILocation(line: 51, column: 8, scope: !58)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 55, type: !76)
!74 = distinct !DILexicalBlock(scope: !75, file: !45, line: 53, column: 9)
!75 = distinct !DILexicalBlock(scope: !71, file: !45, line: 52, column: 5)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 46, baseType: !78)
!77 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !DILocation(line: 55, column: 20, scope: !74)
!80 = !DILocation(line: 55, column: 37, scope: !74)
!81 = !DILocation(line: 55, column: 30, scope: !74)
!82 = !DILocalVariable(name: "pFile", scope: !74, file: !45, line: 56, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !85, line: 7, baseType: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !87, line: 49, size: 1728, elements: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !104, !106, !107, !108, !112, !113, !115, !119, !122, !124, !127, !130, !131, !132, !133, !134}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !86, file: !87, line: 51, baseType: !23, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !86, file: !87, line: 54, baseType: !42, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !86, file: !87, line: 55, baseType: !42, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !86, file: !87, line: 56, baseType: !42, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !86, file: !87, line: 57, baseType: !42, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !86, file: !87, line: 58, baseType: !42, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !86, file: !87, line: 59, baseType: !42, size: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !86, file: !87, line: 60, baseType: !42, size: 64, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !86, file: !87, line: 61, baseType: !42, size: 64, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !86, file: !87, line: 64, baseType: !42, size: 64, offset: 576)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !86, file: !87, line: 65, baseType: !42, size: 64, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !86, file: !87, line: 66, baseType: !42, size: 64, offset: 704)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !86, file: !87, line: 68, baseType: !102, size: 64, offset: 768)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !87, line: 36, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !86, file: !87, line: 70, baseType: !105, size: 64, offset: 832)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !86, file: !87, line: 72, baseType: !23, size: 32, offset: 896)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !86, file: !87, line: 73, baseType: !23, size: 32, offset: 928)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !86, file: !87, line: 74, baseType: !109, size: 64, offset: 960)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !110, line: 152, baseType: !111)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!111 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !86, file: !87, line: 77, baseType: !24, size: 16, offset: 1024)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !86, file: !87, line: 78, baseType: !114, size: 8, offset: 1040)
!114 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !86, file: !87, line: 79, baseType: !116, size: 8, offset: 1048)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 1)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !86, file: !87, line: 81, baseType: !120, size: 64, offset: 1088)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !87, line: 43, baseType: null)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !86, file: !87, line: 89, baseType: !123, size: 64, offset: 1152)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !110, line: 153, baseType: !111)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !86, file: !87, line: 91, baseType: !125, size: 64, offset: 1216)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !87, line: 37, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !86, file: !87, line: 92, baseType: !128, size: 64, offset: 1280)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !87, line: 38, flags: DIFlagFwdDecl)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !86, file: !87, line: 93, baseType: !105, size: 64, offset: 1344)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !86, file: !87, line: 94, baseType: !22, size: 64, offset: 1408)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !86, file: !87, line: 95, baseType: !76, size: 64, offset: 1472)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !86, file: !87, line: 96, baseType: !23, size: 32, offset: 1536)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !86, file: !87, line: 98, baseType: !135, size: 160, offset: 1568)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 20)
!138 = !DILocation(line: 56, column: 20, scope: !74)
!139 = !DILocation(line: 58, column: 21, scope: !140)
!140 = distinct !DILexicalBlock(scope: !74, file: !45, line: 58, column: 17)
!141 = !DILocation(line: 58, column: 20, scope: !140)
!142 = !DILocation(line: 58, column: 29, scope: !140)
!143 = !DILocation(line: 58, column: 17, scope: !74)
!144 = !DILocation(line: 60, column: 25, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !45, line: 59, column: 13)
!146 = !DILocation(line: 60, column: 23, scope: !145)
!147 = !DILocation(line: 61, column: 21, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !45, line: 61, column: 21)
!149 = !DILocation(line: 61, column: 27, scope: !148)
!150 = !DILocation(line: 61, column: 21, scope: !145)
!151 = !DILocation(line: 64, column: 31, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !45, line: 64, column: 25)
!153 = distinct !DILexicalBlock(scope: !148, file: !45, line: 62, column: 17)
!154 = !DILocation(line: 64, column: 36, scope: !152)
!155 = !DILocation(line: 64, column: 35, scope: !152)
!156 = !DILocation(line: 64, column: 55, scope: !152)
!157 = !DILocation(line: 64, column: 54, scope: !152)
!158 = !DILocation(line: 64, column: 45, scope: !152)
!159 = !DILocation(line: 64, column: 65, scope: !152)
!160 = !DILocation(line: 64, column: 25, scope: !152)
!161 = !DILocation(line: 64, column: 72, scope: !152)
!162 = !DILocation(line: 64, column: 25, scope: !153)
!163 = !DILocation(line: 66, column: 25, scope: !164)
!164 = distinct !DILexicalBlock(scope: !152, file: !45, line: 65, column: 21)
!165 = !DILocation(line: 68, column: 25, scope: !164)
!166 = !DILocation(line: 68, column: 30, scope: !164)
!167 = !DILocation(line: 68, column: 39, scope: !164)
!168 = !DILocation(line: 69, column: 21, scope: !164)
!169 = !DILocation(line: 70, column: 28, scope: !153)
!170 = !DILocation(line: 70, column: 21, scope: !153)
!171 = !DILocation(line: 71, column: 17, scope: !153)
!172 = !DILocation(line: 72, column: 13, scope: !145)
!173 = !DILocation(line: 74, column: 5, scope: !75)
!174 = !DILocation(line: 75, column: 8, scope: !175)
!175 = distinct !DILexicalBlock(scope: !58, file: !45, line: 75, column: 8)
!176 = !DILocation(line: 75, column: 8, scope: !58)
!177 = !DILocation(line: 78, column: 16, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !45, line: 76, column: 5)
!179 = !DILocation(line: 78, column: 9, scope: !178)
!180 = !DILocation(line: 79, column: 5, scope: !178)
!181 = !DILocation(line: 80, column: 1, scope: !58)
!182 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 87, type: !59, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!183 = !DILocalVariable(name: "data", scope: !182, file: !45, line: 89, type: !42)
!184 = !DILocation(line: 89, column: 12, scope: !182)
!185 = !DILocalVariable(name: "dataBuffer", scope: !182, file: !45, line: 90, type: !64)
!186 = !DILocation(line: 90, column: 10, scope: !182)
!187 = !DILocation(line: 91, column: 12, scope: !182)
!188 = !DILocation(line: 91, column: 10, scope: !182)
!189 = !DILocation(line: 92, column: 8, scope: !190)
!190 = distinct !DILexicalBlock(scope: !182, file: !45, line: 92, column: 8)
!191 = !DILocation(line: 92, column: 8, scope: !182)
!192 = !DILocalVariable(name: "dataLen", scope: !193, file: !45, line: 96, type: !76)
!193 = distinct !DILexicalBlock(scope: !194, file: !45, line: 94, column: 9)
!194 = distinct !DILexicalBlock(scope: !190, file: !45, line: 93, column: 5)
!195 = !DILocation(line: 96, column: 20, scope: !193)
!196 = !DILocation(line: 96, column: 37, scope: !193)
!197 = !DILocation(line: 96, column: 30, scope: !193)
!198 = !DILocalVariable(name: "pFile", scope: !193, file: !45, line: 97, type: !83)
!199 = !DILocation(line: 97, column: 20, scope: !193)
!200 = !DILocation(line: 99, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !193, file: !45, line: 99, column: 17)
!202 = !DILocation(line: 99, column: 20, scope: !201)
!203 = !DILocation(line: 99, column: 29, scope: !201)
!204 = !DILocation(line: 99, column: 17, scope: !193)
!205 = !DILocation(line: 101, column: 25, scope: !206)
!206 = distinct !DILexicalBlock(scope: !201, file: !45, line: 100, column: 13)
!207 = !DILocation(line: 101, column: 23, scope: !206)
!208 = !DILocation(line: 102, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !45, line: 102, column: 21)
!210 = !DILocation(line: 102, column: 27, scope: !209)
!211 = !DILocation(line: 102, column: 21, scope: !206)
!212 = !DILocation(line: 105, column: 31, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !45, line: 105, column: 25)
!214 = distinct !DILexicalBlock(scope: !209, file: !45, line: 103, column: 17)
!215 = !DILocation(line: 105, column: 36, scope: !213)
!216 = !DILocation(line: 105, column: 35, scope: !213)
!217 = !DILocation(line: 105, column: 55, scope: !213)
!218 = !DILocation(line: 105, column: 54, scope: !213)
!219 = !DILocation(line: 105, column: 45, scope: !213)
!220 = !DILocation(line: 105, column: 65, scope: !213)
!221 = !DILocation(line: 105, column: 25, scope: !213)
!222 = !DILocation(line: 105, column: 72, scope: !213)
!223 = !DILocation(line: 105, column: 25, scope: !214)
!224 = !DILocation(line: 107, column: 25, scope: !225)
!225 = distinct !DILexicalBlock(scope: !213, file: !45, line: 106, column: 21)
!226 = !DILocation(line: 109, column: 25, scope: !225)
!227 = !DILocation(line: 109, column: 30, scope: !225)
!228 = !DILocation(line: 109, column: 39, scope: !225)
!229 = !DILocation(line: 110, column: 21, scope: !225)
!230 = !DILocation(line: 111, column: 28, scope: !214)
!231 = !DILocation(line: 111, column: 21, scope: !214)
!232 = !DILocation(line: 112, column: 17, scope: !214)
!233 = !DILocation(line: 113, column: 13, scope: !206)
!234 = !DILocation(line: 115, column: 5, scope: !194)
!235 = !DILocation(line: 116, column: 8, scope: !236)
!236 = distinct !DILexicalBlock(scope: !182, file: !45, line: 116, column: 8)
!237 = !DILocation(line: 116, column: 8, scope: !182)
!238 = !DILocation(line: 119, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !45, line: 117, column: 5)
!240 = !DILocation(line: 120, column: 5, scope: !239)
!241 = !DILocation(line: 124, column: 24, scope: !242)
!242 = distinct !DILexicalBlock(scope: !236, file: !45, line: 122, column: 5)
!243 = !DILocation(line: 124, column: 9, scope: !242)
!244 = !DILocation(line: 126, column: 1, scope: !182)
!245 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 129, type: !59, scopeLine: 130, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!246 = !DILocalVariable(name: "data", scope: !245, file: !45, line: 131, type: !42)
!247 = !DILocation(line: 131, column: 12, scope: !245)
!248 = !DILocalVariable(name: "dataBuffer", scope: !245, file: !45, line: 132, type: !64)
!249 = !DILocation(line: 132, column: 10, scope: !245)
!250 = !DILocation(line: 133, column: 12, scope: !245)
!251 = !DILocation(line: 133, column: 10, scope: !245)
!252 = !DILocation(line: 134, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !245, file: !45, line: 134, column: 8)
!254 = !DILocation(line: 134, column: 8, scope: !245)
!255 = !DILocalVariable(name: "dataLen", scope: !256, file: !45, line: 138, type: !76)
!256 = distinct !DILexicalBlock(scope: !257, file: !45, line: 136, column: 9)
!257 = distinct !DILexicalBlock(scope: !253, file: !45, line: 135, column: 5)
!258 = !DILocation(line: 138, column: 20, scope: !256)
!259 = !DILocation(line: 138, column: 37, scope: !256)
!260 = !DILocation(line: 138, column: 30, scope: !256)
!261 = !DILocalVariable(name: "pFile", scope: !256, file: !45, line: 139, type: !83)
!262 = !DILocation(line: 139, column: 20, scope: !256)
!263 = !DILocation(line: 141, column: 21, scope: !264)
!264 = distinct !DILexicalBlock(scope: !256, file: !45, line: 141, column: 17)
!265 = !DILocation(line: 141, column: 20, scope: !264)
!266 = !DILocation(line: 141, column: 29, scope: !264)
!267 = !DILocation(line: 141, column: 17, scope: !256)
!268 = !DILocation(line: 143, column: 25, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !45, line: 142, column: 13)
!270 = !DILocation(line: 143, column: 23, scope: !269)
!271 = !DILocation(line: 144, column: 21, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !45, line: 144, column: 21)
!273 = !DILocation(line: 144, column: 27, scope: !272)
!274 = !DILocation(line: 144, column: 21, scope: !269)
!275 = !DILocation(line: 147, column: 31, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !45, line: 147, column: 25)
!277 = distinct !DILexicalBlock(scope: !272, file: !45, line: 145, column: 17)
!278 = !DILocation(line: 147, column: 36, scope: !276)
!279 = !DILocation(line: 147, column: 35, scope: !276)
!280 = !DILocation(line: 147, column: 55, scope: !276)
!281 = !DILocation(line: 147, column: 54, scope: !276)
!282 = !DILocation(line: 147, column: 45, scope: !276)
!283 = !DILocation(line: 147, column: 65, scope: !276)
!284 = !DILocation(line: 147, column: 25, scope: !276)
!285 = !DILocation(line: 147, column: 72, scope: !276)
!286 = !DILocation(line: 147, column: 25, scope: !277)
!287 = !DILocation(line: 149, column: 25, scope: !288)
!288 = distinct !DILexicalBlock(scope: !276, file: !45, line: 148, column: 21)
!289 = !DILocation(line: 151, column: 25, scope: !288)
!290 = !DILocation(line: 151, column: 30, scope: !288)
!291 = !DILocation(line: 151, column: 39, scope: !288)
!292 = !DILocation(line: 152, column: 21, scope: !288)
!293 = !DILocation(line: 153, column: 28, scope: !277)
!294 = !DILocation(line: 153, column: 21, scope: !277)
!295 = !DILocation(line: 154, column: 17, scope: !277)
!296 = !DILocation(line: 155, column: 13, scope: !269)
!297 = !DILocation(line: 157, column: 5, scope: !257)
!298 = !DILocation(line: 158, column: 8, scope: !299)
!299 = distinct !DILexicalBlock(scope: !245, file: !45, line: 158, column: 8)
!300 = !DILocation(line: 158, column: 8, scope: !245)
!301 = !DILocation(line: 161, column: 24, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !45, line: 159, column: 5)
!303 = !DILocation(line: 161, column: 9, scope: !302)
!304 = !DILocation(line: 162, column: 5, scope: !302)
!305 = !DILocation(line: 163, column: 1, scope: !245)
!306 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 166, type: !59, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!307 = !DILocalVariable(name: "data", scope: !306, file: !45, line: 168, type: !42)
!308 = !DILocation(line: 168, column: 12, scope: !306)
!309 = !DILocalVariable(name: "dataBuffer", scope: !306, file: !45, line: 169, type: !64)
!310 = !DILocation(line: 169, column: 10, scope: !306)
!311 = !DILocation(line: 170, column: 12, scope: !306)
!312 = !DILocation(line: 170, column: 10, scope: !306)
!313 = !DILocation(line: 171, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !306, file: !45, line: 171, column: 8)
!315 = !DILocation(line: 171, column: 8, scope: !306)
!316 = !DILocation(line: 174, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !45, line: 172, column: 5)
!318 = !DILocation(line: 175, column: 5, scope: !317)
!319 = !DILocation(line: 179, column: 16, scope: !320)
!320 = distinct !DILexicalBlock(scope: !314, file: !45, line: 177, column: 5)
!321 = !DILocation(line: 179, column: 9, scope: !320)
!322 = !DILocation(line: 181, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !306, file: !45, line: 181, column: 8)
!324 = !DILocation(line: 181, column: 8, scope: !306)
!325 = !DILocation(line: 184, column: 16, scope: !326)
!326 = distinct !DILexicalBlock(scope: !323, file: !45, line: 182, column: 5)
!327 = !DILocation(line: 184, column: 9, scope: !326)
!328 = !DILocation(line: 185, column: 5, scope: !326)
!329 = !DILocation(line: 186, column: 1, scope: !306)
!330 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 189, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!331 = !DILocalVariable(name: "data", scope: !330, file: !45, line: 191, type: !42)
!332 = !DILocation(line: 191, column: 12, scope: !330)
!333 = !DILocalVariable(name: "dataBuffer", scope: !330, file: !45, line: 192, type: !64)
!334 = !DILocation(line: 192, column: 10, scope: !330)
!335 = !DILocation(line: 193, column: 12, scope: !330)
!336 = !DILocation(line: 193, column: 10, scope: !330)
!337 = !DILocation(line: 194, column: 8, scope: !338)
!338 = distinct !DILexicalBlock(scope: !330, file: !45, line: 194, column: 8)
!339 = !DILocation(line: 194, column: 8, scope: !330)
!340 = !DILocation(line: 197, column: 16, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !45, line: 195, column: 5)
!342 = !DILocation(line: 197, column: 9, scope: !341)
!343 = !DILocation(line: 198, column: 5, scope: !341)
!344 = !DILocation(line: 199, column: 8, scope: !345)
!345 = distinct !DILexicalBlock(scope: !330, file: !45, line: 199, column: 8)
!346 = !DILocation(line: 199, column: 8, scope: !330)
!347 = !DILocation(line: 202, column: 16, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !45, line: 200, column: 5)
!349 = !DILocation(line: 202, column: 9, scope: !348)
!350 = !DILocation(line: 203, column: 5, scope: !348)
!351 = !DILocation(line: 204, column: 1, scope: !330)
!352 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_08_good", scope: !45, file: !45, line: 206, type: !59, scopeLine: 207, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!353 = !DILocation(line: 208, column: 5, scope: !352)
!354 = !DILocation(line: 209, column: 5, scope: !352)
!355 = !DILocation(line: 210, column: 5, scope: !352)
!356 = !DILocation(line: 211, column: 5, scope: !352)
!357 = !DILocation(line: 212, column: 1, scope: !352)
!358 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !359, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !42}
!361 = !DILocalVariable(name: "line", arg: 1, scope: !358, file: !3, line: 11, type: !42)
!362 = !DILocation(line: 11, column: 25, scope: !358)
!363 = !DILocation(line: 13, column: 1, scope: !358)
!364 = !DILocation(line: 14, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !358, file: !3, line: 14, column: 8)
!366 = !DILocation(line: 14, column: 13, scope: !365)
!367 = !DILocation(line: 14, column: 8, scope: !358)
!368 = !DILocation(line: 16, column: 24, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !3, line: 15, column: 5)
!370 = !DILocation(line: 16, column: 9, scope: !369)
!371 = !DILocation(line: 17, column: 5, scope: !369)
!372 = !DILocation(line: 18, column: 5, scope: !358)
!373 = !DILocation(line: 19, column: 1, scope: !358)
!374 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !359, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DILocalVariable(name: "line", arg: 1, scope: !374, file: !3, line: 20, type: !42)
!376 = !DILocation(line: 20, column: 29, scope: !374)
!377 = !DILocation(line: 22, column: 8, scope: !378)
!378 = distinct !DILexicalBlock(scope: !374, file: !3, line: 22, column: 8)
!379 = !DILocation(line: 22, column: 13, scope: !378)
!380 = !DILocation(line: 22, column: 8, scope: !374)
!381 = !DILocation(line: 24, column: 24, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !3, line: 23, column: 5)
!383 = !DILocation(line: 24, column: 9, scope: !382)
!384 = !DILocation(line: 25, column: 5, scope: !382)
!385 = !DILocation(line: 26, column: 1, scope: !374)
!386 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !387, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 74, baseType: !23)
!391 = !DILocalVariable(name: "line", arg: 1, scope: !386, file: !3, line: 27, type: !389)
!392 = !DILocation(line: 27, column: 29, scope: !386)
!393 = !DILocation(line: 29, column: 8, scope: !394)
!394 = distinct !DILexicalBlock(scope: !386, file: !3, line: 29, column: 8)
!395 = !DILocation(line: 29, column: 13, scope: !394)
!396 = !DILocation(line: 29, column: 8, scope: !386)
!397 = !DILocation(line: 31, column: 27, scope: !398)
!398 = distinct !DILexicalBlock(scope: !394, file: !3, line: 30, column: 5)
!399 = !DILocation(line: 31, column: 9, scope: !398)
!400 = !DILocation(line: 32, column: 5, scope: !398)
!401 = !DILocation(line: 33, column: 1, scope: !386)
!402 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !403, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !23}
!405 = !DILocalVariable(name: "intNumber", arg: 1, scope: !402, file: !3, line: 35, type: !23)
!406 = !DILocation(line: 35, column: 24, scope: !402)
!407 = !DILocation(line: 37, column: 20, scope: !402)
!408 = !DILocation(line: 37, column: 5, scope: !402)
!409 = !DILocation(line: 38, column: 1, scope: !402)
!410 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !411, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !413}
!413 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!414 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !410, file: !3, line: 40, type: !413)
!415 = !DILocation(line: 40, column: 28, scope: !410)
!416 = !DILocation(line: 42, column: 21, scope: !410)
!417 = !DILocation(line: 42, column: 5, scope: !410)
!418 = !DILocation(line: 43, column: 1, scope: !410)
!419 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !420, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !422}
!422 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!423 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !419, file: !3, line: 45, type: !422)
!424 = !DILocation(line: 45, column: 28, scope: !419)
!425 = !DILocation(line: 47, column: 20, scope: !419)
!426 = !DILocation(line: 47, column: 5, scope: !419)
!427 = !DILocation(line: 48, column: 1, scope: !419)
!428 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !429, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !111}
!431 = !DILocalVariable(name: "longNumber", arg: 1, scope: !428, file: !3, line: 50, type: !111)
!432 = !DILocation(line: 50, column: 26, scope: !428)
!433 = !DILocation(line: 52, column: 21, scope: !428)
!434 = !DILocation(line: 52, column: 5, scope: !428)
!435 = !DILocation(line: 53, column: 1, scope: !428)
!436 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !437, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439}
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !440, line: 27, baseType: !441)
!440 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !110, line: 44, baseType: !111)
!442 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !436, file: !3, line: 55, type: !439)
!443 = !DILocation(line: 55, column: 33, scope: !436)
!444 = !DILocation(line: 57, column: 29, scope: !436)
!445 = !DILocation(line: 57, column: 5, scope: !436)
!446 = !DILocation(line: 58, column: 1, scope: !436)
!447 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !448, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !76}
!450 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !447, file: !3, line: 60, type: !76)
!451 = !DILocation(line: 60, column: 29, scope: !447)
!452 = !DILocation(line: 62, column: 21, scope: !447)
!453 = !DILocation(line: 62, column: 5, scope: !447)
!454 = !DILocation(line: 63, column: 1, scope: !447)
!455 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !456, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !43}
!458 = !DILocalVariable(name: "charHex", arg: 1, scope: !455, file: !3, line: 65, type: !43)
!459 = !DILocation(line: 65, column: 29, scope: !455)
!460 = !DILocation(line: 67, column: 22, scope: !455)
!461 = !DILocation(line: 67, column: 5, scope: !455)
!462 = !DILocation(line: 68, column: 1, scope: !455)
!463 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !464, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !390}
!466 = !DILocalVariable(name: "wideChar", arg: 1, scope: !463, file: !3, line: 70, type: !390)
!467 = !DILocation(line: 70, column: 29, scope: !463)
!468 = !DILocalVariable(name: "s", scope: !463, file: !3, line: 74, type: !469)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 64, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 2)
!472 = !DILocation(line: 74, column: 13, scope: !463)
!473 = !DILocation(line: 75, column: 16, scope: !463)
!474 = !DILocation(line: 75, column: 9, scope: !463)
!475 = !DILocation(line: 75, column: 14, scope: !463)
!476 = !DILocation(line: 76, column: 9, scope: !463)
!477 = !DILocation(line: 76, column: 14, scope: !463)
!478 = !DILocation(line: 77, column: 21, scope: !463)
!479 = !DILocation(line: 77, column: 5, scope: !463)
!480 = !DILocation(line: 78, column: 1, scope: !463)
!481 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !482, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !7}
!484 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !481, file: !3, line: 80, type: !7)
!485 = !DILocation(line: 80, column: 33, scope: !481)
!486 = !DILocation(line: 82, column: 20, scope: !481)
!487 = !DILocation(line: 82, column: 5, scope: !481)
!488 = !DILocation(line: 83, column: 1, scope: !481)
!489 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !490, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !25}
!492 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !489, file: !3, line: 85, type: !25)
!493 = !DILocation(line: 85, column: 45, scope: !489)
!494 = !DILocation(line: 87, column: 22, scope: !489)
!495 = !DILocation(line: 87, column: 5, scope: !489)
!496 = !DILocation(line: 88, column: 1, scope: !489)
!497 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !498, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !500}
!500 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!501 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !497, file: !3, line: 90, type: !500)
!502 = !DILocation(line: 90, column: 29, scope: !497)
!503 = !DILocation(line: 92, column: 20, scope: !497)
!504 = !DILocation(line: 92, column: 5, scope: !497)
!505 = !DILocation(line: 93, column: 1, scope: !497)
!506 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !507, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !511, line: 100, baseType: !512)
!511 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_017/source_code")
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !511, line: 96, size: 64, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !512, file: !511, line: 98, baseType: !23, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !512, file: !511, line: 99, baseType: !23, size: 32, offset: 32)
!516 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !506, file: !3, line: 95, type: !509)
!517 = !DILocation(line: 95, column: 40, scope: !506)
!518 = !DILocation(line: 97, column: 26, scope: !506)
!519 = !DILocation(line: 97, column: 47, scope: !506)
!520 = !DILocation(line: 97, column: 55, scope: !506)
!521 = !DILocation(line: 97, column: 76, scope: !506)
!522 = !DILocation(line: 97, column: 5, scope: !506)
!523 = !DILocation(line: 98, column: 1, scope: !506)
!524 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !525, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !527, !76}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!528 = !DILocalVariable(name: "bytes", arg: 1, scope: !524, file: !3, line: 100, type: !527)
!529 = !DILocation(line: 100, column: 38, scope: !524)
!530 = !DILocalVariable(name: "numBytes", arg: 2, scope: !524, file: !3, line: 100, type: !76)
!531 = !DILocation(line: 100, column: 52, scope: !524)
!532 = !DILocalVariable(name: "i", scope: !524, file: !3, line: 102, type: !76)
!533 = !DILocation(line: 102, column: 12, scope: !524)
!534 = !DILocation(line: 103, column: 12, scope: !535)
!535 = distinct !DILexicalBlock(scope: !524, file: !3, line: 103, column: 5)
!536 = !DILocation(line: 103, column: 10, scope: !535)
!537 = !DILocation(line: 103, column: 17, scope: !538)
!538 = distinct !DILexicalBlock(scope: !535, file: !3, line: 103, column: 5)
!539 = !DILocation(line: 103, column: 21, scope: !538)
!540 = !DILocation(line: 103, column: 19, scope: !538)
!541 = !DILocation(line: 103, column: 5, scope: !535)
!542 = !DILocation(line: 105, column: 24, scope: !543)
!543 = distinct !DILexicalBlock(scope: !538, file: !3, line: 104, column: 5)
!544 = !DILocation(line: 105, column: 30, scope: !543)
!545 = !DILocation(line: 105, column: 9, scope: !543)
!546 = !DILocation(line: 106, column: 5, scope: !543)
!547 = !DILocation(line: 103, column: 31, scope: !538)
!548 = !DILocation(line: 103, column: 5, scope: !538)
!549 = distinct !{!549, !541, !550, !551}
!550 = !DILocation(line: 106, column: 5, scope: !535)
!551 = !{!"llvm.loop.mustprogress"}
!552 = !DILocation(line: 107, column: 5, scope: !524)
!553 = !DILocation(line: 108, column: 1, scope: !524)
!554 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !555, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DISubroutineType(types: !556)
!556 = !{!76, !527, !76, !42}
!557 = !DILocalVariable(name: "bytes", arg: 1, scope: !554, file: !3, line: 113, type: !527)
!558 = !DILocation(line: 113, column: 39, scope: !554)
!559 = !DILocalVariable(name: "numBytes", arg: 2, scope: !554, file: !3, line: 113, type: !76)
!560 = !DILocation(line: 113, column: 53, scope: !554)
!561 = !DILocalVariable(name: "hex", arg: 3, scope: !554, file: !3, line: 113, type: !42)
!562 = !DILocation(line: 113, column: 71, scope: !554)
!563 = !DILocalVariable(name: "numWritten", scope: !554, file: !3, line: 115, type: !76)
!564 = !DILocation(line: 115, column: 12, scope: !554)
!565 = !DILocation(line: 121, column: 5, scope: !554)
!566 = !DILocation(line: 121, column: 12, scope: !554)
!567 = !DILocation(line: 121, column: 25, scope: !554)
!568 = !DILocation(line: 121, column: 23, scope: !554)
!569 = !DILocation(line: 121, column: 34, scope: !554)
!570 = !DILocation(line: 121, column: 37, scope: !554)
!571 = !DILocation(line: 121, column: 67, scope: !554)
!572 = !DILocation(line: 121, column: 70, scope: !554)
!573 = !DILocation(line: 0, scope: !554)
!574 = !DILocalVariable(name: "byte", scope: !575, file: !3, line: 123, type: !23)
!575 = distinct !DILexicalBlock(scope: !554, file: !3, line: 122, column: 5)
!576 = !DILocation(line: 123, column: 13, scope: !575)
!577 = !DILocation(line: 124, column: 17, scope: !575)
!578 = !DILocation(line: 124, column: 25, scope: !575)
!579 = !DILocation(line: 124, column: 23, scope: !575)
!580 = !DILocation(line: 124, column: 9, scope: !575)
!581 = !DILocation(line: 125, column: 45, scope: !575)
!582 = !DILocation(line: 125, column: 29, scope: !575)
!583 = !DILocation(line: 125, column: 9, scope: !575)
!584 = !DILocation(line: 125, column: 15, scope: !575)
!585 = !DILocation(line: 125, column: 27, scope: !575)
!586 = !DILocation(line: 126, column: 9, scope: !575)
!587 = distinct !{!587, !565, !588, !551}
!588 = !DILocation(line: 127, column: 5, scope: !554)
!589 = !DILocation(line: 129, column: 12, scope: !554)
!590 = !DILocation(line: 129, column: 5, scope: !554)
!591 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !592, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DISubroutineType(types: !593)
!593 = !{!76, !527, !76, !389}
!594 = !DILocalVariable(name: "bytes", arg: 1, scope: !591, file: !3, line: 135, type: !527)
!595 = !DILocation(line: 135, column: 41, scope: !591)
!596 = !DILocalVariable(name: "numBytes", arg: 2, scope: !591, file: !3, line: 135, type: !76)
!597 = !DILocation(line: 135, column: 55, scope: !591)
!598 = !DILocalVariable(name: "hex", arg: 3, scope: !591, file: !3, line: 135, type: !389)
!599 = !DILocation(line: 135, column: 76, scope: !591)
!600 = !DILocalVariable(name: "numWritten", scope: !591, file: !3, line: 137, type: !76)
!601 = !DILocation(line: 137, column: 12, scope: !591)
!602 = !DILocation(line: 143, column: 5, scope: !591)
!603 = !DILocation(line: 143, column: 12, scope: !591)
!604 = !DILocation(line: 143, column: 25, scope: !591)
!605 = !DILocation(line: 143, column: 23, scope: !591)
!606 = !DILocation(line: 143, column: 34, scope: !591)
!607 = !DILocation(line: 143, column: 47, scope: !591)
!608 = !DILocation(line: 143, column: 55, scope: !591)
!609 = !DILocation(line: 143, column: 53, scope: !591)
!610 = !DILocation(line: 143, column: 37, scope: !591)
!611 = !DILocation(line: 143, column: 68, scope: !591)
!612 = !DILocation(line: 143, column: 81, scope: !591)
!613 = !DILocation(line: 143, column: 89, scope: !591)
!614 = !DILocation(line: 143, column: 87, scope: !591)
!615 = !DILocation(line: 143, column: 100, scope: !591)
!616 = !DILocation(line: 143, column: 71, scope: !591)
!617 = !DILocation(line: 0, scope: !591)
!618 = !DILocalVariable(name: "byte", scope: !619, file: !3, line: 145, type: !23)
!619 = distinct !DILexicalBlock(scope: !591, file: !3, line: 144, column: 5)
!620 = !DILocation(line: 145, column: 13, scope: !619)
!621 = !DILocation(line: 146, column: 18, scope: !619)
!622 = !DILocation(line: 146, column: 26, scope: !619)
!623 = !DILocation(line: 146, column: 24, scope: !619)
!624 = !DILocation(line: 146, column: 9, scope: !619)
!625 = !DILocation(line: 147, column: 45, scope: !619)
!626 = !DILocation(line: 147, column: 29, scope: !619)
!627 = !DILocation(line: 147, column: 9, scope: !619)
!628 = !DILocation(line: 147, column: 15, scope: !619)
!629 = !DILocation(line: 147, column: 27, scope: !619)
!630 = !DILocation(line: 148, column: 9, scope: !619)
!631 = distinct !{!631, !602, !632, !551}
!632 = !DILocation(line: 149, column: 5, scope: !591)
!633 = !DILocation(line: 151, column: 12, scope: !591)
!634 = !DILocation(line: 151, column: 5, scope: !591)
!635 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !53, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 158, column: 5, scope: !635)
!637 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !53, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 163, column: 5, scope: !637)
!639 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !53, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 168, column: 13, scope: !639)
!641 = !DILocation(line: 168, column: 20, scope: !639)
!642 = !DILocation(line: 168, column: 5, scope: !639)
!643 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !59, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DILocation(line: 187, column: 16, scope: !643)
!645 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !59, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!646 = !DILocation(line: 188, column: 16, scope: !645)
!647 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !59, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DILocation(line: 189, column: 16, scope: !647)
!649 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 190, column: 16, scope: !649)
!651 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !59, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 191, column: 16, scope: !651)
!653 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !59, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 192, column: 16, scope: !653)
!655 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !59, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!656 = !DILocation(line: 193, column: 16, scope: !655)
!657 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !59, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 194, column: 16, scope: !657)
!659 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !59, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 195, column: 16, scope: !659)
!661 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !59, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 198, column: 15, scope: !661)
!663 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !59, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 199, column: 15, scope: !663)
!665 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !59, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 200, column: 15, scope: !665)
!667 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !59, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 201, column: 15, scope: !667)
!669 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !59, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 202, column: 15, scope: !669)
!671 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !59, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 203, column: 15, scope: !671)
!673 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !59, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 204, column: 15, scope: !673)
!675 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !59, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 205, column: 15, scope: !675)
!677 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !59, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!678 = !DILocation(line: 206, column: 15, scope: !677)
