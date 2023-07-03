; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_42.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_42.c"
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
define dso_local i8* @badSource(i8* %data) #0 !dbg !10 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !17, metadata !DIExpression()), !dbg !22
  %0 = load i8*, i8** %data.addr, align 8, !dbg !23
  %call = call i64 @strlen(i8* %0) #6, !dbg !24
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
  %call6 = call i64 @strlen(i8* %6) #6, !dbg !44
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_42_bad() #0 !dbg !70 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !75, metadata !DIExpression()), !dbg !79
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !79
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !79
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !80
  store i8* %arraydecay, i8** %data, align 8, !dbg !81
  %1 = load i8*, i8** %data, align 8, !dbg !82
  %call = call i8* @badSource(i8* %1), !dbg !83
  store i8* %call, i8** %data, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %i, metadata !85, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata i32* %n, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !90, metadata !DIExpression()), !dbg !91
  %2 = load i8*, i8** %data, align 8, !dbg !92
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !94
  %cmp = icmp eq i32 %call1, 1, !dbg !95
  br i1 %cmp, label %if.then, label %if.end, !dbg !96

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !97
  store i32 0, i32* %i, align 4, !dbg !99
  br label %for.cond, !dbg !101

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !102
  %4 = load i32, i32* %n, align 4, !dbg !104
  %cmp2 = icmp slt i32 %3, %4, !dbg !105
  br i1 %cmp2, label %for.body, label %for.end, !dbg !106

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !107
  %inc = add nsw i32 %5, 1, !dbg !107
  store i32 %inc, i32* %intVariable, align 4, !dbg !107
  br label %for.inc, !dbg !109

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !110
  %inc3 = add nsw i32 %6, 1, !dbg !110
  store i32 %inc3, i32* %i, align 4, !dbg !110
  br label %for.cond, !dbg !111, !llvm.loop !112

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !115
  call void @printIntLine(i32 %7), !dbg !116
  br label %if.end, !dbg !117

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !118
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodG2BSource(i8* %data) #0 !dbg !119 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !120, metadata !DIExpression()), !dbg !121
  %0 = load i8*, i8** %data.addr, align 8, !dbg !122
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !123
  %1 = load i8*, i8** %data.addr, align 8, !dbg !124
  ret i8* %1, !dbg !125
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !126 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !130
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !130
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !131
  store i8* %arraydecay, i8** %data, align 8, !dbg !132
  %1 = load i8*, i8** %data, align 8, !dbg !133
  %call = call i8* @goodG2BSource(i8* %1), !dbg !134
  store i8* %call, i8** %data, align 8, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %i, metadata !136, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %n, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !141, metadata !DIExpression()), !dbg !142
  %2 = load i8*, i8** %data, align 8, !dbg !143
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !145
  %cmp = icmp eq i32 %call1, 1, !dbg !146
  br i1 %cmp, label %if.then, label %if.end, !dbg !147

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !148
  store i32 0, i32* %i, align 4, !dbg !150
  br label %for.cond, !dbg !152

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !153
  %4 = load i32, i32* %n, align 4, !dbg !155
  %cmp2 = icmp slt i32 %3, %4, !dbg !156
  br i1 %cmp2, label %for.body, label %for.end, !dbg !157

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !158
  %inc = add nsw i32 %5, 1, !dbg !158
  store i32 %inc, i32* %intVariable, align 4, !dbg !158
  br label %for.inc, !dbg !160

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !161
  %inc3 = add nsw i32 %6, 1, !dbg !161
  store i32 %inc3, i32* %i, align 4, !dbg !161
  br label %for.cond, !dbg !162, !llvm.loop !163

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !165
  call void @printIntLine(i32 %7), !dbg !166
  br label %if.end, !dbg !167

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !168
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodB2GSource(i8* %data) #0 !dbg !169 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !172, metadata !DIExpression()), !dbg !174
  %0 = load i8*, i8** %data.addr, align 8, !dbg !175
  %call = call i64 @strlen(i8* %0) #6, !dbg !176
  store i64 %call, i64* %dataLen, align 8, !dbg !174
  %1 = load i64, i64* %dataLen, align 8, !dbg !177
  %sub = sub i64 100, %1, !dbg !179
  %cmp = icmp ugt i64 %sub, 1, !dbg !180
  br i1 %cmp, label %if.then, label %if.end18, !dbg !181

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !182
  %3 = load i64, i64* %dataLen, align 8, !dbg !185
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !186
  %4 = load i64, i64* %dataLen, align 8, !dbg !187
  %sub1 = sub i64 100, %4, !dbg !188
  %conv = trunc i64 %sub1 to i32, !dbg !189
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !190
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %5), !dbg !191
  %cmp3 = icmp ne i8* %call2, null, !dbg !192
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !193

if.then5:                                         ; preds = %if.then
  %6 = load i8*, i8** %data.addr, align 8, !dbg !194
  %call6 = call i64 @strlen(i8* %6) #6, !dbg !196
  store i64 %call6, i64* %dataLen, align 8, !dbg !197
  %7 = load i64, i64* %dataLen, align 8, !dbg !198
  %cmp7 = icmp ugt i64 %7, 0, !dbg !200
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !201

land.lhs.true:                                    ; preds = %if.then5
  %8 = load i8*, i8** %data.addr, align 8, !dbg !202
  %9 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub9 = sub i64 %9, 1, !dbg !204
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %sub9, !dbg !202
  %10 = load i8, i8* %arrayidx, align 1, !dbg !202
  %conv10 = sext i8 %10 to i32, !dbg !202
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !205
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !206

if.then13:                                        ; preds = %land.lhs.true
  %11 = load i8*, i8** %data.addr, align 8, !dbg !207
  %12 = load i64, i64* %dataLen, align 8, !dbg !209
  %sub14 = sub i64 %12, 1, !dbg !210
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 %sub14, !dbg !207
  store i8 0, i8* %arrayidx15, align 1, !dbg !211
  br label %if.end, !dbg !212

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !213

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !214
  %13 = load i8*, i8** %data.addr, align 8, !dbg !216
  %14 = load i64, i64* %dataLen, align 8, !dbg !217
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !216
  store i8 0, i8* %arrayidx16, align 1, !dbg !218
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !219

if.end18:                                         ; preds = %if.end17, %entry
  %15 = load i8*, i8** %data.addr, align 8, !dbg !220
  ret i8* %15, !dbg !221
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !222 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !225, metadata !DIExpression()), !dbg !226
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !226
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !226
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !227
  store i8* %arraydecay, i8** %data, align 8, !dbg !228
  %1 = load i8*, i8** %data, align 8, !dbg !229
  %call = call i8* @goodB2GSource(i8* %1), !dbg !230
  store i8* %call, i8** %data, align 8, !dbg !231
  call void @llvm.dbg.declare(metadata i32* %i, metadata !232, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %n, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !237, metadata !DIExpression()), !dbg !238
  %2 = load i8*, i8** %data, align 8, !dbg !239
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !241
  %cmp = icmp eq i32 %call1, 1, !dbg !242
  br i1 %cmp, label %if.then, label %if.end6, !dbg !243

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !244
  %cmp2 = icmp slt i32 %3, 10000, !dbg !247
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !248

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !249
  store i32 0, i32* %i, align 4, !dbg !251
  br label %for.cond, !dbg !253

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, i32* %i, align 4, !dbg !254
  %5 = load i32, i32* %n, align 4, !dbg !256
  %cmp4 = icmp slt i32 %4, %5, !dbg !257
  br i1 %cmp4, label %for.body, label %for.end, !dbg !258

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !259
  %inc = add nsw i32 %6, 1, !dbg !259
  store i32 %inc, i32* %intVariable, align 4, !dbg !259
  br label %for.inc, !dbg !261

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !262
  %inc5 = add nsw i32 %7, 1, !dbg !262
  store i32 %inc5, i32* %i, align 4, !dbg !262
  br label %for.cond, !dbg !263, !llvm.loop !264

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !266
  call void @printIntLine(i32 %8), !dbg !267
  br label %if.end, !dbg !268

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end6, !dbg !269

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_42_good() #0 !dbg !271 {
entry:
  call void @goodB2G(), !dbg !272
  call void @goodG2B(), !dbg !273
  ret void, !dbg !274
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_003/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "badSource", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 29, type: !13)
!16 = !DILocation(line: 29, column: 25, scope: !10)
!17 = !DILocalVariable(name: "dataLen", scope: !18, file: !1, line: 33, type: !19)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 31, column: 5)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DILocation(line: 33, column: 16, scope: !18)
!23 = !DILocation(line: 33, column: 33, scope: !18)
!24 = !DILocation(line: 33, column: 26, scope: !18)
!25 = !DILocation(line: 35, column: 17, scope: !26)
!26 = distinct !DILexicalBlock(scope: !18, file: !1, line: 35, column: 13)
!27 = !DILocation(line: 35, column: 16, scope: !26)
!28 = !DILocation(line: 35, column: 25, scope: !26)
!29 = !DILocation(line: 35, column: 13, scope: !18)
!30 = !DILocation(line: 38, column: 23, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 38, column: 17)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 36, column: 9)
!33 = !DILocation(line: 38, column: 28, scope: !31)
!34 = !DILocation(line: 38, column: 27, scope: !31)
!35 = !DILocation(line: 38, column: 47, scope: !31)
!36 = !DILocation(line: 38, column: 46, scope: !31)
!37 = !DILocation(line: 38, column: 37, scope: !31)
!38 = !DILocation(line: 38, column: 57, scope: !31)
!39 = !DILocation(line: 38, column: 17, scope: !31)
!40 = !DILocation(line: 38, column: 64, scope: !31)
!41 = !DILocation(line: 38, column: 17, scope: !32)
!42 = !DILocation(line: 42, column: 34, scope: !43)
!43 = distinct !DILexicalBlock(scope: !31, file: !1, line: 39, column: 13)
!44 = !DILocation(line: 42, column: 27, scope: !43)
!45 = !DILocation(line: 42, column: 25, scope: !43)
!46 = !DILocation(line: 43, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 43, column: 21)
!48 = !DILocation(line: 43, column: 29, scope: !47)
!49 = !DILocation(line: 43, column: 33, scope: !47)
!50 = !DILocation(line: 43, column: 36, scope: !47)
!51 = !DILocation(line: 43, column: 41, scope: !47)
!52 = !DILocation(line: 43, column: 48, scope: !47)
!53 = !DILocation(line: 43, column: 52, scope: !47)
!54 = !DILocation(line: 43, column: 21, scope: !43)
!55 = !DILocation(line: 45, column: 21, scope: !56)
!56 = distinct !DILexicalBlock(scope: !47, file: !1, line: 44, column: 17)
!57 = !DILocation(line: 45, column: 26, scope: !56)
!58 = !DILocation(line: 45, column: 33, scope: !56)
!59 = !DILocation(line: 45, column: 37, scope: !56)
!60 = !DILocation(line: 46, column: 17, scope: !56)
!61 = !DILocation(line: 47, column: 13, scope: !43)
!62 = !DILocation(line: 50, column: 17, scope: !63)
!63 = distinct !DILexicalBlock(scope: !31, file: !1, line: 49, column: 13)
!64 = !DILocation(line: 52, column: 17, scope: !63)
!65 = !DILocation(line: 52, column: 22, scope: !63)
!66 = !DILocation(line: 52, column: 31, scope: !63)
!67 = !DILocation(line: 54, column: 9, scope: !32)
!68 = !DILocation(line: 56, column: 12, scope: !10)
!69 = !DILocation(line: 56, column: 5, scope: !10)
!70 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_42_bad", scope: !1, file: !1, line: 59, type: !71, scopeLine: 60, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!71 = !DISubroutineType(types: !72)
!72 = !{null}
!73 = !DILocalVariable(name: "data", scope: !70, file: !1, line: 61, type: !13)
!74 = !DILocation(line: 61, column: 12, scope: !70)
!75 = !DILocalVariable(name: "dataBuffer", scope: !70, file: !1, line: 62, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 100)
!79 = !DILocation(line: 62, column: 10, scope: !70)
!80 = !DILocation(line: 63, column: 12, scope: !70)
!81 = !DILocation(line: 63, column: 10, scope: !70)
!82 = !DILocation(line: 64, column: 22, scope: !70)
!83 = !DILocation(line: 64, column: 12, scope: !70)
!84 = !DILocation(line: 64, column: 10, scope: !70)
!85 = !DILocalVariable(name: "i", scope: !86, file: !1, line: 66, type: !4)
!86 = distinct !DILexicalBlock(scope: !70, file: !1, line: 65, column: 5)
!87 = !DILocation(line: 66, column: 13, scope: !86)
!88 = !DILocalVariable(name: "n", scope: !86, file: !1, line: 66, type: !4)
!89 = !DILocation(line: 66, column: 16, scope: !86)
!90 = !DILocalVariable(name: "intVariable", scope: !86, file: !1, line: 66, type: !4)
!91 = !DILocation(line: 66, column: 19, scope: !86)
!92 = !DILocation(line: 67, column: 20, scope: !93)
!93 = distinct !DILexicalBlock(scope: !86, file: !1, line: 67, column: 13)
!94 = !DILocation(line: 67, column: 13, scope: !93)
!95 = !DILocation(line: 67, column: 36, scope: !93)
!96 = !DILocation(line: 67, column: 13, scope: !86)
!97 = !DILocation(line: 70, column: 25, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 68, column: 9)
!99 = !DILocation(line: 71, column: 20, scope: !100)
!100 = distinct !DILexicalBlock(scope: !98, file: !1, line: 71, column: 13)
!101 = !DILocation(line: 71, column: 18, scope: !100)
!102 = !DILocation(line: 71, column: 25, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !1, line: 71, column: 13)
!104 = !DILocation(line: 71, column: 29, scope: !103)
!105 = !DILocation(line: 71, column: 27, scope: !103)
!106 = !DILocation(line: 71, column: 13, scope: !100)
!107 = !DILocation(line: 74, column: 28, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 72, column: 13)
!109 = !DILocation(line: 75, column: 13, scope: !108)
!110 = !DILocation(line: 71, column: 33, scope: !103)
!111 = !DILocation(line: 71, column: 13, scope: !103)
!112 = distinct !{!112, !106, !113, !114}
!113 = !DILocation(line: 75, column: 13, scope: !100)
!114 = !{!"llvm.loop.mustprogress"}
!115 = !DILocation(line: 76, column: 26, scope: !98)
!116 = !DILocation(line: 76, column: 13, scope: !98)
!117 = !DILocation(line: 77, column: 9, scope: !98)
!118 = !DILocation(line: 79, column: 1, scope: !70)
!119 = distinct !DISubprogram(name: "goodG2BSource", scope: !1, file: !1, line: 86, type: !11, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!120 = !DILocalVariable(name: "data", arg: 1, scope: !119, file: !1, line: 86, type: !13)
!121 = !DILocation(line: 86, column: 29, scope: !119)
!122 = !DILocation(line: 89, column: 12, scope: !119)
!123 = !DILocation(line: 89, column: 5, scope: !119)
!124 = !DILocation(line: 90, column: 12, scope: !119)
!125 = !DILocation(line: 90, column: 5, scope: !119)
!126 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 93, type: !71, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!127 = !DILocalVariable(name: "data", scope: !126, file: !1, line: 95, type: !13)
!128 = !DILocation(line: 95, column: 12, scope: !126)
!129 = !DILocalVariable(name: "dataBuffer", scope: !126, file: !1, line: 96, type: !76)
!130 = !DILocation(line: 96, column: 10, scope: !126)
!131 = !DILocation(line: 97, column: 12, scope: !126)
!132 = !DILocation(line: 97, column: 10, scope: !126)
!133 = !DILocation(line: 98, column: 26, scope: !126)
!134 = !DILocation(line: 98, column: 12, scope: !126)
!135 = !DILocation(line: 98, column: 10, scope: !126)
!136 = !DILocalVariable(name: "i", scope: !137, file: !1, line: 100, type: !4)
!137 = distinct !DILexicalBlock(scope: !126, file: !1, line: 99, column: 5)
!138 = !DILocation(line: 100, column: 13, scope: !137)
!139 = !DILocalVariable(name: "n", scope: !137, file: !1, line: 100, type: !4)
!140 = !DILocation(line: 100, column: 16, scope: !137)
!141 = !DILocalVariable(name: "intVariable", scope: !137, file: !1, line: 100, type: !4)
!142 = !DILocation(line: 100, column: 19, scope: !137)
!143 = !DILocation(line: 101, column: 20, scope: !144)
!144 = distinct !DILexicalBlock(scope: !137, file: !1, line: 101, column: 13)
!145 = !DILocation(line: 101, column: 13, scope: !144)
!146 = !DILocation(line: 101, column: 36, scope: !144)
!147 = !DILocation(line: 101, column: 13, scope: !137)
!148 = !DILocation(line: 104, column: 25, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !1, line: 102, column: 9)
!150 = !DILocation(line: 105, column: 20, scope: !151)
!151 = distinct !DILexicalBlock(scope: !149, file: !1, line: 105, column: 13)
!152 = !DILocation(line: 105, column: 18, scope: !151)
!153 = !DILocation(line: 105, column: 25, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !1, line: 105, column: 13)
!155 = !DILocation(line: 105, column: 29, scope: !154)
!156 = !DILocation(line: 105, column: 27, scope: !154)
!157 = !DILocation(line: 105, column: 13, scope: !151)
!158 = !DILocation(line: 108, column: 28, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 106, column: 13)
!160 = !DILocation(line: 109, column: 13, scope: !159)
!161 = !DILocation(line: 105, column: 33, scope: !154)
!162 = !DILocation(line: 105, column: 13, scope: !154)
!163 = distinct !{!163, !157, !164, !114}
!164 = !DILocation(line: 109, column: 13, scope: !151)
!165 = !DILocation(line: 110, column: 26, scope: !149)
!166 = !DILocation(line: 110, column: 13, scope: !149)
!167 = !DILocation(line: 111, column: 9, scope: !149)
!168 = !DILocation(line: 113, column: 1, scope: !126)
!169 = distinct !DISubprogram(name: "goodB2GSource", scope: !1, file: !1, line: 116, type: !11, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!170 = !DILocalVariable(name: "data", arg: 1, scope: !169, file: !1, line: 116, type: !13)
!171 = !DILocation(line: 116, column: 29, scope: !169)
!172 = !DILocalVariable(name: "dataLen", scope: !173, file: !1, line: 120, type: !19)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 118, column: 5)
!174 = !DILocation(line: 120, column: 16, scope: !173)
!175 = !DILocation(line: 120, column: 33, scope: !173)
!176 = !DILocation(line: 120, column: 26, scope: !173)
!177 = !DILocation(line: 122, column: 17, scope: !178)
!178 = distinct !DILexicalBlock(scope: !173, file: !1, line: 122, column: 13)
!179 = !DILocation(line: 122, column: 16, scope: !178)
!180 = !DILocation(line: 122, column: 25, scope: !178)
!181 = !DILocation(line: 122, column: 13, scope: !173)
!182 = !DILocation(line: 125, column: 23, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 125, column: 17)
!184 = distinct !DILexicalBlock(scope: !178, file: !1, line: 123, column: 9)
!185 = !DILocation(line: 125, column: 28, scope: !183)
!186 = !DILocation(line: 125, column: 27, scope: !183)
!187 = !DILocation(line: 125, column: 47, scope: !183)
!188 = !DILocation(line: 125, column: 46, scope: !183)
!189 = !DILocation(line: 125, column: 37, scope: !183)
!190 = !DILocation(line: 125, column: 57, scope: !183)
!191 = !DILocation(line: 125, column: 17, scope: !183)
!192 = !DILocation(line: 125, column: 64, scope: !183)
!193 = !DILocation(line: 125, column: 17, scope: !184)
!194 = !DILocation(line: 129, column: 34, scope: !195)
!195 = distinct !DILexicalBlock(scope: !183, file: !1, line: 126, column: 13)
!196 = !DILocation(line: 129, column: 27, scope: !195)
!197 = !DILocation(line: 129, column: 25, scope: !195)
!198 = !DILocation(line: 130, column: 21, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 130, column: 21)
!200 = !DILocation(line: 130, column: 29, scope: !199)
!201 = !DILocation(line: 130, column: 33, scope: !199)
!202 = !DILocation(line: 130, column: 36, scope: !199)
!203 = !DILocation(line: 130, column: 41, scope: !199)
!204 = !DILocation(line: 130, column: 48, scope: !199)
!205 = !DILocation(line: 130, column: 52, scope: !199)
!206 = !DILocation(line: 130, column: 21, scope: !195)
!207 = !DILocation(line: 132, column: 21, scope: !208)
!208 = distinct !DILexicalBlock(scope: !199, file: !1, line: 131, column: 17)
!209 = !DILocation(line: 132, column: 26, scope: !208)
!210 = !DILocation(line: 132, column: 33, scope: !208)
!211 = !DILocation(line: 132, column: 37, scope: !208)
!212 = !DILocation(line: 133, column: 17, scope: !208)
!213 = !DILocation(line: 134, column: 13, scope: !195)
!214 = !DILocation(line: 137, column: 17, scope: !215)
!215 = distinct !DILexicalBlock(scope: !183, file: !1, line: 136, column: 13)
!216 = !DILocation(line: 139, column: 17, scope: !215)
!217 = !DILocation(line: 139, column: 22, scope: !215)
!218 = !DILocation(line: 139, column: 31, scope: !215)
!219 = !DILocation(line: 141, column: 9, scope: !184)
!220 = !DILocation(line: 143, column: 12, scope: !169)
!221 = !DILocation(line: 143, column: 5, scope: !169)
!222 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 146, type: !71, scopeLine: 147, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!223 = !DILocalVariable(name: "data", scope: !222, file: !1, line: 148, type: !13)
!224 = !DILocation(line: 148, column: 12, scope: !222)
!225 = !DILocalVariable(name: "dataBuffer", scope: !222, file: !1, line: 149, type: !76)
!226 = !DILocation(line: 149, column: 10, scope: !222)
!227 = !DILocation(line: 150, column: 12, scope: !222)
!228 = !DILocation(line: 150, column: 10, scope: !222)
!229 = !DILocation(line: 151, column: 26, scope: !222)
!230 = !DILocation(line: 151, column: 12, scope: !222)
!231 = !DILocation(line: 151, column: 10, scope: !222)
!232 = !DILocalVariable(name: "i", scope: !233, file: !1, line: 153, type: !4)
!233 = distinct !DILexicalBlock(scope: !222, file: !1, line: 152, column: 5)
!234 = !DILocation(line: 153, column: 13, scope: !233)
!235 = !DILocalVariable(name: "n", scope: !233, file: !1, line: 153, type: !4)
!236 = !DILocation(line: 153, column: 16, scope: !233)
!237 = !DILocalVariable(name: "intVariable", scope: !233, file: !1, line: 153, type: !4)
!238 = !DILocation(line: 153, column: 19, scope: !233)
!239 = !DILocation(line: 154, column: 20, scope: !240)
!240 = distinct !DILexicalBlock(scope: !233, file: !1, line: 154, column: 13)
!241 = !DILocation(line: 154, column: 13, scope: !240)
!242 = !DILocation(line: 154, column: 36, scope: !240)
!243 = !DILocation(line: 154, column: 13, scope: !233)
!244 = !DILocation(line: 157, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 157, column: 17)
!246 = distinct !DILexicalBlock(scope: !240, file: !1, line: 155, column: 9)
!247 = !DILocation(line: 157, column: 19, scope: !245)
!248 = !DILocation(line: 157, column: 17, scope: !246)
!249 = !DILocation(line: 159, column: 29, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !1, line: 158, column: 13)
!251 = !DILocation(line: 160, column: 24, scope: !252)
!252 = distinct !DILexicalBlock(scope: !250, file: !1, line: 160, column: 17)
!253 = !DILocation(line: 160, column: 22, scope: !252)
!254 = !DILocation(line: 160, column: 29, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !1, line: 160, column: 17)
!256 = !DILocation(line: 160, column: 33, scope: !255)
!257 = !DILocation(line: 160, column: 31, scope: !255)
!258 = !DILocation(line: 160, column: 17, scope: !252)
!259 = !DILocation(line: 163, column: 32, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !1, line: 161, column: 17)
!261 = !DILocation(line: 164, column: 17, scope: !260)
!262 = !DILocation(line: 160, column: 37, scope: !255)
!263 = !DILocation(line: 160, column: 17, scope: !255)
!264 = distinct !{!264, !258, !265, !114}
!265 = !DILocation(line: 164, column: 17, scope: !252)
!266 = !DILocation(line: 165, column: 30, scope: !250)
!267 = !DILocation(line: 165, column: 17, scope: !250)
!268 = !DILocation(line: 166, column: 13, scope: !250)
!269 = !DILocation(line: 167, column: 9, scope: !246)
!270 = !DILocation(line: 169, column: 1, scope: !222)
!271 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_42_good", scope: !1, file: !1, line: 171, type: !71, scopeLine: 172, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!272 = !DILocation(line: 173, column: 5, scope: !271)
!273 = !DILocation(line: 174, column: 5, scope: !271)
!274 = !DILocation(line: 175, column: 1, scope: !271)
