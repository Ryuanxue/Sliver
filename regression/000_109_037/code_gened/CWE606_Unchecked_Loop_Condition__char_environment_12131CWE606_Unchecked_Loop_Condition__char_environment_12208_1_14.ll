; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_12131CWE606_Unchecked_Loop_Condition__char_environment_12208_1_14.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_12131CWE606_Unchecked_Loop_Condition__char_environment_12208_1_14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_12131CWE606_Unchecked_Loop_Condition__char_environment_12208_1_14(i8* %_goodB2G_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i8*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_dataLen_06 = alloca i64, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  %_goodB2G_i_030 = alloca i32, align 4
  %_goodB2G_n_031 = alloca i32, align 4
  %_goodB2G_intVariable_032 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_n_0 = alloca i32, align 4
  %_goodG2B_intVariable_0 = alloca i32, align 4
  %_goodG2B_i_064 = alloca i32, align 4
  %_goodG2B_n_065 = alloca i32, align 4
  %_goodG2B_intVariable_066 = alloca i32, align 4
  store i8* %_goodB2G_environment_0, i8** %_goodB2G_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !23, metadata !DIExpression()), !dbg !27
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !27
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !28
  store i8* %arraydecay, i8** %_goodB2G_data_0, align 8, !dbg !29
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !30
  %tobool = icmp ne i32 %call, 0, !dbg !30
  br i1 %tobool, label %if.then, label %if.else, !dbg !32

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !33, metadata !DIExpression()), !dbg !39
  %1 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !40
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !41
  store i64 %call1, i64* %_goodB2G_dataLen_0, align 8, !dbg !39
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !42
  store i8* %call2, i8** %_goodB2G_environment_0.addr, align 8, !dbg !43
  %2 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !44
  %cmp = icmp ne i8* %2, null, !dbg !46
  br i1 %cmp, label %if.then3, label %if.end, !dbg !47

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !48
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !51
  %5 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !52
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !53
  %sub = sub i64 100, %6, !dbg !54
  %sub4 = sub i64 %sub, 1, !dbg !55
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #7, !dbg !56
  br label %if.end, !dbg !57

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end16, !dbg !58

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_06, metadata !59, metadata !DIExpression()), !dbg !62
  %7 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !63
  %call7 = call i64 @strlen(i8* %7) #6, !dbg !64
  store i64 %call7, i64* %_goodB2G_dataLen_06, align 8, !dbg !62
  %call8 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !65
  store i8* %call8, i8** %_goodB2G_environment_0.addr, align 8, !dbg !66
  %8 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !67
  %cmp9 = icmp ne i8* %8, null, !dbg !69
  br i1 %cmp9, label %if.then10, label %if.end15, !dbg !70

if.then10:                                        ; preds = %if.else
  %9 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !71
  %10 = load i64, i64* %_goodB2G_dataLen_06, align 8, !dbg !73
  %add.ptr11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !74
  %11 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !75
  %12 = load i64, i64* %_goodB2G_dataLen_06, align 8, !dbg !76
  %sub12 = sub i64 100, %12, !dbg !77
  %sub13 = sub i64 %sub12, 1, !dbg !78
  %call14 = call i8* @strncat(i8* %add.ptr11, i8* %11, i64 %sub13) #7, !dbg !79
  br label %if.end15, !dbg !80

if.end15:                                         ; preds = %if.then10, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  %call17 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !81
  %tobool18 = icmp ne i32 %call17, 0, !dbg !81
  br i1 %tobool18, label %if.then19, label %if.else29, !dbg !83

if.then19:                                        ; preds = %if.end16
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !84, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !90, metadata !DIExpression()), !dbg !91
  %13 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !92
  %call20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !94
  %cmp21 = icmp eq i32 %call20, 1, !dbg !95
  br i1 %cmp21, label %if.then22, label %if.end28, !dbg !96

if.then22:                                        ; preds = %if.then19
  %14 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !97
  %cmp23 = icmp slt i32 %14, 10000, !dbg !100
  br i1 %cmp23, label %if.then24, label %if.end27, !dbg !101

if.then24:                                        ; preds = %if.then22
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !102
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !104
  br label %for.cond, !dbg !106

for.cond:                                         ; preds = %for.inc, %if.then24
  %15 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !107
  %16 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !109
  %cmp25 = icmp slt i32 %15, %16, !dbg !110
  br i1 %cmp25, label %for.body, label %for.end, !dbg !111

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !112
  %inc = add nsw i32 %17, 1, !dbg !112
  store i32 %inc, i32* %_goodB2G_intVariable_0, align 4, !dbg !112
  br label %for.inc, !dbg !114

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !115
  %inc26 = add nsw i32 %18, 1, !dbg !115
  store i32 %inc26, i32* %_goodB2G_i_0, align 4, !dbg !115
  br label %for.cond, !dbg !116, !llvm.loop !117

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !120
  call void @printIntLine(i32 %19), !dbg !121
  br label %if.end27, !dbg !122

if.end27:                                         ; preds = %for.end, %if.then22
  br label %if.end28, !dbg !123

if.end28:                                         ; preds = %if.end27, %if.then19
  br label %if.end47, !dbg !124

if.else29:                                        ; preds = %if.end16
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_030, metadata !125, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_031, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_032, metadata !131, metadata !DIExpression()), !dbg !132
  %20 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !133
  %call33 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_031) #7, !dbg !135
  %cmp34 = icmp eq i32 %call33, 1, !dbg !136
  br i1 %cmp34, label %if.then35, label %if.end46, !dbg !137

if.then35:                                        ; preds = %if.else29
  %21 = load i32, i32* %_goodB2G_n_031, align 4, !dbg !138
  %cmp36 = icmp slt i32 %21, 10000, !dbg !141
  br i1 %cmp36, label %if.then37, label %if.end45, !dbg !142

if.then37:                                        ; preds = %if.then35
  store i32 0, i32* %_goodB2G_intVariable_032, align 4, !dbg !143
  store i32 0, i32* %_goodB2G_i_030, align 4, !dbg !145
  br label %for.cond38, !dbg !147

for.cond38:                                       ; preds = %for.inc42, %if.then37
  %22 = load i32, i32* %_goodB2G_i_030, align 4, !dbg !148
  %23 = load i32, i32* %_goodB2G_n_031, align 4, !dbg !150
  %cmp39 = icmp slt i32 %22, %23, !dbg !151
  br i1 %cmp39, label %for.body40, label %for.end44, !dbg !152

for.body40:                                       ; preds = %for.cond38
  %24 = load i32, i32* %_goodB2G_intVariable_032, align 4, !dbg !153
  %inc41 = add nsw i32 %24, 1, !dbg !153
  store i32 %inc41, i32* %_goodB2G_intVariable_032, align 4, !dbg !153
  br label %for.inc42, !dbg !155

for.inc42:                                        ; preds = %for.body40
  %25 = load i32, i32* %_goodB2G_i_030, align 4, !dbg !156
  %inc43 = add nsw i32 %25, 1, !dbg !156
  store i32 %inc43, i32* %_goodB2G_i_030, align 4, !dbg !156
  br label %for.cond38, !dbg !157, !llvm.loop !158

for.end44:                                        ; preds = %for.cond38
  %26 = load i32, i32* %_goodB2G_intVariable_032, align 4, !dbg !160
  call void @printIntLine(i32 %26), !dbg !161
  br label %if.end45, !dbg !162

if.end45:                                         ; preds = %for.end44, %if.then35
  br label %if.end46, !dbg !163

if.end46:                                         ; preds = %if.end45, %if.else29
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end28
  br label %goodB2G_label_, !dbg !164

goodB2G_label_:                                   ; preds = %if.end47
  call void @llvm.dbg.label(metadata !165), !dbg !166
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !167, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !170, metadata !DIExpression()), !dbg !171
  %27 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !171
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 100, i1 false), !dbg !171
  %arraydecay48 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !172
  store i8* %arraydecay48, i8** %_goodG2B_data_0, align 8, !dbg !173
  %call49 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !174
  %tobool50 = icmp ne i32 %call49, 0, !dbg !174
  br i1 %tobool50, label %if.then51, label %if.else53, !dbg !176

if.then51:                                        ; preds = %goodB2G_label_
  %28 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !177
  %call52 = call i8* @strcpy(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !179
  br label %if.end55, !dbg !180

if.else53:                                        ; preds = %goodB2G_label_
  %29 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !181
  %call54 = call i8* @strcpy(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !183
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.then51
  %call56 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !184
  %tobool57 = icmp ne i32 %call56, 0, !dbg !184
  br i1 %tobool57, label %if.then58, label %if.else63, !dbg !186

if.then58:                                        ; preds = %if.end55
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !187, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !193, metadata !DIExpression()), !dbg !194
  %30 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !195
  %call59 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0) #7, !dbg !197
  %cmp60 = icmp eq i32 %call59, 1, !dbg !198
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !199

if.then61:                                        ; preds = %if.then58
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !200
  %31 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !202
  %32 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !203
  call void %31(i32 %32), !dbg !202
  %33 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !204
  call void @printIntLine(i32 %33), !dbg !205
  br label %if.end62, !dbg !206

if.end62:                                         ; preds = %if.then61, %if.then58
  br label %if.end78, !dbg !207

if.else63:                                        ; preds = %if.end55
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_064, metadata !208, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_065, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_066, metadata !214, metadata !DIExpression()), !dbg !215
  %34 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !216
  %call67 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_065) #7, !dbg !218
  %cmp68 = icmp eq i32 %call67, 1, !dbg !219
  br i1 %cmp68, label %if.then69, label %if.end77, !dbg !220

if.then69:                                        ; preds = %if.else63
  store i32 0, i32* %_goodG2B_intVariable_066, align 4, !dbg !221
  store i32 0, i32* %_goodG2B_i_064, align 4, !dbg !223
  br label %for.cond70, !dbg !225

for.cond70:                                       ; preds = %for.inc74, %if.then69
  %35 = load i32, i32* %_goodG2B_i_064, align 4, !dbg !226
  %36 = load i32, i32* %_goodG2B_n_065, align 4, !dbg !228
  %cmp71 = icmp slt i32 %35, %36, !dbg !229
  br i1 %cmp71, label %for.body72, label %for.end76, !dbg !230

for.body72:                                       ; preds = %for.cond70
  %37 = load i32, i32* %_goodG2B_intVariable_066, align 4, !dbg !231
  %inc73 = add nsw i32 %37, 1, !dbg !231
  store i32 %inc73, i32* %_goodG2B_intVariable_066, align 4, !dbg !231
  br label %for.inc74, !dbg !233

for.inc74:                                        ; preds = %for.body72
  %38 = load i32, i32* %_goodG2B_i_064, align 4, !dbg !234
  %inc75 = add nsw i32 %38, 1, !dbg !234
  store i32 %inc75, i32* %_goodG2B_i_064, align 4, !dbg !234
  br label %for.cond70, !dbg !235, !llvm.loop !236

for.end76:                                        ; preds = %for.cond70
  %39 = load i32, i32* %_goodG2B_intVariable_066, align 4, !dbg !238
  call void @printIntLine(i32 %39), !dbg !239
  br label %if.end77, !dbg !240

if.end77:                                         ; preds = %for.end76, %if.else63
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end62
  br label %goodG2B_label_, !dbg !241

goodG2B_label_:                                   ; preds = %if.end78
  call void @llvm.dbg.label(metadata !242), !dbg !243
  br label %CWE606_Unchecked_Loop_Condition__char_environment_12_good_label_, !dbg !244

CWE606_Unchecked_Loop_Condition__char_environment_12_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !245), !dbg !246
  ret void, !dbg !247
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @globalReturnsTrueOrFalse(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_12131CWE606_Unchecked_Loop_Condition__char_environment_12208_1_14.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_037/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_12131CWE606_Unchecked_Loop_Condition__char_environment_12208_1_14", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 128, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 159, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G_data_0", scope: !21, file: !1, line: 6, type: !10)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!22 = !DILocation(line: 6, column: 11, scope: !21)
!23 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !21, file: !1, line: 7, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 7, column: 10, scope: !21)
!28 = !DILocation(line: 8, column: 23, scope: !21)
!29 = !DILocation(line: 8, column: 21, scope: !21)
!30 = !DILocation(line: 9, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !21, file: !1, line: 9, column: 9)
!32 = !DILocation(line: 9, column: 9, scope: !21)
!33 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !34, file: !1, line: 12, type: !36)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 11, column: 7)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 5)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 12, column: 16, scope: !34)
!40 = !DILocation(line: 12, column: 44, scope: !34)
!41 = !DILocation(line: 12, column: 37, scope: !34)
!42 = !DILocation(line: 13, column: 34, scope: !34)
!43 = !DILocation(line: 13, column: 32, scope: !34)
!44 = !DILocation(line: 14, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !34, file: !1, line: 14, column: 13)
!46 = !DILocation(line: 14, column: 36, scope: !45)
!47 = !DILocation(line: 14, column: 13, scope: !34)
!48 = !DILocation(line: 16, column: 19, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 15, column: 9)
!50 = !DILocation(line: 16, column: 37, scope: !49)
!51 = !DILocation(line: 16, column: 35, scope: !49)
!52 = !DILocation(line: 16, column: 57, scope: !49)
!53 = !DILocation(line: 16, column: 88, scope: !49)
!54 = !DILocation(line: 16, column: 86, scope: !49)
!55 = !DILocation(line: 16, column: 108, scope: !49)
!56 = !DILocation(line: 16, column: 11, scope: !49)
!57 = !DILocation(line: 17, column: 9, scope: !49)
!58 = !DILocation(line: 20, column: 5, scope: !35)
!59 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !60, file: !1, line: 24, type: !36)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 23, column: 7)
!61 = distinct !DILexicalBlock(scope: !31, file: !1, line: 22, column: 5)
!62 = !DILocation(line: 24, column: 16, scope: !60)
!63 = !DILocation(line: 24, column: 44, scope: !60)
!64 = !DILocation(line: 24, column: 37, scope: !60)
!65 = !DILocation(line: 25, column: 34, scope: !60)
!66 = !DILocation(line: 25, column: 32, scope: !60)
!67 = !DILocation(line: 26, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !60, file: !1, line: 26, column: 13)
!69 = !DILocation(line: 26, column: 36, scope: !68)
!70 = !DILocation(line: 26, column: 13, scope: !60)
!71 = !DILocation(line: 28, column: 19, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 27, column: 9)
!73 = !DILocation(line: 28, column: 37, scope: !72)
!74 = !DILocation(line: 28, column: 35, scope: !72)
!75 = !DILocation(line: 28, column: 57, scope: !72)
!76 = !DILocation(line: 28, column: 88, scope: !72)
!77 = !DILocation(line: 28, column: 86, scope: !72)
!78 = !DILocation(line: 28, column: 108, scope: !72)
!79 = !DILocation(line: 28, column: 11, scope: !72)
!80 = !DILocation(line: 29, column: 9, scope: !72)
!81 = !DILocation(line: 34, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !21, file: !1, line: 34, column: 9)
!83 = !DILocation(line: 34, column: 9, scope: !21)
!84 = !DILocalVariable(name: "_goodB2G_i_0", scope: !85, file: !1, line: 37, type: !15)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 36, column: 7)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 35, column: 5)
!87 = !DILocation(line: 37, column: 13, scope: !85)
!88 = !DILocalVariable(name: "_goodB2G_n_0", scope: !85, file: !1, line: 38, type: !15)
!89 = !DILocation(line: 38, column: 13, scope: !85)
!90 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !85, file: !1, line: 39, type: !15)
!91 = !DILocation(line: 39, column: 13, scope: !85)
!92 = !DILocation(line: 40, column: 20, scope: !93)
!93 = distinct !DILexicalBlock(scope: !85, file: !1, line: 40, column: 13)
!94 = !DILocation(line: 40, column: 13, scope: !93)
!95 = !DILocation(line: 40, column: 58, scope: !93)
!96 = !DILocation(line: 40, column: 13, scope: !85)
!97 = !DILocation(line: 42, column: 15, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 42, column: 15)
!99 = distinct !DILexicalBlock(scope: !93, file: !1, line: 41, column: 9)
!100 = !DILocation(line: 42, column: 28, scope: !98)
!101 = !DILocation(line: 42, column: 15, scope: !99)
!102 = !DILocation(line: 44, column: 36, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 43, column: 11)
!104 = !DILocation(line: 45, column: 31, scope: !105)
!105 = distinct !DILexicalBlock(scope: !103, file: !1, line: 45, column: 13)
!106 = !DILocation(line: 45, column: 18, scope: !105)
!107 = !DILocation(line: 45, column: 36, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !1, line: 45, column: 13)
!109 = !DILocation(line: 45, column: 51, scope: !108)
!110 = !DILocation(line: 45, column: 49, scope: !108)
!111 = !DILocation(line: 45, column: 13, scope: !105)
!112 = !DILocation(line: 47, column: 37, scope: !113)
!113 = distinct !DILexicalBlock(scope: !108, file: !1, line: 46, column: 13)
!114 = !DILocation(line: 48, column: 13, scope: !113)
!115 = !DILocation(line: 45, column: 77, scope: !108)
!116 = !DILocation(line: 45, column: 13, scope: !108)
!117 = distinct !{!117, !111, !118, !119}
!118 = !DILocation(line: 48, column: 13, scope: !105)
!119 = !{!"llvm.loop.mustprogress"}
!120 = !DILocation(line: 50, column: 26, scope: !103)
!121 = !DILocation(line: 50, column: 13, scope: !103)
!122 = !DILocation(line: 51, column: 11, scope: !103)
!123 = !DILocation(line: 53, column: 9, scope: !99)
!124 = !DILocation(line: 56, column: 5, scope: !86)
!125 = !DILocalVariable(name: "_goodB2G_i_0", scope: !126, file: !1, line: 60, type: !15)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 59, column: 7)
!127 = distinct !DILexicalBlock(scope: !82, file: !1, line: 58, column: 5)
!128 = !DILocation(line: 60, column: 13, scope: !126)
!129 = !DILocalVariable(name: "_goodB2G_n_0", scope: !126, file: !1, line: 61, type: !15)
!130 = !DILocation(line: 61, column: 13, scope: !126)
!131 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !126, file: !1, line: 62, type: !15)
!132 = !DILocation(line: 62, column: 13, scope: !126)
!133 = !DILocation(line: 63, column: 20, scope: !134)
!134 = distinct !DILexicalBlock(scope: !126, file: !1, line: 63, column: 13)
!135 = !DILocation(line: 63, column: 13, scope: !134)
!136 = !DILocation(line: 63, column: 58, scope: !134)
!137 = !DILocation(line: 63, column: 13, scope: !126)
!138 = !DILocation(line: 65, column: 15, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 65, column: 15)
!140 = distinct !DILexicalBlock(scope: !134, file: !1, line: 64, column: 9)
!141 = !DILocation(line: 65, column: 28, scope: !139)
!142 = !DILocation(line: 65, column: 15, scope: !140)
!143 = !DILocation(line: 67, column: 36, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !1, line: 66, column: 11)
!145 = !DILocation(line: 68, column: 31, scope: !146)
!146 = distinct !DILexicalBlock(scope: !144, file: !1, line: 68, column: 13)
!147 = !DILocation(line: 68, column: 18, scope: !146)
!148 = !DILocation(line: 68, column: 36, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !1, line: 68, column: 13)
!150 = !DILocation(line: 68, column: 51, scope: !149)
!151 = !DILocation(line: 68, column: 49, scope: !149)
!152 = !DILocation(line: 68, column: 13, scope: !146)
!153 = !DILocation(line: 70, column: 37, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !1, line: 69, column: 13)
!155 = !DILocation(line: 71, column: 13, scope: !154)
!156 = !DILocation(line: 68, column: 77, scope: !149)
!157 = !DILocation(line: 68, column: 13, scope: !149)
!158 = distinct !{!158, !152, !159, !119}
!159 = !DILocation(line: 71, column: 13, scope: !146)
!160 = !DILocation(line: 73, column: 26, scope: !144)
!161 = !DILocation(line: 73, column: 13, scope: !144)
!162 = !DILocation(line: 74, column: 11, scope: !144)
!163 = !DILocation(line: 76, column: 9, scope: !140)
!164 = !DILocation(line: 34, column: 34, scope: !82)
!165 = !DILabel(scope: !21, name: "goodB2G_label_", file: !1, line: 81)
!166 = !DILocation(line: 81, column: 5, scope: !21)
!167 = !DILocalVariable(name: "_goodG2B_data_0", scope: !168, file: !1, line: 88, type: !10)
!168 = distinct !DILexicalBlock(scope: !7, file: !1, line: 87, column: 3)
!169 = !DILocation(line: 88, column: 11, scope: !168)
!170 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !168, file: !1, line: 89, type: !24)
!171 = !DILocation(line: 89, column: 10, scope: !168)
!172 = !DILocation(line: 90, column: 23, scope: !168)
!173 = !DILocation(line: 90, column: 21, scope: !168)
!174 = !DILocation(line: 91, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !168, file: !1, line: 91, column: 9)
!176 = !DILocation(line: 91, column: 9, scope: !168)
!177 = !DILocation(line: 93, column: 14, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !1, line: 92, column: 5)
!179 = !DILocation(line: 93, column: 7, scope: !178)
!180 = !DILocation(line: 94, column: 5, scope: !178)
!181 = !DILocation(line: 97, column: 14, scope: !182)
!182 = distinct !DILexicalBlock(scope: !175, file: !1, line: 96, column: 5)
!183 = !DILocation(line: 97, column: 7, scope: !182)
!184 = !DILocation(line: 100, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !168, file: !1, line: 100, column: 9)
!186 = !DILocation(line: 100, column: 9, scope: !168)
!187 = !DILocalVariable(name: "_goodG2B_i_0", scope: !188, file: !1, line: 103, type: !15)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 102, column: 7)
!189 = distinct !DILexicalBlock(scope: !185, file: !1, line: 101, column: 5)
!190 = !DILocation(line: 103, column: 13, scope: !188)
!191 = !DILocalVariable(name: "_goodG2B_n_0", scope: !188, file: !1, line: 104, type: !15)
!192 = !DILocation(line: 104, column: 13, scope: !188)
!193 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !188, file: !1, line: 105, type: !15)
!194 = !DILocation(line: 105, column: 13, scope: !188)
!195 = !DILocation(line: 106, column: 20, scope: !196)
!196 = distinct !DILexicalBlock(scope: !188, file: !1, line: 106, column: 13)
!197 = !DILocation(line: 106, column: 13, scope: !196)
!198 = !DILocation(line: 106, column: 58, scope: !196)
!199 = !DILocation(line: 106, column: 13, scope: !188)
!200 = !DILocation(line: 108, column: 34, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !1, line: 107, column: 9)
!202 = !DILocation(line: 109, column: 11, scope: !201)
!203 = !DILocation(line: 109, column: 18, scope: !201)
!204 = !DILocation(line: 110, column: 24, scope: !201)
!205 = !DILocation(line: 110, column: 11, scope: !201)
!206 = !DILocation(line: 111, column: 9, scope: !201)
!207 = !DILocation(line: 114, column: 5, scope: !189)
!208 = !DILocalVariable(name: "_goodG2B_i_0", scope: !209, file: !1, line: 118, type: !15)
!209 = distinct !DILexicalBlock(scope: !210, file: !1, line: 117, column: 7)
!210 = distinct !DILexicalBlock(scope: !185, file: !1, line: 116, column: 5)
!211 = !DILocation(line: 118, column: 13, scope: !209)
!212 = !DILocalVariable(name: "_goodG2B_n_0", scope: !209, file: !1, line: 119, type: !15)
!213 = !DILocation(line: 119, column: 13, scope: !209)
!214 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !209, file: !1, line: 120, type: !15)
!215 = !DILocation(line: 120, column: 13, scope: !209)
!216 = !DILocation(line: 121, column: 20, scope: !217)
!217 = distinct !DILexicalBlock(scope: !209, file: !1, line: 121, column: 13)
!218 = !DILocation(line: 121, column: 13, scope: !217)
!219 = !DILocation(line: 121, column: 58, scope: !217)
!220 = !DILocation(line: 121, column: 13, scope: !209)
!221 = !DILocation(line: 123, column: 34, scope: !222)
!222 = distinct !DILexicalBlock(scope: !217, file: !1, line: 122, column: 9)
!223 = !DILocation(line: 124, column: 29, scope: !224)
!224 = distinct !DILexicalBlock(scope: !222, file: !1, line: 124, column: 11)
!225 = !DILocation(line: 124, column: 16, scope: !224)
!226 = !DILocation(line: 124, column: 34, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !1, line: 124, column: 11)
!228 = !DILocation(line: 124, column: 49, scope: !227)
!229 = !DILocation(line: 124, column: 47, scope: !227)
!230 = !DILocation(line: 124, column: 11, scope: !224)
!231 = !DILocation(line: 126, column: 35, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !1, line: 125, column: 11)
!233 = !DILocation(line: 127, column: 11, scope: !232)
!234 = !DILocation(line: 124, column: 75, scope: !227)
!235 = !DILocation(line: 124, column: 11, scope: !227)
!236 = distinct !{!236, !230, !237, !119}
!237 = !DILocation(line: 127, column: 11, scope: !224)
!238 = !DILocation(line: 129, column: 24, scope: !222)
!239 = !DILocation(line: 129, column: 11, scope: !222)
!240 = !DILocation(line: 130, column: 9, scope: !222)
!241 = !DILocation(line: 100, column: 34, scope: !185)
!242 = !DILabel(scope: !168, name: "goodG2B_label_", file: !1, line: 135)
!243 = !DILocation(line: 135, column: 5, scope: !168)
!244 = !DILocation(line: 140, column: 3, scope: !168)
!245 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_12_good_label_", file: !1, line: 141)
!246 = !DILocation(line: 141, column: 3, scope: !7)
!247 = !DILocation(line: 146, column: 1, scope: !7)
