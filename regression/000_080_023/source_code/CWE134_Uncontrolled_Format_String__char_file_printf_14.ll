; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_14.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@globalFive = external dso_local global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_14_bad() #0 !dbg !10 {
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
  %1 = load i32, i32* @globalFive, align 4, !dbg !24
  %cmp = icmp eq i32 %1, 5, !dbg !26
  br i1 %cmp, label %if.then, label %if.end14, !dbg !27

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !28, metadata !DIExpression()), !dbg !34
  %2 = load i8*, i8** %data, align 8, !dbg !35
  %call = call i64 @strlen(i8* %2) #6, !dbg !36
  store i64 %call, i64* %dataLen, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !37, metadata !DIExpression()), !dbg !94
  %3 = load i64, i64* %dataLen, align 8, !dbg !95
  %sub = sub i64 100, %3, !dbg !97
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !98
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !99

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !100
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !102
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !103
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !105
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !106

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !107
  %6 = load i64, i64* %dataLen, align 8, !dbg !110
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !111
  %7 = load i64, i64* %dataLen, align 8, !dbg !112
  %sub6 = sub i64 100, %7, !dbg !113
  %conv = trunc i64 %sub6 to i32, !dbg !114
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !115
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !116
  %cmp8 = icmp eq i8* %call7, null, !dbg !117
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !118

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !119
  %9 = load i8*, i8** %data, align 8, !dbg !121
  %10 = load i64, i64* %dataLen, align 8, !dbg !122
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !121
  store i8 0, i8* %arrayidx, align 1, !dbg !123
  br label %if.end, !dbg !124

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !125
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !126
  br label %if.end12, !dbg !127

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !128

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !129

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @globalFive, align 4, !dbg !130
  %cmp15 = icmp eq i32 %12, 5, !dbg !132
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !133

if.then17:                                        ; preds = %if.end14
  %13 = load i8*, i8** %data, align 8, !dbg !134
  %call18 = call i32 (i8*, ...) @printf(i8* %13), !dbg !136
  br label %if.end19, !dbg !137

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void, !dbg !138
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
define dso_local void @goodB2G1() #0 !dbg !139 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !143
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !143
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !144
  store i8* %arraydecay, i8** %data, align 8, !dbg !145
  %1 = load i32, i32* @globalFive, align 4, !dbg !146
  %cmp = icmp eq i32 %1, 5, !dbg !148
  br i1 %cmp, label %if.then, label %if.end14, !dbg !149

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !150, metadata !DIExpression()), !dbg !153
  %2 = load i8*, i8** %data, align 8, !dbg !154
  %call = call i64 @strlen(i8* %2) #6, !dbg !155
  store i64 %call, i64* %dataLen, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !156, metadata !DIExpression()), !dbg !157
  %3 = load i64, i64* %dataLen, align 8, !dbg !158
  %sub = sub i64 100, %3, !dbg !160
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !161
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !162

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !163
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !165
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !166
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !168
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !169

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !170
  %6 = load i64, i64* %dataLen, align 8, !dbg !173
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !174
  %7 = load i64, i64* %dataLen, align 8, !dbg !175
  %sub6 = sub i64 100, %7, !dbg !176
  %conv = trunc i64 %sub6 to i32, !dbg !177
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !178
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !179
  %cmp8 = icmp eq i8* %call7, null, !dbg !180
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !181

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !182
  %9 = load i8*, i8** %data, align 8, !dbg !184
  %10 = load i64, i64* %dataLen, align 8, !dbg !185
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !184
  store i8 0, i8* %arrayidx, align 1, !dbg !186
  br label %if.end, !dbg !187

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !188
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !189
  br label %if.end12, !dbg !190

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !191

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !192

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @globalFive, align 4, !dbg !193
  %cmp15 = icmp ne i32 %12, 5, !dbg !195
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !196

if.then17:                                        ; preds = %if.end14
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !197
  br label %if.end19, !dbg !199

if.else:                                          ; preds = %if.end14
  %13 = load i8*, i8** %data, align 8, !dbg !200
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !202
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  ret void, !dbg !203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !204 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !208
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !208
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !209
  store i8* %arraydecay, i8** %data, align 8, !dbg !210
  %1 = load i32, i32* @globalFive, align 4, !dbg !211
  %cmp = icmp eq i32 %1, 5, !dbg !213
  br i1 %cmp, label %if.then, label %if.end14, !dbg !214

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !215, metadata !DIExpression()), !dbg !218
  %2 = load i8*, i8** %data, align 8, !dbg !219
  %call = call i64 @strlen(i8* %2) #6, !dbg !220
  store i64 %call, i64* %dataLen, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !221, metadata !DIExpression()), !dbg !222
  %3 = load i64, i64* %dataLen, align 8, !dbg !223
  %sub = sub i64 100, %3, !dbg !225
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !226
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !227

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !228
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !230
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !231
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !233
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !234

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !235
  %6 = load i64, i64* %dataLen, align 8, !dbg !238
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !239
  %7 = load i64, i64* %dataLen, align 8, !dbg !240
  %sub6 = sub i64 100, %7, !dbg !241
  %conv = trunc i64 %sub6 to i32, !dbg !242
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !243
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !244
  %cmp8 = icmp eq i8* %call7, null, !dbg !245
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !246

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !247
  %9 = load i8*, i8** %data, align 8, !dbg !249
  %10 = load i64, i64* %dataLen, align 8, !dbg !250
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !249
  store i8 0, i8* %arrayidx, align 1, !dbg !251
  br label %if.end, !dbg !252

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !253
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !254
  br label %if.end12, !dbg !255

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !256

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !257

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @globalFive, align 4, !dbg !258
  %cmp15 = icmp eq i32 %12, 5, !dbg !260
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !261

if.then17:                                        ; preds = %if.end14
  %13 = load i8*, i8** %data, align 8, !dbg !262
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !264
  br label %if.end19, !dbg !265

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !267 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !270, metadata !DIExpression()), !dbg !271
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !271
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !271
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !272
  store i8* %arraydecay, i8** %data, align 8, !dbg !273
  %1 = load i32, i32* @globalFive, align 4, !dbg !274
  %cmp = icmp ne i32 %1, 5, !dbg !276
  br i1 %cmp, label %if.then, label %if.else, !dbg !277

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !278
  br label %if.end, !dbg !280

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !281
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !283
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalFive, align 4, !dbg !284
  %cmp1 = icmp eq i32 %3, 5, !dbg !286
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !287

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !288
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !290
  br label %if.end4, !dbg !291

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !292
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !293 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !297
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !297
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !298
  store i8* %arraydecay, i8** %data, align 8, !dbg !299
  %1 = load i32, i32* @globalFive, align 4, !dbg !300
  %cmp = icmp eq i32 %1, 5, !dbg !302
  br i1 %cmp, label %if.then, label %if.end, !dbg !303

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !304
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !306
  br label %if.end, !dbg !307

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalFive, align 4, !dbg !308
  %cmp1 = icmp eq i32 %3, 5, !dbg !310
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !311

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !312
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !314
  br label %if.end4, !dbg !315

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_14_good() #0 !dbg !317 {
entry:
  call void @goodB2G1(), !dbg !318
  call void @goodB2G2(), !dbg !319
  call void @goodG2B1(), !dbg !320
  call void @goodG2B2(), !dbg !321
  ret void, !dbg !322
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_14.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_023/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_14_bad", scope: !1, file: !1, line: 33, type: !11, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!26 = !DILocation(line: 38, column: 18, scope: !25)
!27 = !DILocation(line: 38, column: 8, scope: !10)
!28 = !DILocalVariable(name: "dataLen", scope: !29, file: !1, line: 42, type: !31)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 40, column: 9)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 39, column: 5)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 42, column: 20, scope: !29)
!35 = !DILocation(line: 42, column: 37, scope: !29)
!36 = !DILocation(line: 42, column: 30, scope: !29)
!37 = !DILocalVariable(name: "pFile", scope: !29, file: !1, line: 43, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !40, line: 7, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !59, !61, !62, !63, !67, !69, !71, !75, !78, !80, !83, !86, !87, !88, !89, !90}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !41, file: !42, line: 51, baseType: !5, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !41, file: !42, line: 54, baseType: !14, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !41, file: !42, line: 55, baseType: !14, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !41, file: !42, line: 56, baseType: !14, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !41, file: !42, line: 57, baseType: !14, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !41, file: !42, line: 58, baseType: !14, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !41, file: !42, line: 59, baseType: !14, size: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !41, file: !42, line: 60, baseType: !14, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !41, file: !42, line: 61, baseType: !14, size: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !41, file: !42, line: 64, baseType: !14, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !41, file: !42, line: 65, baseType: !14, size: 64, offset: 640)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !41, file: !42, line: 66, baseType: !14, size: 64, offset: 704)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !41, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !42, line: 36, flags: DIFlagFwdDecl)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !41, file: !42, line: 70, baseType: !60, size: 64, offset: 832)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !41, file: !42, line: 72, baseType: !5, size: 32, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !41, file: !42, line: 73, baseType: !5, size: 32, offset: 928)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !41, file: !42, line: 74, baseType: !64, size: 64, offset: 960)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !65, line: 152, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!66 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !41, file: !42, line: 77, baseType: !68, size: 16, offset: 1024)
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !41, file: !42, line: 78, baseType: !70, size: 8, offset: 1040)
!70 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !41, file: !42, line: 79, baseType: !72, size: 8, offset: 1048)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !41, file: !42, line: 81, baseType: !76, size: 64, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !42, line: 43, baseType: null)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !41, file: !42, line: 89, baseType: !79, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !65, line: 153, baseType: !66)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !41, file: !42, line: 91, baseType: !81, size: 64, offset: 1216)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !42, line: 37, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !41, file: !42, line: 92, baseType: !84, size: 64, offset: 1280)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !42, line: 38, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !41, file: !42, line: 93, baseType: !60, size: 64, offset: 1344)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !41, file: !42, line: 94, baseType: !4, size: 64, offset: 1408)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !41, file: !42, line: 95, baseType: !31, size: 64, offset: 1472)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !41, file: !42, line: 96, baseType: !5, size: 32, offset: 1536)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !41, file: !42, line: 98, baseType: !91, size: 160, offset: 1568)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 20)
!94 = !DILocation(line: 43, column: 20, scope: !29)
!95 = !DILocation(line: 45, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !29, file: !1, line: 45, column: 17)
!97 = !DILocation(line: 45, column: 20, scope: !96)
!98 = !DILocation(line: 45, column: 29, scope: !96)
!99 = !DILocation(line: 45, column: 17, scope: !29)
!100 = !DILocation(line: 47, column: 25, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 46, column: 13)
!102 = !DILocation(line: 47, column: 23, scope: !101)
!103 = !DILocation(line: 48, column: 21, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 48, column: 21)
!105 = !DILocation(line: 48, column: 27, scope: !104)
!106 = !DILocation(line: 48, column: 21, scope: !101)
!107 = !DILocation(line: 51, column: 31, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 51, column: 25)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 49, column: 17)
!110 = !DILocation(line: 51, column: 36, scope: !108)
!111 = !DILocation(line: 51, column: 35, scope: !108)
!112 = !DILocation(line: 51, column: 55, scope: !108)
!113 = !DILocation(line: 51, column: 54, scope: !108)
!114 = !DILocation(line: 51, column: 45, scope: !108)
!115 = !DILocation(line: 51, column: 65, scope: !108)
!116 = !DILocation(line: 51, column: 25, scope: !108)
!117 = !DILocation(line: 51, column: 72, scope: !108)
!118 = !DILocation(line: 51, column: 25, scope: !109)
!119 = !DILocation(line: 53, column: 25, scope: !120)
!120 = distinct !DILexicalBlock(scope: !108, file: !1, line: 52, column: 21)
!121 = !DILocation(line: 55, column: 25, scope: !120)
!122 = !DILocation(line: 55, column: 30, scope: !120)
!123 = !DILocation(line: 55, column: 39, scope: !120)
!124 = !DILocation(line: 56, column: 21, scope: !120)
!125 = !DILocation(line: 57, column: 28, scope: !109)
!126 = !DILocation(line: 57, column: 21, scope: !109)
!127 = !DILocation(line: 58, column: 17, scope: !109)
!128 = !DILocation(line: 59, column: 13, scope: !101)
!129 = !DILocation(line: 61, column: 5, scope: !30)
!130 = !DILocation(line: 62, column: 8, scope: !131)
!131 = distinct !DILexicalBlock(scope: !10, file: !1, line: 62, column: 8)
!132 = !DILocation(line: 62, column: 18, scope: !131)
!133 = !DILocation(line: 62, column: 8, scope: !10)
!134 = !DILocation(line: 65, column: 16, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !1, line: 63, column: 5)
!136 = !DILocation(line: 65, column: 9, scope: !135)
!137 = !DILocation(line: 66, column: 5, scope: !135)
!138 = !DILocation(line: 67, column: 1, scope: !10)
!139 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 74, type: !11, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!140 = !DILocalVariable(name: "data", scope: !139, file: !1, line: 76, type: !14)
!141 = !DILocation(line: 76, column: 12, scope: !139)
!142 = !DILocalVariable(name: "dataBuffer", scope: !139, file: !1, line: 77, type: !18)
!143 = !DILocation(line: 77, column: 10, scope: !139)
!144 = !DILocation(line: 78, column: 12, scope: !139)
!145 = !DILocation(line: 78, column: 10, scope: !139)
!146 = !DILocation(line: 79, column: 8, scope: !147)
!147 = distinct !DILexicalBlock(scope: !139, file: !1, line: 79, column: 8)
!148 = !DILocation(line: 79, column: 18, scope: !147)
!149 = !DILocation(line: 79, column: 8, scope: !139)
!150 = !DILocalVariable(name: "dataLen", scope: !151, file: !1, line: 83, type: !31)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 81, column: 9)
!152 = distinct !DILexicalBlock(scope: !147, file: !1, line: 80, column: 5)
!153 = !DILocation(line: 83, column: 20, scope: !151)
!154 = !DILocation(line: 83, column: 37, scope: !151)
!155 = !DILocation(line: 83, column: 30, scope: !151)
!156 = !DILocalVariable(name: "pFile", scope: !151, file: !1, line: 84, type: !38)
!157 = !DILocation(line: 84, column: 20, scope: !151)
!158 = !DILocation(line: 86, column: 21, scope: !159)
!159 = distinct !DILexicalBlock(scope: !151, file: !1, line: 86, column: 17)
!160 = !DILocation(line: 86, column: 20, scope: !159)
!161 = !DILocation(line: 86, column: 29, scope: !159)
!162 = !DILocation(line: 86, column: 17, scope: !151)
!163 = !DILocation(line: 88, column: 25, scope: !164)
!164 = distinct !DILexicalBlock(scope: !159, file: !1, line: 87, column: 13)
!165 = !DILocation(line: 88, column: 23, scope: !164)
!166 = !DILocation(line: 89, column: 21, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !1, line: 89, column: 21)
!168 = !DILocation(line: 89, column: 27, scope: !167)
!169 = !DILocation(line: 89, column: 21, scope: !164)
!170 = !DILocation(line: 92, column: 31, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 92, column: 25)
!172 = distinct !DILexicalBlock(scope: !167, file: !1, line: 90, column: 17)
!173 = !DILocation(line: 92, column: 36, scope: !171)
!174 = !DILocation(line: 92, column: 35, scope: !171)
!175 = !DILocation(line: 92, column: 55, scope: !171)
!176 = !DILocation(line: 92, column: 54, scope: !171)
!177 = !DILocation(line: 92, column: 45, scope: !171)
!178 = !DILocation(line: 92, column: 65, scope: !171)
!179 = !DILocation(line: 92, column: 25, scope: !171)
!180 = !DILocation(line: 92, column: 72, scope: !171)
!181 = !DILocation(line: 92, column: 25, scope: !172)
!182 = !DILocation(line: 94, column: 25, scope: !183)
!183 = distinct !DILexicalBlock(scope: !171, file: !1, line: 93, column: 21)
!184 = !DILocation(line: 96, column: 25, scope: !183)
!185 = !DILocation(line: 96, column: 30, scope: !183)
!186 = !DILocation(line: 96, column: 39, scope: !183)
!187 = !DILocation(line: 97, column: 21, scope: !183)
!188 = !DILocation(line: 98, column: 28, scope: !172)
!189 = !DILocation(line: 98, column: 21, scope: !172)
!190 = !DILocation(line: 99, column: 17, scope: !172)
!191 = !DILocation(line: 100, column: 13, scope: !164)
!192 = !DILocation(line: 102, column: 5, scope: !152)
!193 = !DILocation(line: 103, column: 8, scope: !194)
!194 = distinct !DILexicalBlock(scope: !139, file: !1, line: 103, column: 8)
!195 = !DILocation(line: 103, column: 18, scope: !194)
!196 = !DILocation(line: 103, column: 8, scope: !139)
!197 = !DILocation(line: 106, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !1, line: 104, column: 5)
!199 = !DILocation(line: 107, column: 5, scope: !198)
!200 = !DILocation(line: 111, column: 24, scope: !201)
!201 = distinct !DILexicalBlock(scope: !194, file: !1, line: 109, column: 5)
!202 = !DILocation(line: 111, column: 9, scope: !201)
!203 = !DILocation(line: 113, column: 1, scope: !139)
!204 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 116, type: !11, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!205 = !DILocalVariable(name: "data", scope: !204, file: !1, line: 118, type: !14)
!206 = !DILocation(line: 118, column: 12, scope: !204)
!207 = !DILocalVariable(name: "dataBuffer", scope: !204, file: !1, line: 119, type: !18)
!208 = !DILocation(line: 119, column: 10, scope: !204)
!209 = !DILocation(line: 120, column: 12, scope: !204)
!210 = !DILocation(line: 120, column: 10, scope: !204)
!211 = !DILocation(line: 121, column: 8, scope: !212)
!212 = distinct !DILexicalBlock(scope: !204, file: !1, line: 121, column: 8)
!213 = !DILocation(line: 121, column: 18, scope: !212)
!214 = !DILocation(line: 121, column: 8, scope: !204)
!215 = !DILocalVariable(name: "dataLen", scope: !216, file: !1, line: 125, type: !31)
!216 = distinct !DILexicalBlock(scope: !217, file: !1, line: 123, column: 9)
!217 = distinct !DILexicalBlock(scope: !212, file: !1, line: 122, column: 5)
!218 = !DILocation(line: 125, column: 20, scope: !216)
!219 = !DILocation(line: 125, column: 37, scope: !216)
!220 = !DILocation(line: 125, column: 30, scope: !216)
!221 = !DILocalVariable(name: "pFile", scope: !216, file: !1, line: 126, type: !38)
!222 = !DILocation(line: 126, column: 20, scope: !216)
!223 = !DILocation(line: 128, column: 21, scope: !224)
!224 = distinct !DILexicalBlock(scope: !216, file: !1, line: 128, column: 17)
!225 = !DILocation(line: 128, column: 20, scope: !224)
!226 = !DILocation(line: 128, column: 29, scope: !224)
!227 = !DILocation(line: 128, column: 17, scope: !216)
!228 = !DILocation(line: 130, column: 25, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !1, line: 129, column: 13)
!230 = !DILocation(line: 130, column: 23, scope: !229)
!231 = !DILocation(line: 131, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !1, line: 131, column: 21)
!233 = !DILocation(line: 131, column: 27, scope: !232)
!234 = !DILocation(line: 131, column: 21, scope: !229)
!235 = !DILocation(line: 134, column: 31, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 134, column: 25)
!237 = distinct !DILexicalBlock(scope: !232, file: !1, line: 132, column: 17)
!238 = !DILocation(line: 134, column: 36, scope: !236)
!239 = !DILocation(line: 134, column: 35, scope: !236)
!240 = !DILocation(line: 134, column: 55, scope: !236)
!241 = !DILocation(line: 134, column: 54, scope: !236)
!242 = !DILocation(line: 134, column: 45, scope: !236)
!243 = !DILocation(line: 134, column: 65, scope: !236)
!244 = !DILocation(line: 134, column: 25, scope: !236)
!245 = !DILocation(line: 134, column: 72, scope: !236)
!246 = !DILocation(line: 134, column: 25, scope: !237)
!247 = !DILocation(line: 136, column: 25, scope: !248)
!248 = distinct !DILexicalBlock(scope: !236, file: !1, line: 135, column: 21)
!249 = !DILocation(line: 138, column: 25, scope: !248)
!250 = !DILocation(line: 138, column: 30, scope: !248)
!251 = !DILocation(line: 138, column: 39, scope: !248)
!252 = !DILocation(line: 139, column: 21, scope: !248)
!253 = !DILocation(line: 140, column: 28, scope: !237)
!254 = !DILocation(line: 140, column: 21, scope: !237)
!255 = !DILocation(line: 141, column: 17, scope: !237)
!256 = !DILocation(line: 142, column: 13, scope: !229)
!257 = !DILocation(line: 144, column: 5, scope: !217)
!258 = !DILocation(line: 145, column: 8, scope: !259)
!259 = distinct !DILexicalBlock(scope: !204, file: !1, line: 145, column: 8)
!260 = !DILocation(line: 145, column: 18, scope: !259)
!261 = !DILocation(line: 145, column: 8, scope: !204)
!262 = !DILocation(line: 148, column: 24, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !1, line: 146, column: 5)
!264 = !DILocation(line: 148, column: 9, scope: !263)
!265 = !DILocation(line: 149, column: 5, scope: !263)
!266 = !DILocation(line: 150, column: 1, scope: !204)
!267 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 153, type: !11, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!268 = !DILocalVariable(name: "data", scope: !267, file: !1, line: 155, type: !14)
!269 = !DILocation(line: 155, column: 12, scope: !267)
!270 = !DILocalVariable(name: "dataBuffer", scope: !267, file: !1, line: 156, type: !18)
!271 = !DILocation(line: 156, column: 10, scope: !267)
!272 = !DILocation(line: 157, column: 12, scope: !267)
!273 = !DILocation(line: 157, column: 10, scope: !267)
!274 = !DILocation(line: 158, column: 8, scope: !275)
!275 = distinct !DILexicalBlock(scope: !267, file: !1, line: 158, column: 8)
!276 = !DILocation(line: 158, column: 18, scope: !275)
!277 = !DILocation(line: 158, column: 8, scope: !267)
!278 = !DILocation(line: 161, column: 9, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !1, line: 159, column: 5)
!280 = !DILocation(line: 162, column: 5, scope: !279)
!281 = !DILocation(line: 166, column: 16, scope: !282)
!282 = distinct !DILexicalBlock(scope: !275, file: !1, line: 164, column: 5)
!283 = !DILocation(line: 166, column: 9, scope: !282)
!284 = !DILocation(line: 168, column: 8, scope: !285)
!285 = distinct !DILexicalBlock(scope: !267, file: !1, line: 168, column: 8)
!286 = !DILocation(line: 168, column: 18, scope: !285)
!287 = !DILocation(line: 168, column: 8, scope: !267)
!288 = !DILocation(line: 171, column: 16, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !1, line: 169, column: 5)
!290 = !DILocation(line: 171, column: 9, scope: !289)
!291 = !DILocation(line: 172, column: 5, scope: !289)
!292 = !DILocation(line: 173, column: 1, scope: !267)
!293 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 176, type: !11, scopeLine: 177, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!294 = !DILocalVariable(name: "data", scope: !293, file: !1, line: 178, type: !14)
!295 = !DILocation(line: 178, column: 12, scope: !293)
!296 = !DILocalVariable(name: "dataBuffer", scope: !293, file: !1, line: 179, type: !18)
!297 = !DILocation(line: 179, column: 10, scope: !293)
!298 = !DILocation(line: 180, column: 12, scope: !293)
!299 = !DILocation(line: 180, column: 10, scope: !293)
!300 = !DILocation(line: 181, column: 8, scope: !301)
!301 = distinct !DILexicalBlock(scope: !293, file: !1, line: 181, column: 8)
!302 = !DILocation(line: 181, column: 18, scope: !301)
!303 = !DILocation(line: 181, column: 8, scope: !293)
!304 = !DILocation(line: 184, column: 16, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !1, line: 182, column: 5)
!306 = !DILocation(line: 184, column: 9, scope: !305)
!307 = !DILocation(line: 185, column: 5, scope: !305)
!308 = !DILocation(line: 186, column: 8, scope: !309)
!309 = distinct !DILexicalBlock(scope: !293, file: !1, line: 186, column: 8)
!310 = !DILocation(line: 186, column: 18, scope: !309)
!311 = !DILocation(line: 186, column: 8, scope: !293)
!312 = !DILocation(line: 189, column: 16, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !1, line: 187, column: 5)
!314 = !DILocation(line: 189, column: 9, scope: !313)
!315 = !DILocation(line: 190, column: 5, scope: !313)
!316 = !DILocation(line: 191, column: 1, scope: !293)
!317 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_14_good", scope: !1, file: !1, line: 193, type: !11, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!318 = !DILocation(line: 195, column: 5, scope: !317)
!319 = !DILocation(line: 196, column: 5, scope: !317)
!320 = !DILocation(line: 197, column: 5, scope: !317)
!321 = !DILocation(line: 198, column: 5, scope: !317)
!322 = !DILocation(line: 199, column: 1, scope: !317)
