; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_07.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_07.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@staticFive = dso_local global i32 5, align 4, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_07_bad() #0 !dbg !13 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !16, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !20, metadata !DIExpression()), !dbg !24
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !24
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !24
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !25
  store i8* %arraydecay, i8** %data, align 8, !dbg !26
  %1 = load i32, i32* @staticFive, align 4, !dbg !27
  %cmp = icmp eq i32 %1, 5, !dbg !29
  br i1 %cmp, label %if.then, label %if.end14, !dbg !30

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !31, metadata !DIExpression()), !dbg !37
  %2 = load i8*, i8** %data, align 8, !dbg !38
  %call = call i64 @strlen(i8* %2) #6, !dbg !39
  store i64 %call, i64* %dataLen, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !40, metadata !DIExpression()), !dbg !97
  %3 = load i64, i64* %dataLen, align 8, !dbg !98
  %sub = sub i64 100, %3, !dbg !100
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !101
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !102

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !103
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !105
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !106
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !108
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !109

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !110
  %6 = load i64, i64* %dataLen, align 8, !dbg !113
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !114
  %7 = load i64, i64* %dataLen, align 8, !dbg !115
  %sub6 = sub i64 100, %7, !dbg !116
  %conv = trunc i64 %sub6 to i32, !dbg !117
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !118
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !119
  %cmp8 = icmp eq i8* %call7, null, !dbg !120
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !121

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !122
  %9 = load i8*, i8** %data, align 8, !dbg !124
  %10 = load i64, i64* %dataLen, align 8, !dbg !125
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !124
  store i8 0, i8* %arrayidx, align 1, !dbg !126
  br label %if.end, !dbg !127

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !128
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !129
  br label %if.end12, !dbg !130

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !131

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !132

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @staticFive, align 4, !dbg !133
  %cmp15 = icmp eq i32 %12, 5, !dbg !135
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !136

if.then17:                                        ; preds = %if.end14
  %13 = load i8*, i8** %data, align 8, !dbg !137
  %call18 = call i32 (i8*, ...) @printf(i8* %13), !dbg !139
  br label %if.end19, !dbg !140

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void, !dbg !141
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
define dso_local void @goodB2G1() #0 !dbg !142 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !145, metadata !DIExpression()), !dbg !146
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !146
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !146
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !147
  store i8* %arraydecay, i8** %data, align 8, !dbg !148
  %1 = load i32, i32* @staticFive, align 4, !dbg !149
  %cmp = icmp eq i32 %1, 5, !dbg !151
  br i1 %cmp, label %if.then, label %if.end14, !dbg !152

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !153, metadata !DIExpression()), !dbg !156
  %2 = load i8*, i8** %data, align 8, !dbg !157
  %call = call i64 @strlen(i8* %2) #6, !dbg !158
  store i64 %call, i64* %dataLen, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !159, metadata !DIExpression()), !dbg !160
  %3 = load i64, i64* %dataLen, align 8, !dbg !161
  %sub = sub i64 100, %3, !dbg !163
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !164
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !165

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !166
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !168
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !169
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !171
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !172

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !173
  %6 = load i64, i64* %dataLen, align 8, !dbg !176
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !177
  %7 = load i64, i64* %dataLen, align 8, !dbg !178
  %sub6 = sub i64 100, %7, !dbg !179
  %conv = trunc i64 %sub6 to i32, !dbg !180
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !181
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !182
  %cmp8 = icmp eq i8* %call7, null, !dbg !183
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !184

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !185
  %9 = load i8*, i8** %data, align 8, !dbg !187
  %10 = load i64, i64* %dataLen, align 8, !dbg !188
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !187
  store i8 0, i8* %arrayidx, align 1, !dbg !189
  br label %if.end, !dbg !190

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !191
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !192
  br label %if.end12, !dbg !193

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !194

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !195

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @staticFive, align 4, !dbg !196
  %cmp15 = icmp ne i32 %12, 5, !dbg !198
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !199

if.then17:                                        ; preds = %if.end14
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !200
  br label %if.end19, !dbg !202

if.else:                                          ; preds = %if.end14
  %13 = load i8*, i8** %data, align 8, !dbg !203
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !205
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  ret void, !dbg !206
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !207 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !210, metadata !DIExpression()), !dbg !211
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !211
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !211
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !212
  store i8* %arraydecay, i8** %data, align 8, !dbg !213
  %1 = load i32, i32* @staticFive, align 4, !dbg !214
  %cmp = icmp eq i32 %1, 5, !dbg !216
  br i1 %cmp, label %if.then, label %if.end14, !dbg !217

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !218, metadata !DIExpression()), !dbg !221
  %2 = load i8*, i8** %data, align 8, !dbg !222
  %call = call i64 @strlen(i8* %2) #6, !dbg !223
  store i64 %call, i64* %dataLen, align 8, !dbg !221
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !224, metadata !DIExpression()), !dbg !225
  %3 = load i64, i64* %dataLen, align 8, !dbg !226
  %sub = sub i64 100, %3, !dbg !228
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !229
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !230

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !231
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !233
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !234
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !236
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !237

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !238
  %6 = load i64, i64* %dataLen, align 8, !dbg !241
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !242
  %7 = load i64, i64* %dataLen, align 8, !dbg !243
  %sub6 = sub i64 100, %7, !dbg !244
  %conv = trunc i64 %sub6 to i32, !dbg !245
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !246
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !247
  %cmp8 = icmp eq i8* %call7, null, !dbg !248
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !249

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !250
  %9 = load i8*, i8** %data, align 8, !dbg !252
  %10 = load i64, i64* %dataLen, align 8, !dbg !253
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !252
  store i8 0, i8* %arrayidx, align 1, !dbg !254
  br label %if.end, !dbg !255

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !256
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !257
  br label %if.end12, !dbg !258

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !259

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !260

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @staticFive, align 4, !dbg !261
  %cmp15 = icmp eq i32 %12, 5, !dbg !263
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !264

if.then17:                                        ; preds = %if.end14
  %13 = load i8*, i8** %data, align 8, !dbg !265
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !267
  br label %if.end19, !dbg !268

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void, !dbg !269
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !270 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !274
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !274
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !275
  store i8* %arraydecay, i8** %data, align 8, !dbg !276
  %1 = load i32, i32* @staticFive, align 4, !dbg !277
  %cmp = icmp ne i32 %1, 5, !dbg !279
  br i1 %cmp, label %if.then, label %if.else, !dbg !280

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !281
  br label %if.end, !dbg !283

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !284
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !286
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @staticFive, align 4, !dbg !287
  %cmp1 = icmp eq i32 %3, 5, !dbg !289
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !290

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !291
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !293
  br label %if.end4, !dbg !294

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !295
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !296 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !300
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !300
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !301
  store i8* %arraydecay, i8** %data, align 8, !dbg !302
  %1 = load i32, i32* @staticFive, align 4, !dbg !303
  %cmp = icmp eq i32 %1, 5, !dbg !305
  br i1 %cmp, label %if.then, label %if.end, !dbg !306

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !307
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !309
  br label %if.end, !dbg !310

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @staticFive, align 4, !dbg !311
  %cmp1 = icmp eq i32 %3, 5, !dbg !313
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !314

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !315
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !317
  br label %if.end4, !dbg !318

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_07_good() #0 !dbg !320 {
entry:
  call void @goodB2G1(), !dbg !321
  call void @goodB2G2(), !dbg !322
  call void @goodG2B1(), !dbg !323
  call void @goodG2B2(), !dbg !324
  ret void, !dbg !325
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
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticFive", scope: !2, file: !3, line: 34, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_07.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_016/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0}
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 12.0.0"}
!13 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_07_bad", scope: !3, file: !3, line: 38, type: !14, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{null}
!16 = !DILocalVariable(name: "data", scope: !13, file: !3, line: 40, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DILocation(line: 40, column: 12, scope: !13)
!20 = !DILocalVariable(name: "dataBuffer", scope: !13, file: !3, line: 41, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 800, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 100)
!24 = !DILocation(line: 41, column: 10, scope: !13)
!25 = !DILocation(line: 42, column: 12, scope: !13)
!26 = !DILocation(line: 42, column: 10, scope: !13)
!27 = !DILocation(line: 43, column: 8, scope: !28)
!28 = distinct !DILexicalBlock(scope: !13, file: !3, line: 43, column: 8)
!29 = !DILocation(line: 43, column: 18, scope: !28)
!30 = !DILocation(line: 43, column: 8, scope: !13)
!31 = !DILocalVariable(name: "dataLen", scope: !32, file: !3, line: 47, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !3, line: 45, column: 9)
!33 = distinct !DILexicalBlock(scope: !28, file: !3, line: 44, column: 5)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 47, column: 20, scope: !32)
!38 = !DILocation(line: 47, column: 37, scope: !32)
!39 = !DILocation(line: 47, column: 30, scope: !32)
!40 = !DILocalVariable(name: "pFile", scope: !32, file: !3, line: 48, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !43, line: 7, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !45, line: 49, size: 1728, elements: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !62, !64, !65, !66, !70, !72, !74, !78, !81, !83, !86, !89, !90, !91, !92, !93}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !44, file: !45, line: 51, baseType: !7, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !44, file: !45, line: 54, baseType: !17, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !44, file: !45, line: 55, baseType: !17, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !44, file: !45, line: 56, baseType: !17, size: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !44, file: !45, line: 57, baseType: !17, size: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !44, file: !45, line: 58, baseType: !17, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !44, file: !45, line: 59, baseType: !17, size: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !44, file: !45, line: 60, baseType: !17, size: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !44, file: !45, line: 61, baseType: !17, size: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !44, file: !45, line: 64, baseType: !17, size: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !44, file: !45, line: 65, baseType: !17, size: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !44, file: !45, line: 66, baseType: !17, size: 64, offset: 704)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !44, file: !45, line: 68, baseType: !60, size: 64, offset: 768)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !45, line: 36, flags: DIFlagFwdDecl)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !44, file: !45, line: 70, baseType: !63, size: 64, offset: 832)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !44, file: !45, line: 72, baseType: !7, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !44, file: !45, line: 73, baseType: !7, size: 32, offset: 928)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !44, file: !45, line: 74, baseType: !67, size: 64, offset: 960)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !68, line: 152, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!69 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !44, file: !45, line: 77, baseType: !71, size: 16, offset: 1024)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !44, file: !45, line: 78, baseType: !73, size: 8, offset: 1040)
!73 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !44, file: !45, line: 79, baseType: !75, size: 8, offset: 1048)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !44, file: !45, line: 81, baseType: !79, size: 64, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !45, line: 43, baseType: null)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !44, file: !45, line: 89, baseType: !82, size: 64, offset: 1152)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !68, line: 153, baseType: !69)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !44, file: !45, line: 91, baseType: !84, size: 64, offset: 1216)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !45, line: 37, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !44, file: !45, line: 92, baseType: !87, size: 64, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !45, line: 38, flags: DIFlagFwdDecl)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !44, file: !45, line: 93, baseType: !63, size: 64, offset: 1344)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !44, file: !45, line: 94, baseType: !6, size: 64, offset: 1408)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !44, file: !45, line: 95, baseType: !34, size: 64, offset: 1472)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !44, file: !45, line: 96, baseType: !7, size: 32, offset: 1536)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !44, file: !45, line: 98, baseType: !94, size: 160, offset: 1568)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 20)
!97 = !DILocation(line: 48, column: 20, scope: !32)
!98 = !DILocation(line: 50, column: 21, scope: !99)
!99 = distinct !DILexicalBlock(scope: !32, file: !3, line: 50, column: 17)
!100 = !DILocation(line: 50, column: 20, scope: !99)
!101 = !DILocation(line: 50, column: 29, scope: !99)
!102 = !DILocation(line: 50, column: 17, scope: !32)
!103 = !DILocation(line: 52, column: 25, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !3, line: 51, column: 13)
!105 = !DILocation(line: 52, column: 23, scope: !104)
!106 = !DILocation(line: 53, column: 21, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !3, line: 53, column: 21)
!108 = !DILocation(line: 53, column: 27, scope: !107)
!109 = !DILocation(line: 53, column: 21, scope: !104)
!110 = !DILocation(line: 56, column: 31, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !3, line: 56, column: 25)
!112 = distinct !DILexicalBlock(scope: !107, file: !3, line: 54, column: 17)
!113 = !DILocation(line: 56, column: 36, scope: !111)
!114 = !DILocation(line: 56, column: 35, scope: !111)
!115 = !DILocation(line: 56, column: 55, scope: !111)
!116 = !DILocation(line: 56, column: 54, scope: !111)
!117 = !DILocation(line: 56, column: 45, scope: !111)
!118 = !DILocation(line: 56, column: 65, scope: !111)
!119 = !DILocation(line: 56, column: 25, scope: !111)
!120 = !DILocation(line: 56, column: 72, scope: !111)
!121 = !DILocation(line: 56, column: 25, scope: !112)
!122 = !DILocation(line: 58, column: 25, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !3, line: 57, column: 21)
!124 = !DILocation(line: 60, column: 25, scope: !123)
!125 = !DILocation(line: 60, column: 30, scope: !123)
!126 = !DILocation(line: 60, column: 39, scope: !123)
!127 = !DILocation(line: 61, column: 21, scope: !123)
!128 = !DILocation(line: 62, column: 28, scope: !112)
!129 = !DILocation(line: 62, column: 21, scope: !112)
!130 = !DILocation(line: 63, column: 17, scope: !112)
!131 = !DILocation(line: 64, column: 13, scope: !104)
!132 = !DILocation(line: 66, column: 5, scope: !33)
!133 = !DILocation(line: 67, column: 8, scope: !134)
!134 = distinct !DILexicalBlock(scope: !13, file: !3, line: 67, column: 8)
!135 = !DILocation(line: 67, column: 18, scope: !134)
!136 = !DILocation(line: 67, column: 8, scope: !13)
!137 = !DILocation(line: 70, column: 16, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !3, line: 68, column: 5)
!139 = !DILocation(line: 70, column: 9, scope: !138)
!140 = !DILocation(line: 71, column: 5, scope: !138)
!141 = !DILocation(line: 72, column: 1, scope: !13)
!142 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 79, type: !14, scopeLine: 80, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!143 = !DILocalVariable(name: "data", scope: !142, file: !3, line: 81, type: !17)
!144 = !DILocation(line: 81, column: 12, scope: !142)
!145 = !DILocalVariable(name: "dataBuffer", scope: !142, file: !3, line: 82, type: !21)
!146 = !DILocation(line: 82, column: 10, scope: !142)
!147 = !DILocation(line: 83, column: 12, scope: !142)
!148 = !DILocation(line: 83, column: 10, scope: !142)
!149 = !DILocation(line: 84, column: 8, scope: !150)
!150 = distinct !DILexicalBlock(scope: !142, file: !3, line: 84, column: 8)
!151 = !DILocation(line: 84, column: 18, scope: !150)
!152 = !DILocation(line: 84, column: 8, scope: !142)
!153 = !DILocalVariable(name: "dataLen", scope: !154, file: !3, line: 88, type: !34)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 86, column: 9)
!155 = distinct !DILexicalBlock(scope: !150, file: !3, line: 85, column: 5)
!156 = !DILocation(line: 88, column: 20, scope: !154)
!157 = !DILocation(line: 88, column: 37, scope: !154)
!158 = !DILocation(line: 88, column: 30, scope: !154)
!159 = !DILocalVariable(name: "pFile", scope: !154, file: !3, line: 89, type: !41)
!160 = !DILocation(line: 89, column: 20, scope: !154)
!161 = !DILocation(line: 91, column: 21, scope: !162)
!162 = distinct !DILexicalBlock(scope: !154, file: !3, line: 91, column: 17)
!163 = !DILocation(line: 91, column: 20, scope: !162)
!164 = !DILocation(line: 91, column: 29, scope: !162)
!165 = !DILocation(line: 91, column: 17, scope: !154)
!166 = !DILocation(line: 93, column: 25, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !3, line: 92, column: 13)
!168 = !DILocation(line: 93, column: 23, scope: !167)
!169 = !DILocation(line: 94, column: 21, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !3, line: 94, column: 21)
!171 = !DILocation(line: 94, column: 27, scope: !170)
!172 = !DILocation(line: 94, column: 21, scope: !167)
!173 = !DILocation(line: 97, column: 31, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 97, column: 25)
!175 = distinct !DILexicalBlock(scope: !170, file: !3, line: 95, column: 17)
!176 = !DILocation(line: 97, column: 36, scope: !174)
!177 = !DILocation(line: 97, column: 35, scope: !174)
!178 = !DILocation(line: 97, column: 55, scope: !174)
!179 = !DILocation(line: 97, column: 54, scope: !174)
!180 = !DILocation(line: 97, column: 45, scope: !174)
!181 = !DILocation(line: 97, column: 65, scope: !174)
!182 = !DILocation(line: 97, column: 25, scope: !174)
!183 = !DILocation(line: 97, column: 72, scope: !174)
!184 = !DILocation(line: 97, column: 25, scope: !175)
!185 = !DILocation(line: 99, column: 25, scope: !186)
!186 = distinct !DILexicalBlock(scope: !174, file: !3, line: 98, column: 21)
!187 = !DILocation(line: 101, column: 25, scope: !186)
!188 = !DILocation(line: 101, column: 30, scope: !186)
!189 = !DILocation(line: 101, column: 39, scope: !186)
!190 = !DILocation(line: 102, column: 21, scope: !186)
!191 = !DILocation(line: 103, column: 28, scope: !175)
!192 = !DILocation(line: 103, column: 21, scope: !175)
!193 = !DILocation(line: 104, column: 17, scope: !175)
!194 = !DILocation(line: 105, column: 13, scope: !167)
!195 = !DILocation(line: 107, column: 5, scope: !155)
!196 = !DILocation(line: 108, column: 8, scope: !197)
!197 = distinct !DILexicalBlock(scope: !142, file: !3, line: 108, column: 8)
!198 = !DILocation(line: 108, column: 18, scope: !197)
!199 = !DILocation(line: 108, column: 8, scope: !142)
!200 = !DILocation(line: 111, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !3, line: 109, column: 5)
!202 = !DILocation(line: 112, column: 5, scope: !201)
!203 = !DILocation(line: 116, column: 24, scope: !204)
!204 = distinct !DILexicalBlock(scope: !197, file: !3, line: 114, column: 5)
!205 = !DILocation(line: 116, column: 9, scope: !204)
!206 = !DILocation(line: 118, column: 1, scope: !142)
!207 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 121, type: !14, scopeLine: 122, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!208 = !DILocalVariable(name: "data", scope: !207, file: !3, line: 123, type: !17)
!209 = !DILocation(line: 123, column: 12, scope: !207)
!210 = !DILocalVariable(name: "dataBuffer", scope: !207, file: !3, line: 124, type: !21)
!211 = !DILocation(line: 124, column: 10, scope: !207)
!212 = !DILocation(line: 125, column: 12, scope: !207)
!213 = !DILocation(line: 125, column: 10, scope: !207)
!214 = !DILocation(line: 126, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !207, file: !3, line: 126, column: 8)
!216 = !DILocation(line: 126, column: 18, scope: !215)
!217 = !DILocation(line: 126, column: 8, scope: !207)
!218 = !DILocalVariable(name: "dataLen", scope: !219, file: !3, line: 130, type: !34)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 128, column: 9)
!220 = distinct !DILexicalBlock(scope: !215, file: !3, line: 127, column: 5)
!221 = !DILocation(line: 130, column: 20, scope: !219)
!222 = !DILocation(line: 130, column: 37, scope: !219)
!223 = !DILocation(line: 130, column: 30, scope: !219)
!224 = !DILocalVariable(name: "pFile", scope: !219, file: !3, line: 131, type: !41)
!225 = !DILocation(line: 131, column: 20, scope: !219)
!226 = !DILocation(line: 133, column: 21, scope: !227)
!227 = distinct !DILexicalBlock(scope: !219, file: !3, line: 133, column: 17)
!228 = !DILocation(line: 133, column: 20, scope: !227)
!229 = !DILocation(line: 133, column: 29, scope: !227)
!230 = !DILocation(line: 133, column: 17, scope: !219)
!231 = !DILocation(line: 135, column: 25, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !3, line: 134, column: 13)
!233 = !DILocation(line: 135, column: 23, scope: !232)
!234 = !DILocation(line: 136, column: 21, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !3, line: 136, column: 21)
!236 = !DILocation(line: 136, column: 27, scope: !235)
!237 = !DILocation(line: 136, column: 21, scope: !232)
!238 = !DILocation(line: 139, column: 31, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !3, line: 139, column: 25)
!240 = distinct !DILexicalBlock(scope: !235, file: !3, line: 137, column: 17)
!241 = !DILocation(line: 139, column: 36, scope: !239)
!242 = !DILocation(line: 139, column: 35, scope: !239)
!243 = !DILocation(line: 139, column: 55, scope: !239)
!244 = !DILocation(line: 139, column: 54, scope: !239)
!245 = !DILocation(line: 139, column: 45, scope: !239)
!246 = !DILocation(line: 139, column: 65, scope: !239)
!247 = !DILocation(line: 139, column: 25, scope: !239)
!248 = !DILocation(line: 139, column: 72, scope: !239)
!249 = !DILocation(line: 139, column: 25, scope: !240)
!250 = !DILocation(line: 141, column: 25, scope: !251)
!251 = distinct !DILexicalBlock(scope: !239, file: !3, line: 140, column: 21)
!252 = !DILocation(line: 143, column: 25, scope: !251)
!253 = !DILocation(line: 143, column: 30, scope: !251)
!254 = !DILocation(line: 143, column: 39, scope: !251)
!255 = !DILocation(line: 144, column: 21, scope: !251)
!256 = !DILocation(line: 145, column: 28, scope: !240)
!257 = !DILocation(line: 145, column: 21, scope: !240)
!258 = !DILocation(line: 146, column: 17, scope: !240)
!259 = !DILocation(line: 147, column: 13, scope: !232)
!260 = !DILocation(line: 149, column: 5, scope: !220)
!261 = !DILocation(line: 150, column: 8, scope: !262)
!262 = distinct !DILexicalBlock(scope: !207, file: !3, line: 150, column: 8)
!263 = !DILocation(line: 150, column: 18, scope: !262)
!264 = !DILocation(line: 150, column: 8, scope: !207)
!265 = !DILocation(line: 153, column: 24, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !3, line: 151, column: 5)
!267 = !DILocation(line: 153, column: 9, scope: !266)
!268 = !DILocation(line: 154, column: 5, scope: !266)
!269 = !DILocation(line: 155, column: 1, scope: !207)
!270 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 158, type: !14, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!271 = !DILocalVariable(name: "data", scope: !270, file: !3, line: 160, type: !17)
!272 = !DILocation(line: 160, column: 12, scope: !270)
!273 = !DILocalVariable(name: "dataBuffer", scope: !270, file: !3, line: 161, type: !21)
!274 = !DILocation(line: 161, column: 10, scope: !270)
!275 = !DILocation(line: 162, column: 12, scope: !270)
!276 = !DILocation(line: 162, column: 10, scope: !270)
!277 = !DILocation(line: 163, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !270, file: !3, line: 163, column: 8)
!279 = !DILocation(line: 163, column: 18, scope: !278)
!280 = !DILocation(line: 163, column: 8, scope: !270)
!281 = !DILocation(line: 166, column: 9, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !3, line: 164, column: 5)
!283 = !DILocation(line: 167, column: 5, scope: !282)
!284 = !DILocation(line: 171, column: 16, scope: !285)
!285 = distinct !DILexicalBlock(scope: !278, file: !3, line: 169, column: 5)
!286 = !DILocation(line: 171, column: 9, scope: !285)
!287 = !DILocation(line: 173, column: 8, scope: !288)
!288 = distinct !DILexicalBlock(scope: !270, file: !3, line: 173, column: 8)
!289 = !DILocation(line: 173, column: 18, scope: !288)
!290 = !DILocation(line: 173, column: 8, scope: !270)
!291 = !DILocation(line: 176, column: 16, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !3, line: 174, column: 5)
!293 = !DILocation(line: 176, column: 9, scope: !292)
!294 = !DILocation(line: 177, column: 5, scope: !292)
!295 = !DILocation(line: 178, column: 1, scope: !270)
!296 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 181, type: !14, scopeLine: 182, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!297 = !DILocalVariable(name: "data", scope: !296, file: !3, line: 183, type: !17)
!298 = !DILocation(line: 183, column: 12, scope: !296)
!299 = !DILocalVariable(name: "dataBuffer", scope: !296, file: !3, line: 184, type: !21)
!300 = !DILocation(line: 184, column: 10, scope: !296)
!301 = !DILocation(line: 185, column: 12, scope: !296)
!302 = !DILocation(line: 185, column: 10, scope: !296)
!303 = !DILocation(line: 186, column: 8, scope: !304)
!304 = distinct !DILexicalBlock(scope: !296, file: !3, line: 186, column: 8)
!305 = !DILocation(line: 186, column: 18, scope: !304)
!306 = !DILocation(line: 186, column: 8, scope: !296)
!307 = !DILocation(line: 189, column: 16, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !3, line: 187, column: 5)
!309 = !DILocation(line: 189, column: 9, scope: !308)
!310 = !DILocation(line: 190, column: 5, scope: !308)
!311 = !DILocation(line: 191, column: 8, scope: !312)
!312 = distinct !DILexicalBlock(scope: !296, file: !3, line: 191, column: 8)
!313 = !DILocation(line: 191, column: 18, scope: !312)
!314 = !DILocation(line: 191, column: 8, scope: !296)
!315 = !DILocation(line: 194, column: 16, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !3, line: 192, column: 5)
!317 = !DILocation(line: 194, column: 9, scope: !316)
!318 = !DILocation(line: 195, column: 5, scope: !316)
!319 = !DILocation(line: 196, column: 1, scope: !296)
!320 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_07_good", scope: !3, file: !3, line: 198, type: !14, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!321 = !DILocation(line: 200, column: 5, scope: !320)
!322 = !DILocation(line: 201, column: 5, scope: !320)
!323 = !DILocation(line: 202, column: 5, scope: !320)
!324 = !DILocation(line: 203, column: 5, scope: !320)
!325 = !DILocation(line: 204, column: 1, scope: !320)
