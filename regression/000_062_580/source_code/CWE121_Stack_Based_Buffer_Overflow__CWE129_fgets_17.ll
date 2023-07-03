; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad() #0 !dbg !9 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i7 = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !12, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %j, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 -1, i32* %data, align 4, !dbg !19
  store i32 0, i32* %i, align 4, !dbg !20
  br label %for.cond, !dbg !22

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !23
  %cmp = icmp slt i32 %0, 1, !dbg !25
  br i1 %cmp, label %for.body, label %for.end, !dbg !26

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !27, metadata !DIExpression()), !dbg !34
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !34
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !34
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !35
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !37
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !38
  %cmp1 = icmp ne i8* %call, null, !dbg !39
  br i1 %cmp1, label %if.then, label %if.else, !dbg !40

if.then:                                          ; preds = %for.body
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !41
  %call3 = call i32 @atoi(i8* %arraydecay2) #5, !dbg !43
  store i32 %call3, i32* %data, align 4, !dbg !44
  br label %if.end, !dbg !45

if.else:                                          ; preds = %for.body
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !46
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !48

for.inc:                                          ; preds = %if.end
  %3 = load i32, i32* %i, align 4, !dbg !49
  %inc = add nsw i32 %3, 1, !dbg !49
  store i32 %inc, i32* %i, align 4, !dbg !49
  br label %for.cond, !dbg !50, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !54
  br label %for.cond4, !dbg !56

for.cond4:                                        ; preds = %for.inc20, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !57
  %cmp5 = icmp slt i32 %4, 1, !dbg !59
  br i1 %cmp5, label %for.body6, label %for.end22, !dbg !60

for.body6:                                        ; preds = %for.cond4
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !61, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !65, metadata !DIExpression()), !dbg !69
  %5 = bitcast [10 x i32]* %buffer to i8*, !dbg !69
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !69
  %6 = load i32, i32* %data, align 4, !dbg !70
  %cmp8 = icmp sge i32 %6, 0, !dbg !72
  br i1 %cmp8, label %if.then9, label %if.else18, !dbg !73

if.then9:                                         ; preds = %for.body6
  %7 = load i32, i32* %data, align 4, !dbg !74
  %idxprom = sext i32 %7 to i64, !dbg !76
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !76
  store i32 1, i32* %arrayidx, align 4, !dbg !77
  store i32 0, i32* %i7, align 4, !dbg !78
  br label %for.cond10, !dbg !80

for.cond10:                                       ; preds = %for.inc15, %if.then9
  %8 = load i32, i32* %i7, align 4, !dbg !81
  %cmp11 = icmp slt i32 %8, 10, !dbg !83
  br i1 %cmp11, label %for.body12, label %for.end17, !dbg !84

for.body12:                                       ; preds = %for.cond10
  %9 = load i32, i32* %i7, align 4, !dbg !85
  %idxprom13 = sext i32 %9 to i64, !dbg !87
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom13, !dbg !87
  %10 = load i32, i32* %arrayidx14, align 4, !dbg !87
  call void @printIntLine(i32 %10), !dbg !88
  br label %for.inc15, !dbg !89

for.inc15:                                        ; preds = %for.body12
  %11 = load i32, i32* %i7, align 4, !dbg !90
  %inc16 = add nsw i32 %11, 1, !dbg !90
  store i32 %inc16, i32* %i7, align 4, !dbg !90
  br label %for.cond10, !dbg !91, !llvm.loop !92

for.end17:                                        ; preds = %for.cond10
  br label %if.end19, !dbg !94

if.else18:                                        ; preds = %for.body6
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !95
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %for.end17
  br label %for.inc20, !dbg !97

for.inc20:                                        ; preds = %if.end19
  %12 = load i32, i32* %j, align 4, !dbg !98
  %inc21 = add nsw i32 %12, 1, !dbg !98
  store i32 %inc21, i32* %j, align 4, !dbg !98
  br label %for.cond4, !dbg !99, !llvm.loop !100

for.end22:                                        ; preds = %for.cond4
  ret void, !dbg !102
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

declare dso_local void @printLine(i8*) #3

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !103 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i7 = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %k, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %data, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 -1, i32* %data, align 4, !dbg !110
  store i32 0, i32* %i, align 4, !dbg !111
  br label %for.cond, !dbg !113

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !114
  %cmp = icmp slt i32 %0, 1, !dbg !116
  br i1 %cmp, label %for.body, label %for.end, !dbg !117

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !118, metadata !DIExpression()), !dbg !121
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !121
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !121
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !122
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !124
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !125
  %cmp1 = icmp ne i8* %call, null, !dbg !126
  br i1 %cmp1, label %if.then, label %if.else, !dbg !127

if.then:                                          ; preds = %for.body
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !128
  %call3 = call i32 @atoi(i8* %arraydecay2) #5, !dbg !130
  store i32 %call3, i32* %data, align 4, !dbg !131
  br label %if.end, !dbg !132

if.else:                                          ; preds = %for.body
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !133
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !135

for.inc:                                          ; preds = %if.end
  %3 = load i32, i32* %i, align 4, !dbg !136
  %inc = add nsw i32 %3, 1, !dbg !136
  store i32 %inc, i32* %i, align 4, !dbg !136
  br label %for.cond, !dbg !137, !llvm.loop !138

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !140
  br label %for.cond4, !dbg !142

for.cond4:                                        ; preds = %for.inc21, %for.end
  %4 = load i32, i32* %k, align 4, !dbg !143
  %cmp5 = icmp slt i32 %4, 1, !dbg !145
  br i1 %cmp5, label %for.body6, label %for.end23, !dbg !146

for.body6:                                        ; preds = %for.cond4
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !147, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !151, metadata !DIExpression()), !dbg !152
  %5 = bitcast [10 x i32]* %buffer to i8*, !dbg !152
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !152
  %6 = load i32, i32* %data, align 4, !dbg !153
  %cmp8 = icmp sge i32 %6, 0, !dbg !155
  br i1 %cmp8, label %land.lhs.true, label %if.else19, !dbg !156

land.lhs.true:                                    ; preds = %for.body6
  %7 = load i32, i32* %data, align 4, !dbg !157
  %cmp9 = icmp slt i32 %7, 10, !dbg !158
  br i1 %cmp9, label %if.then10, label %if.else19, !dbg !159

if.then10:                                        ; preds = %land.lhs.true
  %8 = load i32, i32* %data, align 4, !dbg !160
  %idxprom = sext i32 %8 to i64, !dbg !162
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !162
  store i32 1, i32* %arrayidx, align 4, !dbg !163
  store i32 0, i32* %i7, align 4, !dbg !164
  br label %for.cond11, !dbg !166

for.cond11:                                       ; preds = %for.inc16, %if.then10
  %9 = load i32, i32* %i7, align 4, !dbg !167
  %cmp12 = icmp slt i32 %9, 10, !dbg !169
  br i1 %cmp12, label %for.body13, label %for.end18, !dbg !170

for.body13:                                       ; preds = %for.cond11
  %10 = load i32, i32* %i7, align 4, !dbg !171
  %idxprom14 = sext i32 %10 to i64, !dbg !173
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom14, !dbg !173
  %11 = load i32, i32* %arrayidx15, align 4, !dbg !173
  call void @printIntLine(i32 %11), !dbg !174
  br label %for.inc16, !dbg !175

for.inc16:                                        ; preds = %for.body13
  %12 = load i32, i32* %i7, align 4, !dbg !176
  %inc17 = add nsw i32 %12, 1, !dbg !176
  store i32 %inc17, i32* %i7, align 4, !dbg !176
  br label %for.cond11, !dbg !177, !llvm.loop !178

for.end18:                                        ; preds = %for.cond11
  br label %if.end20, !dbg !180

if.else19:                                        ; preds = %land.lhs.true, %for.body6
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !181
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %for.end18
  br label %for.inc21, !dbg !183

for.inc21:                                        ; preds = %if.end20
  %13 = load i32, i32* %k, align 4, !dbg !184
  %inc22 = add nsw i32 %13, 1, !dbg !184
  store i32 %inc22, i32* %k, align 4, !dbg !184
  br label %for.cond4, !dbg !185, !llvm.loop !186

for.end23:                                        ; preds = %for.cond4
  ret void, !dbg !188
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !189 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %h, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %j, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata i32* %data, metadata !194, metadata !DIExpression()), !dbg !195
  store i32 -1, i32* %data, align 4, !dbg !196
  store i32 0, i32* %h, align 4, !dbg !197
  br label %for.cond, !dbg !199

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %h, align 4, !dbg !200
  %cmp = icmp slt i32 %0, 1, !dbg !202
  br i1 %cmp, label %for.body, label %for.end, !dbg !203

for.body:                                         ; preds = %for.cond
  store i32 7, i32* %data, align 4, !dbg !204
  br label %for.inc, !dbg !206

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %h, align 4, !dbg !207
  %inc = add nsw i32 %1, 1, !dbg !207
  store i32 %inc, i32* %h, align 4, !dbg !207
  br label %for.cond, !dbg !208, !llvm.loop !209

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !211
  br label %for.cond1, !dbg !213

for.cond1:                                        ; preds = %for.inc13, %for.end
  %2 = load i32, i32* %j, align 4, !dbg !214
  %cmp2 = icmp slt i32 %2, 1, !dbg !216
  br i1 %cmp2, label %for.body3, label %for.end15, !dbg !217

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !218, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !222, metadata !DIExpression()), !dbg !223
  %3 = bitcast [10 x i32]* %buffer to i8*, !dbg !223
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !223
  %4 = load i32, i32* %data, align 4, !dbg !224
  %cmp4 = icmp sge i32 %4, 0, !dbg !226
  br i1 %cmp4, label %if.then, label %if.else, !dbg !227

if.then:                                          ; preds = %for.body3
  %5 = load i32, i32* %data, align 4, !dbg !228
  %idxprom = sext i32 %5 to i64, !dbg !230
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !230
  store i32 1, i32* %arrayidx, align 4, !dbg !231
  store i32 0, i32* %i, align 4, !dbg !232
  br label %for.cond5, !dbg !234

for.cond5:                                        ; preds = %for.inc10, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !235
  %cmp6 = icmp slt i32 %6, 10, !dbg !237
  br i1 %cmp6, label %for.body7, label %for.end12, !dbg !238

for.body7:                                        ; preds = %for.cond5
  %7 = load i32, i32* %i, align 4, !dbg !239
  %idxprom8 = sext i32 %7 to i64, !dbg !241
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom8, !dbg !241
  %8 = load i32, i32* %arrayidx9, align 4, !dbg !241
  call void @printIntLine(i32 %8), !dbg !242
  br label %for.inc10, !dbg !243

for.inc10:                                        ; preds = %for.body7
  %9 = load i32, i32* %i, align 4, !dbg !244
  %inc11 = add nsw i32 %9, 1, !dbg !244
  store i32 %inc11, i32* %i, align 4, !dbg !244
  br label %for.cond5, !dbg !245, !llvm.loop !246

for.end12:                                        ; preds = %for.cond5
  br label %if.end, !dbg !248

if.else:                                          ; preds = %for.body3
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !249
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end12
  br label %for.inc13, !dbg !251

for.inc13:                                        ; preds = %if.end
  %10 = load i32, i32* %j, align 4, !dbg !252
  %inc14 = add nsw i32 %10, 1, !dbg !252
  store i32 %inc14, i32* %j, align 4, !dbg !252
  br label %for.cond1, !dbg !253, !llvm.loop !254

for.end15:                                        ; preds = %for.cond1
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_good() #0 !dbg !257 {
entry:
  call void @goodB2G(), !dbg !258
  call void @goodG2B(), !dbg !259
  ret void, !dbg !260
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_580/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad", scope: !1, file: !1, line: 25, type: !10, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 27, type: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 27, column: 9, scope: !9)
!15 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 27, type: !13)
!16 = !DILocation(line: 27, column: 11, scope: !9)
!17 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 28, type: !13)
!18 = !DILocation(line: 28, column: 9, scope: !9)
!19 = !DILocation(line: 30, column: 10, scope: !9)
!20 = !DILocation(line: 31, column: 11, scope: !21)
!21 = distinct !DILexicalBlock(scope: !9, file: !1, line: 31, column: 5)
!22 = !DILocation(line: 31, column: 9, scope: !21)
!23 = !DILocation(line: 31, column: 16, scope: !24)
!24 = distinct !DILexicalBlock(scope: !21, file: !1, line: 31, column: 5)
!25 = !DILocation(line: 31, column: 18, scope: !24)
!26 = !DILocation(line: 31, column: 5, scope: !21)
!27 = !DILocalVariable(name: "inputBuffer", scope: !28, file: !1, line: 34, type: !30)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 33, column: 9)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 32, column: 5)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 112, elements: !32)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !{!33}
!33 = !DISubrange(count: 14)
!34 = !DILocation(line: 34, column: 18, scope: !28)
!35 = !DILocation(line: 36, column: 23, scope: !36)
!36 = distinct !DILexicalBlock(scope: !28, file: !1, line: 36, column: 17)
!37 = !DILocation(line: 36, column: 53, scope: !36)
!38 = !DILocation(line: 36, column: 17, scope: !36)
!39 = !DILocation(line: 36, column: 60, scope: !36)
!40 = !DILocation(line: 36, column: 17, scope: !28)
!41 = !DILocation(line: 39, column: 29, scope: !42)
!42 = distinct !DILexicalBlock(scope: !36, file: !1, line: 37, column: 13)
!43 = !DILocation(line: 39, column: 24, scope: !42)
!44 = !DILocation(line: 39, column: 22, scope: !42)
!45 = !DILocation(line: 40, column: 13, scope: !42)
!46 = !DILocation(line: 43, column: 17, scope: !47)
!47 = distinct !DILexicalBlock(scope: !36, file: !1, line: 42, column: 13)
!48 = !DILocation(line: 46, column: 5, scope: !29)
!49 = !DILocation(line: 31, column: 24, scope: !24)
!50 = !DILocation(line: 31, column: 5, scope: !24)
!51 = distinct !{!51, !26, !52, !53}
!52 = !DILocation(line: 46, column: 5, scope: !21)
!53 = !{!"llvm.loop.mustprogress"}
!54 = !DILocation(line: 47, column: 11, scope: !55)
!55 = distinct !DILexicalBlock(scope: !9, file: !1, line: 47, column: 5)
!56 = !DILocation(line: 47, column: 9, scope: !55)
!57 = !DILocation(line: 47, column: 16, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 47, column: 5)
!59 = !DILocation(line: 47, column: 18, scope: !58)
!60 = !DILocation(line: 47, column: 5, scope: !55)
!61 = !DILocalVariable(name: "i", scope: !62, file: !1, line: 50, type: !13)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 49, column: 9)
!63 = distinct !DILexicalBlock(scope: !58, file: !1, line: 48, column: 5)
!64 = !DILocation(line: 50, column: 17, scope: !62)
!65 = !DILocalVariable(name: "buffer", scope: !62, file: !1, line: 51, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 10)
!69 = !DILocation(line: 51, column: 17, scope: !62)
!70 = !DILocation(line: 54, column: 17, scope: !71)
!71 = distinct !DILexicalBlock(scope: !62, file: !1, line: 54, column: 17)
!72 = !DILocation(line: 54, column: 22, scope: !71)
!73 = !DILocation(line: 54, column: 17, scope: !62)
!74 = !DILocation(line: 56, column: 24, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 55, column: 13)
!76 = !DILocation(line: 56, column: 17, scope: !75)
!77 = !DILocation(line: 56, column: 30, scope: !75)
!78 = !DILocation(line: 58, column: 23, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 58, column: 17)
!80 = !DILocation(line: 58, column: 21, scope: !79)
!81 = !DILocation(line: 58, column: 28, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 58, column: 17)
!83 = !DILocation(line: 58, column: 30, scope: !82)
!84 = !DILocation(line: 58, column: 17, scope: !79)
!85 = !DILocation(line: 60, column: 41, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 59, column: 17)
!87 = !DILocation(line: 60, column: 34, scope: !86)
!88 = !DILocation(line: 60, column: 21, scope: !86)
!89 = !DILocation(line: 61, column: 17, scope: !86)
!90 = !DILocation(line: 58, column: 37, scope: !82)
!91 = !DILocation(line: 58, column: 17, scope: !82)
!92 = distinct !{!92, !84, !93, !53}
!93 = !DILocation(line: 61, column: 17, scope: !79)
!94 = !DILocation(line: 62, column: 13, scope: !75)
!95 = !DILocation(line: 65, column: 17, scope: !96)
!96 = distinct !DILexicalBlock(scope: !71, file: !1, line: 64, column: 13)
!97 = !DILocation(line: 68, column: 5, scope: !63)
!98 = !DILocation(line: 47, column: 24, scope: !58)
!99 = !DILocation(line: 47, column: 5, scope: !58)
!100 = distinct !{!100, !60, !101, !53}
!101 = !DILocation(line: 68, column: 5, scope: !55)
!102 = !DILocation(line: 69, column: 1, scope: !9)
!103 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 76, type: !10, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!104 = !DILocalVariable(name: "i", scope: !103, file: !1, line: 78, type: !13)
!105 = !DILocation(line: 78, column: 9, scope: !103)
!106 = !DILocalVariable(name: "k", scope: !103, file: !1, line: 78, type: !13)
!107 = !DILocation(line: 78, column: 11, scope: !103)
!108 = !DILocalVariable(name: "data", scope: !103, file: !1, line: 79, type: !13)
!109 = !DILocation(line: 79, column: 9, scope: !103)
!110 = !DILocation(line: 81, column: 10, scope: !103)
!111 = !DILocation(line: 82, column: 11, scope: !112)
!112 = distinct !DILexicalBlock(scope: !103, file: !1, line: 82, column: 5)
!113 = !DILocation(line: 82, column: 9, scope: !112)
!114 = !DILocation(line: 82, column: 16, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 82, column: 5)
!116 = !DILocation(line: 82, column: 18, scope: !115)
!117 = !DILocation(line: 82, column: 5, scope: !112)
!118 = !DILocalVariable(name: "inputBuffer", scope: !119, file: !1, line: 85, type: !30)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 84, column: 9)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 83, column: 5)
!121 = !DILocation(line: 85, column: 18, scope: !119)
!122 = !DILocation(line: 87, column: 23, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 87, column: 17)
!124 = !DILocation(line: 87, column: 53, scope: !123)
!125 = !DILocation(line: 87, column: 17, scope: !123)
!126 = !DILocation(line: 87, column: 60, scope: !123)
!127 = !DILocation(line: 87, column: 17, scope: !119)
!128 = !DILocation(line: 90, column: 29, scope: !129)
!129 = distinct !DILexicalBlock(scope: !123, file: !1, line: 88, column: 13)
!130 = !DILocation(line: 90, column: 24, scope: !129)
!131 = !DILocation(line: 90, column: 22, scope: !129)
!132 = !DILocation(line: 91, column: 13, scope: !129)
!133 = !DILocation(line: 94, column: 17, scope: !134)
!134 = distinct !DILexicalBlock(scope: !123, file: !1, line: 93, column: 13)
!135 = !DILocation(line: 97, column: 5, scope: !120)
!136 = !DILocation(line: 82, column: 24, scope: !115)
!137 = !DILocation(line: 82, column: 5, scope: !115)
!138 = distinct !{!138, !117, !139, !53}
!139 = !DILocation(line: 97, column: 5, scope: !112)
!140 = !DILocation(line: 98, column: 11, scope: !141)
!141 = distinct !DILexicalBlock(scope: !103, file: !1, line: 98, column: 5)
!142 = !DILocation(line: 98, column: 9, scope: !141)
!143 = !DILocation(line: 98, column: 16, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !1, line: 98, column: 5)
!145 = !DILocation(line: 98, column: 18, scope: !144)
!146 = !DILocation(line: 98, column: 5, scope: !141)
!147 = !DILocalVariable(name: "i", scope: !148, file: !1, line: 101, type: !13)
!148 = distinct !DILexicalBlock(scope: !149, file: !1, line: 100, column: 9)
!149 = distinct !DILexicalBlock(scope: !144, file: !1, line: 99, column: 5)
!150 = !DILocation(line: 101, column: 17, scope: !148)
!151 = !DILocalVariable(name: "buffer", scope: !148, file: !1, line: 102, type: !66)
!152 = !DILocation(line: 102, column: 17, scope: !148)
!153 = !DILocation(line: 104, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !148, file: !1, line: 104, column: 17)
!155 = !DILocation(line: 104, column: 22, scope: !154)
!156 = !DILocation(line: 104, column: 27, scope: !154)
!157 = !DILocation(line: 104, column: 30, scope: !154)
!158 = !DILocation(line: 104, column: 35, scope: !154)
!159 = !DILocation(line: 104, column: 17, scope: !148)
!160 = !DILocation(line: 106, column: 24, scope: !161)
!161 = distinct !DILexicalBlock(scope: !154, file: !1, line: 105, column: 13)
!162 = !DILocation(line: 106, column: 17, scope: !161)
!163 = !DILocation(line: 106, column: 30, scope: !161)
!164 = !DILocation(line: 108, column: 23, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 108, column: 17)
!166 = !DILocation(line: 108, column: 21, scope: !165)
!167 = !DILocation(line: 108, column: 28, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !1, line: 108, column: 17)
!169 = !DILocation(line: 108, column: 30, scope: !168)
!170 = !DILocation(line: 108, column: 17, scope: !165)
!171 = !DILocation(line: 110, column: 41, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !1, line: 109, column: 17)
!173 = !DILocation(line: 110, column: 34, scope: !172)
!174 = !DILocation(line: 110, column: 21, scope: !172)
!175 = !DILocation(line: 111, column: 17, scope: !172)
!176 = !DILocation(line: 108, column: 37, scope: !168)
!177 = !DILocation(line: 108, column: 17, scope: !168)
!178 = distinct !{!178, !170, !179, !53}
!179 = !DILocation(line: 111, column: 17, scope: !165)
!180 = !DILocation(line: 112, column: 13, scope: !161)
!181 = !DILocation(line: 115, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !154, file: !1, line: 114, column: 13)
!183 = !DILocation(line: 118, column: 5, scope: !149)
!184 = !DILocation(line: 98, column: 24, scope: !144)
!185 = !DILocation(line: 98, column: 5, scope: !144)
!186 = distinct !{!186, !146, !187, !53}
!187 = !DILocation(line: 118, column: 5, scope: !141)
!188 = !DILocation(line: 119, column: 1, scope: !103)
!189 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 122, type: !10, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!190 = !DILocalVariable(name: "h", scope: !189, file: !1, line: 124, type: !13)
!191 = !DILocation(line: 124, column: 9, scope: !189)
!192 = !DILocalVariable(name: "j", scope: !189, file: !1, line: 124, type: !13)
!193 = !DILocation(line: 124, column: 11, scope: !189)
!194 = !DILocalVariable(name: "data", scope: !189, file: !1, line: 125, type: !13)
!195 = !DILocation(line: 125, column: 9, scope: !189)
!196 = !DILocation(line: 127, column: 10, scope: !189)
!197 = !DILocation(line: 128, column: 11, scope: !198)
!198 = distinct !DILexicalBlock(scope: !189, file: !1, line: 128, column: 5)
!199 = !DILocation(line: 128, column: 9, scope: !198)
!200 = !DILocation(line: 128, column: 16, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !1, line: 128, column: 5)
!202 = !DILocation(line: 128, column: 18, scope: !201)
!203 = !DILocation(line: 128, column: 5, scope: !198)
!204 = !DILocation(line: 132, column: 14, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !1, line: 129, column: 5)
!206 = !DILocation(line: 133, column: 5, scope: !205)
!207 = !DILocation(line: 128, column: 24, scope: !201)
!208 = !DILocation(line: 128, column: 5, scope: !201)
!209 = distinct !{!209, !203, !210, !53}
!210 = !DILocation(line: 133, column: 5, scope: !198)
!211 = !DILocation(line: 134, column: 11, scope: !212)
!212 = distinct !DILexicalBlock(scope: !189, file: !1, line: 134, column: 5)
!213 = !DILocation(line: 134, column: 9, scope: !212)
!214 = !DILocation(line: 134, column: 16, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !1, line: 134, column: 5)
!216 = !DILocation(line: 134, column: 18, scope: !215)
!217 = !DILocation(line: 134, column: 5, scope: !212)
!218 = !DILocalVariable(name: "i", scope: !219, file: !1, line: 137, type: !13)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 136, column: 9)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 135, column: 5)
!221 = !DILocation(line: 137, column: 17, scope: !219)
!222 = !DILocalVariable(name: "buffer", scope: !219, file: !1, line: 138, type: !66)
!223 = !DILocation(line: 138, column: 17, scope: !219)
!224 = !DILocation(line: 141, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !219, file: !1, line: 141, column: 17)
!226 = !DILocation(line: 141, column: 22, scope: !225)
!227 = !DILocation(line: 141, column: 17, scope: !219)
!228 = !DILocation(line: 143, column: 24, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !1, line: 142, column: 13)
!230 = !DILocation(line: 143, column: 17, scope: !229)
!231 = !DILocation(line: 143, column: 30, scope: !229)
!232 = !DILocation(line: 145, column: 23, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !1, line: 145, column: 17)
!234 = !DILocation(line: 145, column: 21, scope: !233)
!235 = !DILocation(line: 145, column: 28, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !1, line: 145, column: 17)
!237 = !DILocation(line: 145, column: 30, scope: !236)
!238 = !DILocation(line: 145, column: 17, scope: !233)
!239 = !DILocation(line: 147, column: 41, scope: !240)
!240 = distinct !DILexicalBlock(scope: !236, file: !1, line: 146, column: 17)
!241 = !DILocation(line: 147, column: 34, scope: !240)
!242 = !DILocation(line: 147, column: 21, scope: !240)
!243 = !DILocation(line: 148, column: 17, scope: !240)
!244 = !DILocation(line: 145, column: 37, scope: !236)
!245 = !DILocation(line: 145, column: 17, scope: !236)
!246 = distinct !{!246, !238, !247, !53}
!247 = !DILocation(line: 148, column: 17, scope: !233)
!248 = !DILocation(line: 149, column: 13, scope: !229)
!249 = !DILocation(line: 152, column: 17, scope: !250)
!250 = distinct !DILexicalBlock(scope: !225, file: !1, line: 151, column: 13)
!251 = !DILocation(line: 155, column: 5, scope: !220)
!252 = !DILocation(line: 134, column: 24, scope: !215)
!253 = !DILocation(line: 134, column: 5, scope: !215)
!254 = distinct !{!254, !217, !255, !53}
!255 = !DILocation(line: 155, column: 5, scope: !212)
!256 = !DILocation(line: 156, column: 1, scope: !189)
!257 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_good", scope: !1, file: !1, line: 158, type: !10, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!258 = !DILocation(line: 160, column: 5, scope: !257)
!259 = !DILocation(line: 161, column: 5, scope: !257)
!260 = !DILocation(line: 162, column: 1, scope: !257)
