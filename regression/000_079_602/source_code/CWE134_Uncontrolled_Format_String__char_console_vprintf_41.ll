; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_vprintf_41.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_vprintf_41.c"
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
define dso_local void @badSink(i8* %data) #0 !dbg !41 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !44, metadata !DIExpression()), !dbg !45
  %0 = load i8*, i8** %data.addr, align 8, !dbg !46
  %1 = load i8*, i8** %data.addr, align 8, !dbg !47
  call void (i8*, ...) @badVaSink(i8* %0, i8* %1), !dbg !48
  ret void, !dbg !49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_41_bad() #0 !dbg !50 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !55, metadata !DIExpression()), !dbg !59
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !59
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !59
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !60
  store i8* %arraydecay, i8** %data, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !62, metadata !DIExpression()), !dbg !67
  %1 = load i8*, i8** %data, align 8, !dbg !68
  %call = call i64 @strlen(i8* %1) #7, !dbg !69
  store i64 %call, i64* %dataLen, align 8, !dbg !67
  %2 = load i64, i64* %dataLen, align 8, !dbg !70
  %sub = sub i64 100, %2, !dbg !72
  %cmp = icmp ugt i64 %sub, 1, !dbg !73
  br i1 %cmp, label %if.then, label %if.end18, !dbg !74

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !75
  %4 = load i64, i64* %dataLen, align 8, !dbg !78
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !79
  %5 = load i64, i64* %dataLen, align 8, !dbg !80
  %sub1 = sub i64 100, %5, !dbg !81
  %conv = trunc i64 %sub1 to i32, !dbg !82
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !83
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !84
  %cmp3 = icmp ne i8* %call2, null, !dbg !85
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !86

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !87
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !89
  store i64 %call6, i64* %dataLen, align 8, !dbg !90
  %8 = load i64, i64* %dataLen, align 8, !dbg !91
  %cmp7 = icmp ugt i64 %8, 0, !dbg !93
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !94

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !95
  %10 = load i64, i64* %dataLen, align 8, !dbg !96
  %sub9 = sub i64 %10, 1, !dbg !97
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !95
  %11 = load i8, i8* %arrayidx, align 1, !dbg !95
  %conv10 = sext i8 %11 to i32, !dbg !95
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !98
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !99

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !100
  %13 = load i64, i64* %dataLen, align 8, !dbg !102
  %sub14 = sub i64 %13, 1, !dbg !103
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !100
  store i8 0, i8* %arrayidx15, align 1, !dbg !104
  br label %if.end, !dbg !105

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !106

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !107
  %14 = load i8*, i8** %data, align 8, !dbg !109
  %15 = load i64, i64* %dataLen, align 8, !dbg !110
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !109
  store i8 0, i8* %arrayidx16, align 1, !dbg !111
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !112

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !113
  call void @badSink(i8* %16), !dbg !114
  ret void, !dbg !115
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !116 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !119, metadata !DIExpression()), !dbg !121
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !122
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !122
  call void @llvm.va_start(i8* %arraydecay1), !dbg !122
  %0 = load i8*, i8** %data.addr, align 8, !dbg !123
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !124
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !125
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !126
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !126
  call void @llvm.va_end(i8* %arraydecay34), !dbg !126
  ret void, !dbg !127
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !128 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = load i8*, i8** %data.addr, align 8, !dbg !131
  %1 = load i8*, i8** %data.addr, align 8, !dbg !132
  call void (i8*, ...) @goodG2BVaSink(i8* %0, i8* %1), !dbg !133
  ret void, !dbg !134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !135 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !139
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !139
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !140
  store i8* %arraydecay, i8** %data, align 8, !dbg !141
  %1 = load i8*, i8** %data, align 8, !dbg !142
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !143
  %2 = load i8*, i8** %data, align 8, !dbg !144
  call void @goodG2BSink(i8* %2), !dbg !145
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
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !158 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = load i8*, i8** %data.addr, align 8, !dbg !161
  %1 = load i8*, i8** %data.addr, align 8, !dbg !162
  call void (i8*, ...) @goodB2GVaSink(i8* %0, i8* %1), !dbg !163
  ret void, !dbg !164
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !165 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !168, metadata !DIExpression()), !dbg !169
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !169
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !169
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !170
  store i8* %arraydecay, i8** %data, align 8, !dbg !171
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !172, metadata !DIExpression()), !dbg !174
  %1 = load i8*, i8** %data, align 8, !dbg !175
  %call = call i64 @strlen(i8* %1) #7, !dbg !176
  store i64 %call, i64* %dataLen, align 8, !dbg !174
  %2 = load i64, i64* %dataLen, align 8, !dbg !177
  %sub = sub i64 100, %2, !dbg !179
  %cmp = icmp ugt i64 %sub, 1, !dbg !180
  br i1 %cmp, label %if.then, label %if.end18, !dbg !181

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !182
  %4 = load i64, i64* %dataLen, align 8, !dbg !185
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !186
  %5 = load i64, i64* %dataLen, align 8, !dbg !187
  %sub1 = sub i64 100, %5, !dbg !188
  %conv = trunc i64 %sub1 to i32, !dbg !189
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !190
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !191
  %cmp3 = icmp ne i8* %call2, null, !dbg !192
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !193

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !194
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !196
  store i64 %call6, i64* %dataLen, align 8, !dbg !197
  %8 = load i64, i64* %dataLen, align 8, !dbg !198
  %cmp7 = icmp ugt i64 %8, 0, !dbg !200
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !201

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !202
  %10 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub9 = sub i64 %10, 1, !dbg !204
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !202
  %11 = load i8, i8* %arrayidx, align 1, !dbg !202
  %conv10 = sext i8 %11 to i32, !dbg !202
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !205
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !206

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !207
  %13 = load i64, i64* %dataLen, align 8, !dbg !209
  %sub14 = sub i64 %13, 1, !dbg !210
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !207
  store i8 0, i8* %arrayidx15, align 1, !dbg !211
  br label %if.end, !dbg !212

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !213

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !214
  %14 = load i8*, i8** %data, align 8, !dbg !216
  %15 = load i64, i64* %dataLen, align 8, !dbg !217
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !216
  store i8 0, i8* %arrayidx16, align 1, !dbg !218
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !219

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !220
  call void @goodB2GSink(i8* %16), !dbg !221
  ret void, !dbg !222
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_41_good() #0 !dbg !223 {
entry:
  call void @goodG2B(), !dbg !224
  call void @goodB2G(), !dbg !225
  ret void, !dbg !226
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_vprintf_41.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_602/source_code")
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
!41 = distinct !DISubprogram(name: "badSink", scope: !1, file: !1, line: 39, type: !42, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !13}
!44 = !DILocalVariable(name: "data", arg: 1, scope: !41, file: !1, line: 39, type: !13)
!45 = !DILocation(line: 39, column: 21, scope: !41)
!46 = !DILocation(line: 41, column: 15, scope: !41)
!47 = !DILocation(line: 41, column: 21, scope: !41)
!48 = !DILocation(line: 41, column: 5, scope: !41)
!49 = !DILocation(line: 42, column: 1, scope: !41)
!50 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_41_bad", scope: !1, file: !1, line: 44, type: !51, scopeLine: 45, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!51 = !DISubroutineType(types: !52)
!52 = !{null}
!53 = !DILocalVariable(name: "data", scope: !50, file: !1, line: 46, type: !13)
!54 = !DILocation(line: 46, column: 12, scope: !50)
!55 = !DILocalVariable(name: "dataBuffer", scope: !50, file: !1, line: 47, type: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 100)
!59 = !DILocation(line: 47, column: 10, scope: !50)
!60 = !DILocation(line: 48, column: 12, scope: !50)
!61 = !DILocation(line: 48, column: 10, scope: !50)
!62 = !DILocalVariable(name: "dataLen", scope: !63, file: !1, line: 51, type: !64)
!63 = distinct !DILexicalBlock(scope: !50, file: !1, line: 49, column: 5)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 46, baseType: !66)
!65 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!66 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!67 = !DILocation(line: 51, column: 16, scope: !63)
!68 = !DILocation(line: 51, column: 33, scope: !63)
!69 = !DILocation(line: 51, column: 26, scope: !63)
!70 = !DILocation(line: 53, column: 17, scope: !71)
!71 = distinct !DILexicalBlock(scope: !63, file: !1, line: 53, column: 13)
!72 = !DILocation(line: 53, column: 16, scope: !71)
!73 = !DILocation(line: 53, column: 25, scope: !71)
!74 = !DILocation(line: 53, column: 13, scope: !63)
!75 = !DILocation(line: 56, column: 23, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 56, column: 17)
!77 = distinct !DILexicalBlock(scope: !71, file: !1, line: 54, column: 9)
!78 = !DILocation(line: 56, column: 28, scope: !76)
!79 = !DILocation(line: 56, column: 27, scope: !76)
!80 = !DILocation(line: 56, column: 47, scope: !76)
!81 = !DILocation(line: 56, column: 46, scope: !76)
!82 = !DILocation(line: 56, column: 37, scope: !76)
!83 = !DILocation(line: 56, column: 57, scope: !76)
!84 = !DILocation(line: 56, column: 17, scope: !76)
!85 = !DILocation(line: 56, column: 64, scope: !76)
!86 = !DILocation(line: 56, column: 17, scope: !77)
!87 = !DILocation(line: 60, column: 34, scope: !88)
!88 = distinct !DILexicalBlock(scope: !76, file: !1, line: 57, column: 13)
!89 = !DILocation(line: 60, column: 27, scope: !88)
!90 = !DILocation(line: 60, column: 25, scope: !88)
!91 = !DILocation(line: 61, column: 21, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 61, column: 21)
!93 = !DILocation(line: 61, column: 29, scope: !92)
!94 = !DILocation(line: 61, column: 33, scope: !92)
!95 = !DILocation(line: 61, column: 36, scope: !92)
!96 = !DILocation(line: 61, column: 41, scope: !92)
!97 = !DILocation(line: 61, column: 48, scope: !92)
!98 = !DILocation(line: 61, column: 52, scope: !92)
!99 = !DILocation(line: 61, column: 21, scope: !88)
!100 = !DILocation(line: 63, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !92, file: !1, line: 62, column: 17)
!102 = !DILocation(line: 63, column: 26, scope: !101)
!103 = !DILocation(line: 63, column: 33, scope: !101)
!104 = !DILocation(line: 63, column: 37, scope: !101)
!105 = !DILocation(line: 64, column: 17, scope: !101)
!106 = !DILocation(line: 65, column: 13, scope: !88)
!107 = !DILocation(line: 68, column: 17, scope: !108)
!108 = distinct !DILexicalBlock(scope: !76, file: !1, line: 67, column: 13)
!109 = !DILocation(line: 70, column: 17, scope: !108)
!110 = !DILocation(line: 70, column: 22, scope: !108)
!111 = !DILocation(line: 70, column: 31, scope: !108)
!112 = !DILocation(line: 72, column: 9, scope: !77)
!113 = !DILocation(line: 74, column: 13, scope: !50)
!114 = !DILocation(line: 74, column: 5, scope: !50)
!115 = !DILocation(line: 75, column: 1, scope: !50)
!116 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !1, file: !1, line: 82, type: !11, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!117 = !DILocalVariable(name: "data", arg: 1, scope: !116, file: !1, line: 82, type: !13)
!118 = !DILocation(line: 82, column: 27, scope: !116)
!119 = !DILocalVariable(name: "args", scope: !120, file: !1, line: 85, type: !19)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 84, column: 5)
!121 = !DILocation(line: 85, column: 17, scope: !120)
!122 = !DILocation(line: 86, column: 9, scope: !120)
!123 = !DILocation(line: 88, column: 17, scope: !120)
!124 = !DILocation(line: 88, column: 23, scope: !120)
!125 = !DILocation(line: 88, column: 9, scope: !120)
!126 = !DILocation(line: 89, column: 9, scope: !120)
!127 = !DILocation(line: 91, column: 1, scope: !116)
!128 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 93, type: !42, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!129 = !DILocalVariable(name: "data", arg: 1, scope: !128, file: !1, line: 93, type: !13)
!130 = !DILocation(line: 93, column: 25, scope: !128)
!131 = !DILocation(line: 95, column: 19, scope: !128)
!132 = !DILocation(line: 95, column: 25, scope: !128)
!133 = !DILocation(line: 95, column: 5, scope: !128)
!134 = !DILocation(line: 96, column: 1, scope: !128)
!135 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 98, type: !51, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!136 = !DILocalVariable(name: "data", scope: !135, file: !1, line: 100, type: !13)
!137 = !DILocation(line: 100, column: 12, scope: !135)
!138 = !DILocalVariable(name: "dataBuffer", scope: !135, file: !1, line: 101, type: !56)
!139 = !DILocation(line: 101, column: 10, scope: !135)
!140 = !DILocation(line: 102, column: 12, scope: !135)
!141 = !DILocation(line: 102, column: 10, scope: !135)
!142 = !DILocation(line: 104, column: 12, scope: !135)
!143 = !DILocation(line: 104, column: 5, scope: !135)
!144 = !DILocation(line: 105, column: 17, scope: !135)
!145 = !DILocation(line: 105, column: 5, scope: !135)
!146 = !DILocation(line: 106, column: 1, scope: !135)
!147 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !1, file: !1, line: 109, type: !11, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!148 = !DILocalVariable(name: "data", arg: 1, scope: !147, file: !1, line: 109, type: !13)
!149 = !DILocation(line: 109, column: 27, scope: !147)
!150 = !DILocalVariable(name: "args", scope: !151, file: !1, line: 112, type: !19)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 111, column: 5)
!152 = !DILocation(line: 112, column: 17, scope: !151)
!153 = !DILocation(line: 113, column: 9, scope: !151)
!154 = !DILocation(line: 115, column: 23, scope: !151)
!155 = !DILocation(line: 115, column: 9, scope: !151)
!156 = !DILocation(line: 116, column: 9, scope: !151)
!157 = !DILocation(line: 118, column: 1, scope: !147)
!158 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 120, type: !42, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!159 = !DILocalVariable(name: "data", arg: 1, scope: !158, file: !1, line: 120, type: !13)
!160 = !DILocation(line: 120, column: 25, scope: !158)
!161 = !DILocation(line: 122, column: 19, scope: !158)
!162 = !DILocation(line: 122, column: 25, scope: !158)
!163 = !DILocation(line: 122, column: 5, scope: !158)
!164 = !DILocation(line: 123, column: 1, scope: !158)
!165 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 125, type: !51, scopeLine: 126, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!166 = !DILocalVariable(name: "data", scope: !165, file: !1, line: 127, type: !13)
!167 = !DILocation(line: 127, column: 12, scope: !165)
!168 = !DILocalVariable(name: "dataBuffer", scope: !165, file: !1, line: 128, type: !56)
!169 = !DILocation(line: 128, column: 10, scope: !165)
!170 = !DILocation(line: 129, column: 12, scope: !165)
!171 = !DILocation(line: 129, column: 10, scope: !165)
!172 = !DILocalVariable(name: "dataLen", scope: !173, file: !1, line: 132, type: !64)
!173 = distinct !DILexicalBlock(scope: !165, file: !1, line: 130, column: 5)
!174 = !DILocation(line: 132, column: 16, scope: !173)
!175 = !DILocation(line: 132, column: 33, scope: !173)
!176 = !DILocation(line: 132, column: 26, scope: !173)
!177 = !DILocation(line: 134, column: 17, scope: !178)
!178 = distinct !DILexicalBlock(scope: !173, file: !1, line: 134, column: 13)
!179 = !DILocation(line: 134, column: 16, scope: !178)
!180 = !DILocation(line: 134, column: 25, scope: !178)
!181 = !DILocation(line: 134, column: 13, scope: !173)
!182 = !DILocation(line: 137, column: 23, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 137, column: 17)
!184 = distinct !DILexicalBlock(scope: !178, file: !1, line: 135, column: 9)
!185 = !DILocation(line: 137, column: 28, scope: !183)
!186 = !DILocation(line: 137, column: 27, scope: !183)
!187 = !DILocation(line: 137, column: 47, scope: !183)
!188 = !DILocation(line: 137, column: 46, scope: !183)
!189 = !DILocation(line: 137, column: 37, scope: !183)
!190 = !DILocation(line: 137, column: 57, scope: !183)
!191 = !DILocation(line: 137, column: 17, scope: !183)
!192 = !DILocation(line: 137, column: 64, scope: !183)
!193 = !DILocation(line: 137, column: 17, scope: !184)
!194 = !DILocation(line: 141, column: 34, scope: !195)
!195 = distinct !DILexicalBlock(scope: !183, file: !1, line: 138, column: 13)
!196 = !DILocation(line: 141, column: 27, scope: !195)
!197 = !DILocation(line: 141, column: 25, scope: !195)
!198 = !DILocation(line: 142, column: 21, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 142, column: 21)
!200 = !DILocation(line: 142, column: 29, scope: !199)
!201 = !DILocation(line: 142, column: 33, scope: !199)
!202 = !DILocation(line: 142, column: 36, scope: !199)
!203 = !DILocation(line: 142, column: 41, scope: !199)
!204 = !DILocation(line: 142, column: 48, scope: !199)
!205 = !DILocation(line: 142, column: 52, scope: !199)
!206 = !DILocation(line: 142, column: 21, scope: !195)
!207 = !DILocation(line: 144, column: 21, scope: !208)
!208 = distinct !DILexicalBlock(scope: !199, file: !1, line: 143, column: 17)
!209 = !DILocation(line: 144, column: 26, scope: !208)
!210 = !DILocation(line: 144, column: 33, scope: !208)
!211 = !DILocation(line: 144, column: 37, scope: !208)
!212 = !DILocation(line: 145, column: 17, scope: !208)
!213 = !DILocation(line: 146, column: 13, scope: !195)
!214 = !DILocation(line: 149, column: 17, scope: !215)
!215 = distinct !DILexicalBlock(scope: !183, file: !1, line: 148, column: 13)
!216 = !DILocation(line: 151, column: 17, scope: !215)
!217 = !DILocation(line: 151, column: 22, scope: !215)
!218 = !DILocation(line: 151, column: 31, scope: !215)
!219 = !DILocation(line: 153, column: 9, scope: !184)
!220 = !DILocation(line: 155, column: 17, scope: !165)
!221 = !DILocation(line: 155, column: 5, scope: !165)
!222 = !DILocation(line: 156, column: 1, scope: !165)
!223 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_41_good", scope: !1, file: !1, line: 158, type: !51, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!224 = !DILocation(line: 160, column: 5, scope: !223)
!225 = !DILocation(line: 161, column: 5, scope: !223)
!226 = !DILocation(line: 162, column: 1, scope: !223)
