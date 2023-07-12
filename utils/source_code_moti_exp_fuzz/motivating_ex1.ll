; ModuleID = 'motivating_ex1.c'
source_filename = "motivating_ex1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [5 x i8] c"Pass\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Fail\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"raw.txt\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ab+\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"sink\00", align 1
@sensitive_data = dso_local global [20 x i8] zeroinitializer, align 16, !dbg !0
@.str.5 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"passwd\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"dummy\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"auth_ret\00", align 1
@afl_init_argv.in_buf = internal global [100000 x i8] zeroinitializer, align 16, !dbg !25
@afl_init_argv.ret = internal global [1000 x i8*] zeroinitializer, align 16, !dbg !39

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @copy(i8* %dest, i8* %src) #0 !dbg !51 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dest.addr, metadata !56, metadata !DIExpression()), !dbg !57
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !58, metadata !DIExpression()), !dbg !59
  %0 = load i8*, i8** %dest.addr, align 8, !dbg !60
  %1 = load i8*, i8** %src.addr, align 8, !dbg !61
  %call = call i8* @strcpy(i8* %0, i8* %1) #6, !dbg !62
  ret i8* %call, !dbg !63
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pass() #0 !dbg !64 {
entry:
  call void @sink_mtd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !67
  ret void, !dbg !68
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sink_mtd(i8* %cmd) #0 !dbg !69 {
entry:
  %cmd.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %len_sink = alloca i32, align 4
  %len_sensitive_data = alloca i32, align 4
  store i8* %cmd, i8** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cmd.addr, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !74, metadata !DIExpression()), !dbg !131
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !132
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %len_sink, metadata !133, metadata !DIExpression()), !dbg !134
  store i32 4, i32* %len_sink, align 4, !dbg !134
  %0 = bitcast i32* %len_sink to i8*, !dbg !135
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !136
  %call1 = call i64 @fwrite(i8* %0, i64 4, i64 1, %struct._IO_FILE* %1), !dbg !137
  %2 = load i32, i32* %len_sink, align 4, !dbg !138
  %conv = sext i32 %2 to i64, !dbg !138
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !139
  %call2 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 1, i64 %conv, %struct._IO_FILE* %3), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %len_sensitive_data, metadata !141, metadata !DIExpression()), !dbg !142
  %call3 = call i64 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sensitive_data, i64 0, i64 0)) #7, !dbg !143
  %conv4 = trunc i64 %call3 to i32, !dbg !143
  store i32 %conv4, i32* %len_sensitive_data, align 4, !dbg !142
  %4 = bitcast i32* %len_sensitive_data to i8*, !dbg !144
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !145
  %call5 = call i64 @fwrite(i8* %4, i64 4, i64 1, %struct._IO_FILE* %5), !dbg !146
  %6 = load i32, i32* %len_sensitive_data, align 4, !dbg !147
  %conv6 = sext i32 %6 to i64, !dbg !147
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !148
  %call7 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sensitive_data, i64 0, i64 0), i64 1, i64 %conv6, %struct._IO_FILE* %7), !dbg !149
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !150
  %call8 = call i32 @fclose(%struct._IO_FILE* %8), !dbg !151
  %9 = load i8*, i8** %cmd.addr, align 8, !dbg !152
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sensitive_data, i64 0, i64 0)), !dbg !153
  ret void, !dbg !154
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fail() #0 !dbg !155 {
entry:
  call void @sink_mtd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !156
  ret void, !dbg !157
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @op(i8* (i8*, i8*)* %str_op, i8* %data) #0 !dbg !158 {
entry:
  %str_op.addr = alloca i8* (i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store i8* (i8*, i8*)* %str_op, i8* (i8*, i8*)** %str_op.addr, align 8
  call void @llvm.dbg.declare(metadata i8* (i8*, i8*)** %str_op.addr, metadata !162, metadata !DIExpression()), !dbg !163
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !164, metadata !DIExpression()), !dbg !165
  %0 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %str_op.addr, align 8, !dbg !166
  %1 = load i8*, i8** %data.addr, align 8, !dbg !167
  %call = call i8* %0(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sensitive_data, i64 0, i64 0), i8* %1), !dbg !168
  ret void, !dbg !169
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth(i8* %buf) #0 !dbg !170 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %len_source = alloca i32, align 4
  %len_secret = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !175
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !177
  %tobool = icmp ne i32 %call, 0, !dbg !177
  br i1 %tobool, label %if.end, label %if.then, !dbg !178

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !179, metadata !DIExpression()), !dbg !181
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !182
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %len_source, metadata !183, metadata !DIExpression()), !dbg !184
  store i32 6, i32* %len_source, align 4, !dbg !184
  %1 = bitcast i32* %len_source to i8*, !dbg !185
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !186
  %call2 = call i64 @fwrite(i8* %1, i64 4, i64 1, %struct._IO_FILE* %2), !dbg !187
  %3 = load i32, i32* %len_source, align 4, !dbg !188
  %conv = sext i32 %3 to i64, !dbg !188
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !189
  %call3 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 1, i64 %conv, %struct._IO_FILE* %4), !dbg !190
  call void @llvm.dbg.declare(metadata i32* %len_secret, metadata !191, metadata !DIExpression()), !dbg !192
  store i32 6, i32* %len_secret, align 4, !dbg !192
  %5 = bitcast i32* %len_secret to i8*, !dbg !193
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !194
  %call4 = call i64 @fwrite(i8* %5, i64 4, i64 1, %struct._IO_FILE* %6), !dbg !195
  %7 = load i32, i32* %len_secret, align 4, !dbg !196
  %conv5 = sext i32 %7 to i64, !dbg !196
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !197
  %call6 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i64 1, i64 %conv5, %struct._IO_FILE* %8), !dbg !198
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !199
  %call7 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !200
  call void @op(i8* (i8*, i8*)* @copy, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !201
  store i32 1, i32* %retval, align 4, !dbg !202
  br label %return, !dbg !202

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !203
  br label %return, !dbg !203

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !204
  ret i32 %10, !dbg !204
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dummy() #0 !dbg !205 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)), !dbg !206
  ret void, !dbg !207
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main(i32 %argc, i8** %argv) #0 !dbg !208 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %len_start = alloca i32, align 4
  %len_argv = alloca i32, align 4
  %len_sensitive_data = alloca i32, align 4
  %auth_ret = alloca i32, align 4
  %fp1 = alloca %struct._IO_FILE*, align 8
  %len_auth_ret = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !211, metadata !DIExpression()), !dbg !212
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !213, metadata !DIExpression()), !dbg !214
  br label %do.body, !dbg !215

do.body:                                          ; preds = %entry
  %call = call i8** @afl_init_argv(i32* %argc.addr), !dbg !216
  store i8** %call, i8*** %argv.addr, align 8, !dbg !216
  br label %do.end, !dbg !216

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !218, metadata !DIExpression()), !dbg !219
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !220
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8, !dbg !219
  call void @llvm.dbg.declare(metadata i32* %len_start, metadata !221, metadata !DIExpression()), !dbg !222
  store i32 5, i32* %len_start, align 4, !dbg !222
  %0 = bitcast i32* %len_start to i8*, !dbg !223
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !224
  %call2 = call i64 @fwrite(i8* %0, i64 4, i64 1, %struct._IO_FILE* %1), !dbg !225
  %2 = load i32, i32* %len_start, align 4, !dbg !226
  %conv = sext i32 %2 to i64, !dbg !226
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !227
  %call3 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 1, i64 %conv, %struct._IO_FILE* %3), !dbg !228
  call void @llvm.dbg.declare(metadata i32* %len_argv, metadata !229, metadata !DIExpression()), !dbg !230
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !231
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !231
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !231
  %call4 = call i64 @strlen(i8* %5) #7, !dbg !232
  %conv5 = trunc i64 %call4 to i32, !dbg !232
  store i32 %conv5, i32* %len_argv, align 4, !dbg !230
  %6 = bitcast i32* %len_argv to i8*, !dbg !233
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !234
  %call6 = call i64 @fwrite(i8* %6, i64 4, i64 1, %struct._IO_FILE* %7), !dbg !235
  %8 = load i8**, i8*** %argv.addr, align 8, !dbg !236
  %arrayidx7 = getelementptr inbounds i8*, i8** %8, i64 1, !dbg !236
  %9 = load i8*, i8** %arrayidx7, align 8, !dbg !236
  %10 = load i32, i32* %len_argv, align 4, !dbg !237
  %conv8 = sext i32 %10 to i64, !dbg !237
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !238
  %call9 = call i64 @fwrite(i8* %9, i64 1, i64 %conv8, %struct._IO_FILE* %11), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %len_sensitive_data, metadata !240, metadata !DIExpression()), !dbg !241
  %call10 = call i64 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sensitive_data, i64 0, i64 0)) #7, !dbg !242
  %conv11 = trunc i64 %call10 to i32, !dbg !242
  store i32 %conv11, i32* %len_sensitive_data, align 4, !dbg !241
  %12 = bitcast i32* %len_sensitive_data to i8*, !dbg !243
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !244
  %call12 = call i64 @fwrite(i8* %12, i64 4, i64 1, %struct._IO_FILE* %13), !dbg !245
  %14 = load i32, i32* %len_sensitive_data, align 4, !dbg !246
  %conv13 = sext i32 %14 to i64, !dbg !246
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !247
  %call14 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sensitive_data, i64 0, i64 0), i64 1, i64 %conv13, %struct._IO_FILE* %15), !dbg !248
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !249
  %call15 = call i32 @fclose(%struct._IO_FILE* %16), !dbg !250
  call void @llvm.dbg.declare(metadata i32* %auth_ret, metadata !251, metadata !DIExpression()), !dbg !252
  %17 = load i8**, i8*** %argv.addr, align 8, !dbg !253
  %arrayidx16 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !253
  %18 = load i8*, i8** %arrayidx16, align 8, !dbg !253
  %call17 = call i32 @auth(i8* %18), !dbg !254
  store i32 %call17, i32* %auth_ret, align 4, !dbg !252
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp1, metadata !255, metadata !DIExpression()), !dbg !256
  %call18 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !257
  store %struct._IO_FILE* %call18, %struct._IO_FILE** %fp1, align 8, !dbg !256
  call void @llvm.dbg.declare(metadata i32* %len_auth_ret, metadata !258, metadata !DIExpression()), !dbg !259
  store i32 8, i32* %len_auth_ret, align 4, !dbg !259
  %19 = bitcast i32* %len_auth_ret to i8*, !dbg !260
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8, !dbg !261
  %call19 = call i64 @fwrite(i8* %19, i64 4, i64 1, %struct._IO_FILE* %20), !dbg !262
  %21 = load i32, i32* %len_auth_ret, align 4, !dbg !263
  %conv20 = sext i32 %21 to i64, !dbg !263
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8, !dbg !264
  %call21 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i64 1, i64 %conv20, %struct._IO_FILE* %22), !dbg !265
  %23 = bitcast i32* %auth_ret to i8*, !dbg !266
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8, !dbg !267
  %call22 = call i64 @fwrite(i8* %23, i64 4, i64 1, %struct._IO_FILE* %24), !dbg !268
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8, !dbg !269
  %call23 = call i32 @fclose(%struct._IO_FILE* %25), !dbg !270
  %26 = load i32, i32* %auth_ret, align 4, !dbg !271
  %tobool = icmp ne i32 %26, 0, !dbg !271
  br i1 %tobool, label %if.then, label %if.else, !dbg !273

if.then:                                          ; preds = %do.end
  call void @dummy(), !dbg !274
  call void @pass(), !dbg !276
  br label %if.end, !dbg !277

if.else:                                          ; preds = %do.end
  call void @fail(), !dbg !278
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !280
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @afl_init_argv(i32* %argc) #0 !dbg !27 {
entry:
  %argc.addr = alloca i32*, align 8
  %ptr = alloca i8*, align 8
  %rc = alloca i32, align 4
  store i32* %argc, i32** %argc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %argc.addr, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !283, metadata !DIExpression()), !dbg !284
  store i8* getelementptr inbounds ([100000 x i8], [100000 x i8]* @afl_init_argv.in_buf, i64 0, i64 0), i8** %ptr, align 8, !dbg !284
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !285, metadata !DIExpression()), !dbg !286
  store i32 1, i32* %rc, align 4, !dbg !286
  %call = call i64 @read(i32 0, i8* getelementptr inbounds ([100000 x i8], [100000 x i8]* @afl_init_argv.in_buf, i64 0, i64 0), i64 99998), !dbg !287
  %cmp = icmp slt i64 %call, 0, !dbg !289
  br i1 %cmp, label %if.then, label %if.end, !dbg !290

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !290

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !291

while.cond:                                       ; preds = %while.end25, %if.end
  %0 = load i8*, i8** %ptr, align 8, !dbg !292
  %1 = load i8, i8* %0, align 1, !dbg !293
  %tobool = icmp ne i8 %1, 0, !dbg !291
  br i1 %tobool, label %while.body, label %while.end26, !dbg !291

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %ptr, align 8, !dbg !294
  %3 = load i32, i32* %rc, align 4, !dbg !296
  %idxprom = sext i32 %3 to i64, !dbg !297
  %arrayidx = getelementptr inbounds [1000 x i8*], [1000 x i8*]* @afl_init_argv.ret, i64 0, i64 %idxprom, !dbg !297
  store i8* %2, i8** %arrayidx, align 8, !dbg !298
  br label %while.cond1, !dbg !299

while.cond1:                                      ; preds = %while.body9, %while.body
  %4 = load i8*, i8** %ptr, align 8, !dbg !300
  %5 = load i8, i8* %4, align 1, !dbg !301
  %conv = sext i8 %5 to i32, !dbg !301
  %tobool2 = icmp ne i32 %conv, 0, !dbg !301
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !302

land.rhs:                                         ; preds = %while.cond1
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !303
  %6 = load i16*, i16** %call3, align 8, !dbg !303
  %7 = load i8*, i8** %ptr, align 8, !dbg !303
  %8 = load i8, i8* %7, align 1, !dbg !303
  %conv4 = sext i8 %8 to i32, !dbg !303
  %idxprom5 = sext i32 %conv4 to i64, !dbg !303
  %arrayidx6 = getelementptr inbounds i16, i16* %6, i64 %idxprom5, !dbg !303
  %9 = load i16, i16* %arrayidx6, align 2, !dbg !303
  %conv7 = zext i16 %9 to i32, !dbg !303
  %and = and i32 %conv7, 8192, !dbg !303
  %tobool8 = icmp ne i32 %and, 0, !dbg !304
  %lnot = xor i1 %tobool8, true, !dbg !304
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %10 = phi i1 [ false, %while.cond1 ], [ %lnot, %land.rhs ], !dbg !305
  br i1 %10, label %while.body9, label %while.end, !dbg !299

while.body9:                                      ; preds = %land.end
  %11 = load i8*, i8** %ptr, align 8, !dbg !306
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1, !dbg !306
  store i8* %incdec.ptr, i8** %ptr, align 8, !dbg !306
  br label %while.cond1, !dbg !299, !llvm.loop !307

while.end:                                        ; preds = %land.end
  %12 = load i8*, i8** %ptr, align 8, !dbg !309
  store i8 0, i8* %12, align 1, !dbg !310
  %13 = load i8*, i8** %ptr, align 8, !dbg !311
  %incdec.ptr10 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !311
  store i8* %incdec.ptr10, i8** %ptr, align 8, !dbg !311
  br label %while.cond11, !dbg !312

while.cond11:                                     ; preds = %while.body23, %while.end
  %14 = load i8*, i8** %ptr, align 8, !dbg !313
  %15 = load i8, i8* %14, align 1, !dbg !314
  %conv12 = sext i8 %15 to i32, !dbg !314
  %tobool13 = icmp ne i32 %conv12, 0, !dbg !314
  br i1 %tobool13, label %land.rhs14, label %land.end22, !dbg !315

land.rhs14:                                       ; preds = %while.cond11
  %call15 = call i16** @__ctype_b_loc() #8, !dbg !316
  %16 = load i16*, i16** %call15, align 8, !dbg !316
  %17 = load i8*, i8** %ptr, align 8, !dbg !316
  %18 = load i8, i8* %17, align 1, !dbg !316
  %conv16 = sext i8 %18 to i32, !dbg !316
  %idxprom17 = sext i32 %conv16 to i64, !dbg !316
  %arrayidx18 = getelementptr inbounds i16, i16* %16, i64 %idxprom17, !dbg !316
  %19 = load i16, i16* %arrayidx18, align 2, !dbg !316
  %conv19 = zext i16 %19 to i32, !dbg !316
  %and20 = and i32 %conv19, 8192, !dbg !316
  %tobool21 = icmp ne i32 %and20, 0, !dbg !315
  br label %land.end22

land.end22:                                       ; preds = %land.rhs14, %while.cond11
  %20 = phi i1 [ false, %while.cond11 ], [ %tobool21, %land.rhs14 ], !dbg !305
  br i1 %20, label %while.body23, label %while.end25, !dbg !312

while.body23:                                     ; preds = %land.end22
  %21 = load i8*, i8** %ptr, align 8, !dbg !317
  %incdec.ptr24 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !317
  store i8* %incdec.ptr24, i8** %ptr, align 8, !dbg !317
  br label %while.cond11, !dbg !312, !llvm.loop !318

while.end25:                                      ; preds = %land.end22
  %22 = load i32, i32* %rc, align 4, !dbg !319
  %inc = add nsw i32 %22, 1, !dbg !319
  store i32 %inc, i32* %rc, align 4, !dbg !319
  br label %while.cond, !dbg !291, !llvm.loop !320

while.end26:                                      ; preds = %while.cond
  %23 = load i32, i32* %rc, align 4, !dbg !322
  %24 = load i32*, i32** %argc.addr, align 8, !dbg !323
  store i32 %23, i32* %24, align 4, !dbg !324
  ret i8** getelementptr inbounds ([1000 x i8*], [1000 x i8*]* @afl_init_argv.ret, i64 0, i64 0), !dbg !325
}

declare dso_local i64 @read(i32, i8*, i64) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!47, !48, !49}
!llvm.ident = !{!50}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sensitive_data", scope: !2, file: !3, line: 9, type: !44, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !24, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "motivating_ex1.c", directory: "/home/raoxue/Desktop/My_sliver/Sliver/utils/source_code_moti_exp_fuzz")
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
!21 = !{!22, !23}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!24 = !{!0, !25, !39}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "in_buf", scope: !27, file: !28, line: 59, type: !36, isLocal: true, isDefinition: true)
!27 = distinct !DISubprogram(name: "afl_init_argv", scope: !28, file: !28, line: 57, type: !29, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !35)
!28 = !DIFile(filename: "AFL/experimental/argv_fuzzing/argv-fuzz-inl.h", directory: "/home/raoxue/Desktop")
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !34}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!35 = !{}
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 800000, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 100000)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "ret", scope: !27, file: !28, line: 60, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64000, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 1000)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 160, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 20)
!47 = !{i32 7, !"Dwarf Version", i32 4}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"wchar_size", i32 4}
!50 = !{!"clang version 12.0.0"}
!51 = distinct !DISubprogram(name: "copy", scope: !3, file: !3, line: 11, type: !52, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!52 = !DISubroutineType(types: !53)
!53 = !{!32, !32, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!56 = !DILocalVariable(name: "dest", arg: 1, scope: !51, file: !3, line: 11, type: !32)
!57 = !DILocation(line: 11, column: 18, scope: !51)
!58 = !DILocalVariable(name: "src", arg: 2, scope: !51, file: !3, line: 11, type: !54)
!59 = !DILocation(line: 11, column: 36, scope: !51)
!60 = !DILocation(line: 12, column: 16, scope: !51)
!61 = !DILocation(line: 12, column: 22, scope: !51)
!62 = !DILocation(line: 12, column: 9, scope: !51)
!63 = !DILocation(line: 12, column: 2, scope: !51)
!64 = distinct !DISubprogram(name: "pass", scope: !3, file: !3, line: 15, type: !65, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!65 = !DISubroutineType(types: !66)
!66 = !{null}
!67 = !DILocation(line: 16, column: 2, scope: !64)
!68 = !DILocation(line: 17, column: 1, scope: !64)
!69 = distinct !DISubprogram(name: "sink_mtd", scope: !3, file: !3, line: 21, type: !70, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !32}
!72 = !DILocalVariable(name: "cmd", arg: 1, scope: !69, file: !3, line: 21, type: !32)
!73 = !DILocation(line: 21, column: 21, scope: !69)
!74 = !DILocalVariable(name: "fp", scope: !69, file: !3, line: 23, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !77, line: 7, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !79, line: 49, size: 1728, elements: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !96, !98, !99, !100, !104, !105, !107, !111, !114, !116, !119, !122, !123, !125, !129, !130}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !78, file: !79, line: 51, baseType: !22, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !78, file: !79, line: 54, baseType: !32, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !78, file: !79, line: 55, baseType: !32, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !78, file: !79, line: 56, baseType: !32, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !78, file: !79, line: 57, baseType: !32, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !78, file: !79, line: 58, baseType: !32, size: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !78, file: !79, line: 59, baseType: !32, size: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !78, file: !79, line: 60, baseType: !32, size: 64, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !78, file: !79, line: 61, baseType: !32, size: 64, offset: 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !78, file: !79, line: 64, baseType: !32, size: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !78, file: !79, line: 65, baseType: !32, size: 64, offset: 640)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !78, file: !79, line: 66, baseType: !32, size: 64, offset: 704)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !78, file: !79, line: 68, baseType: !94, size: 64, offset: 768)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !79, line: 36, flags: DIFlagFwdDecl)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !78, file: !79, line: 70, baseType: !97, size: 64, offset: 832)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !78, file: !79, line: 72, baseType: !22, size: 32, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !78, file: !79, line: 73, baseType: !22, size: 32, offset: 928)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !78, file: !79, line: 74, baseType: !101, size: 64, offset: 960)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !102, line: 152, baseType: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!103 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !78, file: !79, line: 77, baseType: !23, size: 16, offset: 1024)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !78, file: !79, line: 78, baseType: !106, size: 8, offset: 1040)
!106 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !78, file: !79, line: 79, baseType: !108, size: 8, offset: 1048)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 1)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !78, file: !79, line: 81, baseType: !112, size: 64, offset: 1088)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !79, line: 43, baseType: null)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !78, file: !79, line: 89, baseType: !115, size: 64, offset: 1152)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !102, line: 153, baseType: !103)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !78, file: !79, line: 91, baseType: !117, size: 64, offset: 1216)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !79, line: 37, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !78, file: !79, line: 92, baseType: !120, size: 64, offset: 1280)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !79, line: 38, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !78, file: !79, line: 93, baseType: !97, size: 64, offset: 1344)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !78, file: !79, line: 94, baseType: !124, size: 64, offset: 1408)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !78, file: !79, line: 95, baseType: !126, size: 64, offset: 1472)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 46, baseType: !128)
!127 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!128 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !78, file: !79, line: 96, baseType: !22, size: 32, offset: 1536)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !78, file: !79, line: 98, baseType: !44, size: 160, offset: 1568)
!131 = !DILocation(line: 23, column: 8, scope: !69)
!132 = !DILocation(line: 23, column: 11, scope: !69)
!133 = !DILocalVariable(name: "len_sink", scope: !69, file: !3, line: 24, type: !22)
!134 = !DILocation(line: 24, column: 6, scope: !69)
!135 = !DILocation(line: 25, column: 9, scope: !69)
!136 = !DILocation(line: 25, column: 33, scope: !69)
!137 = !DILocation(line: 25, column: 2, scope: !69)
!138 = !DILocation(line: 26, column: 29, scope: !69)
!139 = !DILocation(line: 26, column: 38, scope: !69)
!140 = !DILocation(line: 26, column: 2, scope: !69)
!141 = !DILocalVariable(name: "len_sensitive_data", scope: !69, file: !3, line: 27, type: !22)
!142 = !DILocation(line: 27, column: 6, scope: !69)
!143 = !DILocation(line: 27, column: 25, scope: !69)
!144 = !DILocation(line: 28, column: 9, scope: !69)
!145 = !DILocation(line: 28, column: 43, scope: !69)
!146 = !DILocation(line: 28, column: 2, scope: !69)
!147 = !DILocation(line: 29, column: 37, scope: !69)
!148 = !DILocation(line: 29, column: 56, scope: !69)
!149 = !DILocation(line: 29, column: 2, scope: !69)
!150 = !DILocation(line: 30, column: 9, scope: !69)
!151 = !DILocation(line: 30, column: 2, scope: !69)
!152 = !DILocation(line: 31, column: 23, scope: !69)
!153 = !DILocation(line: 31, column: 5, scope: !69)
!154 = !DILocation(line: 32, column: 1, scope: !69)
!155 = distinct !DISubprogram(name: "fail", scope: !3, file: !3, line: 18, type: !65, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!156 = !DILocation(line: 19, column: 2, scope: !155)
!157 = !DILocation(line: 20, column: 1, scope: !155)
!158 = distinct !DISubprogram(name: "op", scope: !3, file: !3, line: 34, type: !159, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !161, !54}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!162 = !DILocalVariable(name: "str_op", arg: 1, scope: !158, file: !3, line: 34, type: !161)
!163 = !DILocation(line: 34, column: 16, scope: !158)
!164 = !DILocalVariable(name: "data", arg: 2, scope: !158, file: !3, line: 34, type: !54)
!165 = !DILocation(line: 34, column: 59, scope: !158)
!166 = !DILocation(line: 35, column: 4, scope: !158)
!167 = !DILocation(line: 35, column: 28, scope: !158)
!168 = !DILocation(line: 35, column: 2, scope: !158)
!169 = !DILocation(line: 36, column: 1, scope: !158)
!170 = distinct !DISubprogram(name: "auth", scope: !3, file: !3, line: 38, type: !171, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!171 = !DISubroutineType(types: !172)
!172 = !{!22, !54}
!173 = !DILocalVariable(name: "buf", arg: 1, scope: !170, file: !3, line: 38, type: !54)
!174 = !DILocation(line: 38, column: 22, scope: !170)
!175 = !DILocation(line: 39, column: 14, scope: !176)
!176 = distinct !DILexicalBlock(scope: !170, file: !3, line: 39, column: 6)
!177 = !DILocation(line: 39, column: 7, scope: !176)
!178 = !DILocation(line: 39, column: 6, scope: !170)
!179 = !DILocalVariable(name: "fp", scope: !180, file: !3, line: 42, type: !75)
!180 = distinct !DILexicalBlock(scope: !176, file: !3, line: 39, column: 30)
!181 = !DILocation(line: 42, column: 9, scope: !180)
!182 = !DILocation(line: 42, column: 12, scope: !180)
!183 = !DILocalVariable(name: "len_source", scope: !180, file: !3, line: 43, type: !22)
!184 = !DILocation(line: 43, column: 7, scope: !180)
!185 = !DILocation(line: 44, column: 9, scope: !180)
!186 = !DILocation(line: 44, column: 35, scope: !180)
!187 = !DILocation(line: 44, column: 2, scope: !180)
!188 = !DILocation(line: 45, column: 31, scope: !180)
!189 = !DILocation(line: 45, column: 42, scope: !180)
!190 = !DILocation(line: 45, column: 2, scope: !180)
!191 = !DILocalVariable(name: "len_secret", scope: !180, file: !3, line: 46, type: !22)
!192 = !DILocation(line: 46, column: 6, scope: !180)
!193 = !DILocation(line: 47, column: 9, scope: !180)
!194 = !DILocation(line: 47, column: 35, scope: !180)
!195 = !DILocation(line: 47, column: 2, scope: !180)
!196 = !DILocation(line: 48, column: 31, scope: !180)
!197 = !DILocation(line: 48, column: 42, scope: !180)
!198 = !DILocation(line: 48, column: 2, scope: !180)
!199 = !DILocation(line: 49, column: 9, scope: !180)
!200 = !DILocation(line: 49, column: 2, scope: !180)
!201 = !DILocation(line: 50, column: 3, scope: !180)
!202 = !DILocation(line: 54, column: 3, scope: !180)
!203 = !DILocation(line: 56, column: 2, scope: !170)
!204 = !DILocation(line: 57, column: 1, scope: !170)
!205 = distinct !DISubprogram(name: "dummy", scope: !3, file: !3, line: 58, type: !65, scopeLine: 58, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!206 = !DILocation(line: 59, column: 2, scope: !205)
!207 = !DILocation(line: 60, column: 1, scope: !205)
!208 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 62, type: !209, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !22, !31}
!211 = !DILocalVariable(name: "argc", arg: 1, scope: !208, file: !3, line: 62, type: !22)
!212 = !DILocation(line: 62, column: 15, scope: !208)
!213 = !DILocalVariable(name: "argv", arg: 2, scope: !208, file: !3, line: 62, type: !31)
!214 = !DILocation(line: 62, column: 28, scope: !208)
!215 = !DILocation(line: 63, column: 1, scope: !208)
!216 = !DILocation(line: 63, column: 1, scope: !217)
!217 = distinct !DILexicalBlock(scope: !208, file: !3, line: 63, column: 1)
!218 = !DILocalVariable(name: "fp", scope: !208, file: !3, line: 64, type: !75)
!219 = !DILocation(line: 64, column: 7, scope: !208)
!220 = !DILocation(line: 64, column: 10, scope: !208)
!221 = !DILocalVariable(name: "len_start", scope: !208, file: !3, line: 65, type: !22)
!222 = !DILocation(line: 65, column: 7, scope: !208)
!223 = !DILocation(line: 66, column: 9, scope: !208)
!224 = !DILocation(line: 66, column: 34, scope: !208)
!225 = !DILocation(line: 66, column: 2, scope: !208)
!226 = !DILocation(line: 67, column: 30, scope: !208)
!227 = !DILocation(line: 67, column: 40, scope: !208)
!228 = !DILocation(line: 67, column: 2, scope: !208)
!229 = !DILocalVariable(name: "len_argv", scope: !208, file: !3, line: 68, type: !22)
!230 = !DILocation(line: 68, column: 6, scope: !208)
!231 = !DILocation(line: 68, column: 22, scope: !208)
!232 = !DILocation(line: 68, column: 15, scope: !208)
!233 = !DILocation(line: 69, column: 9, scope: !208)
!234 = !DILocation(line: 69, column: 33, scope: !208)
!235 = !DILocation(line: 69, column: 2, scope: !208)
!236 = !DILocation(line: 70, column: 9, scope: !208)
!237 = !DILocation(line: 70, column: 30, scope: !208)
!238 = !DILocation(line: 70, column: 39, scope: !208)
!239 = !DILocation(line: 70, column: 2, scope: !208)
!240 = !DILocalVariable(name: "len_sensitive_data", scope: !208, file: !3, line: 72, type: !22)
!241 = !DILocation(line: 72, column: 6, scope: !208)
!242 = !DILocation(line: 72, column: 25, scope: !208)
!243 = !DILocation(line: 73, column: 9, scope: !208)
!244 = !DILocation(line: 73, column: 43, scope: !208)
!245 = !DILocation(line: 73, column: 2, scope: !208)
!246 = !DILocation(line: 74, column: 37, scope: !208)
!247 = !DILocation(line: 74, column: 56, scope: !208)
!248 = !DILocation(line: 74, column: 2, scope: !208)
!249 = !DILocation(line: 75, column: 9, scope: !208)
!250 = !DILocation(line: 75, column: 2, scope: !208)
!251 = !DILocalVariable(name: "auth_ret", scope: !208, file: !3, line: 77, type: !22)
!252 = !DILocation(line: 77, column: 6, scope: !208)
!253 = !DILocation(line: 77, column: 20, scope: !208)
!254 = !DILocation(line: 77, column: 15, scope: !208)
!255 = !DILocalVariable(name: "fp1", scope: !208, file: !3, line: 79, type: !75)
!256 = !DILocation(line: 79, column: 8, scope: !208)
!257 = !DILocation(line: 79, column: 12, scope: !208)
!258 = !DILocalVariable(name: "len_auth_ret", scope: !208, file: !3, line: 80, type: !22)
!259 = !DILocation(line: 80, column: 6, scope: !208)
!260 = !DILocation(line: 81, column: 9, scope: !208)
!261 = !DILocation(line: 81, column: 37, scope: !208)
!262 = !DILocation(line: 81, column: 2, scope: !208)
!263 = !DILocation(line: 82, column: 33, scope: !208)
!264 = !DILocation(line: 82, column: 46, scope: !208)
!265 = !DILocation(line: 82, column: 2, scope: !208)
!266 = !DILocation(line: 83, column: 9, scope: !208)
!267 = !DILocation(line: 83, column: 33, scope: !208)
!268 = !DILocation(line: 83, column: 2, scope: !208)
!269 = !DILocation(line: 84, column: 9, scope: !208)
!270 = !DILocation(line: 84, column: 2, scope: !208)
!271 = !DILocation(line: 86, column: 6, scope: !272)
!272 = distinct !DILexicalBlock(scope: !208, file: !3, line: 86, column: 6)
!273 = !DILocation(line: 86, column: 6, scope: !208)
!274 = !DILocation(line: 87, column: 3, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !3, line: 86, column: 15)
!276 = !DILocation(line: 88, column: 3, scope: !275)
!277 = !DILocation(line: 89, column: 2, scope: !275)
!278 = !DILocation(line: 90, column: 3, scope: !279)
!279 = distinct !DILexicalBlock(scope: !272, file: !3, line: 89, column: 9)
!280 = !DILocation(line: 92, column: 1, scope: !208)
!281 = !DILocalVariable(name: "argc", arg: 1, scope: !27, file: !28, line: 57, type: !34)
!282 = !DILocation(line: 57, column: 34, scope: !27)
!283 = !DILocalVariable(name: "ptr", scope: !27, file: !28, line: 62, type: !32)
!284 = !DILocation(line: 62, column: 9, scope: !27)
!285 = !DILocalVariable(name: "rc", scope: !27, file: !28, line: 63, type: !22)
!286 = !DILocation(line: 63, column: 9, scope: !27)
!287 = !DILocation(line: 65, column: 7, scope: !288)
!288 = distinct !DILexicalBlock(scope: !27, file: !28, line: 65, column: 7)
!289 = !DILocation(line: 65, column: 44, scope: !288)
!290 = !DILocation(line: 65, column: 7, scope: !27)
!291 = !DILocation(line: 67, column: 3, scope: !27)
!292 = !DILocation(line: 67, column: 11, scope: !27)
!293 = !DILocation(line: 67, column: 10, scope: !27)
!294 = !DILocation(line: 69, column: 15, scope: !295)
!295 = distinct !DILexicalBlock(scope: !27, file: !28, line: 67, column: 16)
!296 = !DILocation(line: 69, column: 9, scope: !295)
!297 = !DILocation(line: 69, column: 5, scope: !295)
!298 = !DILocation(line: 69, column: 13, scope: !295)
!299 = !DILocation(line: 72, column: 5, scope: !295)
!300 = !DILocation(line: 72, column: 13, scope: !295)
!301 = !DILocation(line: 72, column: 12, scope: !295)
!302 = !DILocation(line: 72, column: 17, scope: !295)
!303 = !DILocation(line: 72, column: 21, scope: !295)
!304 = !DILocation(line: 72, column: 20, scope: !295)
!305 = !DILocation(line: 0, scope: !295)
!306 = !DILocation(line: 72, column: 39, scope: !295)
!307 = distinct !{!307, !299, !306, !308}
!308 = !{!"llvm.loop.mustprogress"}
!309 = !DILocation(line: 73, column: 6, scope: !295)
!310 = !DILocation(line: 73, column: 10, scope: !295)
!311 = !DILocation(line: 74, column: 8, scope: !295)
!312 = !DILocation(line: 77, column: 5, scope: !295)
!313 = !DILocation(line: 77, column: 13, scope: !295)
!314 = !DILocation(line: 77, column: 12, scope: !295)
!315 = !DILocation(line: 77, column: 17, scope: !295)
!316 = !DILocation(line: 77, column: 20, scope: !295)
!317 = !DILocation(line: 77, column: 38, scope: !295)
!318 = distinct !{!318, !312, !317, !308}
!319 = !DILocation(line: 79, column: 7, scope: !295)
!320 = distinct !{!320, !291, !321, !308}
!321 = !DILocation(line: 80, column: 3, scope: !27)
!322 = !DILocation(line: 82, column: 11, scope: !27)
!323 = !DILocation(line: 82, column: 4, scope: !27)
!324 = !DILocation(line: 82, column: 9, scope: !27)
!325 = !DILocation(line: 84, column: 3, scope: !27)
