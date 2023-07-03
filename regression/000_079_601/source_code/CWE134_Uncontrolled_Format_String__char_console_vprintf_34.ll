; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_vprintf_34.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_vprintf_34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%union.CWE134_Uncontrolled_Format_String__char_console_vprintf_34_unionType = type { i8* }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !10 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !17, metadata !DIExpression()), !dbg !34
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !35
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !35
  call void @llvm.va_start(i8* %arraydecay1), !dbg !35
  %0 = load i8*, i8** %data.addr, align 8, !dbg !36
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !37
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !38
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !39
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !39
  call void @llvm.va_end(i8* %arraydecay34), !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_34_bad() #0 !dbg !41 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %dataCopy = alloca i8*, align 8
  %data19 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !46, metadata !DIExpression()), !dbg !50
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !50
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !50
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !51
  store i8* %arraydecay, i8** %data, align 8, !dbg !52
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !53, metadata !DIExpression()), !dbg !58
  %1 = load i8*, i8** %data, align 8, !dbg !59
  %call = call i64 @strlen(i8* %1) #7, !dbg !60
  store i64 %call, i64* %dataLen, align 8, !dbg !58
  %2 = load i64, i64* %dataLen, align 8, !dbg !61
  %sub = sub i64 100, %2, !dbg !63
  %cmp = icmp ugt i64 %sub, 1, !dbg !64
  br i1 %cmp, label %if.then, label %if.end18, !dbg !65

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !66
  %4 = load i64, i64* %dataLen, align 8, !dbg !69
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !70
  %5 = load i64, i64* %dataLen, align 8, !dbg !71
  %sub1 = sub i64 100, %5, !dbg !72
  %conv = trunc i64 %sub1 to i32, !dbg !73
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !74
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !75
  %cmp3 = icmp ne i8* %call2, null, !dbg !76
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !77

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !78
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !80
  store i64 %call6, i64* %dataLen, align 8, !dbg !81
  %8 = load i64, i64* %dataLen, align 8, !dbg !82
  %cmp7 = icmp ugt i64 %8, 0, !dbg !84
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !85

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !86
  %10 = load i64, i64* %dataLen, align 8, !dbg !87
  %sub9 = sub i64 %10, 1, !dbg !88
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !86
  %11 = load i8, i8* %arrayidx, align 1, !dbg !86
  %conv10 = sext i8 %11 to i32, !dbg !86
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !89
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !90

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !91
  %13 = load i64, i64* %dataLen, align 8, !dbg !93
  %sub14 = sub i64 %13, 1, !dbg !94
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !91
  store i8 0, i8* %arrayidx15, align 1, !dbg !95
  br label %if.end, !dbg !96

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !97

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !98
  %14 = load i8*, i8** %data, align 8, !dbg !100
  %15 = load i64, i64* %dataLen, align 8, !dbg !101
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !100
  store i8 0, i8* %arrayidx16, align 1, !dbg !102
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !103

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !104, metadata !DIExpression()), !dbg !106
  %16 = load i8*, i8** %data, align 8, !dbg !107
  store i8* %16, i8** %dataCopy, align 8, !dbg !106
  call void @llvm.dbg.declare(metadata i8** %data19, metadata !108, metadata !DIExpression()), !dbg !109
  %17 = load i8*, i8** %dataCopy, align 8, !dbg !110
  store i8* %17, i8** %data19, align 8, !dbg !109
  %18 = load i8*, i8** %data19, align 8, !dbg !111
  %19 = load i8*, i8** %data19, align 8, !dbg !112
  call void (i8*, ...) @badVaSink(i8* %18, i8* %19), !dbg !113
  ret void, !dbg !114
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !115 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !118, metadata !DIExpression()), !dbg !120
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !121
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !121
  call void @llvm.va_start(i8* %arraydecay1), !dbg !121
  %0 = load i8*, i8** %data.addr, align 8, !dbg !122
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !123
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !124
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !125
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !125
  call void @llvm.va_end(i8* %arraydecay34), !dbg !125
  ret void, !dbg !126
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !127 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE134_Uncontrolled_Format_String__char_console_vprintf_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata %union.CWE134_Uncontrolled_Format_String__char_console_vprintf_34_unionType* %myUnion, metadata !130, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !139
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !139
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !140
  store i8* %arraydecay, i8** %data, align 8, !dbg !141
  %1 = load i8*, i8** %data, align 8, !dbg !142
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !143
  %2 = load i8*, i8** %data, align 8, !dbg !144
  %unionFirst = bitcast %union.CWE134_Uncontrolled_Format_String__char_console_vprintf_34_unionType* %myUnion to i8**, !dbg !145
  store i8* %2, i8** %unionFirst, align 8, !dbg !146
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !147, metadata !DIExpression()), !dbg !149
  %unionSecond = bitcast %union.CWE134_Uncontrolled_Format_String__char_console_vprintf_34_unionType* %myUnion to i8**, !dbg !150
  %3 = load i8*, i8** %unionSecond, align 8, !dbg !150
  store i8* %3, i8** %data1, align 8, !dbg !149
  %4 = load i8*, i8** %data1, align 8, !dbg !151
  %5 = load i8*, i8** %data1, align 8, !dbg !152
  call void (i8*, ...) @goodG2BVaSink(i8* %4, i8* %5), !dbg !153
  ret void, !dbg !154
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !155 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !158, metadata !DIExpression()), !dbg !160
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !161
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !161
  call void @llvm.va_start(i8* %arraydecay1), !dbg !161
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !162
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !163
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !164
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !164
  call void @llvm.va_end(i8* %arraydecay34), !dbg !164
  ret void, !dbg !165
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !166 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE134_Uncontrolled_Format_String__char_console_vprintf_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %data19 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata %union.CWE134_Uncontrolled_Format_String__char_console_vprintf_34_unionType* %myUnion, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !171, metadata !DIExpression()), !dbg !172
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !172
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !172
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !173
  store i8* %arraydecay, i8** %data, align 8, !dbg !174
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !175, metadata !DIExpression()), !dbg !177
  %1 = load i8*, i8** %data, align 8, !dbg !178
  %call = call i64 @strlen(i8* %1) #7, !dbg !179
  store i64 %call, i64* %dataLen, align 8, !dbg !177
  %2 = load i64, i64* %dataLen, align 8, !dbg !180
  %sub = sub i64 100, %2, !dbg !182
  %cmp = icmp ugt i64 %sub, 1, !dbg !183
  br i1 %cmp, label %if.then, label %if.end18, !dbg !184

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !185
  %4 = load i64, i64* %dataLen, align 8, !dbg !188
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !189
  %5 = load i64, i64* %dataLen, align 8, !dbg !190
  %sub1 = sub i64 100, %5, !dbg !191
  %conv = trunc i64 %sub1 to i32, !dbg !192
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !193
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !194
  %cmp3 = icmp ne i8* %call2, null, !dbg !195
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !196

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !197
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !199
  store i64 %call6, i64* %dataLen, align 8, !dbg !200
  %8 = load i64, i64* %dataLen, align 8, !dbg !201
  %cmp7 = icmp ugt i64 %8, 0, !dbg !203
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !204

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !205
  %10 = load i64, i64* %dataLen, align 8, !dbg !206
  %sub9 = sub i64 %10, 1, !dbg !207
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !205
  %11 = load i8, i8* %arrayidx, align 1, !dbg !205
  %conv10 = sext i8 %11 to i32, !dbg !205
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !208
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !209

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !210
  %13 = load i64, i64* %dataLen, align 8, !dbg !212
  %sub14 = sub i64 %13, 1, !dbg !213
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !210
  store i8 0, i8* %arrayidx15, align 1, !dbg !214
  br label %if.end, !dbg !215

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !216

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !217
  %14 = load i8*, i8** %data, align 8, !dbg !219
  %15 = load i64, i64* %dataLen, align 8, !dbg !220
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !219
  store i8 0, i8* %arrayidx16, align 1, !dbg !221
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !222

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !223
  %unionFirst = bitcast %union.CWE134_Uncontrolled_Format_String__char_console_vprintf_34_unionType* %myUnion to i8**, !dbg !224
  store i8* %16, i8** %unionFirst, align 8, !dbg !225
  call void @llvm.dbg.declare(metadata i8** %data19, metadata !226, metadata !DIExpression()), !dbg !228
  %unionSecond = bitcast %union.CWE134_Uncontrolled_Format_String__char_console_vprintf_34_unionType* %myUnion to i8**, !dbg !229
  %17 = load i8*, i8** %unionSecond, align 8, !dbg !229
  store i8* %17, i8** %data19, align 8, !dbg !228
  %18 = load i8*, i8** %data19, align 8, !dbg !230
  %19 = load i8*, i8** %data19, align 8, !dbg !231
  call void (i8*, ...) @goodB2GVaSink(i8* %18, i8* %19), !dbg !232
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_34_good() #0 !dbg !234 {
entry:
  call void @goodG2B(), !dbg !235
  call void @goodB2G(), !dbg !236
  ret void, !dbg !237
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_vprintf_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_601/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "badVaSink", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, null}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 29, type: !13)
!16 = !DILocation(line: 29, column: 23, scope: !10)
!17 = !DILocalVariable(name: "args", scope: !18, file: !1, line: 32, type: !19)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 31, column: 5)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !20, line: 52, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !22, line: 32, baseType: !23)
!22 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 192, elements: !32)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !26)
!26 = !{!27, !29, !30, !31}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !25, file: !1, line: 32, baseType: !28, size: 32)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !25, file: !1, line: 32, baseType: !28, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !25, file: !1, line: 32, baseType: !5, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !25, file: !1, line: 32, baseType: !5, size: 64, offset: 128)
!32 = !{!33}
!33 = !DISubrange(count: 1)
!34 = !DILocation(line: 32, column: 17, scope: !18)
!35 = !DILocation(line: 33, column: 9, scope: !18)
!36 = !DILocation(line: 35, column: 17, scope: !18)
!37 = !DILocation(line: 35, column: 23, scope: !18)
!38 = !DILocation(line: 35, column: 9, scope: !18)
!39 = !DILocation(line: 36, column: 9, scope: !18)
!40 = !DILocation(line: 38, column: 1, scope: !10)
!41 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_34_bad", scope: !1, file: !1, line: 40, type: !42, scopeLine: 41, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{null}
!44 = !DILocalVariable(name: "data", scope: !41, file: !1, line: 42, type: !13)
!45 = !DILocation(line: 42, column: 12, scope: !41)
!46 = !DILocalVariable(name: "dataBuffer", scope: !41, file: !1, line: 43, type: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 100)
!50 = !DILocation(line: 43, column: 10, scope: !41)
!51 = !DILocation(line: 44, column: 12, scope: !41)
!52 = !DILocation(line: 44, column: 10, scope: !41)
!53 = !DILocalVariable(name: "dataLen", scope: !54, file: !1, line: 47, type: !55)
!54 = distinct !DILexicalBlock(scope: !41, file: !1, line: 45, column: 5)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 46, baseType: !57)
!56 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!57 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!58 = !DILocation(line: 47, column: 16, scope: !54)
!59 = !DILocation(line: 47, column: 33, scope: !54)
!60 = !DILocation(line: 47, column: 26, scope: !54)
!61 = !DILocation(line: 49, column: 17, scope: !62)
!62 = distinct !DILexicalBlock(scope: !54, file: !1, line: 49, column: 13)
!63 = !DILocation(line: 49, column: 16, scope: !62)
!64 = !DILocation(line: 49, column: 25, scope: !62)
!65 = !DILocation(line: 49, column: 13, scope: !54)
!66 = !DILocation(line: 52, column: 23, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 52, column: 17)
!68 = distinct !DILexicalBlock(scope: !62, file: !1, line: 50, column: 9)
!69 = !DILocation(line: 52, column: 28, scope: !67)
!70 = !DILocation(line: 52, column: 27, scope: !67)
!71 = !DILocation(line: 52, column: 47, scope: !67)
!72 = !DILocation(line: 52, column: 46, scope: !67)
!73 = !DILocation(line: 52, column: 37, scope: !67)
!74 = !DILocation(line: 52, column: 57, scope: !67)
!75 = !DILocation(line: 52, column: 17, scope: !67)
!76 = !DILocation(line: 52, column: 64, scope: !67)
!77 = !DILocation(line: 52, column: 17, scope: !68)
!78 = !DILocation(line: 56, column: 34, scope: !79)
!79 = distinct !DILexicalBlock(scope: !67, file: !1, line: 53, column: 13)
!80 = !DILocation(line: 56, column: 27, scope: !79)
!81 = !DILocation(line: 56, column: 25, scope: !79)
!82 = !DILocation(line: 57, column: 21, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 57, column: 21)
!84 = !DILocation(line: 57, column: 29, scope: !83)
!85 = !DILocation(line: 57, column: 33, scope: !83)
!86 = !DILocation(line: 57, column: 36, scope: !83)
!87 = !DILocation(line: 57, column: 41, scope: !83)
!88 = !DILocation(line: 57, column: 48, scope: !83)
!89 = !DILocation(line: 57, column: 52, scope: !83)
!90 = !DILocation(line: 57, column: 21, scope: !79)
!91 = !DILocation(line: 59, column: 21, scope: !92)
!92 = distinct !DILexicalBlock(scope: !83, file: !1, line: 58, column: 17)
!93 = !DILocation(line: 59, column: 26, scope: !92)
!94 = !DILocation(line: 59, column: 33, scope: !92)
!95 = !DILocation(line: 59, column: 37, scope: !92)
!96 = !DILocation(line: 60, column: 17, scope: !92)
!97 = !DILocation(line: 61, column: 13, scope: !79)
!98 = !DILocation(line: 64, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !67, file: !1, line: 63, column: 13)
!100 = !DILocation(line: 66, column: 17, scope: !99)
!101 = !DILocation(line: 66, column: 22, scope: !99)
!102 = !DILocation(line: 66, column: 31, scope: !99)
!103 = !DILocation(line: 68, column: 9, scope: !68)
!104 = !DILocalVariable(name: "dataCopy", scope: !105, file: !1, line: 71, type: !13)
!105 = distinct !DILexicalBlock(scope: !41, file: !1, line: 70, column: 5)
!106 = !DILocation(line: 71, column: 16, scope: !105)
!107 = !DILocation(line: 71, column: 27, scope: !105)
!108 = !DILocalVariable(name: "data", scope: !105, file: !1, line: 72, type: !13)
!109 = !DILocation(line: 72, column: 16, scope: !105)
!110 = !DILocation(line: 72, column: 23, scope: !105)
!111 = !DILocation(line: 73, column: 19, scope: !105)
!112 = !DILocation(line: 73, column: 25, scope: !105)
!113 = !DILocation(line: 73, column: 9, scope: !105)
!114 = !DILocation(line: 75, column: 1, scope: !41)
!115 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !1, file: !1, line: 82, type: !11, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!116 = !DILocalVariable(name: "data", arg: 1, scope: !115, file: !1, line: 82, type: !13)
!117 = !DILocation(line: 82, column: 27, scope: !115)
!118 = !DILocalVariable(name: "args", scope: !119, file: !1, line: 85, type: !19)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 84, column: 5)
!120 = !DILocation(line: 85, column: 17, scope: !119)
!121 = !DILocation(line: 86, column: 9, scope: !119)
!122 = !DILocation(line: 88, column: 17, scope: !119)
!123 = !DILocation(line: 88, column: 23, scope: !119)
!124 = !DILocation(line: 88, column: 9, scope: !119)
!125 = !DILocation(line: 89, column: 9, scope: !119)
!126 = !DILocation(line: 91, column: 1, scope: !115)
!127 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 93, type: !42, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!128 = !DILocalVariable(name: "data", scope: !127, file: !1, line: 95, type: !13)
!129 = !DILocation(line: 95, column: 12, scope: !127)
!130 = !DILocalVariable(name: "myUnion", scope: !127, file: !1, line: 96, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_34_unionType", file: !132, line: 9, baseType: !133)
!132 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_601/source_code")
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !132, line: 5, size: 64, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !133, file: !132, line: 7, baseType: !13, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !133, file: !132, line: 8, baseType: !13, size: 64)
!137 = !DILocation(line: 96, column: 74, scope: !127)
!138 = !DILocalVariable(name: "dataBuffer", scope: !127, file: !1, line: 97, type: !47)
!139 = !DILocation(line: 97, column: 10, scope: !127)
!140 = !DILocation(line: 98, column: 12, scope: !127)
!141 = !DILocation(line: 98, column: 10, scope: !127)
!142 = !DILocation(line: 100, column: 12, scope: !127)
!143 = !DILocation(line: 100, column: 5, scope: !127)
!144 = !DILocation(line: 101, column: 26, scope: !127)
!145 = !DILocation(line: 101, column: 13, scope: !127)
!146 = !DILocation(line: 101, column: 24, scope: !127)
!147 = !DILocalVariable(name: "data", scope: !148, file: !1, line: 103, type: !13)
!148 = distinct !DILexicalBlock(scope: !127, file: !1, line: 102, column: 5)
!149 = !DILocation(line: 103, column: 16, scope: !148)
!150 = !DILocation(line: 103, column: 31, scope: !148)
!151 = !DILocation(line: 104, column: 23, scope: !148)
!152 = !DILocation(line: 104, column: 29, scope: !148)
!153 = !DILocation(line: 104, column: 9, scope: !148)
!154 = !DILocation(line: 106, column: 1, scope: !127)
!155 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !1, file: !1, line: 109, type: !11, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!156 = !DILocalVariable(name: "data", arg: 1, scope: !155, file: !1, line: 109, type: !13)
!157 = !DILocation(line: 109, column: 27, scope: !155)
!158 = !DILocalVariable(name: "args", scope: !159, file: !1, line: 112, type: !19)
!159 = distinct !DILexicalBlock(scope: !155, file: !1, line: 111, column: 5)
!160 = !DILocation(line: 112, column: 17, scope: !159)
!161 = !DILocation(line: 113, column: 9, scope: !159)
!162 = !DILocation(line: 115, column: 23, scope: !159)
!163 = !DILocation(line: 115, column: 9, scope: !159)
!164 = !DILocation(line: 116, column: 9, scope: !159)
!165 = !DILocation(line: 118, column: 1, scope: !155)
!166 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 120, type: !42, scopeLine: 121, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!167 = !DILocalVariable(name: "data", scope: !166, file: !1, line: 122, type: !13)
!168 = !DILocation(line: 122, column: 12, scope: !166)
!169 = !DILocalVariable(name: "myUnion", scope: !166, file: !1, line: 123, type: !131)
!170 = !DILocation(line: 123, column: 74, scope: !166)
!171 = !DILocalVariable(name: "dataBuffer", scope: !166, file: !1, line: 124, type: !47)
!172 = !DILocation(line: 124, column: 10, scope: !166)
!173 = !DILocation(line: 125, column: 12, scope: !166)
!174 = !DILocation(line: 125, column: 10, scope: !166)
!175 = !DILocalVariable(name: "dataLen", scope: !176, file: !1, line: 128, type: !55)
!176 = distinct !DILexicalBlock(scope: !166, file: !1, line: 126, column: 5)
!177 = !DILocation(line: 128, column: 16, scope: !176)
!178 = !DILocation(line: 128, column: 33, scope: !176)
!179 = !DILocation(line: 128, column: 26, scope: !176)
!180 = !DILocation(line: 130, column: 17, scope: !181)
!181 = distinct !DILexicalBlock(scope: !176, file: !1, line: 130, column: 13)
!182 = !DILocation(line: 130, column: 16, scope: !181)
!183 = !DILocation(line: 130, column: 25, scope: !181)
!184 = !DILocation(line: 130, column: 13, scope: !176)
!185 = !DILocation(line: 133, column: 23, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 133, column: 17)
!187 = distinct !DILexicalBlock(scope: !181, file: !1, line: 131, column: 9)
!188 = !DILocation(line: 133, column: 28, scope: !186)
!189 = !DILocation(line: 133, column: 27, scope: !186)
!190 = !DILocation(line: 133, column: 47, scope: !186)
!191 = !DILocation(line: 133, column: 46, scope: !186)
!192 = !DILocation(line: 133, column: 37, scope: !186)
!193 = !DILocation(line: 133, column: 57, scope: !186)
!194 = !DILocation(line: 133, column: 17, scope: !186)
!195 = !DILocation(line: 133, column: 64, scope: !186)
!196 = !DILocation(line: 133, column: 17, scope: !187)
!197 = !DILocation(line: 137, column: 34, scope: !198)
!198 = distinct !DILexicalBlock(scope: !186, file: !1, line: 134, column: 13)
!199 = !DILocation(line: 137, column: 27, scope: !198)
!200 = !DILocation(line: 137, column: 25, scope: !198)
!201 = !DILocation(line: 138, column: 21, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 138, column: 21)
!203 = !DILocation(line: 138, column: 29, scope: !202)
!204 = !DILocation(line: 138, column: 33, scope: !202)
!205 = !DILocation(line: 138, column: 36, scope: !202)
!206 = !DILocation(line: 138, column: 41, scope: !202)
!207 = !DILocation(line: 138, column: 48, scope: !202)
!208 = !DILocation(line: 138, column: 52, scope: !202)
!209 = !DILocation(line: 138, column: 21, scope: !198)
!210 = !DILocation(line: 140, column: 21, scope: !211)
!211 = distinct !DILexicalBlock(scope: !202, file: !1, line: 139, column: 17)
!212 = !DILocation(line: 140, column: 26, scope: !211)
!213 = !DILocation(line: 140, column: 33, scope: !211)
!214 = !DILocation(line: 140, column: 37, scope: !211)
!215 = !DILocation(line: 141, column: 17, scope: !211)
!216 = !DILocation(line: 142, column: 13, scope: !198)
!217 = !DILocation(line: 145, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !186, file: !1, line: 144, column: 13)
!219 = !DILocation(line: 147, column: 17, scope: !218)
!220 = !DILocation(line: 147, column: 22, scope: !218)
!221 = !DILocation(line: 147, column: 31, scope: !218)
!222 = !DILocation(line: 149, column: 9, scope: !187)
!223 = !DILocation(line: 151, column: 26, scope: !166)
!224 = !DILocation(line: 151, column: 13, scope: !166)
!225 = !DILocation(line: 151, column: 24, scope: !166)
!226 = !DILocalVariable(name: "data", scope: !227, file: !1, line: 153, type: !13)
!227 = distinct !DILexicalBlock(scope: !166, file: !1, line: 152, column: 5)
!228 = !DILocation(line: 153, column: 16, scope: !227)
!229 = !DILocation(line: 153, column: 31, scope: !227)
!230 = !DILocation(line: 154, column: 23, scope: !227)
!231 = !DILocation(line: 154, column: 29, scope: !227)
!232 = !DILocation(line: 154, column: 9, scope: !227)
!233 = !DILocation(line: 156, column: 1, scope: !166)
!234 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_34_good", scope: !1, file: !1, line: 158, type: !42, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!235 = !DILocation(line: 160, column: 5, scope: !234)
!236 = !DILocation(line: 161, column: 5, scope: !234)
!237 = !DILocation(line: 162, column: 1, scope: !234)
