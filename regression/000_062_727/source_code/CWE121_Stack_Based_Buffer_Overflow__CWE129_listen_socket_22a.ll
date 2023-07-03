; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22a.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !67
@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !70
@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !72

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_bad() #0 !dbg !78 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !82, metadata !DIExpression()), !dbg !83
  store i32 -1, i32* %data, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !85, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !88, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !106, metadata !DIExpression()), !dbg !107
  store i32 -1, i32* %listenSocket, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 -1, i32* %acceptSocket, align 4, !dbg !109
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !110, metadata !DIExpression()), !dbg !111
  br label %do.body, !dbg !112

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !113
  store i32 %call, i32* %listenSocket, align 4, !dbg !115
  %0 = load i32, i32* %listenSocket, align 4, !dbg !116
  %cmp = icmp eq i32 %0, -1, !dbg !118
  br i1 %cmp, label %if.then, label %if.end, !dbg !119

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !120

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !122
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !122
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !123
  store i16 2, i16* %sin_family, align 4, !dbg !124
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !125
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !126
  store i32 0, i32* %s_addr, align 4, !dbg !127
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !128
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !129
  store i16 %call1, i16* %sin_port, align 2, !dbg !130
  %2 = load i32, i32* %listenSocket, align 4, !dbg !131
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !133
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !134
  %cmp3 = icmp eq i32 %call2, -1, !dbg !135
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !136

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !137

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !139
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !141
  %cmp7 = icmp eq i32 %call6, -1, !dbg !142
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !143

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !144

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !146
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !147
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !148
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !149
  %cmp11 = icmp eq i32 %6, -1, !dbg !151
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !152

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !153

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !155
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !156
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !157
  %conv = trunc i64 %call14 to i32, !dbg !157
  store i32 %conv, i32* %recvResult, align 4, !dbg !158
  %8 = load i32, i32* %recvResult, align 4, !dbg !159
  %cmp15 = icmp eq i32 %8, -1, !dbg !161
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !162

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !163
  %cmp17 = icmp eq i32 %9, 0, !dbg !164
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !165

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !166

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !168
  %idxprom = sext i32 %10 to i64, !dbg !169
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !169
  store i8 0, i8* %arrayidx, align 1, !dbg !170
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !171
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !172
  store i32 %call22, i32* %data, align 4, !dbg !173
  br label %do.end, !dbg !174

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !175
  %cmp23 = icmp ne i32 %11, -1, !dbg !177
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !178

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !179
  %call26 = call i32 @close(i32 %12), !dbg !181
  br label %if.end27, !dbg !182

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !183
  %cmp28 = icmp ne i32 %13, -1, !dbg !185
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !186

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !187
  %call31 = call i32 @close(i32 %14), !dbg !189
  br label %if.end32, !dbg !190

if.end32:                                         ; preds = %if.then30, %if.end27
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_badGlobal, align 4, !dbg !191
  %15 = load i32, i32* %data, align 4, !dbg !192
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_badSink(i32 %15), !dbg !193
  ret void, !dbg !194
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #2

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #5

declare dso_local i64 @recv(i32, i8*, i64, i32) #5

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #6

declare dso_local i32 @close(i32) #5

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_badSink(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !195 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !196, metadata !DIExpression()), !dbg !197
  store i32 -1, i32* %data, align 4, !dbg !198
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !199, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !204, metadata !DIExpression()), !dbg !205
  store i32 -1, i32* %listenSocket, align 4, !dbg !205
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !206, metadata !DIExpression()), !dbg !207
  store i32 -1, i32* %acceptSocket, align 4, !dbg !207
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !208, metadata !DIExpression()), !dbg !209
  br label %do.body, !dbg !210

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !211
  store i32 %call, i32* %listenSocket, align 4, !dbg !213
  %0 = load i32, i32* %listenSocket, align 4, !dbg !214
  %cmp = icmp eq i32 %0, -1, !dbg !216
  br i1 %cmp, label %if.then, label %if.end, !dbg !217

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !218

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !220
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !220
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !221
  store i16 2, i16* %sin_family, align 4, !dbg !222
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !223
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !224
  store i32 0, i32* %s_addr, align 4, !dbg !225
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !226
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !227
  store i16 %call1, i16* %sin_port, align 2, !dbg !228
  %2 = load i32, i32* %listenSocket, align 4, !dbg !229
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !231
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !232
  %cmp3 = icmp eq i32 %call2, -1, !dbg !233
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !234

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !235

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !237
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !239
  %cmp7 = icmp eq i32 %call6, -1, !dbg !240
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !241

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !242

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !244
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !245
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !246
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !247
  %cmp11 = icmp eq i32 %6, -1, !dbg !249
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !250

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !251

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !253
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !254
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !255
  %conv = trunc i64 %call14 to i32, !dbg !255
  store i32 %conv, i32* %recvResult, align 4, !dbg !256
  %8 = load i32, i32* %recvResult, align 4, !dbg !257
  %cmp15 = icmp eq i32 %8, -1, !dbg !259
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !260

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !261
  %cmp17 = icmp eq i32 %9, 0, !dbg !262
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !263

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !264

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !266
  %idxprom = sext i32 %10 to i64, !dbg !267
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !267
  store i8 0, i8* %arrayidx, align 1, !dbg !268
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !269
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !270
  store i32 %call22, i32* %data, align 4, !dbg !271
  br label %do.end, !dbg !272

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !273
  %cmp23 = icmp ne i32 %11, -1, !dbg !275
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !276

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !277
  %call26 = call i32 @close(i32 %12), !dbg !279
  br label %if.end27, !dbg !280

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !281
  %cmp28 = icmp ne i32 %13, -1, !dbg !283
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !284

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !285
  %call31 = call i32 @close(i32 %14), !dbg !287
  br label %if.end32, !dbg !288

if.end32:                                         ; preds = %if.then30, %if.end27
  store i32 0, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G1Global, align 4, !dbg !289
  %15 = load i32, i32* %data, align 4, !dbg !290
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G1Sink(i32 %15), !dbg !291
  ret void, !dbg !292
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G1Sink(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !293 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !294, metadata !DIExpression()), !dbg !295
  store i32 -1, i32* %data, align 4, !dbg !296
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !297, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !302, metadata !DIExpression()), !dbg !303
  store i32 -1, i32* %listenSocket, align 4, !dbg !303
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !304, metadata !DIExpression()), !dbg !305
  store i32 -1, i32* %acceptSocket, align 4, !dbg !305
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !306, metadata !DIExpression()), !dbg !307
  br label %do.body, !dbg !308

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !309
  store i32 %call, i32* %listenSocket, align 4, !dbg !311
  %0 = load i32, i32* %listenSocket, align 4, !dbg !312
  %cmp = icmp eq i32 %0, -1, !dbg !314
  br i1 %cmp, label %if.then, label %if.end, !dbg !315

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !316

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !318
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !318
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !319
  store i16 2, i16* %sin_family, align 4, !dbg !320
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !321
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !322
  store i32 0, i32* %s_addr, align 4, !dbg !323
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !324
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !325
  store i16 %call1, i16* %sin_port, align 2, !dbg !326
  %2 = load i32, i32* %listenSocket, align 4, !dbg !327
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !329
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !330
  %cmp3 = icmp eq i32 %call2, -1, !dbg !331
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !332

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !333

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !335
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !337
  %cmp7 = icmp eq i32 %call6, -1, !dbg !338
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !339

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !340

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !342
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !343
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !344
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !345
  %cmp11 = icmp eq i32 %6, -1, !dbg !347
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !348

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !349

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !351
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !352
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !353
  %conv = trunc i64 %call14 to i32, !dbg !353
  store i32 %conv, i32* %recvResult, align 4, !dbg !354
  %8 = load i32, i32* %recvResult, align 4, !dbg !355
  %cmp15 = icmp eq i32 %8, -1, !dbg !357
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !358

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !359
  %cmp17 = icmp eq i32 %9, 0, !dbg !360
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !361

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !362

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !364
  %idxprom = sext i32 %10 to i64, !dbg !365
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !365
  store i8 0, i8* %arrayidx, align 1, !dbg !366
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !367
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !368
  store i32 %call22, i32* %data, align 4, !dbg !369
  br label %do.end, !dbg !370

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !371
  %cmp23 = icmp ne i32 %11, -1, !dbg !373
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !374

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !375
  %call26 = call i32 @close(i32 %12), !dbg !377
  br label %if.end27, !dbg !378

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !379
  %cmp28 = icmp ne i32 %13, -1, !dbg !381
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !382

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !383
  %call31 = call i32 @close(i32 %14), !dbg !385
  br label %if.end32, !dbg !386

if.end32:                                         ; preds = %if.then30, %if.end27
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Global, align 4, !dbg !387
  %15 = load i32, i32* %data, align 4, !dbg !388
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink(i32 %15), !dbg !389
  ret void, !dbg !390
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !391 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !392, metadata !DIExpression()), !dbg !393
  store i32 -1, i32* %data, align 4, !dbg !394
  store i32 7, i32* %data, align 4, !dbg !395
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BGlobal, align 4, !dbg !396
  %0 = load i32, i32* %data, align 4, !dbg !397
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink(i32 %0), !dbg !398
  ret void, !dbg !399
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_good() #0 !dbg !400 {
entry:
  call void @goodB2G1(), !dbg !401
  call void @goodB2G2(), !dbg !402
  call void @goodG2B(), !dbg !403
  ret void, !dbg !404
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!74, !75, !76}
!llvm.ident = !{!77}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_badGlobal", scope: !2, file: !3, line: 46, type: !69, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_727/source_code")
!4 = !{!5, !18}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !6, line: 24, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!9 = !DIEnumerator(name: "SOCK_STREAM", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "SOCK_DGRAM", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "SOCK_RAW", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "SOCK_RDM", value: 4, isUnsigned: true)
!13 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5, isUnsigned: true)
!14 = !DIEnumerator(name: "SOCK_DCCP", value: 6, isUnsigned: true)
!15 = !DIEnumerator(name: "SOCK_PACKET", value: 10, isUnsigned: true)
!16 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288, isUnsigned: true)
!17 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 40, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!21 = !DIEnumerator(name: "IPPROTO_IP", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4, isUnsigned: true)
!25 = !DIEnumerator(name: "IPPROTO_TCP", value: 6, isUnsigned: true)
!26 = !DIEnumerator(name: "IPPROTO_EGP", value: 8, isUnsigned: true)
!27 = !DIEnumerator(name: "IPPROTO_PUP", value: 12, isUnsigned: true)
!28 = !DIEnumerator(name: "IPPROTO_UDP", value: 17, isUnsigned: true)
!29 = !DIEnumerator(name: "IPPROTO_IDP", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "IPPROTO_TP", value: 29, isUnsigned: true)
!31 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33, isUnsigned: true)
!32 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41, isUnsigned: true)
!33 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46, isUnsigned: true)
!34 = !DIEnumerator(name: "IPPROTO_GRE", value: 47, isUnsigned: true)
!35 = !DIEnumerator(name: "IPPROTO_ESP", value: 50, isUnsigned: true)
!36 = !DIEnumerator(name: "IPPROTO_AH", value: 51, isUnsigned: true)
!37 = !DIEnumerator(name: "IPPROTO_MTP", value: 92, isUnsigned: true)
!38 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94, isUnsigned: true)
!39 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98, isUnsigned: true)
!40 = !DIEnumerator(name: "IPPROTO_PIM", value: 103, isUnsigned: true)
!41 = !DIEnumerator(name: "IPPROTO_COMP", value: 108, isUnsigned: true)
!42 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132, isUnsigned: true)
!43 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136, isUnsigned: true)
!44 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137, isUnsigned: true)
!45 = !DIEnumerator(name: "IPPROTO_RAW", value: 255, isUnsigned: true)
!46 = !DIEnumerator(name: "IPPROTO_MAX", value: 256, isUnsigned: true)
!47 = !{!48, !53}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !19, line: 30, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 26, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !7)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !55, line: 178, size: 128, elements: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!56 = !{!57, !61}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !54, file: !55, line: 180, baseType: !58, size: 16)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !59, line: 28, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !54, file: !55, line: 181, baseType: !62, size: 112, offset: 16)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 112, elements: !64)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!64 = !{!65}
!65 = !DISubrange(count: 14)
!66 = !{!0, !67, !70, !72}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G1Global", scope: !2, file: !3, line: 132, type: !69, isLocal: false, isDefinition: true)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Global", scope: !2, file: !3, line: 133, type: !69, isLocal: false, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BGlobal", scope: !2, file: !3, line: 134, type: !69, isLocal: false, isDefinition: true)
!74 = !{i32 7, !"Dwarf Version", i32 4}
!75 = !{i32 2, !"Debug Info Version", i32 3}
!76 = !{i32 1, !"wchar_size", i32 4}
!77 = !{!"clang version 12.0.0"}
!78 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_bad", scope: !3, file: !3, line: 49, type: !79, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{null}
!81 = !{}
!82 = !DILocalVariable(name: "data", scope: !78, file: !3, line: 51, type: !69)
!83 = !DILocation(line: 51, column: 9, scope: !78)
!84 = !DILocation(line: 53, column: 10, scope: !78)
!85 = !DILocalVariable(name: "recvResult", scope: !86, file: !3, line: 59, type: !69)
!86 = distinct !DILexicalBlock(scope: !78, file: !3, line: 54, column: 5)
!87 = !DILocation(line: 59, column: 13, scope: !86)
!88 = !DILocalVariable(name: "service", scope: !86, file: !3, line: 60, type: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !90)
!90 = !{!91, !92, !96, !100}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !89, file: !19, line: 240, baseType: !58, size: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !89, file: !19, line: 241, baseType: !93, size: 16, offset: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 25, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 40, baseType: !60)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !89, file: !19, line: 242, baseType: !97, size: 32, offset: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !97, file: !19, line: 33, baseType: !48, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !89, file: !19, line: 245, baseType: !101, size: 64, offset: 64)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !103)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !{!104}
!104 = !DISubrange(count: 8)
!105 = !DILocation(line: 60, column: 28, scope: !86)
!106 = !DILocalVariable(name: "listenSocket", scope: !86, file: !3, line: 61, type: !69)
!107 = !DILocation(line: 61, column: 16, scope: !86)
!108 = !DILocalVariable(name: "acceptSocket", scope: !86, file: !3, line: 62, type: !69)
!109 = !DILocation(line: 62, column: 16, scope: !86)
!110 = !DILocalVariable(name: "inputBuffer", scope: !86, file: !3, line: 63, type: !62)
!111 = !DILocation(line: 63, column: 14, scope: !86)
!112 = !DILocation(line: 64, column: 9, scope: !86)
!113 = !DILocation(line: 74, column: 28, scope: !114)
!114 = distinct !DILexicalBlock(scope: !86, file: !3, line: 65, column: 9)
!115 = !DILocation(line: 74, column: 26, scope: !114)
!116 = !DILocation(line: 75, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !3, line: 75, column: 17)
!118 = !DILocation(line: 75, column: 30, scope: !117)
!119 = !DILocation(line: 75, column: 17, scope: !114)
!120 = !DILocation(line: 77, column: 17, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !3, line: 76, column: 13)
!122 = !DILocation(line: 79, column: 13, scope: !114)
!123 = !DILocation(line: 80, column: 21, scope: !114)
!124 = !DILocation(line: 80, column: 32, scope: !114)
!125 = !DILocation(line: 81, column: 21, scope: !114)
!126 = !DILocation(line: 81, column: 30, scope: !114)
!127 = !DILocation(line: 81, column: 37, scope: !114)
!128 = !DILocation(line: 82, column: 32, scope: !114)
!129 = !DILocation(line: 82, column: 21, scope: !114)
!130 = !DILocation(line: 82, column: 30, scope: !114)
!131 = !DILocation(line: 83, column: 22, scope: !132)
!132 = distinct !DILexicalBlock(scope: !114, file: !3, line: 83, column: 17)
!133 = !DILocation(line: 83, column: 36, scope: !132)
!134 = !DILocation(line: 83, column: 17, scope: !132)
!135 = !DILocation(line: 83, column: 81, scope: !132)
!136 = !DILocation(line: 83, column: 17, scope: !114)
!137 = !DILocation(line: 85, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !132, file: !3, line: 84, column: 13)
!139 = !DILocation(line: 87, column: 24, scope: !140)
!140 = distinct !DILexicalBlock(scope: !114, file: !3, line: 87, column: 17)
!141 = !DILocation(line: 87, column: 17, scope: !140)
!142 = !DILocation(line: 87, column: 54, scope: !140)
!143 = !DILocation(line: 87, column: 17, scope: !114)
!144 = !DILocation(line: 89, column: 17, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !3, line: 88, column: 13)
!146 = !DILocation(line: 91, column: 35, scope: !114)
!147 = !DILocation(line: 91, column: 28, scope: !114)
!148 = !DILocation(line: 91, column: 26, scope: !114)
!149 = !DILocation(line: 92, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !114, file: !3, line: 92, column: 17)
!151 = !DILocation(line: 92, column: 30, scope: !150)
!152 = !DILocation(line: 92, column: 17, scope: !114)
!153 = !DILocation(line: 94, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !3, line: 93, column: 13)
!155 = !DILocation(line: 97, column: 31, scope: !114)
!156 = !DILocation(line: 97, column: 45, scope: !114)
!157 = !DILocation(line: 97, column: 26, scope: !114)
!158 = !DILocation(line: 97, column: 24, scope: !114)
!159 = !DILocation(line: 98, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !114, file: !3, line: 98, column: 17)
!161 = !DILocation(line: 98, column: 28, scope: !160)
!162 = !DILocation(line: 98, column: 44, scope: !160)
!163 = !DILocation(line: 98, column: 47, scope: !160)
!164 = !DILocation(line: 98, column: 58, scope: !160)
!165 = !DILocation(line: 98, column: 17, scope: !114)
!166 = !DILocation(line: 100, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !160, file: !3, line: 99, column: 13)
!168 = !DILocation(line: 103, column: 25, scope: !114)
!169 = !DILocation(line: 103, column: 13, scope: !114)
!170 = !DILocation(line: 103, column: 37, scope: !114)
!171 = !DILocation(line: 105, column: 25, scope: !114)
!172 = !DILocation(line: 105, column: 20, scope: !114)
!173 = !DILocation(line: 105, column: 18, scope: !114)
!174 = !DILocation(line: 106, column: 9, scope: !114)
!175 = !DILocation(line: 108, column: 13, scope: !176)
!176 = distinct !DILexicalBlock(scope: !86, file: !3, line: 108, column: 13)
!177 = !DILocation(line: 108, column: 26, scope: !176)
!178 = !DILocation(line: 108, column: 13, scope: !86)
!179 = !DILocation(line: 110, column: 26, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !3, line: 109, column: 9)
!181 = !DILocation(line: 110, column: 13, scope: !180)
!182 = !DILocation(line: 111, column: 9, scope: !180)
!183 = !DILocation(line: 112, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !86, file: !3, line: 112, column: 13)
!185 = !DILocation(line: 112, column: 26, scope: !184)
!186 = !DILocation(line: 112, column: 13, scope: !86)
!187 = !DILocation(line: 114, column: 26, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !3, line: 113, column: 9)
!189 = !DILocation(line: 114, column: 13, scope: !188)
!190 = !DILocation(line: 115, column: 9, scope: !188)
!191 = !DILocation(line: 123, column: 75, scope: !78)
!192 = !DILocation(line: 124, column: 73, scope: !78)
!193 = !DILocation(line: 124, column: 5, scope: !78)
!194 = !DILocation(line: 125, column: 1, scope: !78)
!195 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 138, type: !79, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !81)
!196 = !DILocalVariable(name: "data", scope: !195, file: !3, line: 140, type: !69)
!197 = !DILocation(line: 140, column: 9, scope: !195)
!198 = !DILocation(line: 142, column: 10, scope: !195)
!199 = !DILocalVariable(name: "recvResult", scope: !200, file: !3, line: 148, type: !69)
!200 = distinct !DILexicalBlock(scope: !195, file: !3, line: 143, column: 5)
!201 = !DILocation(line: 148, column: 13, scope: !200)
!202 = !DILocalVariable(name: "service", scope: !200, file: !3, line: 149, type: !89)
!203 = !DILocation(line: 149, column: 28, scope: !200)
!204 = !DILocalVariable(name: "listenSocket", scope: !200, file: !3, line: 150, type: !69)
!205 = !DILocation(line: 150, column: 16, scope: !200)
!206 = !DILocalVariable(name: "acceptSocket", scope: !200, file: !3, line: 151, type: !69)
!207 = !DILocation(line: 151, column: 16, scope: !200)
!208 = !DILocalVariable(name: "inputBuffer", scope: !200, file: !3, line: 152, type: !62)
!209 = !DILocation(line: 152, column: 14, scope: !200)
!210 = !DILocation(line: 153, column: 9, scope: !200)
!211 = !DILocation(line: 163, column: 28, scope: !212)
!212 = distinct !DILexicalBlock(scope: !200, file: !3, line: 154, column: 9)
!213 = !DILocation(line: 163, column: 26, scope: !212)
!214 = !DILocation(line: 164, column: 17, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !3, line: 164, column: 17)
!216 = !DILocation(line: 164, column: 30, scope: !215)
!217 = !DILocation(line: 164, column: 17, scope: !212)
!218 = !DILocation(line: 166, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !3, line: 165, column: 13)
!220 = !DILocation(line: 168, column: 13, scope: !212)
!221 = !DILocation(line: 169, column: 21, scope: !212)
!222 = !DILocation(line: 169, column: 32, scope: !212)
!223 = !DILocation(line: 170, column: 21, scope: !212)
!224 = !DILocation(line: 170, column: 30, scope: !212)
!225 = !DILocation(line: 170, column: 37, scope: !212)
!226 = !DILocation(line: 171, column: 32, scope: !212)
!227 = !DILocation(line: 171, column: 21, scope: !212)
!228 = !DILocation(line: 171, column: 30, scope: !212)
!229 = !DILocation(line: 172, column: 22, scope: !230)
!230 = distinct !DILexicalBlock(scope: !212, file: !3, line: 172, column: 17)
!231 = !DILocation(line: 172, column: 36, scope: !230)
!232 = !DILocation(line: 172, column: 17, scope: !230)
!233 = !DILocation(line: 172, column: 81, scope: !230)
!234 = !DILocation(line: 172, column: 17, scope: !212)
!235 = !DILocation(line: 174, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !230, file: !3, line: 173, column: 13)
!237 = !DILocation(line: 176, column: 24, scope: !238)
!238 = distinct !DILexicalBlock(scope: !212, file: !3, line: 176, column: 17)
!239 = !DILocation(line: 176, column: 17, scope: !238)
!240 = !DILocation(line: 176, column: 54, scope: !238)
!241 = !DILocation(line: 176, column: 17, scope: !212)
!242 = !DILocation(line: 178, column: 17, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !3, line: 177, column: 13)
!244 = !DILocation(line: 180, column: 35, scope: !212)
!245 = !DILocation(line: 180, column: 28, scope: !212)
!246 = !DILocation(line: 180, column: 26, scope: !212)
!247 = !DILocation(line: 181, column: 17, scope: !248)
!248 = distinct !DILexicalBlock(scope: !212, file: !3, line: 181, column: 17)
!249 = !DILocation(line: 181, column: 30, scope: !248)
!250 = !DILocation(line: 181, column: 17, scope: !212)
!251 = !DILocation(line: 183, column: 17, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !3, line: 182, column: 13)
!253 = !DILocation(line: 186, column: 31, scope: !212)
!254 = !DILocation(line: 186, column: 45, scope: !212)
!255 = !DILocation(line: 186, column: 26, scope: !212)
!256 = !DILocation(line: 186, column: 24, scope: !212)
!257 = !DILocation(line: 187, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !212, file: !3, line: 187, column: 17)
!259 = !DILocation(line: 187, column: 28, scope: !258)
!260 = !DILocation(line: 187, column: 44, scope: !258)
!261 = !DILocation(line: 187, column: 47, scope: !258)
!262 = !DILocation(line: 187, column: 58, scope: !258)
!263 = !DILocation(line: 187, column: 17, scope: !212)
!264 = !DILocation(line: 189, column: 17, scope: !265)
!265 = distinct !DILexicalBlock(scope: !258, file: !3, line: 188, column: 13)
!266 = !DILocation(line: 192, column: 25, scope: !212)
!267 = !DILocation(line: 192, column: 13, scope: !212)
!268 = !DILocation(line: 192, column: 37, scope: !212)
!269 = !DILocation(line: 194, column: 25, scope: !212)
!270 = !DILocation(line: 194, column: 20, scope: !212)
!271 = !DILocation(line: 194, column: 18, scope: !212)
!272 = !DILocation(line: 195, column: 9, scope: !212)
!273 = !DILocation(line: 197, column: 13, scope: !274)
!274 = distinct !DILexicalBlock(scope: !200, file: !3, line: 197, column: 13)
!275 = !DILocation(line: 197, column: 26, scope: !274)
!276 = !DILocation(line: 197, column: 13, scope: !200)
!277 = !DILocation(line: 199, column: 26, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !3, line: 198, column: 9)
!279 = !DILocation(line: 199, column: 13, scope: !278)
!280 = !DILocation(line: 200, column: 9, scope: !278)
!281 = !DILocation(line: 201, column: 13, scope: !282)
!282 = distinct !DILexicalBlock(scope: !200, file: !3, line: 201, column: 13)
!283 = !DILocation(line: 201, column: 26, scope: !282)
!284 = !DILocation(line: 201, column: 13, scope: !200)
!285 = !DILocation(line: 203, column: 26, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !3, line: 202, column: 9)
!287 = !DILocation(line: 203, column: 13, scope: !286)
!288 = !DILocation(line: 204, column: 9, scope: !286)
!289 = !DILocation(line: 212, column: 80, scope: !195)
!290 = !DILocation(line: 213, column: 78, scope: !195)
!291 = !DILocation(line: 213, column: 5, scope: !195)
!292 = !DILocation(line: 214, column: 1, scope: !195)
!293 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 218, type: !79, scopeLine: 219, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !81)
!294 = !DILocalVariable(name: "data", scope: !293, file: !3, line: 220, type: !69)
!295 = !DILocation(line: 220, column: 9, scope: !293)
!296 = !DILocation(line: 222, column: 10, scope: !293)
!297 = !DILocalVariable(name: "recvResult", scope: !298, file: !3, line: 228, type: !69)
!298 = distinct !DILexicalBlock(scope: !293, file: !3, line: 223, column: 5)
!299 = !DILocation(line: 228, column: 13, scope: !298)
!300 = !DILocalVariable(name: "service", scope: !298, file: !3, line: 229, type: !89)
!301 = !DILocation(line: 229, column: 28, scope: !298)
!302 = !DILocalVariable(name: "listenSocket", scope: !298, file: !3, line: 230, type: !69)
!303 = !DILocation(line: 230, column: 16, scope: !298)
!304 = !DILocalVariable(name: "acceptSocket", scope: !298, file: !3, line: 231, type: !69)
!305 = !DILocation(line: 231, column: 16, scope: !298)
!306 = !DILocalVariable(name: "inputBuffer", scope: !298, file: !3, line: 232, type: !62)
!307 = !DILocation(line: 232, column: 14, scope: !298)
!308 = !DILocation(line: 233, column: 9, scope: !298)
!309 = !DILocation(line: 243, column: 28, scope: !310)
!310 = distinct !DILexicalBlock(scope: !298, file: !3, line: 234, column: 9)
!311 = !DILocation(line: 243, column: 26, scope: !310)
!312 = !DILocation(line: 244, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !3, line: 244, column: 17)
!314 = !DILocation(line: 244, column: 30, scope: !313)
!315 = !DILocation(line: 244, column: 17, scope: !310)
!316 = !DILocation(line: 246, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !3, line: 245, column: 13)
!318 = !DILocation(line: 248, column: 13, scope: !310)
!319 = !DILocation(line: 249, column: 21, scope: !310)
!320 = !DILocation(line: 249, column: 32, scope: !310)
!321 = !DILocation(line: 250, column: 21, scope: !310)
!322 = !DILocation(line: 250, column: 30, scope: !310)
!323 = !DILocation(line: 250, column: 37, scope: !310)
!324 = !DILocation(line: 251, column: 32, scope: !310)
!325 = !DILocation(line: 251, column: 21, scope: !310)
!326 = !DILocation(line: 251, column: 30, scope: !310)
!327 = !DILocation(line: 252, column: 22, scope: !328)
!328 = distinct !DILexicalBlock(scope: !310, file: !3, line: 252, column: 17)
!329 = !DILocation(line: 252, column: 36, scope: !328)
!330 = !DILocation(line: 252, column: 17, scope: !328)
!331 = !DILocation(line: 252, column: 81, scope: !328)
!332 = !DILocation(line: 252, column: 17, scope: !310)
!333 = !DILocation(line: 254, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !3, line: 253, column: 13)
!335 = !DILocation(line: 256, column: 24, scope: !336)
!336 = distinct !DILexicalBlock(scope: !310, file: !3, line: 256, column: 17)
!337 = !DILocation(line: 256, column: 17, scope: !336)
!338 = !DILocation(line: 256, column: 54, scope: !336)
!339 = !DILocation(line: 256, column: 17, scope: !310)
!340 = !DILocation(line: 258, column: 17, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !3, line: 257, column: 13)
!342 = !DILocation(line: 260, column: 35, scope: !310)
!343 = !DILocation(line: 260, column: 28, scope: !310)
!344 = !DILocation(line: 260, column: 26, scope: !310)
!345 = !DILocation(line: 261, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !310, file: !3, line: 261, column: 17)
!347 = !DILocation(line: 261, column: 30, scope: !346)
!348 = !DILocation(line: 261, column: 17, scope: !310)
!349 = !DILocation(line: 263, column: 17, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !3, line: 262, column: 13)
!351 = !DILocation(line: 266, column: 31, scope: !310)
!352 = !DILocation(line: 266, column: 45, scope: !310)
!353 = !DILocation(line: 266, column: 26, scope: !310)
!354 = !DILocation(line: 266, column: 24, scope: !310)
!355 = !DILocation(line: 267, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !310, file: !3, line: 267, column: 17)
!357 = !DILocation(line: 267, column: 28, scope: !356)
!358 = !DILocation(line: 267, column: 44, scope: !356)
!359 = !DILocation(line: 267, column: 47, scope: !356)
!360 = !DILocation(line: 267, column: 58, scope: !356)
!361 = !DILocation(line: 267, column: 17, scope: !310)
!362 = !DILocation(line: 269, column: 17, scope: !363)
!363 = distinct !DILexicalBlock(scope: !356, file: !3, line: 268, column: 13)
!364 = !DILocation(line: 272, column: 25, scope: !310)
!365 = !DILocation(line: 272, column: 13, scope: !310)
!366 = !DILocation(line: 272, column: 37, scope: !310)
!367 = !DILocation(line: 274, column: 25, scope: !310)
!368 = !DILocation(line: 274, column: 20, scope: !310)
!369 = !DILocation(line: 274, column: 18, scope: !310)
!370 = !DILocation(line: 275, column: 9, scope: !310)
!371 = !DILocation(line: 277, column: 13, scope: !372)
!372 = distinct !DILexicalBlock(scope: !298, file: !3, line: 277, column: 13)
!373 = !DILocation(line: 277, column: 26, scope: !372)
!374 = !DILocation(line: 277, column: 13, scope: !298)
!375 = !DILocation(line: 279, column: 26, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !3, line: 278, column: 9)
!377 = !DILocation(line: 279, column: 13, scope: !376)
!378 = !DILocation(line: 280, column: 9, scope: !376)
!379 = !DILocation(line: 281, column: 13, scope: !380)
!380 = distinct !DILexicalBlock(scope: !298, file: !3, line: 281, column: 13)
!381 = !DILocation(line: 281, column: 26, scope: !380)
!382 = !DILocation(line: 281, column: 13, scope: !298)
!383 = !DILocation(line: 283, column: 26, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !3, line: 282, column: 9)
!385 = !DILocation(line: 283, column: 13, scope: !384)
!386 = !DILocation(line: 284, column: 9, scope: !384)
!387 = !DILocation(line: 292, column: 80, scope: !293)
!388 = !DILocation(line: 293, column: 78, scope: !293)
!389 = !DILocation(line: 293, column: 5, scope: !293)
!390 = !DILocation(line: 294, column: 1, scope: !293)
!391 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 298, type: !79, scopeLine: 299, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !81)
!392 = !DILocalVariable(name: "data", scope: !391, file: !3, line: 300, type: !69)
!393 = !DILocation(line: 300, column: 9, scope: !391)
!394 = !DILocation(line: 302, column: 10, scope: !391)
!395 = !DILocation(line: 305, column: 10, scope: !391)
!396 = !DILocation(line: 306, column: 79, scope: !391)
!397 = !DILocation(line: 307, column: 77, scope: !391)
!398 = !DILocation(line: 307, column: 5, scope: !391)
!399 = !DILocation(line: 308, column: 1, scope: !391)
!400 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_good", scope: !3, file: !3, line: 310, type: !79, scopeLine: 311, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !81)
!401 = !DILocation(line: 312, column: 5, scope: !400)
!402 = !DILocation(line: 313, column: 5, scope: !400)
!403 = !DILocation(line: 314, column: 5, scope: !400)
!404 = !DILocation(line: 315, column: 1, scope: !400)
