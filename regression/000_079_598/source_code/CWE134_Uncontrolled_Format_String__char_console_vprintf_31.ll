; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_vprintf_31.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_vprintf_31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_31_bad() #0 !dbg !41 {
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
  %dataBuffer = alloca [100 x i8], align 16
  %dataCopy = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !131
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !132
  store i8* %arraydecay, i8** %data, align 8, !dbg !133
  %1 = load i8*, i8** %data, align 8, !dbg !134
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !135
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !136, metadata !DIExpression()), !dbg !138
  %2 = load i8*, i8** %data, align 8, !dbg !139
  store i8* %2, i8** %dataCopy, align 8, !dbg !138
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !140, metadata !DIExpression()), !dbg !141
  %3 = load i8*, i8** %dataCopy, align 8, !dbg !142
  store i8* %3, i8** %data1, align 8, !dbg !141
  %4 = load i8*, i8** %data1, align 8, !dbg !143
  %5 = load i8*, i8** %data1, align 8, !dbg !144
  call void (i8*, ...) @goodG2BVaSink(i8* %4, i8* %5), !dbg !145
  ret void, !dbg !146
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !147 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !150, metadata !DIExpression()), !dbg !152
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !153
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !153
  call void @llvm.va_start(i8* %arraydecay1), !dbg !153
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !154
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !155
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !156
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !156
  call void @llvm.va_end(i8* %arraydecay34), !dbg !156
  ret void, !dbg !157
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !158 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %dataCopy = alloca i8*, align 8
  %data19 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !162
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !162
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !163
  store i8* %arraydecay, i8** %data, align 8, !dbg !164
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !165, metadata !DIExpression()), !dbg !167
  %1 = load i8*, i8** %data, align 8, !dbg !168
  %call = call i64 @strlen(i8* %1) #7, !dbg !169
  store i64 %call, i64* %dataLen, align 8, !dbg !167
  %2 = load i64, i64* %dataLen, align 8, !dbg !170
  %sub = sub i64 100, %2, !dbg !172
  %cmp = icmp ugt i64 %sub, 1, !dbg !173
  br i1 %cmp, label %if.then, label %if.end18, !dbg !174

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !175
  %4 = load i64, i64* %dataLen, align 8, !dbg !178
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !179
  %5 = load i64, i64* %dataLen, align 8, !dbg !180
  %sub1 = sub i64 100, %5, !dbg !181
  %conv = trunc i64 %sub1 to i32, !dbg !182
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !183
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !184
  %cmp3 = icmp ne i8* %call2, null, !dbg !185
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !186

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !187
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !189
  store i64 %call6, i64* %dataLen, align 8, !dbg !190
  %8 = load i64, i64* %dataLen, align 8, !dbg !191
  %cmp7 = icmp ugt i64 %8, 0, !dbg !193
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !194

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !195
  %10 = load i64, i64* %dataLen, align 8, !dbg !196
  %sub9 = sub i64 %10, 1, !dbg !197
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !195
  %11 = load i8, i8* %arrayidx, align 1, !dbg !195
  %conv10 = sext i8 %11 to i32, !dbg !195
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !198
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !199

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !200
  %13 = load i64, i64* %dataLen, align 8, !dbg !202
  %sub14 = sub i64 %13, 1, !dbg !203
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !200
  store i8 0, i8* %arrayidx15, align 1, !dbg !204
  br label %if.end, !dbg !205

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !206

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !207
  %14 = load i8*, i8** %data, align 8, !dbg !209
  %15 = load i64, i64* %dataLen, align 8, !dbg !210
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !209
  store i8 0, i8* %arrayidx16, align 1, !dbg !211
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !212

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !213, metadata !DIExpression()), !dbg !215
  %16 = load i8*, i8** %data, align 8, !dbg !216
  store i8* %16, i8** %dataCopy, align 8, !dbg !215
  call void @llvm.dbg.declare(metadata i8** %data19, metadata !217, metadata !DIExpression()), !dbg !218
  %17 = load i8*, i8** %dataCopy, align 8, !dbg !219
  store i8* %17, i8** %data19, align 8, !dbg !218
  %18 = load i8*, i8** %data19, align 8, !dbg !220
  %19 = load i8*, i8** %data19, align 8, !dbg !221
  call void (i8*, ...) @goodB2GVaSink(i8* %18, i8* %19), !dbg !222
  ret void, !dbg !223
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_31_good() #0 !dbg !224 {
entry:
  call void @goodG2B(), !dbg !225
  call void @goodB2G(), !dbg !226
  ret void, !dbg !227
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_vprintf_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_598/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "badVaSink", scope: !1, file: !1, line: 28, type: !11, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, null}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 28, type: !13)
!16 = !DILocation(line: 28, column: 23, scope: !10)
!17 = !DILocalVariable(name: "args", scope: !18, file: !1, line: 31, type: !19)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 30, column: 5)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !20, line: 52, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !22, line: 32, baseType: !23)
!22 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 192, elements: !32)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !26)
!26 = !{!27, !29, !30, !31}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !25, file: !1, line: 31, baseType: !28, size: 32)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !25, file: !1, line: 31, baseType: !28, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !25, file: !1, line: 31, baseType: !5, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !25, file: !1, line: 31, baseType: !5, size: 64, offset: 128)
!32 = !{!33}
!33 = !DISubrange(count: 1)
!34 = !DILocation(line: 31, column: 17, scope: !18)
!35 = !DILocation(line: 32, column: 9, scope: !18)
!36 = !DILocation(line: 34, column: 17, scope: !18)
!37 = !DILocation(line: 34, column: 23, scope: !18)
!38 = !DILocation(line: 34, column: 9, scope: !18)
!39 = !DILocation(line: 35, column: 9, scope: !18)
!40 = !DILocation(line: 37, column: 1, scope: !10)
!41 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_31_bad", scope: !1, file: !1, line: 39, type: !42, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{null}
!44 = !DILocalVariable(name: "data", scope: !41, file: !1, line: 41, type: !13)
!45 = !DILocation(line: 41, column: 12, scope: !41)
!46 = !DILocalVariable(name: "dataBuffer", scope: !41, file: !1, line: 42, type: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 100)
!50 = !DILocation(line: 42, column: 10, scope: !41)
!51 = !DILocation(line: 43, column: 12, scope: !41)
!52 = !DILocation(line: 43, column: 10, scope: !41)
!53 = !DILocalVariable(name: "dataLen", scope: !54, file: !1, line: 46, type: !55)
!54 = distinct !DILexicalBlock(scope: !41, file: !1, line: 44, column: 5)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 46, baseType: !57)
!56 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!57 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!58 = !DILocation(line: 46, column: 16, scope: !54)
!59 = !DILocation(line: 46, column: 33, scope: !54)
!60 = !DILocation(line: 46, column: 26, scope: !54)
!61 = !DILocation(line: 48, column: 17, scope: !62)
!62 = distinct !DILexicalBlock(scope: !54, file: !1, line: 48, column: 13)
!63 = !DILocation(line: 48, column: 16, scope: !62)
!64 = !DILocation(line: 48, column: 25, scope: !62)
!65 = !DILocation(line: 48, column: 13, scope: !54)
!66 = !DILocation(line: 51, column: 23, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 51, column: 17)
!68 = distinct !DILexicalBlock(scope: !62, file: !1, line: 49, column: 9)
!69 = !DILocation(line: 51, column: 28, scope: !67)
!70 = !DILocation(line: 51, column: 27, scope: !67)
!71 = !DILocation(line: 51, column: 47, scope: !67)
!72 = !DILocation(line: 51, column: 46, scope: !67)
!73 = !DILocation(line: 51, column: 37, scope: !67)
!74 = !DILocation(line: 51, column: 57, scope: !67)
!75 = !DILocation(line: 51, column: 17, scope: !67)
!76 = !DILocation(line: 51, column: 64, scope: !67)
!77 = !DILocation(line: 51, column: 17, scope: !68)
!78 = !DILocation(line: 55, column: 34, scope: !79)
!79 = distinct !DILexicalBlock(scope: !67, file: !1, line: 52, column: 13)
!80 = !DILocation(line: 55, column: 27, scope: !79)
!81 = !DILocation(line: 55, column: 25, scope: !79)
!82 = !DILocation(line: 56, column: 21, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 56, column: 21)
!84 = !DILocation(line: 56, column: 29, scope: !83)
!85 = !DILocation(line: 56, column: 33, scope: !83)
!86 = !DILocation(line: 56, column: 36, scope: !83)
!87 = !DILocation(line: 56, column: 41, scope: !83)
!88 = !DILocation(line: 56, column: 48, scope: !83)
!89 = !DILocation(line: 56, column: 52, scope: !83)
!90 = !DILocation(line: 56, column: 21, scope: !79)
!91 = !DILocation(line: 58, column: 21, scope: !92)
!92 = distinct !DILexicalBlock(scope: !83, file: !1, line: 57, column: 17)
!93 = !DILocation(line: 58, column: 26, scope: !92)
!94 = !DILocation(line: 58, column: 33, scope: !92)
!95 = !DILocation(line: 58, column: 37, scope: !92)
!96 = !DILocation(line: 59, column: 17, scope: !92)
!97 = !DILocation(line: 60, column: 13, scope: !79)
!98 = !DILocation(line: 63, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !67, file: !1, line: 62, column: 13)
!100 = !DILocation(line: 65, column: 17, scope: !99)
!101 = !DILocation(line: 65, column: 22, scope: !99)
!102 = !DILocation(line: 65, column: 31, scope: !99)
!103 = !DILocation(line: 67, column: 9, scope: !68)
!104 = !DILocalVariable(name: "dataCopy", scope: !105, file: !1, line: 70, type: !13)
!105 = distinct !DILexicalBlock(scope: !41, file: !1, line: 69, column: 5)
!106 = !DILocation(line: 70, column: 16, scope: !105)
!107 = !DILocation(line: 70, column: 27, scope: !105)
!108 = !DILocalVariable(name: "data", scope: !105, file: !1, line: 71, type: !13)
!109 = !DILocation(line: 71, column: 16, scope: !105)
!110 = !DILocation(line: 71, column: 23, scope: !105)
!111 = !DILocation(line: 72, column: 19, scope: !105)
!112 = !DILocation(line: 72, column: 25, scope: !105)
!113 = !DILocation(line: 72, column: 9, scope: !105)
!114 = !DILocation(line: 74, column: 1, scope: !41)
!115 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !1, file: !1, line: 81, type: !11, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!116 = !DILocalVariable(name: "data", arg: 1, scope: !115, file: !1, line: 81, type: !13)
!117 = !DILocation(line: 81, column: 27, scope: !115)
!118 = !DILocalVariable(name: "args", scope: !119, file: !1, line: 84, type: !19)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 83, column: 5)
!120 = !DILocation(line: 84, column: 17, scope: !119)
!121 = !DILocation(line: 85, column: 9, scope: !119)
!122 = !DILocation(line: 87, column: 17, scope: !119)
!123 = !DILocation(line: 87, column: 23, scope: !119)
!124 = !DILocation(line: 87, column: 9, scope: !119)
!125 = !DILocation(line: 88, column: 9, scope: !119)
!126 = !DILocation(line: 90, column: 1, scope: !115)
!127 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 92, type: !42, scopeLine: 93, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!128 = !DILocalVariable(name: "data", scope: !127, file: !1, line: 94, type: !13)
!129 = !DILocation(line: 94, column: 12, scope: !127)
!130 = !DILocalVariable(name: "dataBuffer", scope: !127, file: !1, line: 95, type: !47)
!131 = !DILocation(line: 95, column: 10, scope: !127)
!132 = !DILocation(line: 96, column: 12, scope: !127)
!133 = !DILocation(line: 96, column: 10, scope: !127)
!134 = !DILocation(line: 98, column: 12, scope: !127)
!135 = !DILocation(line: 98, column: 5, scope: !127)
!136 = !DILocalVariable(name: "dataCopy", scope: !137, file: !1, line: 100, type: !13)
!137 = distinct !DILexicalBlock(scope: !127, file: !1, line: 99, column: 5)
!138 = !DILocation(line: 100, column: 16, scope: !137)
!139 = !DILocation(line: 100, column: 27, scope: !137)
!140 = !DILocalVariable(name: "data", scope: !137, file: !1, line: 101, type: !13)
!141 = !DILocation(line: 101, column: 16, scope: !137)
!142 = !DILocation(line: 101, column: 23, scope: !137)
!143 = !DILocation(line: 102, column: 23, scope: !137)
!144 = !DILocation(line: 102, column: 29, scope: !137)
!145 = !DILocation(line: 102, column: 9, scope: !137)
!146 = !DILocation(line: 104, column: 1, scope: !127)
!147 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !1, file: !1, line: 107, type: !11, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!148 = !DILocalVariable(name: "data", arg: 1, scope: !147, file: !1, line: 107, type: !13)
!149 = !DILocation(line: 107, column: 27, scope: !147)
!150 = !DILocalVariable(name: "args", scope: !151, file: !1, line: 110, type: !19)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 109, column: 5)
!152 = !DILocation(line: 110, column: 17, scope: !151)
!153 = !DILocation(line: 111, column: 9, scope: !151)
!154 = !DILocation(line: 113, column: 23, scope: !151)
!155 = !DILocation(line: 113, column: 9, scope: !151)
!156 = !DILocation(line: 114, column: 9, scope: !151)
!157 = !DILocation(line: 116, column: 1, scope: !147)
!158 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 118, type: !42, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!159 = !DILocalVariable(name: "data", scope: !158, file: !1, line: 120, type: !13)
!160 = !DILocation(line: 120, column: 12, scope: !158)
!161 = !DILocalVariable(name: "dataBuffer", scope: !158, file: !1, line: 121, type: !47)
!162 = !DILocation(line: 121, column: 10, scope: !158)
!163 = !DILocation(line: 122, column: 12, scope: !158)
!164 = !DILocation(line: 122, column: 10, scope: !158)
!165 = !DILocalVariable(name: "dataLen", scope: !166, file: !1, line: 125, type: !55)
!166 = distinct !DILexicalBlock(scope: !158, file: !1, line: 123, column: 5)
!167 = !DILocation(line: 125, column: 16, scope: !166)
!168 = !DILocation(line: 125, column: 33, scope: !166)
!169 = !DILocation(line: 125, column: 26, scope: !166)
!170 = !DILocation(line: 127, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !1, line: 127, column: 13)
!172 = !DILocation(line: 127, column: 16, scope: !171)
!173 = !DILocation(line: 127, column: 25, scope: !171)
!174 = !DILocation(line: 127, column: 13, scope: !166)
!175 = !DILocation(line: 130, column: 23, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !1, line: 130, column: 17)
!177 = distinct !DILexicalBlock(scope: !171, file: !1, line: 128, column: 9)
!178 = !DILocation(line: 130, column: 28, scope: !176)
!179 = !DILocation(line: 130, column: 27, scope: !176)
!180 = !DILocation(line: 130, column: 47, scope: !176)
!181 = !DILocation(line: 130, column: 46, scope: !176)
!182 = !DILocation(line: 130, column: 37, scope: !176)
!183 = !DILocation(line: 130, column: 57, scope: !176)
!184 = !DILocation(line: 130, column: 17, scope: !176)
!185 = !DILocation(line: 130, column: 64, scope: !176)
!186 = !DILocation(line: 130, column: 17, scope: !177)
!187 = !DILocation(line: 134, column: 34, scope: !188)
!188 = distinct !DILexicalBlock(scope: !176, file: !1, line: 131, column: 13)
!189 = !DILocation(line: 134, column: 27, scope: !188)
!190 = !DILocation(line: 134, column: 25, scope: !188)
!191 = !DILocation(line: 135, column: 21, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 135, column: 21)
!193 = !DILocation(line: 135, column: 29, scope: !192)
!194 = !DILocation(line: 135, column: 33, scope: !192)
!195 = !DILocation(line: 135, column: 36, scope: !192)
!196 = !DILocation(line: 135, column: 41, scope: !192)
!197 = !DILocation(line: 135, column: 48, scope: !192)
!198 = !DILocation(line: 135, column: 52, scope: !192)
!199 = !DILocation(line: 135, column: 21, scope: !188)
!200 = !DILocation(line: 137, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !192, file: !1, line: 136, column: 17)
!202 = !DILocation(line: 137, column: 26, scope: !201)
!203 = !DILocation(line: 137, column: 33, scope: !201)
!204 = !DILocation(line: 137, column: 37, scope: !201)
!205 = !DILocation(line: 138, column: 17, scope: !201)
!206 = !DILocation(line: 139, column: 13, scope: !188)
!207 = !DILocation(line: 142, column: 17, scope: !208)
!208 = distinct !DILexicalBlock(scope: !176, file: !1, line: 141, column: 13)
!209 = !DILocation(line: 144, column: 17, scope: !208)
!210 = !DILocation(line: 144, column: 22, scope: !208)
!211 = !DILocation(line: 144, column: 31, scope: !208)
!212 = !DILocation(line: 146, column: 9, scope: !177)
!213 = !DILocalVariable(name: "dataCopy", scope: !214, file: !1, line: 149, type: !13)
!214 = distinct !DILexicalBlock(scope: !158, file: !1, line: 148, column: 5)
!215 = !DILocation(line: 149, column: 16, scope: !214)
!216 = !DILocation(line: 149, column: 27, scope: !214)
!217 = !DILocalVariable(name: "data", scope: !214, file: !1, line: 150, type: !13)
!218 = !DILocation(line: 150, column: 16, scope: !214)
!219 = !DILocation(line: 150, column: 23, scope: !214)
!220 = !DILocation(line: 151, column: 23, scope: !214)
!221 = !DILocation(line: 151, column: 29, scope: !214)
!222 = !DILocation(line: 151, column: 9, scope: !214)
!223 = !DILocation(line: 153, column: 1, scope: !158)
!224 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_31_good", scope: !1, file: !1, line: 155, type: !42, scopeLine: 156, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!225 = !DILocation(line: 157, column: 5, scope: !224)
!226 = !DILocation(line: 158, column: 5, scope: !224)
!227 = !DILocation(line: 159, column: 1, scope: !224)
