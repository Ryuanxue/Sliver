; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_vprintf_45.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_vprintf_45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@CWE134_Uncontrolled_Format_String__char_console_vprintf_45_badData = dso_local global i8* null, align 8, !dbg !0
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodG2BData = dso_local global i8* null, align 8, !dbg !9
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodB2GData = dso_local global i8* null, align 8, !dbg !13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !19 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !24, metadata !DIExpression()), !dbg !41
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !42
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !42
  call void @llvm.va_start(i8* %arraydecay1), !dbg !42
  %0 = load i8*, i8** %data.addr, align 8, !dbg !43
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !44
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !45
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !46
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !46
  call void @llvm.va_end(i8* %arraydecay34), !dbg !46
  ret void, !dbg !47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink() #0 !dbg !48 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !51, metadata !DIExpression()), !dbg !52
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_badData, align 8, !dbg !53
  store i8* %0, i8** %data, align 8, !dbg !52
  %1 = load i8*, i8** %data, align 8, !dbg !54
  %2 = load i8*, i8** %data, align 8, !dbg !55
  call void (i8*, ...) @badVaSink(i8* %1, i8* %2), !dbg !56
  ret void, !dbg !57
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_bad() #0 !dbg !58 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !61, metadata !DIExpression()), !dbg !65
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !66
  store i8* %arraydecay, i8** %data, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !68, metadata !DIExpression()), !dbg !73
  %1 = load i8*, i8** %data, align 8, !dbg !74
  %call = call i64 @strlen(i8* %1) #7, !dbg !75
  store i64 %call, i64* %dataLen, align 8, !dbg !73
  %2 = load i64, i64* %dataLen, align 8, !dbg !76
  %sub = sub i64 100, %2, !dbg !78
  %cmp = icmp ugt i64 %sub, 1, !dbg !79
  br i1 %cmp, label %if.then, label %if.end18, !dbg !80

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !81
  %4 = load i64, i64* %dataLen, align 8, !dbg !84
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !85
  %5 = load i64, i64* %dataLen, align 8, !dbg !86
  %sub1 = sub i64 100, %5, !dbg !87
  %conv = trunc i64 %sub1 to i32, !dbg !88
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !89
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !90
  %cmp3 = icmp ne i8* %call2, null, !dbg !91
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !92

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !93
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !95
  store i64 %call6, i64* %dataLen, align 8, !dbg !96
  %8 = load i64, i64* %dataLen, align 8, !dbg !97
  %cmp7 = icmp ugt i64 %8, 0, !dbg !99
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !100

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !101
  %10 = load i64, i64* %dataLen, align 8, !dbg !102
  %sub9 = sub i64 %10, 1, !dbg !103
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !101
  %11 = load i8, i8* %arrayidx, align 1, !dbg !101
  %conv10 = sext i8 %11 to i32, !dbg !101
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !104
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !105

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !106
  %13 = load i64, i64* %dataLen, align 8, !dbg !108
  %sub14 = sub i64 %13, 1, !dbg !109
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !106
  store i8 0, i8* %arrayidx15, align 1, !dbg !110
  br label %if.end, !dbg !111

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !112

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !113
  %14 = load i8*, i8** %data, align 8, !dbg !115
  %15 = load i64, i64* %dataLen, align 8, !dbg !116
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !115
  store i8 0, i8* %arrayidx16, align 1, !dbg !117
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !118

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !119
  store i8* %16, i8** @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_badData, align 8, !dbg !120
  call void @badSink(), !dbg !121
  ret void, !dbg !122
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !123 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !126, metadata !DIExpression()), !dbg !128
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !129
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !129
  call void @llvm.va_start(i8* %arraydecay1), !dbg !129
  %0 = load i8*, i8** %data.addr, align 8, !dbg !130
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !131
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !132
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !133
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !133
  call void @llvm.va_end(i8* %arraydecay34), !dbg !133
  ret void, !dbg !134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink() #0 !dbg !135 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodG2BData, align 8, !dbg !138
  store i8* %0, i8** %data, align 8, !dbg !137
  %1 = load i8*, i8** %data, align 8, !dbg !139
  %2 = load i8*, i8** %data, align 8, !dbg !140
  call void (i8*, ...) @goodG2BVaSink(i8* %1, i8* %2), !dbg !141
  ret void, !dbg !142
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !143 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !147
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !147
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !148
  store i8* %arraydecay, i8** %data, align 8, !dbg !149
  %1 = load i8*, i8** %data, align 8, !dbg !150
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !151
  %2 = load i8*, i8** %data, align 8, !dbg !152
  store i8* %2, i8** @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodG2BData, align 8, !dbg !153
  call void @goodG2BSink(), !dbg !154
  ret void, !dbg !155
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !156 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !159, metadata !DIExpression()), !dbg !161
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !162
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !162
  call void @llvm.va_start(i8* %arraydecay1), !dbg !162
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !163
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !164
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !165
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !165
  call void @llvm.va_end(i8* %arraydecay34), !dbg !165
  ret void, !dbg !166
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !167 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !168, metadata !DIExpression()), !dbg !169
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodB2GData, align 8, !dbg !170
  store i8* %0, i8** %data, align 8, !dbg !169
  %1 = load i8*, i8** %data, align 8, !dbg !171
  %2 = load i8*, i8** %data, align 8, !dbg !172
  call void (i8*, ...) @goodB2GVaSink(i8* %1, i8* %2), !dbg !173
  ret void, !dbg !174
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !175 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !178, metadata !DIExpression()), !dbg !179
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !179
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !179
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !180
  store i8* %arraydecay, i8** %data, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !182, metadata !DIExpression()), !dbg !184
  %1 = load i8*, i8** %data, align 8, !dbg !185
  %call = call i64 @strlen(i8* %1) #7, !dbg !186
  store i64 %call, i64* %dataLen, align 8, !dbg !184
  %2 = load i64, i64* %dataLen, align 8, !dbg !187
  %sub = sub i64 100, %2, !dbg !189
  %cmp = icmp ugt i64 %sub, 1, !dbg !190
  br i1 %cmp, label %if.then, label %if.end18, !dbg !191

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !192
  %4 = load i64, i64* %dataLen, align 8, !dbg !195
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !196
  %5 = load i64, i64* %dataLen, align 8, !dbg !197
  %sub1 = sub i64 100, %5, !dbg !198
  %conv = trunc i64 %sub1 to i32, !dbg !199
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !200
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !201
  %cmp3 = icmp ne i8* %call2, null, !dbg !202
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !203

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !204
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !206
  store i64 %call6, i64* %dataLen, align 8, !dbg !207
  %8 = load i64, i64* %dataLen, align 8, !dbg !208
  %cmp7 = icmp ugt i64 %8, 0, !dbg !210
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !211

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !212
  %10 = load i64, i64* %dataLen, align 8, !dbg !213
  %sub9 = sub i64 %10, 1, !dbg !214
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !212
  %11 = load i8, i8* %arrayidx, align 1, !dbg !212
  %conv10 = sext i8 %11 to i32, !dbg !212
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !215
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !216

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !217
  %13 = load i64, i64* %dataLen, align 8, !dbg !219
  %sub14 = sub i64 %13, 1, !dbg !220
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !217
  store i8 0, i8* %arrayidx15, align 1, !dbg !221
  br label %if.end, !dbg !222

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !223

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !224
  %14 = load i8*, i8** %data, align 8, !dbg !226
  %15 = load i64, i64* %dataLen, align 8, !dbg !227
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !226
  store i8 0, i8* %arrayidx16, align 1, !dbg !228
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !229

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !230
  store i8* %16, i8** @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodB2GData, align 8, !dbg !231
  call void @goodB2GSink(), !dbg !232
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_45_good() #0 !dbg !234 {
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_45_badData", scope: !2, file: !3, line: 26, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_vprintf_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_606/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodG2BData", scope: !2, file: !3, line: 27, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_45_goodB2GData", scope: !2, file: !3, line: 28, type: !11, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "badVaSink", scope: !3, file: !3, line: 32, type: !20, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !11, null}
!22 = !DILocalVariable(name: "data", arg: 1, scope: !19, file: !3, line: 32, type: !11)
!23 = !DILocation(line: 32, column: 23, scope: !19)
!24 = !DILocalVariable(name: "args", scope: !25, file: !3, line: 35, type: !26)
!25 = distinct !DILexicalBlock(scope: !19, file: !3, line: 34, column: 5)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !27, line: 52, baseType: !28)
!27 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !29, line: 32, baseType: !30)
!29 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 192, elements: !39)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !33)
!33 = !{!34, !36, !37, !38}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !32, file: !3, line: 35, baseType: !35, size: 32)
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !32, file: !3, line: 35, baseType: !35, size: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !32, file: !3, line: 35, baseType: !7, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !32, file: !3, line: 35, baseType: !7, size: 64, offset: 128)
!39 = !{!40}
!40 = !DISubrange(count: 1)
!41 = !DILocation(line: 35, column: 17, scope: !25)
!42 = !DILocation(line: 36, column: 9, scope: !25)
!43 = !DILocation(line: 38, column: 17, scope: !25)
!44 = !DILocation(line: 38, column: 23, scope: !25)
!45 = !DILocation(line: 38, column: 9, scope: !25)
!46 = !DILocation(line: 39, column: 9, scope: !25)
!47 = !DILocation(line: 41, column: 1, scope: !19)
!48 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 43, type: !49, scopeLine: 44, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!49 = !DISubroutineType(types: !50)
!50 = !{null}
!51 = !DILocalVariable(name: "data", scope: !48, file: !3, line: 45, type: !11)
!52 = !DILocation(line: 45, column: 12, scope: !48)
!53 = !DILocation(line: 45, column: 19, scope: !48)
!54 = !DILocation(line: 46, column: 15, scope: !48)
!55 = !DILocation(line: 46, column: 21, scope: !48)
!56 = !DILocation(line: 46, column: 5, scope: !48)
!57 = !DILocation(line: 47, column: 1, scope: !48)
!58 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_45_bad", scope: !3, file: !3, line: 49, type: !49, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!59 = !DILocalVariable(name: "data", scope: !58, file: !3, line: 51, type: !11)
!60 = !DILocation(line: 51, column: 12, scope: !58)
!61 = !DILocalVariable(name: "dataBuffer", scope: !58, file: !3, line: 52, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 52, column: 10, scope: !58)
!66 = !DILocation(line: 53, column: 12, scope: !58)
!67 = !DILocation(line: 53, column: 10, scope: !58)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !3, line: 56, type: !70)
!69 = distinct !DILexicalBlock(scope: !58, file: !3, line: 54, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 56, column: 16, scope: !69)
!74 = !DILocation(line: 56, column: 33, scope: !69)
!75 = !DILocation(line: 56, column: 26, scope: !69)
!76 = !DILocation(line: 58, column: 17, scope: !77)
!77 = distinct !DILexicalBlock(scope: !69, file: !3, line: 58, column: 13)
!78 = !DILocation(line: 58, column: 16, scope: !77)
!79 = !DILocation(line: 58, column: 25, scope: !77)
!80 = !DILocation(line: 58, column: 13, scope: !69)
!81 = !DILocation(line: 61, column: 23, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !3, line: 61, column: 17)
!83 = distinct !DILexicalBlock(scope: !77, file: !3, line: 59, column: 9)
!84 = !DILocation(line: 61, column: 28, scope: !82)
!85 = !DILocation(line: 61, column: 27, scope: !82)
!86 = !DILocation(line: 61, column: 47, scope: !82)
!87 = !DILocation(line: 61, column: 46, scope: !82)
!88 = !DILocation(line: 61, column: 37, scope: !82)
!89 = !DILocation(line: 61, column: 57, scope: !82)
!90 = !DILocation(line: 61, column: 17, scope: !82)
!91 = !DILocation(line: 61, column: 64, scope: !82)
!92 = !DILocation(line: 61, column: 17, scope: !83)
!93 = !DILocation(line: 65, column: 34, scope: !94)
!94 = distinct !DILexicalBlock(scope: !82, file: !3, line: 62, column: 13)
!95 = !DILocation(line: 65, column: 27, scope: !94)
!96 = !DILocation(line: 65, column: 25, scope: !94)
!97 = !DILocation(line: 66, column: 21, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !3, line: 66, column: 21)
!99 = !DILocation(line: 66, column: 29, scope: !98)
!100 = !DILocation(line: 66, column: 33, scope: !98)
!101 = !DILocation(line: 66, column: 36, scope: !98)
!102 = !DILocation(line: 66, column: 41, scope: !98)
!103 = !DILocation(line: 66, column: 48, scope: !98)
!104 = !DILocation(line: 66, column: 52, scope: !98)
!105 = !DILocation(line: 66, column: 21, scope: !94)
!106 = !DILocation(line: 68, column: 21, scope: !107)
!107 = distinct !DILexicalBlock(scope: !98, file: !3, line: 67, column: 17)
!108 = !DILocation(line: 68, column: 26, scope: !107)
!109 = !DILocation(line: 68, column: 33, scope: !107)
!110 = !DILocation(line: 68, column: 37, scope: !107)
!111 = !DILocation(line: 69, column: 17, scope: !107)
!112 = !DILocation(line: 70, column: 13, scope: !94)
!113 = !DILocation(line: 73, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !82, file: !3, line: 72, column: 13)
!115 = !DILocation(line: 75, column: 17, scope: !114)
!116 = !DILocation(line: 75, column: 22, scope: !114)
!117 = !DILocation(line: 75, column: 31, scope: !114)
!118 = !DILocation(line: 77, column: 9, scope: !83)
!119 = !DILocation(line: 79, column: 74, scope: !58)
!120 = !DILocation(line: 79, column: 72, scope: !58)
!121 = !DILocation(line: 80, column: 5, scope: !58)
!122 = !DILocation(line: 81, column: 1, scope: !58)
!123 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !3, file: !3, line: 88, type: !20, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!124 = !DILocalVariable(name: "data", arg: 1, scope: !123, file: !3, line: 88, type: !11)
!125 = !DILocation(line: 88, column: 27, scope: !123)
!126 = !DILocalVariable(name: "args", scope: !127, file: !3, line: 91, type: !26)
!127 = distinct !DILexicalBlock(scope: !123, file: !3, line: 90, column: 5)
!128 = !DILocation(line: 91, column: 17, scope: !127)
!129 = !DILocation(line: 92, column: 9, scope: !127)
!130 = !DILocation(line: 94, column: 17, scope: !127)
!131 = !DILocation(line: 94, column: 23, scope: !127)
!132 = !DILocation(line: 94, column: 9, scope: !127)
!133 = !DILocation(line: 95, column: 9, scope: !127)
!134 = !DILocation(line: 97, column: 1, scope: !123)
!135 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 99, type: !49, scopeLine: 100, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!136 = !DILocalVariable(name: "data", scope: !135, file: !3, line: 101, type: !11)
!137 = !DILocation(line: 101, column: 12, scope: !135)
!138 = !DILocation(line: 101, column: 19, scope: !135)
!139 = !DILocation(line: 102, column: 19, scope: !135)
!140 = !DILocation(line: 102, column: 25, scope: !135)
!141 = !DILocation(line: 102, column: 5, scope: !135)
!142 = !DILocation(line: 103, column: 1, scope: !135)
!143 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 105, type: !49, scopeLine: 106, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!144 = !DILocalVariable(name: "data", scope: !143, file: !3, line: 107, type: !11)
!145 = !DILocation(line: 107, column: 12, scope: !143)
!146 = !DILocalVariable(name: "dataBuffer", scope: !143, file: !3, line: 108, type: !62)
!147 = !DILocation(line: 108, column: 10, scope: !143)
!148 = !DILocation(line: 109, column: 12, scope: !143)
!149 = !DILocation(line: 109, column: 10, scope: !143)
!150 = !DILocation(line: 111, column: 12, scope: !143)
!151 = !DILocation(line: 111, column: 5, scope: !143)
!152 = !DILocation(line: 112, column: 78, scope: !143)
!153 = !DILocation(line: 112, column: 76, scope: !143)
!154 = !DILocation(line: 113, column: 5, scope: !143)
!155 = !DILocation(line: 114, column: 1, scope: !143)
!156 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !3, file: !3, line: 117, type: !20, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!157 = !DILocalVariable(name: "data", arg: 1, scope: !156, file: !3, line: 117, type: !11)
!158 = !DILocation(line: 117, column: 27, scope: !156)
!159 = !DILocalVariable(name: "args", scope: !160, file: !3, line: 120, type: !26)
!160 = distinct !DILexicalBlock(scope: !156, file: !3, line: 119, column: 5)
!161 = !DILocation(line: 120, column: 17, scope: !160)
!162 = !DILocation(line: 121, column: 9, scope: !160)
!163 = !DILocation(line: 123, column: 23, scope: !160)
!164 = !DILocation(line: 123, column: 9, scope: !160)
!165 = !DILocation(line: 124, column: 9, scope: !160)
!166 = !DILocation(line: 126, column: 1, scope: !156)
!167 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 128, type: !49, scopeLine: 129, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!168 = !DILocalVariable(name: "data", scope: !167, file: !3, line: 130, type: !11)
!169 = !DILocation(line: 130, column: 12, scope: !167)
!170 = !DILocation(line: 130, column: 19, scope: !167)
!171 = !DILocation(line: 131, column: 19, scope: !167)
!172 = !DILocation(line: 131, column: 25, scope: !167)
!173 = !DILocation(line: 131, column: 5, scope: !167)
!174 = !DILocation(line: 132, column: 1, scope: !167)
!175 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 134, type: !49, scopeLine: 135, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!176 = !DILocalVariable(name: "data", scope: !175, file: !3, line: 136, type: !11)
!177 = !DILocation(line: 136, column: 12, scope: !175)
!178 = !DILocalVariable(name: "dataBuffer", scope: !175, file: !3, line: 137, type: !62)
!179 = !DILocation(line: 137, column: 10, scope: !175)
!180 = !DILocation(line: 138, column: 12, scope: !175)
!181 = !DILocation(line: 138, column: 10, scope: !175)
!182 = !DILocalVariable(name: "dataLen", scope: !183, file: !3, line: 141, type: !70)
!183 = distinct !DILexicalBlock(scope: !175, file: !3, line: 139, column: 5)
!184 = !DILocation(line: 141, column: 16, scope: !183)
!185 = !DILocation(line: 141, column: 33, scope: !183)
!186 = !DILocation(line: 141, column: 26, scope: !183)
!187 = !DILocation(line: 143, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !183, file: !3, line: 143, column: 13)
!189 = !DILocation(line: 143, column: 16, scope: !188)
!190 = !DILocation(line: 143, column: 25, scope: !188)
!191 = !DILocation(line: 143, column: 13, scope: !183)
!192 = !DILocation(line: 146, column: 23, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !3, line: 146, column: 17)
!194 = distinct !DILexicalBlock(scope: !188, file: !3, line: 144, column: 9)
!195 = !DILocation(line: 146, column: 28, scope: !193)
!196 = !DILocation(line: 146, column: 27, scope: !193)
!197 = !DILocation(line: 146, column: 47, scope: !193)
!198 = !DILocation(line: 146, column: 46, scope: !193)
!199 = !DILocation(line: 146, column: 37, scope: !193)
!200 = !DILocation(line: 146, column: 57, scope: !193)
!201 = !DILocation(line: 146, column: 17, scope: !193)
!202 = !DILocation(line: 146, column: 64, scope: !193)
!203 = !DILocation(line: 146, column: 17, scope: !194)
!204 = !DILocation(line: 150, column: 34, scope: !205)
!205 = distinct !DILexicalBlock(scope: !193, file: !3, line: 147, column: 13)
!206 = !DILocation(line: 150, column: 27, scope: !205)
!207 = !DILocation(line: 150, column: 25, scope: !205)
!208 = !DILocation(line: 151, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !3, line: 151, column: 21)
!210 = !DILocation(line: 151, column: 29, scope: !209)
!211 = !DILocation(line: 151, column: 33, scope: !209)
!212 = !DILocation(line: 151, column: 36, scope: !209)
!213 = !DILocation(line: 151, column: 41, scope: !209)
!214 = !DILocation(line: 151, column: 48, scope: !209)
!215 = !DILocation(line: 151, column: 52, scope: !209)
!216 = !DILocation(line: 151, column: 21, scope: !205)
!217 = !DILocation(line: 153, column: 21, scope: !218)
!218 = distinct !DILexicalBlock(scope: !209, file: !3, line: 152, column: 17)
!219 = !DILocation(line: 153, column: 26, scope: !218)
!220 = !DILocation(line: 153, column: 33, scope: !218)
!221 = !DILocation(line: 153, column: 37, scope: !218)
!222 = !DILocation(line: 154, column: 17, scope: !218)
!223 = !DILocation(line: 155, column: 13, scope: !205)
!224 = !DILocation(line: 158, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !193, file: !3, line: 157, column: 13)
!226 = !DILocation(line: 160, column: 17, scope: !225)
!227 = !DILocation(line: 160, column: 22, scope: !225)
!228 = !DILocation(line: 160, column: 31, scope: !225)
!229 = !DILocation(line: 162, column: 9, scope: !194)
!230 = !DILocation(line: 164, column: 78, scope: !175)
!231 = !DILocation(line: 164, column: 76, scope: !175)
!232 = !DILocation(line: 165, column: 5, scope: !175)
!233 = !DILocation(line: 166, column: 1, scope: !175)
!234 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_45_good", scope: !3, file: !3, line: 168, type: !49, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!235 = !DILocation(line: 170, column: 5, scope: !234)
!236 = !DILocation(line: 171, column: 5, scope: !234)
!237 = !DILocation(line: 172, column: 1, scope: !234)
