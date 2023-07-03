; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_listen_socket_67a212CWE606_Unchecked_Loop_Condition__char_listen_socket_67b109_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_listen_socket_67a212CWE606_Unchecked_Loop_Condition__char_listen_socket_67b109_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType = type { i8* }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_67a212CWE606_Unchecked_Loop_Condition__char_listen_socket_67b109_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !69 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_myStruct_0 = alloca %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_replace_0 = alloca i8*, align 8
  %_goodB2G_listenSocket_0 = alloca i32, align 4
  %_goodB2G_acceptSocket_0 = alloca i32, align 4
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !77, metadata !DIExpression()), !dbg !78
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %_goodB2G_myStruct_0, metadata !81, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !88, metadata !DIExpression()), !dbg !92
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !92
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !92
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !93
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !95, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !98, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_replace_0, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_listenSocket_0, metadata !118, metadata !DIExpression()), !dbg !119
  store i32 -1, i32* %_goodB2G_listenSocket_0, align 4, !dbg !119
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_acceptSocket_0, metadata !120, metadata !DIExpression()), !dbg !121
  store i32 -1, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !121
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !122, metadata !DIExpression()), !dbg !126
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !127
  %call = call i64 @strlen(i8* %1) #7, !dbg !128
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !126
  br label %do.body, !dbg !129

do.body:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !130
  store i32 %call1, i32* %_goodB2G_listenSocket_0, align 4, !dbg !132
  %2 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !133
  %cmp = icmp eq i32 %2, -1, !dbg !135
  br i1 %cmp, label %if.then, label %if.end, !dbg !136

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !137

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !139
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !139
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !140
  store i16 2, i16* %sin_family, align 4, !dbg !141
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !142
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !143
  store i32 0, i32* %s_addr, align 4, !dbg !144
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !145
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !146
  store i16 %call2, i16* %sin_port, align 2, !dbg !147
  %4 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !148
  %5 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !150
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #9, !dbg !151
  %cmp4 = icmp eq i32 %call3, -1, !dbg !152
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !153

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !154

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !156
  %call7 = call i32 (i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen to i32 (i32, i32, ...)*)(i32 %6, i32 5), !dbg !158
  %cmp8 = icmp eq i32 %call7, -1, !dbg !159
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !160

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !161

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !163
  %call11 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept to i32 (i32, i32, i32, ...)*)(i32 %7, i32 0, i32 0), !dbg !164
  store i32 %call11, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !165
  %8 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !166
  %cmp12 = icmp eq i32 %8, -1, !dbg !168
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !169

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !170

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !172
  %10 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !173
  %11 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !174
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !175
  %12 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !176
  %sub = sub i64 100, %12, !dbg !177
  %sub15 = sub i64 %sub, 1, !dbg !178
  %mul = mul i64 1, %sub15, !dbg !179
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !180
  %conv = trunc i64 %call16 to i32, !dbg !180
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !181
  %13 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !182
  %cmp17 = icmp eq i32 %13, -1, !dbg !184
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !185

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !186
  %cmp19 = icmp eq i32 %14, 0, !dbg !187
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !188

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !189

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !191
  %16 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !192
  %17 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !193
  %conv23 = sext i32 %17 to i64, !dbg !193
  %div = udiv i64 %conv23, 1, !dbg !194
  %add = add i64 %16, %div, !dbg !195
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !191
  store i8 0, i8* %arrayidx, align 1, !dbg !196
  %18 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !197
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !198
  store i8* %call24, i8** %_goodB2G_replace_0, align 8, !dbg !199
  %19 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !200
  %tobool = icmp ne i8* %19, null, !dbg !200
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !202

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !203
  store i8 0, i8* %20, align 1, !dbg !205
  br label %if.end26, !dbg !206

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !207
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !208
  store i8* %call27, i8** %_goodB2G_replace_0, align 8, !dbg !209
  %22 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !210
  %tobool28 = icmp ne i8* %22, null, !dbg !210
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !212

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !213
  store i8 0, i8* %23, align 1, !dbg !215
  br label %if.end30, !dbg !216

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !217

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !218
  %cmp31 = icmp ne i32 %24, -1, !dbg !220
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !221

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %_goodB2G_listenSocket_0, align 4, !dbg !222
  %call34 = call i32 @close(i32 %25), !dbg !224
  br label %if.end35, !dbg !225

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !226
  %cmp36 = icmp ne i32 %26, -1, !dbg !228
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !229

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %_goodB2G_acceptSocket_0, align 4, !dbg !230
  %call39 = call i32 @close(i32 %27), !dbg !232
  br label %if.end40, !dbg !233

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !234
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %_goodB2G_myStruct_0, i32 0, i32 0, !dbg !235
  store i8* %28, i8** %structFirst, align 8, !dbg !236
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_data_0, metadata !237, metadata !DIExpression()), !dbg !239
  %structFirst41 = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType* %_goodB2G_myStruct_0, i32 0, i32 0, !dbg !240
  %29 = load i8*, i8** %structFirst41, align 8, !dbg !240
  store i8* %29, i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_data_0, align 8, !dbg !239
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_i_0, metadata !241, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_n_0, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_intVariable_0, metadata !246, metadata !DIExpression()), !dbg !247
  %30 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_data_0, align 8, !dbg !248
  %call42 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_n_0) #9, !dbg !250
  %cmp43 = icmp eq i32 %call42, 1, !dbg !251
  br i1 %cmp43, label %if.then45, label %if.end50, !dbg !252

if.then45:                                        ; preds = %if.end40
  %31 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_n_0, align 4, !dbg !253
  %cmp46 = icmp slt i32 %31, 10000, !dbg !256
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !257

if.then48:                                        ; preds = %if.then45
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_intVariable_0, align 4, !dbg !258
  %32 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !260
  %33 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_n_0, align 4, !dbg !261
  call void %32(i32 %33), !dbg !260
  %34 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_intVariable_0, align 4, !dbg !262
  call void @printIntLine(i32 %34), !dbg !263
  br label %if.end49, !dbg !264

if.end49:                                         ; preds = %if.then48, %if.then45
  br label %if.end50, !dbg !265

if.end50:                                         ; preds = %if.end49, %if.end40
  br label %CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_label_, !dbg !266

CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_label_: ; preds = %if.end50
  call void @llvm.dbg.label(metadata !267), !dbg !268
  br label %goodB2G_label_, !dbg !269

goodB2G_label_:                                   ; preds = %CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_label_
  call void @llvm.dbg.label(metadata !270), !dbg !271
  ret void, !dbg !272
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket(...) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #6

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen(...) #4

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept(...) #4

declare dso_local i64 @recv(i32, i8*, i64, i32) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #3

declare dso_local i32 @close(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!65, !66, !67}
!llvm.ident = !{!68}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_67a212CWE606_Unchecked_Loop_Condition__char_listen_socket_67b109_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_161/code_gened")
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
!45 = !{!46, !51, !64}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !48, line: 26, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !50, line: 42, baseType: !5)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !53, line: 178, size: 128, elements: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!54 = !{!55, !59}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !52, file: !53, line: 180, baseType: !56, size: 16)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !57, line: 28, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !52, file: !53, line: 181, baseType: !60, size: 112, offset: 16)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 112, elements: !62)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!62 = !{!63}
!63 = !DISubrange(count: 14)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!65 = !{i32 7, !"Dwarf Version", i32 4}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{!"clang version 12.0.0"}
!69 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_67a212CWE606_Unchecked_Loop_Condition__char_listen_socket_67b109_1", scope: !1, file: !1, line: 3, type: !70, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !76)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !64, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75}
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !{}
!77 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !69, file: !1, line: 3, type: !64)
!78 = !DILocation(line: 3, column: 131, scope: !69)
!79 = !DILocalVariable(name: "opsink", arg: 2, scope: !69, file: !1, line: 3, type: !72)
!80 = !DILocation(line: 3, column: 155, scope: !69)
!81 = !DILocalVariable(name: "_goodB2G_myStruct_0", scope: !69, file: !1, line: 5, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType", file: !83, line: 30, baseType: !84)
!83 = !DIFile(filename: "../source_code/_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_161/code_gened")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_67_structType", file: !83, line: 27, size: 64, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !84, file: !83, line: 29, baseType: !64, size: 64)
!87 = !DILocation(line: 5, column: 69, scope: !69)
!88 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !69, file: !1, line: 6, type: !89)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 800, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 100)
!92 = !DILocation(line: 6, column: 8, scope: !69)
!93 = !DILocation(line: 7, column: 21, scope: !69)
!94 = !DILocation(line: 7, column: 19, scope: !69)
!95 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !96, file: !1, line: 9, type: !75)
!96 = distinct !DILexicalBlock(scope: !69, file: !1, line: 8, column: 3)
!97 = !DILocation(line: 9, column: 9, scope: !96)
!98 = !DILocalVariable(name: "_goodB2G_service_0", scope: !96, file: !1, line: 10, type: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !100)
!100 = !{!101, !102, !106, !110}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !99, file: !17, line: 240, baseType: !56, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !99, file: !17, line: 241, baseType: !103, size: 16, offset: 16)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !99, file: !17, line: 242, baseType: !107, size: 32, offset: 32)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !108)
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !107, file: !17, line: 33, baseType: !46, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !99, file: !17, line: 245, baseType: !111, size: 64, offset: 64)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !113)
!112 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!113 = !{!114}
!114 = !DISubrange(count: 8)
!115 = !DILocation(line: 10, column: 24, scope: !96)
!116 = !DILocalVariable(name: "_goodB2G_replace_0", scope: !96, file: !1, line: 11, type: !64)
!117 = !DILocation(line: 11, column: 11, scope: !96)
!118 = !DILocalVariable(name: "_goodB2G_listenSocket_0", scope: !96, file: !1, line: 12, type: !75)
!119 = !DILocation(line: 12, column: 9, scope: !96)
!120 = !DILocalVariable(name: "_goodB2G_acceptSocket_0", scope: !96, file: !1, line: 13, type: !75)
!121 = !DILocation(line: 13, column: 9, scope: !96)
!122 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !96, file: !1, line: 14, type: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 46, baseType: !125)
!124 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!125 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!126 = !DILocation(line: 14, column: 12, scope: !96)
!127 = !DILocation(line: 14, column: 40, scope: !96)
!128 = !DILocation(line: 14, column: 33, scope: !96)
!129 = !DILocation(line: 15, column: 5, scope: !96)
!130 = !DILocation(line: 17, column: 33, scope: !131)
!131 = distinct !DILexicalBlock(scope: !96, file: !1, line: 16, column: 5)
!132 = !DILocation(line: 17, column: 31, scope: !131)
!133 = !DILocation(line: 18, column: 11, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !1, line: 18, column: 11)
!135 = !DILocation(line: 18, column: 35, scope: !134)
!136 = !DILocation(line: 18, column: 11, scope: !131)
!137 = !DILocation(line: 20, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !1, line: 19, column: 7)
!139 = !DILocation(line: 23, column: 7, scope: !131)
!140 = !DILocation(line: 24, column: 26, scope: !131)
!141 = !DILocation(line: 24, column: 37, scope: !131)
!142 = !DILocation(line: 25, column: 26, scope: !131)
!143 = !DILocation(line: 25, column: 35, scope: !131)
!144 = !DILocation(line: 25, column: 42, scope: !131)
!145 = !DILocation(line: 26, column: 37, scope: !131)
!146 = !DILocation(line: 26, column: 26, scope: !131)
!147 = !DILocation(line: 26, column: 35, scope: !131)
!148 = !DILocation(line: 27, column: 16, scope: !149)
!149 = distinct !DILexicalBlock(scope: !131, file: !1, line: 27, column: 11)
!150 = !DILocation(line: 27, column: 41, scope: !149)
!151 = !DILocation(line: 27, column: 11, scope: !149)
!152 = !DILocation(line: 27, column: 112, scope: !149)
!153 = !DILocation(line: 27, column: 11, scope: !131)
!154 = !DILocation(line: 29, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !149, file: !1, line: 28, column: 7)
!156 = !DILocation(line: 32, column: 66, scope: !157)
!157 = distinct !DILexicalBlock(scope: !131, file: !1, line: 32, column: 11)
!158 = !DILocation(line: 32, column: 11, scope: !157)
!159 = !DILocation(line: 32, column: 94, scope: !157)
!160 = !DILocation(line: 32, column: 11, scope: !131)
!161 = !DILocation(line: 34, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !1, line: 33, column: 7)
!163 = !DILocation(line: 37, column: 88, scope: !131)
!164 = !DILocation(line: 37, column: 33, scope: !131)
!165 = !DILocation(line: 37, column: 31, scope: !131)
!166 = !DILocation(line: 38, column: 11, scope: !167)
!167 = distinct !DILexicalBlock(scope: !131, file: !1, line: 38, column: 11)
!168 = !DILocation(line: 38, column: 35, scope: !167)
!169 = !DILocation(line: 38, column: 11, scope: !131)
!170 = !DILocation(line: 40, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !1, line: 39, column: 7)
!172 = !DILocation(line: 43, column: 36, scope: !131)
!173 = !DILocation(line: 43, column: 71, scope: !131)
!174 = !DILocation(line: 43, column: 89, scope: !131)
!175 = !DILocation(line: 43, column: 87, scope: !131)
!176 = !DILocation(line: 43, column: 135, scope: !131)
!177 = !DILocation(line: 43, column: 133, scope: !131)
!178 = !DILocation(line: 43, column: 155, scope: !131)
!179 = !DILocation(line: 43, column: 125, scope: !131)
!180 = !DILocation(line: 43, column: 31, scope: !131)
!181 = !DILocation(line: 43, column: 29, scope: !131)
!182 = !DILocation(line: 44, column: 12, scope: !183)
!183 = distinct !DILexicalBlock(scope: !131, file: !1, line: 44, column: 11)
!184 = !DILocation(line: 44, column: 34, scope: !183)
!185 = !DILocation(line: 44, column: 43, scope: !183)
!186 = !DILocation(line: 44, column: 47, scope: !183)
!187 = !DILocation(line: 44, column: 69, scope: !183)
!188 = !DILocation(line: 44, column: 11, scope: !131)
!189 = !DILocation(line: 46, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !183, file: !1, line: 45, column: 7)
!191 = !DILocation(line: 49, column: 7, scope: !131)
!192 = !DILocation(line: 49, column: 23, scope: !131)
!193 = !DILocation(line: 49, column: 45, scope: !131)
!194 = !DILocation(line: 49, column: 67, scope: !131)
!195 = !DILocation(line: 49, column: 42, scope: !131)
!196 = !DILocation(line: 49, column: 86, scope: !131)
!197 = !DILocation(line: 50, column: 35, scope: !131)
!198 = !DILocation(line: 50, column: 28, scope: !131)
!199 = !DILocation(line: 50, column: 26, scope: !131)
!200 = !DILocation(line: 51, column: 11, scope: !201)
!201 = distinct !DILexicalBlock(scope: !131, file: !1, line: 51, column: 11)
!202 = !DILocation(line: 51, column: 11, scope: !131)
!203 = !DILocation(line: 53, column: 10, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !1, line: 52, column: 7)
!205 = !DILocation(line: 53, column: 29, scope: !204)
!206 = !DILocation(line: 54, column: 7, scope: !204)
!207 = !DILocation(line: 56, column: 35, scope: !131)
!208 = !DILocation(line: 56, column: 28, scope: !131)
!209 = !DILocation(line: 56, column: 26, scope: !131)
!210 = !DILocation(line: 57, column: 11, scope: !211)
!211 = distinct !DILexicalBlock(scope: !131, file: !1, line: 57, column: 11)
!212 = !DILocation(line: 57, column: 11, scope: !131)
!213 = !DILocation(line: 59, column: 10, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !1, line: 58, column: 7)
!215 = !DILocation(line: 59, column: 29, scope: !214)
!216 = !DILocation(line: 60, column: 7, scope: !214)
!217 = !DILocation(line: 62, column: 5, scope: !131)
!218 = !DILocation(line: 64, column: 9, scope: !219)
!219 = distinct !DILexicalBlock(scope: !96, file: !1, line: 64, column: 9)
!220 = !DILocation(line: 64, column: 33, scope: !219)
!221 = !DILocation(line: 64, column: 9, scope: !96)
!222 = !DILocation(line: 66, column: 13, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !1, line: 65, column: 5)
!224 = !DILocation(line: 66, column: 7, scope: !223)
!225 = !DILocation(line: 67, column: 5, scope: !223)
!226 = !DILocation(line: 69, column: 9, scope: !227)
!227 = distinct !DILexicalBlock(scope: !96, file: !1, line: 69, column: 9)
!228 = !DILocation(line: 69, column: 33, scope: !227)
!229 = !DILocation(line: 69, column: 9, scope: !96)
!230 = !DILocation(line: 71, column: 13, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !1, line: 70, column: 5)
!232 = !DILocation(line: 71, column: 7, scope: !231)
!233 = !DILocation(line: 72, column: 5, scope: !231)
!234 = !DILocation(line: 75, column: 37, scope: !69)
!235 = !DILocation(line: 75, column: 23, scope: !69)
!236 = !DILocation(line: 75, column: 35, scope: !69)
!237 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_data_0", scope: !238, file: !1, line: 77, type: !64)
!238 = distinct !DILexicalBlock(scope: !69, file: !1, line: 76, column: 3)
!239 = !DILocation(line: 77, column: 11, scope: !238)
!240 = !DILocation(line: 77, column: 109, scope: !238)
!241 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_i_0", scope: !242, file: !1, line: 79, type: !75)
!242 = distinct !DILexicalBlock(scope: !238, file: !1, line: 78, column: 5)
!243 = !DILocation(line: 79, column: 11, scope: !242)
!244 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_n_0", scope: !242, file: !1, line: 80, type: !75)
!245 = !DILocation(line: 80, column: 11, scope: !242)
!246 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_intVariable_0", scope: !242, file: !1, line: 81, type: !75)
!247 = !DILocation(line: 81, column: 11, scope: !242)
!248 = !DILocation(line: 82, column: 18, scope: !249)
!249 = distinct !DILexicalBlock(scope: !242, file: !1, line: 82, column: 11)
!250 = !DILocation(line: 82, column: 11, scope: !249)
!251 = !DILocation(line: 82, column: 176, scope: !249)
!252 = !DILocation(line: 82, column: 11, scope: !242)
!253 = !DILocation(line: 84, column: 13, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !1, line: 84, column: 13)
!255 = distinct !DILexicalBlock(scope: !249, file: !1, line: 83, column: 7)
!256 = !DILocation(line: 84, column: 86, scope: !254)
!257 = !DILocation(line: 84, column: 13, scope: !255)
!258 = !DILocation(line: 86, column: 94, scope: !259)
!259 = distinct !DILexicalBlock(scope: !254, file: !1, line: 85, column: 9)
!260 = !DILocation(line: 87, column: 11, scope: !259)
!261 = !DILocation(line: 87, column: 18, scope: !259)
!262 = !DILocation(line: 88, column: 24, scope: !259)
!263 = !DILocation(line: 88, column: 11, scope: !259)
!264 = !DILocation(line: 89, column: 9, scope: !259)
!265 = !DILocation(line: 91, column: 7, scope: !255)
!266 = !DILocation(line: 93, column: 5, scope: !242)
!267 = !DILabel(scope: !238, name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_67b_goodB2GSink_label_", file: !1, line: 94)
!268 = !DILocation(line: 94, column: 5, scope: !238)
!269 = !DILocation(line: 99, column: 3, scope: !238)
!270 = !DILabel(scope: !69, name: "goodB2G_label_", file: !1, line: 100)
!271 = !DILocation(line: 100, column: 3, scope: !69)
!272 = !DILocation(line: 105, column: 1, scope: !69)
