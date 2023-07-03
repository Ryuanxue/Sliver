; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_18190CWE606_Unchecked_Loop_Condition__char_connect_socket_18260_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_18190CWE606_Unchecked_Loop_Condition__char_connect_socket_18260_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_18190CWE606_Unchecked_Loop_Condition__char_connect_socket_18260_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_replace_0 = alloca i8*, align 8
  %_goodB2G_connectSocket_0 = alloca i32, align 4
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_n_0 = alloca i32, align 4
  %_goodG2B_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !76, metadata !DIExpression()), !dbg !81
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !81
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !81
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !82
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !83
  br label %goodB2G_source, !dbg !84

goodB2G_source:                                   ; preds = %entry
  call void @llvm.dbg.label(metadata !85), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !87, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !90, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_replace_0, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_connectSocket_0, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 -1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !116
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !117, metadata !DIExpression()), !dbg !121
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !122
  %call = call i64 @strlen(i8* %1) #7, !dbg !123
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !121
  br label %do.body, !dbg !124

do.body:                                          ; preds = %goodB2G_source
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !125
  store i32 %call1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !127
  %2 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !128
  %cmp = icmp eq i32 %2, -1, !dbg !130
  br i1 %cmp, label %if.then, label %if.end, !dbg !131

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !132

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !134
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !134
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !135
  store i16 2, i16* %sin_family, align 4, !dbg !136
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !137
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !138
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !139
  store i32 %call2, i32* %s_addr, align 4, !dbg !140
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !141
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !142
  store i16 %call3, i16* %sin_port, align 2, !dbg !143
  %4 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !144
  %5 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !146
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !147
  %cmp5 = icmp eq i32 %call4, -1, !dbg !148
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !149

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !150

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !152
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !153
  %8 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !154
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !155
  %9 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !156
  %sub = sub i64 100, %9, !dbg !157
  %sub8 = sub i64 %sub, 1, !dbg !158
  %mul = mul i64 1, %sub8, !dbg !159
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !160
  %conv = trunc i64 %call9 to i32, !dbg !160
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !161
  %10 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !162
  %cmp10 = icmp eq i32 %10, -1, !dbg !164
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !165

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !166
  %cmp12 = icmp eq i32 %11, 0, !dbg !167
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !168

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !169

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !171
  %13 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !172
  %14 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !173
  %conv16 = sext i32 %14 to i64, !dbg !173
  %div = udiv i64 %conv16, 1, !dbg !174
  %add = add i64 %13, %div, !dbg !175
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !171
  store i8 0, i8* %arrayidx, align 1, !dbg !176
  %15 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !177
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !178
  store i8* %call17, i8** %_goodB2G_replace_0, align 8, !dbg !179
  %16 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !180
  %tobool = icmp ne i8* %16, null, !dbg !180
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !182

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !183
  store i8 0, i8* %17, align 1, !dbg !185
  br label %if.end19, !dbg !186

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !187
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !188
  store i8* %call20, i8** %_goodB2G_replace_0, align 8, !dbg !189
  %19 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !190
  %tobool21 = icmp ne i8* %19, null, !dbg !190
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !192

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !193
  store i8 0, i8* %20, align 1, !dbg !195
  br label %if.end23, !dbg !196

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !197

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !198
  %cmp24 = icmp ne i32 %21, -1, !dbg !200
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !201

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !202
  %call27 = call i32 @close(i32 %22), !dbg !204
  br label %if.end28, !dbg !205

if.end28:                                         ; preds = %if.then26, %do.end
  br label %goodB2G_sink, !dbg !206

goodB2G_sink:                                     ; preds = %if.end28
  call void @llvm.dbg.label(metadata !207), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !209, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !214, metadata !DIExpression()), !dbg !215
  %23 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !216
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #8, !dbg !218
  %cmp30 = icmp eq i32 %call29, 1, !dbg !219
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !220

if.then32:                                        ; preds = %goodB2G_sink
  %24 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !221
  %cmp33 = icmp slt i32 %24, 10000, !dbg !224
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !225

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !226
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !228
  br label %for.cond, !dbg !230

for.cond:                                         ; preds = %for.inc, %if.then35
  %25 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !231
  %26 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !233
  %cmp36 = icmp slt i32 %25, %26, !dbg !234
  br i1 %cmp36, label %for.body, label %for.end, !dbg !235

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !236
  %inc = add nsw i32 %27, 1, !dbg !236
  store i32 %inc, i32* %_goodB2G_intVariable_0, align 4, !dbg !236
  br label %for.inc, !dbg !238

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !239
  %inc38 = add nsw i32 %28, 1, !dbg !239
  store i32 %inc38, i32* %_goodB2G_i_0, align 4, !dbg !239
  br label %for.cond, !dbg !240, !llvm.loop !241

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !244
  call void @printIntLine(i32 %29), !dbg !245
  br label %if.end39, !dbg !246

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !247

if.end40:                                         ; preds = %if.end39, %goodB2G_sink
  br label %goodB2G_label_, !dbg !248

goodB2G_label_:                                   ; preds = %if.end40
  call void @llvm.dbg.label(metadata !249), !dbg !250
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !254, metadata !DIExpression()), !dbg !255
  %30 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !255
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 100, i1 false), !dbg !255
  %arraydecay41 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !256
  store i8* %arraydecay41, i8** %_goodG2B_data_0, align 8, !dbg !257
  br label %goodG2B_source, !dbg !258

goodG2B_source:                                   ; preds = %goodB2G_label_
  call void @llvm.dbg.label(metadata !259), !dbg !260
  %31 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !261
  %call42 = call i8* @strcpy(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !263
  br label %goodG2B_sink, !dbg !264

goodG2B_sink:                                     ; preds = %goodG2B_source
  call void @llvm.dbg.label(metadata !265), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !272, metadata !DIExpression()), !dbg !273
  %32 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !274
  %call43 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0) #8, !dbg !276
  %cmp44 = icmp eq i32 %call43, 1, !dbg !277
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !278

if.then46:                                        ; preds = %goodG2B_sink
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !279
  %33 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !281
  %34 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !282
  call void %33(i32 %34), !dbg !281
  %35 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !283
  call void @printIntLine(i32 %35), !dbg !284
  br label %if.end47, !dbg !285

if.end47:                                         ; preds = %if.then46, %goodG2B_sink
  br label %goodG2B_label_, !dbg !286

goodG2B_label_:                                   ; preds = %if.end47
  call void @llvm.dbg.label(metadata !287), !dbg !288
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_18_good_label_, !dbg !289

CWE606_Unchecked_Loop_Condition__char_connect_socket_18_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !290), !dbg !291
  ret void, !dbg !292
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket(...) #4

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #5

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #6

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #4

declare dso_local i64 @recv(i32, i8*, i64, i32) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #3

declare dso_local i32 @close(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_18190CWE606_Unchecked_Loop_Condition__char_connect_socket_18260_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_947/code_gened")
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
!45 = !{!46, !59}
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
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{!"clang version 12.0.0"}
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_18190CWE606_Unchecked_Loop_Condition__char_connect_socket_18260_1", scope: !1, file: !1, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !64, file: !1, line: 3, type: !59)
!73 = !DILocation(line: 3, column: 131, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 155, scope: !64)
!76 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !77, file: !1, line: 6, type: !78)
!77 = distinct !DILexicalBlock(scope: !64, file: !1, line: 5, column: 3)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 100)
!81 = !DILocation(line: 6, column: 10, scope: !77)
!82 = !DILocation(line: 7, column: 23, scope: !77)
!83 = !DILocation(line: 7, column: 21, scope: !77)
!84 = !DILocation(line: 8, column: 5, scope: !77)
!85 = !DILabel(scope: !77, name: "goodB2G_source", file: !1, line: 9)
!86 = !DILocation(line: 9, column: 5, scope: !77)
!87 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !88, file: !1, line: 11, type: !70)
!88 = distinct !DILexicalBlock(scope: !77, file: !1, line: 10, column: 5)
!89 = !DILocation(line: 11, column: 11, scope: !88)
!90 = !DILocalVariable(name: "_goodB2G_service_0", scope: !88, file: !1, line: 12, type: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !92)
!92 = !{!93, !94, !100, !107}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !91, file: !17, line: 240, baseType: !51, size: 16)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !91, file: !17, line: 241, baseType: !95, size: 16, offset: 16)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !97, line: 25, baseType: !98)
!97 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !99, line: 40, baseType: !53)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !91, file: !17, line: 242, baseType: !101, size: 32, offset: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !101, file: !17, line: 33, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !97, line: 26, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !99, line: 42, baseType: !5)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !91, file: !17, line: 245, baseType: !108, size: 64, offset: 64)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !110)
!109 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !{!111}
!111 = !DISubrange(count: 8)
!112 = !DILocation(line: 12, column: 26, scope: !88)
!113 = !DILocalVariable(name: "_goodB2G_replace_0", scope: !88, file: !1, line: 13, type: !59)
!114 = !DILocation(line: 13, column: 13, scope: !88)
!115 = !DILocalVariable(name: "_goodB2G_connectSocket_0", scope: !88, file: !1, line: 14, type: !70)
!116 = !DILocation(line: 14, column: 11, scope: !88)
!117 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !88, file: !1, line: 15, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 46, baseType: !120)
!119 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!120 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!121 = !DILocation(line: 15, column: 14, scope: !88)
!122 = !DILocation(line: 15, column: 42, scope: !88)
!123 = !DILocation(line: 15, column: 35, scope: !88)
!124 = !DILocation(line: 16, column: 7, scope: !88)
!125 = !DILocation(line: 18, column: 36, scope: !126)
!126 = distinct !DILexicalBlock(scope: !88, file: !1, line: 17, column: 7)
!127 = !DILocation(line: 18, column: 34, scope: !126)
!128 = !DILocation(line: 19, column: 13, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !1, line: 19, column: 13)
!130 = !DILocation(line: 19, column: 38, scope: !129)
!131 = !DILocation(line: 19, column: 13, scope: !126)
!132 = !DILocation(line: 21, column: 11, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 20, column: 9)
!134 = !DILocation(line: 24, column: 9, scope: !126)
!135 = !DILocation(line: 25, column: 28, scope: !126)
!136 = !DILocation(line: 25, column: 39, scope: !126)
!137 = !DILocation(line: 26, column: 46, scope: !126)
!138 = !DILocation(line: 26, column: 28, scope: !126)
!139 = !DILocation(line: 26, column: 37, scope: !126)
!140 = !DILocation(line: 26, column: 44, scope: !126)
!141 = !DILocation(line: 27, column: 39, scope: !126)
!142 = !DILocation(line: 27, column: 28, scope: !126)
!143 = !DILocation(line: 27, column: 37, scope: !126)
!144 = !DILocation(line: 28, column: 21, scope: !145)
!145 = distinct !DILexicalBlock(scope: !126, file: !1, line: 28, column: 13)
!146 = !DILocation(line: 28, column: 47, scope: !145)
!147 = !DILocation(line: 28, column: 13, scope: !145)
!148 = !DILocation(line: 28, column: 118, scope: !145)
!149 = !DILocation(line: 28, column: 13, scope: !126)
!150 = !DILocation(line: 30, column: 11, scope: !151)
!151 = distinct !DILexicalBlock(scope: !145, file: !1, line: 29, column: 9)
!152 = !DILocation(line: 33, column: 38, scope: !126)
!153 = !DILocation(line: 33, column: 74, scope: !126)
!154 = !DILocation(line: 33, column: 92, scope: !126)
!155 = !DILocation(line: 33, column: 90, scope: !126)
!156 = !DILocation(line: 33, column: 138, scope: !126)
!157 = !DILocation(line: 33, column: 136, scope: !126)
!158 = !DILocation(line: 33, column: 158, scope: !126)
!159 = !DILocation(line: 33, column: 128, scope: !126)
!160 = !DILocation(line: 33, column: 33, scope: !126)
!161 = !DILocation(line: 33, column: 31, scope: !126)
!162 = !DILocation(line: 34, column: 14, scope: !163)
!163 = distinct !DILexicalBlock(scope: !126, file: !1, line: 34, column: 13)
!164 = !DILocation(line: 34, column: 36, scope: !163)
!165 = !DILocation(line: 34, column: 45, scope: !163)
!166 = !DILocation(line: 34, column: 49, scope: !163)
!167 = !DILocation(line: 34, column: 71, scope: !163)
!168 = !DILocation(line: 34, column: 13, scope: !126)
!169 = !DILocation(line: 36, column: 11, scope: !170)
!170 = distinct !DILexicalBlock(scope: !163, file: !1, line: 35, column: 9)
!171 = !DILocation(line: 39, column: 9, scope: !126)
!172 = !DILocation(line: 39, column: 25, scope: !126)
!173 = !DILocation(line: 39, column: 47, scope: !126)
!174 = !DILocation(line: 39, column: 69, scope: !126)
!175 = !DILocation(line: 39, column: 44, scope: !126)
!176 = !DILocation(line: 39, column: 88, scope: !126)
!177 = !DILocation(line: 40, column: 37, scope: !126)
!178 = !DILocation(line: 40, column: 30, scope: !126)
!179 = !DILocation(line: 40, column: 28, scope: !126)
!180 = !DILocation(line: 41, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !126, file: !1, line: 41, column: 13)
!182 = !DILocation(line: 41, column: 13, scope: !126)
!183 = !DILocation(line: 43, column: 12, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !1, line: 42, column: 9)
!185 = !DILocation(line: 43, column: 31, scope: !184)
!186 = !DILocation(line: 44, column: 9, scope: !184)
!187 = !DILocation(line: 46, column: 37, scope: !126)
!188 = !DILocation(line: 46, column: 30, scope: !126)
!189 = !DILocation(line: 46, column: 28, scope: !126)
!190 = !DILocation(line: 47, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !126, file: !1, line: 47, column: 13)
!192 = !DILocation(line: 47, column: 13, scope: !126)
!193 = !DILocation(line: 49, column: 12, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !1, line: 48, column: 9)
!195 = !DILocation(line: 49, column: 31, scope: !194)
!196 = !DILocation(line: 50, column: 9, scope: !194)
!197 = !DILocation(line: 52, column: 7, scope: !126)
!198 = !DILocation(line: 54, column: 11, scope: !199)
!199 = distinct !DILexicalBlock(scope: !88, file: !1, line: 54, column: 11)
!200 = !DILocation(line: 54, column: 36, scope: !199)
!201 = !DILocation(line: 54, column: 11, scope: !88)
!202 = !DILocation(line: 56, column: 15, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 55, column: 7)
!204 = !DILocation(line: 56, column: 9, scope: !203)
!205 = !DILocation(line: 57, column: 7, scope: !203)
!206 = !DILocation(line: 61, column: 5, scope: !77)
!207 = !DILabel(scope: !77, name: "goodB2G_sink", file: !1, line: 62)
!208 = !DILocation(line: 62, column: 5, scope: !77)
!209 = !DILocalVariable(name: "_goodB2G_i_0", scope: !210, file: !1, line: 64, type: !70)
!210 = distinct !DILexicalBlock(scope: !77, file: !1, line: 63, column: 5)
!211 = !DILocation(line: 64, column: 11, scope: !210)
!212 = !DILocalVariable(name: "_goodB2G_n_0", scope: !210, file: !1, line: 65, type: !70)
!213 = !DILocation(line: 65, column: 11, scope: !210)
!214 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !210, file: !1, line: 66, type: !70)
!215 = !DILocation(line: 66, column: 11, scope: !210)
!216 = !DILocation(line: 67, column: 18, scope: !217)
!217 = distinct !DILexicalBlock(scope: !210, file: !1, line: 67, column: 11)
!218 = !DILocation(line: 67, column: 11, scope: !217)
!219 = !DILocation(line: 67, column: 56, scope: !217)
!220 = !DILocation(line: 67, column: 11, scope: !210)
!221 = !DILocation(line: 69, column: 13, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !1, line: 69, column: 13)
!223 = distinct !DILexicalBlock(scope: !217, file: !1, line: 68, column: 7)
!224 = !DILocation(line: 69, column: 26, scope: !222)
!225 = !DILocation(line: 69, column: 13, scope: !223)
!226 = !DILocation(line: 71, column: 34, scope: !227)
!227 = distinct !DILexicalBlock(scope: !222, file: !1, line: 70, column: 9)
!228 = !DILocation(line: 72, column: 29, scope: !229)
!229 = distinct !DILexicalBlock(scope: !227, file: !1, line: 72, column: 11)
!230 = !DILocation(line: 72, column: 16, scope: !229)
!231 = !DILocation(line: 72, column: 34, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !1, line: 72, column: 11)
!233 = !DILocation(line: 72, column: 49, scope: !232)
!234 = !DILocation(line: 72, column: 47, scope: !232)
!235 = !DILocation(line: 72, column: 11, scope: !229)
!236 = !DILocation(line: 74, column: 35, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !1, line: 73, column: 11)
!238 = !DILocation(line: 75, column: 11, scope: !237)
!239 = !DILocation(line: 72, column: 75, scope: !232)
!240 = !DILocation(line: 72, column: 11, scope: !232)
!241 = distinct !{!241, !235, !242, !243}
!242 = !DILocation(line: 75, column: 11, scope: !229)
!243 = !{!"llvm.loop.mustprogress"}
!244 = !DILocation(line: 77, column: 24, scope: !227)
!245 = !DILocation(line: 77, column: 11, scope: !227)
!246 = !DILocation(line: 78, column: 9, scope: !227)
!247 = !DILocation(line: 80, column: 7, scope: !223)
!248 = !DILocation(line: 82, column: 5, scope: !210)
!249 = !DILabel(scope: !77, name: "goodB2G_label_", file: !1, line: 84)
!250 = !DILocation(line: 84, column: 5, scope: !77)
!251 = !DILocalVariable(name: "_goodG2B_data_0", scope: !252, file: !1, line: 91, type: !59)
!252 = distinct !DILexicalBlock(scope: !64, file: !1, line: 90, column: 3)
!253 = !DILocation(line: 91, column: 11, scope: !252)
!254 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !252, file: !1, line: 92, type: !78)
!255 = !DILocation(line: 92, column: 10, scope: !252)
!256 = !DILocation(line: 93, column: 23, scope: !252)
!257 = !DILocation(line: 93, column: 21, scope: !252)
!258 = !DILocation(line: 94, column: 5, scope: !252)
!259 = !DILabel(scope: !252, name: "goodG2B_source", file: !1, line: 95)
!260 = !DILocation(line: 95, column: 5, scope: !252)
!261 = !DILocation(line: 97, column: 14, scope: !262)
!262 = distinct !DILexicalBlock(scope: !252, file: !1, line: 96, column: 5)
!263 = !DILocation(line: 97, column: 7, scope: !262)
!264 = !DILocation(line: 100, column: 5, scope: !252)
!265 = !DILabel(scope: !252, name: "goodG2B_sink", file: !1, line: 101)
!266 = !DILocation(line: 101, column: 5, scope: !252)
!267 = !DILocalVariable(name: "_goodG2B_i_0", scope: !268, file: !1, line: 103, type: !70)
!268 = distinct !DILexicalBlock(scope: !252, file: !1, line: 102, column: 5)
!269 = !DILocation(line: 103, column: 11, scope: !268)
!270 = !DILocalVariable(name: "_goodG2B_n_0", scope: !268, file: !1, line: 104, type: !70)
!271 = !DILocation(line: 104, column: 11, scope: !268)
!272 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !268, file: !1, line: 105, type: !70)
!273 = !DILocation(line: 105, column: 11, scope: !268)
!274 = !DILocation(line: 106, column: 18, scope: !275)
!275 = distinct !DILexicalBlock(scope: !268, file: !1, line: 106, column: 11)
!276 = !DILocation(line: 106, column: 11, scope: !275)
!277 = !DILocation(line: 106, column: 56, scope: !275)
!278 = !DILocation(line: 106, column: 11, scope: !268)
!279 = !DILocation(line: 108, column: 32, scope: !280)
!280 = distinct !DILexicalBlock(scope: !275, file: !1, line: 107, column: 7)
!281 = !DILocation(line: 109, column: 9, scope: !280)
!282 = !DILocation(line: 109, column: 16, scope: !280)
!283 = !DILocation(line: 110, column: 22, scope: !280)
!284 = !DILocation(line: 110, column: 9, scope: !280)
!285 = !DILocation(line: 111, column: 7, scope: !280)
!286 = !DILocation(line: 113, column: 5, scope: !268)
!287 = !DILabel(scope: !252, name: "goodG2B_label_", file: !1, line: 115)
!288 = !DILocation(line: 115, column: 5, scope: !252)
!289 = !DILocation(line: 120, column: 3, scope: !252)
!290 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_18_good_label_", file: !1, line: 121)
!291 = !DILocation(line: 121, column: 3, scope: !64)
!292 = !DILocation(line: 126, column: 1, scope: !64)
