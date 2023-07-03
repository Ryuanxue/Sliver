; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_3295CWE606_Unchecked_Loop_Condition__char_connect_socket_32136_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_3295CWE606_Unchecked_Loop_Condition__char_connect_socket_32136_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_3295CWE606_Unchecked_Loop_Condition__char_connect_socket_32136_1(i8* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_1, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_1.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataPtr1_0 = alloca i8**, align 8
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataPtr2_0 = alloca i8**, align 8
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_recvResult_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_service_0 = alloca %struct.sockaddr_in, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_replace_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_connectSocket_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_2 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_1, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_1.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_1.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_0, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i8*** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataPtr1_0, metadata !78, metadata !DIExpression()), !dbg !80
  store i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_0, i8*** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataPtr1_0, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i8*** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataPtr2_0, metadata !81, metadata !DIExpression()), !dbg !82
  store i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_0, i8*** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataPtr2_0, align 8, !dbg !82
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataBuffer_0, metadata !83, metadata !DIExpression()), !dbg !87
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataBuffer_0 to i8*, !dbg !87
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !87
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataBuffer_0, i64 0, i64 0, !dbg !88
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_0, align 8, !dbg !89
  %1 = load i8**, i8*** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataPtr1_0, align 8, !dbg !90
  %2 = load i8*, i8** %1, align 8, !dbg !92
  store i8* %2, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_1.addr, align 8, !dbg !93
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_recvResult_0, metadata !94, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_service_0, metadata !97, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_replace_0, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_connectSocket_0, metadata !122, metadata !DIExpression()), !dbg !123
  store i32 -1, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_connectSocket_0, align 4, !dbg !123
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataLen_0, metadata !124, metadata !DIExpression()), !dbg !128
  %3 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_1.addr, align 8, !dbg !129
  %call = call i64 @strlen(i8* %3) #7, !dbg !130
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataLen_0, align 8, !dbg !128
  br label %do.body, !dbg !131

do.body:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !132
  store i32 %call1, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_connectSocket_0, align 4, !dbg !134
  %4 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_connectSocket_0, align 4, !dbg !135
  %cmp = icmp eq i32 %4, -1, !dbg !137
  br i1 %cmp, label %if.then, label %if.end, !dbg !138

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !139

if.end:                                           ; preds = %do.body
  %5 = bitcast %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_service_0 to i8*, !dbg !141
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false), !dbg !141
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_service_0, i32 0, i32 0, !dbg !142
  store i16 2, i16* %sin_family, align 4, !dbg !143
  %call2 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !144
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_service_0, i32 0, i32 2, !dbg !145
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !146
  store i32 %call2, i32* %s_addr, align 4, !dbg !147
  %call3 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !148
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_service_0, i32 0, i32 1, !dbg !149
  store i16 %call3, i16* %sin_port, align 2, !dbg !150
  %6 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_connectSocket_0, align 4, !dbg !151
  %7 = bitcast %struct.sockaddr_in* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_service_0 to %struct.sockaddr*, !dbg !153
  %call4 = call i32 @connect(i32 %6, %struct.sockaddr* %7, i32 16), !dbg !154
  %cmp5 = icmp eq i32 %call4, -1, !dbg !155
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !156

if.then6:                                         ; preds = %if.end
  br label %do.end, !dbg !157

if.end7:                                          ; preds = %if.end
  %8 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_connectSocket_0, align 4, !dbg !159
  %9 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_1.addr, align 8, !dbg !160
  %10 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataLen_0, align 8, !dbg !161
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !162
  %11 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataLen_0, align 8, !dbg !163
  %sub = sub i64 100, %11, !dbg !164
  %sub8 = sub i64 %sub, 1, !dbg !165
  %mul = mul i64 1, %sub8, !dbg !166
  %call9 = call i64 @recv(i32 %8, i8* %add.ptr, i64 %mul, i32 0), !dbg !167
  %conv = trunc i64 %call9 to i32, !dbg !167
  store i32 %conv, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_recvResult_0, align 4, !dbg !168
  %12 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_recvResult_0, align 4, !dbg !169
  %cmp10 = icmp eq i32 %12, -1, !dbg !171
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !172

lor.lhs.false:                                    ; preds = %if.end7
  %13 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_recvResult_0, align 4, !dbg !173
  %cmp12 = icmp eq i32 %13, 0, !dbg !174
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !175

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %do.end, !dbg !176

if.end15:                                         ; preds = %lor.lhs.false
  %14 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_1.addr, align 8, !dbg !178
  %15 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataLen_0, align 8, !dbg !179
  %16 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_recvResult_0, align 4, !dbg !180
  %conv16 = sext i32 %16 to i64, !dbg !180
  %div = udiv i64 %conv16, 1, !dbg !181
  %add = add i64 %15, %div, !dbg !182
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %add, !dbg !178
  store i8 0, i8* %arrayidx, align 1, !dbg !183
  %17 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_1.addr, align 8, !dbg !184
  %call17 = call i8* @strchr(i8* %17, i32 13) #7, !dbg !185
  store i8* %call17, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_replace_0, align 8, !dbg !186
  %18 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_replace_0, align 8, !dbg !187
  %tobool = icmp ne i8* %18, null, !dbg !187
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !189

if.then18:                                        ; preds = %if.end15
  %19 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_replace_0, align 8, !dbg !190
  store i8 0, i8* %19, align 1, !dbg !192
  br label %if.end19, !dbg !193

if.end19:                                         ; preds = %if.then18, %if.end15
  %20 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_1.addr, align 8, !dbg !194
  %call20 = call i8* @strchr(i8* %20, i32 10) #7, !dbg !195
  store i8* %call20, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_replace_0, align 8, !dbg !196
  %21 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_replace_0, align 8, !dbg !197
  %tobool21 = icmp ne i8* %21, null, !dbg !197
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !199

if.then22:                                        ; preds = %if.end19
  %22 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_replace_0, align 8, !dbg !200
  store i8 0, i8* %22, align 1, !dbg !202
  br label %if.end23, !dbg !203

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %do.end, !dbg !204

do.end:                                           ; preds = %if.end23, %if.then14, %if.then6, %if.then
  %23 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_connectSocket_0, align 4, !dbg !205
  %cmp24 = icmp ne i32 %23, -1, !dbg !207
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !208

if.then26:                                        ; preds = %do.end
  %24 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_connectSocket_0, align 4, !dbg !209
  %call27 = call i32 @close(i32 %24), !dbg !211
  br label %if.end28, !dbg !212

if.end28:                                         ; preds = %if.then26, %do.end
  %25 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_1.addr, align 8, !dbg !213
  %26 = load i8**, i8*** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataPtr1_0, align 8, !dbg !214
  store i8* %25, i8** %26, align 8, !dbg !215
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_2, metadata !216, metadata !DIExpression()), !dbg !218
  %27 = load i8**, i8*** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataPtr2_0, align 8, !dbg !219
  %28 = load i8*, i8** %27, align 8, !dbg !220
  store i8* %28, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_2, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_i_0, metadata !221, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_n_0, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_intVariable_0, metadata !226, metadata !DIExpression()), !dbg !227
  %29 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_2, align 8, !dbg !228
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_n_0) #8, !dbg !230
  %cmp30 = icmp eq i32 %call29, 1, !dbg !231
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !232

if.then32:                                        ; preds = %if.end28
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_intVariable_0, align 4, !dbg !233
  %30 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !235
  %31 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_n_0, align 4, !dbg !236
  call void %30(i32 %31), !dbg !235
  %32 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_intVariable_0, align 4, !dbg !237
  call void @printIntLine(i32 %32), !dbg !238
  br label %if.end33, !dbg !239

if.end33:                                         ; preds = %if.then32, %if.end28
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_label_, !dbg !240

CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_label_: ; preds = %if.end33
  call void @llvm.dbg.label(metadata !241), !dbg !242
  ret void, !dbg !243
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_3295CWE606_Unchecked_Loop_Condition__char_connect_socket_32136_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_951/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_3295CWE606_Unchecked_Loop_Condition__char_connect_socket_32136_1", scope: !1, file: !1, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_1", arg: 1, scope: !64, file: !1, line: 3, type: !59)
!73 = !DILocation(line: 3, column: 130, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 206, scope: !64)
!76 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_0", scope: !64, file: !1, line: 5, type: !59)
!77 = !DILocation(line: 5, column: 9, scope: !64)
!78 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataPtr1_0", scope: !64, file: !1, line: 6, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!80 = !DILocation(line: 6, column: 10, scope: !64)
!81 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataPtr2_0", scope: !64, file: !1, line: 7, type: !79)
!82 = !DILocation(line: 7, column: 10, scope: !64)
!83 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataBuffer_0", scope: !64, file: !1, line: 8, type: !84)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 100)
!87 = !DILocation(line: 8, column: 8, scope: !64)
!88 = !DILocation(line: 9, column: 73, scope: !64)
!89 = !DILocation(line: 9, column: 71, scope: !64)
!90 = !DILocation(line: 11, column: 76, scope: !91)
!91 = distinct !DILexicalBlock(scope: !64, file: !1, line: 10, column: 3)
!92 = !DILocation(line: 11, column: 75, scope: !91)
!93 = !DILocation(line: 11, column: 73, scope: !91)
!94 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_recvResult_0", scope: !95, file: !1, line: 13, type: !70)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 12, column: 5)
!96 = !DILocation(line: 13, column: 11, scope: !95)
!97 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_service_0", scope: !95, file: !1, line: 14, type: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !99)
!99 = !{!100, !101, !107, !114}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !98, file: !17, line: 240, baseType: !51, size: 16)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !98, file: !17, line: 241, baseType: !102, size: 16, offset: 16)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !104, line: 25, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !106, line: 40, baseType: !53)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !98, file: !17, line: 242, baseType: !108, size: 32, offset: 32)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !108, file: !17, line: 33, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !104, line: 26, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !106, line: 42, baseType: !5)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !98, file: !17, line: 245, baseType: !115, size: 64, offset: 64)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, elements: !117)
!116 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!117 = !{!118}
!118 = !DISubrange(count: 8)
!119 = !DILocation(line: 14, column: 26, scope: !95)
!120 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_replace_0", scope: !95, file: !1, line: 15, type: !59)
!121 = !DILocation(line: 15, column: 13, scope: !95)
!122 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_connectSocket_0", scope: !95, file: !1, line: 16, type: !70)
!123 = !DILocation(line: 16, column: 11, scope: !95)
!124 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_dataLen_0", scope: !95, file: !1, line: 17, type: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 46, baseType: !127)
!126 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!127 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!128 = !DILocation(line: 17, column: 14, scope: !95)
!129 = !DILocation(line: 17, column: 94, scope: !95)
!130 = !DILocation(line: 17, column: 87, scope: !95)
!131 = !DILocation(line: 18, column: 7, scope: !95)
!132 = !DILocation(line: 20, column: 88, scope: !133)
!133 = distinct !DILexicalBlock(scope: !95, file: !1, line: 19, column: 7)
!134 = !DILocation(line: 20, column: 86, scope: !133)
!135 = !DILocation(line: 21, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 21, column: 13)
!137 = !DILocation(line: 21, column: 90, scope: !136)
!138 = !DILocation(line: 21, column: 13, scope: !133)
!139 = !DILocation(line: 23, column: 11, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !1, line: 22, column: 9)
!141 = !DILocation(line: 26, column: 9, scope: !133)
!142 = !DILocation(line: 27, column: 80, scope: !133)
!143 = !DILocation(line: 27, column: 91, scope: !133)
!144 = !DILocation(line: 28, column: 98, scope: !133)
!145 = !DILocation(line: 28, column: 80, scope: !133)
!146 = !DILocation(line: 28, column: 89, scope: !133)
!147 = !DILocation(line: 28, column: 96, scope: !133)
!148 = !DILocation(line: 29, column: 91, scope: !133)
!149 = !DILocation(line: 29, column: 80, scope: !133)
!150 = !DILocation(line: 29, column: 89, scope: !133)
!151 = !DILocation(line: 30, column: 21, scope: !152)
!152 = distinct !DILexicalBlock(scope: !133, file: !1, line: 30, column: 13)
!153 = !DILocation(line: 30, column: 99, scope: !152)
!154 = !DILocation(line: 30, column: 13, scope: !152)
!155 = !DILocation(line: 30, column: 274, scope: !152)
!156 = !DILocation(line: 30, column: 13, scope: !133)
!157 = !DILocation(line: 32, column: 11, scope: !158)
!158 = distinct !DILexicalBlock(scope: !152, file: !1, line: 31, column: 9)
!159 = !DILocation(line: 35, column: 90, scope: !133)
!160 = !DILocation(line: 35, column: 178, scope: !133)
!161 = !DILocation(line: 35, column: 248, scope: !133)
!162 = !DILocation(line: 35, column: 246, scope: !133)
!163 = !DILocation(line: 35, column: 346, scope: !133)
!164 = !DILocation(line: 35, column: 344, scope: !133)
!165 = !DILocation(line: 35, column: 418, scope: !133)
!166 = !DILocation(line: 35, column: 336, scope: !133)
!167 = !DILocation(line: 35, column: 85, scope: !133)
!168 = !DILocation(line: 35, column: 83, scope: !133)
!169 = !DILocation(line: 36, column: 14, scope: !170)
!170 = distinct !DILexicalBlock(scope: !133, file: !1, line: 36, column: 13)
!171 = !DILocation(line: 36, column: 88, scope: !170)
!172 = !DILocation(line: 36, column: 97, scope: !170)
!173 = !DILocation(line: 36, column: 101, scope: !170)
!174 = !DILocation(line: 36, column: 175, scope: !170)
!175 = !DILocation(line: 36, column: 13, scope: !133)
!176 = !DILocation(line: 38, column: 11, scope: !177)
!177 = distinct !DILexicalBlock(scope: !170, file: !1, line: 37, column: 9)
!178 = !DILocation(line: 41, column: 9, scope: !133)
!179 = !DILocation(line: 41, column: 77, scope: !133)
!180 = !DILocation(line: 41, column: 151, scope: !133)
!181 = !DILocation(line: 41, column: 225, scope: !133)
!182 = !DILocation(line: 41, column: 148, scope: !133)
!183 = !DILocation(line: 41, column: 244, scope: !133)
!184 = !DILocation(line: 42, column: 89, scope: !133)
!185 = !DILocation(line: 42, column: 82, scope: !133)
!186 = !DILocation(line: 42, column: 80, scope: !133)
!187 = !DILocation(line: 43, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !133, file: !1, line: 43, column: 13)
!189 = !DILocation(line: 43, column: 13, scope: !133)
!190 = !DILocation(line: 45, column: 12, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !1, line: 44, column: 9)
!192 = !DILocation(line: 45, column: 83, scope: !191)
!193 = !DILocation(line: 46, column: 9, scope: !191)
!194 = !DILocation(line: 48, column: 89, scope: !133)
!195 = !DILocation(line: 48, column: 82, scope: !133)
!196 = !DILocation(line: 48, column: 80, scope: !133)
!197 = !DILocation(line: 49, column: 13, scope: !198)
!198 = distinct !DILexicalBlock(scope: !133, file: !1, line: 49, column: 13)
!199 = !DILocation(line: 49, column: 13, scope: !133)
!200 = !DILocation(line: 51, column: 12, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !1, line: 50, column: 9)
!202 = !DILocation(line: 51, column: 83, scope: !201)
!203 = !DILocation(line: 52, column: 9, scope: !201)
!204 = !DILocation(line: 54, column: 7, scope: !133)
!205 = !DILocation(line: 56, column: 11, scope: !206)
!206 = distinct !DILexicalBlock(scope: !95, file: !1, line: 56, column: 11)
!207 = !DILocation(line: 56, column: 88, scope: !206)
!208 = !DILocation(line: 56, column: 11, scope: !95)
!209 = !DILocation(line: 58, column: 15, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !1, line: 57, column: 7)
!211 = !DILocation(line: 58, column: 9, scope: !210)
!212 = !DILocation(line: 59, column: 7, scope: !210)
!213 = !DILocation(line: 62, column: 80, scope: !91)
!214 = !DILocation(line: 62, column: 6, scope: !91)
!215 = !DILocation(line: 62, column: 78, scope: !91)
!216 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_data_2", scope: !217, file: !1, line: 65, type: !59)
!217 = distinct !DILexicalBlock(scope: !64, file: !1, line: 64, column: 3)
!218 = !DILocation(line: 65, column: 11, scope: !217)
!219 = !DILocation(line: 65, column: 82, scope: !217)
!220 = !DILocation(line: 65, column: 81, scope: !217)
!221 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_i_0", scope: !222, file: !1, line: 67, type: !70)
!222 = distinct !DILexicalBlock(scope: !217, file: !1, line: 66, column: 5)
!223 = !DILocation(line: 67, column: 11, scope: !222)
!224 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_n_0", scope: !222, file: !1, line: 68, type: !70)
!225 = !DILocation(line: 68, column: 11, scope: !222)
!226 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_intVariable_0", scope: !222, file: !1, line: 69, type: !70)
!227 = !DILocation(line: 69, column: 11, scope: !222)
!228 = !DILocation(line: 70, column: 18, scope: !229)
!229 = distinct !DILexicalBlock(scope: !222, file: !1, line: 70, column: 11)
!230 = !DILocation(line: 70, column: 11, scope: !229)
!231 = !DILocation(line: 70, column: 160, scope: !229)
!232 = !DILocation(line: 70, column: 11, scope: !222)
!233 = !DILocation(line: 72, column: 84, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !1, line: 71, column: 7)
!235 = !DILocation(line: 73, column: 9, scope: !234)
!236 = !DILocation(line: 73, column: 16, scope: !234)
!237 = !DILocation(line: 74, column: 22, scope: !234)
!238 = !DILocation(line: 74, column: 9, scope: !234)
!239 = !DILocation(line: 75, column: 7, scope: !234)
!240 = !DILocation(line: 78, column: 3, scope: !217)
!241 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_32_bad_label_", file: !1, line: 79)
!242 = !DILocation(line: 79, column: 3, scope: !64)
!243 = !DILocation(line: 84, column: 1, scope: !64)
