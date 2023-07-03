; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_17.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_17_bad() #0 !dbg !9 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i8 = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !12, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %j, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !17, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %data, align 8, !dbg !27
  store i32 0, i32* %i, align 4, !dbg !28
  br label %for.cond, !dbg !30

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !31
  %cmp = icmp slt i32 %1, 1, !dbg !33
  br i1 %cmp, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !35, metadata !DIExpression()), !dbg !41
  %2 = load i8*, i8** %data, align 8, !dbg !42
  %call = call i64 @strlen(i8* %2) #6, !dbg !43
  store i64 %call, i64* %dataLen, align 8, !dbg !41
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !44, metadata !DIExpression()), !dbg !45
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !46
  store i8* %call1, i8** %environment, align 8, !dbg !45
  %3 = load i8*, i8** %environment, align 8, !dbg !47
  %cmp2 = icmp ne i8* %3, null, !dbg !49
  br i1 %cmp2, label %if.then, label %if.end, !dbg !50

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %data, align 8, !dbg !51
  %5 = load i64, i64* %dataLen, align 8, !dbg !53
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !54
  %6 = load i8*, i8** %environment, align 8, !dbg !55
  %7 = load i64, i64* %dataLen, align 8, !dbg !56
  %sub = sub i64 100, %7, !dbg !57
  %sub3 = sub i64 %sub, 1, !dbg !58
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !59
  br label %if.end, !dbg !60

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !61

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !62
  %inc = add nsw i32 %8, 1, !dbg !62
  store i32 %inc, i32* %i, align 4, !dbg !62
  br label %for.cond, !dbg !63, !llvm.loop !64

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !67
  br label %for.cond5, !dbg !69

for.cond5:                                        ; preds = %for.inc20, %for.end
  %9 = load i32, i32* %j, align 4, !dbg !70
  %cmp6 = icmp slt i32 %9, 1, !dbg !72
  br i1 %cmp6, label %for.body7, label %for.end22, !dbg !73

for.body7:                                        ; preds = %for.cond5
  call void @llvm.dbg.declare(metadata i32* %i8, metadata !74, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %n, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !80, metadata !DIExpression()), !dbg !81
  %10 = load i8*, i8** %data, align 8, !dbg !82
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !84
  %cmp10 = icmp eq i32 %call9, 1, !dbg !85
  br i1 %cmp10, label %if.then11, label %if.end19, !dbg !86

if.then11:                                        ; preds = %for.body7
  store i32 0, i32* %intVariable, align 4, !dbg !87
  store i32 0, i32* %i8, align 4, !dbg !89
  br label %for.cond12, !dbg !91

for.cond12:                                       ; preds = %for.inc16, %if.then11
  %11 = load i32, i32* %i8, align 4, !dbg !92
  %12 = load i32, i32* %n, align 4, !dbg !94
  %cmp13 = icmp slt i32 %11, %12, !dbg !95
  br i1 %cmp13, label %for.body14, label %for.end18, !dbg !96

for.body14:                                       ; preds = %for.cond12
  %13 = load i32, i32* %intVariable, align 4, !dbg !97
  %inc15 = add nsw i32 %13, 1, !dbg !97
  store i32 %inc15, i32* %intVariable, align 4, !dbg !97
  br label %for.inc16, !dbg !99

for.inc16:                                        ; preds = %for.body14
  %14 = load i32, i32* %i8, align 4, !dbg !100
  %inc17 = add nsw i32 %14, 1, !dbg !100
  store i32 %inc17, i32* %i8, align 4, !dbg !100
  br label %for.cond12, !dbg !101, !llvm.loop !102

for.end18:                                        ; preds = %for.cond12
  %15 = load i32, i32* %intVariable, align 4, !dbg !104
  call void @printIntLine(i32 %15), !dbg !105
  br label %if.end19, !dbg !106

if.end19:                                         ; preds = %for.end18, %for.body7
  br label %for.inc20, !dbg !107

for.inc20:                                        ; preds = %if.end19
  %16 = load i32, i32* %j, align 4, !dbg !108
  %inc21 = add nsw i32 %16, 1, !dbg !108
  store i32 %inc21, i32* %j, align 4, !dbg !108
  br label %for.cond5, !dbg !109, !llvm.loop !110

for.end22:                                        ; preds = %for.cond5
  ret void, !dbg !112
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !113 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i8 = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %k, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i8** %data, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !120, metadata !DIExpression()), !dbg !121
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !121
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !121
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !122
  store i8* %arraydecay, i8** %data, align 8, !dbg !123
  store i32 0, i32* %i, align 4, !dbg !124
  br label %for.cond, !dbg !126

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !127
  %cmp = icmp slt i32 %1, 1, !dbg !129
  br i1 %cmp, label %for.body, label %for.end, !dbg !130

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !131, metadata !DIExpression()), !dbg !134
  %2 = load i8*, i8** %data, align 8, !dbg !135
  %call = call i64 @strlen(i8* %2) #6, !dbg !136
  store i64 %call, i64* %dataLen, align 8, !dbg !134
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !137, metadata !DIExpression()), !dbg !138
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !139
  store i8* %call1, i8** %environment, align 8, !dbg !138
  %3 = load i8*, i8** %environment, align 8, !dbg !140
  %cmp2 = icmp ne i8* %3, null, !dbg !142
  br i1 %cmp2, label %if.then, label %if.end, !dbg !143

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %data, align 8, !dbg !144
  %5 = load i64, i64* %dataLen, align 8, !dbg !146
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !147
  %6 = load i8*, i8** %environment, align 8, !dbg !148
  %7 = load i64, i64* %dataLen, align 8, !dbg !149
  %sub = sub i64 100, %7, !dbg !150
  %sub3 = sub i64 %sub, 1, !dbg !151
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !152
  br label %if.end, !dbg !153

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !154

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !155
  %inc = add nsw i32 %8, 1, !dbg !155
  store i32 %inc, i32* %i, align 4, !dbg !155
  br label %for.cond, !dbg !156, !llvm.loop !157

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !159
  br label %for.cond5, !dbg !161

for.cond5:                                        ; preds = %for.inc23, %for.end
  %9 = load i32, i32* %k, align 4, !dbg !162
  %cmp6 = icmp slt i32 %9, 1, !dbg !164
  br i1 %cmp6, label %for.body7, label %for.end25, !dbg !165

for.body7:                                        ; preds = %for.cond5
  call void @llvm.dbg.declare(metadata i32* %i8, metadata !166, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i32* %n, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !172, metadata !DIExpression()), !dbg !173
  %10 = load i8*, i8** %data, align 8, !dbg !174
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !176
  %cmp10 = icmp eq i32 %call9, 1, !dbg !177
  br i1 %cmp10, label %if.then11, label %if.end22, !dbg !178

if.then11:                                        ; preds = %for.body7
  %11 = load i32, i32* %n, align 4, !dbg !179
  %cmp12 = icmp slt i32 %11, 10000, !dbg !182
  br i1 %cmp12, label %if.then13, label %if.end21, !dbg !183

if.then13:                                        ; preds = %if.then11
  store i32 0, i32* %intVariable, align 4, !dbg !184
  store i32 0, i32* %i8, align 4, !dbg !186
  br label %for.cond14, !dbg !188

for.cond14:                                       ; preds = %for.inc18, %if.then13
  %12 = load i32, i32* %i8, align 4, !dbg !189
  %13 = load i32, i32* %n, align 4, !dbg !191
  %cmp15 = icmp slt i32 %12, %13, !dbg !192
  br i1 %cmp15, label %for.body16, label %for.end20, !dbg !193

for.body16:                                       ; preds = %for.cond14
  %14 = load i32, i32* %intVariable, align 4, !dbg !194
  %inc17 = add nsw i32 %14, 1, !dbg !194
  store i32 %inc17, i32* %intVariable, align 4, !dbg !194
  br label %for.inc18, !dbg !196

for.inc18:                                        ; preds = %for.body16
  %15 = load i32, i32* %i8, align 4, !dbg !197
  %inc19 = add nsw i32 %15, 1, !dbg !197
  store i32 %inc19, i32* %i8, align 4, !dbg !197
  br label %for.cond14, !dbg !198, !llvm.loop !199

for.end20:                                        ; preds = %for.cond14
  %16 = load i32, i32* %intVariable, align 4, !dbg !201
  call void @printIntLine(i32 %16), !dbg !202
  br label %if.end21, !dbg !203

if.end21:                                         ; preds = %for.end20, %if.then11
  br label %if.end22, !dbg !204

if.end22:                                         ; preds = %if.end21, %for.body7
  br label %for.inc23, !dbg !205

for.inc23:                                        ; preds = %if.end22
  %17 = load i32, i32* %k, align 4, !dbg !206
  %inc24 = add nsw i32 %17, 1, !dbg !206
  store i32 %inc24, i32* %k, align 4, !dbg !206
  br label %for.cond5, !dbg !207, !llvm.loop !208

for.end25:                                        ; preds = %for.cond5
  ret void, !dbg !210
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !211 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %h, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %j, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i8** %data, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !219
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !219
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !220
  store i8* %arraydecay, i8** %data, align 8, !dbg !221
  store i32 0, i32* %h, align 4, !dbg !222
  br label %for.cond, !dbg !224

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %h, align 4, !dbg !225
  %cmp = icmp slt i32 %1, 1, !dbg !227
  br i1 %cmp, label %for.body, label %for.end, !dbg !228

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data, align 8, !dbg !229
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !231
  br label %for.inc, !dbg !232

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %h, align 4, !dbg !233
  %inc = add nsw i32 %3, 1, !dbg !233
  store i32 %inc, i32* %h, align 4, !dbg !233
  br label %for.cond, !dbg !234, !llvm.loop !235

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !237
  br label %for.cond1, !dbg !239

for.cond1:                                        ; preds = %for.inc13, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !240
  %cmp2 = icmp slt i32 %4, 1, !dbg !242
  br i1 %cmp2, label %for.body3, label %for.end15, !dbg !243

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !244, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata i32* %n, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !250, metadata !DIExpression()), !dbg !251
  %5 = load i8*, i8** %data, align 8, !dbg !252
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !254
  %cmp5 = icmp eq i32 %call4, 1, !dbg !255
  br i1 %cmp5, label %if.then, label %if.end, !dbg !256

if.then:                                          ; preds = %for.body3
  store i32 0, i32* %intVariable, align 4, !dbg !257
  store i32 0, i32* %i, align 4, !dbg !259
  br label %for.cond6, !dbg !261

for.cond6:                                        ; preds = %for.inc10, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !262
  %7 = load i32, i32* %n, align 4, !dbg !264
  %cmp7 = icmp slt i32 %6, %7, !dbg !265
  br i1 %cmp7, label %for.body8, label %for.end12, !dbg !266

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, i32* %intVariable, align 4, !dbg !267
  %inc9 = add nsw i32 %8, 1, !dbg !267
  store i32 %inc9, i32* %intVariable, align 4, !dbg !267
  br label %for.inc10, !dbg !269

for.inc10:                                        ; preds = %for.body8
  %9 = load i32, i32* %i, align 4, !dbg !270
  %inc11 = add nsw i32 %9, 1, !dbg !270
  store i32 %inc11, i32* %i, align 4, !dbg !270
  br label %for.cond6, !dbg !271, !llvm.loop !272

for.end12:                                        ; preds = %for.cond6
  %10 = load i32, i32* %intVariable, align 4, !dbg !274
  call void @printIntLine(i32 %10), !dbg !275
  br label %if.end, !dbg !276

if.end:                                           ; preds = %for.end12, %for.body3
  br label %for.inc13, !dbg !277

for.inc13:                                        ; preds = %if.end
  %11 = load i32, i32* %j, align 4, !dbg !278
  %inc14 = add nsw i32 %11, 1, !dbg !278
  store i32 %inc14, i32* %j, align 4, !dbg !278
  br label %for.cond1, !dbg !279, !llvm.loop !280

for.end15:                                        ; preds = %for.cond1
  ret void, !dbg !282
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_17_good() #0 !dbg !283 {
entry:
  call void @goodB2G(), !dbg !284
  call void @goodG2B(), !dbg !285
  ret void, !dbg !286
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_042/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_17_bad", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 39, type: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 39, column: 9, scope: !9)
!15 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 39, type: !13)
!16 = !DILocation(line: 39, column: 11, scope: !9)
!17 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 40, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DILocation(line: 40, column: 12, scope: !9)
!21 = !DILocalVariable(name: "dataBuffer", scope: !9, file: !1, line: 41, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 41, column: 10, scope: !9)
!26 = !DILocation(line: 42, column: 12, scope: !9)
!27 = !DILocation(line: 42, column: 10, scope: !9)
!28 = !DILocation(line: 43, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !9, file: !1, line: 43, column: 5)
!30 = !DILocation(line: 43, column: 9, scope: !29)
!31 = !DILocation(line: 43, column: 16, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !1, line: 43, column: 5)
!33 = !DILocation(line: 43, column: 18, scope: !32)
!34 = !DILocation(line: 43, column: 5, scope: !29)
!35 = !DILocalVariable(name: "dataLen", scope: !36, file: !1, line: 47, type: !38)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 45, column: 9)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 44, column: 5)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DILocation(line: 47, column: 20, scope: !36)
!42 = !DILocation(line: 47, column: 37, scope: !36)
!43 = !DILocation(line: 47, column: 30, scope: !36)
!44 = !DILocalVariable(name: "environment", scope: !36, file: !1, line: 48, type: !18)
!45 = !DILocation(line: 48, column: 20, scope: !36)
!46 = !DILocation(line: 48, column: 34, scope: !36)
!47 = !DILocation(line: 50, column: 17, scope: !48)
!48 = distinct !DILexicalBlock(scope: !36, file: !1, line: 50, column: 17)
!49 = !DILocation(line: 50, column: 29, scope: !48)
!50 = !DILocation(line: 50, column: 17, scope: !36)
!51 = !DILocation(line: 53, column: 25, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 51, column: 13)
!53 = !DILocation(line: 53, column: 30, scope: !52)
!54 = !DILocation(line: 53, column: 29, scope: !52)
!55 = !DILocation(line: 53, column: 39, scope: !52)
!56 = !DILocation(line: 53, column: 56, scope: !52)
!57 = !DILocation(line: 53, column: 55, scope: !52)
!58 = !DILocation(line: 53, column: 63, scope: !52)
!59 = !DILocation(line: 53, column: 17, scope: !52)
!60 = !DILocation(line: 54, column: 13, scope: !52)
!61 = !DILocation(line: 56, column: 5, scope: !37)
!62 = !DILocation(line: 43, column: 24, scope: !32)
!63 = !DILocation(line: 43, column: 5, scope: !32)
!64 = distinct !{!64, !34, !65, !66}
!65 = !DILocation(line: 56, column: 5, scope: !29)
!66 = !{!"llvm.loop.mustprogress"}
!67 = !DILocation(line: 57, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !9, file: !1, line: 57, column: 5)
!69 = !DILocation(line: 57, column: 9, scope: !68)
!70 = !DILocation(line: 57, column: 16, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 57, column: 5)
!72 = !DILocation(line: 57, column: 18, scope: !71)
!73 = !DILocation(line: 57, column: 5, scope: !68)
!74 = !DILocalVariable(name: "i", scope: !75, file: !1, line: 60, type: !13)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 59, column: 9)
!76 = distinct !DILexicalBlock(scope: !71, file: !1, line: 58, column: 5)
!77 = !DILocation(line: 60, column: 17, scope: !75)
!78 = !DILocalVariable(name: "n", scope: !75, file: !1, line: 60, type: !13)
!79 = !DILocation(line: 60, column: 20, scope: !75)
!80 = !DILocalVariable(name: "intVariable", scope: !75, file: !1, line: 60, type: !13)
!81 = !DILocation(line: 60, column: 23, scope: !75)
!82 = !DILocation(line: 61, column: 24, scope: !83)
!83 = distinct !DILexicalBlock(scope: !75, file: !1, line: 61, column: 17)
!84 = !DILocation(line: 61, column: 17, scope: !83)
!85 = !DILocation(line: 61, column: 40, scope: !83)
!86 = !DILocation(line: 61, column: 17, scope: !75)
!87 = !DILocation(line: 64, column: 29, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 62, column: 13)
!89 = !DILocation(line: 65, column: 24, scope: !90)
!90 = distinct !DILexicalBlock(scope: !88, file: !1, line: 65, column: 17)
!91 = !DILocation(line: 65, column: 22, scope: !90)
!92 = !DILocation(line: 65, column: 29, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !1, line: 65, column: 17)
!94 = !DILocation(line: 65, column: 33, scope: !93)
!95 = !DILocation(line: 65, column: 31, scope: !93)
!96 = !DILocation(line: 65, column: 17, scope: !90)
!97 = !DILocation(line: 68, column: 32, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 66, column: 17)
!99 = !DILocation(line: 69, column: 17, scope: !98)
!100 = !DILocation(line: 65, column: 37, scope: !93)
!101 = !DILocation(line: 65, column: 17, scope: !93)
!102 = distinct !{!102, !96, !103, !66}
!103 = !DILocation(line: 69, column: 17, scope: !90)
!104 = !DILocation(line: 70, column: 30, scope: !88)
!105 = !DILocation(line: 70, column: 17, scope: !88)
!106 = !DILocation(line: 71, column: 13, scope: !88)
!107 = !DILocation(line: 73, column: 5, scope: !76)
!108 = !DILocation(line: 57, column: 24, scope: !71)
!109 = !DILocation(line: 57, column: 5, scope: !71)
!110 = distinct !{!110, !73, !111, !66}
!111 = !DILocation(line: 73, column: 5, scope: !68)
!112 = !DILocation(line: 74, column: 1, scope: !9)
!113 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 81, type: !10, scopeLine: 82, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!114 = !DILocalVariable(name: "i", scope: !113, file: !1, line: 83, type: !13)
!115 = !DILocation(line: 83, column: 9, scope: !113)
!116 = !DILocalVariable(name: "k", scope: !113, file: !1, line: 83, type: !13)
!117 = !DILocation(line: 83, column: 11, scope: !113)
!118 = !DILocalVariable(name: "data", scope: !113, file: !1, line: 84, type: !18)
!119 = !DILocation(line: 84, column: 12, scope: !113)
!120 = !DILocalVariable(name: "dataBuffer", scope: !113, file: !1, line: 85, type: !22)
!121 = !DILocation(line: 85, column: 10, scope: !113)
!122 = !DILocation(line: 86, column: 12, scope: !113)
!123 = !DILocation(line: 86, column: 10, scope: !113)
!124 = !DILocation(line: 87, column: 11, scope: !125)
!125 = distinct !DILexicalBlock(scope: !113, file: !1, line: 87, column: 5)
!126 = !DILocation(line: 87, column: 9, scope: !125)
!127 = !DILocation(line: 87, column: 16, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 87, column: 5)
!129 = !DILocation(line: 87, column: 18, scope: !128)
!130 = !DILocation(line: 87, column: 5, scope: !125)
!131 = !DILocalVariable(name: "dataLen", scope: !132, file: !1, line: 91, type: !38)
!132 = distinct !DILexicalBlock(scope: !133, file: !1, line: 89, column: 9)
!133 = distinct !DILexicalBlock(scope: !128, file: !1, line: 88, column: 5)
!134 = !DILocation(line: 91, column: 20, scope: !132)
!135 = !DILocation(line: 91, column: 37, scope: !132)
!136 = !DILocation(line: 91, column: 30, scope: !132)
!137 = !DILocalVariable(name: "environment", scope: !132, file: !1, line: 92, type: !18)
!138 = !DILocation(line: 92, column: 20, scope: !132)
!139 = !DILocation(line: 92, column: 34, scope: !132)
!140 = !DILocation(line: 94, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !132, file: !1, line: 94, column: 17)
!142 = !DILocation(line: 94, column: 29, scope: !141)
!143 = !DILocation(line: 94, column: 17, scope: !132)
!144 = !DILocation(line: 97, column: 25, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !1, line: 95, column: 13)
!146 = !DILocation(line: 97, column: 30, scope: !145)
!147 = !DILocation(line: 97, column: 29, scope: !145)
!148 = !DILocation(line: 97, column: 39, scope: !145)
!149 = !DILocation(line: 97, column: 56, scope: !145)
!150 = !DILocation(line: 97, column: 55, scope: !145)
!151 = !DILocation(line: 97, column: 63, scope: !145)
!152 = !DILocation(line: 97, column: 17, scope: !145)
!153 = !DILocation(line: 98, column: 13, scope: !145)
!154 = !DILocation(line: 100, column: 5, scope: !133)
!155 = !DILocation(line: 87, column: 24, scope: !128)
!156 = !DILocation(line: 87, column: 5, scope: !128)
!157 = distinct !{!157, !130, !158, !66}
!158 = !DILocation(line: 100, column: 5, scope: !125)
!159 = !DILocation(line: 101, column: 11, scope: !160)
!160 = distinct !DILexicalBlock(scope: !113, file: !1, line: 101, column: 5)
!161 = !DILocation(line: 101, column: 9, scope: !160)
!162 = !DILocation(line: 101, column: 16, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !1, line: 101, column: 5)
!164 = !DILocation(line: 101, column: 18, scope: !163)
!165 = !DILocation(line: 101, column: 5, scope: !160)
!166 = !DILocalVariable(name: "i", scope: !167, file: !1, line: 104, type: !13)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 103, column: 9)
!168 = distinct !DILexicalBlock(scope: !163, file: !1, line: 102, column: 5)
!169 = !DILocation(line: 104, column: 17, scope: !167)
!170 = !DILocalVariable(name: "n", scope: !167, file: !1, line: 104, type: !13)
!171 = !DILocation(line: 104, column: 20, scope: !167)
!172 = !DILocalVariable(name: "intVariable", scope: !167, file: !1, line: 104, type: !13)
!173 = !DILocation(line: 104, column: 23, scope: !167)
!174 = !DILocation(line: 105, column: 24, scope: !175)
!175 = distinct !DILexicalBlock(scope: !167, file: !1, line: 105, column: 17)
!176 = !DILocation(line: 105, column: 17, scope: !175)
!177 = !DILocation(line: 105, column: 40, scope: !175)
!178 = !DILocation(line: 105, column: 17, scope: !167)
!179 = !DILocation(line: 108, column: 21, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 108, column: 21)
!181 = distinct !DILexicalBlock(scope: !175, file: !1, line: 106, column: 13)
!182 = !DILocation(line: 108, column: 23, scope: !180)
!183 = !DILocation(line: 108, column: 21, scope: !181)
!184 = !DILocation(line: 110, column: 33, scope: !185)
!185 = distinct !DILexicalBlock(scope: !180, file: !1, line: 109, column: 17)
!186 = !DILocation(line: 111, column: 28, scope: !187)
!187 = distinct !DILexicalBlock(scope: !185, file: !1, line: 111, column: 21)
!188 = !DILocation(line: 111, column: 26, scope: !187)
!189 = !DILocation(line: 111, column: 33, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !1, line: 111, column: 21)
!191 = !DILocation(line: 111, column: 37, scope: !190)
!192 = !DILocation(line: 111, column: 35, scope: !190)
!193 = !DILocation(line: 111, column: 21, scope: !187)
!194 = !DILocation(line: 114, column: 36, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !1, line: 112, column: 21)
!196 = !DILocation(line: 115, column: 21, scope: !195)
!197 = !DILocation(line: 111, column: 41, scope: !190)
!198 = !DILocation(line: 111, column: 21, scope: !190)
!199 = distinct !{!199, !193, !200, !66}
!200 = !DILocation(line: 115, column: 21, scope: !187)
!201 = !DILocation(line: 116, column: 34, scope: !185)
!202 = !DILocation(line: 116, column: 21, scope: !185)
!203 = !DILocation(line: 117, column: 17, scope: !185)
!204 = !DILocation(line: 118, column: 13, scope: !181)
!205 = !DILocation(line: 120, column: 5, scope: !168)
!206 = !DILocation(line: 101, column: 24, scope: !163)
!207 = !DILocation(line: 101, column: 5, scope: !163)
!208 = distinct !{!208, !165, !209, !66}
!209 = !DILocation(line: 120, column: 5, scope: !160)
!210 = !DILocation(line: 121, column: 1, scope: !113)
!211 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 124, type: !10, scopeLine: 125, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!212 = !DILocalVariable(name: "h", scope: !211, file: !1, line: 126, type: !13)
!213 = !DILocation(line: 126, column: 9, scope: !211)
!214 = !DILocalVariable(name: "j", scope: !211, file: !1, line: 126, type: !13)
!215 = !DILocation(line: 126, column: 11, scope: !211)
!216 = !DILocalVariable(name: "data", scope: !211, file: !1, line: 127, type: !18)
!217 = !DILocation(line: 127, column: 12, scope: !211)
!218 = !DILocalVariable(name: "dataBuffer", scope: !211, file: !1, line: 128, type: !22)
!219 = !DILocation(line: 128, column: 10, scope: !211)
!220 = !DILocation(line: 129, column: 12, scope: !211)
!221 = !DILocation(line: 129, column: 10, scope: !211)
!222 = !DILocation(line: 130, column: 11, scope: !223)
!223 = distinct !DILexicalBlock(scope: !211, file: !1, line: 130, column: 5)
!224 = !DILocation(line: 130, column: 9, scope: !223)
!225 = !DILocation(line: 130, column: 16, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !1, line: 130, column: 5)
!227 = !DILocation(line: 130, column: 18, scope: !226)
!228 = !DILocation(line: 130, column: 5, scope: !223)
!229 = !DILocation(line: 133, column: 16, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !1, line: 131, column: 5)
!231 = !DILocation(line: 133, column: 9, scope: !230)
!232 = !DILocation(line: 134, column: 5, scope: !230)
!233 = !DILocation(line: 130, column: 24, scope: !226)
!234 = !DILocation(line: 130, column: 5, scope: !226)
!235 = distinct !{!235, !228, !236, !66}
!236 = !DILocation(line: 134, column: 5, scope: !223)
!237 = !DILocation(line: 135, column: 11, scope: !238)
!238 = distinct !DILexicalBlock(scope: !211, file: !1, line: 135, column: 5)
!239 = !DILocation(line: 135, column: 9, scope: !238)
!240 = !DILocation(line: 135, column: 16, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !1, line: 135, column: 5)
!242 = !DILocation(line: 135, column: 18, scope: !241)
!243 = !DILocation(line: 135, column: 5, scope: !238)
!244 = !DILocalVariable(name: "i", scope: !245, file: !1, line: 138, type: !13)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 137, column: 9)
!246 = distinct !DILexicalBlock(scope: !241, file: !1, line: 136, column: 5)
!247 = !DILocation(line: 138, column: 17, scope: !245)
!248 = !DILocalVariable(name: "n", scope: !245, file: !1, line: 138, type: !13)
!249 = !DILocation(line: 138, column: 20, scope: !245)
!250 = !DILocalVariable(name: "intVariable", scope: !245, file: !1, line: 138, type: !13)
!251 = !DILocation(line: 138, column: 23, scope: !245)
!252 = !DILocation(line: 139, column: 24, scope: !253)
!253 = distinct !DILexicalBlock(scope: !245, file: !1, line: 139, column: 17)
!254 = !DILocation(line: 139, column: 17, scope: !253)
!255 = !DILocation(line: 139, column: 40, scope: !253)
!256 = !DILocation(line: 139, column: 17, scope: !245)
!257 = !DILocation(line: 142, column: 29, scope: !258)
!258 = distinct !DILexicalBlock(scope: !253, file: !1, line: 140, column: 13)
!259 = !DILocation(line: 143, column: 24, scope: !260)
!260 = distinct !DILexicalBlock(scope: !258, file: !1, line: 143, column: 17)
!261 = !DILocation(line: 143, column: 22, scope: !260)
!262 = !DILocation(line: 143, column: 29, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !1, line: 143, column: 17)
!264 = !DILocation(line: 143, column: 33, scope: !263)
!265 = !DILocation(line: 143, column: 31, scope: !263)
!266 = !DILocation(line: 143, column: 17, scope: !260)
!267 = !DILocation(line: 146, column: 32, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !1, line: 144, column: 17)
!269 = !DILocation(line: 147, column: 17, scope: !268)
!270 = !DILocation(line: 143, column: 37, scope: !263)
!271 = !DILocation(line: 143, column: 17, scope: !263)
!272 = distinct !{!272, !266, !273, !66}
!273 = !DILocation(line: 147, column: 17, scope: !260)
!274 = !DILocation(line: 148, column: 30, scope: !258)
!275 = !DILocation(line: 148, column: 17, scope: !258)
!276 = !DILocation(line: 149, column: 13, scope: !258)
!277 = !DILocation(line: 151, column: 5, scope: !246)
!278 = !DILocation(line: 135, column: 24, scope: !241)
!279 = !DILocation(line: 135, column: 5, scope: !241)
!280 = distinct !{!280, !243, !281, !66}
!281 = !DILocation(line: 151, column: 5, scope: !238)
!282 = !DILocation(line: 152, column: 1, scope: !211)
!283 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_17_good", scope: !1, file: !1, line: 154, type: !10, scopeLine: 155, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!284 = !DILocation(line: 156, column: 5, scope: !283)
!285 = !DILocation(line: 157, column: 5, scope: !283)
!286 = !DILocation(line: 158, column: 1, scope: !283)
