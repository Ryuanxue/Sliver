; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_vprintf_42.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_vprintf_42.c"
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
define dso_local i8* @badSource(i8* %data) #0 !dbg !10 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !17, metadata !DIExpression()), !dbg !22
  %0 = load i8*, i8** %data.addr, align 8, !dbg !23
  %call = call i64 @strlen(i8* %0) #7, !dbg !24
  store i64 %call, i64* %dataLen, align 8, !dbg !22
  %1 = load i64, i64* %dataLen, align 8, !dbg !25
  %sub = sub i64 100, %1, !dbg !27
  %cmp = icmp ugt i64 %sub, 1, !dbg !28
  br i1 %cmp, label %if.then, label %if.end18, !dbg !29

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !30
  %3 = load i64, i64* %dataLen, align 8, !dbg !33
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !34
  %4 = load i64, i64* %dataLen, align 8, !dbg !35
  %sub1 = sub i64 100, %4, !dbg !36
  %conv = trunc i64 %sub1 to i32, !dbg !37
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !38
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %5), !dbg !39
  %cmp3 = icmp ne i8* %call2, null, !dbg !40
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !41

if.then5:                                         ; preds = %if.then
  %6 = load i8*, i8** %data.addr, align 8, !dbg !42
  %call6 = call i64 @strlen(i8* %6) #7, !dbg !44
  store i64 %call6, i64* %dataLen, align 8, !dbg !45
  %7 = load i64, i64* %dataLen, align 8, !dbg !46
  %cmp7 = icmp ugt i64 %7, 0, !dbg !48
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !49

land.lhs.true:                                    ; preds = %if.then5
  %8 = load i8*, i8** %data.addr, align 8, !dbg !50
  %9 = load i64, i64* %dataLen, align 8, !dbg !51
  %sub9 = sub i64 %9, 1, !dbg !52
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %sub9, !dbg !50
  %10 = load i8, i8* %arrayidx, align 1, !dbg !50
  %conv10 = sext i8 %10 to i32, !dbg !50
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !53
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !54

if.then13:                                        ; preds = %land.lhs.true
  %11 = load i8*, i8** %data.addr, align 8, !dbg !55
  %12 = load i64, i64* %dataLen, align 8, !dbg !57
  %sub14 = sub i64 %12, 1, !dbg !58
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 %sub14, !dbg !55
  store i8 0, i8* %arrayidx15, align 1, !dbg !59
  br label %if.end, !dbg !60

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !61

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !62
  %13 = load i8*, i8** %data.addr, align 8, !dbg !64
  %14 = load i64, i64* %dataLen, align 8, !dbg !65
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !64
  store i8 0, i8* %arrayidx16, align 1, !dbg !66
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !67

if.end18:                                         ; preds = %if.end17, %entry
  %15 = load i8*, i8** %data.addr, align 8, !dbg !68
  ret i8* %15, !dbg !69
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !70 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !75, metadata !DIExpression()), !dbg !92
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !93
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !93
  call void @llvm.va_start(i8* %arraydecay1), !dbg !93
  %0 = load i8*, i8** %data.addr, align 8, !dbg !94
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !95
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !96
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !97
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !97
  call void @llvm.va_end(i8* %arraydecay34), !dbg !97
  ret void, !dbg !98
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_42_bad() #0 !dbg !99 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !104, metadata !DIExpression()), !dbg !108
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !108
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !108
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !109
  store i8* %arraydecay, i8** %data, align 8, !dbg !110
  %1 = load i8*, i8** %data, align 8, !dbg !111
  %call = call i8* @badSource(i8* %1), !dbg !112
  store i8* %call, i8** %data, align 8, !dbg !113
  %2 = load i8*, i8** %data, align 8, !dbg !114
  %3 = load i8*, i8** %data, align 8, !dbg !115
  call void (i8*, ...) @badVaSink(i8* %2, i8* %3), !dbg !116
  ret void, !dbg !117
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodG2BSource(i8* %data) #0 !dbg !118 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !119, metadata !DIExpression()), !dbg !120
  %0 = load i8*, i8** %data.addr, align 8, !dbg !121
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !122
  %1 = load i8*, i8** %data.addr, align 8, !dbg !123
  ret i8* %1, !dbg !124
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !125 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !128, metadata !DIExpression()), !dbg !130
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !131
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !131
  call void @llvm.va_start(i8* %arraydecay1), !dbg !131
  %0 = load i8*, i8** %data.addr, align 8, !dbg !132
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !133
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !134
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !135
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !135
  call void @llvm.va_end(i8* %arraydecay34), !dbg !135
  ret void, !dbg !136
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !137 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !141
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !141
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !142
  store i8* %arraydecay, i8** %data, align 8, !dbg !143
  %1 = load i8*, i8** %data, align 8, !dbg !144
  %call = call i8* @goodG2BSource(i8* %1), !dbg !145
  store i8* %call, i8** %data, align 8, !dbg !146
  %2 = load i8*, i8** %data, align 8, !dbg !147
  %3 = load i8*, i8** %data, align 8, !dbg !148
  call void (i8*, ...) @goodG2BVaSink(i8* %2, i8* %3), !dbg !149
  ret void, !dbg !150
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodB2GSource(i8* %data) #0 !dbg !151 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !154, metadata !DIExpression()), !dbg !156
  %0 = load i8*, i8** %data.addr, align 8, !dbg !157
  %call = call i64 @strlen(i8* %0) #7, !dbg !158
  store i64 %call, i64* %dataLen, align 8, !dbg !156
  %1 = load i64, i64* %dataLen, align 8, !dbg !159
  %sub = sub i64 100, %1, !dbg !161
  %cmp = icmp ugt i64 %sub, 1, !dbg !162
  br i1 %cmp, label %if.then, label %if.end18, !dbg !163

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !164
  %3 = load i64, i64* %dataLen, align 8, !dbg !167
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !168
  %4 = load i64, i64* %dataLen, align 8, !dbg !169
  %sub1 = sub i64 100, %4, !dbg !170
  %conv = trunc i64 %sub1 to i32, !dbg !171
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !172
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %5), !dbg !173
  %cmp3 = icmp ne i8* %call2, null, !dbg !174
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !175

if.then5:                                         ; preds = %if.then
  %6 = load i8*, i8** %data.addr, align 8, !dbg !176
  %call6 = call i64 @strlen(i8* %6) #7, !dbg !178
  store i64 %call6, i64* %dataLen, align 8, !dbg !179
  %7 = load i64, i64* %dataLen, align 8, !dbg !180
  %cmp7 = icmp ugt i64 %7, 0, !dbg !182
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !183

land.lhs.true:                                    ; preds = %if.then5
  %8 = load i8*, i8** %data.addr, align 8, !dbg !184
  %9 = load i64, i64* %dataLen, align 8, !dbg !185
  %sub9 = sub i64 %9, 1, !dbg !186
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %sub9, !dbg !184
  %10 = load i8, i8* %arrayidx, align 1, !dbg !184
  %conv10 = sext i8 %10 to i32, !dbg !184
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !187
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !188

if.then13:                                        ; preds = %land.lhs.true
  %11 = load i8*, i8** %data.addr, align 8, !dbg !189
  %12 = load i64, i64* %dataLen, align 8, !dbg !191
  %sub14 = sub i64 %12, 1, !dbg !192
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 %sub14, !dbg !189
  store i8 0, i8* %arrayidx15, align 1, !dbg !193
  br label %if.end, !dbg !194

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !195

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !196
  %13 = load i8*, i8** %data.addr, align 8, !dbg !198
  %14 = load i64, i64* %dataLen, align 8, !dbg !199
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !198
  store i8 0, i8* %arrayidx16, align 1, !dbg !200
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !201

if.end18:                                         ; preds = %if.end17, %entry
  %15 = load i8*, i8** %data.addr, align 8, !dbg !202
  ret i8* %15, !dbg !203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !204 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !207, metadata !DIExpression()), !dbg !209
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !210
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !210
  call void @llvm.va_start(i8* %arraydecay1), !dbg !210
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !211
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !212
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !213
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !213
  call void @llvm.va_end(i8* %arraydecay34), !dbg !213
  ret void, !dbg !214
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !215 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !219
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !219
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !220
  store i8* %arraydecay, i8** %data, align 8, !dbg !221
  %1 = load i8*, i8** %data, align 8, !dbg !222
  %call = call i8* @goodB2GSource(i8* %1), !dbg !223
  store i8* %call, i8** %data, align 8, !dbg !224
  %2 = load i8*, i8** %data, align 8, !dbg !225
  %3 = load i8*, i8** %data, align 8, !dbg !226
  call void (i8*, ...) @goodB2GVaSink(i8* %2, i8* %3), !dbg !227
  ret void, !dbg !228
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_42_good() #0 !dbg !229 {
entry:
  call void @goodG2B(), !dbg !230
  call void @goodB2G(), !dbg !231
  ret void, !dbg !232
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_vprintf_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_603/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "badSource", scope: !1, file: !1, line: 28, type: !11, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 28, type: !13)
!16 = !DILocation(line: 28, column: 25, scope: !10)
!17 = !DILocalVariable(name: "dataLen", scope: !18, file: !1, line: 32, type: !19)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 30, column: 5)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DILocation(line: 32, column: 16, scope: !18)
!23 = !DILocation(line: 32, column: 33, scope: !18)
!24 = !DILocation(line: 32, column: 26, scope: !18)
!25 = !DILocation(line: 34, column: 17, scope: !26)
!26 = distinct !DILexicalBlock(scope: !18, file: !1, line: 34, column: 13)
!27 = !DILocation(line: 34, column: 16, scope: !26)
!28 = !DILocation(line: 34, column: 25, scope: !26)
!29 = !DILocation(line: 34, column: 13, scope: !18)
!30 = !DILocation(line: 37, column: 23, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 37, column: 17)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 35, column: 9)
!33 = !DILocation(line: 37, column: 28, scope: !31)
!34 = !DILocation(line: 37, column: 27, scope: !31)
!35 = !DILocation(line: 37, column: 47, scope: !31)
!36 = !DILocation(line: 37, column: 46, scope: !31)
!37 = !DILocation(line: 37, column: 37, scope: !31)
!38 = !DILocation(line: 37, column: 57, scope: !31)
!39 = !DILocation(line: 37, column: 17, scope: !31)
!40 = !DILocation(line: 37, column: 64, scope: !31)
!41 = !DILocation(line: 37, column: 17, scope: !32)
!42 = !DILocation(line: 41, column: 34, scope: !43)
!43 = distinct !DILexicalBlock(scope: !31, file: !1, line: 38, column: 13)
!44 = !DILocation(line: 41, column: 27, scope: !43)
!45 = !DILocation(line: 41, column: 25, scope: !43)
!46 = !DILocation(line: 42, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 42, column: 21)
!48 = !DILocation(line: 42, column: 29, scope: !47)
!49 = !DILocation(line: 42, column: 33, scope: !47)
!50 = !DILocation(line: 42, column: 36, scope: !47)
!51 = !DILocation(line: 42, column: 41, scope: !47)
!52 = !DILocation(line: 42, column: 48, scope: !47)
!53 = !DILocation(line: 42, column: 52, scope: !47)
!54 = !DILocation(line: 42, column: 21, scope: !43)
!55 = !DILocation(line: 44, column: 21, scope: !56)
!56 = distinct !DILexicalBlock(scope: !47, file: !1, line: 43, column: 17)
!57 = !DILocation(line: 44, column: 26, scope: !56)
!58 = !DILocation(line: 44, column: 33, scope: !56)
!59 = !DILocation(line: 44, column: 37, scope: !56)
!60 = !DILocation(line: 45, column: 17, scope: !56)
!61 = !DILocation(line: 46, column: 13, scope: !43)
!62 = !DILocation(line: 49, column: 17, scope: !63)
!63 = distinct !DILexicalBlock(scope: !31, file: !1, line: 48, column: 13)
!64 = !DILocation(line: 51, column: 17, scope: !63)
!65 = !DILocation(line: 51, column: 22, scope: !63)
!66 = !DILocation(line: 51, column: 31, scope: !63)
!67 = !DILocation(line: 53, column: 9, scope: !32)
!68 = !DILocation(line: 55, column: 12, scope: !10)
!69 = !DILocation(line: 55, column: 5, scope: !10)
!70 = distinct !DISubprogram(name: "badVaSink", scope: !1, file: !1, line: 58, type: !71, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !13, null}
!73 = !DILocalVariable(name: "data", arg: 1, scope: !70, file: !1, line: 58, type: !13)
!74 = !DILocation(line: 58, column: 23, scope: !70)
!75 = !DILocalVariable(name: "args", scope: !76, file: !1, line: 61, type: !77)
!76 = distinct !DILexicalBlock(scope: !70, file: !1, line: 60, column: 5)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !78, line: 52, baseType: !79)
!78 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !80, line: 32, baseType: !81)
!80 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !82)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 192, elements: !90)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !84)
!84 = !{!85, !87, !88, !89}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !83, file: !1, line: 61, baseType: !86, size: 32)
!86 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !83, file: !1, line: 61, baseType: !86, size: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !83, file: !1, line: 61, baseType: !5, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !83, file: !1, line: 61, baseType: !5, size: 64, offset: 128)
!90 = !{!91}
!91 = !DISubrange(count: 1)
!92 = !DILocation(line: 61, column: 17, scope: !76)
!93 = !DILocation(line: 62, column: 9, scope: !76)
!94 = !DILocation(line: 64, column: 17, scope: !76)
!95 = !DILocation(line: 64, column: 23, scope: !76)
!96 = !DILocation(line: 64, column: 9, scope: !76)
!97 = !DILocation(line: 65, column: 9, scope: !76)
!98 = !DILocation(line: 67, column: 1, scope: !70)
!99 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_42_bad", scope: !1, file: !1, line: 69, type: !100, scopeLine: 70, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!100 = !DISubroutineType(types: !101)
!101 = !{null}
!102 = !DILocalVariable(name: "data", scope: !99, file: !1, line: 71, type: !13)
!103 = !DILocation(line: 71, column: 12, scope: !99)
!104 = !DILocalVariable(name: "dataBuffer", scope: !99, file: !1, line: 72, type: !105)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 100)
!108 = !DILocation(line: 72, column: 10, scope: !99)
!109 = !DILocation(line: 73, column: 12, scope: !99)
!110 = !DILocation(line: 73, column: 10, scope: !99)
!111 = !DILocation(line: 74, column: 22, scope: !99)
!112 = !DILocation(line: 74, column: 12, scope: !99)
!113 = !DILocation(line: 74, column: 10, scope: !99)
!114 = !DILocation(line: 75, column: 15, scope: !99)
!115 = !DILocation(line: 75, column: 21, scope: !99)
!116 = !DILocation(line: 75, column: 5, scope: !99)
!117 = !DILocation(line: 76, column: 1, scope: !99)
!118 = distinct !DISubprogram(name: "goodG2BSource", scope: !1, file: !1, line: 83, type: !11, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!119 = !DILocalVariable(name: "data", arg: 1, scope: !118, file: !1, line: 83, type: !13)
!120 = !DILocation(line: 83, column: 29, scope: !118)
!121 = !DILocation(line: 86, column: 12, scope: !118)
!122 = !DILocation(line: 86, column: 5, scope: !118)
!123 = !DILocation(line: 87, column: 12, scope: !118)
!124 = !DILocation(line: 87, column: 5, scope: !118)
!125 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !1, file: !1, line: 90, type: !71, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!126 = !DILocalVariable(name: "data", arg: 1, scope: !125, file: !1, line: 90, type: !13)
!127 = !DILocation(line: 90, column: 27, scope: !125)
!128 = !DILocalVariable(name: "args", scope: !129, file: !1, line: 93, type: !77)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 92, column: 5)
!130 = !DILocation(line: 93, column: 17, scope: !129)
!131 = !DILocation(line: 94, column: 9, scope: !129)
!132 = !DILocation(line: 96, column: 17, scope: !129)
!133 = !DILocation(line: 96, column: 23, scope: !129)
!134 = !DILocation(line: 96, column: 9, scope: !129)
!135 = !DILocation(line: 97, column: 9, scope: !129)
!136 = !DILocation(line: 99, column: 1, scope: !125)
!137 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 101, type: !100, scopeLine: 102, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!138 = !DILocalVariable(name: "data", scope: !137, file: !1, line: 103, type: !13)
!139 = !DILocation(line: 103, column: 12, scope: !137)
!140 = !DILocalVariable(name: "dataBuffer", scope: !137, file: !1, line: 104, type: !105)
!141 = !DILocation(line: 104, column: 10, scope: !137)
!142 = !DILocation(line: 105, column: 12, scope: !137)
!143 = !DILocation(line: 105, column: 10, scope: !137)
!144 = !DILocation(line: 106, column: 26, scope: !137)
!145 = !DILocation(line: 106, column: 12, scope: !137)
!146 = !DILocation(line: 106, column: 10, scope: !137)
!147 = !DILocation(line: 107, column: 19, scope: !137)
!148 = !DILocation(line: 107, column: 25, scope: !137)
!149 = !DILocation(line: 107, column: 5, scope: !137)
!150 = !DILocation(line: 108, column: 1, scope: !137)
!151 = distinct !DISubprogram(name: "goodB2GSource", scope: !1, file: !1, line: 111, type: !11, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!152 = !DILocalVariable(name: "data", arg: 1, scope: !151, file: !1, line: 111, type: !13)
!153 = !DILocation(line: 111, column: 29, scope: !151)
!154 = !DILocalVariable(name: "dataLen", scope: !155, file: !1, line: 115, type: !19)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 113, column: 5)
!156 = !DILocation(line: 115, column: 16, scope: !155)
!157 = !DILocation(line: 115, column: 33, scope: !155)
!158 = !DILocation(line: 115, column: 26, scope: !155)
!159 = !DILocation(line: 117, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !1, line: 117, column: 13)
!161 = !DILocation(line: 117, column: 16, scope: !160)
!162 = !DILocation(line: 117, column: 25, scope: !160)
!163 = !DILocation(line: 117, column: 13, scope: !155)
!164 = !DILocation(line: 120, column: 23, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !1, line: 120, column: 17)
!166 = distinct !DILexicalBlock(scope: !160, file: !1, line: 118, column: 9)
!167 = !DILocation(line: 120, column: 28, scope: !165)
!168 = !DILocation(line: 120, column: 27, scope: !165)
!169 = !DILocation(line: 120, column: 47, scope: !165)
!170 = !DILocation(line: 120, column: 46, scope: !165)
!171 = !DILocation(line: 120, column: 37, scope: !165)
!172 = !DILocation(line: 120, column: 57, scope: !165)
!173 = !DILocation(line: 120, column: 17, scope: !165)
!174 = !DILocation(line: 120, column: 64, scope: !165)
!175 = !DILocation(line: 120, column: 17, scope: !166)
!176 = !DILocation(line: 124, column: 34, scope: !177)
!177 = distinct !DILexicalBlock(scope: !165, file: !1, line: 121, column: 13)
!178 = !DILocation(line: 124, column: 27, scope: !177)
!179 = !DILocation(line: 124, column: 25, scope: !177)
!180 = !DILocation(line: 125, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 125, column: 21)
!182 = !DILocation(line: 125, column: 29, scope: !181)
!183 = !DILocation(line: 125, column: 33, scope: !181)
!184 = !DILocation(line: 125, column: 36, scope: !181)
!185 = !DILocation(line: 125, column: 41, scope: !181)
!186 = !DILocation(line: 125, column: 48, scope: !181)
!187 = !DILocation(line: 125, column: 52, scope: !181)
!188 = !DILocation(line: 125, column: 21, scope: !177)
!189 = !DILocation(line: 127, column: 21, scope: !190)
!190 = distinct !DILexicalBlock(scope: !181, file: !1, line: 126, column: 17)
!191 = !DILocation(line: 127, column: 26, scope: !190)
!192 = !DILocation(line: 127, column: 33, scope: !190)
!193 = !DILocation(line: 127, column: 37, scope: !190)
!194 = !DILocation(line: 128, column: 17, scope: !190)
!195 = !DILocation(line: 129, column: 13, scope: !177)
!196 = !DILocation(line: 132, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !165, file: !1, line: 131, column: 13)
!198 = !DILocation(line: 134, column: 17, scope: !197)
!199 = !DILocation(line: 134, column: 22, scope: !197)
!200 = !DILocation(line: 134, column: 31, scope: !197)
!201 = !DILocation(line: 136, column: 9, scope: !166)
!202 = !DILocation(line: 138, column: 12, scope: !151)
!203 = !DILocation(line: 138, column: 5, scope: !151)
!204 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !1, file: !1, line: 141, type: !71, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!205 = !DILocalVariable(name: "data", arg: 1, scope: !204, file: !1, line: 141, type: !13)
!206 = !DILocation(line: 141, column: 27, scope: !204)
!207 = !DILocalVariable(name: "args", scope: !208, file: !1, line: 144, type: !77)
!208 = distinct !DILexicalBlock(scope: !204, file: !1, line: 143, column: 5)
!209 = !DILocation(line: 144, column: 17, scope: !208)
!210 = !DILocation(line: 145, column: 9, scope: !208)
!211 = !DILocation(line: 147, column: 23, scope: !208)
!212 = !DILocation(line: 147, column: 9, scope: !208)
!213 = !DILocation(line: 148, column: 9, scope: !208)
!214 = !DILocation(line: 150, column: 1, scope: !204)
!215 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 152, type: !100, scopeLine: 153, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!216 = !DILocalVariable(name: "data", scope: !215, file: !1, line: 154, type: !13)
!217 = !DILocation(line: 154, column: 12, scope: !215)
!218 = !DILocalVariable(name: "dataBuffer", scope: !215, file: !1, line: 155, type: !105)
!219 = !DILocation(line: 155, column: 10, scope: !215)
!220 = !DILocation(line: 156, column: 12, scope: !215)
!221 = !DILocation(line: 156, column: 10, scope: !215)
!222 = !DILocation(line: 157, column: 26, scope: !215)
!223 = !DILocation(line: 157, column: 12, scope: !215)
!224 = !DILocation(line: 157, column: 10, scope: !215)
!225 = !DILocation(line: 158, column: 19, scope: !215)
!226 = !DILocation(line: 158, column: 25, scope: !215)
!227 = !DILocation(line: 158, column: 5, scope: !215)
!228 = !DILocation(line: 159, column: 1, scope: !215)
!229 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_vprintf_42_good", scope: !1, file: !1, line: 161, type: !100, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!230 = !DILocation(line: 163, column: 5, scope: !229)
!231 = !DILocation(line: 164, column: 5, scope: !229)
!232 = !DILocation(line: 165, column: 1, scope: !229)
