; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17181CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17249_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17181CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17249_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17181CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17249_1(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !63 {
entry:
  %_goodB2G_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_k_0 = alloca i32, align 4
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_connectSocket_0 = alloca i32, align 4
  %_goodB2G_i_1 = alloca i32, align 4
  %_goodB2G_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B_h_0 = alloca i32, align 4
  %_goodG2B_j_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i32, align 4
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G_inputBuffer_0, i8** %_goodB2G_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_inputBuffer_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !76, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_k_0, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !81, metadata !DIExpression()), !dbg !82
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !83
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !84
  br label %for.cond, !dbg !86

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !87
  %cmp = icmp slt i32 %0, 1, !dbg !89
  br i1 %cmp, label %for.body, label %for.end, !dbg !90

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !91, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !95, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_connectSocket_0, metadata !118, metadata !DIExpression()), !dbg !119
  store i32 -1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !119
  br label %do.body, !dbg !120

do.body:                                          ; preds = %for.body
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !121
  store i32 %call, i32* %_goodB2G_connectSocket_0, align 4, !dbg !123
  %1 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !124
  %cmp1 = icmp eq i32 %1, -1, !dbg !126
  br i1 %cmp1, label %if.then, label %if.end, !dbg !127

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !128

if.end:                                           ; preds = %do.body
  %2 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !130
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false), !dbg !130
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !131
  store i16 2, i16* %sin_family, align 4, !dbg !132
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !133
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !134
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !135
  store i32 %call2, i32* %s_addr, align 4, !dbg !136
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !137
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !138
  store i16 %call3, i16* %sin_port, align 2, !dbg !139
  %3 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !140
  %4 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !142
  %call4 = call i32 @connect(i32 %3, %struct.sockaddr* %4, i32 16), !dbg !143
  %cmp5 = icmp eq i32 %call4, -1, !dbg !144
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !145

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !146

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !148
  %6 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !149
  %call8 = call i64 @recv(i32 %5, i8* %6, i64 13, i32 0), !dbg !150
  %conv = trunc i64 %call8 to i32, !dbg !150
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !151
  %7 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !152
  %cmp9 = icmp eq i32 %7, -1, !dbg !154
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !155

lor.lhs.false:                                    ; preds = %if.end7
  %8 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !156
  %cmp11 = icmp eq i32 %8, 0, !dbg !157
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !158

if.then13:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !159

if.end14:                                         ; preds = %lor.lhs.false
  %9 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !161
  %10 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !162
  %idxprom = sext i32 %10 to i64, !dbg !161
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom, !dbg !161
  store i8 0, i8* %arrayidx, align 1, !dbg !163
  %11 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !164
  %call15 = call i32 @atoi(i8* %11) #9, !dbg !165
  store i32 %call15, i32* %_goodB2G_data_0, align 4, !dbg !166
  br label %do.end, !dbg !167

do.end:                                           ; preds = %if.end14, %if.then13, %if.then6, %if.then
  %12 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !168
  %cmp16 = icmp ne i32 %12, -1, !dbg !170
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !171

if.then18:                                        ; preds = %do.end
  %13 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !172
  %call19 = call i32 @close(i32 %13), !dbg !174
  br label %if.end20, !dbg !175

if.end20:                                         ; preds = %if.then18, %do.end
  br label %for.inc, !dbg !176

for.inc:                                          ; preds = %if.end20
  %14 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !177
  %inc = add nsw i32 %14, 1, !dbg !177
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !177
  br label %for.cond, !dbg !178, !llvm.loop !179

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %_goodB2G_k_0, align 4, !dbg !182
  br label %for.cond21, !dbg !184

for.cond21:                                       ; preds = %for.inc42, %for.end
  %15 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !185
  %cmp22 = icmp slt i32 %15, 1, !dbg !187
  br i1 %cmp22, label %for.body24, label %for.end44, !dbg !188

for.body24:                                       ; preds = %for.cond21
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_1, metadata !189, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G_buffer_0, metadata !193, metadata !DIExpression()), !dbg !197
  %16 = bitcast [10 x i32]* %_goodB2G_buffer_0 to i8*, !dbg !197
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 40, i1 false), !dbg !197
  %17 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !198
  %cmp25 = icmp sge i32 %17, 0, !dbg !200
  br i1 %cmp25, label %land.lhs.true, label %if.else, !dbg !201

land.lhs.true:                                    ; preds = %for.body24
  %18 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !202
  %cmp27 = icmp slt i32 %18, 10, !dbg !203
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !204

if.then29:                                        ; preds = %land.lhs.true
  %19 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !205
  %idxprom30 = sext i32 %19 to i64, !dbg !207
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom30, !dbg !207
  store i32 1, i32* %arrayidx31, align 4, !dbg !208
  store i32 0, i32* %_goodB2G_i_1, align 4, !dbg !209
  br label %for.cond32, !dbg !211

for.cond32:                                       ; preds = %for.inc38, %if.then29
  %20 = load i32, i32* %_goodB2G_i_1, align 4, !dbg !212
  %cmp33 = icmp slt i32 %20, 10, !dbg !214
  br i1 %cmp33, label %for.body35, label %for.end40, !dbg !215

for.body35:                                       ; preds = %for.cond32
  %21 = load i32, i32* %_goodB2G_i_1, align 4, !dbg !216
  %idxprom36 = sext i32 %21 to i64, !dbg !218
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom36, !dbg !218
  %22 = load i32, i32* %arrayidx37, align 4, !dbg !218
  call void @printIntLine(i32 %22), !dbg !219
  br label %for.inc38, !dbg !220

for.inc38:                                        ; preds = %for.body35
  %23 = load i32, i32* %_goodB2G_i_1, align 4, !dbg !221
  %inc39 = add nsw i32 %23, 1, !dbg !221
  store i32 %inc39, i32* %_goodB2G_i_1, align 4, !dbg !221
  br label %for.cond32, !dbg !222, !llvm.loop !223

for.end40:                                        ; preds = %for.cond32
  br label %if.end41, !dbg !225

if.else:                                          ; preds = %land.lhs.true, %for.body24
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !226
  br label %if.end41

if.end41:                                         ; preds = %if.else, %for.end40
  br label %for.inc42, !dbg !228

for.inc42:                                        ; preds = %if.end41
  %24 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !229
  %inc43 = add nsw i32 %24, 1, !dbg !229
  store i32 %inc43, i32* %_goodB2G_k_0, align 4, !dbg !229
  br label %for.cond21, !dbg !230, !llvm.loop !231

for.end44:                                        ; preds = %for.cond21
  br label %goodB2G_label_, !dbg !232

goodB2G_label_:                                   ; preds = %for.end44
  call void @llvm.dbg.label(metadata !233), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_h_0, metadata !235, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_j_0, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_data_0, metadata !240, metadata !DIExpression()), !dbg !241
  store i32 -1, i32* %_goodG2B_data_0, align 4, !dbg !242
  store i32 0, i32* %_goodG2B_h_0, align 4, !dbg !243
  br label %for.cond45, !dbg !245

for.cond45:                                       ; preds = %for.inc49, %goodB2G_label_
  %25 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !246
  %cmp46 = icmp slt i32 %25, 1, !dbg !248
  br i1 %cmp46, label %for.body48, label %for.end51, !dbg !249

for.body48:                                       ; preds = %for.cond45
  store i32 7, i32* %_goodG2B_data_0, align 4, !dbg !250
  br label %for.inc49, !dbg !252

for.inc49:                                        ; preds = %for.body48
  %26 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !253
  %inc50 = add nsw i32 %26, 1, !dbg !253
  store i32 %inc50, i32* %_goodG2B_h_0, align 4, !dbg !253
  br label %for.cond45, !dbg !254, !llvm.loop !255

for.end51:                                        ; preds = %for.cond45
  store i32 0, i32* %_goodG2B_j_0, align 4, !dbg !257
  br label %for.cond52, !dbg !259

for.cond52:                                       ; preds = %for.inc70, %for.end51
  %27 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !260
  %cmp53 = icmp slt i32 %27, 1, !dbg !262
  br i1 %cmp53, label %for.body55, label %for.end72, !dbg !263

for.body55:                                       ; preds = %for.cond52
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !264, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B_buffer_0, metadata !268, metadata !DIExpression()), !dbg !269
  %28 = bitcast [10 x i32]* %_goodG2B_buffer_0 to i8*, !dbg !269
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 40, i1 false), !dbg !269
  %29 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !270
  %cmp56 = icmp sge i32 %29, 0, !dbg !272
  br i1 %cmp56, label %if.then58, label %if.else68, !dbg !273

if.then58:                                        ; preds = %for.body55
  %30 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !274
  %31 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !276
  call void %30(i32 %31), !dbg !274
  store i32 0, i32* %_goodG2B_i_0, align 4, !dbg !277
  br label %for.cond59, !dbg !279

for.cond59:                                       ; preds = %for.inc65, %if.then58
  %32 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !280
  %cmp60 = icmp slt i32 %32, 10, !dbg !282
  br i1 %cmp60, label %for.body62, label %for.end67, !dbg !283

for.body62:                                       ; preds = %for.cond59
  %33 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !284
  %idxprom63 = sext i32 %33 to i64, !dbg !286
  %arrayidx64 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B_buffer_0, i64 0, i64 %idxprom63, !dbg !286
  %34 = load i32, i32* %arrayidx64, align 4, !dbg !286
  call void @printIntLine(i32 %34), !dbg !287
  br label %for.inc65, !dbg !288

for.inc65:                                        ; preds = %for.body62
  %35 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !289
  %inc66 = add nsw i32 %35, 1, !dbg !289
  store i32 %inc66, i32* %_goodG2B_i_0, align 4, !dbg !289
  br label %for.cond59, !dbg !290, !llvm.loop !291

for.end67:                                        ; preds = %for.cond59
  br label %if.end69, !dbg !293

if.else68:                                        ; preds = %for.body55
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !294
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %for.end67
  br label %for.inc70, !dbg !296

for.inc70:                                        ; preds = %if.end69
  %36 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !297
  %inc71 = add nsw i32 %36, 1, !dbg !297
  store i32 %inc71, i32* %_goodG2B_j_0, align 4, !dbg !297
  br label %for.cond52, !dbg !298, !llvm.loop !299

for.end72:                                        ; preds = %for.cond52
  br label %goodG2B_label_, !dbg !300

goodG2B_label_:                                   ; preds = %for.end72
  call void @llvm.dbg.label(metadata !301), !dbg !302
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_good_label_, !dbg !303

CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !304), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

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

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17181CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17249_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_532/code_gened")
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
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17181CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17249_1", scope: !1, file: !1, line: 3, type: !64, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G_inputBuffer_0", arg: 1, scope: !63, file: !1, line: 3, type: !66)
!73 = !DILocation(line: 3, column: 141, scope: !63)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !63, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 172, scope: !63)
!76 = !DILocalVariable(name: "_goodB2G_i_0", scope: !77, file: !1, line: 6, type: !70)
!77 = distinct !DILexicalBlock(scope: !63, file: !1, line: 5, column: 3)
!78 = !DILocation(line: 6, column: 9, scope: !77)
!79 = !DILocalVariable(name: "_goodB2G_k_0", scope: !77, file: !1, line: 7, type: !70)
!80 = !DILocation(line: 7, column: 9, scope: !77)
!81 = !DILocalVariable(name: "_goodB2G_data_0", scope: !77, file: !1, line: 8, type: !70)
!82 = !DILocation(line: 8, column: 9, scope: !77)
!83 = !DILocation(line: 9, column: 21, scope: !77)
!84 = !DILocation(line: 10, column: 23, scope: !85)
!85 = distinct !DILexicalBlock(scope: !77, file: !1, line: 10, column: 5)
!86 = !DILocation(line: 10, column: 10, scope: !85)
!87 = !DILocation(line: 10, column: 28, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 10, column: 5)
!89 = !DILocation(line: 10, column: 41, scope: !88)
!90 = !DILocation(line: 10, column: 5, scope: !85)
!91 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !92, file: !1, line: 13, type: !70)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 12, column: 7)
!93 = distinct !DILexicalBlock(scope: !88, file: !1, line: 11, column: 5)
!94 = !DILocation(line: 13, column: 13, scope: !92)
!95 = !DILocalVariable(name: "_goodB2G_service_0", scope: !92, file: !1, line: 14, type: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !97)
!97 = !{!98, !99, !105, !112}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !96, file: !17, line: 240, baseType: !51, size: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !96, file: !17, line: 241, baseType: !100, size: 16, offset: 16)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !102, line: 25, baseType: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !104, line: 40, baseType: !53)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !96, file: !17, line: 242, baseType: !106, size: 32, offset: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !106, file: !17, line: 33, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !102, line: 26, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !104, line: 42, baseType: !5)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !96, file: !17, line: 245, baseType: !113, size: 64, offset: 64)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, elements: !115)
!114 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!115 = !{!116}
!116 = !DISubrange(count: 8)
!117 = !DILocation(line: 14, column: 28, scope: !92)
!118 = !DILocalVariable(name: "_goodB2G_connectSocket_0", scope: !92, file: !1, line: 15, type: !70)
!119 = !DILocation(line: 15, column: 13, scope: !92)
!120 = !DILocation(line: 16, column: 9, scope: !92)
!121 = !DILocation(line: 18, column: 38, scope: !122)
!122 = distinct !DILexicalBlock(scope: !92, file: !1, line: 17, column: 9)
!123 = !DILocation(line: 18, column: 36, scope: !122)
!124 = !DILocation(line: 19, column: 15, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 19, column: 15)
!126 = !DILocation(line: 19, column: 40, scope: !125)
!127 = !DILocation(line: 19, column: 15, scope: !122)
!128 = !DILocation(line: 21, column: 13, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 20, column: 11)
!130 = !DILocation(line: 24, column: 11, scope: !122)
!131 = !DILocation(line: 25, column: 30, scope: !122)
!132 = !DILocation(line: 25, column: 41, scope: !122)
!133 = !DILocation(line: 26, column: 48, scope: !122)
!134 = !DILocation(line: 26, column: 30, scope: !122)
!135 = !DILocation(line: 26, column: 39, scope: !122)
!136 = !DILocation(line: 26, column: 46, scope: !122)
!137 = !DILocation(line: 27, column: 41, scope: !122)
!138 = !DILocation(line: 27, column: 30, scope: !122)
!139 = !DILocation(line: 27, column: 39, scope: !122)
!140 = !DILocation(line: 28, column: 23, scope: !141)
!141 = distinct !DILexicalBlock(scope: !122, file: !1, line: 28, column: 15)
!142 = !DILocation(line: 28, column: 49, scope: !141)
!143 = !DILocation(line: 28, column: 15, scope: !141)
!144 = !DILocation(line: 28, column: 120, scope: !141)
!145 = !DILocation(line: 28, column: 15, scope: !122)
!146 = !DILocation(line: 30, column: 13, scope: !147)
!147 = distinct !DILexicalBlock(scope: !141, file: !1, line: 29, column: 11)
!148 = !DILocation(line: 33, column: 40, scope: !122)
!149 = !DILocation(line: 33, column: 66, scope: !122)
!150 = !DILocation(line: 33, column: 35, scope: !122)
!151 = !DILocation(line: 33, column: 33, scope: !122)
!152 = !DILocation(line: 34, column: 16, scope: !153)
!153 = distinct !DILexicalBlock(scope: !122, file: !1, line: 34, column: 15)
!154 = !DILocation(line: 34, column: 38, scope: !153)
!155 = !DILocation(line: 34, column: 47, scope: !153)
!156 = !DILocation(line: 34, column: 51, scope: !153)
!157 = !DILocation(line: 34, column: 73, scope: !153)
!158 = !DILocation(line: 34, column: 15, scope: !122)
!159 = !DILocation(line: 36, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !153, file: !1, line: 35, column: 11)
!161 = !DILocation(line: 39, column: 11, scope: !122)
!162 = !DILocation(line: 39, column: 34, scope: !122)
!163 = !DILocation(line: 39, column: 57, scope: !122)
!164 = !DILocation(line: 40, column: 34, scope: !122)
!165 = !DILocation(line: 40, column: 29, scope: !122)
!166 = !DILocation(line: 40, column: 27, scope: !122)
!167 = !DILocation(line: 41, column: 9, scope: !122)
!168 = !DILocation(line: 43, column: 13, scope: !169)
!169 = distinct !DILexicalBlock(scope: !92, file: !1, line: 43, column: 13)
!170 = !DILocation(line: 43, column: 38, scope: !169)
!171 = !DILocation(line: 43, column: 13, scope: !92)
!172 = !DILocation(line: 45, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 44, column: 9)
!174 = !DILocation(line: 45, column: 11, scope: !173)
!175 = !DILocation(line: 46, column: 9, scope: !173)
!176 = !DILocation(line: 49, column: 5, scope: !93)
!177 = !DILocation(line: 10, column: 58, scope: !88)
!178 = !DILocation(line: 10, column: 5, scope: !88)
!179 = distinct !{!179, !90, !180, !181}
!180 = !DILocation(line: 49, column: 5, scope: !85)
!181 = !{!"llvm.loop.mustprogress"}
!182 = !DILocation(line: 51, column: 23, scope: !183)
!183 = distinct !DILexicalBlock(scope: !77, file: !1, line: 51, column: 5)
!184 = !DILocation(line: 51, column: 10, scope: !183)
!185 = !DILocation(line: 51, column: 28, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !1, line: 51, column: 5)
!187 = !DILocation(line: 51, column: 41, scope: !186)
!188 = !DILocation(line: 51, column: 5, scope: !183)
!189 = !DILocalVariable(name: "_goodB2G_i_1", scope: !190, file: !1, line: 54, type: !70)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 53, column: 7)
!191 = distinct !DILexicalBlock(scope: !186, file: !1, line: 52, column: 5)
!192 = !DILocation(line: 54, column: 13, scope: !190)
!193 = !DILocalVariable(name: "_goodB2G_buffer_0", scope: !190, file: !1, line: 55, type: !194)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 10)
!197 = !DILocation(line: 55, column: 13, scope: !190)
!198 = !DILocation(line: 56, column: 14, scope: !199)
!199 = distinct !DILexicalBlock(scope: !190, file: !1, line: 56, column: 13)
!200 = !DILocation(line: 56, column: 30, scope: !199)
!201 = !DILocation(line: 56, column: 36, scope: !199)
!202 = !DILocation(line: 56, column: 40, scope: !199)
!203 = !DILocation(line: 56, column: 56, scope: !199)
!204 = !DILocation(line: 56, column: 13, scope: !190)
!205 = !DILocation(line: 58, column: 29, scope: !206)
!206 = distinct !DILexicalBlock(scope: !199, file: !1, line: 57, column: 9)
!207 = !DILocation(line: 58, column: 11, scope: !206)
!208 = !DILocation(line: 58, column: 46, scope: !206)
!209 = !DILocation(line: 59, column: 29, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !1, line: 59, column: 11)
!211 = !DILocation(line: 59, column: 16, scope: !210)
!212 = !DILocation(line: 59, column: 34, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !1, line: 59, column: 11)
!214 = !DILocation(line: 59, column: 47, scope: !213)
!215 = !DILocation(line: 59, column: 11, scope: !210)
!216 = !DILocation(line: 61, column: 44, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !1, line: 60, column: 11)
!218 = !DILocation(line: 61, column: 26, scope: !217)
!219 = !DILocation(line: 61, column: 13, scope: !217)
!220 = !DILocation(line: 62, column: 11, scope: !217)
!221 = !DILocation(line: 59, column: 65, scope: !213)
!222 = !DILocation(line: 59, column: 11, scope: !213)
!223 = distinct !{!223, !215, !224, !181}
!224 = !DILocation(line: 62, column: 11, scope: !210)
!225 = !DILocation(line: 64, column: 9, scope: !206)
!226 = !DILocation(line: 67, column: 11, scope: !227)
!227 = distinct !DILexicalBlock(scope: !199, file: !1, line: 66, column: 9)
!228 = !DILocation(line: 71, column: 5, scope: !191)
!229 = !DILocation(line: 51, column: 58, scope: !186)
!230 = !DILocation(line: 51, column: 5, scope: !186)
!231 = distinct !{!231, !188, !232, !181}
!232 = !DILocation(line: 71, column: 5, scope: !183)
!233 = !DILabel(scope: !77, name: "goodB2G_label_", file: !1, line: 73)
!234 = !DILocation(line: 73, column: 5, scope: !77)
!235 = !DILocalVariable(name: "_goodG2B_h_0", scope: !236, file: !1, line: 80, type: !70)
!236 = distinct !DILexicalBlock(scope: !63, file: !1, line: 79, column: 3)
!237 = !DILocation(line: 80, column: 9, scope: !236)
!238 = !DILocalVariable(name: "_goodG2B_j_0", scope: !236, file: !1, line: 81, type: !70)
!239 = !DILocation(line: 81, column: 9, scope: !236)
!240 = !DILocalVariable(name: "_goodG2B_data_0", scope: !236, file: !1, line: 82, type: !70)
!241 = !DILocation(line: 82, column: 9, scope: !236)
!242 = !DILocation(line: 83, column: 21, scope: !236)
!243 = !DILocation(line: 84, column: 23, scope: !244)
!244 = distinct !DILexicalBlock(scope: !236, file: !1, line: 84, column: 5)
!245 = !DILocation(line: 84, column: 10, scope: !244)
!246 = !DILocation(line: 84, column: 28, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !1, line: 84, column: 5)
!248 = !DILocation(line: 84, column: 41, scope: !247)
!249 = !DILocation(line: 84, column: 5, scope: !244)
!250 = !DILocation(line: 86, column: 23, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !1, line: 85, column: 5)
!252 = !DILocation(line: 87, column: 5, scope: !251)
!253 = !DILocation(line: 84, column: 58, scope: !247)
!254 = !DILocation(line: 84, column: 5, scope: !247)
!255 = distinct !{!255, !249, !256, !181}
!256 = !DILocation(line: 87, column: 5, scope: !244)
!257 = !DILocation(line: 89, column: 23, scope: !258)
!258 = distinct !DILexicalBlock(scope: !236, file: !1, line: 89, column: 5)
!259 = !DILocation(line: 89, column: 10, scope: !258)
!260 = !DILocation(line: 89, column: 28, scope: !261)
!261 = distinct !DILexicalBlock(scope: !258, file: !1, line: 89, column: 5)
!262 = !DILocation(line: 89, column: 41, scope: !261)
!263 = !DILocation(line: 89, column: 5, scope: !258)
!264 = !DILocalVariable(name: "_goodG2B_i_0", scope: !265, file: !1, line: 92, type: !70)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 91, column: 7)
!266 = distinct !DILexicalBlock(scope: !261, file: !1, line: 90, column: 5)
!267 = !DILocation(line: 92, column: 13, scope: !265)
!268 = !DILocalVariable(name: "_goodG2B_buffer_0", scope: !265, file: !1, line: 93, type: !194)
!269 = !DILocation(line: 93, column: 13, scope: !265)
!270 = !DILocation(line: 94, column: 13, scope: !271)
!271 = distinct !DILexicalBlock(scope: !265, file: !1, line: 94, column: 13)
!272 = !DILocation(line: 94, column: 29, scope: !271)
!273 = !DILocation(line: 94, column: 13, scope: !265)
!274 = !DILocation(line: 96, column: 11, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !1, line: 95, column: 9)
!276 = !DILocation(line: 96, column: 18, scope: !275)
!277 = !DILocation(line: 97, column: 29, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !1, line: 97, column: 11)
!279 = !DILocation(line: 97, column: 16, scope: !278)
!280 = !DILocation(line: 97, column: 34, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !1, line: 97, column: 11)
!282 = !DILocation(line: 97, column: 47, scope: !281)
!283 = !DILocation(line: 97, column: 11, scope: !278)
!284 = !DILocation(line: 99, column: 44, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !1, line: 98, column: 11)
!286 = !DILocation(line: 99, column: 26, scope: !285)
!287 = !DILocation(line: 99, column: 13, scope: !285)
!288 = !DILocation(line: 100, column: 11, scope: !285)
!289 = !DILocation(line: 97, column: 65, scope: !281)
!290 = !DILocation(line: 97, column: 11, scope: !281)
!291 = distinct !{!291, !283, !292, !181}
!292 = !DILocation(line: 100, column: 11, scope: !278)
!293 = !DILocation(line: 102, column: 9, scope: !275)
!294 = !DILocation(line: 105, column: 11, scope: !295)
!295 = distinct !DILexicalBlock(scope: !271, file: !1, line: 104, column: 9)
!296 = !DILocation(line: 109, column: 5, scope: !266)
!297 = !DILocation(line: 89, column: 58, scope: !261)
!298 = !DILocation(line: 89, column: 5, scope: !261)
!299 = distinct !{!299, !263, !300, !181}
!300 = !DILocation(line: 109, column: 5, scope: !258)
!301 = !DILabel(scope: !236, name: "goodG2B_label_", file: !1, line: 111)
!302 = !DILocation(line: 111, column: 5, scope: !236)
!303 = !DILocation(line: 116, column: 3, scope: !236)
!304 = !DILabel(scope: !63, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_good_label_", file: !1, line: 117)
!305 = !DILocation(line: 117, column: 3, scope: !63)
!306 = !DILocation(line: 122, column: 1, scope: !63)
