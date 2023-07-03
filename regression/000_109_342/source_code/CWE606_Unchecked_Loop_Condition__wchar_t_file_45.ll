; ModuleID = 'CWE606_Unchecked_Loop_Condition__wchar_t_file_45.c'
source_filename = "CWE606_Unchecked_Loop_Condition__wchar_t_file_45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@CWE606_Unchecked_Loop_Condition__wchar_t_file_45_badData = dso_local global i32* null, align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i32] [i32 37, i32 100, i32 0], align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodG2BData = dso_local global i32* null, align 8, !dbg !9
@.str.4 = private unnamed_addr constant [3 x i32] [i32 49, i32 53, i32 0], align 4
@CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData = dso_local global i32* null, align 8, !dbg !14

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink() #0 !dbg !20 {
entry:
  %data = alloca i32*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32** %data, metadata !23, metadata !DIExpression()), !dbg !24
  %0 = load i32*, i32** @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_badData, align 8, !dbg !25
  store i32* %0, i32** %data, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %n, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !31, metadata !DIExpression()), !dbg !32
  %1 = load i32*, i32** %data, align 8, !dbg !33
  %call = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %1, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !35
  %cmp = icmp eq i32 %call, 1, !dbg !36
  br i1 %cmp, label %if.then, label %if.end, !dbg !37

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !38
  store i32 0, i32* %i, align 4, !dbg !40
  br label %for.cond, !dbg !42

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !43
  %3 = load i32, i32* %n, align 4, !dbg !45
  %cmp1 = icmp slt i32 %2, %3, !dbg !46
  br i1 %cmp1, label %for.body, label %for.end, !dbg !47

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !48
  %inc = add nsw i32 %4, 1, !dbg !48
  store i32 %inc, i32* %intVariable, align 4, !dbg !48
  br label %for.inc, !dbg !50

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !51
  %inc2 = add nsw i32 %5, 1, !dbg !51
  store i32 %inc2, i32* %i, align 4, !dbg !51
  br label %for.cond, !dbg !52, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !56
  call void @printIntLine(i32 %6), !dbg !57
  br label %if.end, !dbg !58

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad() #0 !dbg !60 {
entry:
  %data = alloca i32*, align 8
  %dataBuffer = alloca [100 x i32], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i32** %data, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata [100 x i32]* %dataBuffer, metadata !63, metadata !DIExpression()), !dbg !67
  %0 = bitcast [100 x i32]* %dataBuffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 400, i1 false), !dbg !67
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %dataBuffer, i64 0, i64 0, !dbg !68
  store i32* %arraydecay, i32** %data, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !70, metadata !DIExpression()), !dbg !74
  %1 = load i32*, i32** %data, align 8, !dbg !75
  %call = call i64 @wcslen(i32* %1) #7, !dbg !76
  store i64 %call, i64* %dataLen, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !77, metadata !DIExpression()), !dbg !136
  %2 = load i64, i64* %dataLen, align 8, !dbg !137
  %sub = sub i64 100, %2, !dbg !139
  %cmp = icmp ugt i64 %sub, 1, !dbg !140
  br i1 %cmp, label %if.then, label %if.end11, !dbg !141

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !142
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !144
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !145
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !147
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !148

if.then3:                                         ; preds = %if.then
  %4 = load i32*, i32** %data, align 8, !dbg !149
  %5 = load i64, i64* %dataLen, align 8, !dbg !152
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %5, !dbg !153
  %6 = load i64, i64* %dataLen, align 8, !dbg !154
  %sub4 = sub i64 100, %6, !dbg !155
  %conv = trunc i64 %sub4 to i32, !dbg !156
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !157
  %call5 = call i32* @fgetws(i32* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !158
  %cmp6 = icmp eq i32* %call5, null, !dbg !159
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !160

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)), !dbg !161
  %8 = load i32*, i32** %data, align 8, !dbg !163
  %9 = load i64, i64* %dataLen, align 8, !dbg !164
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %9, !dbg !163
  store i32 0, i32* %arrayidx, align 4, !dbg !165
  br label %if.end, !dbg !166

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !167
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !168
  br label %if.end10, !dbg !169

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !170

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i32*, i32** %data, align 8, !dbg !171
  store i32* %11, i32** @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_badData, align 8, !dbg !172
  call void @badSink(), !dbg !173
  ret void, !dbg !174
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @wcslen(i32*) #5

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i32* @fgetws(i32*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink() #0 !dbg !175 {
entry:
  %data = alloca i32*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32** %data, metadata !176, metadata !DIExpression()), !dbg !177
  %0 = load i32*, i32** @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodG2BData, align 8, !dbg !178
  store i32* %0, i32** %data, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata i32* %i, metadata !179, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i32* %n, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !184, metadata !DIExpression()), !dbg !185
  %1 = load i32*, i32** %data, align 8, !dbg !186
  %call = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %1, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !188
  %cmp = icmp eq i32 %call, 1, !dbg !189
  br i1 %cmp, label %if.then, label %if.end, !dbg !190

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !191
  store i32 0, i32* %i, align 4, !dbg !193
  br label %for.cond, !dbg !195

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !196
  %3 = load i32, i32* %n, align 4, !dbg !198
  %cmp1 = icmp slt i32 %2, %3, !dbg !199
  br i1 %cmp1, label %for.body, label %for.end, !dbg !200

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !201
  %inc = add nsw i32 %4, 1, !dbg !201
  store i32 %inc, i32* %intVariable, align 4, !dbg !201
  br label %for.inc, !dbg !203

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !204
  %inc2 = add nsw i32 %5, 1, !dbg !204
  store i32 %inc2, i32* %i, align 4, !dbg !204
  br label %for.cond, !dbg !205, !llvm.loop !206

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !208
  call void @printIntLine(i32 %6), !dbg !209
  br label %if.end, !dbg !210

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !211
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !212 {
entry:
  %data = alloca i32*, align 8
  %dataBuffer = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata i32** %data, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata [100 x i32]* %dataBuffer, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = bitcast [100 x i32]* %dataBuffer to i8*, !dbg !216
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 400, i1 false), !dbg !216
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %dataBuffer, i64 0, i64 0, !dbg !217
  store i32* %arraydecay, i32** %data, align 8, !dbg !218
  %1 = load i32*, i32** %data, align 8, !dbg !219
  %call = call i32* @wcscpy(i32* %1, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.4, i64 0, i64 0)) #6, !dbg !220
  %2 = load i32*, i32** %data, align 8, !dbg !221
  store i32* %2, i32** @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodG2BData, align 8, !dbg !222
  call void @goodG2BSink(), !dbg !223
  ret void, !dbg !224
}

; Function Attrs: nounwind
declare dso_local i32* @wcscpy(i32*, i32*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !225 {
entry:
  %data = alloca i32*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32** %data, metadata !226, metadata !DIExpression()), !dbg !227
  %0 = load i32*, i32** @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData, align 8, !dbg !228
  store i32* %0, i32** %data, align 8, !dbg !227
  call void @llvm.dbg.declare(metadata i32* %i, metadata !229, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i32* %n, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !234, metadata !DIExpression()), !dbg !235
  %1 = load i32*, i32** %data, align 8, !dbg !236
  %call = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %1, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !238
  %cmp = icmp eq i32 %call, 1, !dbg !239
  br i1 %cmp, label %if.then, label %if.end5, !dbg !240

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !241
  %cmp1 = icmp slt i32 %2, 10000, !dbg !244
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !245

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !246
  store i32 0, i32* %i, align 4, !dbg !248
  br label %for.cond, !dbg !250

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !251
  %4 = load i32, i32* %n, align 4, !dbg !253
  %cmp3 = icmp slt i32 %3, %4, !dbg !254
  br i1 %cmp3, label %for.body, label %for.end, !dbg !255

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !256
  %inc = add nsw i32 %5, 1, !dbg !256
  store i32 %inc, i32* %intVariable, align 4, !dbg !256
  br label %for.inc, !dbg !258

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !259
  %inc4 = add nsw i32 %6, 1, !dbg !259
  store i32 %inc4, i32* %i, align 4, !dbg !259
  br label %for.cond, !dbg !260, !llvm.loop !261

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !263
  call void @printIntLine(i32 %7), !dbg !264
  br label %if.end, !dbg !265

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !266

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !267
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !268 {
entry:
  %data = alloca i32*, align 8
  %dataBuffer = alloca [100 x i32], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i32** %data, metadata !269, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata [100 x i32]* %dataBuffer, metadata !271, metadata !DIExpression()), !dbg !272
  %0 = bitcast [100 x i32]* %dataBuffer to i8*, !dbg !272
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 400, i1 false), !dbg !272
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %dataBuffer, i64 0, i64 0, !dbg !273
  store i32* %arraydecay, i32** %data, align 8, !dbg !274
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !275, metadata !DIExpression()), !dbg !277
  %1 = load i32*, i32** %data, align 8, !dbg !278
  %call = call i64 @wcslen(i32* %1) #7, !dbg !279
  store i64 %call, i64* %dataLen, align 8, !dbg !277
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !280, metadata !DIExpression()), !dbg !281
  %2 = load i64, i64* %dataLen, align 8, !dbg !282
  %sub = sub i64 100, %2, !dbg !284
  %cmp = icmp ugt i64 %sub, 1, !dbg !285
  br i1 %cmp, label %if.then, label %if.end11, !dbg !286

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !287
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !289
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !290
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !292
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !293

if.then3:                                         ; preds = %if.then
  %4 = load i32*, i32** %data, align 8, !dbg !294
  %5 = load i64, i64* %dataLen, align 8, !dbg !297
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %5, !dbg !298
  %6 = load i64, i64* %dataLen, align 8, !dbg !299
  %sub4 = sub i64 100, %6, !dbg !300
  %conv = trunc i64 %sub4 to i32, !dbg !301
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !302
  %call5 = call i32* @fgetws(i32* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !303
  %cmp6 = icmp eq i32* %call5, null, !dbg !304
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !305

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)), !dbg !306
  %8 = load i32*, i32** %data, align 8, !dbg !308
  %9 = load i64, i64* %dataLen, align 8, !dbg !309
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %9, !dbg !308
  store i32 0, i32* %arrayidx, align 4, !dbg !310
  br label %if.end, !dbg !311

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !312
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !313
  br label %if.end10, !dbg !314

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !315

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i32*, i32** %data, align 8, !dbg !316
  store i32* %11, i32** @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData, align 8, !dbg !317
  call void @goodB2GSink(), !dbg !318
  ret void, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_good() #0 !dbg !320 {
entry:
  call void @goodG2B(), !dbg !321
  call void @goodB2G(), !dbg !322
  ret void, !dbg !323
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__wchar_t_file_45_badData", scope: !2, file: !3, line: 33, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__wchar_t_file_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_342/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !14}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodG2BData", scope: !2, file: !3, line: 34, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !13, line: 74, baseType: !7)
!13 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData", scope: !2, file: !3, line: 35, type: !11, isLocal: false, isDefinition: true)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 12.0.0"}
!20 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 39, type: !21, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!21 = !DISubroutineType(types: !22)
!22 = !{null}
!23 = !DILocalVariable(name: "data", scope: !20, file: !3, line: 41, type: !11)
!24 = !DILocation(line: 41, column: 15, scope: !20)
!25 = !DILocation(line: 41, column: 22, scope: !20)
!26 = !DILocalVariable(name: "i", scope: !27, file: !3, line: 43, type: !7)
!27 = distinct !DILexicalBlock(scope: !20, file: !3, line: 42, column: 5)
!28 = !DILocation(line: 43, column: 13, scope: !27)
!29 = !DILocalVariable(name: "n", scope: !27, file: !3, line: 43, type: !7)
!30 = !DILocation(line: 43, column: 16, scope: !27)
!31 = !DILocalVariable(name: "intVariable", scope: !27, file: !3, line: 43, type: !7)
!32 = !DILocation(line: 43, column: 19, scope: !27)
!33 = !DILocation(line: 44, column: 21, scope: !34)
!34 = distinct !DILexicalBlock(scope: !27, file: !3, line: 44, column: 13)
!35 = !DILocation(line: 44, column: 13, scope: !34)
!36 = !DILocation(line: 44, column: 38, scope: !34)
!37 = !DILocation(line: 44, column: 13, scope: !27)
!38 = !DILocation(line: 47, column: 25, scope: !39)
!39 = distinct !DILexicalBlock(scope: !34, file: !3, line: 45, column: 9)
!40 = !DILocation(line: 48, column: 20, scope: !41)
!41 = distinct !DILexicalBlock(scope: !39, file: !3, line: 48, column: 13)
!42 = !DILocation(line: 48, column: 18, scope: !41)
!43 = !DILocation(line: 48, column: 25, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !3, line: 48, column: 13)
!45 = !DILocation(line: 48, column: 29, scope: !44)
!46 = !DILocation(line: 48, column: 27, scope: !44)
!47 = !DILocation(line: 48, column: 13, scope: !41)
!48 = !DILocation(line: 51, column: 28, scope: !49)
!49 = distinct !DILexicalBlock(scope: !44, file: !3, line: 49, column: 13)
!50 = !DILocation(line: 52, column: 13, scope: !49)
!51 = !DILocation(line: 48, column: 33, scope: !44)
!52 = !DILocation(line: 48, column: 13, scope: !44)
!53 = distinct !{!53, !47, !54, !55}
!54 = !DILocation(line: 52, column: 13, scope: !41)
!55 = !{!"llvm.loop.mustprogress"}
!56 = !DILocation(line: 53, column: 26, scope: !39)
!57 = !DILocation(line: 53, column: 13, scope: !39)
!58 = !DILocation(line: 54, column: 9, scope: !39)
!59 = !DILocation(line: 56, column: 1, scope: !20)
!60 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad", scope: !3, file: !3, line: 58, type: !21, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!61 = !DILocalVariable(name: "data", scope: !60, file: !3, line: 60, type: !11)
!62 = !DILocation(line: 60, column: 15, scope: !60)
!63 = !DILocalVariable(name: "dataBuffer", scope: !60, file: !3, line: 61, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 100)
!67 = !DILocation(line: 61, column: 13, scope: !60)
!68 = !DILocation(line: 62, column: 12, scope: !60)
!69 = !DILocation(line: 62, column: 10, scope: !60)
!70 = !DILocalVariable(name: "dataLen", scope: !71, file: !3, line: 65, type: !72)
!71 = distinct !DILexicalBlock(scope: !60, file: !3, line: 63, column: 5)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 46, baseType: !73)
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DILocation(line: 65, column: 16, scope: !71)
!75 = !DILocation(line: 65, column: 33, scope: !71)
!76 = !DILocation(line: 65, column: 26, scope: !71)
!77 = !DILocalVariable(name: "pFile", scope: !71, file: !3, line: 66, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !80, line: 7, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !82, line: 49, size: 1728, elements: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!83 = !{!84, !85, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !101, !103, !104, !105, !109, !111, !113, !117, !120, !122, !125, !128, !129, !130, !131, !132}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !81, file: !82, line: 51, baseType: !7, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !81, file: !82, line: 54, baseType: !86, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !81, file: !82, line: 55, baseType: !86, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !81, file: !82, line: 56, baseType: !86, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !81, file: !82, line: 57, baseType: !86, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !81, file: !82, line: 58, baseType: !86, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !81, file: !82, line: 59, baseType: !86, size: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !81, file: !82, line: 60, baseType: !86, size: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !81, file: !82, line: 61, baseType: !86, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !81, file: !82, line: 64, baseType: !86, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !81, file: !82, line: 65, baseType: !86, size: 64, offset: 640)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !81, file: !82, line: 66, baseType: !86, size: 64, offset: 704)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !81, file: !82, line: 68, baseType: !99, size: 64, offset: 768)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !82, line: 36, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !81, file: !82, line: 70, baseType: !102, size: 64, offset: 832)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !81, file: !82, line: 72, baseType: !7, size: 32, offset: 896)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !81, file: !82, line: 73, baseType: !7, size: 32, offset: 928)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !81, file: !82, line: 74, baseType: !106, size: 64, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !107, line: 152, baseType: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!108 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !81, file: !82, line: 77, baseType: !110, size: 16, offset: 1024)
!110 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !81, file: !82, line: 78, baseType: !112, size: 8, offset: 1040)
!112 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !81, file: !82, line: 79, baseType: !114, size: 8, offset: 1048)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 1)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !81, file: !82, line: 81, baseType: !118, size: 64, offset: 1088)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !82, line: 43, baseType: null)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !81, file: !82, line: 89, baseType: !121, size: 64, offset: 1152)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !107, line: 153, baseType: !108)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !81, file: !82, line: 91, baseType: !123, size: 64, offset: 1216)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !82, line: 37, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !81, file: !82, line: 92, baseType: !126, size: 64, offset: 1280)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !82, line: 38, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !81, file: !82, line: 93, baseType: !102, size: 64, offset: 1344)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !81, file: !82, line: 94, baseType: !6, size: 64, offset: 1408)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !81, file: !82, line: 95, baseType: !72, size: 64, offset: 1472)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !81, file: !82, line: 96, baseType: !7, size: 32, offset: 1536)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !81, file: !82, line: 98, baseType: !133, size: 160, offset: 1568)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 160, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 20)
!136 = !DILocation(line: 66, column: 16, scope: !71)
!137 = !DILocation(line: 68, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !71, file: !3, line: 68, column: 13)
!139 = !DILocation(line: 68, column: 16, scope: !138)
!140 = !DILocation(line: 68, column: 25, scope: !138)
!141 = !DILocation(line: 68, column: 13, scope: !71)
!142 = !DILocation(line: 70, column: 21, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !3, line: 69, column: 9)
!144 = !DILocation(line: 70, column: 19, scope: !143)
!145 = !DILocation(line: 71, column: 17, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !3, line: 71, column: 17)
!147 = !DILocation(line: 71, column: 23, scope: !146)
!148 = !DILocation(line: 71, column: 17, scope: !143)
!149 = !DILocation(line: 74, column: 28, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 74, column: 21)
!151 = distinct !DILexicalBlock(scope: !146, file: !3, line: 72, column: 13)
!152 = !DILocation(line: 74, column: 33, scope: !150)
!153 = !DILocation(line: 74, column: 32, scope: !150)
!154 = !DILocation(line: 74, column: 52, scope: !150)
!155 = !DILocation(line: 74, column: 51, scope: !150)
!156 = !DILocation(line: 74, column: 42, scope: !150)
!157 = !DILocation(line: 74, column: 62, scope: !150)
!158 = !DILocation(line: 74, column: 21, scope: !150)
!159 = !DILocation(line: 74, column: 69, scope: !150)
!160 = !DILocation(line: 74, column: 21, scope: !151)
!161 = !DILocation(line: 76, column: 21, scope: !162)
!162 = distinct !DILexicalBlock(scope: !150, file: !3, line: 75, column: 17)
!163 = !DILocation(line: 78, column: 21, scope: !162)
!164 = !DILocation(line: 78, column: 26, scope: !162)
!165 = !DILocation(line: 78, column: 35, scope: !162)
!166 = !DILocation(line: 79, column: 17, scope: !162)
!167 = !DILocation(line: 80, column: 24, scope: !151)
!168 = !DILocation(line: 80, column: 17, scope: !151)
!169 = !DILocation(line: 81, column: 13, scope: !151)
!170 = !DILocation(line: 82, column: 9, scope: !143)
!171 = !DILocation(line: 84, column: 64, scope: !60)
!172 = !DILocation(line: 84, column: 62, scope: !60)
!173 = !DILocation(line: 85, column: 5, scope: !60)
!174 = !DILocation(line: 86, column: 1, scope: !60)
!175 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 93, type: !21, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!176 = !DILocalVariable(name: "data", scope: !175, file: !3, line: 95, type: !11)
!177 = !DILocation(line: 95, column: 15, scope: !175)
!178 = !DILocation(line: 95, column: 22, scope: !175)
!179 = !DILocalVariable(name: "i", scope: !180, file: !3, line: 97, type: !7)
!180 = distinct !DILexicalBlock(scope: !175, file: !3, line: 96, column: 5)
!181 = !DILocation(line: 97, column: 13, scope: !180)
!182 = !DILocalVariable(name: "n", scope: !180, file: !3, line: 97, type: !7)
!183 = !DILocation(line: 97, column: 16, scope: !180)
!184 = !DILocalVariable(name: "intVariable", scope: !180, file: !3, line: 97, type: !7)
!185 = !DILocation(line: 97, column: 19, scope: !180)
!186 = !DILocation(line: 98, column: 21, scope: !187)
!187 = distinct !DILexicalBlock(scope: !180, file: !3, line: 98, column: 13)
!188 = !DILocation(line: 98, column: 13, scope: !187)
!189 = !DILocation(line: 98, column: 38, scope: !187)
!190 = !DILocation(line: 98, column: 13, scope: !180)
!191 = !DILocation(line: 101, column: 25, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !3, line: 99, column: 9)
!193 = !DILocation(line: 102, column: 20, scope: !194)
!194 = distinct !DILexicalBlock(scope: !192, file: !3, line: 102, column: 13)
!195 = !DILocation(line: 102, column: 18, scope: !194)
!196 = !DILocation(line: 102, column: 25, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !3, line: 102, column: 13)
!198 = !DILocation(line: 102, column: 29, scope: !197)
!199 = !DILocation(line: 102, column: 27, scope: !197)
!200 = !DILocation(line: 102, column: 13, scope: !194)
!201 = !DILocation(line: 105, column: 28, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !3, line: 103, column: 13)
!203 = !DILocation(line: 106, column: 13, scope: !202)
!204 = !DILocation(line: 102, column: 33, scope: !197)
!205 = !DILocation(line: 102, column: 13, scope: !197)
!206 = distinct !{!206, !200, !207, !55}
!207 = !DILocation(line: 106, column: 13, scope: !194)
!208 = !DILocation(line: 107, column: 26, scope: !192)
!209 = !DILocation(line: 107, column: 13, scope: !192)
!210 = !DILocation(line: 108, column: 9, scope: !192)
!211 = !DILocation(line: 110, column: 1, scope: !175)
!212 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 112, type: !21, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!213 = !DILocalVariable(name: "data", scope: !212, file: !3, line: 114, type: !11)
!214 = !DILocation(line: 114, column: 15, scope: !212)
!215 = !DILocalVariable(name: "dataBuffer", scope: !212, file: !3, line: 115, type: !64)
!216 = !DILocation(line: 115, column: 13, scope: !212)
!217 = !DILocation(line: 116, column: 12, scope: !212)
!218 = !DILocation(line: 116, column: 10, scope: !212)
!219 = !DILocation(line: 118, column: 12, scope: !212)
!220 = !DILocation(line: 118, column: 5, scope: !212)
!221 = !DILocation(line: 119, column: 68, scope: !212)
!222 = !DILocation(line: 119, column: 66, scope: !212)
!223 = !DILocation(line: 120, column: 5, scope: !212)
!224 = !DILocation(line: 121, column: 1, scope: !212)
!225 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 124, type: !21, scopeLine: 125, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!226 = !DILocalVariable(name: "data", scope: !225, file: !3, line: 126, type: !11)
!227 = !DILocation(line: 126, column: 15, scope: !225)
!228 = !DILocation(line: 126, column: 22, scope: !225)
!229 = !DILocalVariable(name: "i", scope: !230, file: !3, line: 128, type: !7)
!230 = distinct !DILexicalBlock(scope: !225, file: !3, line: 127, column: 5)
!231 = !DILocation(line: 128, column: 13, scope: !230)
!232 = !DILocalVariable(name: "n", scope: !230, file: !3, line: 128, type: !7)
!233 = !DILocation(line: 128, column: 16, scope: !230)
!234 = !DILocalVariable(name: "intVariable", scope: !230, file: !3, line: 128, type: !7)
!235 = !DILocation(line: 128, column: 19, scope: !230)
!236 = !DILocation(line: 129, column: 21, scope: !237)
!237 = distinct !DILexicalBlock(scope: !230, file: !3, line: 129, column: 13)
!238 = !DILocation(line: 129, column: 13, scope: !237)
!239 = !DILocation(line: 129, column: 38, scope: !237)
!240 = !DILocation(line: 129, column: 13, scope: !230)
!241 = !DILocation(line: 132, column: 17, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 132, column: 17)
!243 = distinct !DILexicalBlock(scope: !237, file: !3, line: 130, column: 9)
!244 = !DILocation(line: 132, column: 19, scope: !242)
!245 = !DILocation(line: 132, column: 17, scope: !243)
!246 = !DILocation(line: 134, column: 29, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !3, line: 133, column: 13)
!248 = !DILocation(line: 135, column: 24, scope: !249)
!249 = distinct !DILexicalBlock(scope: !247, file: !3, line: 135, column: 17)
!250 = !DILocation(line: 135, column: 22, scope: !249)
!251 = !DILocation(line: 135, column: 29, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !3, line: 135, column: 17)
!253 = !DILocation(line: 135, column: 33, scope: !252)
!254 = !DILocation(line: 135, column: 31, scope: !252)
!255 = !DILocation(line: 135, column: 17, scope: !249)
!256 = !DILocation(line: 138, column: 32, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !3, line: 136, column: 17)
!258 = !DILocation(line: 139, column: 17, scope: !257)
!259 = !DILocation(line: 135, column: 37, scope: !252)
!260 = !DILocation(line: 135, column: 17, scope: !252)
!261 = distinct !{!261, !255, !262, !55}
!262 = !DILocation(line: 139, column: 17, scope: !249)
!263 = !DILocation(line: 140, column: 30, scope: !247)
!264 = !DILocation(line: 140, column: 17, scope: !247)
!265 = !DILocation(line: 141, column: 13, scope: !247)
!266 = !DILocation(line: 142, column: 9, scope: !243)
!267 = !DILocation(line: 144, column: 1, scope: !225)
!268 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 146, type: !21, scopeLine: 147, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!269 = !DILocalVariable(name: "data", scope: !268, file: !3, line: 148, type: !11)
!270 = !DILocation(line: 148, column: 15, scope: !268)
!271 = !DILocalVariable(name: "dataBuffer", scope: !268, file: !3, line: 149, type: !64)
!272 = !DILocation(line: 149, column: 13, scope: !268)
!273 = !DILocation(line: 150, column: 12, scope: !268)
!274 = !DILocation(line: 150, column: 10, scope: !268)
!275 = !DILocalVariable(name: "dataLen", scope: !276, file: !3, line: 153, type: !72)
!276 = distinct !DILexicalBlock(scope: !268, file: !3, line: 151, column: 5)
!277 = !DILocation(line: 153, column: 16, scope: !276)
!278 = !DILocation(line: 153, column: 33, scope: !276)
!279 = !DILocation(line: 153, column: 26, scope: !276)
!280 = !DILocalVariable(name: "pFile", scope: !276, file: !3, line: 154, type: !78)
!281 = !DILocation(line: 154, column: 16, scope: !276)
!282 = !DILocation(line: 156, column: 17, scope: !283)
!283 = distinct !DILexicalBlock(scope: !276, file: !3, line: 156, column: 13)
!284 = !DILocation(line: 156, column: 16, scope: !283)
!285 = !DILocation(line: 156, column: 25, scope: !283)
!286 = !DILocation(line: 156, column: 13, scope: !276)
!287 = !DILocation(line: 158, column: 21, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !3, line: 157, column: 9)
!289 = !DILocation(line: 158, column: 19, scope: !288)
!290 = !DILocation(line: 159, column: 17, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !3, line: 159, column: 17)
!292 = !DILocation(line: 159, column: 23, scope: !291)
!293 = !DILocation(line: 159, column: 17, scope: !288)
!294 = !DILocation(line: 162, column: 28, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !3, line: 162, column: 21)
!296 = distinct !DILexicalBlock(scope: !291, file: !3, line: 160, column: 13)
!297 = !DILocation(line: 162, column: 33, scope: !295)
!298 = !DILocation(line: 162, column: 32, scope: !295)
!299 = !DILocation(line: 162, column: 52, scope: !295)
!300 = !DILocation(line: 162, column: 51, scope: !295)
!301 = !DILocation(line: 162, column: 42, scope: !295)
!302 = !DILocation(line: 162, column: 62, scope: !295)
!303 = !DILocation(line: 162, column: 21, scope: !295)
!304 = !DILocation(line: 162, column: 69, scope: !295)
!305 = !DILocation(line: 162, column: 21, scope: !296)
!306 = !DILocation(line: 164, column: 21, scope: !307)
!307 = distinct !DILexicalBlock(scope: !295, file: !3, line: 163, column: 17)
!308 = !DILocation(line: 166, column: 21, scope: !307)
!309 = !DILocation(line: 166, column: 26, scope: !307)
!310 = !DILocation(line: 166, column: 35, scope: !307)
!311 = !DILocation(line: 167, column: 17, scope: !307)
!312 = !DILocation(line: 168, column: 24, scope: !296)
!313 = !DILocation(line: 168, column: 17, scope: !296)
!314 = !DILocation(line: 169, column: 13, scope: !296)
!315 = !DILocation(line: 170, column: 9, scope: !288)
!316 = !DILocation(line: 172, column: 68, scope: !268)
!317 = !DILocation(line: 172, column: 66, scope: !268)
!318 = !DILocation(line: 173, column: 5, scope: !268)
!319 = !DILocation(line: 174, column: 1, scope: !268)
!320 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__wchar_t_file_45_good", scope: !3, file: !3, line: 176, type: !21, scopeLine: 177, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!321 = !DILocation(line: 178, column: 5, scope: !320)
!322 = !DILocation(line: 179, column: 5, scope: !320)
!323 = !DILocation(line: 180, column: 1, scope: !320)
