; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_12.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_12_bad() #0 !dbg !10 {
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
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !24
  %tobool = icmp ne i32 %call, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.else, !dbg !26

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !27, metadata !DIExpression()), !dbg !33
  %1 = load i8*, i8** %data, align 8, !dbg !34
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !35
  store i64 %call1, i64* %dataLen, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !36, metadata !DIExpression()), !dbg !93
  %2 = load i64, i64* %dataLen, align 8, !dbg !94
  %sub = sub i64 100, %2, !dbg !96
  %cmp = icmp ugt i64 %sub, 1, !dbg !97
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !98

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !99
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !101
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !102
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !104
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !105

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !106
  %5 = load i64, i64* %dataLen, align 8, !dbg !109
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !110
  %6 = load i64, i64* %dataLen, align 8, !dbg !111
  %sub6 = sub i64 100, %6, !dbg !112
  %conv = trunc i64 %sub6 to i32, !dbg !113
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !114
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !115
  %cmp8 = icmp eq i8* %call7, null, !dbg !116
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !117

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !118
  %8 = load i8*, i8** %data, align 8, !dbg !120
  %9 = load i64, i64* %dataLen, align 8, !dbg !121
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !120
  store i8 0, i8* %arrayidx, align 1, !dbg !122
  br label %if.end, !dbg !123

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !124
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !125
  br label %if.end12, !dbg !126

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !127

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end15, !dbg !128

if.else:                                          ; preds = %entry
  %11 = load i8*, i8** %data, align 8, !dbg !129
  %call14 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !131
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end13
  %call16 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !132
  %tobool17 = icmp ne i32 %call16, 0, !dbg !132
  br i1 %tobool17, label %if.then18, label %if.else20, !dbg !134

if.then18:                                        ; preds = %if.end15
  %12 = load i8*, i8** %data, align 8, !dbg !135
  %call19 = call i32 (i8*, ...) @printf(i8* %12), !dbg !137
  br label %if.end22, !dbg !138

if.else20:                                        ; preds = %if.end15
  %13 = load i8*, i8** %data, align 8, !dbg !139
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !141
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then18
  ret void, !dbg !142
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @globalReturnsTrueOrFalse(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !143 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %dataLen14 = alloca i64, align 8
  %pFile16 = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !147
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !147
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !148
  store i8* %arraydecay, i8** %data, align 8, !dbg !149
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !150
  %tobool = icmp ne i32 %call, 0, !dbg !150
  br i1 %tobool, label %if.then, label %if.else, !dbg !152

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
  br label %if.end37, !dbg !195

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen14, metadata !196, metadata !DIExpression()), !dbg !199
  %11 = load i8*, i8** %data, align 8, !dbg !200
  %call15 = call i64 @strlen(i8* %11) #6, !dbg !201
  store i64 %call15, i64* %dataLen14, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile16, metadata !202, metadata !DIExpression()), !dbg !203
  %12 = load i64, i64* %dataLen14, align 8, !dbg !204
  %sub17 = sub i64 100, %12, !dbg !206
  %cmp18 = icmp ugt i64 %sub17, 1, !dbg !207
  br i1 %cmp18, label %if.then20, label %if.end36, !dbg !208

if.then20:                                        ; preds = %if.else
  %call21 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !209
  store %struct._IO_FILE* %call21, %struct._IO_FILE** %pFile16, align 8, !dbg !211
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile16, align 8, !dbg !212
  %cmp22 = icmp ne %struct._IO_FILE* %13, null, !dbg !214
  br i1 %cmp22, label %if.then24, label %if.end35, !dbg !215

if.then24:                                        ; preds = %if.then20
  %14 = load i8*, i8** %data, align 8, !dbg !216
  %15 = load i64, i64* %dataLen14, align 8, !dbg !219
  %add.ptr25 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !220
  %16 = load i64, i64* %dataLen14, align 8, !dbg !221
  %sub26 = sub i64 100, %16, !dbg !222
  %conv27 = trunc i64 %sub26 to i32, !dbg !223
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile16, align 8, !dbg !224
  %call28 = call i8* @fgets(i8* %add.ptr25, i32 %conv27, %struct._IO_FILE* %17), !dbg !225
  %cmp29 = icmp eq i8* %call28, null, !dbg !226
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !227

if.then31:                                        ; preds = %if.then24
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !228
  %18 = load i8*, i8** %data, align 8, !dbg !230
  %19 = load i64, i64* %dataLen14, align 8, !dbg !231
  %arrayidx32 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !230
  store i8 0, i8* %arrayidx32, align 1, !dbg !232
  br label %if.end33, !dbg !233

if.end33:                                         ; preds = %if.then31, %if.then24
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile16, align 8, !dbg !234
  %call34 = call i32 @fclose(%struct._IO_FILE* %20), !dbg !235
  br label %if.end35, !dbg !236

if.end35:                                         ; preds = %if.end33, %if.then20
  br label %if.end36, !dbg !237

if.end36:                                         ; preds = %if.end35, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end13
  %call38 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !238
  %tobool39 = icmp ne i32 %call38, 0, !dbg !238
  br i1 %tobool39, label %if.then40, label %if.else42, !dbg !240

if.then40:                                        ; preds = %if.end37
  %21 = load i8*, i8** %data, align 8, !dbg !241
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %21), !dbg !243
  br label %if.end44, !dbg !244

if.else42:                                        ; preds = %if.end37
  %22 = load i8*, i8** %data, align 8, !dbg !245
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %22), !dbg !247
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.then40
  ret void, !dbg !248
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !249 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !252, metadata !DIExpression()), !dbg !253
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !253
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !253
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !254
  store i8* %arraydecay, i8** %data, align 8, !dbg !255
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !256
  %tobool = icmp ne i32 %call, 0, !dbg !256
  br i1 %tobool, label %if.then, label %if.else, !dbg !258

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !259
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !261
  br label %if.end, !dbg !262

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !263
  %call2 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !265
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !266
  %tobool4 = icmp ne i32 %call3, 0, !dbg !266
  br i1 %tobool4, label %if.then5, label %if.else7, !dbg !268

if.then5:                                         ; preds = %if.end
  %3 = load i8*, i8** %data, align 8, !dbg !269
  %call6 = call i32 (i8*, ...) @printf(i8* %3), !dbg !271
  br label %if.end9, !dbg !272

if.else7:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !273
  %call8 = call i32 (i8*, ...) @printf(i8* %4), !dbg !275
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then5
  ret void, !dbg !276
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_12_good() #0 !dbg !277 {
entry:
  call void @goodB2G(), !dbg !278
  call void @goodG2B(), !dbg !279
  ret void, !dbg !280
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_021/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_12_bad", scope: !1, file: !1, line: 33, type: !11, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!129 = !DILocation(line: 65, column: 16, scope: !130)
!130 = distinct !DILexicalBlock(scope: !25, file: !1, line: 63, column: 5)
!131 = !DILocation(line: 65, column: 9, scope: !130)
!132 = !DILocation(line: 67, column: 8, scope: !133)
!133 = distinct !DILexicalBlock(scope: !10, file: !1, line: 67, column: 8)
!134 = !DILocation(line: 67, column: 8, scope: !10)
!135 = !DILocation(line: 70, column: 16, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 68, column: 5)
!137 = !DILocation(line: 70, column: 9, scope: !136)
!138 = !DILocation(line: 71, column: 5, scope: !136)
!139 = !DILocation(line: 75, column: 24, scope: !140)
!140 = distinct !DILexicalBlock(scope: !133, file: !1, line: 73, column: 5)
!141 = !DILocation(line: 75, column: 9, scope: !140)
!142 = !DILocation(line: 77, column: 1, scope: !10)
!143 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 86, type: !11, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!144 = !DILocalVariable(name: "data", scope: !143, file: !1, line: 88, type: !14)
!145 = !DILocation(line: 88, column: 12, scope: !143)
!146 = !DILocalVariable(name: "dataBuffer", scope: !143, file: !1, line: 89, type: !18)
!147 = !DILocation(line: 89, column: 10, scope: !143)
!148 = !DILocation(line: 90, column: 12, scope: !143)
!149 = !DILocation(line: 90, column: 10, scope: !143)
!150 = !DILocation(line: 91, column: 8, scope: !151)
!151 = distinct !DILexicalBlock(scope: !143, file: !1, line: 91, column: 8)
!152 = !DILocation(line: 91, column: 8, scope: !143)
!153 = !DILocalVariable(name: "dataLen", scope: !154, file: !1, line: 95, type: !30)
!154 = distinct !DILexicalBlock(scope: !155, file: !1, line: 93, column: 9)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 92, column: 5)
!156 = !DILocation(line: 95, column: 20, scope: !154)
!157 = !DILocation(line: 95, column: 37, scope: !154)
!158 = !DILocation(line: 95, column: 30, scope: !154)
!159 = !DILocalVariable(name: "pFile", scope: !154, file: !1, line: 96, type: !37)
!160 = !DILocation(line: 96, column: 20, scope: !154)
!161 = !DILocation(line: 98, column: 21, scope: !162)
!162 = distinct !DILexicalBlock(scope: !154, file: !1, line: 98, column: 17)
!163 = !DILocation(line: 98, column: 20, scope: !162)
!164 = !DILocation(line: 98, column: 29, scope: !162)
!165 = !DILocation(line: 98, column: 17, scope: !154)
!166 = !DILocation(line: 100, column: 25, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !1, line: 99, column: 13)
!168 = !DILocation(line: 100, column: 23, scope: !167)
!169 = !DILocation(line: 101, column: 21, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !1, line: 101, column: 21)
!171 = !DILocation(line: 101, column: 27, scope: !170)
!172 = !DILocation(line: 101, column: 21, scope: !167)
!173 = !DILocation(line: 104, column: 31, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 104, column: 25)
!175 = distinct !DILexicalBlock(scope: !170, file: !1, line: 102, column: 17)
!176 = !DILocation(line: 104, column: 36, scope: !174)
!177 = !DILocation(line: 104, column: 35, scope: !174)
!178 = !DILocation(line: 104, column: 55, scope: !174)
!179 = !DILocation(line: 104, column: 54, scope: !174)
!180 = !DILocation(line: 104, column: 45, scope: !174)
!181 = !DILocation(line: 104, column: 65, scope: !174)
!182 = !DILocation(line: 104, column: 25, scope: !174)
!183 = !DILocation(line: 104, column: 72, scope: !174)
!184 = !DILocation(line: 104, column: 25, scope: !175)
!185 = !DILocation(line: 106, column: 25, scope: !186)
!186 = distinct !DILexicalBlock(scope: !174, file: !1, line: 105, column: 21)
!187 = !DILocation(line: 108, column: 25, scope: !186)
!188 = !DILocation(line: 108, column: 30, scope: !186)
!189 = !DILocation(line: 108, column: 39, scope: !186)
!190 = !DILocation(line: 109, column: 21, scope: !186)
!191 = !DILocation(line: 110, column: 28, scope: !175)
!192 = !DILocation(line: 110, column: 21, scope: !175)
!193 = !DILocation(line: 111, column: 17, scope: !175)
!194 = !DILocation(line: 112, column: 13, scope: !167)
!195 = !DILocation(line: 114, column: 5, scope: !155)
!196 = !DILocalVariable(name: "dataLen", scope: !197, file: !1, line: 119, type: !30)
!197 = distinct !DILexicalBlock(scope: !198, file: !1, line: 117, column: 9)
!198 = distinct !DILexicalBlock(scope: !151, file: !1, line: 116, column: 5)
!199 = !DILocation(line: 119, column: 20, scope: !197)
!200 = !DILocation(line: 119, column: 37, scope: !197)
!201 = !DILocation(line: 119, column: 30, scope: !197)
!202 = !DILocalVariable(name: "pFile", scope: !197, file: !1, line: 120, type: !37)
!203 = !DILocation(line: 120, column: 20, scope: !197)
!204 = !DILocation(line: 122, column: 21, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !1, line: 122, column: 17)
!206 = !DILocation(line: 122, column: 20, scope: !205)
!207 = !DILocation(line: 122, column: 29, scope: !205)
!208 = !DILocation(line: 122, column: 17, scope: !197)
!209 = !DILocation(line: 124, column: 25, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !1, line: 123, column: 13)
!211 = !DILocation(line: 124, column: 23, scope: !210)
!212 = !DILocation(line: 125, column: 21, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !1, line: 125, column: 21)
!214 = !DILocation(line: 125, column: 27, scope: !213)
!215 = !DILocation(line: 125, column: 21, scope: !210)
!216 = !DILocation(line: 128, column: 31, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !1, line: 128, column: 25)
!218 = distinct !DILexicalBlock(scope: !213, file: !1, line: 126, column: 17)
!219 = !DILocation(line: 128, column: 36, scope: !217)
!220 = !DILocation(line: 128, column: 35, scope: !217)
!221 = !DILocation(line: 128, column: 55, scope: !217)
!222 = !DILocation(line: 128, column: 54, scope: !217)
!223 = !DILocation(line: 128, column: 45, scope: !217)
!224 = !DILocation(line: 128, column: 65, scope: !217)
!225 = !DILocation(line: 128, column: 25, scope: !217)
!226 = !DILocation(line: 128, column: 72, scope: !217)
!227 = !DILocation(line: 128, column: 25, scope: !218)
!228 = !DILocation(line: 130, column: 25, scope: !229)
!229 = distinct !DILexicalBlock(scope: !217, file: !1, line: 129, column: 21)
!230 = !DILocation(line: 132, column: 25, scope: !229)
!231 = !DILocation(line: 132, column: 30, scope: !229)
!232 = !DILocation(line: 132, column: 39, scope: !229)
!233 = !DILocation(line: 133, column: 21, scope: !229)
!234 = !DILocation(line: 134, column: 28, scope: !218)
!235 = !DILocation(line: 134, column: 21, scope: !218)
!236 = !DILocation(line: 135, column: 17, scope: !218)
!237 = !DILocation(line: 136, column: 13, scope: !210)
!238 = !DILocation(line: 139, column: 8, scope: !239)
!239 = distinct !DILexicalBlock(scope: !143, file: !1, line: 139, column: 8)
!240 = !DILocation(line: 139, column: 8, scope: !143)
!241 = !DILocation(line: 142, column: 24, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !1, line: 140, column: 5)
!243 = !DILocation(line: 142, column: 9, scope: !242)
!244 = !DILocation(line: 143, column: 5, scope: !242)
!245 = !DILocation(line: 147, column: 24, scope: !246)
!246 = distinct !DILexicalBlock(scope: !239, file: !1, line: 145, column: 5)
!247 = !DILocation(line: 147, column: 9, scope: !246)
!248 = !DILocation(line: 149, column: 1, scope: !143)
!249 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 154, type: !11, scopeLine: 155, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!250 = !DILocalVariable(name: "data", scope: !249, file: !1, line: 156, type: !14)
!251 = !DILocation(line: 156, column: 12, scope: !249)
!252 = !DILocalVariable(name: "dataBuffer", scope: !249, file: !1, line: 157, type: !18)
!253 = !DILocation(line: 157, column: 10, scope: !249)
!254 = !DILocation(line: 158, column: 12, scope: !249)
!255 = !DILocation(line: 158, column: 10, scope: !249)
!256 = !DILocation(line: 159, column: 8, scope: !257)
!257 = distinct !DILexicalBlock(scope: !249, file: !1, line: 159, column: 8)
!258 = !DILocation(line: 159, column: 8, scope: !249)
!259 = !DILocation(line: 162, column: 16, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !1, line: 160, column: 5)
!261 = !DILocation(line: 162, column: 9, scope: !260)
!262 = !DILocation(line: 163, column: 5, scope: !260)
!263 = !DILocation(line: 167, column: 16, scope: !264)
!264 = distinct !DILexicalBlock(scope: !257, file: !1, line: 165, column: 5)
!265 = !DILocation(line: 167, column: 9, scope: !264)
!266 = !DILocation(line: 169, column: 8, scope: !267)
!267 = distinct !DILexicalBlock(scope: !249, file: !1, line: 169, column: 8)
!268 = !DILocation(line: 169, column: 8, scope: !249)
!269 = !DILocation(line: 172, column: 16, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !1, line: 170, column: 5)
!271 = !DILocation(line: 172, column: 9, scope: !270)
!272 = !DILocation(line: 173, column: 5, scope: !270)
!273 = !DILocation(line: 177, column: 16, scope: !274)
!274 = distinct !DILexicalBlock(scope: !267, file: !1, line: 175, column: 5)
!275 = !DILocation(line: 177, column: 9, scope: !274)
!276 = !DILocation(line: 179, column: 1, scope: !249)
!277 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_12_good", scope: !1, file: !1, line: 181, type: !11, scopeLine: 182, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!278 = !DILocation(line: 183, column: 5, scope: !277)
!279 = !DILocation(line: 184, column: 5, scope: !277)
!280 = !DILocation(line: 185, column: 1, scope: !277)
