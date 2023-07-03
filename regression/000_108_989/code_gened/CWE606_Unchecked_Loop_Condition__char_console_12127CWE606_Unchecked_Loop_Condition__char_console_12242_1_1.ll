; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_12127CWE606_Unchecked_Loop_Condition__char_console_12242_1_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_12127CWE606_Unchecked_Loop_Condition__char_console_12242_1_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_12127CWE606_Unchecked_Loop_Condition__char_console_12242_1_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_dataLen_022 = alloca i64, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  %_goodB2G_i_069 = alloca i32, align 4
  %_goodB2G_n_070 = alloca i32, align 4
  %_goodB2G_intVariable_071 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_n_0 = alloca i32, align 4
  %_goodG2B_intVariable_0 = alloca i32, align 4
  %_goodG2B_i_0107 = alloca i32, align 4
  %_goodG2B_n_0108 = alloca i32, align 4
  %_goodG2B_intVariable_0109 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !28
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !29
  %tobool = icmp ne i32 %call, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.else21, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !39
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call1, i64* %_goodB2G_dataLen_0, align 8, !dbg !38
  %2 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !41
  %sub = sub i64 100, %2, !dbg !43
  %cmp = icmp ugt i64 %sub, 1, !dbg !44
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !45

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !46
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !50
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !51
  %sub3 = sub i64 100, %5, !dbg !52
  %conv = trunc i64 %sub3 to i32, !dbg !53
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !55
  %cmp5 = icmp ne i8* %call4, null, !dbg !56
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !57

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !58
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !60
  store i64 %call8, i64* %_goodB2G_dataLen_0, align 8, !dbg !61
  %8 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !62
  %cmp9 = icmp ugt i64 %8, 0, !dbg !64
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !65

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !66
  %10 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !67
  %sub11 = sub i64 %10, 1, !dbg !68
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !66
  %11 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv12 = sext i8 %11 to i32, !dbg !66
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !69
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !70

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !71
  %13 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !73
  %sub16 = sub i64 %13, 1, !dbg !74
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !71
  store i8 0, i8* %arrayidx17, align 1, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !77

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %14 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !80
  %15 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !81
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !80
  store i8 0, i8* %arrayidx18, align 1, !dbg !82
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !83

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end52, !dbg !84

if.else21:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_022, metadata !85, metadata !DIExpression()), !dbg !88
  %16 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !89
  %call23 = call i64 @strlen(i8* %16) #6, !dbg !90
  store i64 %call23, i64* %_goodB2G_dataLen_022, align 8, !dbg !88
  %17 = load i64, i64* %_goodB2G_dataLen_022, align 8, !dbg !91
  %sub24 = sub i64 100, %17, !dbg !93
  %cmp25 = icmp ugt i64 %sub24, 1, !dbg !94
  br i1 %cmp25, label %if.then27, label %if.end51, !dbg !95

if.then27:                                        ; preds = %if.else21
  %18 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !96
  %19 = load i64, i64* %_goodB2G_dataLen_022, align 8, !dbg !99
  %add.ptr28 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !100
  %20 = load i64, i64* %_goodB2G_dataLen_022, align 8, !dbg !101
  %sub29 = sub i64 100, %20, !dbg !102
  %conv30 = trunc i64 %sub29 to i32, !dbg !103
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !104
  %call31 = call i8* @fgets(i8* %add.ptr28, i32 %conv30, %struct._IO_FILE* %21), !dbg !105
  %cmp32 = icmp ne i8* %call31, null, !dbg !106
  br i1 %cmp32, label %if.then34, label %if.else48, !dbg !107

if.then34:                                        ; preds = %if.then27
  %22 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !108
  %call35 = call i64 @strlen(i8* %22) #6, !dbg !110
  store i64 %call35, i64* %_goodB2G_dataLen_022, align 8, !dbg !111
  %23 = load i64, i64* %_goodB2G_dataLen_022, align 8, !dbg !112
  %cmp36 = icmp ugt i64 %23, 0, !dbg !114
  br i1 %cmp36, label %land.lhs.true38, label %if.end47, !dbg !115

land.lhs.true38:                                  ; preds = %if.then34
  %24 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !116
  %25 = load i64, i64* %_goodB2G_dataLen_022, align 8, !dbg !117
  %sub39 = sub i64 %25, 1, !dbg !118
  %arrayidx40 = getelementptr inbounds i8, i8* %24, i64 %sub39, !dbg !116
  %26 = load i8, i8* %arrayidx40, align 1, !dbg !116
  %conv41 = sext i8 %26 to i32, !dbg !116
  %cmp42 = icmp eq i32 %conv41, 10, !dbg !119
  br i1 %cmp42, label %if.then44, label %if.end47, !dbg !120

if.then44:                                        ; preds = %land.lhs.true38
  %27 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !121
  %28 = load i64, i64* %_goodB2G_dataLen_022, align 8, !dbg !123
  %sub45 = sub i64 %28, 1, !dbg !124
  %arrayidx46 = getelementptr inbounds i8, i8* %27, i64 %sub45, !dbg !121
  store i8 0, i8* %arrayidx46, align 1, !dbg !125
  br label %if.end47, !dbg !126

if.end47:                                         ; preds = %if.then44, %land.lhs.true38, %if.then34
  br label %if.end50, !dbg !127

if.else48:                                        ; preds = %if.then27
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !128
  %29 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !130
  %30 = load i64, i64* %_goodB2G_dataLen_022, align 8, !dbg !131
  %arrayidx49 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !130
  store i8 0, i8* %arrayidx49, align 1, !dbg !132
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.end47
  br label %if.end51, !dbg !133

if.end51:                                         ; preds = %if.end50, %if.else21
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end20
  %call53 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !134
  %tobool54 = icmp ne i32 %call53, 0, !dbg !134
  br i1 %tobool54, label %if.then55, label %if.else68, !dbg !136

if.then55:                                        ; preds = %if.end52
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !137, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !143, metadata !DIExpression()), !dbg !144
  %31 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !145
  %call56 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !147
  %cmp57 = icmp eq i32 %call56, 1, !dbg !148
  br i1 %cmp57, label %if.then59, label %if.end67, !dbg !149

if.then59:                                        ; preds = %if.then55
  %32 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !150
  %cmp60 = icmp slt i32 %32, 10000, !dbg !153
  br i1 %cmp60, label %if.then62, label %if.end66, !dbg !154

if.then62:                                        ; preds = %if.then59
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !155
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !157
  br label %for.cond, !dbg !159

for.cond:                                         ; preds = %for.inc, %if.then62
  %33 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !160
  %34 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !162
  %cmp63 = icmp slt i32 %33, %34, !dbg !163
  br i1 %cmp63, label %for.body, label %for.end, !dbg !164

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !165
  %inc = add nsw i32 %35, 1, !dbg !165
  store i32 %inc, i32* %_goodB2G_intVariable_0, align 4, !dbg !165
  br label %for.inc, !dbg !167

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !168
  %inc65 = add nsw i32 %36, 1, !dbg !168
  store i32 %inc65, i32* %_goodB2G_i_0, align 4, !dbg !168
  br label %for.cond, !dbg !169, !llvm.loop !170

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !173
  call void @printIntLine(i32 %37), !dbg !174
  br label %if.end66, !dbg !175

if.end66:                                         ; preds = %for.end, %if.then59
  br label %if.end67, !dbg !176

if.end67:                                         ; preds = %if.end66, %if.then55
  br label %if.end89, !dbg !177

if.else68:                                        ; preds = %if.end52
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_069, metadata !178, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_070, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_071, metadata !184, metadata !DIExpression()), !dbg !185
  %38 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !186
  %call72 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_070) #7, !dbg !188
  %cmp73 = icmp eq i32 %call72, 1, !dbg !189
  br i1 %cmp73, label %if.then75, label %if.end88, !dbg !190

if.then75:                                        ; preds = %if.else68
  %39 = load i32, i32* %_goodB2G_n_070, align 4, !dbg !191
  %cmp76 = icmp slt i32 %39, 10000, !dbg !194
  br i1 %cmp76, label %if.then78, label %if.end87, !dbg !195

if.then78:                                        ; preds = %if.then75
  store i32 0, i32* %_goodB2G_intVariable_071, align 4, !dbg !196
  store i32 0, i32* %_goodB2G_i_069, align 4, !dbg !198
  br label %for.cond79, !dbg !200

for.cond79:                                       ; preds = %for.inc84, %if.then78
  %40 = load i32, i32* %_goodB2G_i_069, align 4, !dbg !201
  %41 = load i32, i32* %_goodB2G_n_070, align 4, !dbg !203
  %cmp80 = icmp slt i32 %40, %41, !dbg !204
  br i1 %cmp80, label %for.body82, label %for.end86, !dbg !205

for.body82:                                       ; preds = %for.cond79
  %42 = load i32, i32* %_goodB2G_intVariable_071, align 4, !dbg !206
  %inc83 = add nsw i32 %42, 1, !dbg !206
  store i32 %inc83, i32* %_goodB2G_intVariable_071, align 4, !dbg !206
  br label %for.inc84, !dbg !208

for.inc84:                                        ; preds = %for.body82
  %43 = load i32, i32* %_goodB2G_i_069, align 4, !dbg !209
  %inc85 = add nsw i32 %43, 1, !dbg !209
  store i32 %inc85, i32* %_goodB2G_i_069, align 4, !dbg !209
  br label %for.cond79, !dbg !210, !llvm.loop !211

for.end86:                                        ; preds = %for.cond79
  %44 = load i32, i32* %_goodB2G_intVariable_071, align 4, !dbg !213
  call void @printIntLine(i32 %44), !dbg !214
  br label %if.end87, !dbg !215

if.end87:                                         ; preds = %for.end86, %if.then75
  br label %if.end88, !dbg !216

if.end88:                                         ; preds = %if.end87, %if.else68
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end67
  br label %goodB2G_label_, !dbg !217

goodB2G_label_:                                   ; preds = %if.end89
  call void @llvm.dbg.label(metadata !218), !dbg !219
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !220, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !223, metadata !DIExpression()), !dbg !224
  %45 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !224
  call void @llvm.memset.p0i8.i64(i8* align 16 %45, i8 0, i64 100, i1 false), !dbg !224
  %arraydecay90 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !225
  store i8* %arraydecay90, i8** %_goodG2B_data_0, align 8, !dbg !226
  %call91 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !227
  %tobool92 = icmp ne i32 %call91, 0, !dbg !227
  br i1 %tobool92, label %if.then93, label %if.else95, !dbg !229

if.then93:                                        ; preds = %goodB2G_label_
  %46 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !230
  %call94 = call i8* @strcpy(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !232
  br label %if.end97, !dbg !233

if.else95:                                        ; preds = %goodB2G_label_
  %47 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !234
  %call96 = call i8* @strcpy(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !236
  br label %if.end97

if.end97:                                         ; preds = %if.else95, %if.then93
  %call98 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !237
  %tobool99 = icmp ne i32 %call98, 0, !dbg !237
  br i1 %tobool99, label %if.then100, label %if.else106, !dbg !239

if.then100:                                       ; preds = %if.end97
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !240, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !246, metadata !DIExpression()), !dbg !247
  %48 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !248
  %call101 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0) #7, !dbg !250
  %cmp102 = icmp eq i32 %call101, 1, !dbg !251
  br i1 %cmp102, label %if.then104, label %if.end105, !dbg !252

if.then104:                                       ; preds = %if.then100
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !253
  %49 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !255
  %50 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !256
  call void %49(i32 %50), !dbg !255
  %51 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !257
  call void @printIntLine(i32 %51), !dbg !258
  br label %if.end105, !dbg !259

if.end105:                                        ; preds = %if.then104, %if.then100
  br label %if.end123, !dbg !260

if.else106:                                       ; preds = %if.end97
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0107, metadata !261, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0108, metadata !265, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0109, metadata !267, metadata !DIExpression()), !dbg !268
  %52 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !269
  %call110 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0108) #7, !dbg !271
  %cmp111 = icmp eq i32 %call110, 1, !dbg !272
  br i1 %cmp111, label %if.then113, label %if.end122, !dbg !273

if.then113:                                       ; preds = %if.else106
  store i32 0, i32* %_goodG2B_intVariable_0109, align 4, !dbg !274
  store i32 0, i32* %_goodG2B_i_0107, align 4, !dbg !276
  br label %for.cond114, !dbg !278

for.cond114:                                      ; preds = %for.inc119, %if.then113
  %53 = load i32, i32* %_goodG2B_i_0107, align 4, !dbg !279
  %54 = load i32, i32* %_goodG2B_n_0108, align 4, !dbg !281
  %cmp115 = icmp slt i32 %53, %54, !dbg !282
  br i1 %cmp115, label %for.body117, label %for.end121, !dbg !283

for.body117:                                      ; preds = %for.cond114
  %55 = load i32, i32* %_goodG2B_intVariable_0109, align 4, !dbg !284
  %inc118 = add nsw i32 %55, 1, !dbg !284
  store i32 %inc118, i32* %_goodG2B_intVariable_0109, align 4, !dbg !284
  br label %for.inc119, !dbg !286

for.inc119:                                       ; preds = %for.body117
  %56 = load i32, i32* %_goodG2B_i_0107, align 4, !dbg !287
  %inc120 = add nsw i32 %56, 1, !dbg !287
  store i32 %inc120, i32* %_goodG2B_i_0107, align 4, !dbg !287
  br label %for.cond114, !dbg !288, !llvm.loop !289

for.end121:                                       ; preds = %for.cond114
  %57 = load i32, i32* %_goodG2B_intVariable_0109, align 4, !dbg !291
  call void @printIntLine(i32 %57), !dbg !292
  br label %if.end122, !dbg !293

if.end122:                                        ; preds = %for.end121, %if.else106
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end105
  br label %goodG2B_label_, !dbg !294

goodG2B_label_:                                   ; preds = %if.end123
  call void @llvm.dbg.label(metadata !295), !dbg !296
  br label %CWE606_Unchecked_Loop_Condition__char_console_12_good_label_, !dbg !297

CWE606_Unchecked_Loop_Condition__char_console_12_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !298), !dbg !299
  ret void, !dbg !300
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
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_12127CWE606_Unchecked_Loop_Condition__char_console_12242_1_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_989/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_12127CWE606_Unchecked_Loop_Condition__char_console_12242_1_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 119, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 143, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !22, file: !1, line: 6, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 10, scope: !22)
!27 = !DILocation(line: 7, column: 23, scope: !22)
!28 = !DILocation(line: 7, column: 21, scope: !22)
!29 = !DILocation(line: 8, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !22, file: !1, line: 8, column: 9)
!31 = !DILocation(line: 8, column: 9, scope: !22)
!32 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !33, file: !1, line: 11, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 7)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 9, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 11, column: 16, scope: !33)
!39 = !DILocation(line: 11, column: 44, scope: !33)
!40 = !DILocation(line: 11, column: 37, scope: !33)
!41 = !DILocation(line: 12, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !33, file: !1, line: 12, column: 13)
!43 = !DILocation(line: 12, column: 18, scope: !42)
!44 = !DILocation(line: 12, column: 40, scope: !42)
!45 = !DILocation(line: 12, column: 13, scope: !33)
!46 = !DILocation(line: 14, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 14, column: 15)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 9)
!49 = !DILocation(line: 14, column: 39, scope: !47)
!50 = !DILocation(line: 14, column: 37, scope: !47)
!51 = !DILocation(line: 14, column: 72, scope: !47)
!52 = !DILocation(line: 14, column: 70, scope: !47)
!53 = !DILocation(line: 14, column: 59, scope: !47)
!54 = !DILocation(line: 14, column: 93, scope: !47)
!55 = !DILocation(line: 14, column: 15, scope: !47)
!56 = !DILocation(line: 14, column: 100, scope: !47)
!57 = !DILocation(line: 14, column: 15, scope: !48)
!58 = !DILocation(line: 16, column: 41, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !1, line: 15, column: 11)
!60 = !DILocation(line: 16, column: 34, scope: !59)
!61 = !DILocation(line: 16, column: 32, scope: !59)
!62 = !DILocation(line: 17, column: 18, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 17, column: 17)
!64 = !DILocation(line: 17, column: 37, scope: !63)
!65 = !DILocation(line: 17, column: 42, scope: !63)
!66 = !DILocation(line: 17, column: 46, scope: !63)
!67 = !DILocation(line: 17, column: 62, scope: !63)
!68 = !DILocation(line: 17, column: 81, scope: !63)
!69 = !DILocation(line: 17, column: 86, scope: !63)
!70 = !DILocation(line: 17, column: 17, scope: !59)
!71 = !DILocation(line: 19, column: 15, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 18, column: 13)
!73 = !DILocation(line: 19, column: 31, scope: !72)
!74 = !DILocation(line: 19, column: 50, scope: !72)
!75 = !DILocation(line: 19, column: 55, scope: !72)
!76 = !DILocation(line: 20, column: 13, scope: !72)
!77 = !DILocation(line: 22, column: 11, scope: !59)
!78 = !DILocation(line: 25, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !47, file: !1, line: 24, column: 11)
!80 = !DILocation(line: 26, column: 13, scope: !79)
!81 = !DILocation(line: 26, column: 29, scope: !79)
!82 = !DILocation(line: 26, column: 49, scope: !79)
!83 = !DILocation(line: 29, column: 9, scope: !48)
!84 = !DILocation(line: 32, column: 5, scope: !34)
!85 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !86, file: !1, line: 36, type: !35)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 35, column: 7)
!87 = distinct !DILexicalBlock(scope: !30, file: !1, line: 34, column: 5)
!88 = !DILocation(line: 36, column: 16, scope: !86)
!89 = !DILocation(line: 36, column: 44, scope: !86)
!90 = !DILocation(line: 36, column: 37, scope: !86)
!91 = !DILocation(line: 37, column: 20, scope: !92)
!92 = distinct !DILexicalBlock(scope: !86, file: !1, line: 37, column: 13)
!93 = !DILocation(line: 37, column: 18, scope: !92)
!94 = !DILocation(line: 37, column: 40, scope: !92)
!95 = !DILocation(line: 37, column: 13, scope: !86)
!96 = !DILocation(line: 39, column: 21, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 39, column: 15)
!98 = distinct !DILexicalBlock(scope: !92, file: !1, line: 38, column: 9)
!99 = !DILocation(line: 39, column: 39, scope: !97)
!100 = !DILocation(line: 39, column: 37, scope: !97)
!101 = !DILocation(line: 39, column: 72, scope: !97)
!102 = !DILocation(line: 39, column: 70, scope: !97)
!103 = !DILocation(line: 39, column: 59, scope: !97)
!104 = !DILocation(line: 39, column: 93, scope: !97)
!105 = !DILocation(line: 39, column: 15, scope: !97)
!106 = !DILocation(line: 39, column: 100, scope: !97)
!107 = !DILocation(line: 39, column: 15, scope: !98)
!108 = !DILocation(line: 41, column: 41, scope: !109)
!109 = distinct !DILexicalBlock(scope: !97, file: !1, line: 40, column: 11)
!110 = !DILocation(line: 41, column: 34, scope: !109)
!111 = !DILocation(line: 41, column: 32, scope: !109)
!112 = !DILocation(line: 42, column: 18, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 42, column: 17)
!114 = !DILocation(line: 42, column: 37, scope: !113)
!115 = !DILocation(line: 42, column: 42, scope: !113)
!116 = !DILocation(line: 42, column: 46, scope: !113)
!117 = !DILocation(line: 42, column: 62, scope: !113)
!118 = !DILocation(line: 42, column: 81, scope: !113)
!119 = !DILocation(line: 42, column: 86, scope: !113)
!120 = !DILocation(line: 42, column: 17, scope: !109)
!121 = !DILocation(line: 44, column: 15, scope: !122)
!122 = distinct !DILexicalBlock(scope: !113, file: !1, line: 43, column: 13)
!123 = !DILocation(line: 44, column: 31, scope: !122)
!124 = !DILocation(line: 44, column: 50, scope: !122)
!125 = !DILocation(line: 44, column: 55, scope: !122)
!126 = !DILocation(line: 45, column: 13, scope: !122)
!127 = !DILocation(line: 47, column: 11, scope: !109)
!128 = !DILocation(line: 50, column: 13, scope: !129)
!129 = distinct !DILexicalBlock(scope: !97, file: !1, line: 49, column: 11)
!130 = !DILocation(line: 51, column: 13, scope: !129)
!131 = !DILocation(line: 51, column: 29, scope: !129)
!132 = !DILocation(line: 51, column: 49, scope: !129)
!133 = !DILocation(line: 54, column: 9, scope: !98)
!134 = !DILocation(line: 59, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !22, file: !1, line: 59, column: 9)
!136 = !DILocation(line: 59, column: 9, scope: !22)
!137 = !DILocalVariable(name: "_goodB2G_i_0", scope: !138, file: !1, line: 62, type: !4)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 61, column: 7)
!139 = distinct !DILexicalBlock(scope: !135, file: !1, line: 60, column: 5)
!140 = !DILocation(line: 62, column: 13, scope: !138)
!141 = !DILocalVariable(name: "_goodB2G_n_0", scope: !138, file: !1, line: 63, type: !4)
!142 = !DILocation(line: 63, column: 13, scope: !138)
!143 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !138, file: !1, line: 64, type: !4)
!144 = !DILocation(line: 64, column: 13, scope: !138)
!145 = !DILocation(line: 65, column: 20, scope: !146)
!146 = distinct !DILexicalBlock(scope: !138, file: !1, line: 65, column: 13)
!147 = !DILocation(line: 65, column: 13, scope: !146)
!148 = !DILocation(line: 65, column: 58, scope: !146)
!149 = !DILocation(line: 65, column: 13, scope: !138)
!150 = !DILocation(line: 67, column: 15, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 67, column: 15)
!152 = distinct !DILexicalBlock(scope: !146, file: !1, line: 66, column: 9)
!153 = !DILocation(line: 67, column: 28, scope: !151)
!154 = !DILocation(line: 67, column: 15, scope: !152)
!155 = !DILocation(line: 69, column: 36, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !1, line: 68, column: 11)
!157 = !DILocation(line: 70, column: 31, scope: !158)
!158 = distinct !DILexicalBlock(scope: !156, file: !1, line: 70, column: 13)
!159 = !DILocation(line: 70, column: 18, scope: !158)
!160 = !DILocation(line: 70, column: 36, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !1, line: 70, column: 13)
!162 = !DILocation(line: 70, column: 51, scope: !161)
!163 = !DILocation(line: 70, column: 49, scope: !161)
!164 = !DILocation(line: 70, column: 13, scope: !158)
!165 = !DILocation(line: 72, column: 37, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !1, line: 71, column: 13)
!167 = !DILocation(line: 73, column: 13, scope: !166)
!168 = !DILocation(line: 70, column: 77, scope: !161)
!169 = !DILocation(line: 70, column: 13, scope: !161)
!170 = distinct !{!170, !164, !171, !172}
!171 = !DILocation(line: 73, column: 13, scope: !158)
!172 = !{!"llvm.loop.mustprogress"}
!173 = !DILocation(line: 75, column: 26, scope: !156)
!174 = !DILocation(line: 75, column: 13, scope: !156)
!175 = !DILocation(line: 76, column: 11, scope: !156)
!176 = !DILocation(line: 78, column: 9, scope: !152)
!177 = !DILocation(line: 81, column: 5, scope: !139)
!178 = !DILocalVariable(name: "_goodB2G_i_0", scope: !179, file: !1, line: 85, type: !4)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 84, column: 7)
!180 = distinct !DILexicalBlock(scope: !135, file: !1, line: 83, column: 5)
!181 = !DILocation(line: 85, column: 13, scope: !179)
!182 = !DILocalVariable(name: "_goodB2G_n_0", scope: !179, file: !1, line: 86, type: !4)
!183 = !DILocation(line: 86, column: 13, scope: !179)
!184 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !179, file: !1, line: 87, type: !4)
!185 = !DILocation(line: 87, column: 13, scope: !179)
!186 = !DILocation(line: 88, column: 20, scope: !187)
!187 = distinct !DILexicalBlock(scope: !179, file: !1, line: 88, column: 13)
!188 = !DILocation(line: 88, column: 13, scope: !187)
!189 = !DILocation(line: 88, column: 58, scope: !187)
!190 = !DILocation(line: 88, column: 13, scope: !179)
!191 = !DILocation(line: 90, column: 15, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 90, column: 15)
!193 = distinct !DILexicalBlock(scope: !187, file: !1, line: 89, column: 9)
!194 = !DILocation(line: 90, column: 28, scope: !192)
!195 = !DILocation(line: 90, column: 15, scope: !193)
!196 = !DILocation(line: 92, column: 36, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !1, line: 91, column: 11)
!198 = !DILocation(line: 93, column: 31, scope: !199)
!199 = distinct !DILexicalBlock(scope: !197, file: !1, line: 93, column: 13)
!200 = !DILocation(line: 93, column: 18, scope: !199)
!201 = !DILocation(line: 93, column: 36, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !1, line: 93, column: 13)
!203 = !DILocation(line: 93, column: 51, scope: !202)
!204 = !DILocation(line: 93, column: 49, scope: !202)
!205 = !DILocation(line: 93, column: 13, scope: !199)
!206 = !DILocation(line: 95, column: 37, scope: !207)
!207 = distinct !DILexicalBlock(scope: !202, file: !1, line: 94, column: 13)
!208 = !DILocation(line: 96, column: 13, scope: !207)
!209 = !DILocation(line: 93, column: 77, scope: !202)
!210 = !DILocation(line: 93, column: 13, scope: !202)
!211 = distinct !{!211, !205, !212, !172}
!212 = !DILocation(line: 96, column: 13, scope: !199)
!213 = !DILocation(line: 98, column: 26, scope: !197)
!214 = !DILocation(line: 98, column: 13, scope: !197)
!215 = !DILocation(line: 99, column: 11, scope: !197)
!216 = !DILocation(line: 101, column: 9, scope: !193)
!217 = !DILocation(line: 59, column: 34, scope: !135)
!218 = !DILabel(scope: !22, name: "goodB2G_label_", file: !1, line: 106)
!219 = !DILocation(line: 106, column: 5, scope: !22)
!220 = !DILocalVariable(name: "_goodG2B_data_0", scope: !221, file: !1, line: 113, type: !12)
!221 = distinct !DILexicalBlock(scope: !9, file: !1, line: 112, column: 3)
!222 = !DILocation(line: 113, column: 11, scope: !221)
!223 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !221, file: !1, line: 114, type: !23)
!224 = !DILocation(line: 114, column: 10, scope: !221)
!225 = !DILocation(line: 115, column: 23, scope: !221)
!226 = !DILocation(line: 115, column: 21, scope: !221)
!227 = !DILocation(line: 116, column: 9, scope: !228)
!228 = distinct !DILexicalBlock(scope: !221, file: !1, line: 116, column: 9)
!229 = !DILocation(line: 116, column: 9, scope: !221)
!230 = !DILocation(line: 118, column: 14, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !1, line: 117, column: 5)
!232 = !DILocation(line: 118, column: 7, scope: !231)
!233 = !DILocation(line: 119, column: 5, scope: !231)
!234 = !DILocation(line: 122, column: 14, scope: !235)
!235 = distinct !DILexicalBlock(scope: !228, file: !1, line: 121, column: 5)
!236 = !DILocation(line: 122, column: 7, scope: !235)
!237 = !DILocation(line: 125, column: 9, scope: !238)
!238 = distinct !DILexicalBlock(scope: !221, file: !1, line: 125, column: 9)
!239 = !DILocation(line: 125, column: 9, scope: !221)
!240 = !DILocalVariable(name: "_goodG2B_i_0", scope: !241, file: !1, line: 128, type: !4)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 127, column: 7)
!242 = distinct !DILexicalBlock(scope: !238, file: !1, line: 126, column: 5)
!243 = !DILocation(line: 128, column: 13, scope: !241)
!244 = !DILocalVariable(name: "_goodG2B_n_0", scope: !241, file: !1, line: 129, type: !4)
!245 = !DILocation(line: 129, column: 13, scope: !241)
!246 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !241, file: !1, line: 130, type: !4)
!247 = !DILocation(line: 130, column: 13, scope: !241)
!248 = !DILocation(line: 131, column: 20, scope: !249)
!249 = distinct !DILexicalBlock(scope: !241, file: !1, line: 131, column: 13)
!250 = !DILocation(line: 131, column: 13, scope: !249)
!251 = !DILocation(line: 131, column: 58, scope: !249)
!252 = !DILocation(line: 131, column: 13, scope: !241)
!253 = !DILocation(line: 133, column: 34, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !1, line: 132, column: 9)
!255 = !DILocation(line: 134, column: 11, scope: !254)
!256 = !DILocation(line: 134, column: 18, scope: !254)
!257 = !DILocation(line: 135, column: 24, scope: !254)
!258 = !DILocation(line: 135, column: 11, scope: !254)
!259 = !DILocation(line: 136, column: 9, scope: !254)
!260 = !DILocation(line: 139, column: 5, scope: !242)
!261 = !DILocalVariable(name: "_goodG2B_i_0", scope: !262, file: !1, line: 143, type: !4)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 142, column: 7)
!263 = distinct !DILexicalBlock(scope: !238, file: !1, line: 141, column: 5)
!264 = !DILocation(line: 143, column: 13, scope: !262)
!265 = !DILocalVariable(name: "_goodG2B_n_0", scope: !262, file: !1, line: 144, type: !4)
!266 = !DILocation(line: 144, column: 13, scope: !262)
!267 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !262, file: !1, line: 145, type: !4)
!268 = !DILocation(line: 145, column: 13, scope: !262)
!269 = !DILocation(line: 146, column: 20, scope: !270)
!270 = distinct !DILexicalBlock(scope: !262, file: !1, line: 146, column: 13)
!271 = !DILocation(line: 146, column: 13, scope: !270)
!272 = !DILocation(line: 146, column: 58, scope: !270)
!273 = !DILocation(line: 146, column: 13, scope: !262)
!274 = !DILocation(line: 148, column: 34, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !1, line: 147, column: 9)
!276 = !DILocation(line: 149, column: 29, scope: !277)
!277 = distinct !DILexicalBlock(scope: !275, file: !1, line: 149, column: 11)
!278 = !DILocation(line: 149, column: 16, scope: !277)
!279 = !DILocation(line: 149, column: 34, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !1, line: 149, column: 11)
!281 = !DILocation(line: 149, column: 49, scope: !280)
!282 = !DILocation(line: 149, column: 47, scope: !280)
!283 = !DILocation(line: 149, column: 11, scope: !277)
!284 = !DILocation(line: 151, column: 35, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !1, line: 150, column: 11)
!286 = !DILocation(line: 152, column: 11, scope: !285)
!287 = !DILocation(line: 149, column: 75, scope: !280)
!288 = !DILocation(line: 149, column: 11, scope: !280)
!289 = distinct !{!289, !283, !290, !172}
!290 = !DILocation(line: 152, column: 11, scope: !277)
!291 = !DILocation(line: 154, column: 24, scope: !275)
!292 = !DILocation(line: 154, column: 11, scope: !275)
!293 = !DILocation(line: 155, column: 9, scope: !275)
!294 = !DILocation(line: 125, column: 34, scope: !238)
!295 = !DILabel(scope: !221, name: "goodG2B_label_", file: !1, line: 160)
!296 = !DILocation(line: 160, column: 5, scope: !221)
!297 = !DILocation(line: 165, column: 3, scope: !221)
!298 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_12_good_label_", file: !1, line: 166)
!299 = !DILocation(line: 166, column: 3, scope: !9)
!300 = !DILocation(line: 171, column: 1, scope: !9)
