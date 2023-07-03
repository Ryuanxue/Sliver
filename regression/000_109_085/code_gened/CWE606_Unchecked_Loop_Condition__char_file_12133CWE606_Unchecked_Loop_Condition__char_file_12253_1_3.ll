; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_12133CWE606_Unchecked_Loop_Condition__char_file_12253_1_3.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_12133CWE606_Unchecked_Loop_Condition__char_file_12253_1_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_12133CWE606_Unchecked_Loop_Condition__char_file_12253_1_3(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_pFile_0 = alloca %struct._IO_FILE*, align 8
  %_goodB2G_dataLen_014 = alloca i64, align 8
  %_goodB2G_pFile_016 = alloca %struct._IO_FILE*, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  %_goodB2G_i_054 = alloca i32, align 4
  %_goodB2G_n_055 = alloca i32, align 4
  %_goodB2G_intVariable_056 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_n_0 = alloca i32, align 4
  %_goodG2B_intVariable_0 = alloca i32, align 4
  %_goodG2B_i_0100 = alloca i32, align 4
  %_goodG2B_n_0101 = alloca i32, align 4
  %_goodG2B_intVariable_0102 = alloca i32, align 4
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
  br i1 %tobool, label %if.then, label %if.else, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !39
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call1, i64* %_goodB2G_dataLen_0, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G_pFile_0, metadata !41, metadata !DIExpression()), !dbg !99
  %2 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !100
  %sub = sub i64 100, %2, !dbg !102
  %cmp = icmp ugt i64 %sub, 1, !dbg !103
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !104

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !105
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !107
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !108
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !110
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !111

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !112
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !115
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !116
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !117
  %sub6 = sub i64 100, %6, !dbg !118
  %conv = trunc i64 %sub6 to i32, !dbg !119
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !120
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !121
  %cmp8 = icmp eq i8* %call7, null, !dbg !122
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !123

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !124
  %8 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !126
  %9 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !127
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !126
  store i8 0, i8* %arrayidx, align 1, !dbg !128
  br label %if.end, !dbg !129

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_0, align 8, !dbg !130
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !131
  br label %if.end12, !dbg !132

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !133

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end37, !dbg !134

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_014, metadata !135, metadata !DIExpression()), !dbg !138
  %11 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !139
  %call15 = call i64 @strlen(i8* %11) #6, !dbg !140
  store i64 %call15, i64* %_goodB2G_dataLen_014, align 8, !dbg !138
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %_goodB2G_pFile_016, metadata !141, metadata !DIExpression()), !dbg !142
  %12 = load i64, i64* %_goodB2G_dataLen_014, align 8, !dbg !143
  %sub17 = sub i64 100, %12, !dbg !145
  %cmp18 = icmp ugt i64 %sub17, 1, !dbg !146
  br i1 %cmp18, label %if.then20, label %if.end36, !dbg !147

if.then20:                                        ; preds = %if.else
  %call21 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !148
  store %struct._IO_FILE* %call21, %struct._IO_FILE** %_goodB2G_pFile_016, align 8, !dbg !150
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_016, align 8, !dbg !151
  %cmp22 = icmp ne %struct._IO_FILE* %13, null, !dbg !153
  br i1 %cmp22, label %if.then24, label %if.end35, !dbg !154

if.then24:                                        ; preds = %if.then20
  %14 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !155
  %15 = load i64, i64* %_goodB2G_dataLen_014, align 8, !dbg !158
  %add.ptr25 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !159
  %16 = load i64, i64* %_goodB2G_dataLen_014, align 8, !dbg !160
  %sub26 = sub i64 100, %16, !dbg !161
  %conv27 = trunc i64 %sub26 to i32, !dbg !162
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_016, align 8, !dbg !163
  %call28 = call i8* @fgets(i8* %add.ptr25, i32 %conv27, %struct._IO_FILE* %17), !dbg !164
  %cmp29 = icmp eq i8* %call28, null, !dbg !165
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !166

if.then31:                                        ; preds = %if.then24
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !167
  %18 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !169
  %19 = load i64, i64* %_goodB2G_dataLen_014, align 8, !dbg !170
  %arrayidx32 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !169
  store i8 0, i8* %arrayidx32, align 1, !dbg !171
  br label %if.end33, !dbg !172

if.end33:                                         ; preds = %if.then31, %if.then24
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %_goodB2G_pFile_016, align 8, !dbg !173
  %call34 = call i32 @fclose(%struct._IO_FILE* %20), !dbg !174
  br label %if.end35, !dbg !175

if.end35:                                         ; preds = %if.end33, %if.then20
  br label %if.end36, !dbg !176

if.end36:                                         ; preds = %if.end35, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end13
  %call38 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !177
  %tobool39 = icmp ne i32 %call38, 0, !dbg !177
  br i1 %tobool39, label %if.then40, label %if.else53, !dbg !179

if.then40:                                        ; preds = %if.end37
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !180, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !186, metadata !DIExpression()), !dbg !187
  %21 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !188
  %call41 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !190
  %cmp42 = icmp eq i32 %call41, 1, !dbg !191
  br i1 %cmp42, label %if.then44, label %if.end52, !dbg !192

if.then44:                                        ; preds = %if.then40
  %22 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !193
  %cmp45 = icmp slt i32 %22, 10000, !dbg !196
  br i1 %cmp45, label %if.then47, label %if.end51, !dbg !197

if.then47:                                        ; preds = %if.then44
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !198
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !200
  br label %for.cond, !dbg !202

for.cond:                                         ; preds = %for.inc, %if.then47
  %23 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !203
  %24 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !205
  %cmp48 = icmp slt i32 %23, %24, !dbg !206
  br i1 %cmp48, label %for.body, label %for.end, !dbg !207

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !208
  %inc = add nsw i32 %25, 1, !dbg !208
  store i32 %inc, i32* %_goodB2G_intVariable_0, align 4, !dbg !208
  br label %for.inc, !dbg !210

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !211
  %inc50 = add nsw i32 %26, 1, !dbg !211
  store i32 %inc50, i32* %_goodB2G_i_0, align 4, !dbg !211
  br label %for.cond, !dbg !212, !llvm.loop !213

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !216
  call void @printIntLine(i32 %27), !dbg !217
  br label %if.end51, !dbg !218

if.end51:                                         ; preds = %for.end, %if.then44
  br label %if.end52, !dbg !219

if.end52:                                         ; preds = %if.end51, %if.then40
  br label %if.end74, !dbg !220

if.else53:                                        ; preds = %if.end37
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_054, metadata !221, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_055, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_056, metadata !227, metadata !DIExpression()), !dbg !228
  %28 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !229
  %call57 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodB2G_n_055) #7, !dbg !231
  %cmp58 = icmp eq i32 %call57, 1, !dbg !232
  br i1 %cmp58, label %if.then60, label %if.end73, !dbg !233

if.then60:                                        ; preds = %if.else53
  %29 = load i32, i32* %_goodB2G_n_055, align 4, !dbg !234
  %cmp61 = icmp slt i32 %29, 10000, !dbg !237
  br i1 %cmp61, label %if.then63, label %if.end72, !dbg !238

if.then63:                                        ; preds = %if.then60
  store i32 0, i32* %_goodB2G_intVariable_056, align 4, !dbg !239
  store i32 0, i32* %_goodB2G_i_054, align 4, !dbg !241
  br label %for.cond64, !dbg !243

for.cond64:                                       ; preds = %for.inc69, %if.then63
  %30 = load i32, i32* %_goodB2G_i_054, align 4, !dbg !244
  %31 = load i32, i32* %_goodB2G_n_055, align 4, !dbg !246
  %cmp65 = icmp slt i32 %30, %31, !dbg !247
  br i1 %cmp65, label %for.body67, label %for.end71, !dbg !248

for.body67:                                       ; preds = %for.cond64
  %32 = load i32, i32* %_goodB2G_intVariable_056, align 4, !dbg !249
  %inc68 = add nsw i32 %32, 1, !dbg !249
  store i32 %inc68, i32* %_goodB2G_intVariable_056, align 4, !dbg !249
  br label %for.inc69, !dbg !251

for.inc69:                                        ; preds = %for.body67
  %33 = load i32, i32* %_goodB2G_i_054, align 4, !dbg !252
  %inc70 = add nsw i32 %33, 1, !dbg !252
  store i32 %inc70, i32* %_goodB2G_i_054, align 4, !dbg !252
  br label %for.cond64, !dbg !253, !llvm.loop !254

for.end71:                                        ; preds = %for.cond64
  %34 = load i32, i32* %_goodB2G_intVariable_056, align 4, !dbg !256
  call void @printIntLine(i32 %34), !dbg !257
  br label %if.end72, !dbg !258

if.end72:                                         ; preds = %for.end71, %if.then60
  br label %if.end73, !dbg !259

if.end73:                                         ; preds = %if.end72, %if.else53
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end52
  br label %goodB2G_label_, !dbg !260

goodB2G_label_:                                   ; preds = %if.end74
  call void @llvm.dbg.label(metadata !261), !dbg !262
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !263, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !266, metadata !DIExpression()), !dbg !267
  %35 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !267
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 100, i1 false), !dbg !267
  %arraydecay75 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !268
  store i8* %arraydecay75, i8** %_goodG2B_data_0, align 8, !dbg !269
  %call76 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !270
  %tobool77 = icmp ne i32 %call76, 0, !dbg !270
  br i1 %tobool77, label %if.then78, label %if.else80, !dbg !272

if.then78:                                        ; preds = %goodB2G_label_
  %36 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !273
  %call79 = call i8* @strcpy(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !275
  br label %if.end82, !dbg !276

if.else80:                                        ; preds = %goodB2G_label_
  %37 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !277
  %call81 = call i8* @strcpy(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !279
  br label %if.end82

if.end82:                                         ; preds = %if.else80, %if.then78
  %call83 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !280
  %tobool84 = icmp ne i32 %call83, 0, !dbg !280
  br i1 %tobool84, label %if.then85, label %if.else99, !dbg !282

if.then85:                                        ; preds = %if.end82
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !289, metadata !DIExpression()), !dbg !290
  %38 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !291
  %call86 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodG2B_n_0) #7, !dbg !293
  %cmp87 = icmp eq i32 %call86, 1, !dbg !294
  br i1 %cmp87, label %if.then89, label %if.end98, !dbg !295

if.then89:                                        ; preds = %if.then85
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !296
  store i32 0, i32* %_goodG2B_i_0, align 4, !dbg !298
  br label %for.cond90, !dbg !300

for.cond90:                                       ; preds = %for.inc95, %if.then89
  %39 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !301
  %40 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !303
  %cmp91 = icmp slt i32 %39, %40, !dbg !304
  br i1 %cmp91, label %for.body93, label %for.end97, !dbg !305

for.body93:                                       ; preds = %for.cond90
  %41 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !306
  %inc94 = add nsw i32 %41, 1, !dbg !306
  store i32 %inc94, i32* %_goodG2B_intVariable_0, align 4, !dbg !306
  br label %for.inc95, !dbg !308

for.inc95:                                        ; preds = %for.body93
  %42 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !309
  %inc96 = add nsw i32 %42, 1, !dbg !309
  store i32 %inc96, i32* %_goodG2B_i_0, align 4, !dbg !309
  br label %for.cond90, !dbg !310, !llvm.loop !311

for.end97:                                        ; preds = %for.cond90
  %43 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !313
  call void @printIntLine(i32 %43), !dbg !314
  br label %if.end98, !dbg !315

if.end98:                                         ; preds = %for.end97, %if.then85
  br label %if.end108, !dbg !316

if.else99:                                        ; preds = %if.end82
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0100, metadata !317, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0101, metadata !321, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0102, metadata !323, metadata !DIExpression()), !dbg !324
  %44 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !325
  %call103 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %_goodG2B_n_0101) #7, !dbg !327
  %cmp104 = icmp eq i32 %call103, 1, !dbg !328
  br i1 %cmp104, label %if.then106, label %if.end107, !dbg !329

if.then106:                                       ; preds = %if.else99
  store i32 0, i32* %_goodG2B_intVariable_0102, align 4, !dbg !330
  %45 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !332
  %46 = load i32, i32* %_goodG2B_n_0101, align 4, !dbg !333
  call void %45(i32 %46), !dbg !332
  %47 = load i32, i32* %_goodG2B_intVariable_0102, align 4, !dbg !334
  call void @printIntLine(i32 %47), !dbg !335
  br label %if.end107, !dbg !336

if.end107:                                        ; preds = %if.then106, %if.else99
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end98
  br label %goodG2B_label_, !dbg !337

goodG2B_label_:                                   ; preds = %if.end108
  call void @llvm.dbg.label(metadata !338), !dbg !339
  br label %CWE606_Unchecked_Loop_Condition__char_file_12_good_label_, !dbg !340

CWE606_Unchecked_Loop_Condition__char_file_12_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !341), !dbg !342
  ret void, !dbg !343
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_12133CWE606_Unchecked_Loop_Condition__char_file_12253_1_3.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_085/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_12133CWE606_Unchecked_Loop_Condition__char_file_12253_1_3", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 113, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 137, scope: !9)
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
!41 = !DILocalVariable(name: "_goodB2G_pFile_0", scope: !33, file: !1, line: 12, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !44, line: 7, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !63, !65, !66, !67, !71, !73, !75, !79, !82, !84, !87, !90, !91, !93, !94, !95}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !45, file: !46, line: 51, baseType: !4, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !45, file: !46, line: 54, baseType: !12, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !45, file: !46, line: 55, baseType: !12, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !45, file: !46, line: 56, baseType: !12, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !45, file: !46, line: 57, baseType: !12, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !45, file: !46, line: 58, baseType: !12, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !45, file: !46, line: 59, baseType: !12, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !45, file: !46, line: 60, baseType: !12, size: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !45, file: !46, line: 61, baseType: !12, size: 64, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !45, file: !46, line: 64, baseType: !12, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !45, file: !46, line: 65, baseType: !12, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !45, file: !46, line: 66, baseType: !12, size: 64, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !45, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !46, line: 36, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !45, file: !46, line: 70, baseType: !64, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !45, file: !46, line: 72, baseType: !4, size: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !45, file: !46, line: 73, baseType: !4, size: 32, offset: 928)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !45, file: !46, line: 74, baseType: !68, size: 64, offset: 960)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !69, line: 152, baseType: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!70 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !45, file: !46, line: 77, baseType: !72, size: 16, offset: 1024)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !45, file: !46, line: 78, baseType: !74, size: 8, offset: 1040)
!74 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !45, file: !46, line: 79, baseType: !76, size: 8, offset: 1048)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 1)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !45, file: !46, line: 81, baseType: !80, size: 64, offset: 1088)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !46, line: 43, baseType: null)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !45, file: !46, line: 89, baseType: !83, size: 64, offset: 1152)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !69, line: 153, baseType: !70)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !45, file: !46, line: 91, baseType: !85, size: 64, offset: 1216)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !46, line: 37, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !45, file: !46, line: 92, baseType: !88, size: 64, offset: 1280)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !46, line: 38, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !45, file: !46, line: 93, baseType: !64, size: 64, offset: 1344)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !45, file: !46, line: 94, baseType: !92, size: 64, offset: 1408)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !45, file: !46, line: 95, baseType: !35, size: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !45, file: !46, line: 96, baseType: !4, size: 32, offset: 1536)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !45, file: !46, line: 98, baseType: !96, size: 160, offset: 1568)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 20)
!99 = !DILocation(line: 12, column: 15, scope: !33)
!100 = !DILocation(line: 13, column: 20, scope: !101)
!101 = distinct !DILexicalBlock(scope: !33, file: !1, line: 13, column: 13)
!102 = !DILocation(line: 13, column: 18, scope: !101)
!103 = !DILocation(line: 13, column: 40, scope: !101)
!104 = !DILocation(line: 13, column: 13, scope: !33)
!105 = !DILocation(line: 15, column: 30, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 14, column: 9)
!107 = !DILocation(line: 15, column: 28, scope: !106)
!108 = !DILocation(line: 16, column: 15, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 16, column: 15)
!110 = !DILocation(line: 16, column: 32, scope: !109)
!111 = !DILocation(line: 16, column: 15, scope: !106)
!112 = !DILocation(line: 18, column: 23, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !1, line: 18, column: 17)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 17, column: 11)
!115 = !DILocation(line: 18, column: 41, scope: !113)
!116 = !DILocation(line: 18, column: 39, scope: !113)
!117 = !DILocation(line: 18, column: 74, scope: !113)
!118 = !DILocation(line: 18, column: 72, scope: !113)
!119 = !DILocation(line: 18, column: 61, scope: !113)
!120 = !DILocation(line: 18, column: 95, scope: !113)
!121 = !DILocation(line: 18, column: 17, scope: !113)
!122 = !DILocation(line: 18, column: 113, scope: !113)
!123 = !DILocation(line: 18, column: 17, scope: !114)
!124 = !DILocation(line: 20, column: 15, scope: !125)
!125 = distinct !DILexicalBlock(scope: !113, file: !1, line: 19, column: 13)
!126 = !DILocation(line: 21, column: 15, scope: !125)
!127 = !DILocation(line: 21, column: 31, scope: !125)
!128 = !DILocation(line: 21, column: 51, scope: !125)
!129 = !DILocation(line: 22, column: 13, scope: !125)
!130 = !DILocation(line: 24, column: 20, scope: !114)
!131 = !DILocation(line: 24, column: 13, scope: !114)
!132 = !DILocation(line: 25, column: 11, scope: !114)
!133 = !DILocation(line: 27, column: 9, scope: !106)
!134 = !DILocation(line: 30, column: 5, scope: !34)
!135 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !136, file: !1, line: 34, type: !35)
!136 = distinct !DILexicalBlock(scope: !137, file: !1, line: 33, column: 7)
!137 = distinct !DILexicalBlock(scope: !30, file: !1, line: 32, column: 5)
!138 = !DILocation(line: 34, column: 16, scope: !136)
!139 = !DILocation(line: 34, column: 44, scope: !136)
!140 = !DILocation(line: 34, column: 37, scope: !136)
!141 = !DILocalVariable(name: "_goodB2G_pFile_0", scope: !136, file: !1, line: 35, type: !42)
!142 = !DILocation(line: 35, column: 15, scope: !136)
!143 = !DILocation(line: 36, column: 20, scope: !144)
!144 = distinct !DILexicalBlock(scope: !136, file: !1, line: 36, column: 13)
!145 = !DILocation(line: 36, column: 18, scope: !144)
!146 = !DILocation(line: 36, column: 40, scope: !144)
!147 = !DILocation(line: 36, column: 13, scope: !136)
!148 = !DILocation(line: 38, column: 30, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !1, line: 37, column: 9)
!150 = !DILocation(line: 38, column: 28, scope: !149)
!151 = !DILocation(line: 39, column: 15, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !1, line: 39, column: 15)
!153 = !DILocation(line: 39, column: 32, scope: !152)
!154 = !DILocation(line: 39, column: 15, scope: !149)
!155 = !DILocation(line: 41, column: 23, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 41, column: 17)
!157 = distinct !DILexicalBlock(scope: !152, file: !1, line: 40, column: 11)
!158 = !DILocation(line: 41, column: 41, scope: !156)
!159 = !DILocation(line: 41, column: 39, scope: !156)
!160 = !DILocation(line: 41, column: 74, scope: !156)
!161 = !DILocation(line: 41, column: 72, scope: !156)
!162 = !DILocation(line: 41, column: 61, scope: !156)
!163 = !DILocation(line: 41, column: 95, scope: !156)
!164 = !DILocation(line: 41, column: 17, scope: !156)
!165 = !DILocation(line: 41, column: 113, scope: !156)
!166 = !DILocation(line: 41, column: 17, scope: !157)
!167 = !DILocation(line: 43, column: 15, scope: !168)
!168 = distinct !DILexicalBlock(scope: !156, file: !1, line: 42, column: 13)
!169 = !DILocation(line: 44, column: 15, scope: !168)
!170 = !DILocation(line: 44, column: 31, scope: !168)
!171 = !DILocation(line: 44, column: 51, scope: !168)
!172 = !DILocation(line: 45, column: 13, scope: !168)
!173 = !DILocation(line: 47, column: 20, scope: !157)
!174 = !DILocation(line: 47, column: 13, scope: !157)
!175 = !DILocation(line: 48, column: 11, scope: !157)
!176 = !DILocation(line: 50, column: 9, scope: !149)
!177 = !DILocation(line: 55, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !22, file: !1, line: 55, column: 9)
!179 = !DILocation(line: 55, column: 9, scope: !22)
!180 = !DILocalVariable(name: "_goodB2G_i_0", scope: !181, file: !1, line: 58, type: !4)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 57, column: 7)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 56, column: 5)
!183 = !DILocation(line: 58, column: 13, scope: !181)
!184 = !DILocalVariable(name: "_goodB2G_n_0", scope: !181, file: !1, line: 59, type: !4)
!185 = !DILocation(line: 59, column: 13, scope: !181)
!186 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !181, file: !1, line: 60, type: !4)
!187 = !DILocation(line: 60, column: 13, scope: !181)
!188 = !DILocation(line: 61, column: 20, scope: !189)
!189 = distinct !DILexicalBlock(scope: !181, file: !1, line: 61, column: 13)
!190 = !DILocation(line: 61, column: 13, scope: !189)
!191 = !DILocation(line: 61, column: 58, scope: !189)
!192 = !DILocation(line: 61, column: 13, scope: !181)
!193 = !DILocation(line: 63, column: 15, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 63, column: 15)
!195 = distinct !DILexicalBlock(scope: !189, file: !1, line: 62, column: 9)
!196 = !DILocation(line: 63, column: 28, scope: !194)
!197 = !DILocation(line: 63, column: 15, scope: !195)
!198 = !DILocation(line: 65, column: 36, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !1, line: 64, column: 11)
!200 = !DILocation(line: 66, column: 31, scope: !201)
!201 = distinct !DILexicalBlock(scope: !199, file: !1, line: 66, column: 13)
!202 = !DILocation(line: 66, column: 18, scope: !201)
!203 = !DILocation(line: 66, column: 36, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !1, line: 66, column: 13)
!205 = !DILocation(line: 66, column: 51, scope: !204)
!206 = !DILocation(line: 66, column: 49, scope: !204)
!207 = !DILocation(line: 66, column: 13, scope: !201)
!208 = !DILocation(line: 68, column: 37, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !1, line: 67, column: 13)
!210 = !DILocation(line: 69, column: 13, scope: !209)
!211 = !DILocation(line: 66, column: 77, scope: !204)
!212 = !DILocation(line: 66, column: 13, scope: !204)
!213 = distinct !{!213, !207, !214, !215}
!214 = !DILocation(line: 69, column: 13, scope: !201)
!215 = !{!"llvm.loop.mustprogress"}
!216 = !DILocation(line: 71, column: 26, scope: !199)
!217 = !DILocation(line: 71, column: 13, scope: !199)
!218 = !DILocation(line: 72, column: 11, scope: !199)
!219 = !DILocation(line: 74, column: 9, scope: !195)
!220 = !DILocation(line: 77, column: 5, scope: !182)
!221 = !DILocalVariable(name: "_goodB2G_i_0", scope: !222, file: !1, line: 81, type: !4)
!222 = distinct !DILexicalBlock(scope: !223, file: !1, line: 80, column: 7)
!223 = distinct !DILexicalBlock(scope: !178, file: !1, line: 79, column: 5)
!224 = !DILocation(line: 81, column: 13, scope: !222)
!225 = !DILocalVariable(name: "_goodB2G_n_0", scope: !222, file: !1, line: 82, type: !4)
!226 = !DILocation(line: 82, column: 13, scope: !222)
!227 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !222, file: !1, line: 83, type: !4)
!228 = !DILocation(line: 83, column: 13, scope: !222)
!229 = !DILocation(line: 84, column: 20, scope: !230)
!230 = distinct !DILexicalBlock(scope: !222, file: !1, line: 84, column: 13)
!231 = !DILocation(line: 84, column: 13, scope: !230)
!232 = !DILocation(line: 84, column: 58, scope: !230)
!233 = !DILocation(line: 84, column: 13, scope: !222)
!234 = !DILocation(line: 86, column: 15, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !1, line: 86, column: 15)
!236 = distinct !DILexicalBlock(scope: !230, file: !1, line: 85, column: 9)
!237 = !DILocation(line: 86, column: 28, scope: !235)
!238 = !DILocation(line: 86, column: 15, scope: !236)
!239 = !DILocation(line: 88, column: 36, scope: !240)
!240 = distinct !DILexicalBlock(scope: !235, file: !1, line: 87, column: 11)
!241 = !DILocation(line: 89, column: 31, scope: !242)
!242 = distinct !DILexicalBlock(scope: !240, file: !1, line: 89, column: 13)
!243 = !DILocation(line: 89, column: 18, scope: !242)
!244 = !DILocation(line: 89, column: 36, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !1, line: 89, column: 13)
!246 = !DILocation(line: 89, column: 51, scope: !245)
!247 = !DILocation(line: 89, column: 49, scope: !245)
!248 = !DILocation(line: 89, column: 13, scope: !242)
!249 = !DILocation(line: 91, column: 37, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !1, line: 90, column: 13)
!251 = !DILocation(line: 92, column: 13, scope: !250)
!252 = !DILocation(line: 89, column: 77, scope: !245)
!253 = !DILocation(line: 89, column: 13, scope: !245)
!254 = distinct !{!254, !248, !255, !215}
!255 = !DILocation(line: 92, column: 13, scope: !242)
!256 = !DILocation(line: 94, column: 26, scope: !240)
!257 = !DILocation(line: 94, column: 13, scope: !240)
!258 = !DILocation(line: 95, column: 11, scope: !240)
!259 = !DILocation(line: 97, column: 9, scope: !236)
!260 = !DILocation(line: 55, column: 34, scope: !178)
!261 = !DILabel(scope: !22, name: "goodB2G_label_", file: !1, line: 102)
!262 = !DILocation(line: 102, column: 5, scope: !22)
!263 = !DILocalVariable(name: "_goodG2B_data_0", scope: !264, file: !1, line: 109, type: !12)
!264 = distinct !DILexicalBlock(scope: !9, file: !1, line: 108, column: 3)
!265 = !DILocation(line: 109, column: 11, scope: !264)
!266 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !264, file: !1, line: 110, type: !23)
!267 = !DILocation(line: 110, column: 10, scope: !264)
!268 = !DILocation(line: 111, column: 23, scope: !264)
!269 = !DILocation(line: 111, column: 21, scope: !264)
!270 = !DILocation(line: 112, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !264, file: !1, line: 112, column: 9)
!272 = !DILocation(line: 112, column: 9, scope: !264)
!273 = !DILocation(line: 114, column: 14, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !1, line: 113, column: 5)
!275 = !DILocation(line: 114, column: 7, scope: !274)
!276 = !DILocation(line: 115, column: 5, scope: !274)
!277 = !DILocation(line: 118, column: 14, scope: !278)
!278 = distinct !DILexicalBlock(scope: !271, file: !1, line: 117, column: 5)
!279 = !DILocation(line: 118, column: 7, scope: !278)
!280 = !DILocation(line: 121, column: 9, scope: !281)
!281 = distinct !DILexicalBlock(scope: !264, file: !1, line: 121, column: 9)
!282 = !DILocation(line: 121, column: 9, scope: !264)
!283 = !DILocalVariable(name: "_goodG2B_i_0", scope: !284, file: !1, line: 124, type: !4)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 123, column: 7)
!285 = distinct !DILexicalBlock(scope: !281, file: !1, line: 122, column: 5)
!286 = !DILocation(line: 124, column: 13, scope: !284)
!287 = !DILocalVariable(name: "_goodG2B_n_0", scope: !284, file: !1, line: 125, type: !4)
!288 = !DILocation(line: 125, column: 13, scope: !284)
!289 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !284, file: !1, line: 126, type: !4)
!290 = !DILocation(line: 126, column: 13, scope: !284)
!291 = !DILocation(line: 127, column: 20, scope: !292)
!292 = distinct !DILexicalBlock(scope: !284, file: !1, line: 127, column: 13)
!293 = !DILocation(line: 127, column: 13, scope: !292)
!294 = !DILocation(line: 127, column: 58, scope: !292)
!295 = !DILocation(line: 127, column: 13, scope: !284)
!296 = !DILocation(line: 129, column: 34, scope: !297)
!297 = distinct !DILexicalBlock(scope: !292, file: !1, line: 128, column: 9)
!298 = !DILocation(line: 130, column: 29, scope: !299)
!299 = distinct !DILexicalBlock(scope: !297, file: !1, line: 130, column: 11)
!300 = !DILocation(line: 130, column: 16, scope: !299)
!301 = !DILocation(line: 130, column: 34, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !1, line: 130, column: 11)
!303 = !DILocation(line: 130, column: 49, scope: !302)
!304 = !DILocation(line: 130, column: 47, scope: !302)
!305 = !DILocation(line: 130, column: 11, scope: !299)
!306 = !DILocation(line: 132, column: 35, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !1, line: 131, column: 11)
!308 = !DILocation(line: 133, column: 11, scope: !307)
!309 = !DILocation(line: 130, column: 75, scope: !302)
!310 = !DILocation(line: 130, column: 11, scope: !302)
!311 = distinct !{!311, !305, !312, !215}
!312 = !DILocation(line: 133, column: 11, scope: !299)
!313 = !DILocation(line: 135, column: 24, scope: !297)
!314 = !DILocation(line: 135, column: 11, scope: !297)
!315 = !DILocation(line: 136, column: 9, scope: !297)
!316 = !DILocation(line: 139, column: 5, scope: !285)
!317 = !DILocalVariable(name: "_goodG2B_i_0", scope: !318, file: !1, line: 143, type: !4)
!318 = distinct !DILexicalBlock(scope: !319, file: !1, line: 142, column: 7)
!319 = distinct !DILexicalBlock(scope: !281, file: !1, line: 141, column: 5)
!320 = !DILocation(line: 143, column: 13, scope: !318)
!321 = !DILocalVariable(name: "_goodG2B_n_0", scope: !318, file: !1, line: 144, type: !4)
!322 = !DILocation(line: 144, column: 13, scope: !318)
!323 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !318, file: !1, line: 145, type: !4)
!324 = !DILocation(line: 145, column: 13, scope: !318)
!325 = !DILocation(line: 146, column: 20, scope: !326)
!326 = distinct !DILexicalBlock(scope: !318, file: !1, line: 146, column: 13)
!327 = !DILocation(line: 146, column: 13, scope: !326)
!328 = !DILocation(line: 146, column: 58, scope: !326)
!329 = !DILocation(line: 146, column: 13, scope: !318)
!330 = !DILocation(line: 148, column: 34, scope: !331)
!331 = distinct !DILexicalBlock(scope: !326, file: !1, line: 147, column: 9)
!332 = !DILocation(line: 149, column: 11, scope: !331)
!333 = !DILocation(line: 149, column: 18, scope: !331)
!334 = !DILocation(line: 150, column: 24, scope: !331)
!335 = !DILocation(line: 150, column: 11, scope: !331)
!336 = !DILocation(line: 151, column: 9, scope: !331)
!337 = !DILocation(line: 121, column: 34, scope: !281)
!338 = !DILabel(scope: !264, name: "goodG2B_label_", file: !1, line: 156)
!339 = !DILocation(line: 156, column: 5, scope: !264)
!340 = !DILocation(line: 161, column: 3, scope: !264)
!341 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_file_12_good_label_", file: !1, line: 162)
!342 = !DILocation(line: 162, column: 3, scope: !9)
!343 = !DILocation(line: 167, column: 1, scope: !9)
