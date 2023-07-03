; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_02192CWE606_Unchecked_Loop_Condition__char_connect_socket_02403_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_02192CWE606_Unchecked_Loop_Condition__char_connect_socket_02403_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_02192CWE606_Unchecked_Loop_Condition__char_connect_socket_02403_1(i8* %_goodB2G1_data_0, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_goodB2G1_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_recvResult_0 = alloca i32, align 4
  %_goodB2G1_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G1_replace_0 = alloca i8*, align 8
  %_goodB2G1_connectSocket_0 = alloca i32, align 4
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_n_0 = alloca i32, align 4
  %_goodB2G1_intVariable_0 = alloca i32, align 4
  %_goodG2B2_data_0 = alloca i8*, align 8
  %_goodG2B2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B2_i_0 = alloca i32, align 4
  %_goodG2B2_n_0 = alloca i32, align 4
  %_goodG2B2_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G1_data_0, i8** %_goodB2G1_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !76, metadata !DIExpression()), !dbg !81
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !81
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !81
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !82
  store i8* %arraydecay, i8** %_goodB2G1_data_0.addr, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_recvResult_0, metadata !84, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G1_service_0, metadata !89, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_replace_0, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_connectSocket_0, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 -1, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !115
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !116, metadata !DIExpression()), !dbg !120
  %1 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !121
  %call = call i64 @strlen(i8* %1) #7, !dbg !122
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !120
  br label %do.body, !dbg !123

do.body:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !124
  store i32 %call1, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !126
  %2 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !127
  %cmp = icmp eq i32 %2, -1, !dbg !129
  br i1 %cmp, label %if.then, label %if.end, !dbg !130

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !131

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_goodB2G1_service_0 to i8*, !dbg !133
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !133
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 0, !dbg !134
  store i16 2, i16* %sin_family, align 4, !dbg !135
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !136
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 2, !dbg !137
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !138
  store i32 %call2, i32* %s_addr, align 4, !dbg !139
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !140
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G1_service_0, i32 0, i32 1, !dbg !141
  store i16 %call3, i16* %sin_port, align 2, !dbg !142
  %4 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !143
  %5 = bitcast %struct.sockaddr_in* %_goodB2G1_service_0 to %struct.sockaddr*, !dbg !145
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !146
  %cmp5 = icmp eq i32 %call4, -1, !dbg !147
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !148

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !149

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !151
  %7 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !152
  %8 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !153
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !154
  %9 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !155
  %sub = sub i64 100, %9, !dbg !156
  %sub8 = sub i64 %sub, 1, !dbg !157
  %mul = mul i64 1, %sub8, !dbg !158
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !159
  %conv = trunc i64 %call9 to i32, !dbg !159
  store i32 %conv, i32* %_goodB2G1_recvResult_0, align 4, !dbg !160
  %10 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !161
  %cmp10 = icmp eq i32 %10, -1, !dbg !163
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !164

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !165
  %cmp12 = icmp eq i32 %11, 0, !dbg !166
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !167

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !168

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !170
  %13 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !171
  %14 = load i32, i32* %_goodB2G1_recvResult_0, align 4, !dbg !172
  %conv16 = sext i32 %14 to i64, !dbg !172
  %div = udiv i64 %conv16, 1, !dbg !173
  %add = add i64 %13, %div, !dbg !174
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !170
  store i8 0, i8* %arrayidx, align 1, !dbg !175
  %15 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !176
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !177
  store i8* %call17, i8** %_goodB2G1_replace_0, align 8, !dbg !178
  %16 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !179
  %tobool = icmp ne i8* %16, null, !dbg !179
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !181

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !182
  store i8 0, i8* %17, align 1, !dbg !184
  br label %if.end19, !dbg !185

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !186
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !187
  store i8* %call20, i8** %_goodB2G1_replace_0, align 8, !dbg !188
  %19 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !189
  %tobool21 = icmp ne i8* %19, null, !dbg !189
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !191

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %_goodB2G1_replace_0, align 8, !dbg !192
  store i8 0, i8* %20, align 1, !dbg !194
  br label %if.end23, !dbg !195

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !196

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !197
  %cmp24 = icmp ne i32 %21, -1, !dbg !199
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !200

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %_goodB2G1_connectSocket_0, align 4, !dbg !201
  %call27 = call i32 @close(i32 %22), !dbg !203
  br label %if.end28, !dbg !204

if.end28:                                         ; preds = %if.then26, %do.end
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !205, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !212, metadata !DIExpression()), !dbg !213
  %23 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !214
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G1_n_0) #8, !dbg !216
  %cmp30 = icmp eq i32 %call29, 1, !dbg !217
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !218

if.then32:                                        ; preds = %if.end28
  %24 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !219
  %cmp33 = icmp slt i32 %24, 10000, !dbg !222
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !223

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !224
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !226
  br label %for.cond, !dbg !228

for.cond:                                         ; preds = %for.inc, %if.then35
  %25 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !229
  %26 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !231
  %cmp36 = icmp slt i32 %25, %26, !dbg !232
  br i1 %cmp36, label %for.body, label %for.end, !dbg !233

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !234
  %inc = add nsw i32 %27, 1, !dbg !234
  store i32 %inc, i32* %_goodB2G1_intVariable_0, align 4, !dbg !234
  br label %for.inc, !dbg !236

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !237
  %inc38 = add nsw i32 %28, 1, !dbg !237
  store i32 %inc38, i32* %_goodB2G1_i_0, align 4, !dbg !237
  br label %for.cond, !dbg !238, !llvm.loop !239

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !242
  call void @printIntLine(i32 %29), !dbg !243
  br label %if.end39, !dbg !244

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !245

if.end40:                                         ; preds = %if.end39, %if.end28
  br label %goodB2G1_label_, !dbg !246

goodB2G1_label_:                                  ; preds = %if.end40
  call void @llvm.dbg.label(metadata !247), !dbg !248
  call void (...) @goodB2G2(), !dbg !249
  call void (...) @goodG2B1(), !dbg !250
  call void @llvm.dbg.declare(metadata i8** %_goodG2B2_data_0, metadata !251, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B2_dataBuffer_0, metadata !254, metadata !DIExpression()), !dbg !255
  %30 = bitcast [100 x i8]* %_goodG2B2_dataBuffer_0 to i8*, !dbg !255
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 100, i1 false), !dbg !255
  %arraydecay41 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B2_dataBuffer_0, i64 0, i64 0, !dbg !256
  store i8* %arraydecay41, i8** %_goodG2B2_data_0, align 8, !dbg !257
  %31 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !258
  %call42 = call i8* @strcpy(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !261
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_i_0, metadata !262, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_n_0, metadata !267, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_intVariable_0, metadata !269, metadata !DIExpression()), !dbg !270
  %32 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !271
  %call43 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B2_n_0) #8, !dbg !273
  %cmp44 = icmp eq i32 %call43, 1, !dbg !274
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !275

if.then46:                                        ; preds = %goodB2G1_label_
  store i32 0, i32* %_goodG2B2_intVariable_0, align 4, !dbg !276
  %33 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !278
  %34 = load i32, i32* %_goodG2B2_n_0, align 4, !dbg !279
  call void %33(i32 %34), !dbg !278
  %35 = load i32, i32* %_goodG2B2_intVariable_0, align 4, !dbg !280
  call void @printIntLine(i32 %35), !dbg !281
  br label %if.end47, !dbg !282

if.end47:                                         ; preds = %if.then46, %goodB2G1_label_
  br label %goodG2B2_label_, !dbg !283

goodG2B2_label_:                                  ; preds = %if.end47
  call void @llvm.dbg.label(metadata !284), !dbg !285
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_02_good_label_, !dbg !286

CWE606_Unchecked_Loop_Condition__char_connect_socket_02_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !287), !dbg !288
  ret void, !dbg !289
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodB2G2(...) #4

declare dso_local void @goodG2B1(...) #4

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_02192CWE606_Unchecked_Loop_Condition__char_connect_socket_02403_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_931/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_02192CWE606_Unchecked_Loop_Condition__char_connect_socket_02403_1", scope: !1, file: !1, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G1_data_0", arg: 1, scope: !64, file: !1, line: 3, type: !59)
!73 = !DILocation(line: 3, column: 131, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 156, scope: !64)
!76 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !77, file: !1, line: 6, type: !78)
!77 = distinct !DILexicalBlock(scope: !64, file: !1, line: 5, column: 3)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 100)
!81 = !DILocation(line: 6, column: 10, scope: !77)
!82 = !DILocation(line: 7, column: 24, scope: !77)
!83 = !DILocation(line: 7, column: 22, scope: !77)
!84 = !DILocalVariable(name: "_goodB2G1_recvResult_0", scope: !85, file: !1, line: 11, type: !70)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 10, column: 7)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 9, column: 5)
!87 = distinct !DILexicalBlock(scope: !77, file: !1, line: 8, column: 9)
!88 = !DILocation(line: 11, column: 13, scope: !85)
!89 = !DILocalVariable(name: "_goodB2G1_service_0", scope: !85, file: !1, line: 12, type: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !91)
!91 = !{!92, !93, !99, !106}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !90, file: !17, line: 240, baseType: !51, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !90, file: !17, line: 241, baseType: !94, size: 16, offset: 16)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !96, line: 25, baseType: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !98, line: 40, baseType: !53)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !90, file: !17, line: 242, baseType: !100, size: 32, offset: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !100, file: !17, line: 33, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !96, line: 26, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !98, line: 42, baseType: !5)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !90, file: !17, line: 245, baseType: !107, size: 64, offset: 64)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !109)
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !{!110}
!110 = !DISubrange(count: 8)
!111 = !DILocation(line: 12, column: 28, scope: !85)
!112 = !DILocalVariable(name: "_goodB2G1_replace_0", scope: !85, file: !1, line: 13, type: !59)
!113 = !DILocation(line: 13, column: 15, scope: !85)
!114 = !DILocalVariable(name: "_goodB2G1_connectSocket_0", scope: !85, file: !1, line: 14, type: !70)
!115 = !DILocation(line: 14, column: 13, scope: !85)
!116 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !85, file: !1, line: 15, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 46, baseType: !119)
!118 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!119 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!120 = !DILocation(line: 15, column: 16, scope: !85)
!121 = !DILocation(line: 15, column: 45, scope: !85)
!122 = !DILocation(line: 15, column: 38, scope: !85)
!123 = !DILocation(line: 16, column: 9, scope: !85)
!124 = !DILocation(line: 18, column: 39, scope: !125)
!125 = distinct !DILexicalBlock(scope: !85, file: !1, line: 17, column: 9)
!126 = !DILocation(line: 18, column: 37, scope: !125)
!127 = !DILocation(line: 19, column: 15, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 19, column: 15)
!129 = !DILocation(line: 19, column: 41, scope: !128)
!130 = !DILocation(line: 19, column: 15, scope: !125)
!131 = !DILocation(line: 21, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 20, column: 11)
!133 = !DILocation(line: 24, column: 11, scope: !125)
!134 = !DILocation(line: 25, column: 31, scope: !125)
!135 = !DILocation(line: 25, column: 42, scope: !125)
!136 = !DILocation(line: 26, column: 49, scope: !125)
!137 = !DILocation(line: 26, column: 31, scope: !125)
!138 = !DILocation(line: 26, column: 40, scope: !125)
!139 = !DILocation(line: 26, column: 47, scope: !125)
!140 = !DILocation(line: 27, column: 42, scope: !125)
!141 = !DILocation(line: 27, column: 31, scope: !125)
!142 = !DILocation(line: 27, column: 40, scope: !125)
!143 = !DILocation(line: 28, column: 23, scope: !144)
!144 = distinct !DILexicalBlock(scope: !125, file: !1, line: 28, column: 15)
!145 = !DILocation(line: 28, column: 50, scope: !144)
!146 = !DILocation(line: 28, column: 15, scope: !144)
!147 = !DILocation(line: 28, column: 123, scope: !144)
!148 = !DILocation(line: 28, column: 15, scope: !125)
!149 = !DILocation(line: 30, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !144, file: !1, line: 29, column: 11)
!151 = !DILocation(line: 33, column: 41, scope: !125)
!152 = !DILocation(line: 33, column: 78, scope: !125)
!153 = !DILocation(line: 33, column: 97, scope: !125)
!154 = !DILocation(line: 33, column: 95, scope: !125)
!155 = !DILocation(line: 33, column: 144, scope: !125)
!156 = !DILocation(line: 33, column: 142, scope: !125)
!157 = !DILocation(line: 33, column: 165, scope: !125)
!158 = !DILocation(line: 33, column: 134, scope: !125)
!159 = !DILocation(line: 33, column: 36, scope: !125)
!160 = !DILocation(line: 33, column: 34, scope: !125)
!161 = !DILocation(line: 34, column: 16, scope: !162)
!162 = distinct !DILexicalBlock(scope: !125, file: !1, line: 34, column: 15)
!163 = !DILocation(line: 34, column: 39, scope: !162)
!164 = !DILocation(line: 34, column: 48, scope: !162)
!165 = !DILocation(line: 34, column: 52, scope: !162)
!166 = !DILocation(line: 34, column: 75, scope: !162)
!167 = !DILocation(line: 34, column: 15, scope: !125)
!168 = !DILocation(line: 36, column: 13, scope: !169)
!169 = distinct !DILexicalBlock(scope: !162, file: !1, line: 35, column: 11)
!170 = !DILocation(line: 39, column: 11, scope: !125)
!171 = !DILocation(line: 39, column: 28, scope: !125)
!172 = !DILocation(line: 39, column: 51, scope: !125)
!173 = !DILocation(line: 39, column: 74, scope: !125)
!174 = !DILocation(line: 39, column: 48, scope: !125)
!175 = !DILocation(line: 39, column: 93, scope: !125)
!176 = !DILocation(line: 40, column: 40, scope: !125)
!177 = !DILocation(line: 40, column: 33, scope: !125)
!178 = !DILocation(line: 40, column: 31, scope: !125)
!179 = !DILocation(line: 41, column: 15, scope: !180)
!180 = distinct !DILexicalBlock(scope: !125, file: !1, line: 41, column: 15)
!181 = !DILocation(line: 41, column: 15, scope: !125)
!182 = !DILocation(line: 43, column: 14, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !1, line: 42, column: 11)
!184 = !DILocation(line: 43, column: 34, scope: !183)
!185 = !DILocation(line: 44, column: 11, scope: !183)
!186 = !DILocation(line: 46, column: 40, scope: !125)
!187 = !DILocation(line: 46, column: 33, scope: !125)
!188 = !DILocation(line: 46, column: 31, scope: !125)
!189 = !DILocation(line: 47, column: 15, scope: !190)
!190 = distinct !DILexicalBlock(scope: !125, file: !1, line: 47, column: 15)
!191 = !DILocation(line: 47, column: 15, scope: !125)
!192 = !DILocation(line: 49, column: 14, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 48, column: 11)
!194 = !DILocation(line: 49, column: 34, scope: !193)
!195 = !DILocation(line: 50, column: 11, scope: !193)
!196 = !DILocation(line: 52, column: 9, scope: !125)
!197 = !DILocation(line: 54, column: 13, scope: !198)
!198 = distinct !DILexicalBlock(scope: !85, file: !1, line: 54, column: 13)
!199 = !DILocation(line: 54, column: 39, scope: !198)
!200 = !DILocation(line: 54, column: 13, scope: !85)
!201 = !DILocation(line: 56, column: 17, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 55, column: 9)
!203 = !DILocation(line: 56, column: 11, scope: !202)
!204 = !DILocation(line: 57, column: 9, scope: !202)
!205 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !206, file: !1, line: 69, type: !70)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 68, column: 7)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 67, column: 5)
!208 = distinct !DILexicalBlock(scope: !77, file: !1, line: 62, column: 9)
!209 = !DILocation(line: 69, column: 13, scope: !206)
!210 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !206, file: !1, line: 70, type: !70)
!211 = !DILocation(line: 70, column: 13, scope: !206)
!212 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !206, file: !1, line: 71, type: !70)
!213 = !DILocation(line: 71, column: 13, scope: !206)
!214 = !DILocation(line: 72, column: 20, scope: !215)
!215 = distinct !DILexicalBlock(scope: !206, file: !1, line: 72, column: 13)
!216 = !DILocation(line: 72, column: 13, scope: !215)
!217 = !DILocation(line: 72, column: 60, scope: !215)
!218 = !DILocation(line: 72, column: 13, scope: !206)
!219 = !DILocation(line: 74, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 74, column: 15)
!221 = distinct !DILexicalBlock(scope: !215, file: !1, line: 73, column: 9)
!222 = !DILocation(line: 74, column: 29, scope: !220)
!223 = !DILocation(line: 74, column: 15, scope: !221)
!224 = !DILocation(line: 76, column: 37, scope: !225)
!225 = distinct !DILexicalBlock(scope: !220, file: !1, line: 75, column: 11)
!226 = !DILocation(line: 77, column: 32, scope: !227)
!227 = distinct !DILexicalBlock(scope: !225, file: !1, line: 77, column: 13)
!228 = !DILocation(line: 77, column: 18, scope: !227)
!229 = !DILocation(line: 77, column: 37, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !1, line: 77, column: 13)
!231 = !DILocation(line: 77, column: 53, scope: !230)
!232 = !DILocation(line: 77, column: 51, scope: !230)
!233 = !DILocation(line: 77, column: 13, scope: !227)
!234 = !DILocation(line: 79, column: 38, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !1, line: 78, column: 13)
!236 = !DILocation(line: 80, column: 13, scope: !235)
!237 = !DILocation(line: 77, column: 81, scope: !230)
!238 = !DILocation(line: 77, column: 13, scope: !230)
!239 = distinct !{!239, !233, !240, !241}
!240 = !DILocation(line: 80, column: 13, scope: !227)
!241 = !{!"llvm.loop.mustprogress"}
!242 = !DILocation(line: 82, column: 26, scope: !225)
!243 = !DILocation(line: 82, column: 13, scope: !225)
!244 = !DILocation(line: 83, column: 11, scope: !225)
!245 = !DILocation(line: 85, column: 9, scope: !221)
!246 = !DILocation(line: 62, column: 9, scope: !208)
!247 = !DILabel(scope: !77, name: "goodB2G1_label_", file: !1, line: 90)
!248 = !DILocation(line: 90, column: 5, scope: !77)
!249 = !DILocation(line: 96, column: 3, scope: !64)
!250 = !DILocation(line: 97, column: 3, scope: !64)
!251 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !252, file: !1, line: 99, type: !59)
!252 = distinct !DILexicalBlock(scope: !64, file: !1, line: 98, column: 3)
!253 = !DILocation(line: 99, column: 11, scope: !252)
!254 = !DILocalVariable(name: "_goodG2B2_dataBuffer_0", scope: !252, file: !1, line: 100, type: !78)
!255 = !DILocation(line: 100, column: 10, scope: !252)
!256 = !DILocation(line: 101, column: 24, scope: !252)
!257 = !DILocation(line: 101, column: 22, scope: !252)
!258 = !DILocation(line: 104, column: 14, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 103, column: 5)
!260 = distinct !DILexicalBlock(scope: !252, file: !1, line: 102, column: 9)
!261 = !DILocation(line: 104, column: 7, scope: !259)
!262 = !DILocalVariable(name: "_goodG2B2_i_0", scope: !263, file: !1, line: 110, type: !70)
!263 = distinct !DILexicalBlock(scope: !264, file: !1, line: 109, column: 7)
!264 = distinct !DILexicalBlock(scope: !265, file: !1, line: 108, column: 5)
!265 = distinct !DILexicalBlock(scope: !252, file: !1, line: 107, column: 9)
!266 = !DILocation(line: 110, column: 13, scope: !263)
!267 = !DILocalVariable(name: "_goodG2B2_n_0", scope: !263, file: !1, line: 111, type: !70)
!268 = !DILocation(line: 111, column: 13, scope: !263)
!269 = !DILocalVariable(name: "_goodG2B2_intVariable_0", scope: !263, file: !1, line: 112, type: !70)
!270 = !DILocation(line: 112, column: 13, scope: !263)
!271 = !DILocation(line: 113, column: 20, scope: !272)
!272 = distinct !DILexicalBlock(scope: !263, file: !1, line: 113, column: 13)
!273 = !DILocation(line: 113, column: 13, scope: !272)
!274 = !DILocation(line: 113, column: 60, scope: !272)
!275 = !DILocation(line: 113, column: 13, scope: !263)
!276 = !DILocation(line: 115, column: 35, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !1, line: 114, column: 9)
!278 = !DILocation(line: 116, column: 11, scope: !277)
!279 = !DILocation(line: 116, column: 18, scope: !277)
!280 = !DILocation(line: 117, column: 24, scope: !277)
!281 = !DILocation(line: 117, column: 11, scope: !277)
!282 = !DILocation(line: 118, column: 9, scope: !277)
!283 = !DILocation(line: 107, column: 9, scope: !265)
!284 = !DILabel(scope: !252, name: "goodG2B2_label_", file: !1, line: 123)
!285 = !DILocation(line: 123, column: 5, scope: !252)
!286 = !DILocation(line: 128, column: 3, scope: !252)
!287 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_02_good_label_", file: !1, line: 129)
!288 = !DILocation(line: 129, column: 3, scope: !64)
!289 = !DILocation(line: 134, column: 1, scope: !64)
