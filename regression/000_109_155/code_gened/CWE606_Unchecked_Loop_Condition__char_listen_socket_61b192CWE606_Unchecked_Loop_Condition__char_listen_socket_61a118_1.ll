; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_listen_socket_61b192CWE606_Unchecked_Loop_Condition__char_listen_socket_61a118_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_listen_socket_61b192CWE606_Unchecked_Loop_Condition__char_listen_socket_61a118_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_listen_socket_61b192CWE606_Unchecked_Loop_Condition__char_listen_socket_61a118_1(i8* %_goodB2G_data_0, i8** %CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_return_, void (i32)* %opsink) #0 !dbg !69 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_return_.addr = alloca i8**, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_recvResult_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_service_0 = alloca %struct.sockaddr_in, align 4
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_replace_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_listenSocket_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_acceptSocket_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_dataLen_0 = alloca i64, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !78, metadata !DIExpression()), !dbg !79
  store i8** %CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_return_, i8*** %CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_return_.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_return_.addr, metadata !80, metadata !DIExpression()), !dbg !81
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !84, metadata !DIExpression()), !dbg !88
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !88
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !88
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !89
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_recvResult_0, metadata !91, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_service_0, metadata !95, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_replace_0, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_listenSocket_0, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 -1, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_listenSocket_0, align 4, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_acceptSocket_0, metadata !117, metadata !DIExpression()), !dbg !118
  store i32 -1, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_acceptSocket_0, align 4, !dbg !118
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_dataLen_0, metadata !119, metadata !DIExpression()), !dbg !123
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !124
  %call = call i64 @strlen(i8* %1) #7, !dbg !125
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_dataLen_0, align 8, !dbg !123
  br label %do.body, !dbg !126

do.body:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !127
  store i32 %call1, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_listenSocket_0, align 4, !dbg !129
  %2 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_listenSocket_0, align 4, !dbg !130
  %cmp = icmp eq i32 %2, -1, !dbg !132
  br i1 %cmp, label %if.then, label %if.end, !dbg !133

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !134

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_service_0 to i8*, !dbg !136
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !136
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_service_0, i32 0, i32 0, !dbg !137
  store i16 2, i16* %sin_family, align 4, !dbg !138
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_service_0, i32 0, i32 2, !dbg !139
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !140
  store i32 0, i32* %s_addr, align 4, !dbg !141
  %call2 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !142
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_service_0, i32 0, i32 1, !dbg !143
  store i16 %call2, i16* %sin_port, align 2, !dbg !144
  %4 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_listenSocket_0, align 4, !dbg !145
  %5 = bitcast %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_service_0 to %struct.sockaddr*, !dbg !147
  %call3 = call i32 @bind(i32 %4, %struct.sockaddr* %5, i32 16) #9, !dbg !148
  %cmp4 = icmp eq i32 %call3, -1, !dbg !149
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !150

if.then5:                                         ; preds = %if.end
  br label %do.end, !dbg !151

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_listenSocket_0, align 4, !dbg !153
  %call7 = call i32 (i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_listen to i32 (i32, i32, ...)*)(i32 %6, i32 5), !dbg !155
  %cmp8 = icmp eq i32 %call7, -1, !dbg !156
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !157

if.then9:                                         ; preds = %if.end6
  br label %do.end, !dbg !158

if.end10:                                         ; preds = %if.end6
  %7 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_listenSocket_0, align 4, !dbg !160
  %call11 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_accept to i32 (i32, i32, i32, ...)*)(i32 %7, i32 0, i32 0), !dbg !161
  store i32 %call11, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_acceptSocket_0, align 4, !dbg !162
  %8 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_acceptSocket_0, align 4, !dbg !163
  %cmp12 = icmp eq i32 %8, -1, !dbg !165
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !166

if.then13:                                        ; preds = %if.end10
  br label %do.end, !dbg !167

if.end14:                                         ; preds = %if.end10
  %9 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_acceptSocket_0, align 4, !dbg !169
  %10 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !170
  %11 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_dataLen_0, align 8, !dbg !171
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !172
  %12 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_dataLen_0, align 8, !dbg !173
  %sub = sub i64 100, %12, !dbg !174
  %sub15 = sub i64 %sub, 1, !dbg !175
  %mul = mul i64 1, %sub15, !dbg !176
  %call16 = call i64 @recv(i32 %9, i8* %add.ptr, i64 %mul, i32 0), !dbg !177
  %conv = trunc i64 %call16 to i32, !dbg !177
  store i32 %conv, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_recvResult_0, align 4, !dbg !178
  %13 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_recvResult_0, align 4, !dbg !179
  %cmp17 = icmp eq i32 %13, -1, !dbg !181
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !182

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_recvResult_0, align 4, !dbg !183
  %cmp19 = icmp eq i32 %14, 0, !dbg !184
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !185

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  br label %do.end, !dbg !186

if.end22:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !188
  %16 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_dataLen_0, align 8, !dbg !189
  %17 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_recvResult_0, align 4, !dbg !190
  %conv23 = sext i32 %17 to i64, !dbg !190
  %div = udiv i64 %conv23, 1, !dbg !191
  %add = add i64 %16, %div, !dbg !192
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !188
  store i8 0, i8* %arrayidx, align 1, !dbg !193
  %18 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !194
  %call24 = call i8* @strchr(i8* %18, i32 13) #7, !dbg !195
  store i8* %call24, i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_replace_0, align 8, !dbg !196
  %19 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_replace_0, align 8, !dbg !197
  %tobool = icmp ne i8* %19, null, !dbg !197
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !199

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_replace_0, align 8, !dbg !200
  store i8 0, i8* %20, align 1, !dbg !202
  br label %if.end26, !dbg !203

if.end26:                                         ; preds = %if.then25, %if.end22
  %21 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !204
  %call27 = call i8* @strchr(i8* %21, i32 10) #7, !dbg !205
  store i8* %call27, i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_replace_0, align 8, !dbg !206
  %22 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_replace_0, align 8, !dbg !207
  %tobool28 = icmp ne i8* %22, null, !dbg !207
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !209

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_replace_0, align 8, !dbg !210
  store i8 0, i8* %23, align 1, !dbg !212
  br label %if.end30, !dbg !213

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %do.end, !dbg !214

do.end:                                           ; preds = %if.end30, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  %24 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_listenSocket_0, align 4, !dbg !215
  %cmp31 = icmp ne i32 %24, -1, !dbg !217
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !218

if.then33:                                        ; preds = %do.end
  %25 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_listenSocket_0, align 4, !dbg !219
  %call34 = call i32 @close(i32 %25), !dbg !221
  br label %if.end35, !dbg !222

if.end35:                                         ; preds = %if.then33, %do.end
  %26 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_acceptSocket_0, align 4, !dbg !223
  %cmp36 = icmp ne i32 %26, -1, !dbg !225
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !226

if.then38:                                        ; preds = %if.end35
  %27 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_acceptSocket_0, align 4, !dbg !227
  %call39 = call i32 @close(i32 %27), !dbg !229
  br label %if.end40, !dbg !230

if.end40:                                         ; preds = %if.then38, %if.end35
  %28 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !231
  %29 = bitcast i8* %28 to i8**, !dbg !231
  store i8** %29, i8*** %CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_return_.addr, align 8, !dbg !232
  br label %CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_label_, !dbg !233

CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_label_: ; preds = %if.end40
  call void @llvm.dbg.label(metadata !234), !dbg !235
  %30 = load i8**, i8*** %CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_return_.addr, align 8, !dbg !236
  %31 = bitcast i8** %30 to i8*, !dbg !236
  store i8* %31, i8** %_goodB2G_data_0.addr, align 8, !dbg !237
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !238, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !243, metadata !DIExpression()), !dbg !244
  %32 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !245
  %call41 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %_goodB2G_n_0) #9, !dbg !247
  %cmp42 = icmp eq i32 %call41, 1, !dbg !248
  br i1 %cmp42, label %if.then44, label %if.end49, !dbg !249

if.then44:                                        ; preds = %CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_label_
  %33 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !250
  %cmp45 = icmp slt i32 %33, 10000, !dbg !253
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !254

if.then47:                                        ; preds = %if.then44
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !255
  %34 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !257
  %35 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !258
  call void %34(i32 %35), !dbg !257
  %36 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !259
  call void @printIntLine(i32 %36), !dbg !260
  br label %if.end48, !dbg !261

if.end48:                                         ; preds = %if.then47, %if.then44
  br label %if.end49, !dbg !262

if.end49:                                         ; preds = %if.end48, %CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_label_
  br label %goodB2G_label_, !dbg !263

goodB2G_label_:                                   ; preds = %if.end49
  call void @llvm.dbg.label(metadata !264), !dbg !265
  ret void, !dbg !266
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61b192CWE606_Unchecked_Loop_Condition__char_listen_socket_61a118_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_155/code_gened")
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
!69 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61b192CWE606_Unchecked_Loop_Condition__char_listen_socket_61a118_1", scope: !1, file: !1, line: 3, type: !70, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !77)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !64, !72, !73}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !76}
!76 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!77 = !{}
!78 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !69, file: !1, line: 3, type: !64)
!79 = !DILocation(line: 3, column: 131, scope: !69)
!80 = !DILocalVariable(name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_return_", arg: 2, scope: !69, file: !1, line: 3, type: !72)
!81 = !DILocation(line: 3, column: 156, scope: !69)
!82 = !DILocalVariable(name: "opsink", arg: 3, scope: !69, file: !1, line: 3, type: !73)
!83 = !DILocation(line: 3, column: 242, scope: !69)
!84 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !69, file: !1, line: 5, type: !85)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 800, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 100)
!88 = !DILocation(line: 5, column: 8, scope: !69)
!89 = !DILocation(line: 6, column: 21, scope: !69)
!90 = !DILocation(line: 6, column: 19, scope: !69)
!91 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_recvResult_0", scope: !92, file: !1, line: 9, type: !76)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 8, column: 5)
!93 = distinct !DILexicalBlock(scope: !69, file: !1, line: 7, column: 3)
!94 = !DILocation(line: 9, column: 11, scope: !92)
!95 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_service_0", scope: !92, file: !1, line: 10, type: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !97)
!97 = !{!98, !99, !103, !107}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !96, file: !17, line: 240, baseType: !56, size: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !96, file: !17, line: 241, baseType: !100, size: 16, offset: 16)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !96, file: !17, line: 242, baseType: !104, size: 32, offset: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !104, file: !17, line: 33, baseType: !46, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !96, file: !17, line: 245, baseType: !108, size: 64, offset: 64)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !110)
!109 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !{!111}
!111 = !DISubrange(count: 8)
!112 = !DILocation(line: 10, column: 26, scope: !92)
!113 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_replace_0", scope: !92, file: !1, line: 11, type: !64)
!114 = !DILocation(line: 11, column: 13, scope: !92)
!115 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_listenSocket_0", scope: !92, file: !1, line: 12, type: !76)
!116 = !DILocation(line: 12, column: 11, scope: !92)
!117 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_acceptSocket_0", scope: !92, file: !1, line: 13, type: !76)
!118 = !DILocation(line: 13, column: 11, scope: !92)
!119 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_dataLen_0", scope: !92, file: !1, line: 14, type: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !121, line: 46, baseType: !122)
!121 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!122 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!123 = !DILocation(line: 14, column: 14, scope: !92)
!124 = !DILocation(line: 14, column: 104, scope: !92)
!125 = !DILocation(line: 14, column: 97, scope: !92)
!126 = !DILocation(line: 15, column: 7, scope: !92)
!127 = !DILocation(line: 17, column: 97, scope: !128)
!128 = distinct !DILexicalBlock(scope: !92, file: !1, line: 16, column: 7)
!129 = !DILocation(line: 17, column: 95, scope: !128)
!130 = !DILocation(line: 18, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !1, line: 18, column: 13)
!132 = !DILocation(line: 18, column: 99, scope: !131)
!133 = !DILocation(line: 18, column: 13, scope: !128)
!134 = !DILocation(line: 20, column: 11, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !1, line: 19, column: 9)
!136 = !DILocation(line: 23, column: 9, scope: !128)
!137 = !DILocation(line: 24, column: 90, scope: !128)
!138 = !DILocation(line: 24, column: 101, scope: !128)
!139 = !DILocation(line: 25, column: 90, scope: !128)
!140 = !DILocation(line: 25, column: 99, scope: !128)
!141 = !DILocation(line: 25, column: 106, scope: !128)
!142 = !DILocation(line: 26, column: 101, scope: !128)
!143 = !DILocation(line: 26, column: 90, scope: !128)
!144 = !DILocation(line: 26, column: 99, scope: !128)
!145 = !DILocation(line: 27, column: 18, scope: !146)
!146 = distinct !DILexicalBlock(scope: !128, file: !1, line: 27, column: 13)
!147 = !DILocation(line: 27, column: 105, scope: !146)
!148 = !DILocation(line: 27, column: 13, scope: !146)
!149 = !DILocation(line: 27, column: 300, scope: !146)
!150 = !DILocation(line: 27, column: 13, scope: !128)
!151 = !DILocation(line: 29, column: 11, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !1, line: 28, column: 9)
!153 = !DILocation(line: 32, column: 68, scope: !154)
!154 = distinct !DILexicalBlock(scope: !128, file: !1, line: 32, column: 13)
!155 = !DILocation(line: 32, column: 13, scope: !154)
!156 = !DILocation(line: 32, column: 158, scope: !154)
!157 = !DILocation(line: 32, column: 13, scope: !128)
!158 = !DILocation(line: 34, column: 11, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 33, column: 9)
!160 = !DILocation(line: 37, column: 152, scope: !128)
!161 = !DILocation(line: 37, column: 97, scope: !128)
!162 = !DILocation(line: 37, column: 95, scope: !128)
!163 = !DILocation(line: 38, column: 13, scope: !164)
!164 = distinct !DILexicalBlock(scope: !128, file: !1, line: 38, column: 13)
!165 = !DILocation(line: 38, column: 99, scope: !164)
!166 = !DILocation(line: 38, column: 13, scope: !128)
!167 = !DILocation(line: 40, column: 11, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 39, column: 9)
!169 = !DILocation(line: 43, column: 100, scope: !128)
!170 = !DILocation(line: 43, column: 197, scope: !128)
!171 = !DILocation(line: 43, column: 215, scope: !128)
!172 = !DILocation(line: 43, column: 213, scope: !128)
!173 = !DILocation(line: 43, column: 323, scope: !128)
!174 = !DILocation(line: 43, column: 321, scope: !128)
!175 = !DILocation(line: 43, column: 405, scope: !128)
!176 = !DILocation(line: 43, column: 313, scope: !128)
!177 = !DILocation(line: 43, column: 95, scope: !128)
!178 = !DILocation(line: 43, column: 93, scope: !128)
!179 = !DILocation(line: 44, column: 14, scope: !180)
!180 = distinct !DILexicalBlock(scope: !128, file: !1, line: 44, column: 13)
!181 = !DILocation(line: 44, column: 98, scope: !180)
!182 = !DILocation(line: 44, column: 107, scope: !180)
!183 = !DILocation(line: 44, column: 111, scope: !180)
!184 = !DILocation(line: 44, column: 195, scope: !180)
!185 = !DILocation(line: 44, column: 13, scope: !128)
!186 = !DILocation(line: 46, column: 11, scope: !187)
!187 = distinct !DILexicalBlock(scope: !180, file: !1, line: 45, column: 9)
!188 = !DILocation(line: 49, column: 9, scope: !128)
!189 = !DILocation(line: 49, column: 25, scope: !128)
!190 = !DILocation(line: 49, column: 109, scope: !128)
!191 = !DILocation(line: 49, column: 193, scope: !128)
!192 = !DILocation(line: 49, column: 106, scope: !128)
!193 = !DILocation(line: 49, column: 212, scope: !128)
!194 = !DILocation(line: 50, column: 99, scope: !128)
!195 = !DILocation(line: 50, column: 92, scope: !128)
!196 = !DILocation(line: 50, column: 90, scope: !128)
!197 = !DILocation(line: 51, column: 13, scope: !198)
!198 = distinct !DILexicalBlock(scope: !128, file: !1, line: 51, column: 13)
!199 = !DILocation(line: 51, column: 13, scope: !128)
!200 = !DILocation(line: 53, column: 12, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !1, line: 52, column: 9)
!202 = !DILocation(line: 53, column: 93, scope: !201)
!203 = !DILocation(line: 54, column: 9, scope: !201)
!204 = !DILocation(line: 56, column: 99, scope: !128)
!205 = !DILocation(line: 56, column: 92, scope: !128)
!206 = !DILocation(line: 56, column: 90, scope: !128)
!207 = !DILocation(line: 57, column: 13, scope: !208)
!208 = distinct !DILexicalBlock(scope: !128, file: !1, line: 57, column: 13)
!209 = !DILocation(line: 57, column: 13, scope: !128)
!210 = !DILocation(line: 59, column: 12, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !1, line: 58, column: 9)
!212 = !DILocation(line: 59, column: 93, scope: !211)
!213 = !DILocation(line: 60, column: 9, scope: !211)
!214 = !DILocation(line: 62, column: 7, scope: !128)
!215 = !DILocation(line: 64, column: 11, scope: !216)
!216 = distinct !DILexicalBlock(scope: !92, file: !1, line: 64, column: 11)
!217 = !DILocation(line: 64, column: 97, scope: !216)
!218 = !DILocation(line: 64, column: 11, scope: !92)
!219 = !DILocation(line: 66, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !1, line: 65, column: 7)
!221 = !DILocation(line: 66, column: 9, scope: !220)
!222 = !DILocation(line: 67, column: 7, scope: !220)
!223 = !DILocation(line: 69, column: 11, scope: !224)
!224 = distinct !DILexicalBlock(scope: !92, file: !1, line: 69, column: 11)
!225 = !DILocation(line: 69, column: 97, scope: !224)
!226 = !DILocation(line: 69, column: 11, scope: !92)
!227 = !DILocation(line: 71, column: 15, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !1, line: 70, column: 7)
!229 = !DILocation(line: 71, column: 9, scope: !228)
!230 = !DILocation(line: 72, column: 7, scope: !228)
!231 = !DILocation(line: 75, column: 85, scope: !93)
!232 = !DILocation(line: 75, column: 83, scope: !93)
!233 = !DILocation(line: 76, column: 5, scope: !93)
!234 = !DILabel(scope: !93, name: "CWE606_Unchecked_Loop_Condition__char_listen_socket_61b_goodB2GSource_label_", file: !1, line: 77)
!235 = !DILocation(line: 77, column: 5, scope: !93)
!236 = !DILocation(line: 83, column: 21, scope: !69)
!237 = !DILocation(line: 83, column: 19, scope: !69)
!238 = !DILocalVariable(name: "_goodB2G_i_0", scope: !239, file: !1, line: 85, type: !76)
!239 = distinct !DILexicalBlock(scope: !69, file: !1, line: 84, column: 3)
!240 = !DILocation(line: 85, column: 9, scope: !239)
!241 = !DILocalVariable(name: "_goodB2G_n_0", scope: !239, file: !1, line: 86, type: !76)
!242 = !DILocation(line: 86, column: 9, scope: !239)
!243 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !239, file: !1, line: 87, type: !76)
!244 = !DILocation(line: 87, column: 9, scope: !239)
!245 = !DILocation(line: 88, column: 16, scope: !246)
!246 = distinct !DILexicalBlock(scope: !239, file: !1, line: 88, column: 9)
!247 = !DILocation(line: 88, column: 9, scope: !246)
!248 = !DILocation(line: 88, column: 54, scope: !246)
!249 = !DILocation(line: 88, column: 9, scope: !239)
!250 = !DILocation(line: 90, column: 11, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 90, column: 11)
!252 = distinct !DILexicalBlock(scope: !246, file: !1, line: 89, column: 5)
!253 = !DILocation(line: 90, column: 24, scope: !251)
!254 = !DILocation(line: 90, column: 11, scope: !252)
!255 = !DILocation(line: 92, column: 32, scope: !256)
!256 = distinct !DILexicalBlock(scope: !251, file: !1, line: 91, column: 7)
!257 = !DILocation(line: 93, column: 9, scope: !256)
!258 = !DILocation(line: 93, column: 16, scope: !256)
!259 = !DILocation(line: 94, column: 22, scope: !256)
!260 = !DILocation(line: 94, column: 9, scope: !256)
!261 = !DILocation(line: 95, column: 7, scope: !256)
!262 = !DILocation(line: 97, column: 5, scope: !252)
!263 = !DILocation(line: 99, column: 3, scope: !239)
!264 = !DILabel(scope: !69, name: "goodB2G_label_", file: !1, line: 100)
!265 = !DILocation(line: 100, column: 3, scope: !69)
!266 = !DILocation(line: 105, column: 1, scope: !69)
