; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_12.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_12_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !21
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !22
  store i8* %arraydecay, i8** %data, align 8, !dbg !23
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !24
  %tobool = icmp ne i32 %call, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.else21, !dbg !26

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !27, metadata !DIExpression()), !dbg !33
  %1 = load i8*, i8** %data, align 8, !dbg !34
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !35
  store i64 %call1, i64* %dataLen, align 8, !dbg !33
  %2 = load i64, i64* %dataLen, align 8, !dbg !36
  %sub = sub i64 100, %2, !dbg !38
  %cmp = icmp ugt i64 %sub, 1, !dbg !39
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !40

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !41
  %4 = load i64, i64* %dataLen, align 8, !dbg !44
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !45
  %5 = load i64, i64* %dataLen, align 8, !dbg !46
  %sub3 = sub i64 100, %5, !dbg !47
  %conv = trunc i64 %sub3 to i32, !dbg !48
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !49
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !50
  %cmp5 = icmp ne i8* %call4, null, !dbg !51
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !52

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !53
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !55
  store i64 %call8, i64* %dataLen, align 8, !dbg !56
  %8 = load i64, i64* %dataLen, align 8, !dbg !57
  %cmp9 = icmp ugt i64 %8, 0, !dbg !59
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !60

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !61
  %10 = load i64, i64* %dataLen, align 8, !dbg !62
  %sub11 = sub i64 %10, 1, !dbg !63
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !61
  %11 = load i8, i8* %arrayidx, align 1, !dbg !61
  %conv12 = sext i8 %11 to i32, !dbg !61
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !64
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !65

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !66
  %13 = load i64, i64* %dataLen, align 8, !dbg !68
  %sub16 = sub i64 %13, 1, !dbg !69
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !66
  store i8 0, i8* %arrayidx17, align 1, !dbg !70
  br label %if.end, !dbg !71

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !72

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !73
  %14 = load i8*, i8** %data, align 8, !dbg !75
  %15 = load i64, i64* %dataLen, align 8, !dbg !76
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !75
  store i8 0, i8* %arrayidx18, align 1, !dbg !77
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !78

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end23, !dbg !79

if.else21:                                        ; preds = %entry
  %16 = load i8*, i8** %data, align 8, !dbg !80
  %call22 = call i8* @strcpy(i8* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !82
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.end20
  %call24 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !83
  %tobool25 = icmp ne i32 %call24, 0, !dbg !83
  br i1 %tobool25, label %if.then26, label %if.else28, !dbg !85

if.then26:                                        ; preds = %if.end23
  %17 = load i8*, i8** %data, align 8, !dbg !86
  %call27 = call i32 (i8*, ...) @printf(i8* %17), !dbg !88
  br label %if.end30, !dbg !89

if.else28:                                        ; preds = %if.end23
  %18 = load i8*, i8** %data, align 8, !dbg !90
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !92
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  ret void, !dbg !93
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @globalReturnsTrueOrFalse(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !94 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %dataLen22 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !97, metadata !DIExpression()), !dbg !98
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !98
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !99
  store i8* %arraydecay, i8** %data, align 8, !dbg !100
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !101
  %tobool = icmp ne i32 %call, 0, !dbg !101
  br i1 %tobool, label %if.then, label %if.else21, !dbg !103

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !104, metadata !DIExpression()), !dbg !107
  %1 = load i8*, i8** %data, align 8, !dbg !108
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !109
  store i64 %call1, i64* %dataLen, align 8, !dbg !107
  %2 = load i64, i64* %dataLen, align 8, !dbg !110
  %sub = sub i64 100, %2, !dbg !112
  %cmp = icmp ugt i64 %sub, 1, !dbg !113
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !114

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !115
  %4 = load i64, i64* %dataLen, align 8, !dbg !118
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !119
  %5 = load i64, i64* %dataLen, align 8, !dbg !120
  %sub3 = sub i64 100, %5, !dbg !121
  %conv = trunc i64 %sub3 to i32, !dbg !122
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !123
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !124
  %cmp5 = icmp ne i8* %call4, null, !dbg !125
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !126

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %data, align 8, !dbg !127
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !129
  store i64 %call8, i64* %dataLen, align 8, !dbg !130
  %8 = load i64, i64* %dataLen, align 8, !dbg !131
  %cmp9 = icmp ugt i64 %8, 0, !dbg !133
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !134

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %data, align 8, !dbg !135
  %10 = load i64, i64* %dataLen, align 8, !dbg !136
  %sub11 = sub i64 %10, 1, !dbg !137
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !135
  %11 = load i8, i8* %arrayidx, align 1, !dbg !135
  %conv12 = sext i8 %11 to i32, !dbg !135
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !138
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !139

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !140
  %13 = load i64, i64* %dataLen, align 8, !dbg !142
  %sub16 = sub i64 %13, 1, !dbg !143
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !140
  store i8 0, i8* %arrayidx17, align 1, !dbg !144
  br label %if.end, !dbg !145

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !146

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !147
  %14 = load i8*, i8** %data, align 8, !dbg !149
  %15 = load i64, i64* %dataLen, align 8, !dbg !150
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !149
  store i8 0, i8* %arrayidx18, align 1, !dbg !151
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !152

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end52, !dbg !153

if.else21:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen22, metadata !154, metadata !DIExpression()), !dbg !157
  %16 = load i8*, i8** %data, align 8, !dbg !158
  %call23 = call i64 @strlen(i8* %16) #6, !dbg !159
  store i64 %call23, i64* %dataLen22, align 8, !dbg !157
  %17 = load i64, i64* %dataLen22, align 8, !dbg !160
  %sub24 = sub i64 100, %17, !dbg !162
  %cmp25 = icmp ugt i64 %sub24, 1, !dbg !163
  br i1 %cmp25, label %if.then27, label %if.end51, !dbg !164

if.then27:                                        ; preds = %if.else21
  %18 = load i8*, i8** %data, align 8, !dbg !165
  %19 = load i64, i64* %dataLen22, align 8, !dbg !168
  %add.ptr28 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !169
  %20 = load i64, i64* %dataLen22, align 8, !dbg !170
  %sub29 = sub i64 100, %20, !dbg !171
  %conv30 = trunc i64 %sub29 to i32, !dbg !172
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !173
  %call31 = call i8* @fgets(i8* %add.ptr28, i32 %conv30, %struct._IO_FILE* %21), !dbg !174
  %cmp32 = icmp ne i8* %call31, null, !dbg !175
  br i1 %cmp32, label %if.then34, label %if.else48, !dbg !176

if.then34:                                        ; preds = %if.then27
  %22 = load i8*, i8** %data, align 8, !dbg !177
  %call35 = call i64 @strlen(i8* %22) #6, !dbg !179
  store i64 %call35, i64* %dataLen22, align 8, !dbg !180
  %23 = load i64, i64* %dataLen22, align 8, !dbg !181
  %cmp36 = icmp ugt i64 %23, 0, !dbg !183
  br i1 %cmp36, label %land.lhs.true38, label %if.end47, !dbg !184

land.lhs.true38:                                  ; preds = %if.then34
  %24 = load i8*, i8** %data, align 8, !dbg !185
  %25 = load i64, i64* %dataLen22, align 8, !dbg !186
  %sub39 = sub i64 %25, 1, !dbg !187
  %arrayidx40 = getelementptr inbounds i8, i8* %24, i64 %sub39, !dbg !185
  %26 = load i8, i8* %arrayidx40, align 1, !dbg !185
  %conv41 = sext i8 %26 to i32, !dbg !185
  %cmp42 = icmp eq i32 %conv41, 10, !dbg !188
  br i1 %cmp42, label %if.then44, label %if.end47, !dbg !189

if.then44:                                        ; preds = %land.lhs.true38
  %27 = load i8*, i8** %data, align 8, !dbg !190
  %28 = load i64, i64* %dataLen22, align 8, !dbg !192
  %sub45 = sub i64 %28, 1, !dbg !193
  %arrayidx46 = getelementptr inbounds i8, i8* %27, i64 %sub45, !dbg !190
  store i8 0, i8* %arrayidx46, align 1, !dbg !194
  br label %if.end47, !dbg !195

if.end47:                                         ; preds = %if.then44, %land.lhs.true38, %if.then34
  br label %if.end50, !dbg !196

if.else48:                                        ; preds = %if.then27
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !197
  %29 = load i8*, i8** %data, align 8, !dbg !199
  %30 = load i64, i64* %dataLen22, align 8, !dbg !200
  %arrayidx49 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !199
  store i8 0, i8* %arrayidx49, align 1, !dbg !201
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.end47
  br label %if.end51, !dbg !202

if.end51:                                         ; preds = %if.end50, %if.else21
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end20
  %call53 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !203
  %tobool54 = icmp ne i32 %call53, 0, !dbg !203
  br i1 %tobool54, label %if.then55, label %if.else57, !dbg !205

if.then55:                                        ; preds = %if.end52
  %31 = load i8*, i8** %data, align 8, !dbg !206
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %31), !dbg !208
  br label %if.end59, !dbg !209

if.else57:                                        ; preds = %if.end52
  %32 = load i8*, i8** %data, align 8, !dbg !210
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %32), !dbg !212
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then55
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !214 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !217, metadata !DIExpression()), !dbg !218
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !218
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !218
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !219
  store i8* %arraydecay, i8** %data, align 8, !dbg !220
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !221
  %tobool = icmp ne i32 %call, 0, !dbg !221
  br i1 %tobool, label %if.then, label %if.else, !dbg !223

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !224
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !226
  br label %if.end, !dbg !227

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !228
  %call2 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !230
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !231
  %tobool4 = icmp ne i32 %call3, 0, !dbg !231
  br i1 %tobool4, label %if.then5, label %if.else7, !dbg !233

if.then5:                                         ; preds = %if.end
  %3 = load i8*, i8** %data, align 8, !dbg !234
  %call6 = call i32 (i8*, ...) @printf(i8* %3), !dbg !236
  br label %if.end9, !dbg !237

if.else7:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !238
  %call8 = call i32 (i8*, ...) @printf(i8* %4), !dbg !240
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then5
  ret void, !dbg !241
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_12_good() #0 !dbg !242 {
entry:
  call void @goodB2G(), !dbg !243
  call void @goodG2B(), !dbg !244
  ret void, !dbg !245
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_445/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_12_bad", scope: !1, file: !1, line: 27, type: !11, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 29, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 29, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 30, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 30, column: 10, scope: !10)
!22 = !DILocation(line: 31, column: 12, scope: !10)
!23 = !DILocation(line: 31, column: 10, scope: !10)
!24 = !DILocation(line: 32, column: 8, scope: !25)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 32, column: 8)
!26 = !DILocation(line: 32, column: 8, scope: !10)
!27 = !DILocalVariable(name: "dataLen", scope: !28, file: !1, line: 36, type: !30)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 34, column: 9)
!29 = distinct !DILexicalBlock(scope: !25, file: !1, line: 33, column: 5)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 36, column: 20, scope: !28)
!34 = !DILocation(line: 36, column: 37, scope: !28)
!35 = !DILocation(line: 36, column: 30, scope: !28)
!36 = !DILocation(line: 38, column: 21, scope: !37)
!37 = distinct !DILexicalBlock(scope: !28, file: !1, line: 38, column: 17)
!38 = !DILocation(line: 38, column: 20, scope: !37)
!39 = !DILocation(line: 38, column: 29, scope: !37)
!40 = !DILocation(line: 38, column: 17, scope: !28)
!41 = !DILocation(line: 41, column: 27, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 41, column: 21)
!43 = distinct !DILexicalBlock(scope: !37, file: !1, line: 39, column: 13)
!44 = !DILocation(line: 41, column: 32, scope: !42)
!45 = !DILocation(line: 41, column: 31, scope: !42)
!46 = !DILocation(line: 41, column: 51, scope: !42)
!47 = !DILocation(line: 41, column: 50, scope: !42)
!48 = !DILocation(line: 41, column: 41, scope: !42)
!49 = !DILocation(line: 41, column: 61, scope: !42)
!50 = !DILocation(line: 41, column: 21, scope: !42)
!51 = !DILocation(line: 41, column: 68, scope: !42)
!52 = !DILocation(line: 41, column: 21, scope: !43)
!53 = !DILocation(line: 45, column: 38, scope: !54)
!54 = distinct !DILexicalBlock(scope: !42, file: !1, line: 42, column: 17)
!55 = !DILocation(line: 45, column: 31, scope: !54)
!56 = !DILocation(line: 45, column: 29, scope: !54)
!57 = !DILocation(line: 46, column: 25, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 46, column: 25)
!59 = !DILocation(line: 46, column: 33, scope: !58)
!60 = !DILocation(line: 46, column: 37, scope: !58)
!61 = !DILocation(line: 46, column: 40, scope: !58)
!62 = !DILocation(line: 46, column: 45, scope: !58)
!63 = !DILocation(line: 46, column: 52, scope: !58)
!64 = !DILocation(line: 46, column: 56, scope: !58)
!65 = !DILocation(line: 46, column: 25, scope: !54)
!66 = !DILocation(line: 48, column: 25, scope: !67)
!67 = distinct !DILexicalBlock(scope: !58, file: !1, line: 47, column: 21)
!68 = !DILocation(line: 48, column: 30, scope: !67)
!69 = !DILocation(line: 48, column: 37, scope: !67)
!70 = !DILocation(line: 48, column: 41, scope: !67)
!71 = !DILocation(line: 49, column: 21, scope: !67)
!72 = !DILocation(line: 50, column: 17, scope: !54)
!73 = !DILocation(line: 53, column: 21, scope: !74)
!74 = distinct !DILexicalBlock(scope: !42, file: !1, line: 52, column: 17)
!75 = !DILocation(line: 55, column: 21, scope: !74)
!76 = !DILocation(line: 55, column: 26, scope: !74)
!77 = !DILocation(line: 55, column: 35, scope: !74)
!78 = !DILocation(line: 57, column: 13, scope: !43)
!79 = !DILocation(line: 59, column: 5, scope: !29)
!80 = !DILocation(line: 63, column: 16, scope: !81)
!81 = distinct !DILexicalBlock(scope: !25, file: !1, line: 61, column: 5)
!82 = !DILocation(line: 63, column: 9, scope: !81)
!83 = !DILocation(line: 65, column: 8, scope: !84)
!84 = distinct !DILexicalBlock(scope: !10, file: !1, line: 65, column: 8)
!85 = !DILocation(line: 65, column: 8, scope: !10)
!86 = !DILocation(line: 68, column: 16, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !1, line: 66, column: 5)
!88 = !DILocation(line: 68, column: 9, scope: !87)
!89 = !DILocation(line: 69, column: 5, scope: !87)
!90 = !DILocation(line: 73, column: 24, scope: !91)
!91 = distinct !DILexicalBlock(scope: !84, file: !1, line: 71, column: 5)
!92 = !DILocation(line: 73, column: 9, scope: !91)
!93 = !DILocation(line: 75, column: 1, scope: !10)
!94 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 84, type: !11, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!95 = !DILocalVariable(name: "data", scope: !94, file: !1, line: 86, type: !14)
!96 = !DILocation(line: 86, column: 12, scope: !94)
!97 = !DILocalVariable(name: "dataBuffer", scope: !94, file: !1, line: 87, type: !18)
!98 = !DILocation(line: 87, column: 10, scope: !94)
!99 = !DILocation(line: 88, column: 12, scope: !94)
!100 = !DILocation(line: 88, column: 10, scope: !94)
!101 = !DILocation(line: 89, column: 8, scope: !102)
!102 = distinct !DILexicalBlock(scope: !94, file: !1, line: 89, column: 8)
!103 = !DILocation(line: 89, column: 8, scope: !94)
!104 = !DILocalVariable(name: "dataLen", scope: !105, file: !1, line: 93, type: !30)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 91, column: 9)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 90, column: 5)
!107 = !DILocation(line: 93, column: 20, scope: !105)
!108 = !DILocation(line: 93, column: 37, scope: !105)
!109 = !DILocation(line: 93, column: 30, scope: !105)
!110 = !DILocation(line: 95, column: 21, scope: !111)
!111 = distinct !DILexicalBlock(scope: !105, file: !1, line: 95, column: 17)
!112 = !DILocation(line: 95, column: 20, scope: !111)
!113 = !DILocation(line: 95, column: 29, scope: !111)
!114 = !DILocation(line: 95, column: 17, scope: !105)
!115 = !DILocation(line: 98, column: 27, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 98, column: 21)
!117 = distinct !DILexicalBlock(scope: !111, file: !1, line: 96, column: 13)
!118 = !DILocation(line: 98, column: 32, scope: !116)
!119 = !DILocation(line: 98, column: 31, scope: !116)
!120 = !DILocation(line: 98, column: 51, scope: !116)
!121 = !DILocation(line: 98, column: 50, scope: !116)
!122 = !DILocation(line: 98, column: 41, scope: !116)
!123 = !DILocation(line: 98, column: 61, scope: !116)
!124 = !DILocation(line: 98, column: 21, scope: !116)
!125 = !DILocation(line: 98, column: 68, scope: !116)
!126 = !DILocation(line: 98, column: 21, scope: !117)
!127 = !DILocation(line: 102, column: 38, scope: !128)
!128 = distinct !DILexicalBlock(scope: !116, file: !1, line: 99, column: 17)
!129 = !DILocation(line: 102, column: 31, scope: !128)
!130 = !DILocation(line: 102, column: 29, scope: !128)
!131 = !DILocation(line: 103, column: 25, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 103, column: 25)
!133 = !DILocation(line: 103, column: 33, scope: !132)
!134 = !DILocation(line: 103, column: 37, scope: !132)
!135 = !DILocation(line: 103, column: 40, scope: !132)
!136 = !DILocation(line: 103, column: 45, scope: !132)
!137 = !DILocation(line: 103, column: 52, scope: !132)
!138 = !DILocation(line: 103, column: 56, scope: !132)
!139 = !DILocation(line: 103, column: 25, scope: !128)
!140 = !DILocation(line: 105, column: 25, scope: !141)
!141 = distinct !DILexicalBlock(scope: !132, file: !1, line: 104, column: 21)
!142 = !DILocation(line: 105, column: 30, scope: !141)
!143 = !DILocation(line: 105, column: 37, scope: !141)
!144 = !DILocation(line: 105, column: 41, scope: !141)
!145 = !DILocation(line: 106, column: 21, scope: !141)
!146 = !DILocation(line: 107, column: 17, scope: !128)
!147 = !DILocation(line: 110, column: 21, scope: !148)
!148 = distinct !DILexicalBlock(scope: !116, file: !1, line: 109, column: 17)
!149 = !DILocation(line: 112, column: 21, scope: !148)
!150 = !DILocation(line: 112, column: 26, scope: !148)
!151 = !DILocation(line: 112, column: 35, scope: !148)
!152 = !DILocation(line: 114, column: 13, scope: !117)
!153 = !DILocation(line: 116, column: 5, scope: !106)
!154 = !DILocalVariable(name: "dataLen", scope: !155, file: !1, line: 121, type: !30)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 119, column: 9)
!156 = distinct !DILexicalBlock(scope: !102, file: !1, line: 118, column: 5)
!157 = !DILocation(line: 121, column: 20, scope: !155)
!158 = !DILocation(line: 121, column: 37, scope: !155)
!159 = !DILocation(line: 121, column: 30, scope: !155)
!160 = !DILocation(line: 123, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !155, file: !1, line: 123, column: 17)
!162 = !DILocation(line: 123, column: 20, scope: !161)
!163 = !DILocation(line: 123, column: 29, scope: !161)
!164 = !DILocation(line: 123, column: 17, scope: !155)
!165 = !DILocation(line: 126, column: 27, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 126, column: 21)
!167 = distinct !DILexicalBlock(scope: !161, file: !1, line: 124, column: 13)
!168 = !DILocation(line: 126, column: 32, scope: !166)
!169 = !DILocation(line: 126, column: 31, scope: !166)
!170 = !DILocation(line: 126, column: 51, scope: !166)
!171 = !DILocation(line: 126, column: 50, scope: !166)
!172 = !DILocation(line: 126, column: 41, scope: !166)
!173 = !DILocation(line: 126, column: 61, scope: !166)
!174 = !DILocation(line: 126, column: 21, scope: !166)
!175 = !DILocation(line: 126, column: 68, scope: !166)
!176 = !DILocation(line: 126, column: 21, scope: !167)
!177 = !DILocation(line: 130, column: 38, scope: !178)
!178 = distinct !DILexicalBlock(scope: !166, file: !1, line: 127, column: 17)
!179 = !DILocation(line: 130, column: 31, scope: !178)
!180 = !DILocation(line: 130, column: 29, scope: !178)
!181 = !DILocation(line: 131, column: 25, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 131, column: 25)
!183 = !DILocation(line: 131, column: 33, scope: !182)
!184 = !DILocation(line: 131, column: 37, scope: !182)
!185 = !DILocation(line: 131, column: 40, scope: !182)
!186 = !DILocation(line: 131, column: 45, scope: !182)
!187 = !DILocation(line: 131, column: 52, scope: !182)
!188 = !DILocation(line: 131, column: 56, scope: !182)
!189 = !DILocation(line: 131, column: 25, scope: !178)
!190 = !DILocation(line: 133, column: 25, scope: !191)
!191 = distinct !DILexicalBlock(scope: !182, file: !1, line: 132, column: 21)
!192 = !DILocation(line: 133, column: 30, scope: !191)
!193 = !DILocation(line: 133, column: 37, scope: !191)
!194 = !DILocation(line: 133, column: 41, scope: !191)
!195 = !DILocation(line: 134, column: 21, scope: !191)
!196 = !DILocation(line: 135, column: 17, scope: !178)
!197 = !DILocation(line: 138, column: 21, scope: !198)
!198 = distinct !DILexicalBlock(scope: !166, file: !1, line: 137, column: 17)
!199 = !DILocation(line: 140, column: 21, scope: !198)
!200 = !DILocation(line: 140, column: 26, scope: !198)
!201 = !DILocation(line: 140, column: 35, scope: !198)
!202 = !DILocation(line: 142, column: 13, scope: !167)
!203 = !DILocation(line: 145, column: 8, scope: !204)
!204 = distinct !DILexicalBlock(scope: !94, file: !1, line: 145, column: 8)
!205 = !DILocation(line: 145, column: 8, scope: !94)
!206 = !DILocation(line: 148, column: 24, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !1, line: 146, column: 5)
!208 = !DILocation(line: 148, column: 9, scope: !207)
!209 = !DILocation(line: 149, column: 5, scope: !207)
!210 = !DILocation(line: 153, column: 24, scope: !211)
!211 = distinct !DILexicalBlock(scope: !204, file: !1, line: 151, column: 5)
!212 = !DILocation(line: 153, column: 9, scope: !211)
!213 = !DILocation(line: 155, column: 1, scope: !94)
!214 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 160, type: !11, scopeLine: 161, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!215 = !DILocalVariable(name: "data", scope: !214, file: !1, line: 162, type: !14)
!216 = !DILocation(line: 162, column: 12, scope: !214)
!217 = !DILocalVariable(name: "dataBuffer", scope: !214, file: !1, line: 163, type: !18)
!218 = !DILocation(line: 163, column: 10, scope: !214)
!219 = !DILocation(line: 164, column: 12, scope: !214)
!220 = !DILocation(line: 164, column: 10, scope: !214)
!221 = !DILocation(line: 165, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !214, file: !1, line: 165, column: 8)
!223 = !DILocation(line: 165, column: 8, scope: !214)
!224 = !DILocation(line: 168, column: 16, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !1, line: 166, column: 5)
!226 = !DILocation(line: 168, column: 9, scope: !225)
!227 = !DILocation(line: 169, column: 5, scope: !225)
!228 = !DILocation(line: 173, column: 16, scope: !229)
!229 = distinct !DILexicalBlock(scope: !222, file: !1, line: 171, column: 5)
!230 = !DILocation(line: 173, column: 9, scope: !229)
!231 = !DILocation(line: 175, column: 8, scope: !232)
!232 = distinct !DILexicalBlock(scope: !214, file: !1, line: 175, column: 8)
!233 = !DILocation(line: 175, column: 8, scope: !214)
!234 = !DILocation(line: 178, column: 16, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !1, line: 176, column: 5)
!236 = !DILocation(line: 178, column: 9, scope: !235)
!237 = !DILocation(line: 179, column: 5, scope: !235)
!238 = !DILocation(line: 183, column: 16, scope: !239)
!239 = distinct !DILexicalBlock(scope: !232, file: !1, line: 181, column: 5)
!240 = !DILocation(line: 183, column: 9, scope: !239)
!241 = !DILocation(line: 185, column: 1, scope: !214)
!242 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_12_good", scope: !1, file: !1, line: 187, type: !11, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!243 = !DILocation(line: 189, column: 5, scope: !242)
!244 = !DILocation(line: 190, column: 5, scope: !242)
!245 = !DILocation(line: 191, column: 1, scope: !242)
