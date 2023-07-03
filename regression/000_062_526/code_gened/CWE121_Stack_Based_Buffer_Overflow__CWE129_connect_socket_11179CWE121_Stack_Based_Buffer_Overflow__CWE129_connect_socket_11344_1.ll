; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11344_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11344_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11344_1(i8* %_goodB2G1_inputBuffer_0, void (i32)* %opsink) #0 !dbg !63 {
entry:
  %_goodB2G1_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_data_0 = alloca i32, align 4
  %_goodB2G1_recvResult_0 = alloca i32, align 4
  %_goodB2G1_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G1_connectSocket_0 = alloca i32, align 4
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B1_data_0 = alloca i32, align 4
  %_goodG2B1_i_0 = alloca i32, align 4
  %_goodG2B1_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G1_inputBuffer_0, i8** %_goodB2G1_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_inputBuffer_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_data_0, metadata !76, metadata !DIExpression()), !dbg !78
  store i32 -1, i32* %_goodB2G1_data_0, align 4, !dbg !79
  %call = call i32 (...) @globalReturnsTrue(), !dbg !80
  %tobool = icmp ne i32 %call, 0, !dbg !80
  br i1 %tobool, label %if.then, label %if.end22, !dbg !82

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_recvResult_0, metadata !83, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G1_service_0, metadata !87, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_connectSocket_0, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 -1, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !111
  br label %do.body, !dbg !112

do.body:                                          ; preds = %if.then
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !113
  store i32 %call1, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !115
  %0 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !116
  %cmp = icmp eq i32 %0, -1, !dbg !118
  br i1 %cmp, label %if.then2, label %if.end, !dbg !119

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !120

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %_goodB2G1_service_0 to i8*, !dbg !122
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !122
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 0, !dbg !123
  store i16 2, i16* %sin_family, align 4, !dbg !124
  %call3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !125
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 2, !dbg !126
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !127
  store i32 %call3, i32* %s_addr, align 4, !dbg !128
  %call4 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !129
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 1, !dbg !130
  store i16 %call4, i16* %sin_port, align 2, !dbg !131
  %2 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !132
  %3 = bitcast %struct.sockaddr_in* %_goodB2G1_service_0 to %struct.sockaddr*, !dbg !134
  %call5 = call i32 @connect(i32 %2, %struct.sockaddr* %3, i32 16), !dbg !135
  %cmp6 = icmp eq i32 %call5, -1, !dbg !136
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !137

if.then7:                                         ; preds = %if.end
  br label %do.end, !dbg !138

if.end8:                                          ; preds = %if.end
  %4 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !140
  %5 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !141
  %call9 = call i64 @recv(i32 %4, i8* %5, i64 13, i32 0), !dbg !142
  %conv = trunc i64 %call9 to i32, !dbg !142
  store i32 %conv, i32* %_goodB2G1_recvResult_0, align 4, !dbg !143
  %6 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !144
  %cmp10 = icmp eq i32 %6, -1, !dbg !146
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !147

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !148
  %cmp12 = icmp eq i32 %7, 0, !dbg !149
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !150

if.then14:                                        ; preds = %lor.lhs.false, %if.end8
  br label %do.end, !dbg !151

if.end15:                                         ; preds = %lor.lhs.false
  %8 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !153
  %9 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !154
  %idxprom = sext i32 %9 to i64, !dbg !153
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom, !dbg !153
  store i8 0, i8* %arrayidx, align 1, !dbg !155
  %10 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !156
  %call16 = call i32 @atoi(i8* %10) #9, !dbg !157
  store i32 %call16, i32* %_goodB2G1_data_0, align 4, !dbg !158
  br label %do.end, !dbg !159

do.end:                                           ; preds = %if.end15, %if.then14, %if.then7, %if.then2
  %11 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !160
  %cmp17 = icmp ne i32 %11, -1, !dbg !162
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !163

if.then19:                                        ; preds = %do.end
  %12 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !164
  %call20 = call i32 @close(i32 %12), !dbg !166
  br label %if.end21, !dbg !167

if.end21:                                         ; preds = %if.then19, %do.end
  br label %if.end22, !dbg !168

if.end22:                                         ; preds = %if.end21, %entry
  %call23 = call i32 (...) @globalReturnsFalse(), !dbg !169
  %tobool24 = icmp ne i32 %call23, 0, !dbg !169
  br i1 %tobool24, label %if.then25, label %if.else, !dbg !171

if.then25:                                        ; preds = %if.end22
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !172
  br label %if.end39, !dbg !174

if.else:                                          ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !175, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G1_buffer_0, metadata !179, metadata !DIExpression()), !dbg !183
  %13 = bitcast [10 x i32]* %_goodB2G1_buffer_0 to i8*, !dbg !183
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false), !dbg !183
  %14 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !184
  %cmp26 = icmp sge i32 %14, 0, !dbg !186
  br i1 %cmp26, label %land.lhs.true, label %if.else37, !dbg !187

land.lhs.true:                                    ; preds = %if.else
  %15 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !188
  %cmp28 = icmp slt i32 %15, 10, !dbg !189
  br i1 %cmp28, label %if.then30, label %if.else37, !dbg !190

if.then30:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !191
  %idxprom31 = sext i32 %16 to i64, !dbg !193
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom31, !dbg !193
  store i32 1, i32* %arrayidx32, align 4, !dbg !194
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !195
  br label %for.cond, !dbg !197

for.cond:                                         ; preds = %for.inc, %if.then30
  %17 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !198
  %cmp33 = icmp slt i32 %17, 10, !dbg !200
  br i1 %cmp33, label %for.body, label %for.end, !dbg !201

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !202
  %idxprom35 = sext i32 %18 to i64, !dbg !204
  %arrayidx36 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom35, !dbg !204
  %19 = load i32, i32* %arrayidx36, align 4, !dbg !204
  call void @printIntLine(i32 %19), !dbg !205
  br label %for.inc, !dbg !206

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !207
  %inc = add nsw i32 %20, 1, !dbg !207
  store i32 %inc, i32* %_goodB2G1_i_0, align 4, !dbg !207
  br label %for.cond, !dbg !208, !llvm.loop !209

for.end:                                          ; preds = %for.cond
  br label %if.end38, !dbg !212

if.else37:                                        ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !213
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %for.end
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then25
  br label %goodB2G1_label_, !dbg !215

goodB2G1_label_:                                  ; preds = %if.end39
  call void @llvm.dbg.label(metadata !216), !dbg !217
  call void (...) @goodB2G2(), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_data_0, metadata !219, metadata !DIExpression()), !dbg !221
  store i32 -1, i32* %_goodG2B1_data_0, align 4, !dbg !222
  %call40 = call i32 (...) @globalReturnsFalse(), !dbg !223
  %tobool41 = icmp ne i32 %call40, 0, !dbg !223
  br i1 %tobool41, label %if.then42, label %if.else43, !dbg !225

if.then42:                                        ; preds = %goodB2G1_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !226
  br label %if.end44, !dbg !228

if.else43:                                        ; preds = %goodB2G1_label_
  store i32 7, i32* %_goodG2B1_data_0, align 4, !dbg !229
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.then42
  %call45 = call i32 (...) @globalReturnsTrue(), !dbg !231
  %tobool46 = icmp ne i32 %call45, 0, !dbg !231
  br i1 %tobool46, label %if.then47, label %if.end62, !dbg !233

if.then47:                                        ; preds = %if.end44
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !234, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B1_buffer_0, metadata !238, metadata !DIExpression()), !dbg !239
  %21 = bitcast [10 x i32]* %_goodG2B1_buffer_0 to i8*, !dbg !239
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 40, i1 false), !dbg !239
  %22 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !240
  %cmp48 = icmp sge i32 %22, 0, !dbg !242
  br i1 %cmp48, label %if.then50, label %if.else60, !dbg !243

if.then50:                                        ; preds = %if.then47
  %23 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !244
  %24 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !246
  call void %23(i32 %24), !dbg !244
  store i32 0, i32* %_goodG2B1_i_0, align 4, !dbg !247
  br label %for.cond51, !dbg !249

for.cond51:                                       ; preds = %for.inc57, %if.then50
  %25 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !250
  %cmp52 = icmp slt i32 %25, 10, !dbg !252
  br i1 %cmp52, label %for.body54, label %for.end59, !dbg !253

for.body54:                                       ; preds = %for.cond51
  %26 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !254
  %idxprom55 = sext i32 %26 to i64, !dbg !256
  %arrayidx56 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B1_buffer_0, i64 0, i64 %idxprom55, !dbg !256
  %27 = load i32, i32* %arrayidx56, align 4, !dbg !256
  call void @printIntLine(i32 %27), !dbg !257
  br label %for.inc57, !dbg !258

for.inc57:                                        ; preds = %for.body54
  %28 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !259
  %inc58 = add nsw i32 %28, 1, !dbg !259
  store i32 %inc58, i32* %_goodG2B1_i_0, align 4, !dbg !259
  br label %for.cond51, !dbg !260, !llvm.loop !261

for.end59:                                        ; preds = %for.cond51
  br label %if.end61, !dbg !263

if.else60:                                        ; preds = %if.then47
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !264
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %for.end59
  br label %if.end62, !dbg !266

if.end62:                                         ; preds = %if.end61, %if.end44
  br label %goodG2B1_label_, !dbg !267

goodG2B1_label_:                                  ; preds = %if.end62
  call void @llvm.dbg.label(metadata !268), !dbg !269
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_good_label_, !dbg !270

CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !271), !dbg !272
  ret void, !dbg !273
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @globalReturnsTrue(...) #2

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket(...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @recv(i32, i8*, i64, i32) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #6

declare dso_local i32 @close(i32) #2

declare dso_local i32 @globalReturnsFalse(...) #2

declare dso_local void @printLine(i8*) #2

declare dso_local void @printIntLine(i32) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodB2G2(...) #2

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11344_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_526/code_gened")
!2 = !{!3, !16}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !4, line: 24, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15}
!7 = !DIEnumerator(name: "SOCK_STREAM", value: 1, isUnsigned: true)
!8 = !DIEnumerator(name: "SOCK_DGRAM", value: 2, isUnsigned: true)
!9 = !DIEnumerator(name: "SOCK_RAW", value: 3, isUnsigned: true)
!10 = !DIEnumerator(name: "SOCK_RDM", value: 4, isUnsigned: true)
!11 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5, isUnsigned: true)
!12 = !DIEnumerator(name: "SOCK_DCCP", value: 6, isUnsigned: true)
!13 = !DIEnumerator(name: "SOCK_PACKET", value: 10, isUnsigned: true)
!14 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288, isUnsigned: true)
!15 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 40, baseType: !5, size: 32, elements: !18)
!17 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!19 = !DIEnumerator(name: "IPPROTO_IP", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2, isUnsigned: true)
!22 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4, isUnsigned: true)
!23 = !DIEnumerator(name: "IPPROTO_TCP", value: 6, isUnsigned: true)
!24 = !DIEnumerator(name: "IPPROTO_EGP", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "IPPROTO_PUP", value: 12, isUnsigned: true)
!26 = !DIEnumerator(name: "IPPROTO_UDP", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "IPPROTO_IDP", value: 22, isUnsigned: true)
!28 = !DIEnumerator(name: "IPPROTO_TP", value: 29, isUnsigned: true)
!29 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33, isUnsigned: true)
!30 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41, isUnsigned: true)
!31 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46, isUnsigned: true)
!32 = !DIEnumerator(name: "IPPROTO_GRE", value: 47, isUnsigned: true)
!33 = !DIEnumerator(name: "IPPROTO_ESP", value: 50, isUnsigned: true)
!34 = !DIEnumerator(name: "IPPROTO_AH", value: 51, isUnsigned: true)
!35 = !DIEnumerator(name: "IPPROTO_MTP", value: 92, isUnsigned: true)
!36 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94, isUnsigned: true)
!37 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98, isUnsigned: true)
!38 = !DIEnumerator(name: "IPPROTO_PIM", value: 103, isUnsigned: true)
!39 = !DIEnumerator(name: "IPPROTO_COMP", value: 108, isUnsigned: true)
!40 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132, isUnsigned: true)
!41 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136, isUnsigned: true)
!42 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137, isUnsigned: true)
!43 = !DIEnumerator(name: "IPPROTO_RAW", value: 255, isUnsigned: true)
!44 = !DIEnumerator(name: "IPPROTO_MAX", value: 256, isUnsigned: true)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !48, line: 178, size: 128, elements: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!49 = !{!50, !54}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !47, file: !48, line: 180, baseType: !51, size: 16)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !52, line: 28, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !47, file: !48, line: 181, baseType: !55, size: 112, offset: 16)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 112, elements: !57)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !{!58}
!58 = !DISubrange(count: 14)
!59 = !{i32 7, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = !{!"clang version 12.0.0"}
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11179CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11344_1", scope: !1, file: !1, line: 3, type: !64, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G1_inputBuffer_0", arg: 1, scope: !63, file: !1, line: 3, type: !66)
!73 = !DILocation(line: 3, column: 141, scope: !63)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !63, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 173, scope: !63)
!76 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !77, file: !1, line: 6, type: !70)
!77 = distinct !DILexicalBlock(scope: !63, file: !1, line: 5, column: 3)
!78 = !DILocation(line: 6, column: 9, scope: !77)
!79 = !DILocation(line: 7, column: 22, scope: !77)
!80 = !DILocation(line: 8, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 8, column: 9)
!82 = !DILocation(line: 8, column: 9, scope: !77)
!83 = !DILocalVariable(name: "_goodB2G1_recvResult_0", scope: !84, file: !1, line: 11, type: !70)
!84 = distinct !DILexicalBlock(scope: !85, file: !1, line: 10, column: 7)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 9, column: 5)
!86 = !DILocation(line: 11, column: 13, scope: !84)
!87 = !DILocalVariable(name: "_goodB2G1_service_0", scope: !84, file: !1, line: 12, type: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !89)
!89 = !{!90, !91, !97, !104}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !88, file: !17, line: 240, baseType: !51, size: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !88, file: !17, line: 241, baseType: !92, size: 16, offset: 16)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !94, line: 25, baseType: !95)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !96, line: 40, baseType: !53)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !88, file: !17, line: 242, baseType: !98, size: 32, offset: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !98, file: !17, line: 33, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !94, line: 26, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !96, line: 42, baseType: !5)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !88, file: !17, line: 245, baseType: !105, size: 64, offset: 64)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, elements: !107)
!106 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!107 = !{!108}
!108 = !DISubrange(count: 8)
!109 = !DILocation(line: 12, column: 28, scope: !84)
!110 = !DILocalVariable(name: "_goodB2G1_connectSocket_0", scope: !84, file: !1, line: 13, type: !70)
!111 = !DILocation(line: 13, column: 13, scope: !84)
!112 = !DILocation(line: 14, column: 9, scope: !84)
!113 = !DILocation(line: 16, column: 39, scope: !114)
!114 = distinct !DILexicalBlock(scope: !84, file: !1, line: 15, column: 9)
!115 = !DILocation(line: 16, column: 37, scope: !114)
!116 = !DILocation(line: 17, column: 15, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !1, line: 17, column: 15)
!118 = !DILocation(line: 17, column: 41, scope: !117)
!119 = !DILocation(line: 17, column: 15, scope: !114)
!120 = !DILocation(line: 19, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 18, column: 11)
!122 = !DILocation(line: 22, column: 11, scope: !114)
!123 = !DILocation(line: 23, column: 31, scope: !114)
!124 = !DILocation(line: 23, column: 42, scope: !114)
!125 = !DILocation(line: 24, column: 49, scope: !114)
!126 = !DILocation(line: 24, column: 31, scope: !114)
!127 = !DILocation(line: 24, column: 40, scope: !114)
!128 = !DILocation(line: 24, column: 47, scope: !114)
!129 = !DILocation(line: 25, column: 42, scope: !114)
!130 = !DILocation(line: 25, column: 31, scope: !114)
!131 = !DILocation(line: 25, column: 40, scope: !114)
!132 = !DILocation(line: 26, column: 23, scope: !133)
!133 = distinct !DILexicalBlock(scope: !114, file: !1, line: 26, column: 15)
!134 = !DILocation(line: 26, column: 50, scope: !133)
!135 = !DILocation(line: 26, column: 15, scope: !133)
!136 = !DILocation(line: 26, column: 123, scope: !133)
!137 = !DILocation(line: 26, column: 15, scope: !114)
!138 = !DILocation(line: 28, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !133, file: !1, line: 27, column: 11)
!140 = !DILocation(line: 31, column: 41, scope: !114)
!141 = !DILocation(line: 31, column: 68, scope: !114)
!142 = !DILocation(line: 31, column: 36, scope: !114)
!143 = !DILocation(line: 31, column: 34, scope: !114)
!144 = !DILocation(line: 32, column: 16, scope: !145)
!145 = distinct !DILexicalBlock(scope: !114, file: !1, line: 32, column: 15)
!146 = !DILocation(line: 32, column: 39, scope: !145)
!147 = !DILocation(line: 32, column: 48, scope: !145)
!148 = !DILocation(line: 32, column: 52, scope: !145)
!149 = !DILocation(line: 32, column: 75, scope: !145)
!150 = !DILocation(line: 32, column: 15, scope: !114)
!151 = !DILocation(line: 34, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !145, file: !1, line: 33, column: 11)
!153 = !DILocation(line: 37, column: 11, scope: !114)
!154 = !DILocation(line: 37, column: 35, scope: !114)
!155 = !DILocation(line: 37, column: 59, scope: !114)
!156 = !DILocation(line: 38, column: 35, scope: !114)
!157 = !DILocation(line: 38, column: 30, scope: !114)
!158 = !DILocation(line: 38, column: 28, scope: !114)
!159 = !DILocation(line: 39, column: 9, scope: !114)
!160 = !DILocation(line: 41, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !84, file: !1, line: 41, column: 13)
!162 = !DILocation(line: 41, column: 39, scope: !161)
!163 = !DILocation(line: 41, column: 13, scope: !84)
!164 = !DILocation(line: 43, column: 17, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 42, column: 9)
!166 = !DILocation(line: 43, column: 11, scope: !165)
!167 = !DILocation(line: 44, column: 9, scope: !165)
!168 = !DILocation(line: 47, column: 5, scope: !85)
!169 = !DILocation(line: 49, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !77, file: !1, line: 49, column: 9)
!171 = !DILocation(line: 49, column: 9, scope: !77)
!172 = !DILocation(line: 51, column: 7, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !1, line: 50, column: 5)
!174 = !DILocation(line: 52, column: 5, scope: !173)
!175 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !176, file: !1, line: 56, type: !70)
!176 = distinct !DILexicalBlock(scope: !177, file: !1, line: 55, column: 7)
!177 = distinct !DILexicalBlock(scope: !170, file: !1, line: 54, column: 5)
!178 = !DILocation(line: 56, column: 13, scope: !176)
!179 = !DILocalVariable(name: "_goodB2G1_buffer_0", scope: !176, file: !1, line: 57, type: !180)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 10)
!183 = !DILocation(line: 57, column: 13, scope: !176)
!184 = !DILocation(line: 58, column: 14, scope: !185)
!185 = distinct !DILexicalBlock(scope: !176, file: !1, line: 58, column: 13)
!186 = !DILocation(line: 58, column: 31, scope: !185)
!187 = !DILocation(line: 58, column: 37, scope: !185)
!188 = !DILocation(line: 58, column: 41, scope: !185)
!189 = !DILocation(line: 58, column: 58, scope: !185)
!190 = !DILocation(line: 58, column: 13, scope: !176)
!191 = !DILocation(line: 60, column: 30, scope: !192)
!192 = distinct !DILexicalBlock(scope: !185, file: !1, line: 59, column: 9)
!193 = !DILocation(line: 60, column: 11, scope: !192)
!194 = !DILocation(line: 60, column: 48, scope: !192)
!195 = !DILocation(line: 61, column: 30, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 61, column: 11)
!197 = !DILocation(line: 61, column: 16, scope: !196)
!198 = !DILocation(line: 61, column: 35, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !1, line: 61, column: 11)
!200 = !DILocation(line: 61, column: 49, scope: !199)
!201 = !DILocation(line: 61, column: 11, scope: !196)
!202 = !DILocation(line: 63, column: 45, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 62, column: 11)
!204 = !DILocation(line: 63, column: 26, scope: !203)
!205 = !DILocation(line: 63, column: 13, scope: !203)
!206 = !DILocation(line: 64, column: 11, scope: !203)
!207 = !DILocation(line: 61, column: 68, scope: !199)
!208 = !DILocation(line: 61, column: 11, scope: !199)
!209 = distinct !{!209, !201, !210, !211}
!210 = !DILocation(line: 64, column: 11, scope: !196)
!211 = !{!"llvm.loop.mustprogress"}
!212 = !DILocation(line: 66, column: 9, scope: !192)
!213 = !DILocation(line: 69, column: 11, scope: !214)
!214 = distinct !DILexicalBlock(scope: !185, file: !1, line: 68, column: 9)
!215 = !DILocation(line: 49, column: 28, scope: !170)
!216 = !DILabel(scope: !77, name: "goodB2G1_label_", file: !1, line: 75)
!217 = !DILocation(line: 75, column: 5, scope: !77)
!218 = !DILocation(line: 81, column: 3, scope: !63)
!219 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !220, file: !1, line: 83, type: !70)
!220 = distinct !DILexicalBlock(scope: !63, file: !1, line: 82, column: 3)
!221 = !DILocation(line: 83, column: 9, scope: !220)
!222 = !DILocation(line: 84, column: 22, scope: !220)
!223 = !DILocation(line: 85, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 85, column: 9)
!225 = !DILocation(line: 85, column: 9, scope: !220)
!226 = !DILocation(line: 87, column: 7, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !1, line: 86, column: 5)
!228 = !DILocation(line: 88, column: 5, scope: !227)
!229 = !DILocation(line: 91, column: 24, scope: !230)
!230 = distinct !DILexicalBlock(scope: !224, file: !1, line: 90, column: 5)
!231 = !DILocation(line: 94, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !220, file: !1, line: 94, column: 9)
!233 = !DILocation(line: 94, column: 9, scope: !220)
!234 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !235, file: !1, line: 97, type: !70)
!235 = distinct !DILexicalBlock(scope: !236, file: !1, line: 96, column: 7)
!236 = distinct !DILexicalBlock(scope: !232, file: !1, line: 95, column: 5)
!237 = !DILocation(line: 97, column: 13, scope: !235)
!238 = !DILocalVariable(name: "_goodG2B1_buffer_0", scope: !235, file: !1, line: 98, type: !180)
!239 = !DILocation(line: 98, column: 13, scope: !235)
!240 = !DILocation(line: 99, column: 13, scope: !241)
!241 = distinct !DILexicalBlock(scope: !235, file: !1, line: 99, column: 13)
!242 = !DILocation(line: 99, column: 30, scope: !241)
!243 = !DILocation(line: 99, column: 13, scope: !235)
!244 = !DILocation(line: 101, column: 11, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !1, line: 100, column: 9)
!246 = !DILocation(line: 101, column: 18, scope: !245)
!247 = !DILocation(line: 102, column: 30, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !1, line: 102, column: 11)
!249 = !DILocation(line: 102, column: 16, scope: !248)
!250 = !DILocation(line: 102, column: 35, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !1, line: 102, column: 11)
!252 = !DILocation(line: 102, column: 49, scope: !251)
!253 = !DILocation(line: 102, column: 11, scope: !248)
!254 = !DILocation(line: 104, column: 45, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !1, line: 103, column: 11)
!256 = !DILocation(line: 104, column: 26, scope: !255)
!257 = !DILocation(line: 104, column: 13, scope: !255)
!258 = !DILocation(line: 105, column: 11, scope: !255)
!259 = !DILocation(line: 102, column: 68, scope: !251)
!260 = !DILocation(line: 102, column: 11, scope: !251)
!261 = distinct !{!261, !253, !262, !211}
!262 = !DILocation(line: 105, column: 11, scope: !248)
!263 = !DILocation(line: 107, column: 9, scope: !245)
!264 = !DILocation(line: 110, column: 11, scope: !265)
!265 = distinct !DILexicalBlock(scope: !241, file: !1, line: 109, column: 9)
!266 = !DILocation(line: 114, column: 5, scope: !236)
!267 = !DILocation(line: 94, column: 27, scope: !232)
!268 = !DILabel(scope: !220, name: "goodG2B1_label_", file: !1, line: 116)
!269 = !DILocation(line: 116, column: 5, scope: !220)
!270 = !DILocation(line: 121, column: 3, scope: !220)
!271 = !DILabel(scope: !63, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_11_good_label_", file: !1, line: 122)
!272 = !DILocation(line: 122, column: 3, scope: !63)
!273 = !DILocation(line: 127, column: 1, scope: !63)
