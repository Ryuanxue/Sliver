; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_listen_socket_22a292CWE606_Unchecked_Loop_Condition__char_listen_socket_22b127_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_listen_socket_22a292CWE606_Unchecked_Loop_Condition__char_listen_socket_22b127_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Global = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1
@CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BGlobal = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22a292CWE606_Unchecked_Loop_Condition__char_listen_socket_22b127_1(i8* %_goodB2G2_data_0, void (i32)* %opsink) #0 !dbg !69 {
entry:
  %_goodB2G2_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_recvResult_0 = alloca i32, align 4
  %_goodB2G2_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G2_replace_0 = alloca i8*, align 8
  %_goodB2G2_listenSocket_0 = alloca i32, align 4
  %_goodB2G2_acceptSocket_0 = alloca i32, align 4
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G2_data_0, i8** %_goodB2G2_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0.addr, metadata !77, metadata !DIExpression()), !dbg !78
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !81, metadata !DIExpression()), !dbg !86
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !86
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !86
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !87
  store i8* %arraydecay, i8** %_goodB2G2_data_0.addr, align 8, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_recvResult_0, metadata !89, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G2_service_0, metadata !92, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_replace_0, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_listenSocket_0, metadata !112, metadata !DIExpression()), !dbg !113
  store i32 -1, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_acceptSocket_0, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 -1, i32* %_goodB2G2_acceptSocket_0, align 4, !dbg !115
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !116, metadata !DIExpression()), !dbg !120
  %1 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !121
  %call = call i64 @strlen(i8* %1) #7, !dbg !122
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !120
  br label %do.body, !dbg !123

do.body:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !124
  store i32 %call1, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !126
  %2 = load i32, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !127
  %cmp = icmp eq i32 %2, -1, !dbg !129
  br i1 %cmp, label %if.then, label %if.end, !dbg !130

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !131

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_goodB2G2_service_0 to i8*, !dbg !133
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !133
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 0, !dbg !134
  store i16 2, i16* %sin_family, align 4, !dbg !135
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 2, !dbg !136
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !137
  store i32 0, i32* %s_addr, align 4, !dbg !138
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !139
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G2_service_0, i32 0, i32 1, !dbg !140
  store i16 %call2, i16* %sin_port, align 2, !dbg !141
  %4 = load i32, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !142
  %5 = bitcast %struct.sockaddr_in* %_goodB2G2_service_0 to %struct.sockaddr*, !dbg !144
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #9, !dbg !145
  %cmp4 = icmp eq i32 %call3, -1, !dbg !146
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !147

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !148

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !150
  %call7 = call i32 (i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen to i32 (i32, i32, ...)*)(i32 %6, i32 5), !dbg !152
  %cmp8 = icmp eq i32 %call7, -1, !dbg !153
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !154

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !155

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !157
  %call11 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept to i32 (i32, i32, i32, ...)*)(i32 %7, i32 0, i32 0), !dbg !158
  store i32 %call11, i32* %_goodB2G2_acceptSocket_0, align 4, !dbg !159
  %8 = load i32, i32* %_goodB2G2_acceptSocket_0, align 4, !dbg !160
  %cmp12 = icmp eq i32 %8, -1, !dbg !162
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !163

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !164

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %_goodB2G2_acceptSocket_0, align 4, !dbg !166
  %10 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !167
  %11 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !168
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !169
  %12 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !170
  %sub = sub i64 100, %12, !dbg !171
  %sub15 = sub i64 %sub, 1, !dbg !172
  %mul = mul i64 1, %sub15, !dbg !173
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !174
  %conv = trunc i64 %call16 to i32, !dbg !174
  store i32 %conv, i32* %_goodB2G2_recvResult_0, align 4, !dbg !175
  %13 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !176
  %cmp17 = icmp eq i32 %13, -1, !dbg !178
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !179

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !180
  %cmp19 = icmp eq i32 %14, 0, !dbg !181
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !182

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !183

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !185
  %16 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !186
  %17 = load i32, i32* %_goodB2G2_recvResult_0, align 4, !dbg !187
  %conv23 = sext i32 %17 to i64, !dbg !187
  %div = udiv i64 %conv23, 1, !dbg !188
  %add = add i64 %16, %div, !dbg !189
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !185
  store i8 0, i8* %arrayidx, align 1, !dbg !190
  %18 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !191
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !192
  store i8* %call24, i8** %_goodB2G2_replace_0, align 8, !dbg !193
  %19 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !194
  %tobool = icmp ne i8* %19, null, !dbg !194
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !196

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !197
  store i8 0, i8* %20, align 1, !dbg !199
  br label %if.end26, !dbg !200

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !201
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !202
  store i8* %call27, i8** %_goodB2G2_replace_0, align 8, !dbg !203
  %22 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !204
  %tobool28 = icmp ne i8* %22, null, !dbg !204
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !206

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %_goodB2G2_replace_0, align 8, !dbg !207
  store i8 0, i8* %23, align 1, !dbg !209
  br label %if.end30, !dbg !210

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !211

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !212
  %cmp31 = icmp ne i32 %24, -1, !dbg !214
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !215

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %_goodB2G2_listenSocket_0, align 4, !dbg !216
  %call34 = call i32 @close(i32 %25), !dbg !218
  br label %if.end35, !dbg !219

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %_goodB2G2_acceptSocket_0, align 4, !dbg !220
  %cmp36 = icmp ne i32 %26, -1, !dbg !222
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !223

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %_goodB2G2_acceptSocket_0, align 4, !dbg !224
  %call39 = call i32 @close(i32 %27), !dbg !226
  br label %if.end40, !dbg !227

if.end40:                                         ; preds = %if.then38, %if.end35
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Global, align 4, !dbg !228
  %28 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !229
  call void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Sink(i8* %28), !dbg !230
  br label %goodB2G2_label_, !dbg !230

goodB2G2_label_:                                  ; preds = %if.end40
  call void @llvm.dbg.label(metadata !231), !dbg !232
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !233, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !236, metadata !DIExpression()), !dbg !237
  %29 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !237
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 100, i1 false), !dbg !237
  %arraydecay41 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !238
  store i8* %arraydecay41, i8** %_goodG2B_data_0, align 8, !dbg !239
  %30 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !240
  %call42 = call i8* @strcpy(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #9, !dbg !241
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BGlobal, align 4, !dbg !242
  %31 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BGlobal, align 4, !dbg !243
  %tobool43 = icmp ne i32 %31, 0, !dbg !243
  br i1 %tobool43, label %if.then44, label %if.end50, !dbg !246

if.then44:                                        ; preds = %goodB2G2_label_
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_i_0, metadata !247, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_n_0, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_intVariable_0, metadata !253, metadata !DIExpression()), !dbg !254
  %32 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !255
  %call45 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_n_0) #9, !dbg !257
  %cmp46 = icmp eq i32 %call45, 1, !dbg !258
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !259

if.then48:                                        ; preds = %if.then44
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_intVariable_0, align 4, !dbg !260
  %33 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !262
  %34 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_n_0, align 4, !dbg !263
  call void %33(i32 %34), !dbg !262
  %35 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_intVariable_0, align 4, !dbg !264
  call void @printIntLine(i32 %35), !dbg !265
  br label %if.end49, !dbg !266

if.end49:                                         ; preds = %if.then48, %if.then44
  br label %if.end50, !dbg !267

if.end50:                                         ; preds = %if.end49, %goodB2G2_label_
  br label %CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_label_, !dbg !243

CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_label_: ; preds = %if.end50
  call void @llvm.dbg.label(metadata !268), !dbg !269
  br label %goodG2B_label_, !dbg !270

goodG2B_label_:                                   ; preds = %CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_label_
  call void @llvm.dbg.label(metadata !271), !dbg !272
  br label %CWE606_Unchecked_Loop_Condition__char_listen_socket_22_good_label_, !dbg !273

CWE606_Unchecked_Loop_Condition__char_listen_socket_22_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !274), !dbg !275
  ret void, !dbg !276
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

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodB2G2Sink(i8*) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

declare dso_local void @printIntLine(i32) #4

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22a292CWE606_Unchecked_Loop_Condition__char_listen_socket_22b127_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_141/code_gened")
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
!69 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22a292CWE606_Unchecked_Loop_Condition__char_listen_socket_22b127_1", scope: !1, file: !1, line: 5, type: !70, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !76)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !64, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75}
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !{}
!77 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !69, file: !1, line: 5, type: !64)
!78 = !DILocation(line: 5, column: 131, scope: !69)
!79 = !DILocalVariable(name: "opsink", arg: 2, scope: !69, file: !1, line: 5, type: !72)
!80 = !DILocation(line: 5, column: 156, scope: !69)
!81 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !82, file: !1, line: 8, type: !83)
!82 = distinct !DILexicalBlock(scope: !69, file: !1, line: 7, column: 3)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 800, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 100)
!86 = !DILocation(line: 8, column: 10, scope: !82)
!87 = !DILocation(line: 9, column: 24, scope: !82)
!88 = !DILocation(line: 9, column: 22, scope: !82)
!89 = !DILocalVariable(name: "_goodB2G2_recvResult_0", scope: !90, file: !1, line: 11, type: !75)
!90 = distinct !DILexicalBlock(scope: !82, file: !1, line: 10, column: 5)
!91 = !DILocation(line: 11, column: 11, scope: !90)
!92 = !DILocalVariable(name: "_goodB2G2_service_0", scope: !90, file: !1, line: 12, type: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !94)
!94 = !{!95, !96, !100, !104}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !93, file: !17, line: 240, baseType: !56, size: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !93, file: !17, line: 241, baseType: !97, size: 16, offset: 16)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !93, file: !17, line: 242, baseType: !101, size: 32, offset: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !101, file: !17, line: 33, baseType: !46, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !93, file: !17, line: 245, baseType: !105, size: 64, offset: 64)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, elements: !107)
!106 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!107 = !{!108}
!108 = !DISubrange(count: 8)
!109 = !DILocation(line: 12, column: 26, scope: !90)
!110 = !DILocalVariable(name: "_goodB2G2_replace_0", scope: !90, file: !1, line: 13, type: !64)
!111 = !DILocation(line: 13, column: 13, scope: !90)
!112 = !DILocalVariable(name: "_goodB2G2_listenSocket_0", scope: !90, file: !1, line: 14, type: !75)
!113 = !DILocation(line: 14, column: 11, scope: !90)
!114 = !DILocalVariable(name: "_goodB2G2_acceptSocket_0", scope: !90, file: !1, line: 15, type: !75)
!115 = !DILocation(line: 15, column: 11, scope: !90)
!116 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !90, file: !1, line: 16, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 46, baseType: !119)
!118 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!119 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!120 = !DILocation(line: 16, column: 14, scope: !90)
!121 = !DILocation(line: 16, column: 43, scope: !90)
!122 = !DILocation(line: 16, column: 36, scope: !90)
!123 = !DILocation(line: 17, column: 7, scope: !90)
!124 = !DILocation(line: 19, column: 36, scope: !125)
!125 = distinct !DILexicalBlock(scope: !90, file: !1, line: 18, column: 7)
!126 = !DILocation(line: 19, column: 34, scope: !125)
!127 = !DILocation(line: 20, column: 13, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 20, column: 13)
!129 = !DILocation(line: 20, column: 38, scope: !128)
!130 = !DILocation(line: 20, column: 13, scope: !125)
!131 = !DILocation(line: 22, column: 11, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 21, column: 9)
!133 = !DILocation(line: 25, column: 9, scope: !125)
!134 = !DILocation(line: 26, column: 29, scope: !125)
!135 = !DILocation(line: 26, column: 40, scope: !125)
!136 = !DILocation(line: 27, column: 29, scope: !125)
!137 = !DILocation(line: 27, column: 38, scope: !125)
!138 = !DILocation(line: 27, column: 45, scope: !125)
!139 = !DILocation(line: 28, column: 40, scope: !125)
!140 = !DILocation(line: 28, column: 29, scope: !125)
!141 = !DILocation(line: 28, column: 38, scope: !125)
!142 = !DILocation(line: 29, column: 18, scope: !143)
!143 = distinct !DILexicalBlock(scope: !125, file: !1, line: 29, column: 13)
!144 = !DILocation(line: 29, column: 44, scope: !143)
!145 = !DILocation(line: 29, column: 13, scope: !143)
!146 = !DILocation(line: 29, column: 117, scope: !143)
!147 = !DILocation(line: 29, column: 13, scope: !125)
!148 = !DILocation(line: 31, column: 11, scope: !149)
!149 = distinct !DILexicalBlock(scope: !143, file: !1, line: 30, column: 9)
!150 = !DILocation(line: 34, column: 68, scope: !151)
!151 = distinct !DILexicalBlock(scope: !125, file: !1, line: 34, column: 13)
!152 = !DILocation(line: 34, column: 13, scope: !151)
!153 = !DILocation(line: 34, column: 97, scope: !151)
!154 = !DILocation(line: 34, column: 13, scope: !125)
!155 = !DILocation(line: 36, column: 11, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !1, line: 35, column: 9)
!157 = !DILocation(line: 39, column: 91, scope: !125)
!158 = !DILocation(line: 39, column: 36, scope: !125)
!159 = !DILocation(line: 39, column: 34, scope: !125)
!160 = !DILocation(line: 40, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !125, file: !1, line: 40, column: 13)
!162 = !DILocation(line: 40, column: 38, scope: !161)
!163 = !DILocation(line: 40, column: 13, scope: !125)
!164 = !DILocation(line: 42, column: 11, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 41, column: 9)
!166 = !DILocation(line: 45, column: 39, scope: !125)
!167 = !DILocation(line: 45, column: 75, scope: !125)
!168 = !DILocation(line: 45, column: 94, scope: !125)
!169 = !DILocation(line: 45, column: 92, scope: !125)
!170 = !DILocation(line: 45, column: 141, scope: !125)
!171 = !DILocation(line: 45, column: 139, scope: !125)
!172 = !DILocation(line: 45, column: 162, scope: !125)
!173 = !DILocation(line: 45, column: 131, scope: !125)
!174 = !DILocation(line: 45, column: 34, scope: !125)
!175 = !DILocation(line: 45, column: 32, scope: !125)
!176 = !DILocation(line: 46, column: 14, scope: !177)
!177 = distinct !DILexicalBlock(scope: !125, file: !1, line: 46, column: 13)
!178 = !DILocation(line: 46, column: 37, scope: !177)
!179 = !DILocation(line: 46, column: 46, scope: !177)
!180 = !DILocation(line: 46, column: 50, scope: !177)
!181 = !DILocation(line: 46, column: 73, scope: !177)
!182 = !DILocation(line: 46, column: 13, scope: !125)
!183 = !DILocation(line: 48, column: 11, scope: !184)
!184 = distinct !DILexicalBlock(scope: !177, file: !1, line: 47, column: 9)
!185 = !DILocation(line: 51, column: 9, scope: !125)
!186 = !DILocation(line: 51, column: 26, scope: !125)
!187 = !DILocation(line: 51, column: 49, scope: !125)
!188 = !DILocation(line: 51, column: 72, scope: !125)
!189 = !DILocation(line: 51, column: 46, scope: !125)
!190 = !DILocation(line: 51, column: 91, scope: !125)
!191 = !DILocation(line: 52, column: 38, scope: !125)
!192 = !DILocation(line: 52, column: 31, scope: !125)
!193 = !DILocation(line: 52, column: 29, scope: !125)
!194 = !DILocation(line: 53, column: 13, scope: !195)
!195 = distinct !DILexicalBlock(scope: !125, file: !1, line: 53, column: 13)
!196 = !DILocation(line: 53, column: 13, scope: !125)
!197 = !DILocation(line: 55, column: 12, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !1, line: 54, column: 9)
!199 = !DILocation(line: 55, column: 32, scope: !198)
!200 = !DILocation(line: 56, column: 9, scope: !198)
!201 = !DILocation(line: 58, column: 38, scope: !125)
!202 = !DILocation(line: 58, column: 31, scope: !125)
!203 = !DILocation(line: 58, column: 29, scope: !125)
!204 = !DILocation(line: 59, column: 13, scope: !205)
!205 = distinct !DILexicalBlock(scope: !125, file: !1, line: 59, column: 13)
!206 = !DILocation(line: 59, column: 13, scope: !125)
!207 = !DILocation(line: 61, column: 12, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !1, line: 60, column: 9)
!209 = !DILocation(line: 61, column: 32, scope: !208)
!210 = !DILocation(line: 62, column: 9, scope: !208)
!211 = !DILocation(line: 64, column: 7, scope: !125)
!212 = !DILocation(line: 66, column: 11, scope: !213)
!213 = distinct !DILexicalBlock(scope: !90, file: !1, line: 66, column: 11)
!214 = !DILocation(line: 66, column: 36, scope: !213)
!215 = !DILocation(line: 66, column: 11, scope: !90)
!216 = !DILocation(line: 68, column: 15, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !1, line: 67, column: 7)
!218 = !DILocation(line: 68, column: 9, scope: !217)
!219 = !DILocation(line: 69, column: 7, scope: !217)
!220 = !DILocation(line: 71, column: 11, scope: !221)
!221 = distinct !DILexicalBlock(scope: !90, file: !1, line: 71, column: 11)
!222 = !DILocation(line: 71, column: 36, scope: !221)
!223 = !DILocation(line: 71, column: 11, scope: !90)
!224 = !DILocation(line: 73, column: 15, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !1, line: 72, column: 7)
!226 = !DILocation(line: 73, column: 9, scope: !225)
!227 = !DILocation(line: 74, column: 7, scope: !225)
!228 = !DILocation(line: 77, column: 75, scope: !82)
!229 = !DILocation(line: 78, column: 73, scope: !82)
!230 = !DILocation(line: 78, column: 5, scope: !82)
!231 = !DILabel(scope: !82, name: "goodB2G2_label_", file: !1, line: 79)
!232 = !DILocation(line: 79, column: 5, scope: !82)
!233 = !DILocalVariable(name: "_goodG2B_data_0", scope: !234, file: !1, line: 86, type: !64)
!234 = distinct !DILexicalBlock(scope: !69, file: !1, line: 85, column: 3)
!235 = !DILocation(line: 86, column: 11, scope: !234)
!236 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !234, file: !1, line: 87, type: !83)
!237 = !DILocation(line: 87, column: 10, scope: !234)
!238 = !DILocation(line: 88, column: 23, scope: !234)
!239 = !DILocation(line: 88, column: 21, scope: !234)
!240 = !DILocation(line: 89, column: 12, scope: !234)
!241 = !DILocation(line: 89, column: 5, scope: !234)
!242 = !DILocation(line: 90, column: 74, scope: !234)
!243 = !DILocation(line: 92, column: 11, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 92, column: 11)
!245 = distinct !DILexicalBlock(scope: !234, file: !1, line: 91, column: 5)
!246 = !DILocation(line: 92, column: 11, scope: !245)
!247 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_i_0", scope: !248, file: !1, line: 95, type: !75)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 94, column: 9)
!249 = distinct !DILexicalBlock(scope: !244, file: !1, line: 93, column: 7)
!250 = !DILocation(line: 95, column: 15, scope: !248)
!251 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_n_0", scope: !248, file: !1, line: 96, type: !75)
!252 = !DILocation(line: 96, column: 15, scope: !248)
!253 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_intVariable_0", scope: !248, file: !1, line: 97, type: !75)
!254 = !DILocation(line: 97, column: 15, scope: !248)
!255 = !DILocation(line: 98, column: 22, scope: !256)
!256 = distinct !DILexicalBlock(scope: !248, file: !1, line: 98, column: 15)
!257 = !DILocation(line: 98, column: 15, scope: !256)
!258 = !DILocation(line: 98, column: 119, scope: !256)
!259 = !DILocation(line: 98, column: 15, scope: !248)
!260 = !DILocation(line: 100, column: 95, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !1, line: 99, column: 11)
!262 = !DILocation(line: 101, column: 13, scope: !261)
!263 = !DILocation(line: 101, column: 20, scope: !261)
!264 = !DILocation(line: 102, column: 26, scope: !261)
!265 = !DILocation(line: 102, column: 13, scope: !261)
!266 = !DILocation(line: 103, column: 11, scope: !261)
!267 = !DILocation(line: 106, column: 7, scope: !249)
!268 = !DILabel(scope: !245, name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_goodG2BSink_label_", file: !1, line: 108)
!269 = !DILocation(line: 108, column: 7, scope: !245)
!270 = !DILocation(line: 113, column: 5, scope: !245)
!271 = !DILabel(scope: !234, name: "goodG2B_label_", file: !1, line: 114)
!272 = !DILocation(line: 114, column: 5, scope: !234)
!273 = !DILocation(line: 119, column: 3, scope: !234)
!274 = !DILabel(scope: !69, name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_22_good_label_", file: !1, line: 120)
!275 = !DILocation(line: 120, column: 3, scope: !69)
!276 = !DILocation(line: 125, column: 1, scope: !69)
