; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_12289CWE606_Unchecked_Loop_Condition__char_connect_socket_12406_1_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_12289CWE606_Unchecked_Loop_Condition__char_connect_socket_12406_1_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_12289CWE606_Unchecked_Loop_Condition__char_connect_socket_12406_1_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !64 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_recvResult_0 = alloca i32, align 4
  %_goodB2G_service_0 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_replace_0 = alloca i8*, align 8
  %_goodB2G_connectSocket_0 = alloca i32, align 4
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_recvResult_032 = alloca i32, align 4
  %_goodB2G_service_033 = alloca %struct.sockaddr_in, align 4
  %_goodB2G_replace_034 = alloca i8*, align 8
  %_goodB2G_connectSocket_035 = alloca i32, align 4
  %_goodB2G_dataLen_036 = alloca i64, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  %_goodB2G_i_0103 = alloca i32, align 4
  %_goodB2G_n_0104 = alloca i32, align 4
  %_goodB2G_intVariable_0105 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_n_0 = alloca i32, align 4
  %_goodG2B_intVariable_0 = alloca i32, align 4
  %_goodG2B_i_0149 = alloca i32, align 4
  %_goodG2B_n_0150 = alloca i32, align 4
  %_goodG2B_intVariable_0151 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !76, metadata !DIExpression()), !dbg !81
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !81
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !81
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !82
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !83
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !84
  %tobool = icmp ne i32 %call, 0, !dbg !84
  br i1 %tobool, label %if.then, label %if.else, !dbg !86

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_0, metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_0, metadata !91, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_replace_0, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_connectSocket_0, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 -1, i32* %_goodB2G_connectSocket_0, align 4, !dbg !117
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !118, metadata !DIExpression()), !dbg !122
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !123
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !124
  store i64 %call1, i64* %_goodB2G_dataLen_0, align 8, !dbg !122
  br label %do.body, !dbg !125

do.body:                                          ; preds = %if.then
  %call2 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !126
  store i32 %call2, i32* %_goodB2G_connectSocket_0, align 4, !dbg !128
  %2 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !129
  %cmp = icmp eq i32 %2, -1, !dbg !131
  br i1 %cmp, label %if.then3, label %if.end, !dbg !132

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !133

if.end:                                           ; preds = %do.body
  %3 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false), !dbg !135
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 0, !dbg !136
  store i16 2, i16* %sin_family, align 4, !dbg !137
  %call4 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !138
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 2, !dbg !139
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !140
  store i32 %call4, i32* %s_addr, align 4, !dbg !141
  %call5 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !142
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_0, i32 0, i32 1, !dbg !143
  store i16 %call5, i16* %sin_port, align 2, !dbg !144
  %4 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !145
  %5 = bitcast %struct.sockaddr_in* %_goodB2G_service_0 to %struct.sockaddr*, !dbg !147
  %call6 = call i32 @connect(i32 %4, %struct.sockaddr* %5, i32 16), !dbg !148
  %cmp7 = icmp eq i32 %call6, -1, !dbg !149
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !150

if.then8:                                         ; preds = %if.end
  br label %do.end, !dbg !151

if.end9:                                          ; preds = %if.end
  %6 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !153
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !154
  %8 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !155
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !156
  %9 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !157
  %sub = sub i64 100, %9, !dbg !158
  %sub10 = sub i64 %sub, 1, !dbg !159
  %mul = mul i64 1, %sub10, !dbg !160
  %call11 = call i64 @recv(i32 %6, i8* %add.ptr, i64 %mul, i32 0), !dbg !161
  %conv = trunc i64 %call11 to i32, !dbg !161
  store i32 %conv, i32* %_goodB2G_recvResult_0, align 4, !dbg !162
  %10 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !163
  %cmp12 = icmp eq i32 %10, -1, !dbg !165
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !166

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !167
  %cmp14 = icmp eq i32 %11, 0, !dbg !168
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !169

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.end, !dbg !170

if.end17:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !172
  %13 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !173
  %14 = load i32, i32* %_goodB2G_recvResult_0, align 4, !dbg !174
  %conv18 = sext i32 %14 to i64, !dbg !174
  %div = udiv i64 %conv18, 1, !dbg !175
  %add = add i64 %13, %div, !dbg !176
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !172
  store i8 0, i8* %arrayidx, align 1, !dbg !177
  %15 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !178
  %call19 = call i8* @strchr(i8* %15, i32 13) #7, !dbg !179
  store i8* %call19, i8** %_goodB2G_replace_0, align 8, !dbg !180
  %16 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !181
  %tobool20 = icmp ne i8* %16, null, !dbg !181
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !183

if.then21:                                        ; preds = %if.end17
  %17 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !184
  store i8 0, i8* %17, align 1, !dbg !186
  br label %if.end22, !dbg !187

if.end22:                                         ; preds = %if.then21, %if.end17
  %18 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !188
  %call23 = call i8* @strchr(i8* %18, i32 10) #7, !dbg !189
  store i8* %call23, i8** %_goodB2G_replace_0, align 8, !dbg !190
  %19 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !191
  %tobool24 = icmp ne i8* %19, null, !dbg !191
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !193

if.then25:                                        ; preds = %if.end22
  %20 = load i8*, i8** %_goodB2G_replace_0, align 8, !dbg !194
  store i8 0, i8* %20, align 1, !dbg !196
  br label %if.end26, !dbg !197

if.end26:                                         ; preds = %if.then25, %if.end22
  br label %do.end, !dbg !198

do.end:                                           ; preds = %if.end26, %if.then16, %if.then8, %if.then3
  %21 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !199
  %cmp27 = icmp ne i32 %21, -1, !dbg !201
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !202

if.then29:                                        ; preds = %do.end
  %22 = load i32, i32* %_goodB2G_connectSocket_0, align 4, !dbg !203
  %call30 = call i32 @close(i32 %22), !dbg !205
  br label %if.end31, !dbg !206

if.end31:                                         ; preds = %if.then29, %do.end
  br label %if.end86, !dbg !207

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_recvResult_032, metadata !208, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %_goodB2G_service_033, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_replace_034, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_connectSocket_035, metadata !216, metadata !DIExpression()), !dbg !217
  store i32 -1, i32* %_goodB2G_connectSocket_035, align 4, !dbg !217
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_036, metadata !218, metadata !DIExpression()), !dbg !219
  %23 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !220
  %call37 = call i64 @strlen(i8* %23) #7, !dbg !221
  store i64 %call37, i64* %_goodB2G_dataLen_036, align 8, !dbg !219
  br label %do.body38, !dbg !222

do.body38:                                        ; preds = %if.else
  %call39 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket to i32 (i32, i32, i32, ...)*)(i32 2, i32 1, i32 6), !dbg !223
  store i32 %call39, i32* %_goodB2G_connectSocket_035, align 4, !dbg !225
  %24 = load i32, i32* %_goodB2G_connectSocket_035, align 4, !dbg !226
  %cmp40 = icmp eq i32 %24, -1, !dbg !228
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !229

if.then42:                                        ; preds = %do.body38
  br label %do.end80, !dbg !230

if.end43:                                         ; preds = %do.body38
  %25 = bitcast %struct.sockaddr_in* %_goodB2G_service_033 to i8*, !dbg !232
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 16, i1 false), !dbg !232
  %sin_family44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_033, i32 0, i32 0, !dbg !233
  store i16 2, i16* %sin_family44, align 4, !dbg !234
  %call45 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !235
  %sin_addr46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_033, i32 0, i32 2, !dbg !236
  %s_addr47 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr46, i32 0, i32 0, !dbg !237
  store i32 %call45, i32* %s_addr47, align 4, !dbg !238
  %call48 = call zeroext i16 @htons(i16 zeroext 27015) #9, !dbg !239
  %sin_port49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %_goodB2G_service_033, i32 0, i32 1, !dbg !240
  store i16 %call48, i16* %sin_port49, align 2, !dbg !241
  %26 = load i32, i32* %_goodB2G_connectSocket_035, align 4, !dbg !242
  %27 = bitcast %struct.sockaddr_in* %_goodB2G_service_033 to %struct.sockaddr*, !dbg !244
  %call50 = call i32 @connect(i32 %26, %struct.sockaddr* %27, i32 16), !dbg !245
  %cmp51 = icmp eq i32 %call50, -1, !dbg !246
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !247

if.then53:                                        ; preds = %if.end43
  br label %do.end80, !dbg !248

if.end54:                                         ; preds = %if.end43
  %28 = load i32, i32* %_goodB2G_connectSocket_035, align 4, !dbg !250
  %29 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !251
  %30 = load i64, i64* %_goodB2G_dataLen_036, align 8, !dbg !252
  %add.ptr55 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !253
  %31 = load i64, i64* %_goodB2G_dataLen_036, align 8, !dbg !254
  %sub56 = sub i64 100, %31, !dbg !255
  %sub57 = sub i64 %sub56, 1, !dbg !256
  %mul58 = mul i64 1, %sub57, !dbg !257
  %call59 = call i64 @recv(i32 %28, i8* %add.ptr55, i64 %mul58, i32 0), !dbg !258
  %conv60 = trunc i64 %call59 to i32, !dbg !258
  store i32 %conv60, i32* %_goodB2G_recvResult_032, align 4, !dbg !259
  %32 = load i32, i32* %_goodB2G_recvResult_032, align 4, !dbg !260
  %cmp61 = icmp eq i32 %32, -1, !dbg !262
  br i1 %cmp61, label %if.then66, label %lor.lhs.false63, !dbg !263

lor.lhs.false63:                                  ; preds = %if.end54
  %33 = load i32, i32* %_goodB2G_recvResult_032, align 4, !dbg !264
  %cmp64 = icmp eq i32 %33, 0, !dbg !265
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !266

if.then66:                                        ; preds = %lor.lhs.false63, %if.end54
  br label %do.end80, !dbg !267

if.end67:                                         ; preds = %lor.lhs.false63
  %34 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !269
  %35 = load i64, i64* %_goodB2G_dataLen_036, align 8, !dbg !270
  %36 = load i32, i32* %_goodB2G_recvResult_032, align 4, !dbg !271
  %conv68 = sext i32 %36 to i64, !dbg !271
  %div69 = udiv i64 %conv68, 1, !dbg !272
  %add70 = add i64 %35, %div69, !dbg !273
  %arrayidx71 = getelementptr inbounds i8, i8* %34, i64 %add70, !dbg !269
  store i8 0, i8* %arrayidx71, align 1, !dbg !274
  %37 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !275
  %call72 = call i8* @strchr(i8* %37, i32 13) #7, !dbg !276
  store i8* %call72, i8** %_goodB2G_replace_034, align 8, !dbg !277
  %38 = load i8*, i8** %_goodB2G_replace_034, align 8, !dbg !278
  %tobool73 = icmp ne i8* %38, null, !dbg !278
  br i1 %tobool73, label %if.then74, label %if.end75, !dbg !280

if.then74:                                        ; preds = %if.end67
  %39 = load i8*, i8** %_goodB2G_replace_034, align 8, !dbg !281
  store i8 0, i8* %39, align 1, !dbg !283
  br label %if.end75, !dbg !284

if.end75:                                         ; preds = %if.then74, %if.end67
  %40 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !285
  %call76 = call i8* @strchr(i8* %40, i32 10) #7, !dbg !286
  store i8* %call76, i8** %_goodB2G_replace_034, align 8, !dbg !287
  %41 = load i8*, i8** %_goodB2G_replace_034, align 8, !dbg !288
  %tobool77 = icmp ne i8* %41, null, !dbg !288
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !290

if.then78:                                        ; preds = %if.end75
  %42 = load i8*, i8** %_goodB2G_replace_034, align 8, !dbg !291
  store i8 0, i8* %42, align 1, !dbg !293
  br label %if.end79, !dbg !294

if.end79:                                         ; preds = %if.then78, %if.end75
  br label %do.end80, !dbg !295

do.end80:                                         ; preds = %if.end79, %if.then66, %if.then53, %if.then42
  %43 = load i32, i32* %_goodB2G_connectSocket_035, align 4, !dbg !296
  %cmp81 = icmp ne i32 %43, -1, !dbg !298
  br i1 %cmp81, label %if.then83, label %if.end85, !dbg !299

if.then83:                                        ; preds = %do.end80
  %44 = load i32, i32* %_goodB2G_connectSocket_035, align 4, !dbg !300
  %call84 = call i32 @close(i32 %44), !dbg !302
  br label %if.end85, !dbg !303

if.end85:                                         ; preds = %if.then83, %do.end80
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end31
  %call87 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !304
  %tobool88 = icmp ne i32 %call87, 0, !dbg !304
  br i1 %tobool88, label %if.then89, label %if.else102, !dbg !306

if.then89:                                        ; preds = %if.end86
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !307, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !311, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !313, metadata !DIExpression()), !dbg !314
  %45 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !315
  %call90 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #8, !dbg !317
  %cmp91 = icmp eq i32 %call90, 1, !dbg !318
  br i1 %cmp91, label %if.then93, label %if.end101, !dbg !319

if.then93:                                        ; preds = %if.then89
  %46 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !320
  %cmp94 = icmp slt i32 %46, 10000, !dbg !323
  br i1 %cmp94, label %if.then96, label %if.end100, !dbg !324

if.then96:                                        ; preds = %if.then93
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !325
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !327
  br label %for.cond, !dbg !329

for.cond:                                         ; preds = %for.inc, %if.then96
  %47 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !330
  %48 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !332
  %cmp97 = icmp slt i32 %47, %48, !dbg !333
  br i1 %cmp97, label %for.body, label %for.end, !dbg !334

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !335
  %inc = add nsw i32 %49, 1, !dbg !335
  store i32 %inc, i32* %_goodB2G_intVariable_0, align 4, !dbg !335
  br label %for.inc, !dbg !337

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !338
  %inc99 = add nsw i32 %50, 1, !dbg !338
  store i32 %inc99, i32* %_goodB2G_i_0, align 4, !dbg !338
  br label %for.cond, !dbg !339, !llvm.loop !340

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !343
  call void @printIntLine(i32 %51), !dbg !344
  br label %if.end100, !dbg !345

if.end100:                                        ; preds = %for.end, %if.then93
  br label %if.end101, !dbg !346

if.end101:                                        ; preds = %if.end100, %if.then89
  br label %if.end123, !dbg !347

if.else102:                                       ; preds = %if.end86
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0103, metadata !348, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0104, metadata !352, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0105, metadata !354, metadata !DIExpression()), !dbg !355
  %52 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !356
  %call106 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0104) #8, !dbg !358
  %cmp107 = icmp eq i32 %call106, 1, !dbg !359
  br i1 %cmp107, label %if.then109, label %if.end122, !dbg !360

if.then109:                                       ; preds = %if.else102
  %53 = load i32, i32* %_goodB2G_n_0104, align 4, !dbg !361
  %cmp110 = icmp slt i32 %53, 10000, !dbg !364
  br i1 %cmp110, label %if.then112, label %if.end121, !dbg !365

if.then112:                                       ; preds = %if.then109
  store i32 0, i32* %_goodB2G_intVariable_0105, align 4, !dbg !366
  store i32 0, i32* %_goodB2G_i_0103, align 4, !dbg !368
  br label %for.cond113, !dbg !370

for.cond113:                                      ; preds = %for.inc118, %if.then112
  %54 = load i32, i32* %_goodB2G_i_0103, align 4, !dbg !371
  %55 = load i32, i32* %_goodB2G_n_0104, align 4, !dbg !373
  %cmp114 = icmp slt i32 %54, %55, !dbg !374
  br i1 %cmp114, label %for.body116, label %for.end120, !dbg !375

for.body116:                                      ; preds = %for.cond113
  %56 = load i32, i32* %_goodB2G_intVariable_0105, align 4, !dbg !376
  %inc117 = add nsw i32 %56, 1, !dbg !376
  store i32 %inc117, i32* %_goodB2G_intVariable_0105, align 4, !dbg !376
  br label %for.inc118, !dbg !378

for.inc118:                                       ; preds = %for.body116
  %57 = load i32, i32* %_goodB2G_i_0103, align 4, !dbg !379
  %inc119 = add nsw i32 %57, 1, !dbg !379
  store i32 %inc119, i32* %_goodB2G_i_0103, align 4, !dbg !379
  br label %for.cond113, !dbg !380, !llvm.loop !381

for.end120:                                       ; preds = %for.cond113
  %58 = load i32, i32* %_goodB2G_intVariable_0105, align 4, !dbg !383
  call void @printIntLine(i32 %58), !dbg !384
  br label %if.end121, !dbg !385

if.end121:                                        ; preds = %for.end120, %if.then109
  br label %if.end122, !dbg !386

if.end122:                                        ; preds = %if.end121, %if.else102
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end101
  br label %goodB2G_label_, !dbg !387

goodB2G_label_:                                   ; preds = %if.end123
  call void @llvm.dbg.label(metadata !388), !dbg !389
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !390, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !393, metadata !DIExpression()), !dbg !394
  %59 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !394
  call void @llvm.memset.p0i8.i64(i8* align 16 %59, i8 0, i64 100, i1 false), !dbg !394
  %arraydecay124 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !395
  store i8* %arraydecay124, i8** %_goodG2B_data_0, align 8, !dbg !396
  %call125 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !397
  %tobool126 = icmp ne i32 %call125, 0, !dbg !397
  br i1 %tobool126, label %if.then127, label %if.else129, !dbg !399

if.then127:                                       ; preds = %goodB2G_label_
  %60 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !400
  %call128 = call i8* @strcpy(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !402
  br label %if.end131, !dbg !403

if.else129:                                       ; preds = %goodB2G_label_
  %61 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !404
  %call130 = call i8* @strcpy(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !406
  br label %if.end131

if.end131:                                        ; preds = %if.else129, %if.then127
  %call132 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !407
  %tobool133 = icmp ne i32 %call132, 0, !dbg !407
  br i1 %tobool133, label %if.then134, label %if.else148, !dbg !409

if.then134:                                       ; preds = %if.end131
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !410, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !416, metadata !DIExpression()), !dbg !417
  %62 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !418
  %call135 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0) #8, !dbg !420
  %cmp136 = icmp eq i32 %call135, 1, !dbg !421
  br i1 %cmp136, label %if.then138, label %if.end147, !dbg !422

if.then138:                                       ; preds = %if.then134
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !423
  store i32 0, i32* %_goodG2B_i_0, align 4, !dbg !425
  br label %for.cond139, !dbg !427

for.cond139:                                      ; preds = %for.inc144, %if.then138
  %63 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !428
  %64 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !430
  %cmp140 = icmp slt i32 %63, %64, !dbg !431
  br i1 %cmp140, label %for.body142, label %for.end146, !dbg !432

for.body142:                                      ; preds = %for.cond139
  %65 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !433
  %inc143 = add nsw i32 %65, 1, !dbg !433
  store i32 %inc143, i32* %_goodG2B_intVariable_0, align 4, !dbg !433
  br label %for.inc144, !dbg !435

for.inc144:                                       ; preds = %for.body142
  %66 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !436
  %inc145 = add nsw i32 %66, 1, !dbg !436
  store i32 %inc145, i32* %_goodG2B_i_0, align 4, !dbg !436
  br label %for.cond139, !dbg !437, !llvm.loop !438

for.end146:                                       ; preds = %for.cond139
  %67 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !440
  call void @printIntLine(i32 %67), !dbg !441
  br label %if.end147, !dbg !442

if.end147:                                        ; preds = %for.end146, %if.then134
  br label %if.end157, !dbg !443

if.else148:                                       ; preds = %if.end131
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0149, metadata !444, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0150, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0151, metadata !450, metadata !DIExpression()), !dbg !451
  %68 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !452
  %call152 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0150) #8, !dbg !454
  %cmp153 = icmp eq i32 %call152, 1, !dbg !455
  br i1 %cmp153, label %if.then155, label %if.end156, !dbg !456

if.then155:                                       ; preds = %if.else148
  store i32 0, i32* %_goodG2B_intVariable_0151, align 4, !dbg !457
  %69 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !459
  %70 = load i32, i32* %_goodG2B_n_0150, align 4, !dbg !460
  call void %69(i32 %70), !dbg !459
  %71 = load i32, i32* %_goodG2B_intVariable_0151, align 4, !dbg !461
  call void @printIntLine(i32 %71), !dbg !462
  br label %if.end156, !dbg !463

if.end156:                                        ; preds = %if.then155, %if.else148
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.end147
  br label %goodG2B_label_, !dbg !464

goodG2B_label_:                                   ; preds = %if.end157
  call void @llvm.dbg.label(metadata !465), !dbg !466
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_12_good_label_, !dbg !467

CWE606_Unchecked_Loop_Condition__char_connect_socket_12_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !468), !dbg !469
  ret void, !dbg !470
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @globalReturnsTrueOrFalse(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i32 @__CPROVER_uninterpreted___CPROVER_uninterpreted_socket(...) #3

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #5

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #6

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #3

declare dso_local i64 @recv(i32, i8*, i64, i32) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #4

declare dso_local i32 @close(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_12289CWE606_Unchecked_Loop_Condition__char_connect_socket_12406_1_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_941/code_gened")
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
!64 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_12289CWE606_Unchecked_Loop_Condition__char_connect_socket_12406_1_1", scope: !1, file: !1, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{}
!72 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !64, file: !1, line: 3, type: !59)
!73 = !DILocation(line: 3, column: 133, scope: !64)
!74 = !DILocalVariable(name: "opsink", arg: 2, scope: !64, file: !1, line: 3, type: !67)
!75 = !DILocation(line: 3, column: 157, scope: !64)
!76 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !77, file: !1, line: 6, type: !78)
!77 = distinct !DILexicalBlock(scope: !64, file: !1, line: 5, column: 3)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 100)
!81 = !DILocation(line: 6, column: 10, scope: !77)
!82 = !DILocation(line: 7, column: 23, scope: !77)
!83 = !DILocation(line: 7, column: 21, scope: !77)
!84 = !DILocation(line: 8, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !77, file: !1, line: 8, column: 9)
!86 = !DILocation(line: 8, column: 9, scope: !77)
!87 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !88, file: !1, line: 11, type: !70)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 10, column: 7)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 9, column: 5)
!90 = !DILocation(line: 11, column: 13, scope: !88)
!91 = !DILocalVariable(name: "_goodB2G_service_0", scope: !88, file: !1, line: 12, type: !92)
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
!113 = !DILocation(line: 12, column: 28, scope: !88)
!114 = !DILocalVariable(name: "_goodB2G_replace_0", scope: !88, file: !1, line: 13, type: !59)
!115 = !DILocation(line: 13, column: 15, scope: !88)
!116 = !DILocalVariable(name: "_goodB2G_connectSocket_0", scope: !88, file: !1, line: 14, type: !70)
!117 = !DILocation(line: 14, column: 13, scope: !88)
!118 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !88, file: !1, line: 15, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DILocation(line: 15, column: 16, scope: !88)
!123 = !DILocation(line: 15, column: 44, scope: !88)
!124 = !DILocation(line: 15, column: 37, scope: !88)
!125 = !DILocation(line: 16, column: 9, scope: !88)
!126 = !DILocation(line: 18, column: 38, scope: !127)
!127 = distinct !DILexicalBlock(scope: !88, file: !1, line: 17, column: 9)
!128 = !DILocation(line: 18, column: 36, scope: !127)
!129 = !DILocation(line: 19, column: 15, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !1, line: 19, column: 15)
!131 = !DILocation(line: 19, column: 40, scope: !130)
!132 = !DILocation(line: 19, column: 15, scope: !127)
!133 = !DILocation(line: 21, column: 13, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 20, column: 11)
!135 = !DILocation(line: 24, column: 11, scope: !127)
!136 = !DILocation(line: 25, column: 30, scope: !127)
!137 = !DILocation(line: 25, column: 41, scope: !127)
!138 = !DILocation(line: 26, column: 48, scope: !127)
!139 = !DILocation(line: 26, column: 30, scope: !127)
!140 = !DILocation(line: 26, column: 39, scope: !127)
!141 = !DILocation(line: 26, column: 46, scope: !127)
!142 = !DILocation(line: 27, column: 41, scope: !127)
!143 = !DILocation(line: 27, column: 30, scope: !127)
!144 = !DILocation(line: 27, column: 39, scope: !127)
!145 = !DILocation(line: 28, column: 23, scope: !146)
!146 = distinct !DILexicalBlock(scope: !127, file: !1, line: 28, column: 15)
!147 = !DILocation(line: 28, column: 49, scope: !146)
!148 = !DILocation(line: 28, column: 15, scope: !146)
!149 = !DILocation(line: 28, column: 120, scope: !146)
!150 = !DILocation(line: 28, column: 15, scope: !127)
!151 = !DILocation(line: 30, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !1, line: 29, column: 11)
!153 = !DILocation(line: 33, column: 40, scope: !127)
!154 = !DILocation(line: 33, column: 76, scope: !127)
!155 = !DILocation(line: 33, column: 94, scope: !127)
!156 = !DILocation(line: 33, column: 92, scope: !127)
!157 = !DILocation(line: 33, column: 140, scope: !127)
!158 = !DILocation(line: 33, column: 138, scope: !127)
!159 = !DILocation(line: 33, column: 160, scope: !127)
!160 = !DILocation(line: 33, column: 130, scope: !127)
!161 = !DILocation(line: 33, column: 35, scope: !127)
!162 = !DILocation(line: 33, column: 33, scope: !127)
!163 = !DILocation(line: 34, column: 16, scope: !164)
!164 = distinct !DILexicalBlock(scope: !127, file: !1, line: 34, column: 15)
!165 = !DILocation(line: 34, column: 38, scope: !164)
!166 = !DILocation(line: 34, column: 47, scope: !164)
!167 = !DILocation(line: 34, column: 51, scope: !164)
!168 = !DILocation(line: 34, column: 73, scope: !164)
!169 = !DILocation(line: 34, column: 15, scope: !127)
!170 = !DILocation(line: 36, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !1, line: 35, column: 11)
!172 = !DILocation(line: 39, column: 11, scope: !127)
!173 = !DILocation(line: 39, column: 27, scope: !127)
!174 = !DILocation(line: 39, column: 49, scope: !127)
!175 = !DILocation(line: 39, column: 71, scope: !127)
!176 = !DILocation(line: 39, column: 46, scope: !127)
!177 = !DILocation(line: 39, column: 90, scope: !127)
!178 = !DILocation(line: 40, column: 39, scope: !127)
!179 = !DILocation(line: 40, column: 32, scope: !127)
!180 = !DILocation(line: 40, column: 30, scope: !127)
!181 = !DILocation(line: 41, column: 15, scope: !182)
!182 = distinct !DILexicalBlock(scope: !127, file: !1, line: 41, column: 15)
!183 = !DILocation(line: 41, column: 15, scope: !127)
!184 = !DILocation(line: 43, column: 14, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 42, column: 11)
!186 = !DILocation(line: 43, column: 33, scope: !185)
!187 = !DILocation(line: 44, column: 11, scope: !185)
!188 = !DILocation(line: 46, column: 39, scope: !127)
!189 = !DILocation(line: 46, column: 32, scope: !127)
!190 = !DILocation(line: 46, column: 30, scope: !127)
!191 = !DILocation(line: 47, column: 15, scope: !192)
!192 = distinct !DILexicalBlock(scope: !127, file: !1, line: 47, column: 15)
!193 = !DILocation(line: 47, column: 15, scope: !127)
!194 = !DILocation(line: 49, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 48, column: 11)
!196 = !DILocation(line: 49, column: 33, scope: !195)
!197 = !DILocation(line: 50, column: 11, scope: !195)
!198 = !DILocation(line: 52, column: 9, scope: !127)
!199 = !DILocation(line: 54, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !88, file: !1, line: 54, column: 13)
!201 = !DILocation(line: 54, column: 38, scope: !200)
!202 = !DILocation(line: 54, column: 13, scope: !88)
!203 = !DILocation(line: 56, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 55, column: 9)
!205 = !DILocation(line: 56, column: 11, scope: !204)
!206 = !DILocation(line: 57, column: 9, scope: !204)
!207 = !DILocation(line: 60, column: 5, scope: !89)
!208 = !DILocalVariable(name: "_goodB2G_recvResult_0", scope: !209, file: !1, line: 64, type: !70)
!209 = distinct !DILexicalBlock(scope: !210, file: !1, line: 63, column: 7)
!210 = distinct !DILexicalBlock(scope: !85, file: !1, line: 62, column: 5)
!211 = !DILocation(line: 64, column: 13, scope: !209)
!212 = !DILocalVariable(name: "_goodB2G_service_0", scope: !209, file: !1, line: 65, type: !92)
!213 = !DILocation(line: 65, column: 28, scope: !209)
!214 = !DILocalVariable(name: "_goodB2G_replace_0", scope: !209, file: !1, line: 66, type: !59)
!215 = !DILocation(line: 66, column: 15, scope: !209)
!216 = !DILocalVariable(name: "_goodB2G_connectSocket_0", scope: !209, file: !1, line: 67, type: !70)
!217 = !DILocation(line: 67, column: 13, scope: !209)
!218 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !209, file: !1, line: 68, type: !119)
!219 = !DILocation(line: 68, column: 16, scope: !209)
!220 = !DILocation(line: 68, column: 44, scope: !209)
!221 = !DILocation(line: 68, column: 37, scope: !209)
!222 = !DILocation(line: 69, column: 9, scope: !209)
!223 = !DILocation(line: 71, column: 38, scope: !224)
!224 = distinct !DILexicalBlock(scope: !209, file: !1, line: 70, column: 9)
!225 = !DILocation(line: 71, column: 36, scope: !224)
!226 = !DILocation(line: 72, column: 15, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !1, line: 72, column: 15)
!228 = !DILocation(line: 72, column: 40, scope: !227)
!229 = !DILocation(line: 72, column: 15, scope: !224)
!230 = !DILocation(line: 74, column: 13, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !1, line: 73, column: 11)
!232 = !DILocation(line: 77, column: 11, scope: !224)
!233 = !DILocation(line: 78, column: 30, scope: !224)
!234 = !DILocation(line: 78, column: 41, scope: !224)
!235 = !DILocation(line: 79, column: 48, scope: !224)
!236 = !DILocation(line: 79, column: 30, scope: !224)
!237 = !DILocation(line: 79, column: 39, scope: !224)
!238 = !DILocation(line: 79, column: 46, scope: !224)
!239 = !DILocation(line: 80, column: 41, scope: !224)
!240 = !DILocation(line: 80, column: 30, scope: !224)
!241 = !DILocation(line: 80, column: 39, scope: !224)
!242 = !DILocation(line: 81, column: 23, scope: !243)
!243 = distinct !DILexicalBlock(scope: !224, file: !1, line: 81, column: 15)
!244 = !DILocation(line: 81, column: 49, scope: !243)
!245 = !DILocation(line: 81, column: 15, scope: !243)
!246 = !DILocation(line: 81, column: 120, scope: !243)
!247 = !DILocation(line: 81, column: 15, scope: !224)
!248 = !DILocation(line: 83, column: 13, scope: !249)
!249 = distinct !DILexicalBlock(scope: !243, file: !1, line: 82, column: 11)
!250 = !DILocation(line: 86, column: 40, scope: !224)
!251 = !DILocation(line: 86, column: 76, scope: !224)
!252 = !DILocation(line: 86, column: 94, scope: !224)
!253 = !DILocation(line: 86, column: 92, scope: !224)
!254 = !DILocation(line: 86, column: 140, scope: !224)
!255 = !DILocation(line: 86, column: 138, scope: !224)
!256 = !DILocation(line: 86, column: 160, scope: !224)
!257 = !DILocation(line: 86, column: 130, scope: !224)
!258 = !DILocation(line: 86, column: 35, scope: !224)
!259 = !DILocation(line: 86, column: 33, scope: !224)
!260 = !DILocation(line: 87, column: 16, scope: !261)
!261 = distinct !DILexicalBlock(scope: !224, file: !1, line: 87, column: 15)
!262 = !DILocation(line: 87, column: 38, scope: !261)
!263 = !DILocation(line: 87, column: 47, scope: !261)
!264 = !DILocation(line: 87, column: 51, scope: !261)
!265 = !DILocation(line: 87, column: 73, scope: !261)
!266 = !DILocation(line: 87, column: 15, scope: !224)
!267 = !DILocation(line: 89, column: 13, scope: !268)
!268 = distinct !DILexicalBlock(scope: !261, file: !1, line: 88, column: 11)
!269 = !DILocation(line: 92, column: 11, scope: !224)
!270 = !DILocation(line: 92, column: 27, scope: !224)
!271 = !DILocation(line: 92, column: 49, scope: !224)
!272 = !DILocation(line: 92, column: 71, scope: !224)
!273 = !DILocation(line: 92, column: 46, scope: !224)
!274 = !DILocation(line: 92, column: 90, scope: !224)
!275 = !DILocation(line: 93, column: 39, scope: !224)
!276 = !DILocation(line: 93, column: 32, scope: !224)
!277 = !DILocation(line: 93, column: 30, scope: !224)
!278 = !DILocation(line: 94, column: 15, scope: !279)
!279 = distinct !DILexicalBlock(scope: !224, file: !1, line: 94, column: 15)
!280 = !DILocation(line: 94, column: 15, scope: !224)
!281 = !DILocation(line: 96, column: 14, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !1, line: 95, column: 11)
!283 = !DILocation(line: 96, column: 33, scope: !282)
!284 = !DILocation(line: 97, column: 11, scope: !282)
!285 = !DILocation(line: 99, column: 39, scope: !224)
!286 = !DILocation(line: 99, column: 32, scope: !224)
!287 = !DILocation(line: 99, column: 30, scope: !224)
!288 = !DILocation(line: 100, column: 15, scope: !289)
!289 = distinct !DILexicalBlock(scope: !224, file: !1, line: 100, column: 15)
!290 = !DILocation(line: 100, column: 15, scope: !224)
!291 = !DILocation(line: 102, column: 14, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !1, line: 101, column: 11)
!293 = !DILocation(line: 102, column: 33, scope: !292)
!294 = !DILocation(line: 103, column: 11, scope: !292)
!295 = !DILocation(line: 105, column: 9, scope: !224)
!296 = !DILocation(line: 107, column: 13, scope: !297)
!297 = distinct !DILexicalBlock(scope: !209, file: !1, line: 107, column: 13)
!298 = !DILocation(line: 107, column: 38, scope: !297)
!299 = !DILocation(line: 107, column: 13, scope: !209)
!300 = !DILocation(line: 109, column: 17, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !1, line: 108, column: 9)
!302 = !DILocation(line: 109, column: 11, scope: !301)
!303 = !DILocation(line: 110, column: 9, scope: !301)
!304 = !DILocation(line: 115, column: 9, scope: !305)
!305 = distinct !DILexicalBlock(scope: !77, file: !1, line: 115, column: 9)
!306 = !DILocation(line: 115, column: 9, scope: !77)
!307 = !DILocalVariable(name: "_goodB2G_i_0", scope: !308, file: !1, line: 118, type: !70)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 117, column: 7)
!309 = distinct !DILexicalBlock(scope: !305, file: !1, line: 116, column: 5)
!310 = !DILocation(line: 118, column: 13, scope: !308)
!311 = !DILocalVariable(name: "_goodB2G_n_0", scope: !308, file: !1, line: 119, type: !70)
!312 = !DILocation(line: 119, column: 13, scope: !308)
!313 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !308, file: !1, line: 120, type: !70)
!314 = !DILocation(line: 120, column: 13, scope: !308)
!315 = !DILocation(line: 121, column: 20, scope: !316)
!316 = distinct !DILexicalBlock(scope: !308, file: !1, line: 121, column: 13)
!317 = !DILocation(line: 121, column: 13, scope: !316)
!318 = !DILocation(line: 121, column: 58, scope: !316)
!319 = !DILocation(line: 121, column: 13, scope: !308)
!320 = !DILocation(line: 123, column: 15, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !1, line: 123, column: 15)
!322 = distinct !DILexicalBlock(scope: !316, file: !1, line: 122, column: 9)
!323 = !DILocation(line: 123, column: 28, scope: !321)
!324 = !DILocation(line: 123, column: 15, scope: !322)
!325 = !DILocation(line: 125, column: 36, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !1, line: 124, column: 11)
!327 = !DILocation(line: 126, column: 31, scope: !328)
!328 = distinct !DILexicalBlock(scope: !326, file: !1, line: 126, column: 13)
!329 = !DILocation(line: 126, column: 18, scope: !328)
!330 = !DILocation(line: 126, column: 36, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !1, line: 126, column: 13)
!332 = !DILocation(line: 126, column: 51, scope: !331)
!333 = !DILocation(line: 126, column: 49, scope: !331)
!334 = !DILocation(line: 126, column: 13, scope: !328)
!335 = !DILocation(line: 128, column: 37, scope: !336)
!336 = distinct !DILexicalBlock(scope: !331, file: !1, line: 127, column: 13)
!337 = !DILocation(line: 129, column: 13, scope: !336)
!338 = !DILocation(line: 126, column: 77, scope: !331)
!339 = !DILocation(line: 126, column: 13, scope: !331)
!340 = distinct !{!340, !334, !341, !342}
!341 = !DILocation(line: 129, column: 13, scope: !328)
!342 = !{!"llvm.loop.mustprogress"}
!343 = !DILocation(line: 131, column: 26, scope: !326)
!344 = !DILocation(line: 131, column: 13, scope: !326)
!345 = !DILocation(line: 132, column: 11, scope: !326)
!346 = !DILocation(line: 134, column: 9, scope: !322)
!347 = !DILocation(line: 137, column: 5, scope: !309)
!348 = !DILocalVariable(name: "_goodB2G_i_0", scope: !349, file: !1, line: 141, type: !70)
!349 = distinct !DILexicalBlock(scope: !350, file: !1, line: 140, column: 7)
!350 = distinct !DILexicalBlock(scope: !305, file: !1, line: 139, column: 5)
!351 = !DILocation(line: 141, column: 13, scope: !349)
!352 = !DILocalVariable(name: "_goodB2G_n_0", scope: !349, file: !1, line: 142, type: !70)
!353 = !DILocation(line: 142, column: 13, scope: !349)
!354 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !349, file: !1, line: 143, type: !70)
!355 = !DILocation(line: 143, column: 13, scope: !349)
!356 = !DILocation(line: 144, column: 20, scope: !357)
!357 = distinct !DILexicalBlock(scope: !349, file: !1, line: 144, column: 13)
!358 = !DILocation(line: 144, column: 13, scope: !357)
!359 = !DILocation(line: 144, column: 58, scope: !357)
!360 = !DILocation(line: 144, column: 13, scope: !349)
!361 = !DILocation(line: 146, column: 15, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !1, line: 146, column: 15)
!363 = distinct !DILexicalBlock(scope: !357, file: !1, line: 145, column: 9)
!364 = !DILocation(line: 146, column: 28, scope: !362)
!365 = !DILocation(line: 146, column: 15, scope: !363)
!366 = !DILocation(line: 148, column: 36, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !1, line: 147, column: 11)
!368 = !DILocation(line: 149, column: 31, scope: !369)
!369 = distinct !DILexicalBlock(scope: !367, file: !1, line: 149, column: 13)
!370 = !DILocation(line: 149, column: 18, scope: !369)
!371 = !DILocation(line: 149, column: 36, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !1, line: 149, column: 13)
!373 = !DILocation(line: 149, column: 51, scope: !372)
!374 = !DILocation(line: 149, column: 49, scope: !372)
!375 = !DILocation(line: 149, column: 13, scope: !369)
!376 = !DILocation(line: 151, column: 37, scope: !377)
!377 = distinct !DILexicalBlock(scope: !372, file: !1, line: 150, column: 13)
!378 = !DILocation(line: 152, column: 13, scope: !377)
!379 = !DILocation(line: 149, column: 77, scope: !372)
!380 = !DILocation(line: 149, column: 13, scope: !372)
!381 = distinct !{!381, !375, !382, !342}
!382 = !DILocation(line: 152, column: 13, scope: !369)
!383 = !DILocation(line: 154, column: 26, scope: !367)
!384 = !DILocation(line: 154, column: 13, scope: !367)
!385 = !DILocation(line: 155, column: 11, scope: !367)
!386 = !DILocation(line: 157, column: 9, scope: !363)
!387 = !DILocation(line: 115, column: 34, scope: !305)
!388 = !DILabel(scope: !77, name: "goodB2G_label_", file: !1, line: 162)
!389 = !DILocation(line: 162, column: 5, scope: !77)
!390 = !DILocalVariable(name: "_goodG2B_data_0", scope: !391, file: !1, line: 169, type: !59)
!391 = distinct !DILexicalBlock(scope: !64, file: !1, line: 168, column: 3)
!392 = !DILocation(line: 169, column: 11, scope: !391)
!393 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !391, file: !1, line: 170, type: !78)
!394 = !DILocation(line: 170, column: 10, scope: !391)
!395 = !DILocation(line: 171, column: 23, scope: !391)
!396 = !DILocation(line: 171, column: 21, scope: !391)
!397 = !DILocation(line: 172, column: 9, scope: !398)
!398 = distinct !DILexicalBlock(scope: !391, file: !1, line: 172, column: 9)
!399 = !DILocation(line: 172, column: 9, scope: !391)
!400 = !DILocation(line: 174, column: 14, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !1, line: 173, column: 5)
!402 = !DILocation(line: 174, column: 7, scope: !401)
!403 = !DILocation(line: 175, column: 5, scope: !401)
!404 = !DILocation(line: 178, column: 14, scope: !405)
!405 = distinct !DILexicalBlock(scope: !398, file: !1, line: 177, column: 5)
!406 = !DILocation(line: 178, column: 7, scope: !405)
!407 = !DILocation(line: 181, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !391, file: !1, line: 181, column: 9)
!409 = !DILocation(line: 181, column: 9, scope: !391)
!410 = !DILocalVariable(name: "_goodG2B_i_0", scope: !411, file: !1, line: 184, type: !70)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 183, column: 7)
!412 = distinct !DILexicalBlock(scope: !408, file: !1, line: 182, column: 5)
!413 = !DILocation(line: 184, column: 13, scope: !411)
!414 = !DILocalVariable(name: "_goodG2B_n_0", scope: !411, file: !1, line: 185, type: !70)
!415 = !DILocation(line: 185, column: 13, scope: !411)
!416 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !411, file: !1, line: 186, type: !70)
!417 = !DILocation(line: 186, column: 13, scope: !411)
!418 = !DILocation(line: 187, column: 20, scope: !419)
!419 = distinct !DILexicalBlock(scope: !411, file: !1, line: 187, column: 13)
!420 = !DILocation(line: 187, column: 13, scope: !419)
!421 = !DILocation(line: 187, column: 58, scope: !419)
!422 = !DILocation(line: 187, column: 13, scope: !411)
!423 = !DILocation(line: 189, column: 34, scope: !424)
!424 = distinct !DILexicalBlock(scope: !419, file: !1, line: 188, column: 9)
!425 = !DILocation(line: 190, column: 29, scope: !426)
!426 = distinct !DILexicalBlock(scope: !424, file: !1, line: 190, column: 11)
!427 = !DILocation(line: 190, column: 16, scope: !426)
!428 = !DILocation(line: 190, column: 34, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !1, line: 190, column: 11)
!430 = !DILocation(line: 190, column: 49, scope: !429)
!431 = !DILocation(line: 190, column: 47, scope: !429)
!432 = !DILocation(line: 190, column: 11, scope: !426)
!433 = !DILocation(line: 192, column: 35, scope: !434)
!434 = distinct !DILexicalBlock(scope: !429, file: !1, line: 191, column: 11)
!435 = !DILocation(line: 193, column: 11, scope: !434)
!436 = !DILocation(line: 190, column: 75, scope: !429)
!437 = !DILocation(line: 190, column: 11, scope: !429)
!438 = distinct !{!438, !432, !439, !342}
!439 = !DILocation(line: 193, column: 11, scope: !426)
!440 = !DILocation(line: 195, column: 24, scope: !424)
!441 = !DILocation(line: 195, column: 11, scope: !424)
!442 = !DILocation(line: 196, column: 9, scope: !424)
!443 = !DILocation(line: 199, column: 5, scope: !412)
!444 = !DILocalVariable(name: "_goodG2B_i_0", scope: !445, file: !1, line: 203, type: !70)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 202, column: 7)
!446 = distinct !DILexicalBlock(scope: !408, file: !1, line: 201, column: 5)
!447 = !DILocation(line: 203, column: 13, scope: !445)
!448 = !DILocalVariable(name: "_goodG2B_n_0", scope: !445, file: !1, line: 204, type: !70)
!449 = !DILocation(line: 204, column: 13, scope: !445)
!450 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !445, file: !1, line: 205, type: !70)
!451 = !DILocation(line: 205, column: 13, scope: !445)
!452 = !DILocation(line: 206, column: 20, scope: !453)
!453 = distinct !DILexicalBlock(scope: !445, file: !1, line: 206, column: 13)
!454 = !DILocation(line: 206, column: 13, scope: !453)
!455 = !DILocation(line: 206, column: 58, scope: !453)
!456 = !DILocation(line: 206, column: 13, scope: !445)
!457 = !DILocation(line: 208, column: 34, scope: !458)
!458 = distinct !DILexicalBlock(scope: !453, file: !1, line: 207, column: 9)
!459 = !DILocation(line: 209, column: 11, scope: !458)
!460 = !DILocation(line: 209, column: 18, scope: !458)
!461 = !DILocation(line: 210, column: 24, scope: !458)
!462 = !DILocation(line: 210, column: 11, scope: !458)
!463 = !DILocation(line: 211, column: 9, scope: !458)
!464 = !DILocation(line: 181, column: 34, scope: !408)
!465 = !DILabel(scope: !391, name: "goodG2B_label_", file: !1, line: 216)
!466 = !DILocation(line: 216, column: 5, scope: !391)
!467 = !DILocation(line: 221, column: 3, scope: !391)
!468 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_12_good_label_", file: !1, line: 222)
!469 = !DILocation(line: 222, column: 3, scope: !64)
!470 = !DILocation(line: 227, column: 1, scope: !64)
