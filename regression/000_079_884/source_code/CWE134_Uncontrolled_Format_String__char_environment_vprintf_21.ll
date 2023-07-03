; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_vprintf_21.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_vprintf_21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@badStatic = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !8
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !11
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !13
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !19 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !24, metadata !DIExpression()), !dbg !25
  %0 = load i32, i32* @badStatic, align 4, !dbg !26
  %tobool = icmp ne i32 %0, 0, !dbg !26
  br i1 %tobool, label %if.then, label %if.end, !dbg !28

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !29, metadata !DIExpression()), !dbg !47
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !48
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !48
  call void @llvm.va_start(i8* %arraydecay1), !dbg !48
  %1 = load i8*, i8** %data.addr, align 8, !dbg !49
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !50
  %call = call i32 @vprintf(i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !51
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !52
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !52
  call void @llvm.va_end(i8* %arraydecay34), !dbg !52
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_21_bad() #0 !dbg !55 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !64
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !65
  store i8* %arraydecay, i8** %data, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !72
  %1 = load i8*, i8** %data, align 8, !dbg !73
  %call = call i64 @strlen(i8* %1) #7, !dbg !74
  store i64 %call, i64* %dataLen, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !75, metadata !DIExpression()), !dbg !76
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !77
  store i8* %call1, i8** %environment, align 8, !dbg !76
  %2 = load i8*, i8** %environment, align 8, !dbg !78
  %cmp = icmp ne i8* %2, null, !dbg !80
  br i1 %cmp, label %if.then, label %if.end, !dbg !81

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !82
  %4 = load i64, i64* %dataLen, align 8, !dbg !84
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !85
  %5 = load i8*, i8** %environment, align 8, !dbg !86
  %6 = load i64, i64* %dataLen, align 8, !dbg !87
  %sub = sub i64 100, %6, !dbg !88
  %sub2 = sub i64 %sub, 1, !dbg !89
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !90
  br label %if.end, !dbg !91

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @badStatic, align 4, !dbg !92
  %7 = load i8*, i8** %data, align 8, !dbg !93
  %8 = load i8*, i8** %data, align 8, !dbg !94
  call void (i8*, ...) @badVaSink(i8* %7, i8* %8), !dbg !95
  ret void, !dbg !96
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #6

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1_vasink(i8* %data, ...) #0 !dbg !97 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !98, metadata !DIExpression()), !dbg !99
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !100
  %tobool = icmp ne i32 %0, 0, !dbg !100
  br i1 %tobool, label %if.then, label %if.else, !dbg !102

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !103
  br label %if.end, !dbg !105

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !106, metadata !DIExpression()), !dbg !109
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !110
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !110
  call void @llvm.va_start(i8* %arraydecay1), !dbg !110
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !111
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !112
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !113
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !113
  call void @llvm.va_end(i8* %arraydecay34), !dbg !113
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !114
}

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !115 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !118, metadata !DIExpression()), !dbg !119
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !119
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !119
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !120
  store i8* %arraydecay, i8** %data, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !122, metadata !DIExpression()), !dbg !124
  %1 = load i8*, i8** %data, align 8, !dbg !125
  %call = call i64 @strlen(i8* %1) #7, !dbg !126
  store i64 %call, i64* %dataLen, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !127, metadata !DIExpression()), !dbg !128
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !129
  store i8* %call1, i8** %environment, align 8, !dbg !128
  %2 = load i8*, i8** %environment, align 8, !dbg !130
  %cmp = icmp ne i8* %2, null, !dbg !132
  br i1 %cmp, label %if.then, label %if.end, !dbg !133

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !134
  %4 = load i64, i64* %dataLen, align 8, !dbg !136
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !137
  %5 = load i8*, i8** %environment, align 8, !dbg !138
  %6 = load i64, i64* %dataLen, align 8, !dbg !139
  %sub = sub i64 100, %6, !dbg !140
  %sub2 = sub i64 %sub, 1, !dbg !141
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !142
  br label %if.end, !dbg !143

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !144
  %7 = load i8*, i8** %data, align 8, !dbg !145
  %8 = load i8*, i8** %data, align 8, !dbg !146
  call void (i8*, ...) @goodB2G1_vasink(i8* %7, i8* %8), !dbg !147
  ret void, !dbg !148
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2_vasink(i8* %data, ...) #0 !dbg !149 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !152
  %tobool = icmp ne i32 %0, 0, !dbg !152
  br i1 %tobool, label %if.then, label %if.end, !dbg !154

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !155, metadata !DIExpression()), !dbg !158
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !159
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !159
  call void @llvm.va_start(i8* %arraydecay1), !dbg !159
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !160
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !161
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !162
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !162
  call void @llvm.va_end(i8* %arraydecay34), !dbg !162
  br label %if.end, !dbg !163

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !164
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !165 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
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
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !177, metadata !DIExpression()), !dbg !178
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !179
  store i8* %call1, i8** %environment, align 8, !dbg !178
  %2 = load i8*, i8** %environment, align 8, !dbg !180
  %cmp = icmp ne i8* %2, null, !dbg !182
  br i1 %cmp, label %if.then, label %if.end, !dbg !183

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !184
  %4 = load i64, i64* %dataLen, align 8, !dbg !186
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !187
  %5 = load i8*, i8** %environment, align 8, !dbg !188
  %6 = load i64, i64* %dataLen, align 8, !dbg !189
  %sub = sub i64 100, %6, !dbg !190
  %sub2 = sub i64 %sub, 1, !dbg !191
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !192
  br label %if.end, !dbg !193

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !194
  %7 = load i8*, i8** %data, align 8, !dbg !195
  %8 = load i8*, i8** %data, align 8, !dbg !196
  call void (i8*, ...) @goodB2G2_vasink(i8* %7, i8* %8), !dbg !197
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !199 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !200, metadata !DIExpression()), !dbg !201
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !202
  %tobool = icmp ne i32 %0, 0, !dbg !202
  br i1 %tobool, label %if.then, label %if.end, !dbg !204

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !205, metadata !DIExpression()), !dbg !208
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !209
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !209
  call void @llvm.va_start(i8* %arraydecay1), !dbg !209
  %1 = load i8*, i8** %data.addr, align 8, !dbg !210
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !211
  %call = call i32 @vprintf(i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !212
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !213
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !213
  call void @llvm.va_end(i8* %arraydecay34), !dbg !213
  br label %if.end, !dbg !214

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !215
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !216 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !219, metadata !DIExpression()), !dbg !220
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !220
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !220
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !221
  store i8* %arraydecay, i8** %data, align 8, !dbg !222
  %1 = load i8*, i8** %data, align 8, !dbg !223
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !224
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !225
  %2 = load i8*, i8** %data, align 8, !dbg !226
  %3 = load i8*, i8** %data, align 8, !dbg !227
  call void (i8*, ...) @goodG2BVaSink(i8* %2, i8* %3), !dbg !228
  ret void, !dbg !229
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_21_good() #0 !dbg !230 {
entry:
  call void @goodB2G1(), !dbg !231
  call void @goodB2G2(), !dbg !232
  call void @goodG2B(), !dbg !233
  ret void, !dbg !234
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
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 37, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_884/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !11, !13}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 78, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 79, type: !10, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 80, type: !10, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "badVaSink", scope: !3, file: !3, line: 39, type: !20, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, null}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DILocalVariable(name: "data", arg: 1, scope: !19, file: !3, line: 39, type: !22)
!25 = !DILocation(line: 39, column: 23, scope: !19)
!26 = !DILocation(line: 41, column: 8, scope: !27)
!27 = distinct !DILexicalBlock(scope: !19, file: !3, line: 41, column: 8)
!28 = !DILocation(line: 41, column: 8, scope: !19)
!29 = !DILocalVariable(name: "args", scope: !30, file: !3, line: 44, type: !32)
!30 = distinct !DILexicalBlock(scope: !31, file: !3, line: 43, column: 9)
!31 = distinct !DILexicalBlock(scope: !27, file: !3, line: 42, column: 5)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !33, line: 52, baseType: !34)
!33 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !35, line: 32, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 192, elements: !45)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !39)
!39 = !{!40, !42, !43, !44}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !38, file: !3, line: 44, baseType: !41, size: 32)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !38, file: !3, line: 44, baseType: !41, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !38, file: !3, line: 44, baseType: !6, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !38, file: !3, line: 44, baseType: !6, size: 64, offset: 128)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DILocation(line: 44, column: 21, scope: !30)
!48 = !DILocation(line: 45, column: 13, scope: !30)
!49 = !DILocation(line: 47, column: 21, scope: !30)
!50 = !DILocation(line: 47, column: 27, scope: !30)
!51 = !DILocation(line: 47, column: 13, scope: !30)
!52 = !DILocation(line: 48, column: 13, scope: !30)
!53 = !DILocation(line: 50, column: 5, scope: !31)
!54 = !DILocation(line: 51, column: 1, scope: !19)
!55 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_21_bad", scope: !3, file: !3, line: 53, type: !56, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !3, line: 55, type: !22)
!59 = !DILocation(line: 55, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !3, line: 56, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 56, column: 10, scope: !55)
!65 = !DILocation(line: 57, column: 12, scope: !55)
!66 = !DILocation(line: 57, column: 10, scope: !55)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !3, line: 60, type: !69)
!68 = distinct !DILexicalBlock(scope: !55, file: !3, line: 58, column: 5)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 60, column: 16, scope: !68)
!73 = !DILocation(line: 60, column: 33, scope: !68)
!74 = !DILocation(line: 60, column: 26, scope: !68)
!75 = !DILocalVariable(name: "environment", scope: !68, file: !3, line: 61, type: !22)
!76 = !DILocation(line: 61, column: 16, scope: !68)
!77 = !DILocation(line: 61, column: 30, scope: !68)
!78 = !DILocation(line: 63, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !68, file: !3, line: 63, column: 13)
!80 = !DILocation(line: 63, column: 25, scope: !79)
!81 = !DILocation(line: 63, column: 13, scope: !68)
!82 = !DILocation(line: 66, column: 21, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !3, line: 64, column: 9)
!84 = !DILocation(line: 66, column: 26, scope: !83)
!85 = !DILocation(line: 66, column: 25, scope: !83)
!86 = !DILocation(line: 66, column: 35, scope: !83)
!87 = !DILocation(line: 66, column: 52, scope: !83)
!88 = !DILocation(line: 66, column: 51, scope: !83)
!89 = !DILocation(line: 66, column: 59, scope: !83)
!90 = !DILocation(line: 66, column: 13, scope: !83)
!91 = !DILocation(line: 67, column: 9, scope: !83)
!92 = !DILocation(line: 69, column: 15, scope: !55)
!93 = !DILocation(line: 70, column: 15, scope: !55)
!94 = !DILocation(line: 70, column: 21, scope: !55)
!95 = !DILocation(line: 70, column: 5, scope: !55)
!96 = !DILocation(line: 71, column: 1, scope: !55)
!97 = distinct !DISubprogram(name: "goodB2G1_vasink", scope: !3, file: !3, line: 83, type: !20, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!98 = !DILocalVariable(name: "data", arg: 1, scope: !97, file: !3, line: 83, type: !22)
!99 = !DILocation(line: 83, column: 29, scope: !97)
!100 = !DILocation(line: 85, column: 8, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !3, line: 85, column: 8)
!102 = !DILocation(line: 85, column: 8, scope: !97)
!103 = !DILocation(line: 88, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !3, line: 86, column: 5)
!105 = !DILocation(line: 89, column: 5, scope: !104)
!106 = !DILocalVariable(name: "args", scope: !107, file: !3, line: 93, type: !32)
!107 = distinct !DILexicalBlock(scope: !108, file: !3, line: 92, column: 9)
!108 = distinct !DILexicalBlock(scope: !101, file: !3, line: 91, column: 5)
!109 = !DILocation(line: 93, column: 21, scope: !107)
!110 = !DILocation(line: 94, column: 13, scope: !107)
!111 = !DILocation(line: 96, column: 27, scope: !107)
!112 = !DILocation(line: 96, column: 13, scope: !107)
!113 = !DILocation(line: 97, column: 13, scope: !107)
!114 = !DILocation(line: 100, column: 1, scope: !97)
!115 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 102, type: !56, scopeLine: 103, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!116 = !DILocalVariable(name: "data", scope: !115, file: !3, line: 104, type: !22)
!117 = !DILocation(line: 104, column: 12, scope: !115)
!118 = !DILocalVariable(name: "dataBuffer", scope: !115, file: !3, line: 105, type: !61)
!119 = !DILocation(line: 105, column: 10, scope: !115)
!120 = !DILocation(line: 106, column: 12, scope: !115)
!121 = !DILocation(line: 106, column: 10, scope: !115)
!122 = !DILocalVariable(name: "dataLen", scope: !123, file: !3, line: 109, type: !69)
!123 = distinct !DILexicalBlock(scope: !115, file: !3, line: 107, column: 5)
!124 = !DILocation(line: 109, column: 16, scope: !123)
!125 = !DILocation(line: 109, column: 33, scope: !123)
!126 = !DILocation(line: 109, column: 26, scope: !123)
!127 = !DILocalVariable(name: "environment", scope: !123, file: !3, line: 110, type: !22)
!128 = !DILocation(line: 110, column: 16, scope: !123)
!129 = !DILocation(line: 110, column: 30, scope: !123)
!130 = !DILocation(line: 112, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !123, file: !3, line: 112, column: 13)
!132 = !DILocation(line: 112, column: 25, scope: !131)
!133 = !DILocation(line: 112, column: 13, scope: !123)
!134 = !DILocation(line: 115, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !3, line: 113, column: 9)
!136 = !DILocation(line: 115, column: 26, scope: !135)
!137 = !DILocation(line: 115, column: 25, scope: !135)
!138 = !DILocation(line: 115, column: 35, scope: !135)
!139 = !DILocation(line: 115, column: 52, scope: !135)
!140 = !DILocation(line: 115, column: 51, scope: !135)
!141 = !DILocation(line: 115, column: 59, scope: !135)
!142 = !DILocation(line: 115, column: 13, scope: !135)
!143 = !DILocation(line: 116, column: 9, scope: !135)
!144 = !DILocation(line: 118, column: 20, scope: !115)
!145 = !DILocation(line: 119, column: 21, scope: !115)
!146 = !DILocation(line: 119, column: 27, scope: !115)
!147 = !DILocation(line: 119, column: 5, scope: !115)
!148 = !DILocation(line: 120, column: 1, scope: !115)
!149 = distinct !DISubprogram(name: "goodB2G2_vasink", scope: !3, file: !3, line: 123, type: !20, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!150 = !DILocalVariable(name: "data", arg: 1, scope: !149, file: !3, line: 123, type: !22)
!151 = !DILocation(line: 123, column: 29, scope: !149)
!152 = !DILocation(line: 125, column: 8, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !3, line: 125, column: 8)
!154 = !DILocation(line: 125, column: 8, scope: !149)
!155 = !DILocalVariable(name: "args", scope: !156, file: !3, line: 128, type: !32)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 127, column: 9)
!157 = distinct !DILexicalBlock(scope: !153, file: !3, line: 126, column: 5)
!158 = !DILocation(line: 128, column: 21, scope: !156)
!159 = !DILocation(line: 129, column: 13, scope: !156)
!160 = !DILocation(line: 131, column: 27, scope: !156)
!161 = !DILocation(line: 131, column: 13, scope: !156)
!162 = !DILocation(line: 132, column: 13, scope: !156)
!163 = !DILocation(line: 134, column: 5, scope: !157)
!164 = !DILocation(line: 135, column: 1, scope: !149)
!165 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 137, type: !56, scopeLine: 138, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!166 = !DILocalVariable(name: "data", scope: !165, file: !3, line: 139, type: !22)
!167 = !DILocation(line: 139, column: 12, scope: !165)
!168 = !DILocalVariable(name: "dataBuffer", scope: !165, file: !3, line: 140, type: !61)
!169 = !DILocation(line: 140, column: 10, scope: !165)
!170 = !DILocation(line: 141, column: 12, scope: !165)
!171 = !DILocation(line: 141, column: 10, scope: !165)
!172 = !DILocalVariable(name: "dataLen", scope: !173, file: !3, line: 144, type: !69)
!173 = distinct !DILexicalBlock(scope: !165, file: !3, line: 142, column: 5)
!174 = !DILocation(line: 144, column: 16, scope: !173)
!175 = !DILocation(line: 144, column: 33, scope: !173)
!176 = !DILocation(line: 144, column: 26, scope: !173)
!177 = !DILocalVariable(name: "environment", scope: !173, file: !3, line: 145, type: !22)
!178 = !DILocation(line: 145, column: 16, scope: !173)
!179 = !DILocation(line: 145, column: 30, scope: !173)
!180 = !DILocation(line: 147, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !173, file: !3, line: 147, column: 13)
!182 = !DILocation(line: 147, column: 25, scope: !181)
!183 = !DILocation(line: 147, column: 13, scope: !173)
!184 = !DILocation(line: 150, column: 21, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !3, line: 148, column: 9)
!186 = !DILocation(line: 150, column: 26, scope: !185)
!187 = !DILocation(line: 150, column: 25, scope: !185)
!188 = !DILocation(line: 150, column: 35, scope: !185)
!189 = !DILocation(line: 150, column: 52, scope: !185)
!190 = !DILocation(line: 150, column: 51, scope: !185)
!191 = !DILocation(line: 150, column: 59, scope: !185)
!192 = !DILocation(line: 150, column: 13, scope: !185)
!193 = !DILocation(line: 151, column: 9, scope: !185)
!194 = !DILocation(line: 153, column: 20, scope: !165)
!195 = !DILocation(line: 154, column: 21, scope: !165)
!196 = !DILocation(line: 154, column: 27, scope: !165)
!197 = !DILocation(line: 154, column: 5, scope: !165)
!198 = !DILocation(line: 155, column: 1, scope: !165)
!199 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !3, file: !3, line: 158, type: !20, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!200 = !DILocalVariable(name: "data", arg: 1, scope: !199, file: !3, line: 158, type: !22)
!201 = !DILocation(line: 158, column: 27, scope: !199)
!202 = !DILocation(line: 160, column: 8, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !3, line: 160, column: 8)
!204 = !DILocation(line: 160, column: 8, scope: !199)
!205 = !DILocalVariable(name: "args", scope: !206, file: !3, line: 163, type: !32)
!206 = distinct !DILexicalBlock(scope: !207, file: !3, line: 162, column: 9)
!207 = distinct !DILexicalBlock(scope: !203, file: !3, line: 161, column: 5)
!208 = !DILocation(line: 163, column: 21, scope: !206)
!209 = !DILocation(line: 164, column: 13, scope: !206)
!210 = !DILocation(line: 166, column: 21, scope: !206)
!211 = !DILocation(line: 166, column: 27, scope: !206)
!212 = !DILocation(line: 166, column: 13, scope: !206)
!213 = !DILocation(line: 167, column: 13, scope: !206)
!214 = !DILocation(line: 169, column: 5, scope: !207)
!215 = !DILocation(line: 170, column: 1, scope: !199)
!216 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 172, type: !56, scopeLine: 173, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!217 = !DILocalVariable(name: "data", scope: !216, file: !3, line: 174, type: !22)
!218 = !DILocation(line: 174, column: 12, scope: !216)
!219 = !DILocalVariable(name: "dataBuffer", scope: !216, file: !3, line: 175, type: !61)
!220 = !DILocation(line: 175, column: 10, scope: !216)
!221 = !DILocation(line: 176, column: 12, scope: !216)
!222 = !DILocation(line: 176, column: 10, scope: !216)
!223 = !DILocation(line: 178, column: 12, scope: !216)
!224 = !DILocation(line: 178, column: 5, scope: !216)
!225 = !DILocation(line: 179, column: 19, scope: !216)
!226 = !DILocation(line: 180, column: 19, scope: !216)
!227 = !DILocation(line: 180, column: 25, scope: !216)
!228 = !DILocation(line: 180, column: 5, scope: !216)
!229 = !DILocation(line: 181, column: 1, scope: !216)
!230 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_21_good", scope: !3, file: !3, line: 183, type: !56, scopeLine: 184, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!231 = !DILocation(line: 185, column: 5, scope: !230)
!232 = !DILocation(line: 186, column: 5, scope: !230)
!233 = !DILocation(line: 187, column: 5, scope: !230)
!234 = !DILocation(line: 188, column: 1, scope: !230)
