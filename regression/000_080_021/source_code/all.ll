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
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_12_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !64
  %tobool = icmp ne i32 %call, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.else, !dbg !66

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !73
  %1 = load i8*, i8** %data, align 8, !dbg !74
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !75
  store i64 %call1, i64* %dataLen, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !76, metadata !DIExpression()), !dbg !132
  %2 = load i64, i64* %dataLen, align 8, !dbg !133
  %sub = sub i64 100, %2, !dbg !135
  %cmp = icmp ugt i64 %sub, 1, !dbg !136
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !137

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !138
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !140
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !141
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !143
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !144

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !145
  %5 = load i64, i64* %dataLen, align 8, !dbg !148
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !149
  %6 = load i64, i64* %dataLen, align 8, !dbg !150
  %sub6 = sub i64 100, %6, !dbg !151
  %conv = trunc i64 %sub6 to i32, !dbg !152
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !153
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !154
  %cmp8 = icmp eq i8* %call7, null, !dbg !155
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !156

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !157
  %8 = load i8*, i8** %data, align 8, !dbg !159
  %9 = load i64, i64* %dataLen, align 8, !dbg !160
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !159
  store i8 0, i8* %arrayidx, align 1, !dbg !161
  br label %if.end, !dbg !162

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !163
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !164
  br label %if.end12, !dbg !165

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !166

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end15, !dbg !167

if.else:                                          ; preds = %entry
  %11 = load i8*, i8** %data, align 8, !dbg !168
  %call14 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !170
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end13
  %call16 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !171
  %tobool17 = icmp ne i32 %call16, 0, !dbg !171
  br i1 %tobool17, label %if.then18, label %if.else20, !dbg !173

if.then18:                                        ; preds = %if.end15
  %12 = load i8*, i8** %data, align 8, !dbg !174
  %call19 = call i32 (i8*, ...) @printf(i8* %12), !dbg !176
  br label %if.end22, !dbg !177

if.else20:                                        ; preds = %if.end15
  %13 = load i8*, i8** %data, align 8, !dbg !178
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !180
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then18
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

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !182 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %dataLen14 = alloca i64, align 8
  %pFile16 = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !185, metadata !DIExpression()), !dbg !186
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !186
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !186
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !187
  store i8* %arraydecay, i8** %data, align 8, !dbg !188
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !189
  %tobool = icmp ne i32 %call, 0, !dbg !189
  br i1 %tobool, label %if.then, label %if.else, !dbg !191

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
  br label %if.end37, !dbg !234

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen14, metadata !235, metadata !DIExpression()), !dbg !238
  %11 = load i8*, i8** %data, align 8, !dbg !239
  %call15 = call i64 @strlen(i8* %11) #7, !dbg !240
  store i64 %call15, i64* %dataLen14, align 8, !dbg !238
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile16, metadata !241, metadata !DIExpression()), !dbg !242
  %12 = load i64, i64* %dataLen14, align 8, !dbg !243
  %sub17 = sub i64 100, %12, !dbg !245
  %cmp18 = icmp ugt i64 %sub17, 1, !dbg !246
  br i1 %cmp18, label %if.then20, label %if.end36, !dbg !247

if.then20:                                        ; preds = %if.else
  %call21 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !248
  store %struct._IO_FILE* %call21, %struct._IO_FILE** %pFile16, align 8, !dbg !250
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile16, align 8, !dbg !251
  %cmp22 = icmp ne %struct._IO_FILE* %13, null, !dbg !253
  br i1 %cmp22, label %if.then24, label %if.end35, !dbg !254

if.then24:                                        ; preds = %if.then20
  %14 = load i8*, i8** %data, align 8, !dbg !255
  %15 = load i64, i64* %dataLen14, align 8, !dbg !258
  %add.ptr25 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !259
  %16 = load i64, i64* %dataLen14, align 8, !dbg !260
  %sub26 = sub i64 100, %16, !dbg !261
  %conv27 = trunc i64 %sub26 to i32, !dbg !262
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile16, align 8, !dbg !263
  %call28 = call i8* @fgets(i8* %add.ptr25, i32 %conv27, %struct._IO_FILE* %17), !dbg !264
  %cmp29 = icmp eq i8* %call28, null, !dbg !265
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !266

if.then31:                                        ; preds = %if.then24
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !267
  %18 = load i8*, i8** %data, align 8, !dbg !269
  %19 = load i64, i64* %dataLen14, align 8, !dbg !270
  %arrayidx32 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !269
  store i8 0, i8* %arrayidx32, align 1, !dbg !271
  br label %if.end33, !dbg !272

if.end33:                                         ; preds = %if.then31, %if.then24
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile16, align 8, !dbg !273
  %call34 = call i32 @fclose(%struct._IO_FILE* %20), !dbg !274
  br label %if.end35, !dbg !275

if.end35:                                         ; preds = %if.end33, %if.then20
  br label %if.end36, !dbg !276

if.end36:                                         ; preds = %if.end35, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end13
  %call38 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !277
  %tobool39 = icmp ne i32 %call38, 0, !dbg !277
  br i1 %tobool39, label %if.then40, label %if.else42, !dbg !279

if.then40:                                        ; preds = %if.end37
  %21 = load i8*, i8** %data, align 8, !dbg !280
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %21), !dbg !282
  br label %if.end44, !dbg !283

if.else42:                                        ; preds = %if.end37
  %22 = load i8*, i8** %data, align 8, !dbg !284
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %22), !dbg !286
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.then40
  ret void, !dbg !287
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !288 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !292
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !292
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !293
  store i8* %arraydecay, i8** %data, align 8, !dbg !294
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !295
  %tobool = icmp ne i32 %call, 0, !dbg !295
  br i1 %tobool, label %if.then, label %if.else, !dbg !297

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !298
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !300
  br label %if.end, !dbg !301

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !302
  %call2 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !304
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !305
  %tobool4 = icmp ne i32 %call3, 0, !dbg !305
  br i1 %tobool4, label %if.then5, label %if.else7, !dbg !307

if.then5:                                         ; preds = %if.end
  %3 = load i8*, i8** %data, align 8, !dbg !308
  %call6 = call i32 (i8*, ...) @printf(i8* %3), !dbg !310
  br label %if.end9, !dbg !311

if.else7:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !312
  %call8 = call i32 (i8*, ...) @printf(i8* %4), !dbg !314
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then5
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_12_good() #0 !dbg !316 {
entry:
  call void @goodB2G(), !dbg !317
  call void @goodG2B(), !dbg !318
  ret void, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !320 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !325
  %0 = load i8*, i8** %line.addr, align 8, !dbg !326
  %cmp = icmp ne i8* %0, null, !dbg !328
  br i1 %cmp, label %if.then, label %if.end, !dbg !329

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !330
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !332
  br label %if.end, !dbg !333

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !336 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load i8*, i8** %line.addr, align 8, !dbg !339
  %cmp = icmp ne i8* %0, null, !dbg !341
  br i1 %cmp, label %if.then, label %if.end, !dbg !342

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !343
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !345
  br label %if.end, !dbg !346

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !348 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load i32*, i32** %line.addr, align 8, !dbg !355
  %cmp = icmp ne i32* %0, null, !dbg !357
  br i1 %cmp, label %if.then, label %if.end, !dbg !358

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !359
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !361
  br label %if.end, !dbg !362

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !363
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !364 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.9, i64 0, i64 0), i32 %0), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !372 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !378
  %conv = sext i16 %0 to i32, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.10, i64 0, i64 0), i32 %conv), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !381 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !387
  %conv = fpext float %0 to double, !dbg !387
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !390 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !393, metadata !DIExpression()), !dbg !394
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !395
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !396
  ret void, !dbg !397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !398 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !406
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !407
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !409 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !417 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !420, metadata !DIExpression()), !dbg !421
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !422
  %conv = sext i8 %0 to i32, !dbg !422
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !425 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !430, metadata !DIExpression()), !dbg !434
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !435
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !436
  store i32 %0, i32* %arrayidx, align 4, !dbg !437
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !438
  store i32 0, i32* %arrayidx1, align 4, !dbg !439
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !440
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !443 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !448
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !449
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !451 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !456
  %conv = zext i8 %0 to i32, !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !457
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !459 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !463, metadata !DIExpression()), !dbg !464
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !465
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !466
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !468 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !478, metadata !DIExpression()), !dbg !479
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !480
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !481
  %1 = load i32, i32* %intOne, align 4, !dbg !481
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !482
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !483
  %3 = load i32, i32* %intTwo, align 4, !dbg !483
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !486 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !490, metadata !DIExpression()), !dbg !491
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata i64* %i, metadata !494, metadata !DIExpression()), !dbg !495
  store i64 0, i64* %i, align 8, !dbg !496
  br label %for.cond, !dbg !498

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !499
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !501
  %cmp = icmp ult i64 %0, %1, !dbg !502
  br i1 %cmp, label %for.body, label %for.end, !dbg !503

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !504
  %3 = load i64, i64* %i, align 8, !dbg !506
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !504
  %4 = load i8, i8* %arrayidx, align 1, !dbg !504
  %conv = zext i8 %4 to i32, !dbg !504
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !507
  br label %for.inc, !dbg !508

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !509
  %inc = add i64 %5, 1, !dbg !509
  store i64 %inc, i64* %i, align 8, !dbg !509
  br label %for.cond, !dbg !510, !llvm.loop !511

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !514
  ret void, !dbg !515
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !516 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !519, metadata !DIExpression()), !dbg !520
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !521, metadata !DIExpression()), !dbg !522
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !523, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !525, metadata !DIExpression()), !dbg !526
  store i64 0, i64* %numWritten, align 8, !dbg !526
  br label %while.cond, !dbg !527

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !528
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !529
  %cmp = icmp ult i64 %0, %1, !dbg !530
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !531

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !532
  %2 = load i16*, i16** %call, align 8, !dbg !532
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !532
  %4 = load i64, i64* %numWritten, align 8, !dbg !532
  %mul = mul i64 2, %4, !dbg !532
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !532
  %5 = load i8, i8* %arrayidx, align 1, !dbg !532
  %conv = sext i8 %5 to i32, !dbg !532
  %idxprom = sext i32 %conv to i64, !dbg !532
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !532
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !532
  %conv2 = zext i16 %6 to i32, !dbg !532
  %and = and i32 %conv2, 4096, !dbg !532
  %tobool = icmp ne i32 %and, 0, !dbg !532
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !533

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !534
  %7 = load i16*, i16** %call3, align 8, !dbg !534
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !534
  %9 = load i64, i64* %numWritten, align 8, !dbg !534
  %mul4 = mul i64 2, %9, !dbg !534
  %add = add i64 %mul4, 1, !dbg !534
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !534
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !534
  %conv6 = sext i8 %10 to i32, !dbg !534
  %idxprom7 = sext i32 %conv6 to i64, !dbg !534
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !534
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !534
  %conv9 = zext i16 %11 to i32, !dbg !534
  %and10 = and i32 %conv9, 4096, !dbg !534
  %tobool11 = icmp ne i32 %and10, 0, !dbg !533
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !535
  br i1 %12, label %while.body, label %while.end, !dbg !527

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !536, metadata !DIExpression()), !dbg !538
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !539
  %14 = load i64, i64* %numWritten, align 8, !dbg !540
  %mul12 = mul i64 2, %14, !dbg !541
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !539
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !542
  %15 = load i32, i32* %byte, align 4, !dbg !543
  %conv15 = trunc i32 %15 to i8, !dbg !544
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !545
  %17 = load i64, i64* %numWritten, align 8, !dbg !546
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !545
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !547
  %18 = load i64, i64* %numWritten, align 8, !dbg !548
  %inc = add i64 %18, 1, !dbg !548
  store i64 %inc, i64* %numWritten, align 8, !dbg !548
  br label %while.cond, !dbg !527, !llvm.loop !549

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !551
  ret i64 %19, !dbg !552
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !553 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !556, metadata !DIExpression()), !dbg !557
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !558, metadata !DIExpression()), !dbg !559
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !562, metadata !DIExpression()), !dbg !563
  store i64 0, i64* %numWritten, align 8, !dbg !563
  br label %while.cond, !dbg !564

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !565
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !566
  %cmp = icmp ult i64 %0, %1, !dbg !567
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !568

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !569
  %3 = load i64, i64* %numWritten, align 8, !dbg !570
  %mul = mul i64 2, %3, !dbg !571
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !569
  %4 = load i32, i32* %arrayidx, align 4, !dbg !569
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !572
  %tobool = icmp ne i32 %call, 0, !dbg !572
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !573

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !574
  %6 = load i64, i64* %numWritten, align 8, !dbg !575
  %mul1 = mul i64 2, %6, !dbg !576
  %add = add i64 %mul1, 1, !dbg !577
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !574
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !574
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !578
  %tobool4 = icmp ne i32 %call3, 0, !dbg !573
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !579
  br i1 %8, label %while.body, label %while.end, !dbg !564

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !580, metadata !DIExpression()), !dbg !582
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !583
  %10 = load i64, i64* %numWritten, align 8, !dbg !584
  %mul5 = mul i64 2, %10, !dbg !585
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !583
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !586
  %11 = load i32, i32* %byte, align 4, !dbg !587
  %conv = trunc i32 %11 to i8, !dbg !588
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !589
  %13 = load i64, i64* %numWritten, align 8, !dbg !590
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !589
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !591
  %14 = load i64, i64* %numWritten, align 8, !dbg !592
  %inc = add i64 %14, 1, !dbg !592
  store i64 %inc, i64* %numWritten, align 8, !dbg !592
  br label %while.cond, !dbg !564, !llvm.loop !593

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !595
  ret i64 %15, !dbg !596
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !597 {
entry:
  ret i32 1, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !601 {
entry:
  ret i32 0, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !603 {
entry:
  %call = call i32 @rand() #8, !dbg !604
  %rem = srem i32 %call, 2, !dbg !605
  ret i32 %rem, !dbg !606
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !631 {
entry:
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !633 {
entry:
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !635 {
entry:
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !637 {
entry:
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !639 {
entry:
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !641 {
entry:
  ret void, !dbg !642
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_021/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_021/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_12_bad", scope: !45, file: !45, line: 33, type: !53, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 35, type: !42)
!56 = !DILocation(line: 35, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 36, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 100)
!61 = !DILocation(line: 36, column: 10, scope: !52)
!62 = !DILocation(line: 37, column: 12, scope: !52)
!63 = !DILocation(line: 37, column: 10, scope: !52)
!64 = !DILocation(line: 38, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 38, column: 8)
!66 = !DILocation(line: 38, column: 8, scope: !52)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 42, type: !70)
!68 = distinct !DILexicalBlock(scope: !69, file: !45, line: 40, column: 9)
!69 = distinct !DILexicalBlock(scope: !65, file: !45, line: 39, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 42, column: 20, scope: !68)
!74 = !DILocation(line: 42, column: 37, scope: !68)
!75 = !DILocation(line: 42, column: 30, scope: !68)
!76 = !DILocalVariable(name: "pFile", scope: !68, file: !45, line: 43, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !98, !100, !101, !102, !106, !107, !109, !113, !116, !118, !121, !124, !125, !126, !127, !128}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !80, file: !81, line: 51, baseType: !23, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !80, file: !81, line: 54, baseType: !42, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !80, file: !81, line: 55, baseType: !42, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !80, file: !81, line: 56, baseType: !42, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !80, file: !81, line: 57, baseType: !42, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !80, file: !81, line: 58, baseType: !42, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !80, file: !81, line: 59, baseType: !42, size: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !80, file: !81, line: 60, baseType: !42, size: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !80, file: !81, line: 61, baseType: !42, size: 64, offset: 512)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !80, file: !81, line: 64, baseType: !42, size: 64, offset: 576)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !80, file: !81, line: 65, baseType: !42, size: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !80, file: !81, line: 66, baseType: !42, size: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !80, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !81, line: 36, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !80, file: !81, line: 70, baseType: !99, size: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !80, file: !81, line: 72, baseType: !23, size: 32, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !80, file: !81, line: 73, baseType: !23, size: 32, offset: 928)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !80, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !104, line: 152, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!105 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !80, file: !81, line: 77, baseType: !24, size: 16, offset: 1024)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !80, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!108 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !80, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 1)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !80, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !81, line: 43, baseType: null)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !80, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !104, line: 153, baseType: !105)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !80, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !81, line: 37, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !80, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !81, line: 38, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !80, file: !81, line: 93, baseType: !99, size: 64, offset: 1344)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !80, file: !81, line: 94, baseType: !22, size: 64, offset: 1408)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !80, file: !81, line: 95, baseType: !70, size: 64, offset: 1472)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !80, file: !81, line: 96, baseType: !23, size: 32, offset: 1536)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !80, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 20)
!132 = !DILocation(line: 43, column: 20, scope: !68)
!133 = !DILocation(line: 45, column: 21, scope: !134)
!134 = distinct !DILexicalBlock(scope: !68, file: !45, line: 45, column: 17)
!135 = !DILocation(line: 45, column: 20, scope: !134)
!136 = !DILocation(line: 45, column: 29, scope: !134)
!137 = !DILocation(line: 45, column: 17, scope: !68)
!138 = !DILocation(line: 47, column: 25, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !45, line: 46, column: 13)
!140 = !DILocation(line: 47, column: 23, scope: !139)
!141 = !DILocation(line: 48, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !45, line: 48, column: 21)
!143 = !DILocation(line: 48, column: 27, scope: !142)
!144 = !DILocation(line: 48, column: 21, scope: !139)
!145 = !DILocation(line: 51, column: 31, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !45, line: 51, column: 25)
!147 = distinct !DILexicalBlock(scope: !142, file: !45, line: 49, column: 17)
!148 = !DILocation(line: 51, column: 36, scope: !146)
!149 = !DILocation(line: 51, column: 35, scope: !146)
!150 = !DILocation(line: 51, column: 55, scope: !146)
!151 = !DILocation(line: 51, column: 54, scope: !146)
!152 = !DILocation(line: 51, column: 45, scope: !146)
!153 = !DILocation(line: 51, column: 65, scope: !146)
!154 = !DILocation(line: 51, column: 25, scope: !146)
!155 = !DILocation(line: 51, column: 72, scope: !146)
!156 = !DILocation(line: 51, column: 25, scope: !147)
!157 = !DILocation(line: 53, column: 25, scope: !158)
!158 = distinct !DILexicalBlock(scope: !146, file: !45, line: 52, column: 21)
!159 = !DILocation(line: 55, column: 25, scope: !158)
!160 = !DILocation(line: 55, column: 30, scope: !158)
!161 = !DILocation(line: 55, column: 39, scope: !158)
!162 = !DILocation(line: 56, column: 21, scope: !158)
!163 = !DILocation(line: 57, column: 28, scope: !147)
!164 = !DILocation(line: 57, column: 21, scope: !147)
!165 = !DILocation(line: 58, column: 17, scope: !147)
!166 = !DILocation(line: 59, column: 13, scope: !139)
!167 = !DILocation(line: 61, column: 5, scope: !69)
!168 = !DILocation(line: 65, column: 16, scope: !169)
!169 = distinct !DILexicalBlock(scope: !65, file: !45, line: 63, column: 5)
!170 = !DILocation(line: 65, column: 9, scope: !169)
!171 = !DILocation(line: 67, column: 8, scope: !172)
!172 = distinct !DILexicalBlock(scope: !52, file: !45, line: 67, column: 8)
!173 = !DILocation(line: 67, column: 8, scope: !52)
!174 = !DILocation(line: 70, column: 16, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !45, line: 68, column: 5)
!176 = !DILocation(line: 70, column: 9, scope: !175)
!177 = !DILocation(line: 71, column: 5, scope: !175)
!178 = !DILocation(line: 75, column: 24, scope: !179)
!179 = distinct !DILexicalBlock(scope: !172, file: !45, line: 73, column: 5)
!180 = !DILocation(line: 75, column: 9, scope: !179)
!181 = !DILocation(line: 77, column: 1, scope: !52)
!182 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 86, type: !53, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!183 = !DILocalVariable(name: "data", scope: !182, file: !45, line: 88, type: !42)
!184 = !DILocation(line: 88, column: 12, scope: !182)
!185 = !DILocalVariable(name: "dataBuffer", scope: !182, file: !45, line: 89, type: !58)
!186 = !DILocation(line: 89, column: 10, scope: !182)
!187 = !DILocation(line: 90, column: 12, scope: !182)
!188 = !DILocation(line: 90, column: 10, scope: !182)
!189 = !DILocation(line: 91, column: 8, scope: !190)
!190 = distinct !DILexicalBlock(scope: !182, file: !45, line: 91, column: 8)
!191 = !DILocation(line: 91, column: 8, scope: !182)
!192 = !DILocalVariable(name: "dataLen", scope: !193, file: !45, line: 95, type: !70)
!193 = distinct !DILexicalBlock(scope: !194, file: !45, line: 93, column: 9)
!194 = distinct !DILexicalBlock(scope: !190, file: !45, line: 92, column: 5)
!195 = !DILocation(line: 95, column: 20, scope: !193)
!196 = !DILocation(line: 95, column: 37, scope: !193)
!197 = !DILocation(line: 95, column: 30, scope: !193)
!198 = !DILocalVariable(name: "pFile", scope: !193, file: !45, line: 96, type: !77)
!199 = !DILocation(line: 96, column: 20, scope: !193)
!200 = !DILocation(line: 98, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !193, file: !45, line: 98, column: 17)
!202 = !DILocation(line: 98, column: 20, scope: !201)
!203 = !DILocation(line: 98, column: 29, scope: !201)
!204 = !DILocation(line: 98, column: 17, scope: !193)
!205 = !DILocation(line: 100, column: 25, scope: !206)
!206 = distinct !DILexicalBlock(scope: !201, file: !45, line: 99, column: 13)
!207 = !DILocation(line: 100, column: 23, scope: !206)
!208 = !DILocation(line: 101, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !45, line: 101, column: 21)
!210 = !DILocation(line: 101, column: 27, scope: !209)
!211 = !DILocation(line: 101, column: 21, scope: !206)
!212 = !DILocation(line: 104, column: 31, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !45, line: 104, column: 25)
!214 = distinct !DILexicalBlock(scope: !209, file: !45, line: 102, column: 17)
!215 = !DILocation(line: 104, column: 36, scope: !213)
!216 = !DILocation(line: 104, column: 35, scope: !213)
!217 = !DILocation(line: 104, column: 55, scope: !213)
!218 = !DILocation(line: 104, column: 54, scope: !213)
!219 = !DILocation(line: 104, column: 45, scope: !213)
!220 = !DILocation(line: 104, column: 65, scope: !213)
!221 = !DILocation(line: 104, column: 25, scope: !213)
!222 = !DILocation(line: 104, column: 72, scope: !213)
!223 = !DILocation(line: 104, column: 25, scope: !214)
!224 = !DILocation(line: 106, column: 25, scope: !225)
!225 = distinct !DILexicalBlock(scope: !213, file: !45, line: 105, column: 21)
!226 = !DILocation(line: 108, column: 25, scope: !225)
!227 = !DILocation(line: 108, column: 30, scope: !225)
!228 = !DILocation(line: 108, column: 39, scope: !225)
!229 = !DILocation(line: 109, column: 21, scope: !225)
!230 = !DILocation(line: 110, column: 28, scope: !214)
!231 = !DILocation(line: 110, column: 21, scope: !214)
!232 = !DILocation(line: 111, column: 17, scope: !214)
!233 = !DILocation(line: 112, column: 13, scope: !206)
!234 = !DILocation(line: 114, column: 5, scope: !194)
!235 = !DILocalVariable(name: "dataLen", scope: !236, file: !45, line: 119, type: !70)
!236 = distinct !DILexicalBlock(scope: !237, file: !45, line: 117, column: 9)
!237 = distinct !DILexicalBlock(scope: !190, file: !45, line: 116, column: 5)
!238 = !DILocation(line: 119, column: 20, scope: !236)
!239 = !DILocation(line: 119, column: 37, scope: !236)
!240 = !DILocation(line: 119, column: 30, scope: !236)
!241 = !DILocalVariable(name: "pFile", scope: !236, file: !45, line: 120, type: !77)
!242 = !DILocation(line: 120, column: 20, scope: !236)
!243 = !DILocation(line: 122, column: 21, scope: !244)
!244 = distinct !DILexicalBlock(scope: !236, file: !45, line: 122, column: 17)
!245 = !DILocation(line: 122, column: 20, scope: !244)
!246 = !DILocation(line: 122, column: 29, scope: !244)
!247 = !DILocation(line: 122, column: 17, scope: !236)
!248 = !DILocation(line: 124, column: 25, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !45, line: 123, column: 13)
!250 = !DILocation(line: 124, column: 23, scope: !249)
!251 = !DILocation(line: 125, column: 21, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !45, line: 125, column: 21)
!253 = !DILocation(line: 125, column: 27, scope: !252)
!254 = !DILocation(line: 125, column: 21, scope: !249)
!255 = !DILocation(line: 128, column: 31, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !45, line: 128, column: 25)
!257 = distinct !DILexicalBlock(scope: !252, file: !45, line: 126, column: 17)
!258 = !DILocation(line: 128, column: 36, scope: !256)
!259 = !DILocation(line: 128, column: 35, scope: !256)
!260 = !DILocation(line: 128, column: 55, scope: !256)
!261 = !DILocation(line: 128, column: 54, scope: !256)
!262 = !DILocation(line: 128, column: 45, scope: !256)
!263 = !DILocation(line: 128, column: 65, scope: !256)
!264 = !DILocation(line: 128, column: 25, scope: !256)
!265 = !DILocation(line: 128, column: 72, scope: !256)
!266 = !DILocation(line: 128, column: 25, scope: !257)
!267 = !DILocation(line: 130, column: 25, scope: !268)
!268 = distinct !DILexicalBlock(scope: !256, file: !45, line: 129, column: 21)
!269 = !DILocation(line: 132, column: 25, scope: !268)
!270 = !DILocation(line: 132, column: 30, scope: !268)
!271 = !DILocation(line: 132, column: 39, scope: !268)
!272 = !DILocation(line: 133, column: 21, scope: !268)
!273 = !DILocation(line: 134, column: 28, scope: !257)
!274 = !DILocation(line: 134, column: 21, scope: !257)
!275 = !DILocation(line: 135, column: 17, scope: !257)
!276 = !DILocation(line: 136, column: 13, scope: !249)
!277 = !DILocation(line: 139, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !182, file: !45, line: 139, column: 8)
!279 = !DILocation(line: 139, column: 8, scope: !182)
!280 = !DILocation(line: 142, column: 24, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !45, line: 140, column: 5)
!282 = !DILocation(line: 142, column: 9, scope: !281)
!283 = !DILocation(line: 143, column: 5, scope: !281)
!284 = !DILocation(line: 147, column: 24, scope: !285)
!285 = distinct !DILexicalBlock(scope: !278, file: !45, line: 145, column: 5)
!286 = !DILocation(line: 147, column: 9, scope: !285)
!287 = !DILocation(line: 149, column: 1, scope: !182)
!288 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 154, type: !53, scopeLine: 155, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!289 = !DILocalVariable(name: "data", scope: !288, file: !45, line: 156, type: !42)
!290 = !DILocation(line: 156, column: 12, scope: !288)
!291 = !DILocalVariable(name: "dataBuffer", scope: !288, file: !45, line: 157, type: !58)
!292 = !DILocation(line: 157, column: 10, scope: !288)
!293 = !DILocation(line: 158, column: 12, scope: !288)
!294 = !DILocation(line: 158, column: 10, scope: !288)
!295 = !DILocation(line: 159, column: 8, scope: !296)
!296 = distinct !DILexicalBlock(scope: !288, file: !45, line: 159, column: 8)
!297 = !DILocation(line: 159, column: 8, scope: !288)
!298 = !DILocation(line: 162, column: 16, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !45, line: 160, column: 5)
!300 = !DILocation(line: 162, column: 9, scope: !299)
!301 = !DILocation(line: 163, column: 5, scope: !299)
!302 = !DILocation(line: 167, column: 16, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !45, line: 165, column: 5)
!304 = !DILocation(line: 167, column: 9, scope: !303)
!305 = !DILocation(line: 169, column: 8, scope: !306)
!306 = distinct !DILexicalBlock(scope: !288, file: !45, line: 169, column: 8)
!307 = !DILocation(line: 169, column: 8, scope: !288)
!308 = !DILocation(line: 172, column: 16, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !45, line: 170, column: 5)
!310 = !DILocation(line: 172, column: 9, scope: !309)
!311 = !DILocation(line: 173, column: 5, scope: !309)
!312 = !DILocation(line: 177, column: 16, scope: !313)
!313 = distinct !DILexicalBlock(scope: !306, file: !45, line: 175, column: 5)
!314 = !DILocation(line: 177, column: 9, scope: !313)
!315 = !DILocation(line: 179, column: 1, scope: !288)
!316 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_12_good", scope: !45, file: !45, line: 181, type: !53, scopeLine: 182, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!317 = !DILocation(line: 183, column: 5, scope: !316)
!318 = !DILocation(line: 184, column: 5, scope: !316)
!319 = !DILocation(line: 185, column: 1, scope: !316)
!320 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !321, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !42}
!323 = !DILocalVariable(name: "line", arg: 1, scope: !320, file: !3, line: 11, type: !42)
!324 = !DILocation(line: 11, column: 25, scope: !320)
!325 = !DILocation(line: 13, column: 1, scope: !320)
!326 = !DILocation(line: 14, column: 8, scope: !327)
!327 = distinct !DILexicalBlock(scope: !320, file: !3, line: 14, column: 8)
!328 = !DILocation(line: 14, column: 13, scope: !327)
!329 = !DILocation(line: 14, column: 8, scope: !320)
!330 = !DILocation(line: 16, column: 24, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !3, line: 15, column: 5)
!332 = !DILocation(line: 16, column: 9, scope: !331)
!333 = !DILocation(line: 17, column: 5, scope: !331)
!334 = !DILocation(line: 18, column: 5, scope: !320)
!335 = !DILocation(line: 19, column: 1, scope: !320)
!336 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !321, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DILocalVariable(name: "line", arg: 1, scope: !336, file: !3, line: 20, type: !42)
!338 = !DILocation(line: 20, column: 29, scope: !336)
!339 = !DILocation(line: 22, column: 8, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !3, line: 22, column: 8)
!341 = !DILocation(line: 22, column: 13, scope: !340)
!342 = !DILocation(line: 22, column: 8, scope: !336)
!343 = !DILocation(line: 24, column: 24, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !3, line: 23, column: 5)
!345 = !DILocation(line: 24, column: 9, scope: !344)
!346 = !DILocation(line: 25, column: 5, scope: !344)
!347 = !DILocation(line: 26, column: 1, scope: !336)
!348 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !349, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!353 = !DILocalVariable(name: "line", arg: 1, scope: !348, file: !3, line: 27, type: !351)
!354 = !DILocation(line: 27, column: 29, scope: !348)
!355 = !DILocation(line: 29, column: 8, scope: !356)
!356 = distinct !DILexicalBlock(scope: !348, file: !3, line: 29, column: 8)
!357 = !DILocation(line: 29, column: 13, scope: !356)
!358 = !DILocation(line: 29, column: 8, scope: !348)
!359 = !DILocation(line: 31, column: 27, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !3, line: 30, column: 5)
!361 = !DILocation(line: 31, column: 9, scope: !360)
!362 = !DILocation(line: 32, column: 5, scope: !360)
!363 = !DILocation(line: 33, column: 1, scope: !348)
!364 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !365, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !23}
!367 = !DILocalVariable(name: "intNumber", arg: 1, scope: !364, file: !3, line: 35, type: !23)
!368 = !DILocation(line: 35, column: 24, scope: !364)
!369 = !DILocation(line: 37, column: 20, scope: !364)
!370 = !DILocation(line: 37, column: 5, scope: !364)
!371 = !DILocation(line: 38, column: 1, scope: !364)
!372 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !373, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375}
!375 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!376 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !372, file: !3, line: 40, type: !375)
!377 = !DILocation(line: 40, column: 28, scope: !372)
!378 = !DILocation(line: 42, column: 21, scope: !372)
!379 = !DILocation(line: 42, column: 5, scope: !372)
!380 = !DILocation(line: 43, column: 1, scope: !372)
!381 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !382, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384}
!384 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!385 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !381, file: !3, line: 45, type: !384)
!386 = !DILocation(line: 45, column: 28, scope: !381)
!387 = !DILocation(line: 47, column: 20, scope: !381)
!388 = !DILocation(line: 47, column: 5, scope: !381)
!389 = !DILocation(line: 48, column: 1, scope: !381)
!390 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !391, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !105}
!393 = !DILocalVariable(name: "longNumber", arg: 1, scope: !390, file: !3, line: 50, type: !105)
!394 = !DILocation(line: 50, column: 26, scope: !390)
!395 = !DILocation(line: 52, column: 21, scope: !390)
!396 = !DILocation(line: 52, column: 5, scope: !390)
!397 = !DILocation(line: 53, column: 1, scope: !390)
!398 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !399, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !401}
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !402, line: 27, baseType: !403)
!402 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !104, line: 44, baseType: !105)
!404 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !398, file: !3, line: 55, type: !401)
!405 = !DILocation(line: 55, column: 33, scope: !398)
!406 = !DILocation(line: 57, column: 29, scope: !398)
!407 = !DILocation(line: 57, column: 5, scope: !398)
!408 = !DILocation(line: 58, column: 1, scope: !398)
!409 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !410, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !70}
!412 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !409, file: !3, line: 60, type: !70)
!413 = !DILocation(line: 60, column: 29, scope: !409)
!414 = !DILocation(line: 62, column: 21, scope: !409)
!415 = !DILocation(line: 62, column: 5, scope: !409)
!416 = !DILocation(line: 63, column: 1, scope: !409)
!417 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !418, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !43}
!420 = !DILocalVariable(name: "charHex", arg: 1, scope: !417, file: !3, line: 65, type: !43)
!421 = !DILocation(line: 65, column: 29, scope: !417)
!422 = !DILocation(line: 67, column: 22, scope: !417)
!423 = !DILocation(line: 67, column: 5, scope: !417)
!424 = !DILocation(line: 68, column: 1, scope: !417)
!425 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !426, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !352}
!428 = !DILocalVariable(name: "wideChar", arg: 1, scope: !425, file: !3, line: 70, type: !352)
!429 = !DILocation(line: 70, column: 29, scope: !425)
!430 = !DILocalVariable(name: "s", scope: !425, file: !3, line: 74, type: !431)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 64, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 2)
!434 = !DILocation(line: 74, column: 13, scope: !425)
!435 = !DILocation(line: 75, column: 16, scope: !425)
!436 = !DILocation(line: 75, column: 9, scope: !425)
!437 = !DILocation(line: 75, column: 14, scope: !425)
!438 = !DILocation(line: 76, column: 9, scope: !425)
!439 = !DILocation(line: 76, column: 14, scope: !425)
!440 = !DILocation(line: 77, column: 21, scope: !425)
!441 = !DILocation(line: 77, column: 5, scope: !425)
!442 = !DILocation(line: 78, column: 1, scope: !425)
!443 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !444, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !7}
!446 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !443, file: !3, line: 80, type: !7)
!447 = !DILocation(line: 80, column: 33, scope: !443)
!448 = !DILocation(line: 82, column: 20, scope: !443)
!449 = !DILocation(line: 82, column: 5, scope: !443)
!450 = !DILocation(line: 83, column: 1, scope: !443)
!451 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !452, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !25}
!454 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !451, file: !3, line: 85, type: !25)
!455 = !DILocation(line: 85, column: 45, scope: !451)
!456 = !DILocation(line: 87, column: 22, scope: !451)
!457 = !DILocation(line: 87, column: 5, scope: !451)
!458 = !DILocation(line: 88, column: 1, scope: !451)
!459 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !460, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !462}
!462 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!463 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !459, file: !3, line: 90, type: !462)
!464 = !DILocation(line: 90, column: 29, scope: !459)
!465 = !DILocation(line: 92, column: 20, scope: !459)
!466 = !DILocation(line: 92, column: 5, scope: !459)
!467 = !DILocation(line: 93, column: 1, scope: !459)
!468 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !469, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !473, line: 100, baseType: !474)
!473 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_021/source_code")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !473, line: 96, size: 64, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !474, file: !473, line: 98, baseType: !23, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !474, file: !473, line: 99, baseType: !23, size: 32, offset: 32)
!478 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !468, file: !3, line: 95, type: !471)
!479 = !DILocation(line: 95, column: 40, scope: !468)
!480 = !DILocation(line: 97, column: 26, scope: !468)
!481 = !DILocation(line: 97, column: 47, scope: !468)
!482 = !DILocation(line: 97, column: 55, scope: !468)
!483 = !DILocation(line: 97, column: 76, scope: !468)
!484 = !DILocation(line: 97, column: 5, scope: !468)
!485 = !DILocation(line: 98, column: 1, scope: !468)
!486 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !487, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !489, !70}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!490 = !DILocalVariable(name: "bytes", arg: 1, scope: !486, file: !3, line: 100, type: !489)
!491 = !DILocation(line: 100, column: 38, scope: !486)
!492 = !DILocalVariable(name: "numBytes", arg: 2, scope: !486, file: !3, line: 100, type: !70)
!493 = !DILocation(line: 100, column: 52, scope: !486)
!494 = !DILocalVariable(name: "i", scope: !486, file: !3, line: 102, type: !70)
!495 = !DILocation(line: 102, column: 12, scope: !486)
!496 = !DILocation(line: 103, column: 12, scope: !497)
!497 = distinct !DILexicalBlock(scope: !486, file: !3, line: 103, column: 5)
!498 = !DILocation(line: 103, column: 10, scope: !497)
!499 = !DILocation(line: 103, column: 17, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !3, line: 103, column: 5)
!501 = !DILocation(line: 103, column: 21, scope: !500)
!502 = !DILocation(line: 103, column: 19, scope: !500)
!503 = !DILocation(line: 103, column: 5, scope: !497)
!504 = !DILocation(line: 105, column: 24, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !3, line: 104, column: 5)
!506 = !DILocation(line: 105, column: 30, scope: !505)
!507 = !DILocation(line: 105, column: 9, scope: !505)
!508 = !DILocation(line: 106, column: 5, scope: !505)
!509 = !DILocation(line: 103, column: 31, scope: !500)
!510 = !DILocation(line: 103, column: 5, scope: !500)
!511 = distinct !{!511, !503, !512, !513}
!512 = !DILocation(line: 106, column: 5, scope: !497)
!513 = !{!"llvm.loop.mustprogress"}
!514 = !DILocation(line: 107, column: 5, scope: !486)
!515 = !DILocation(line: 108, column: 1, scope: !486)
!516 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !517, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DISubroutineType(types: !518)
!518 = !{!70, !489, !70, !42}
!519 = !DILocalVariable(name: "bytes", arg: 1, scope: !516, file: !3, line: 113, type: !489)
!520 = !DILocation(line: 113, column: 39, scope: !516)
!521 = !DILocalVariable(name: "numBytes", arg: 2, scope: !516, file: !3, line: 113, type: !70)
!522 = !DILocation(line: 113, column: 53, scope: !516)
!523 = !DILocalVariable(name: "hex", arg: 3, scope: !516, file: !3, line: 113, type: !42)
!524 = !DILocation(line: 113, column: 71, scope: !516)
!525 = !DILocalVariable(name: "numWritten", scope: !516, file: !3, line: 115, type: !70)
!526 = !DILocation(line: 115, column: 12, scope: !516)
!527 = !DILocation(line: 121, column: 5, scope: !516)
!528 = !DILocation(line: 121, column: 12, scope: !516)
!529 = !DILocation(line: 121, column: 25, scope: !516)
!530 = !DILocation(line: 121, column: 23, scope: !516)
!531 = !DILocation(line: 121, column: 34, scope: !516)
!532 = !DILocation(line: 121, column: 37, scope: !516)
!533 = !DILocation(line: 121, column: 67, scope: !516)
!534 = !DILocation(line: 121, column: 70, scope: !516)
!535 = !DILocation(line: 0, scope: !516)
!536 = !DILocalVariable(name: "byte", scope: !537, file: !3, line: 123, type: !23)
!537 = distinct !DILexicalBlock(scope: !516, file: !3, line: 122, column: 5)
!538 = !DILocation(line: 123, column: 13, scope: !537)
!539 = !DILocation(line: 124, column: 17, scope: !537)
!540 = !DILocation(line: 124, column: 25, scope: !537)
!541 = !DILocation(line: 124, column: 23, scope: !537)
!542 = !DILocation(line: 124, column: 9, scope: !537)
!543 = !DILocation(line: 125, column: 45, scope: !537)
!544 = !DILocation(line: 125, column: 29, scope: !537)
!545 = !DILocation(line: 125, column: 9, scope: !537)
!546 = !DILocation(line: 125, column: 15, scope: !537)
!547 = !DILocation(line: 125, column: 27, scope: !537)
!548 = !DILocation(line: 126, column: 9, scope: !537)
!549 = distinct !{!549, !527, !550, !513}
!550 = !DILocation(line: 127, column: 5, scope: !516)
!551 = !DILocation(line: 129, column: 12, scope: !516)
!552 = !DILocation(line: 129, column: 5, scope: !516)
!553 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !554, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DISubroutineType(types: !555)
!555 = !{!70, !489, !70, !351}
!556 = !DILocalVariable(name: "bytes", arg: 1, scope: !553, file: !3, line: 135, type: !489)
!557 = !DILocation(line: 135, column: 41, scope: !553)
!558 = !DILocalVariable(name: "numBytes", arg: 2, scope: !553, file: !3, line: 135, type: !70)
!559 = !DILocation(line: 135, column: 55, scope: !553)
!560 = !DILocalVariable(name: "hex", arg: 3, scope: !553, file: !3, line: 135, type: !351)
!561 = !DILocation(line: 135, column: 76, scope: !553)
!562 = !DILocalVariable(name: "numWritten", scope: !553, file: !3, line: 137, type: !70)
!563 = !DILocation(line: 137, column: 12, scope: !553)
!564 = !DILocation(line: 143, column: 5, scope: !553)
!565 = !DILocation(line: 143, column: 12, scope: !553)
!566 = !DILocation(line: 143, column: 25, scope: !553)
!567 = !DILocation(line: 143, column: 23, scope: !553)
!568 = !DILocation(line: 143, column: 34, scope: !553)
!569 = !DILocation(line: 143, column: 47, scope: !553)
!570 = !DILocation(line: 143, column: 55, scope: !553)
!571 = !DILocation(line: 143, column: 53, scope: !553)
!572 = !DILocation(line: 143, column: 37, scope: !553)
!573 = !DILocation(line: 143, column: 68, scope: !553)
!574 = !DILocation(line: 143, column: 81, scope: !553)
!575 = !DILocation(line: 143, column: 89, scope: !553)
!576 = !DILocation(line: 143, column: 87, scope: !553)
!577 = !DILocation(line: 143, column: 100, scope: !553)
!578 = !DILocation(line: 143, column: 71, scope: !553)
!579 = !DILocation(line: 0, scope: !553)
!580 = !DILocalVariable(name: "byte", scope: !581, file: !3, line: 145, type: !23)
!581 = distinct !DILexicalBlock(scope: !553, file: !3, line: 144, column: 5)
!582 = !DILocation(line: 145, column: 13, scope: !581)
!583 = !DILocation(line: 146, column: 18, scope: !581)
!584 = !DILocation(line: 146, column: 26, scope: !581)
!585 = !DILocation(line: 146, column: 24, scope: !581)
!586 = !DILocation(line: 146, column: 9, scope: !581)
!587 = !DILocation(line: 147, column: 45, scope: !581)
!588 = !DILocation(line: 147, column: 29, scope: !581)
!589 = !DILocation(line: 147, column: 9, scope: !581)
!590 = !DILocation(line: 147, column: 15, scope: !581)
!591 = !DILocation(line: 147, column: 27, scope: !581)
!592 = !DILocation(line: 148, column: 9, scope: !581)
!593 = distinct !{!593, !564, !594, !513}
!594 = !DILocation(line: 149, column: 5, scope: !553)
!595 = !DILocation(line: 151, column: 12, scope: !553)
!596 = !DILocation(line: 151, column: 5, scope: !553)
!597 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !598, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DISubroutineType(types: !599)
!599 = !{!23}
!600 = !DILocation(line: 158, column: 5, scope: !597)
!601 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !598, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 163, column: 5, scope: !601)
!603 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !598, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 168, column: 13, scope: !603)
!605 = !DILocation(line: 168, column: 20, scope: !603)
!606 = !DILocation(line: 168, column: 5, scope: !603)
!607 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 187, column: 16, scope: !607)
!609 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 188, column: 16, scope: !609)
!611 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 189, column: 16, scope: !611)
!613 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 190, column: 16, scope: !613)
!615 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 191, column: 16, scope: !615)
!617 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 192, column: 16, scope: !617)
!619 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 193, column: 16, scope: !619)
!621 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 194, column: 16, scope: !621)
!623 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 195, column: 16, scope: !623)
!625 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 198, column: 15, scope: !625)
!627 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 199, column: 15, scope: !627)
!629 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 200, column: 15, scope: !629)
!631 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 201, column: 15, scope: !631)
!633 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 202, column: 15, scope: !633)
!635 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 203, column: 15, scope: !635)
!637 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 204, column: 15, scope: !637)
!639 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 205, column: 15, scope: !639)
!641 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DILocation(line: 206, column: 15, scope: !641)
