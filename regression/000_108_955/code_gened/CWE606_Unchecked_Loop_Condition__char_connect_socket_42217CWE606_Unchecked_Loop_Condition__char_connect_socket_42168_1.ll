; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_42217CWE606_Unchecked_Loop_Condition__char_connect_socket_42168_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_42217CWE606_Unchecked_Loop_Condition__char_connect_socket_42168_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_42217CWE606_Unchecked_Loop_Condition__char_connect_socket_42168_1(i8* %_goodB2G_data_0, i8** %goodB2GSource_return_, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %goodB2GSource_return_.addr = alloca i8**, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2GSource_recvResult_0 = alloca i32, align 4
  %_goodB2GSource_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2GSource_replace_0 = alloca i8*, align 8
  %_goodB2GSource_connectSocket_0 = alloca i32, align 4
  %_goodB2GSource_dataLen_0 = alloca i64, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_n_0 = alloca i32, align 4
  %_goodG2B_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !73, metadata !DIExpression()), !dbg !74
  store i8** %goodB2GSource_return_, i8*** %goodB2GSource_return_.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %goodB2GSource_return_.addr, metadata !75, metadata !DIExpression()), !dbg !76
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !79, metadata !DIExpression()), !dbg !84
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !84
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !84
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !85
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %_goodB2GSource_recvResult_0, metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2GSource_service_0, metadata !91, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8** %_goodB2GSource_replace_0, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %_goodB2GSource_connectSocket_0, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 -1, i32* %_goodB2GSource_connectSocket_0, align 4, !dbg !117
  call void @llvm.dbg.declare(metadata i64* %_goodB2GSource_dataLen_0, metadata !118, metadata !DIExpression()), !dbg !122
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !123
  %call = call i64 @strlen(i8* %1) #7, !dbg !124
  store i64 %call, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !122
  br label %do.body, !dbg !125

do.body:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !126
  store i32 %call1, i32* %_goodB2GSource_connectSocket_0, align 4, !dbg !128
  %2 = load i32, i32* %_goodB2GSource_connectSocket_0, align 4, !dbg !129
  %cmp = icmp eq i32 %2, -1, !dbg !131
  br i1 %cmp, label %if.then, label %if.end, !dbg !132

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !133

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_goodB2GSource_service_0 to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !135
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2GSource_service_0, i32 0, i32 0, !dbg !136
  store i16 2, i16* %sin_family, align 4, !dbg !137
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !138
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2GSource_service_0, i32 0, i32 2, !dbg !139
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !140
  store i32 %call2, i32* %s_addr, align 4, !dbg !141
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !142
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2GSource_service_0, i32 0, i32 1, !dbg !143
  store i16 %call3, i16* %sin_port, align 2, !dbg !144
  %4 = load i32, i32* %_goodB2GSource_connectSocket_0, align 4, !dbg !145
  %5 = bitcast %struct.sockaddr_in* %_goodB2GSource_service_0 to %struct.sockaddr*, !dbg !147
  %call4 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !148
  %cmp5 = icmp eq i32 %call4, -1, !dbg !149
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !150

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !151

if.end7:                                          ; preds = %if.end
  %6 = load i32, i32* %_goodB2GSource_connectSocket_0, align 4, !dbg !153
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !154
  %8 = load i64, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !155
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !156
  %9 = load i64, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !157
  %sub = sub i64 100, %9, !dbg !158
  %sub8 = sub i64 %sub, 1, !dbg !159
  %mul = mul i64 1, %sub8, !dbg !160
  %call9 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !161
  %conv = trunc i64 %call9 to i32, !dbg !161
  store i32 %conv, i32* %_goodB2GSource_recvResult_0, align 4, !dbg !162
  %10 = load i32, i32* %_goodB2GSource_recvResult_0, align 4, !dbg !163
  %cmp10 = icmp eq i32 %10, -1, !dbg !165
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !166

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, i32* %_goodB2GSource_recvResult_0, align 4, !dbg !167
  %cmp12 = icmp eq i32 %11, 0, !dbg !168
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !169

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !170

if.end15:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !172
  %13 = load i64, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !173
  %14 = load i32, i32* %_goodB2GSource_recvResult_0, align 4, !dbg !174
  %conv16 = sext i32 %14 to i64, !dbg !174
  %div = udiv i64 %conv16, 1, !dbg !175
  %add = add i64 %13, %div, !dbg !176
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !172
  store i8 0, i8* %arrayidx, align 1, !dbg !177
  %15 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !178
  %call17 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !179
  store i8* %call17, i8** %_goodB2GSource_replace_0, align 8, !dbg !180
  %16 = load i8*, i8** %_goodB2GSource_replace_0, align 8, !dbg !181
  %tobool = icmp ne i8* %16, null, !dbg !181
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !183

if.then18:                                        ; preds = %if.end15
  %17 = load i8*, i8** %_goodB2GSource_replace_0, align 8, !dbg !184
  store i8 0, i8* %17, align 1, !dbg !186
  br label %if.end19, !dbg !187

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !188
  %call20 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !189
  store i8* %call20, i8** %_goodB2GSource_replace_0, align 8, !dbg !190
  %19 = load i8*, i8** %_goodB2GSource_replace_0, align 8, !dbg !191
  %tobool21 = icmp ne i8* %19, null, !dbg !191
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !193

if.then22:                                        ; preds = %if.end19
  %20 = load i8*, i8** %_goodB2GSource_replace_0, align 8, !dbg !194
  store i8 0, i8* %20, align 1, !dbg !196
  br label %if.end23, !dbg !197

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !198

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %21 = load i32, i32* %_goodB2GSource_connectSocket_0, align 4, !dbg !199
  %cmp24 = icmp ne i32 %21, -1, !dbg !201
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !202

if.then26:                                        ; preds = %do.end
  %22 = load i32, i32* %_goodB2GSource_connectSocket_0, align 4, !dbg !203
  %call27 = call i32 @close(i32 %22), !dbg !205
  br label %if.end28, !dbg !206

if.end28:                                         ; preds = %if.then26, %do.end
  %23 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !207
  %24 = bitcast i8* %23 to i8**, !dbg !207
  store i8** %24, i8*** %goodB2GSource_return_.addr, align 8, !dbg !208
  br label %goodB2GSource_label_, !dbg !209

goodB2GSource_label_:                             ; preds = %if.end28
  call void @llvm.dbg.label(metadata !210), !dbg !211
  %25 = load i8**, i8*** %goodB2GSource_return_.addr, align 8, !dbg !212
  %26 = bitcast i8** %25 to i8*, !dbg !212
  store i8* %26, i8** %_goodB2G_data_0.addr, align 8, !dbg !213
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !214, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !219, metadata !DIExpression()), !dbg !220
  %27 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !221
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #8, !dbg !223
  %cmp30 = icmp eq i32 %call29, 1, !dbg !224
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !225

if.then32:                                        ; preds = %goodB2GSource_label_
  %28 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !226
  %cmp33 = icmp slt i32 %28, 10000, !dbg !229
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !230

if.then35:                                        ; preds = %if.then32
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !231
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !233
  br label %for.cond, !dbg !235

for.cond:                                         ; preds = %for.inc, %if.then35
  %29 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !236
  %30 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !238
  %cmp36 = icmp slt i32 %29, %30, !dbg !239
  br i1 %cmp36, label %for.body, label %for.end, !dbg !240

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !241
  %inc = add nsw i32 %31, 1, !dbg !241
  store i32 %inc, i32* %_goodB2G_intVariable_0, align 4, !dbg !241
  br label %for.inc, !dbg !243

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !244
  %inc38 = add nsw i32 %32, 1, !dbg !244
  store i32 %inc38, i32* %_goodB2G_i_0, align 4, !dbg !244
  br label %for.cond, !dbg !245, !llvm.loop !246

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !249
  call void @printIntLine(i32 %33), !dbg !250
  br label %if.end39, !dbg !251

if.end39:                                         ; preds = %for.end, %if.then32
  br label %if.end40, !dbg !252

if.end40:                                         ; preds = %if.end39, %goodB2GSource_label_
  br label %goodB2G_label_, !dbg !253

goodB2G_label_:                                   ; preds = %if.end40
  call void @llvm.dbg.label(metadata !254), !dbg !255
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !256, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !259, metadata !DIExpression()), !dbg !260
  %34 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !260
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 100, i1 false), !dbg !260
  %arraydecay41 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !261
  store i8* %arraydecay41, i8** %_goodG2B_data_0, align 8, !dbg !262
  %35 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !263
  %call42 = call i8* @goodG2BSource(i8* %35), !dbg !264
  store i8* %call42, i8** %_goodG2B_data_0, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !266, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !269, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !271, metadata !DIExpression()), !dbg !272
  %36 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !273
  %call43 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0) #8, !dbg !275
  %cmp44 = icmp eq i32 %call43, 1, !dbg !276
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !277

if.then46:                                        ; preds = %goodB2G_label_
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !278
  %37 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !280
  %38 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !281
  call void %37(i32 %38), !dbg !280
  %39 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !282
  call void @printIntLine(i32 %39), !dbg !283
  br label %if.end47, !dbg !284

if.end47:                                         ; preds = %if.then46, %goodB2G_label_
  br label %goodG2B_label_, !dbg !285

goodG2B_label_:                                   ; preds = %if.end47
  call void @llvm.dbg.label(metadata !286), !dbg !287
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_42_good_label_, !dbg !288

CWE606_Unchecked_Loop_Condition__char_connect_socket_42_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !289), !dbg !290
  ret void, !dbg !291
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

declare dso_local i8* @goodG2BSource(i8*) #4

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_42217CWE606_Unchecked_Loop_Condition__char_connect_socket_42168_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_955/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_42217CWE606_Unchecked_Loop_Condition__char_connect_socket_42168_1", scope: !1, file: !1, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67, !68}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71}
!71 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!72 = !{}
!73 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !64, file: !1, line: 3, type: !59)
!74 = !DILocation(line: 3, column: 131, scope: !64)
!75 = !DILocalVariable(name: "goodB2GSource_return_", arg: 2, scope: !64, file: !1, line: 3, type: !67)
!76 = !DILocation(line: 3, column: 156, scope: !64)
!77 = !DILocalVariable(name: "opsink", arg: 3, scope: !64, file: !1, line: 3, type: !68)
!78 = !DILocation(line: 3, column: 186, scope: !64)
!79 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !80, file: !1, line: 6, type: !81)
!80 = distinct !DILexicalBlock(scope: !64, file: !1, line: 5, column: 3)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 100)
!84 = !DILocation(line: 6, column: 10, scope: !80)
!85 = !DILocation(line: 7, column: 23, scope: !80)
!86 = !DILocation(line: 7, column: 21, scope: !80)
!87 = !DILocalVariable(name: "_goodB2GSource_recvResult_0", scope: !88, file: !1, line: 10, type: !71)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 9, column: 7)
!89 = distinct !DILexicalBlock(scope: !80, file: !1, line: 8, column: 5)
!90 = !DILocation(line: 10, column: 13, scope: !88)
!91 = !DILocalVariable(name: "_goodB2GSource_service_0", scope: !88, file: !1, line: 11, type: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !93)
!93 = !{!94, !95, !101, !108}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !92, file: !17, line: 240, baseType: !51, size: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !92, file: !17, line: 241, baseType: !96, size: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !98, line: 25, baseType: !99)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !100, line: 40, baseType: !53)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !92, file: !17, line: 242, baseType: !102, size: 32, offset: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !102, file: !17, line: 33, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !98, line: 26, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !100, line: 42, baseType: !5)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !92, file: !17, line: 245, baseType: !109, size: 64, offset: 64)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !111)
!110 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !{!112}
!112 = !DISubrange(count: 8)
!113 = !DILocation(line: 11, column: 28, scope: !88)
!114 = !DILocalVariable(name: "_goodB2GSource_replace_0", scope: !88, file: !1, line: 12, type: !59)
!115 = !DILocation(line: 12, column: 15, scope: !88)
!116 = !DILocalVariable(name: "_goodB2GSource_connectSocket_0", scope: !88, file: !1, line: 13, type: !71)
!117 = !DILocation(line: 13, column: 13, scope: !88)
!118 = !DILocalVariable(name: "_goodB2GSource_dataLen_0", scope: !88, file: !1, line: 14, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DILocation(line: 14, column: 16, scope: !88)
!123 = !DILocation(line: 14, column: 50, scope: !88)
!124 = !DILocation(line: 14, column: 43, scope: !88)
!125 = !DILocation(line: 15, column: 9, scope: !88)
!126 = !DILocation(line: 17, column: 44, scope: !127)
!127 = distinct !DILexicalBlock(scope: !88, file: !1, line: 16, column: 9)
!128 = !DILocation(line: 17, column: 42, scope: !127)
!129 = !DILocation(line: 18, column: 15, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !1, line: 18, column: 15)
!131 = !DILocation(line: 18, column: 46, scope: !130)
!132 = !DILocation(line: 18, column: 15, scope: !127)
!133 = !DILocation(line: 20, column: 13, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 19, column: 11)
!135 = !DILocation(line: 23, column: 11, scope: !127)
!136 = !DILocation(line: 24, column: 36, scope: !127)
!137 = !DILocation(line: 24, column: 47, scope: !127)
!138 = !DILocation(line: 25, column: 54, scope: !127)
!139 = !DILocation(line: 25, column: 36, scope: !127)
!140 = !DILocation(line: 25, column: 45, scope: !127)
!141 = !DILocation(line: 25, column: 52, scope: !127)
!142 = !DILocation(line: 26, column: 47, scope: !127)
!143 = !DILocation(line: 26, column: 36, scope: !127)
!144 = !DILocation(line: 26, column: 45, scope: !127)
!145 = !DILocation(line: 27, column: 23, scope: !146)
!146 = distinct !DILexicalBlock(scope: !127, file: !1, line: 27, column: 15)
!147 = !DILocation(line: 27, column: 55, scope: !146)
!148 = !DILocation(line: 27, column: 15, scope: !146)
!149 = !DILocation(line: 27, column: 138, scope: !146)
!150 = !DILocation(line: 27, column: 15, scope: !127)
!151 = !DILocation(line: 29, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !1, line: 28, column: 11)
!153 = !DILocation(line: 32, column: 46, scope: !127)
!154 = !DILocation(line: 32, column: 88, scope: !127)
!155 = !DILocation(line: 32, column: 106, scope: !127)
!156 = !DILocation(line: 32, column: 104, scope: !127)
!157 = !DILocation(line: 32, column: 158, scope: !127)
!158 = !DILocation(line: 32, column: 156, scope: !127)
!159 = !DILocation(line: 32, column: 184, scope: !127)
!160 = !DILocation(line: 32, column: 148, scope: !127)
!161 = !DILocation(line: 32, column: 41, scope: !127)
!162 = !DILocation(line: 32, column: 39, scope: !127)
!163 = !DILocation(line: 33, column: 16, scope: !164)
!164 = distinct !DILexicalBlock(scope: !127, file: !1, line: 33, column: 15)
!165 = !DILocation(line: 33, column: 44, scope: !164)
!166 = !DILocation(line: 33, column: 53, scope: !164)
!167 = !DILocation(line: 33, column: 57, scope: !164)
!168 = !DILocation(line: 33, column: 85, scope: !164)
!169 = !DILocation(line: 33, column: 15, scope: !127)
!170 = !DILocation(line: 35, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !1, line: 34, column: 11)
!172 = !DILocation(line: 38, column: 11, scope: !127)
!173 = !DILocation(line: 38, column: 27, scope: !127)
!174 = !DILocation(line: 38, column: 55, scope: !127)
!175 = !DILocation(line: 38, column: 83, scope: !127)
!176 = !DILocation(line: 38, column: 52, scope: !127)
!177 = !DILocation(line: 38, column: 102, scope: !127)
!178 = !DILocation(line: 39, column: 45, scope: !127)
!179 = !DILocation(line: 39, column: 38, scope: !127)
!180 = !DILocation(line: 39, column: 36, scope: !127)
!181 = !DILocation(line: 40, column: 15, scope: !182)
!182 = distinct !DILexicalBlock(scope: !127, file: !1, line: 40, column: 15)
!183 = !DILocation(line: 40, column: 15, scope: !127)
!184 = !DILocation(line: 42, column: 14, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 41, column: 11)
!186 = !DILocation(line: 42, column: 39, scope: !185)
!187 = !DILocation(line: 43, column: 11, scope: !185)
!188 = !DILocation(line: 45, column: 45, scope: !127)
!189 = !DILocation(line: 45, column: 38, scope: !127)
!190 = !DILocation(line: 45, column: 36, scope: !127)
!191 = !DILocation(line: 46, column: 15, scope: !192)
!192 = distinct !DILexicalBlock(scope: !127, file: !1, line: 46, column: 15)
!193 = !DILocation(line: 46, column: 15, scope: !127)
!194 = !DILocation(line: 48, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 47, column: 11)
!196 = !DILocation(line: 48, column: 39, scope: !195)
!197 = !DILocation(line: 49, column: 11, scope: !195)
!198 = !DILocation(line: 51, column: 9, scope: !127)
!199 = !DILocation(line: 53, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !88, file: !1, line: 53, column: 13)
!201 = !DILocation(line: 53, column: 44, scope: !200)
!202 = !DILocation(line: 53, column: 13, scope: !88)
!203 = !DILocation(line: 55, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 54, column: 9)
!205 = !DILocation(line: 55, column: 11, scope: !204)
!206 = !DILocation(line: 56, column: 9, scope: !204)
!207 = !DILocation(line: 59, column: 31, scope: !89)
!208 = !DILocation(line: 59, column: 29, scope: !89)
!209 = !DILocation(line: 60, column: 7, scope: !89)
!210 = !DILabel(scope: !89, name: "goodB2GSource_label_", file: !1, line: 61)
!211 = !DILocation(line: 61, column: 7, scope: !89)
!212 = !DILocation(line: 67, column: 23, scope: !80)
!213 = !DILocation(line: 67, column: 21, scope: !80)
!214 = !DILocalVariable(name: "_goodB2G_i_0", scope: !215, file: !1, line: 69, type: !71)
!215 = distinct !DILexicalBlock(scope: !80, file: !1, line: 68, column: 5)
!216 = !DILocation(line: 69, column: 11, scope: !215)
!217 = !DILocalVariable(name: "_goodB2G_n_0", scope: !215, file: !1, line: 70, type: !71)
!218 = !DILocation(line: 70, column: 11, scope: !215)
!219 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !215, file: !1, line: 71, type: !71)
!220 = !DILocation(line: 71, column: 11, scope: !215)
!221 = !DILocation(line: 72, column: 18, scope: !222)
!222 = distinct !DILexicalBlock(scope: !215, file: !1, line: 72, column: 11)
!223 = !DILocation(line: 72, column: 11, scope: !222)
!224 = !DILocation(line: 72, column: 56, scope: !222)
!225 = !DILocation(line: 72, column: 11, scope: !215)
!226 = !DILocation(line: 74, column: 13, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 74, column: 13)
!228 = distinct !DILexicalBlock(scope: !222, file: !1, line: 73, column: 7)
!229 = !DILocation(line: 74, column: 26, scope: !227)
!230 = !DILocation(line: 74, column: 13, scope: !228)
!231 = !DILocation(line: 76, column: 34, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !1, line: 75, column: 9)
!233 = !DILocation(line: 77, column: 29, scope: !234)
!234 = distinct !DILexicalBlock(scope: !232, file: !1, line: 77, column: 11)
!235 = !DILocation(line: 77, column: 16, scope: !234)
!236 = !DILocation(line: 77, column: 34, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !1, line: 77, column: 11)
!238 = !DILocation(line: 77, column: 49, scope: !237)
!239 = !DILocation(line: 77, column: 47, scope: !237)
!240 = !DILocation(line: 77, column: 11, scope: !234)
!241 = !DILocation(line: 79, column: 35, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 78, column: 11)
!243 = !DILocation(line: 80, column: 11, scope: !242)
!244 = !DILocation(line: 77, column: 75, scope: !237)
!245 = !DILocation(line: 77, column: 11, scope: !237)
!246 = distinct !{!246, !240, !247, !248}
!247 = !DILocation(line: 80, column: 11, scope: !234)
!248 = !{!"llvm.loop.mustprogress"}
!249 = !DILocation(line: 82, column: 24, scope: !232)
!250 = !DILocation(line: 82, column: 11, scope: !232)
!251 = !DILocation(line: 83, column: 9, scope: !232)
!252 = !DILocation(line: 85, column: 7, scope: !228)
!253 = !DILocation(line: 87, column: 5, scope: !215)
!254 = !DILabel(scope: !80, name: "goodB2G_label_", file: !1, line: 88)
!255 = !DILocation(line: 88, column: 5, scope: !80)
!256 = !DILocalVariable(name: "_goodG2B_data_0", scope: !257, file: !1, line: 95, type: !59)
!257 = distinct !DILexicalBlock(scope: !64, file: !1, line: 94, column: 3)
!258 = !DILocation(line: 95, column: 11, scope: !257)
!259 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !257, file: !1, line: 96, type: !81)
!260 = !DILocation(line: 96, column: 10, scope: !257)
!261 = !DILocation(line: 97, column: 23, scope: !257)
!262 = !DILocation(line: 97, column: 21, scope: !257)
!263 = !DILocation(line: 98, column: 37, scope: !257)
!264 = !DILocation(line: 98, column: 23, scope: !257)
!265 = !DILocation(line: 98, column: 21, scope: !257)
!266 = !DILocalVariable(name: "_goodG2B_i_0", scope: !267, file: !1, line: 100, type: !71)
!267 = distinct !DILexicalBlock(scope: !257, file: !1, line: 99, column: 5)
!268 = !DILocation(line: 100, column: 11, scope: !267)
!269 = !DILocalVariable(name: "_goodG2B_n_0", scope: !267, file: !1, line: 101, type: !71)
!270 = !DILocation(line: 101, column: 11, scope: !267)
!271 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !267, file: !1, line: 102, type: !71)
!272 = !DILocation(line: 102, column: 11, scope: !267)
!273 = !DILocation(line: 103, column: 18, scope: !274)
!274 = distinct !DILexicalBlock(scope: !267, file: !1, line: 103, column: 11)
!275 = !DILocation(line: 103, column: 11, scope: !274)
!276 = !DILocation(line: 103, column: 56, scope: !274)
!277 = !DILocation(line: 103, column: 11, scope: !267)
!278 = !DILocation(line: 105, column: 32, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !1, line: 104, column: 7)
!280 = !DILocation(line: 106, column: 9, scope: !279)
!281 = !DILocation(line: 106, column: 16, scope: !279)
!282 = !DILocation(line: 107, column: 22, scope: !279)
!283 = !DILocation(line: 107, column: 9, scope: !279)
!284 = !DILocation(line: 108, column: 7, scope: !279)
!285 = !DILocation(line: 110, column: 5, scope: !267)
!286 = !DILabel(scope: !257, name: "goodG2B_label_", file: !1, line: 111)
!287 = !DILocation(line: 111, column: 5, scope: !257)
!288 = !DILocation(line: 116, column: 3, scope: !257)
!289 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_42_good_label_", file: !1, line: 117)
!290 = !DILocation(line: 117, column: 3, scope: !64)
!291 = !DILocation(line: 122, column: 1, scope: !64)
