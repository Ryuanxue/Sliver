; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.4 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsTrue() #0 !dbg !52 {
entry:
  ret i32 1, !dbg !55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsFalse() #0 !dbg !56 {
entry:
  ret i32 0, !dbg !57
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_08_bad() #0 !dbg !58 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !63, metadata !DIExpression()), !dbg !67
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !67
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !68
  store i8* %arraydecay, i8** %data, align 8, !dbg !69
  %call = call i32 @staticReturnsTrue(), !dbg !70
  %tobool = icmp ne i32 %call, 0, !dbg !70
  br i1 %tobool, label %if.then, label %if.end6, !dbg !72

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !73, metadata !DIExpression()), !dbg !79
  %1 = load i8*, i8** %data, align 8, !dbg !80
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !81
  store i64 %call1, i64* %dataLen, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !82, metadata !DIExpression()), !dbg !83
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !84
  store i8* %call2, i8** %environment, align 8, !dbg !83
  %2 = load i8*, i8** %environment, align 8, !dbg !85
  %cmp = icmp ne i8* %2, null, !dbg !87
  br i1 %cmp, label %if.then3, label %if.end, !dbg !88

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !89
  %4 = load i64, i64* %dataLen, align 8, !dbg !91
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !92
  %5 = load i8*, i8** %environment, align 8, !dbg !93
  %6 = load i64, i64* %dataLen, align 8, !dbg !94
  %sub = sub i64 100, %6, !dbg !95
  %sub4 = sub i64 %sub, 1, !dbg !96
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #8, !dbg !97
  br label %if.end, !dbg !98

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !99

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 @staticReturnsTrue(), !dbg !100
  %tobool8 = icmp ne i32 %call7, 0, !dbg !100
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !102

if.then9:                                         ; preds = %if.end6
  %7 = load i8*, i8** %data, align 8, !dbg !103
  %call10 = call i32 (i8*, ...) @printf(i8* %7), !dbg !105
  br label %if.end11, !dbg !106

if.end11:                                         ; preds = %if.then9, %if.end6
  ret void, !dbg !107
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

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !108 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !111, metadata !DIExpression()), !dbg !112
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !112
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !112
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !113
  store i8* %arraydecay, i8** %data, align 8, !dbg !114
  %call = call i32 @staticReturnsTrue(), !dbg !115
  %tobool = icmp ne i32 %call, 0, !dbg !115
  br i1 %tobool, label %if.then, label %if.end6, !dbg !117

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !118, metadata !DIExpression()), !dbg !121
  %1 = load i8*, i8** %data, align 8, !dbg !122
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !123
  store i64 %call1, i64* %dataLen, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !124, metadata !DIExpression()), !dbg !125
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !126
  store i8* %call2, i8** %environment, align 8, !dbg !125
  %2 = load i8*, i8** %environment, align 8, !dbg !127
  %cmp = icmp ne i8* %2, null, !dbg !129
  br i1 %cmp, label %if.then3, label %if.end, !dbg !130

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !131
  %4 = load i64, i64* %dataLen, align 8, !dbg !133
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !134
  %5 = load i8*, i8** %environment, align 8, !dbg !135
  %6 = load i64, i64* %dataLen, align 8, !dbg !136
  %sub = sub i64 100, %6, !dbg !137
  %sub4 = sub i64 %sub, 1, !dbg !138
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #8, !dbg !139
  br label %if.end, !dbg !140

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !141

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 @staticReturnsFalse(), !dbg !142
  %tobool8 = icmp ne i32 %call7, 0, !dbg !142
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !144

if.then9:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !145
  br label %if.end11, !dbg !147

if.else:                                          ; preds = %if.end6
  %7 = load i8*, i8** %data, align 8, !dbg !148
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %7), !dbg !150
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  ret void, !dbg !151
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !152 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !155, metadata !DIExpression()), !dbg !156
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !156
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !156
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !157
  store i8* %arraydecay, i8** %data, align 8, !dbg !158
  %call = call i32 @staticReturnsTrue(), !dbg !159
  %tobool = icmp ne i32 %call, 0, !dbg !159
  br i1 %tobool, label %if.then, label %if.end6, !dbg !161

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !162, metadata !DIExpression()), !dbg !165
  %1 = load i8*, i8** %data, align 8, !dbg !166
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !167
  store i64 %call1, i64* %dataLen, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !168, metadata !DIExpression()), !dbg !169
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !170
  store i8* %call2, i8** %environment, align 8, !dbg !169
  %2 = load i8*, i8** %environment, align 8, !dbg !171
  %cmp = icmp ne i8* %2, null, !dbg !173
  br i1 %cmp, label %if.then3, label %if.end, !dbg !174

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !175
  %4 = load i64, i64* %dataLen, align 8, !dbg !177
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !178
  %5 = load i8*, i8** %environment, align 8, !dbg !179
  %6 = load i64, i64* %dataLen, align 8, !dbg !180
  %sub = sub i64 100, %6, !dbg !181
  %sub4 = sub i64 %sub, 1, !dbg !182
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #8, !dbg !183
  br label %if.end, !dbg !184

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !185

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 @staticReturnsTrue(), !dbg !186
  %tobool8 = icmp ne i32 %call7, 0, !dbg !186
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !188

if.then9:                                         ; preds = %if.end6
  %7 = load i8*, i8** %data, align 8, !dbg !189
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %7), !dbg !191
  br label %if.end11, !dbg !192

if.end11:                                         ; preds = %if.then9, %if.end6
  ret void, !dbg !193
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !194 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !197, metadata !DIExpression()), !dbg !198
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !198
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !198
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !199
  store i8* %arraydecay, i8** %data, align 8, !dbg !200
  %call = call i32 @staticReturnsFalse(), !dbg !201
  %tobool = icmp ne i32 %call, 0, !dbg !201
  br i1 %tobool, label %if.then, label %if.else, !dbg !203

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !204
  br label %if.end, !dbg !206

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !207
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !209
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @staticReturnsTrue(), !dbg !210
  %tobool3 = icmp ne i32 %call2, 0, !dbg !210
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !212

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !213
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !215
  br label %if.end6, !dbg !216

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !217
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !218 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !222
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !222
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !223
  store i8* %arraydecay, i8** %data, align 8, !dbg !224
  %call = call i32 @staticReturnsTrue(), !dbg !225
  %tobool = icmp ne i32 %call, 0, !dbg !225
  br i1 %tobool, label %if.then, label %if.end, !dbg !227

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !228
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !230
  br label %if.end, !dbg !231

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @staticReturnsTrue(), !dbg !232
  %tobool3 = icmp ne i32 %call2, 0, !dbg !232
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !234

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !235
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !237
  br label %if.end6, !dbg !238

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_08_good() #0 !dbg !240 {
entry:
  call void @goodB2G1(), !dbg !241
  call void @goodB2G2(), !dbg !242
  call void @goodG2B1(), !dbg !243
  call void @goodG2B2(), !dbg !244
  ret void, !dbg !245
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !246 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !249, metadata !DIExpression()), !dbg !250
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !251
  %0 = load i8*, i8** %line.addr, align 8, !dbg !252
  %cmp = icmp ne i8* %0, null, !dbg !254
  br i1 %cmp, label %if.then, label %if.end, !dbg !255

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !256
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !258
  br label %if.end, !dbg !259

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !260
  ret void, !dbg !261
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !262 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !263, metadata !DIExpression()), !dbg !264
  %0 = load i8*, i8** %line.addr, align 8, !dbg !265
  %cmp = icmp ne i8* %0, null, !dbg !267
  br i1 %cmp, label %if.then, label %if.end, !dbg !268

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !269
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !271
  br label %if.end, !dbg !272

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !274 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !279, metadata !DIExpression()), !dbg !280
  %0 = load i32*, i32** %line.addr, align 8, !dbg !281
  %cmp = icmp ne i32* %0, null, !dbg !283
  br i1 %cmp, label %if.then, label %if.end, !dbg !284

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !285
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !287
  br label %if.end, !dbg !288

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !289
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !290 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !293, metadata !DIExpression()), !dbg !294
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !295
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.8, i64 0, i64 0), i32 %0), !dbg !296
  ret void, !dbg !297
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !298 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !304
  %conv = sext i16 %0 to i32, !dbg !304
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !307 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !313
  %conv = fpext float %0 to double, !dbg !313
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !316 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !322
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !325 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !334
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !337 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !342
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !345 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !350
  %conv = sext i8 %0 to i32, !dbg !350
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !353 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !356, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !358, metadata !DIExpression()), !dbg !362
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !363
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !364
  store i32 %0, i32* %arrayidx, align 4, !dbg !365
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !366
  store i32 0, i32* %arrayidx1, align 4, !dbg !367
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !368
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !369
  ret void, !dbg !370
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !371 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !376
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !379 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !384
  %conv = zext i8 %0 to i32, !dbg !384
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !385
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !387 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !393
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !396 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !408
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !409
  %1 = load i32, i32* %intOne, align 4, !dbg !409
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !410
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !411
  %3 = load i32, i32* %intTwo, align 4, !dbg !411
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !414 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !418, metadata !DIExpression()), !dbg !419
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata i64* %i, metadata !422, metadata !DIExpression()), !dbg !423
  store i64 0, i64* %i, align 8, !dbg !424
  br label %for.cond, !dbg !426

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !427
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !429
  %cmp = icmp ult i64 %0, %1, !dbg !430
  br i1 %cmp, label %for.body, label %for.end, !dbg !431

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !432
  %3 = load i64, i64* %i, align 8, !dbg !434
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !432
  %4 = load i8, i8* %arrayidx, align 1, !dbg !432
  %conv = zext i8 %4 to i32, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !435
  br label %for.inc, !dbg !436

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !437
  %inc = add i64 %5, 1, !dbg !437
  store i64 %inc, i64* %i, align 8, !dbg !437
  br label %for.cond, !dbg !438, !llvm.loop !439

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !442
  ret void, !dbg !443
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !444 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !447, metadata !DIExpression()), !dbg !448
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !449, metadata !DIExpression()), !dbg !450
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !453, metadata !DIExpression()), !dbg !454
  store i64 0, i64* %numWritten, align 8, !dbg !454
  br label %while.cond, !dbg !455

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !456
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !457
  %cmp = icmp ult i64 %0, %1, !dbg !458
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !459

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !460
  %2 = load i16*, i16** %call, align 8, !dbg !460
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !460
  %4 = load i64, i64* %numWritten, align 8, !dbg !460
  %mul = mul i64 2, %4, !dbg !460
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !460
  %5 = load i8, i8* %arrayidx, align 1, !dbg !460
  %conv = sext i8 %5 to i32, !dbg !460
  %idxprom = sext i32 %conv to i64, !dbg !460
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !460
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !460
  %conv2 = zext i16 %6 to i32, !dbg !460
  %and = and i32 %conv2, 4096, !dbg !460
  %tobool = icmp ne i32 %and, 0, !dbg !460
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !461

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !462
  %7 = load i16*, i16** %call3, align 8, !dbg !462
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !462
  %9 = load i64, i64* %numWritten, align 8, !dbg !462
  %mul4 = mul i64 2, %9, !dbg !462
  %add = add i64 %mul4, 1, !dbg !462
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !462
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !462
  %conv6 = sext i8 %10 to i32, !dbg !462
  %idxprom7 = sext i32 %conv6 to i64, !dbg !462
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !462
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !462
  %conv9 = zext i16 %11 to i32, !dbg !462
  %and10 = and i32 %conv9, 4096, !dbg !462
  %tobool11 = icmp ne i32 %and10, 0, !dbg !461
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !463
  br i1 %12, label %while.body, label %while.end, !dbg !455

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !464, metadata !DIExpression()), !dbg !466
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !467
  %14 = load i64, i64* %numWritten, align 8, !dbg !468
  %mul12 = mul i64 2, %14, !dbg !469
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !467
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !470
  %15 = load i32, i32* %byte, align 4, !dbg !471
  %conv15 = trunc i32 %15 to i8, !dbg !472
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !473
  %17 = load i64, i64* %numWritten, align 8, !dbg !474
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !473
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !475
  %18 = load i64, i64* %numWritten, align 8, !dbg !476
  %inc = add i64 %18, 1, !dbg !476
  store i64 %inc, i64* %numWritten, align 8, !dbg !476
  br label %while.cond, !dbg !455, !llvm.loop !477

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !479
  ret i64 %19, !dbg !480
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !481 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !484, metadata !DIExpression()), !dbg !485
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !486, metadata !DIExpression()), !dbg !487
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !488, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !490, metadata !DIExpression()), !dbg !491
  store i64 0, i64* %numWritten, align 8, !dbg !491
  br label %while.cond, !dbg !492

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !493
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !494
  %cmp = icmp ult i64 %0, %1, !dbg !495
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !496

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !497
  %3 = load i64, i64* %numWritten, align 8, !dbg !498
  %mul = mul i64 2, %3, !dbg !499
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !497
  %4 = load i32, i32* %arrayidx, align 4, !dbg !497
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !500
  %tobool = icmp ne i32 %call, 0, !dbg !500
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !501

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !502
  %6 = load i64, i64* %numWritten, align 8, !dbg !503
  %mul1 = mul i64 2, %6, !dbg !504
  %add = add i64 %mul1, 1, !dbg !505
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !502
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !502
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !506
  %tobool4 = icmp ne i32 %call3, 0, !dbg !501
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !507
  br i1 %8, label %while.body, label %while.end, !dbg !492

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !508, metadata !DIExpression()), !dbg !510
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !511
  %10 = load i64, i64* %numWritten, align 8, !dbg !512
  %mul5 = mul i64 2, %10, !dbg !513
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !511
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !514
  %11 = load i32, i32* %byte, align 4, !dbg !515
  %conv = trunc i32 %11 to i8, !dbg !516
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !517
  %13 = load i64, i64* %numWritten, align 8, !dbg !518
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !517
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !519
  %14 = load i64, i64* %numWritten, align 8, !dbg !520
  %inc = add i64 %14, 1, !dbg !520
  store i64 %inc, i64* %numWritten, align 8, !dbg !520
  br label %while.cond, !dbg !492, !llvm.loop !521

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !523
  ret i64 %15, !dbg !524
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !525 {
entry:
  ret i32 1, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !527 {
entry:
  ret i32 0, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !529 {
entry:
  %call = call i32 @rand() #8, !dbg !530
  %rem = srem i32 %call, 2, !dbg !531
  ret i32 %rem, !dbg !532
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_729/source_code")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!10 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!14 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!21 = !{!22, !23, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!0, !27, !29, !31, !33, !35, !37, !39}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !2, file: !3, line: 175, type: !23, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !2, file: !3, line: 176, type: !23, isLocal: false, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "globalTrue", scope: !2, file: !3, line: 181, type: !23, isLocal: false, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "globalFalse", scope: !2, file: !3, line: 182, type: !23, isLocal: false, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "globalFive", scope: !2, file: !3, line: 183, type: !23, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "globalArgc", scope: !2, file: !3, line: 214, type: !23, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "globalArgv", scope: !2, file: !3, line: 215, type: !41, isLocal: false, isDefinition: true)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !47, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_729/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !45, file: !45, line: 36, type: !53, scopeLine: 37, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{!23}
!55 = !DILocation(line: 38, column: 5, scope: !52)
!56 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !45, file: !45, line: 41, type: !53, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!57 = !DILocation(line: 43, column: 5, scope: !56)
!58 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_08_bad", scope: !45, file: !45, line: 48, type: !59, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocalVariable(name: "data", scope: !58, file: !45, line: 50, type: !42)
!62 = !DILocation(line: 50, column: 12, scope: !58)
!63 = !DILocalVariable(name: "dataBuffer", scope: !58, file: !45, line: 51, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 100)
!67 = !DILocation(line: 51, column: 10, scope: !58)
!68 = !DILocation(line: 52, column: 12, scope: !58)
!69 = !DILocation(line: 52, column: 10, scope: !58)
!70 = !DILocation(line: 53, column: 8, scope: !71)
!71 = distinct !DILexicalBlock(scope: !58, file: !45, line: 53, column: 8)
!72 = !DILocation(line: 53, column: 8, scope: !58)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 57, type: !76)
!74 = distinct !DILexicalBlock(scope: !75, file: !45, line: 55, column: 9)
!75 = distinct !DILexicalBlock(scope: !71, file: !45, line: 54, column: 5)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 46, baseType: !78)
!77 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !DILocation(line: 57, column: 20, scope: !74)
!80 = !DILocation(line: 57, column: 37, scope: !74)
!81 = !DILocation(line: 57, column: 30, scope: !74)
!82 = !DILocalVariable(name: "environment", scope: !74, file: !45, line: 58, type: !42)
!83 = !DILocation(line: 58, column: 20, scope: !74)
!84 = !DILocation(line: 58, column: 34, scope: !74)
!85 = !DILocation(line: 60, column: 17, scope: !86)
!86 = distinct !DILexicalBlock(scope: !74, file: !45, line: 60, column: 17)
!87 = !DILocation(line: 60, column: 29, scope: !86)
!88 = !DILocation(line: 60, column: 17, scope: !74)
!89 = !DILocation(line: 63, column: 25, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !45, line: 61, column: 13)
!91 = !DILocation(line: 63, column: 30, scope: !90)
!92 = !DILocation(line: 63, column: 29, scope: !90)
!93 = !DILocation(line: 63, column: 39, scope: !90)
!94 = !DILocation(line: 63, column: 56, scope: !90)
!95 = !DILocation(line: 63, column: 55, scope: !90)
!96 = !DILocation(line: 63, column: 63, scope: !90)
!97 = !DILocation(line: 63, column: 17, scope: !90)
!98 = !DILocation(line: 64, column: 13, scope: !90)
!99 = !DILocation(line: 66, column: 5, scope: !75)
!100 = !DILocation(line: 67, column: 8, scope: !101)
!101 = distinct !DILexicalBlock(scope: !58, file: !45, line: 67, column: 8)
!102 = !DILocation(line: 67, column: 8, scope: !58)
!103 = !DILocation(line: 70, column: 16, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !45, line: 68, column: 5)
!105 = !DILocation(line: 70, column: 9, scope: !104)
!106 = !DILocation(line: 71, column: 5, scope: !104)
!107 = !DILocation(line: 72, column: 1, scope: !58)
!108 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 79, type: !59, scopeLine: 80, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!109 = !DILocalVariable(name: "data", scope: !108, file: !45, line: 81, type: !42)
!110 = !DILocation(line: 81, column: 12, scope: !108)
!111 = !DILocalVariable(name: "dataBuffer", scope: !108, file: !45, line: 82, type: !64)
!112 = !DILocation(line: 82, column: 10, scope: !108)
!113 = !DILocation(line: 83, column: 12, scope: !108)
!114 = !DILocation(line: 83, column: 10, scope: !108)
!115 = !DILocation(line: 84, column: 8, scope: !116)
!116 = distinct !DILexicalBlock(scope: !108, file: !45, line: 84, column: 8)
!117 = !DILocation(line: 84, column: 8, scope: !108)
!118 = !DILocalVariable(name: "dataLen", scope: !119, file: !45, line: 88, type: !76)
!119 = distinct !DILexicalBlock(scope: !120, file: !45, line: 86, column: 9)
!120 = distinct !DILexicalBlock(scope: !116, file: !45, line: 85, column: 5)
!121 = !DILocation(line: 88, column: 20, scope: !119)
!122 = !DILocation(line: 88, column: 37, scope: !119)
!123 = !DILocation(line: 88, column: 30, scope: !119)
!124 = !DILocalVariable(name: "environment", scope: !119, file: !45, line: 89, type: !42)
!125 = !DILocation(line: 89, column: 20, scope: !119)
!126 = !DILocation(line: 89, column: 34, scope: !119)
!127 = !DILocation(line: 91, column: 17, scope: !128)
!128 = distinct !DILexicalBlock(scope: !119, file: !45, line: 91, column: 17)
!129 = !DILocation(line: 91, column: 29, scope: !128)
!130 = !DILocation(line: 91, column: 17, scope: !119)
!131 = !DILocation(line: 94, column: 25, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !45, line: 92, column: 13)
!133 = !DILocation(line: 94, column: 30, scope: !132)
!134 = !DILocation(line: 94, column: 29, scope: !132)
!135 = !DILocation(line: 94, column: 39, scope: !132)
!136 = !DILocation(line: 94, column: 56, scope: !132)
!137 = !DILocation(line: 94, column: 55, scope: !132)
!138 = !DILocation(line: 94, column: 63, scope: !132)
!139 = !DILocation(line: 94, column: 17, scope: !132)
!140 = !DILocation(line: 95, column: 13, scope: !132)
!141 = !DILocation(line: 97, column: 5, scope: !120)
!142 = !DILocation(line: 98, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !108, file: !45, line: 98, column: 8)
!144 = !DILocation(line: 98, column: 8, scope: !108)
!145 = !DILocation(line: 101, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !45, line: 99, column: 5)
!147 = !DILocation(line: 102, column: 5, scope: !146)
!148 = !DILocation(line: 106, column: 24, scope: !149)
!149 = distinct !DILexicalBlock(scope: !143, file: !45, line: 104, column: 5)
!150 = !DILocation(line: 106, column: 9, scope: !149)
!151 = !DILocation(line: 108, column: 1, scope: !108)
!152 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 111, type: !59, scopeLine: 112, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!153 = !DILocalVariable(name: "data", scope: !152, file: !45, line: 113, type: !42)
!154 = !DILocation(line: 113, column: 12, scope: !152)
!155 = !DILocalVariable(name: "dataBuffer", scope: !152, file: !45, line: 114, type: !64)
!156 = !DILocation(line: 114, column: 10, scope: !152)
!157 = !DILocation(line: 115, column: 12, scope: !152)
!158 = !DILocation(line: 115, column: 10, scope: !152)
!159 = !DILocation(line: 116, column: 8, scope: !160)
!160 = distinct !DILexicalBlock(scope: !152, file: !45, line: 116, column: 8)
!161 = !DILocation(line: 116, column: 8, scope: !152)
!162 = !DILocalVariable(name: "dataLen", scope: !163, file: !45, line: 120, type: !76)
!163 = distinct !DILexicalBlock(scope: !164, file: !45, line: 118, column: 9)
!164 = distinct !DILexicalBlock(scope: !160, file: !45, line: 117, column: 5)
!165 = !DILocation(line: 120, column: 20, scope: !163)
!166 = !DILocation(line: 120, column: 37, scope: !163)
!167 = !DILocation(line: 120, column: 30, scope: !163)
!168 = !DILocalVariable(name: "environment", scope: !163, file: !45, line: 121, type: !42)
!169 = !DILocation(line: 121, column: 20, scope: !163)
!170 = !DILocation(line: 121, column: 34, scope: !163)
!171 = !DILocation(line: 123, column: 17, scope: !172)
!172 = distinct !DILexicalBlock(scope: !163, file: !45, line: 123, column: 17)
!173 = !DILocation(line: 123, column: 29, scope: !172)
!174 = !DILocation(line: 123, column: 17, scope: !163)
!175 = !DILocation(line: 126, column: 25, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !45, line: 124, column: 13)
!177 = !DILocation(line: 126, column: 30, scope: !176)
!178 = !DILocation(line: 126, column: 29, scope: !176)
!179 = !DILocation(line: 126, column: 39, scope: !176)
!180 = !DILocation(line: 126, column: 56, scope: !176)
!181 = !DILocation(line: 126, column: 55, scope: !176)
!182 = !DILocation(line: 126, column: 63, scope: !176)
!183 = !DILocation(line: 126, column: 17, scope: !176)
!184 = !DILocation(line: 127, column: 13, scope: !176)
!185 = !DILocation(line: 129, column: 5, scope: !164)
!186 = !DILocation(line: 130, column: 8, scope: !187)
!187 = distinct !DILexicalBlock(scope: !152, file: !45, line: 130, column: 8)
!188 = !DILocation(line: 130, column: 8, scope: !152)
!189 = !DILocation(line: 133, column: 24, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !45, line: 131, column: 5)
!191 = !DILocation(line: 133, column: 9, scope: !190)
!192 = !DILocation(line: 134, column: 5, scope: !190)
!193 = !DILocation(line: 135, column: 1, scope: !152)
!194 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 138, type: !59, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!195 = !DILocalVariable(name: "data", scope: !194, file: !45, line: 140, type: !42)
!196 = !DILocation(line: 140, column: 12, scope: !194)
!197 = !DILocalVariable(name: "dataBuffer", scope: !194, file: !45, line: 141, type: !64)
!198 = !DILocation(line: 141, column: 10, scope: !194)
!199 = !DILocation(line: 142, column: 12, scope: !194)
!200 = !DILocation(line: 142, column: 10, scope: !194)
!201 = !DILocation(line: 143, column: 8, scope: !202)
!202 = distinct !DILexicalBlock(scope: !194, file: !45, line: 143, column: 8)
!203 = !DILocation(line: 143, column: 8, scope: !194)
!204 = !DILocation(line: 146, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !45, line: 144, column: 5)
!206 = !DILocation(line: 147, column: 5, scope: !205)
!207 = !DILocation(line: 151, column: 16, scope: !208)
!208 = distinct !DILexicalBlock(scope: !202, file: !45, line: 149, column: 5)
!209 = !DILocation(line: 151, column: 9, scope: !208)
!210 = !DILocation(line: 153, column: 8, scope: !211)
!211 = distinct !DILexicalBlock(scope: !194, file: !45, line: 153, column: 8)
!212 = !DILocation(line: 153, column: 8, scope: !194)
!213 = !DILocation(line: 156, column: 16, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !45, line: 154, column: 5)
!215 = !DILocation(line: 156, column: 9, scope: !214)
!216 = !DILocation(line: 157, column: 5, scope: !214)
!217 = !DILocation(line: 158, column: 1, scope: !194)
!218 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 161, type: !59, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!219 = !DILocalVariable(name: "data", scope: !218, file: !45, line: 163, type: !42)
!220 = !DILocation(line: 163, column: 12, scope: !218)
!221 = !DILocalVariable(name: "dataBuffer", scope: !218, file: !45, line: 164, type: !64)
!222 = !DILocation(line: 164, column: 10, scope: !218)
!223 = !DILocation(line: 165, column: 12, scope: !218)
!224 = !DILocation(line: 165, column: 10, scope: !218)
!225 = !DILocation(line: 166, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !218, file: !45, line: 166, column: 8)
!227 = !DILocation(line: 166, column: 8, scope: !218)
!228 = !DILocation(line: 169, column: 16, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !45, line: 167, column: 5)
!230 = !DILocation(line: 169, column: 9, scope: !229)
!231 = !DILocation(line: 170, column: 5, scope: !229)
!232 = !DILocation(line: 171, column: 8, scope: !233)
!233 = distinct !DILexicalBlock(scope: !218, file: !45, line: 171, column: 8)
!234 = !DILocation(line: 171, column: 8, scope: !218)
!235 = !DILocation(line: 174, column: 16, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !45, line: 172, column: 5)
!237 = !DILocation(line: 174, column: 9, scope: !236)
!238 = !DILocation(line: 175, column: 5, scope: !236)
!239 = !DILocation(line: 176, column: 1, scope: !218)
!240 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_08_good", scope: !45, file: !45, line: 178, type: !59, scopeLine: 179, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!241 = !DILocation(line: 180, column: 5, scope: !240)
!242 = !DILocation(line: 181, column: 5, scope: !240)
!243 = !DILocation(line: 182, column: 5, scope: !240)
!244 = !DILocation(line: 183, column: 5, scope: !240)
!245 = !DILocation(line: 184, column: 1, scope: !240)
!246 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !247, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !42}
!249 = !DILocalVariable(name: "line", arg: 1, scope: !246, file: !3, line: 11, type: !42)
!250 = !DILocation(line: 11, column: 25, scope: !246)
!251 = !DILocation(line: 13, column: 1, scope: !246)
!252 = !DILocation(line: 14, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !246, file: !3, line: 14, column: 8)
!254 = !DILocation(line: 14, column: 13, scope: !253)
!255 = !DILocation(line: 14, column: 8, scope: !246)
!256 = !DILocation(line: 16, column: 24, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !3, line: 15, column: 5)
!258 = !DILocation(line: 16, column: 9, scope: !257)
!259 = !DILocation(line: 17, column: 5, scope: !257)
!260 = !DILocation(line: 18, column: 5, scope: !246)
!261 = !DILocation(line: 19, column: 1, scope: !246)
!262 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !247, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!263 = !DILocalVariable(name: "line", arg: 1, scope: !262, file: !3, line: 20, type: !42)
!264 = !DILocation(line: 20, column: 29, scope: !262)
!265 = !DILocation(line: 22, column: 8, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !3, line: 22, column: 8)
!267 = !DILocation(line: 22, column: 13, scope: !266)
!268 = !DILocation(line: 22, column: 8, scope: !262)
!269 = !DILocation(line: 24, column: 24, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !3, line: 23, column: 5)
!271 = !DILocation(line: 24, column: 9, scope: !270)
!272 = !DILocation(line: 25, column: 5, scope: !270)
!273 = !DILocation(line: 26, column: 1, scope: !262)
!274 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !275, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 74, baseType: !23)
!279 = !DILocalVariable(name: "line", arg: 1, scope: !274, file: !3, line: 27, type: !277)
!280 = !DILocation(line: 27, column: 29, scope: !274)
!281 = !DILocation(line: 29, column: 8, scope: !282)
!282 = distinct !DILexicalBlock(scope: !274, file: !3, line: 29, column: 8)
!283 = !DILocation(line: 29, column: 13, scope: !282)
!284 = !DILocation(line: 29, column: 8, scope: !274)
!285 = !DILocation(line: 31, column: 27, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !3, line: 30, column: 5)
!287 = !DILocation(line: 31, column: 9, scope: !286)
!288 = !DILocation(line: 32, column: 5, scope: !286)
!289 = !DILocation(line: 33, column: 1, scope: !274)
!290 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !291, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !23}
!293 = !DILocalVariable(name: "intNumber", arg: 1, scope: !290, file: !3, line: 35, type: !23)
!294 = !DILocation(line: 35, column: 24, scope: !290)
!295 = !DILocation(line: 37, column: 20, scope: !290)
!296 = !DILocation(line: 37, column: 5, scope: !290)
!297 = !DILocation(line: 38, column: 1, scope: !290)
!298 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !299, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !301}
!301 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!302 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !298, file: !3, line: 40, type: !301)
!303 = !DILocation(line: 40, column: 28, scope: !298)
!304 = !DILocation(line: 42, column: 21, scope: !298)
!305 = !DILocation(line: 42, column: 5, scope: !298)
!306 = !DILocation(line: 43, column: 1, scope: !298)
!307 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !308, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !310}
!310 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!311 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !307, file: !3, line: 45, type: !310)
!312 = !DILocation(line: 45, column: 28, scope: !307)
!313 = !DILocation(line: 47, column: 20, scope: !307)
!314 = !DILocation(line: 47, column: 5, scope: !307)
!315 = !DILocation(line: 48, column: 1, scope: !307)
!316 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !317, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319}
!319 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!320 = !DILocalVariable(name: "longNumber", arg: 1, scope: !316, file: !3, line: 50, type: !319)
!321 = !DILocation(line: 50, column: 26, scope: !316)
!322 = !DILocation(line: 52, column: 21, scope: !316)
!323 = !DILocation(line: 52, column: 5, scope: !316)
!324 = !DILocation(line: 53, column: 1, scope: !316)
!325 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !326, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !329, line: 27, baseType: !330)
!329 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !331, line: 44, baseType: !319)
!331 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!332 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !325, file: !3, line: 55, type: !328)
!333 = !DILocation(line: 55, column: 33, scope: !325)
!334 = !DILocation(line: 57, column: 29, scope: !325)
!335 = !DILocation(line: 57, column: 5, scope: !325)
!336 = !DILocation(line: 58, column: 1, scope: !325)
!337 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !338, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !76}
!340 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !337, file: !3, line: 60, type: !76)
!341 = !DILocation(line: 60, column: 29, scope: !337)
!342 = !DILocation(line: 62, column: 21, scope: !337)
!343 = !DILocation(line: 62, column: 5, scope: !337)
!344 = !DILocation(line: 63, column: 1, scope: !337)
!345 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !346, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !43}
!348 = !DILocalVariable(name: "charHex", arg: 1, scope: !345, file: !3, line: 65, type: !43)
!349 = !DILocation(line: 65, column: 29, scope: !345)
!350 = !DILocation(line: 67, column: 22, scope: !345)
!351 = !DILocation(line: 67, column: 5, scope: !345)
!352 = !DILocation(line: 68, column: 1, scope: !345)
!353 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !354, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !278}
!356 = !DILocalVariable(name: "wideChar", arg: 1, scope: !353, file: !3, line: 70, type: !278)
!357 = !DILocation(line: 70, column: 29, scope: !353)
!358 = !DILocalVariable(name: "s", scope: !353, file: !3, line: 74, type: !359)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 64, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 2)
!362 = !DILocation(line: 74, column: 13, scope: !353)
!363 = !DILocation(line: 75, column: 16, scope: !353)
!364 = !DILocation(line: 75, column: 9, scope: !353)
!365 = !DILocation(line: 75, column: 14, scope: !353)
!366 = !DILocation(line: 76, column: 9, scope: !353)
!367 = !DILocation(line: 76, column: 14, scope: !353)
!368 = !DILocation(line: 77, column: 21, scope: !353)
!369 = !DILocation(line: 77, column: 5, scope: !353)
!370 = !DILocation(line: 78, column: 1, scope: !353)
!371 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !372, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !7}
!374 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !371, file: !3, line: 80, type: !7)
!375 = !DILocation(line: 80, column: 33, scope: !371)
!376 = !DILocation(line: 82, column: 20, scope: !371)
!377 = !DILocation(line: 82, column: 5, scope: !371)
!378 = !DILocation(line: 83, column: 1, scope: !371)
!379 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !380, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !25}
!382 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !379, file: !3, line: 85, type: !25)
!383 = !DILocation(line: 85, column: 45, scope: !379)
!384 = !DILocation(line: 87, column: 22, scope: !379)
!385 = !DILocation(line: 87, column: 5, scope: !379)
!386 = !DILocation(line: 88, column: 1, scope: !379)
!387 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !388, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !390}
!390 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!391 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !387, file: !3, line: 90, type: !390)
!392 = !DILocation(line: 90, column: 29, scope: !387)
!393 = !DILocation(line: 92, column: 20, scope: !387)
!394 = !DILocation(line: 92, column: 5, scope: !387)
!395 = !DILocation(line: 93, column: 1, scope: !387)
!396 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !397, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !401, line: 100, baseType: !402)
!401 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_729/source_code")
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !401, line: 96, size: 64, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !402, file: !401, line: 98, baseType: !23, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !402, file: !401, line: 99, baseType: !23, size: 32, offset: 32)
!406 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !396, file: !3, line: 95, type: !399)
!407 = !DILocation(line: 95, column: 40, scope: !396)
!408 = !DILocation(line: 97, column: 26, scope: !396)
!409 = !DILocation(line: 97, column: 47, scope: !396)
!410 = !DILocation(line: 97, column: 55, scope: !396)
!411 = !DILocation(line: 97, column: 76, scope: !396)
!412 = !DILocation(line: 97, column: 5, scope: !396)
!413 = !DILocation(line: 98, column: 1, scope: !396)
!414 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !415, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !417, !76}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!418 = !DILocalVariable(name: "bytes", arg: 1, scope: !414, file: !3, line: 100, type: !417)
!419 = !DILocation(line: 100, column: 38, scope: !414)
!420 = !DILocalVariable(name: "numBytes", arg: 2, scope: !414, file: !3, line: 100, type: !76)
!421 = !DILocation(line: 100, column: 52, scope: !414)
!422 = !DILocalVariable(name: "i", scope: !414, file: !3, line: 102, type: !76)
!423 = !DILocation(line: 102, column: 12, scope: !414)
!424 = !DILocation(line: 103, column: 12, scope: !425)
!425 = distinct !DILexicalBlock(scope: !414, file: !3, line: 103, column: 5)
!426 = !DILocation(line: 103, column: 10, scope: !425)
!427 = !DILocation(line: 103, column: 17, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !3, line: 103, column: 5)
!429 = !DILocation(line: 103, column: 21, scope: !428)
!430 = !DILocation(line: 103, column: 19, scope: !428)
!431 = !DILocation(line: 103, column: 5, scope: !425)
!432 = !DILocation(line: 105, column: 24, scope: !433)
!433 = distinct !DILexicalBlock(scope: !428, file: !3, line: 104, column: 5)
!434 = !DILocation(line: 105, column: 30, scope: !433)
!435 = !DILocation(line: 105, column: 9, scope: !433)
!436 = !DILocation(line: 106, column: 5, scope: !433)
!437 = !DILocation(line: 103, column: 31, scope: !428)
!438 = !DILocation(line: 103, column: 5, scope: !428)
!439 = distinct !{!439, !431, !440, !441}
!440 = !DILocation(line: 106, column: 5, scope: !425)
!441 = !{!"llvm.loop.mustprogress"}
!442 = !DILocation(line: 107, column: 5, scope: !414)
!443 = !DILocation(line: 108, column: 1, scope: !414)
!444 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !445, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!445 = !DISubroutineType(types: !446)
!446 = !{!76, !417, !76, !42}
!447 = !DILocalVariable(name: "bytes", arg: 1, scope: !444, file: !3, line: 113, type: !417)
!448 = !DILocation(line: 113, column: 39, scope: !444)
!449 = !DILocalVariable(name: "numBytes", arg: 2, scope: !444, file: !3, line: 113, type: !76)
!450 = !DILocation(line: 113, column: 53, scope: !444)
!451 = !DILocalVariable(name: "hex", arg: 3, scope: !444, file: !3, line: 113, type: !42)
!452 = !DILocation(line: 113, column: 71, scope: !444)
!453 = !DILocalVariable(name: "numWritten", scope: !444, file: !3, line: 115, type: !76)
!454 = !DILocation(line: 115, column: 12, scope: !444)
!455 = !DILocation(line: 121, column: 5, scope: !444)
!456 = !DILocation(line: 121, column: 12, scope: !444)
!457 = !DILocation(line: 121, column: 25, scope: !444)
!458 = !DILocation(line: 121, column: 23, scope: !444)
!459 = !DILocation(line: 121, column: 34, scope: !444)
!460 = !DILocation(line: 121, column: 37, scope: !444)
!461 = !DILocation(line: 121, column: 67, scope: !444)
!462 = !DILocation(line: 121, column: 70, scope: !444)
!463 = !DILocation(line: 0, scope: !444)
!464 = !DILocalVariable(name: "byte", scope: !465, file: !3, line: 123, type: !23)
!465 = distinct !DILexicalBlock(scope: !444, file: !3, line: 122, column: 5)
!466 = !DILocation(line: 123, column: 13, scope: !465)
!467 = !DILocation(line: 124, column: 17, scope: !465)
!468 = !DILocation(line: 124, column: 25, scope: !465)
!469 = !DILocation(line: 124, column: 23, scope: !465)
!470 = !DILocation(line: 124, column: 9, scope: !465)
!471 = !DILocation(line: 125, column: 45, scope: !465)
!472 = !DILocation(line: 125, column: 29, scope: !465)
!473 = !DILocation(line: 125, column: 9, scope: !465)
!474 = !DILocation(line: 125, column: 15, scope: !465)
!475 = !DILocation(line: 125, column: 27, scope: !465)
!476 = !DILocation(line: 126, column: 9, scope: !465)
!477 = distinct !{!477, !455, !478, !441}
!478 = !DILocation(line: 127, column: 5, scope: !444)
!479 = !DILocation(line: 129, column: 12, scope: !444)
!480 = !DILocation(line: 129, column: 5, scope: !444)
!481 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !482, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DISubroutineType(types: !483)
!483 = !{!76, !417, !76, !277}
!484 = !DILocalVariable(name: "bytes", arg: 1, scope: !481, file: !3, line: 135, type: !417)
!485 = !DILocation(line: 135, column: 41, scope: !481)
!486 = !DILocalVariable(name: "numBytes", arg: 2, scope: !481, file: !3, line: 135, type: !76)
!487 = !DILocation(line: 135, column: 55, scope: !481)
!488 = !DILocalVariable(name: "hex", arg: 3, scope: !481, file: !3, line: 135, type: !277)
!489 = !DILocation(line: 135, column: 76, scope: !481)
!490 = !DILocalVariable(name: "numWritten", scope: !481, file: !3, line: 137, type: !76)
!491 = !DILocation(line: 137, column: 12, scope: !481)
!492 = !DILocation(line: 143, column: 5, scope: !481)
!493 = !DILocation(line: 143, column: 12, scope: !481)
!494 = !DILocation(line: 143, column: 25, scope: !481)
!495 = !DILocation(line: 143, column: 23, scope: !481)
!496 = !DILocation(line: 143, column: 34, scope: !481)
!497 = !DILocation(line: 143, column: 47, scope: !481)
!498 = !DILocation(line: 143, column: 55, scope: !481)
!499 = !DILocation(line: 143, column: 53, scope: !481)
!500 = !DILocation(line: 143, column: 37, scope: !481)
!501 = !DILocation(line: 143, column: 68, scope: !481)
!502 = !DILocation(line: 143, column: 81, scope: !481)
!503 = !DILocation(line: 143, column: 89, scope: !481)
!504 = !DILocation(line: 143, column: 87, scope: !481)
!505 = !DILocation(line: 143, column: 100, scope: !481)
!506 = !DILocation(line: 143, column: 71, scope: !481)
!507 = !DILocation(line: 0, scope: !481)
!508 = !DILocalVariable(name: "byte", scope: !509, file: !3, line: 145, type: !23)
!509 = distinct !DILexicalBlock(scope: !481, file: !3, line: 144, column: 5)
!510 = !DILocation(line: 145, column: 13, scope: !509)
!511 = !DILocation(line: 146, column: 18, scope: !509)
!512 = !DILocation(line: 146, column: 26, scope: !509)
!513 = !DILocation(line: 146, column: 24, scope: !509)
!514 = !DILocation(line: 146, column: 9, scope: !509)
!515 = !DILocation(line: 147, column: 45, scope: !509)
!516 = !DILocation(line: 147, column: 29, scope: !509)
!517 = !DILocation(line: 147, column: 9, scope: !509)
!518 = !DILocation(line: 147, column: 15, scope: !509)
!519 = !DILocation(line: 147, column: 27, scope: !509)
!520 = !DILocation(line: 148, column: 9, scope: !509)
!521 = distinct !{!521, !492, !522, !441}
!522 = !DILocation(line: 149, column: 5, scope: !481)
!523 = !DILocation(line: 151, column: 12, scope: !481)
!524 = !DILocation(line: 151, column: 5, scope: !481)
!525 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !53, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 158, column: 5, scope: !525)
!527 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !53, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 163, column: 5, scope: !527)
!529 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !53, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 168, column: 13, scope: !529)
!531 = !DILocation(line: 168, column: 20, scope: !529)
!532 = !DILocation(line: 168, column: 5, scope: !529)
!533 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !59, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 187, column: 16, scope: !533)
!535 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !59, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 188, column: 16, scope: !535)
!537 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !59, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 189, column: 16, scope: !537)
!539 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 190, column: 16, scope: !539)
!541 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !59, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 191, column: 16, scope: !541)
!543 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !59, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 192, column: 16, scope: !543)
!545 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !59, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 193, column: 16, scope: !545)
!547 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !59, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 194, column: 16, scope: !547)
!549 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !59, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 195, column: 16, scope: !549)
!551 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !59, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 198, column: 15, scope: !551)
!553 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !59, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 199, column: 15, scope: !553)
!555 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !59, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 200, column: 15, scope: !555)
!557 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !59, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 201, column: 15, scope: !557)
!559 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !59, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 202, column: 15, scope: !559)
!561 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !59, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 203, column: 15, scope: !561)
!563 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !59, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 204, column: 15, scope: !563)
!565 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !59, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 205, column: 15, scope: !565)
!567 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !59, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 206, column: 15, scope: !567)
