; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_08.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_08.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsTrue() #0 !dbg !10 {
entry:
  ret i32 1, !dbg !13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsFalse() #0 !dbg !14 {
entry:
  ret i32 0, !dbg !15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_08_bad() #0 !dbg !16 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !19, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !23, metadata !DIExpression()), !dbg !27
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !27
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !28
  store i8* %arraydecay, i8** %data, align 8, !dbg !29
  %call = call i32 @staticReturnsTrue(), !dbg !30
  %tobool = icmp ne i32 %call, 0, !dbg !30
  br i1 %tobool, label %if.then, label %if.end14, !dbg !32

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !33, metadata !DIExpression()), !dbg !39
  %1 = load i8*, i8** %data, align 8, !dbg !40
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !41
  store i64 %call1, i64* %dataLen, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !42, metadata !DIExpression()), !dbg !99
  %2 = load i64, i64* %dataLen, align 8, !dbg !100
  %sub = sub i64 100, %2, !dbg !102
  %cmp = icmp ugt i64 %sub, 1, !dbg !103
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !104

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !105
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !107
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !108
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !110
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !111

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !112
  %5 = load i64, i64* %dataLen, align 8, !dbg !115
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !116
  %6 = load i64, i64* %dataLen, align 8, !dbg !117
  %sub6 = sub i64 100, %6, !dbg !118
  %conv = trunc i64 %sub6 to i32, !dbg !119
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !120
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !121
  %cmp8 = icmp eq i8* %call7, null, !dbg !122
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !123

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !124
  %8 = load i8*, i8** %data, align 8, !dbg !126
  %9 = load i64, i64* %dataLen, align 8, !dbg !127
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !126
  store i8 0, i8* %arrayidx, align 1, !dbg !128
  br label %if.end, !dbg !129

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !130
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !131
  br label %if.end12, !dbg !132

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !133

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !134

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 @staticReturnsTrue(), !dbg !135
  %tobool16 = icmp ne i32 %call15, 0, !dbg !135
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !137

if.then17:                                        ; preds = %if.end14
  %11 = load i8*, i8** %data, align 8, !dbg !138
  %call18 = call i32 (i8*, ...) @printf(i8* %11), !dbg !140
  br label %if.end19, !dbg !141

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void, !dbg !142
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
define dso_local void @goodB2G1() #0 !dbg !143 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !147
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !147
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !148
  store i8* %arraydecay, i8** %data, align 8, !dbg !149
  %call = call i32 @staticReturnsTrue(), !dbg !150
  %tobool = icmp ne i32 %call, 0, !dbg !150
  br i1 %tobool, label %if.then, label %if.end14, !dbg !152

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !153, metadata !DIExpression()), !dbg !156
  %1 = load i8*, i8** %data, align 8, !dbg !157
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !158
  store i64 %call1, i64* %dataLen, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !159, metadata !DIExpression()), !dbg !160
  %2 = load i64, i64* %dataLen, align 8, !dbg !161
  %sub = sub i64 100, %2, !dbg !163
  %cmp = icmp ugt i64 %sub, 1, !dbg !164
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !165

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !166
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !168
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !169
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !171
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !172

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !173
  %5 = load i64, i64* %dataLen, align 8, !dbg !176
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !177
  %6 = load i64, i64* %dataLen, align 8, !dbg !178
  %sub6 = sub i64 100, %6, !dbg !179
  %conv = trunc i64 %sub6 to i32, !dbg !180
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !181
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !182
  %cmp8 = icmp eq i8* %call7, null, !dbg !183
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !184

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !185
  %8 = load i8*, i8** %data, align 8, !dbg !187
  %9 = load i64, i64* %dataLen, align 8, !dbg !188
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !187
  store i8 0, i8* %arrayidx, align 1, !dbg !189
  br label %if.end, !dbg !190

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !191
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !192
  br label %if.end12, !dbg !193

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !194

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !195

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 @staticReturnsFalse(), !dbg !196
  %tobool16 = icmp ne i32 %call15, 0, !dbg !196
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !198

if.then17:                                        ; preds = %if.end14
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !199
  br label %if.end19, !dbg !201

if.else:                                          ; preds = %if.end14
  %11 = load i8*, i8** %data, align 8, !dbg !202
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %11), !dbg !204
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  ret void, !dbg !205
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !206 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !209, metadata !DIExpression()), !dbg !210
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !210
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !210
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !211
  store i8* %arraydecay, i8** %data, align 8, !dbg !212
  %call = call i32 @staticReturnsTrue(), !dbg !213
  %tobool = icmp ne i32 %call, 0, !dbg !213
  br i1 %tobool, label %if.then, label %if.end14, !dbg !215

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !216, metadata !DIExpression()), !dbg !219
  %1 = load i8*, i8** %data, align 8, !dbg !220
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !221
  store i64 %call1, i64* %dataLen, align 8, !dbg !219
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !222, metadata !DIExpression()), !dbg !223
  %2 = load i64, i64* %dataLen, align 8, !dbg !224
  %sub = sub i64 100, %2, !dbg !226
  %cmp = icmp ugt i64 %sub, 1, !dbg !227
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !228

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !229
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !231
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !232
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !234
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !235

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !236
  %5 = load i64, i64* %dataLen, align 8, !dbg !239
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !240
  %6 = load i64, i64* %dataLen, align 8, !dbg !241
  %sub6 = sub i64 100, %6, !dbg !242
  %conv = trunc i64 %sub6 to i32, !dbg !243
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !244
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !245
  %cmp8 = icmp eq i8* %call7, null, !dbg !246
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !247

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !248
  %8 = load i8*, i8** %data, align 8, !dbg !250
  %9 = load i64, i64* %dataLen, align 8, !dbg !251
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !250
  store i8 0, i8* %arrayidx, align 1, !dbg !252
  br label %if.end, !dbg !253

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !254
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !255
  br label %if.end12, !dbg !256

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !257

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !258

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 @staticReturnsTrue(), !dbg !259
  %tobool16 = icmp ne i32 %call15, 0, !dbg !259
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !261

if.then17:                                        ; preds = %if.end14
  %11 = load i8*, i8** %data, align 8, !dbg !262
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %11), !dbg !264
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
  %call = call i32 @staticReturnsFalse(), !dbg !274
  %tobool = icmp ne i32 %call, 0, !dbg !274
  br i1 %tobool, label %if.then, label %if.else, !dbg !276

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !277
  br label %if.end, !dbg !279

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !280
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !282
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @staticReturnsTrue(), !dbg !283
  %tobool3 = icmp ne i32 %call2, 0, !dbg !283
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !285

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !286
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !288
  br label %if.end6, !dbg !289

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !290
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !291 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !294, metadata !DIExpression()), !dbg !295
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !295
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !295
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !296
  store i8* %arraydecay, i8** %data, align 8, !dbg !297
  %call = call i32 @staticReturnsTrue(), !dbg !298
  %tobool = icmp ne i32 %call, 0, !dbg !298
  br i1 %tobool, label %if.then, label %if.end, !dbg !300

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !301
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !303
  br label %if.end, !dbg !304

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @staticReturnsTrue(), !dbg !305
  %tobool3 = icmp ne i32 %call2, 0, !dbg !305
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !307

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !308
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !310
  br label %if.end6, !dbg !311

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !312
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_08_good() #0 !dbg !313 {
entry:
  call void @goodB2G1(), !dbg !314
  call void @goodB2G2(), !dbg !315
  call void @goodG2B1(), !dbg !316
  call void @goodG2B2(), !dbg !317
  ret void, !dbg !318
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_017/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !1, file: !1, line: 34, type: !11, scopeLine: 35, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!5}
!13 = !DILocation(line: 36, column: 5, scope: !10)
!14 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !1, file: !1, line: 39, type: !11, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 41, column: 5, scope: !14)
!16 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_08_bad", scope: !1, file: !1, line: 46, type: !17, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !DILocalVariable(name: "data", scope: !16, file: !1, line: 48, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DILocation(line: 48, column: 12, scope: !16)
!23 = !DILocalVariable(name: "dataBuffer", scope: !16, file: !1, line: 49, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 49, column: 10, scope: !16)
!28 = !DILocation(line: 50, column: 12, scope: !16)
!29 = !DILocation(line: 50, column: 10, scope: !16)
!30 = !DILocation(line: 51, column: 8, scope: !31)
!31 = distinct !DILexicalBlock(scope: !16, file: !1, line: 51, column: 8)
!32 = !DILocation(line: 51, column: 8, scope: !16)
!33 = !DILocalVariable(name: "dataLen", scope: !34, file: !1, line: 55, type: !36)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 53, column: 9)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 52, column: 5)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 55, column: 20, scope: !34)
!40 = !DILocation(line: 55, column: 37, scope: !34)
!41 = !DILocation(line: 55, column: 30, scope: !34)
!42 = !DILocalVariable(name: "pFile", scope: !34, file: !1, line: 56, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !45, line: 7, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !64, !66, !67, !68, !72, !74, !76, !80, !83, !85, !88, !91, !92, !93, !94, !95}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !46, file: !47, line: 51, baseType: !5, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !46, file: !47, line: 54, baseType: !20, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !46, file: !47, line: 55, baseType: !20, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !46, file: !47, line: 56, baseType: !20, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !46, file: !47, line: 57, baseType: !20, size: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !46, file: !47, line: 58, baseType: !20, size: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !46, file: !47, line: 59, baseType: !20, size: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !46, file: !47, line: 60, baseType: !20, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !46, file: !47, line: 61, baseType: !20, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !46, file: !47, line: 64, baseType: !20, size: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !46, file: !47, line: 65, baseType: !20, size: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !46, file: !47, line: 66, baseType: !20, size: 64, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !46, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !47, line: 36, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !46, file: !47, line: 70, baseType: !65, size: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !46, file: !47, line: 72, baseType: !5, size: 32, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !46, file: !47, line: 73, baseType: !5, size: 32, offset: 928)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !46, file: !47, line: 74, baseType: !69, size: 64, offset: 960)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !70, line: 152, baseType: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!71 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !46, file: !47, line: 77, baseType: !73, size: 16, offset: 1024)
!73 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !46, file: !47, line: 78, baseType: !75, size: 8, offset: 1040)
!75 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !46, file: !47, line: 79, baseType: !77, size: 8, offset: 1048)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !46, file: !47, line: 81, baseType: !81, size: 64, offset: 1088)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !47, line: 43, baseType: null)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !46, file: !47, line: 89, baseType: !84, size: 64, offset: 1152)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !70, line: 153, baseType: !71)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !46, file: !47, line: 91, baseType: !86, size: 64, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !47, line: 37, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !46, file: !47, line: 92, baseType: !89, size: 64, offset: 1280)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !47, line: 38, flags: DIFlagFwdDecl)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !46, file: !47, line: 93, baseType: !65, size: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !46, file: !47, line: 94, baseType: !4, size: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !46, file: !47, line: 95, baseType: !36, size: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !46, file: !47, line: 96, baseType: !5, size: 32, offset: 1536)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !46, file: !47, line: 98, baseType: !96, size: 160, offset: 1568)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 20)
!99 = !DILocation(line: 56, column: 20, scope: !34)
!100 = !DILocation(line: 58, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !34, file: !1, line: 58, column: 17)
!102 = !DILocation(line: 58, column: 20, scope: !101)
!103 = !DILocation(line: 58, column: 29, scope: !101)
!104 = !DILocation(line: 58, column: 17, scope: !34)
!105 = !DILocation(line: 60, column: 25, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 59, column: 13)
!107 = !DILocation(line: 60, column: 23, scope: !106)
!108 = !DILocation(line: 61, column: 21, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 61, column: 21)
!110 = !DILocation(line: 61, column: 27, scope: !109)
!111 = !DILocation(line: 61, column: 21, scope: !106)
!112 = !DILocation(line: 64, column: 31, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !1, line: 64, column: 25)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 62, column: 17)
!115 = !DILocation(line: 64, column: 36, scope: !113)
!116 = !DILocation(line: 64, column: 35, scope: !113)
!117 = !DILocation(line: 64, column: 55, scope: !113)
!118 = !DILocation(line: 64, column: 54, scope: !113)
!119 = !DILocation(line: 64, column: 45, scope: !113)
!120 = !DILocation(line: 64, column: 65, scope: !113)
!121 = !DILocation(line: 64, column: 25, scope: !113)
!122 = !DILocation(line: 64, column: 72, scope: !113)
!123 = !DILocation(line: 64, column: 25, scope: !114)
!124 = !DILocation(line: 66, column: 25, scope: !125)
!125 = distinct !DILexicalBlock(scope: !113, file: !1, line: 65, column: 21)
!126 = !DILocation(line: 68, column: 25, scope: !125)
!127 = !DILocation(line: 68, column: 30, scope: !125)
!128 = !DILocation(line: 68, column: 39, scope: !125)
!129 = !DILocation(line: 69, column: 21, scope: !125)
!130 = !DILocation(line: 70, column: 28, scope: !114)
!131 = !DILocation(line: 70, column: 21, scope: !114)
!132 = !DILocation(line: 71, column: 17, scope: !114)
!133 = !DILocation(line: 72, column: 13, scope: !106)
!134 = !DILocation(line: 74, column: 5, scope: !35)
!135 = !DILocation(line: 75, column: 8, scope: !136)
!136 = distinct !DILexicalBlock(scope: !16, file: !1, line: 75, column: 8)
!137 = !DILocation(line: 75, column: 8, scope: !16)
!138 = !DILocation(line: 78, column: 16, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !1, line: 76, column: 5)
!140 = !DILocation(line: 78, column: 9, scope: !139)
!141 = !DILocation(line: 79, column: 5, scope: !139)
!142 = !DILocation(line: 80, column: 1, scope: !16)
!143 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 87, type: !17, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!144 = !DILocalVariable(name: "data", scope: !143, file: !1, line: 89, type: !20)
!145 = !DILocation(line: 89, column: 12, scope: !143)
!146 = !DILocalVariable(name: "dataBuffer", scope: !143, file: !1, line: 90, type: !24)
!147 = !DILocation(line: 90, column: 10, scope: !143)
!148 = !DILocation(line: 91, column: 12, scope: !143)
!149 = !DILocation(line: 91, column: 10, scope: !143)
!150 = !DILocation(line: 92, column: 8, scope: !151)
!151 = distinct !DILexicalBlock(scope: !143, file: !1, line: 92, column: 8)
!152 = !DILocation(line: 92, column: 8, scope: !143)
!153 = !DILocalVariable(name: "dataLen", scope: !154, file: !1, line: 96, type: !36)
!154 = distinct !DILexicalBlock(scope: !155, file: !1, line: 94, column: 9)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 93, column: 5)
!156 = !DILocation(line: 96, column: 20, scope: !154)
!157 = !DILocation(line: 96, column: 37, scope: !154)
!158 = !DILocation(line: 96, column: 30, scope: !154)
!159 = !DILocalVariable(name: "pFile", scope: !154, file: !1, line: 97, type: !43)
!160 = !DILocation(line: 97, column: 20, scope: !154)
!161 = !DILocation(line: 99, column: 21, scope: !162)
!162 = distinct !DILexicalBlock(scope: !154, file: !1, line: 99, column: 17)
!163 = !DILocation(line: 99, column: 20, scope: !162)
!164 = !DILocation(line: 99, column: 29, scope: !162)
!165 = !DILocation(line: 99, column: 17, scope: !154)
!166 = !DILocation(line: 101, column: 25, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !1, line: 100, column: 13)
!168 = !DILocation(line: 101, column: 23, scope: !167)
!169 = !DILocation(line: 102, column: 21, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !1, line: 102, column: 21)
!171 = !DILocation(line: 102, column: 27, scope: !170)
!172 = !DILocation(line: 102, column: 21, scope: !167)
!173 = !DILocation(line: 105, column: 31, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 105, column: 25)
!175 = distinct !DILexicalBlock(scope: !170, file: !1, line: 103, column: 17)
!176 = !DILocation(line: 105, column: 36, scope: !174)
!177 = !DILocation(line: 105, column: 35, scope: !174)
!178 = !DILocation(line: 105, column: 55, scope: !174)
!179 = !DILocation(line: 105, column: 54, scope: !174)
!180 = !DILocation(line: 105, column: 45, scope: !174)
!181 = !DILocation(line: 105, column: 65, scope: !174)
!182 = !DILocation(line: 105, column: 25, scope: !174)
!183 = !DILocation(line: 105, column: 72, scope: !174)
!184 = !DILocation(line: 105, column: 25, scope: !175)
!185 = !DILocation(line: 107, column: 25, scope: !186)
!186 = distinct !DILexicalBlock(scope: !174, file: !1, line: 106, column: 21)
!187 = !DILocation(line: 109, column: 25, scope: !186)
!188 = !DILocation(line: 109, column: 30, scope: !186)
!189 = !DILocation(line: 109, column: 39, scope: !186)
!190 = !DILocation(line: 110, column: 21, scope: !186)
!191 = !DILocation(line: 111, column: 28, scope: !175)
!192 = !DILocation(line: 111, column: 21, scope: !175)
!193 = !DILocation(line: 112, column: 17, scope: !175)
!194 = !DILocation(line: 113, column: 13, scope: !167)
!195 = !DILocation(line: 115, column: 5, scope: !155)
!196 = !DILocation(line: 116, column: 8, scope: !197)
!197 = distinct !DILexicalBlock(scope: !143, file: !1, line: 116, column: 8)
!198 = !DILocation(line: 116, column: 8, scope: !143)
!199 = !DILocation(line: 119, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !1, line: 117, column: 5)
!201 = !DILocation(line: 120, column: 5, scope: !200)
!202 = !DILocation(line: 124, column: 24, scope: !203)
!203 = distinct !DILexicalBlock(scope: !197, file: !1, line: 122, column: 5)
!204 = !DILocation(line: 124, column: 9, scope: !203)
!205 = !DILocation(line: 126, column: 1, scope: !143)
!206 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 129, type: !17, scopeLine: 130, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!207 = !DILocalVariable(name: "data", scope: !206, file: !1, line: 131, type: !20)
!208 = !DILocation(line: 131, column: 12, scope: !206)
!209 = !DILocalVariable(name: "dataBuffer", scope: !206, file: !1, line: 132, type: !24)
!210 = !DILocation(line: 132, column: 10, scope: !206)
!211 = !DILocation(line: 133, column: 12, scope: !206)
!212 = !DILocation(line: 133, column: 10, scope: !206)
!213 = !DILocation(line: 134, column: 8, scope: !214)
!214 = distinct !DILexicalBlock(scope: !206, file: !1, line: 134, column: 8)
!215 = !DILocation(line: 134, column: 8, scope: !206)
!216 = !DILocalVariable(name: "dataLen", scope: !217, file: !1, line: 138, type: !36)
!217 = distinct !DILexicalBlock(scope: !218, file: !1, line: 136, column: 9)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 135, column: 5)
!219 = !DILocation(line: 138, column: 20, scope: !217)
!220 = !DILocation(line: 138, column: 37, scope: !217)
!221 = !DILocation(line: 138, column: 30, scope: !217)
!222 = !DILocalVariable(name: "pFile", scope: !217, file: !1, line: 139, type: !43)
!223 = !DILocation(line: 139, column: 20, scope: !217)
!224 = !DILocation(line: 141, column: 21, scope: !225)
!225 = distinct !DILexicalBlock(scope: !217, file: !1, line: 141, column: 17)
!226 = !DILocation(line: 141, column: 20, scope: !225)
!227 = !DILocation(line: 141, column: 29, scope: !225)
!228 = !DILocation(line: 141, column: 17, scope: !217)
!229 = !DILocation(line: 143, column: 25, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !1, line: 142, column: 13)
!231 = !DILocation(line: 143, column: 23, scope: !230)
!232 = !DILocation(line: 144, column: 21, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !1, line: 144, column: 21)
!234 = !DILocation(line: 144, column: 27, scope: !233)
!235 = !DILocation(line: 144, column: 21, scope: !230)
!236 = !DILocation(line: 147, column: 31, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 147, column: 25)
!238 = distinct !DILexicalBlock(scope: !233, file: !1, line: 145, column: 17)
!239 = !DILocation(line: 147, column: 36, scope: !237)
!240 = !DILocation(line: 147, column: 35, scope: !237)
!241 = !DILocation(line: 147, column: 55, scope: !237)
!242 = !DILocation(line: 147, column: 54, scope: !237)
!243 = !DILocation(line: 147, column: 45, scope: !237)
!244 = !DILocation(line: 147, column: 65, scope: !237)
!245 = !DILocation(line: 147, column: 25, scope: !237)
!246 = !DILocation(line: 147, column: 72, scope: !237)
!247 = !DILocation(line: 147, column: 25, scope: !238)
!248 = !DILocation(line: 149, column: 25, scope: !249)
!249 = distinct !DILexicalBlock(scope: !237, file: !1, line: 148, column: 21)
!250 = !DILocation(line: 151, column: 25, scope: !249)
!251 = !DILocation(line: 151, column: 30, scope: !249)
!252 = !DILocation(line: 151, column: 39, scope: !249)
!253 = !DILocation(line: 152, column: 21, scope: !249)
!254 = !DILocation(line: 153, column: 28, scope: !238)
!255 = !DILocation(line: 153, column: 21, scope: !238)
!256 = !DILocation(line: 154, column: 17, scope: !238)
!257 = !DILocation(line: 155, column: 13, scope: !230)
!258 = !DILocation(line: 157, column: 5, scope: !218)
!259 = !DILocation(line: 158, column: 8, scope: !260)
!260 = distinct !DILexicalBlock(scope: !206, file: !1, line: 158, column: 8)
!261 = !DILocation(line: 158, column: 8, scope: !206)
!262 = !DILocation(line: 161, column: 24, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !1, line: 159, column: 5)
!264 = !DILocation(line: 161, column: 9, scope: !263)
!265 = !DILocation(line: 162, column: 5, scope: !263)
!266 = !DILocation(line: 163, column: 1, scope: !206)
!267 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 166, type: !17, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!268 = !DILocalVariable(name: "data", scope: !267, file: !1, line: 168, type: !20)
!269 = !DILocation(line: 168, column: 12, scope: !267)
!270 = !DILocalVariable(name: "dataBuffer", scope: !267, file: !1, line: 169, type: !24)
!271 = !DILocation(line: 169, column: 10, scope: !267)
!272 = !DILocation(line: 170, column: 12, scope: !267)
!273 = !DILocation(line: 170, column: 10, scope: !267)
!274 = !DILocation(line: 171, column: 8, scope: !275)
!275 = distinct !DILexicalBlock(scope: !267, file: !1, line: 171, column: 8)
!276 = !DILocation(line: 171, column: 8, scope: !267)
!277 = !DILocation(line: 174, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !1, line: 172, column: 5)
!279 = !DILocation(line: 175, column: 5, scope: !278)
!280 = !DILocation(line: 179, column: 16, scope: !281)
!281 = distinct !DILexicalBlock(scope: !275, file: !1, line: 177, column: 5)
!282 = !DILocation(line: 179, column: 9, scope: !281)
!283 = !DILocation(line: 181, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !267, file: !1, line: 181, column: 8)
!285 = !DILocation(line: 181, column: 8, scope: !267)
!286 = !DILocation(line: 184, column: 16, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !1, line: 182, column: 5)
!288 = !DILocation(line: 184, column: 9, scope: !287)
!289 = !DILocation(line: 185, column: 5, scope: !287)
!290 = !DILocation(line: 186, column: 1, scope: !267)
!291 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 189, type: !17, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!292 = !DILocalVariable(name: "data", scope: !291, file: !1, line: 191, type: !20)
!293 = !DILocation(line: 191, column: 12, scope: !291)
!294 = !DILocalVariable(name: "dataBuffer", scope: !291, file: !1, line: 192, type: !24)
!295 = !DILocation(line: 192, column: 10, scope: !291)
!296 = !DILocation(line: 193, column: 12, scope: !291)
!297 = !DILocation(line: 193, column: 10, scope: !291)
!298 = !DILocation(line: 194, column: 8, scope: !299)
!299 = distinct !DILexicalBlock(scope: !291, file: !1, line: 194, column: 8)
!300 = !DILocation(line: 194, column: 8, scope: !291)
!301 = !DILocation(line: 197, column: 16, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !1, line: 195, column: 5)
!303 = !DILocation(line: 197, column: 9, scope: !302)
!304 = !DILocation(line: 198, column: 5, scope: !302)
!305 = !DILocation(line: 199, column: 8, scope: !306)
!306 = distinct !DILexicalBlock(scope: !291, file: !1, line: 199, column: 8)
!307 = !DILocation(line: 199, column: 8, scope: !291)
!308 = !DILocation(line: 202, column: 16, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !1, line: 200, column: 5)
!310 = !DILocation(line: 202, column: 9, scope: !309)
!311 = !DILocation(line: 203, column: 5, scope: !309)
!312 = !DILocation(line: 204, column: 1, scope: !291)
!313 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_08_good", scope: !1, file: !1, line: 206, type: !17, scopeLine: 207, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!314 = !DILocation(line: 208, column: 5, scope: !313)
!315 = !DILocation(line: 209, column: 5, scope: !313)
!316 = !DILocation(line: 210, column: 5, scope: !313)
!317 = !DILocation(line: 211, column: 5, scope: !313)
!318 = !DILocation(line: 212, column: 1, scope: !313)
