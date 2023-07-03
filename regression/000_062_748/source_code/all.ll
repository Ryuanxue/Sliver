; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_badData = dso_local global i32 0, align 4, !dbg !0
@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodG2BData = dso_local global i32 0, align 4, !dbg !67
@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodB2GData = dso_local global i32 0, align 4, !dbg !70
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !72
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !96
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !98
@globalTrue = dso_local global i32 1, align 4, !dbg !100
@globalFalse = dso_local global i32 0, align 4, !dbg !102
@globalFive = dso_local global i32 5, align 4, !dbg !104
@globalArgc = dso_local global i32 0, align 4, !dbg !106
@globalArgv = dso_local global i8** null, align 8, !dbg !108
@.str.9 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9.13 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_bad() #0 !dbg !119 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !122, metadata !DIExpression()), !dbg !123
  store i32 -1, i32* %data, align 4, !dbg !124
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !125, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !128, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !145, metadata !DIExpression()), !dbg !146
  store i32 -1, i32* %listenSocket, align 4, !dbg !146
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !147, metadata !DIExpression()), !dbg !148
  store i32 -1, i32* %acceptSocket, align 4, !dbg !148
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !149, metadata !DIExpression()), !dbg !150
  br label %do.body, !dbg !151

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !152
  store i32 %call, i32* %listenSocket, align 4, !dbg !154
  %0 = load i32, i32* %listenSocket, align 4, !dbg !155
  %cmp = icmp eq i32 %0, -1, !dbg !157
  br i1 %cmp, label %if.then, label %if.end, !dbg !158

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !159

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !161
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !161
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !162
  store i16 2, i16* %sin_family, align 4, !dbg !163
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !164
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !165
  store i32 0, i32* %s_addr, align 4, !dbg !166
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !167
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !168
  store i16 %call1, i16* %sin_port, align 2, !dbg !169
  %2 = load i32, i32* %listenSocket, align 4, !dbg !170
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !172
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !173
  %cmp3 = icmp eq i32 %call2, -1, !dbg !174
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !175

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !176

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !178
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !180
  %cmp7 = icmp eq i32 %call6, -1, !dbg !181
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !182

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !183

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !185
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !186
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !187
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !188
  %cmp11 = icmp eq i32 %6, -1, !dbg !190
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !191

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !192

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !194
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !195
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !196
  %conv = trunc i64 %call14 to i32, !dbg !196
  store i32 %conv, i32* %recvResult, align 4, !dbg !197
  %8 = load i32, i32* %recvResult, align 4, !dbg !198
  %cmp15 = icmp eq i32 %8, -1, !dbg !200
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !201

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !202
  %cmp17 = icmp eq i32 %9, 0, !dbg !203
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !204

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !205

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !207
  %idxprom = sext i32 %10 to i64, !dbg !208
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !208
  store i8 0, i8* %arrayidx, align 1, !dbg !209
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !210
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !211
  store i32 %call22, i32* %data, align 4, !dbg !212
  br label %do.end, !dbg !213

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !214
  %cmp23 = icmp ne i32 %11, -1, !dbg !216
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !217

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !218
  %call26 = call i32 @close(i32 %12), !dbg !220
  br label %if.end27, !dbg !221

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !222
  %cmp28 = icmp ne i32 %13, -1, !dbg !224
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !225

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !226
  %call31 = call i32 @close(i32 %14), !dbg !228
  br label %if.end32, !dbg !229

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data, align 4, !dbg !230
  store i32 %15, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_badData, align 4, !dbg !231
  call void (...) bitcast (void ()* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_badSink to void (...)*)(), !dbg !232
  ret void, !dbg !233
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !234 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !235, metadata !DIExpression()), !dbg !236
  store i32 -1, i32* %data, align 4, !dbg !237
  store i32 7, i32* %data, align 4, !dbg !238
  %0 = load i32, i32* %data, align 4, !dbg !239
  store i32 %0, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodG2BData, align 4, !dbg !240
  call void (...) bitcast (void ()* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_goodG2BSink to void (...)*)(), !dbg !241
  ret void, !dbg !242
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !243 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !244, metadata !DIExpression()), !dbg !245
  store i32 -1, i32* %data, align 4, !dbg !246
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !247, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !252, metadata !DIExpression()), !dbg !253
  store i32 -1, i32* %listenSocket, align 4, !dbg !253
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !254, metadata !DIExpression()), !dbg !255
  store i32 -1, i32* %acceptSocket, align 4, !dbg !255
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !256, metadata !DIExpression()), !dbg !257
  br label %do.body, !dbg !258

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !259
  store i32 %call, i32* %listenSocket, align 4, !dbg !261
  %0 = load i32, i32* %listenSocket, align 4, !dbg !262
  %cmp = icmp eq i32 %0, -1, !dbg !264
  br i1 %cmp, label %if.then, label %if.end, !dbg !265

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !266

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !268
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !268
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !269
  store i16 2, i16* %sin_family, align 4, !dbg !270
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !271
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !272
  store i32 0, i32* %s_addr, align 4, !dbg !273
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !274
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !275
  store i16 %call1, i16* %sin_port, align 2, !dbg !276
  %2 = load i32, i32* %listenSocket, align 4, !dbg !277
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !279
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !280
  %cmp3 = icmp eq i32 %call2, -1, !dbg !281
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !282

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !283

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !285
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !287
  %cmp7 = icmp eq i32 %call6, -1, !dbg !288
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !289

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !290

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !292
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !293
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !294
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !295
  %cmp11 = icmp eq i32 %6, -1, !dbg !297
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !298

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !299

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !301
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !302
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !303
  %conv = trunc i64 %call14 to i32, !dbg !303
  store i32 %conv, i32* %recvResult, align 4, !dbg !304
  %8 = load i32, i32* %recvResult, align 4, !dbg !305
  %cmp15 = icmp eq i32 %8, -1, !dbg !307
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !308

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !309
  %cmp17 = icmp eq i32 %9, 0, !dbg !310
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !311

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !312

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !314
  %idxprom = sext i32 %10 to i64, !dbg !315
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !315
  store i8 0, i8* %arrayidx, align 1, !dbg !316
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !317
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !318
  store i32 %call22, i32* %data, align 4, !dbg !319
  br label %do.end, !dbg !320

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !321
  %cmp23 = icmp ne i32 %11, -1, !dbg !323
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !324

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !325
  %call26 = call i32 @close(i32 %12), !dbg !327
  br label %if.end27, !dbg !328

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !329
  %cmp28 = icmp ne i32 %13, -1, !dbg !331
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !332

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !333
  %call31 = call i32 @close(i32 %14), !dbg !335
  br label %if.end32, !dbg !336

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data, align 4, !dbg !337
  store i32 %15, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodB2GData, align 4, !dbg !338
  call void (...) bitcast (void ()* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_goodB2GSink to void (...)*)(), !dbg !339
  ret void, !dbg !340
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_good() #0 !dbg !341 {
entry:
  call void @goodG2B(), !dbg !342
  call void @goodB2G(), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_badSink() #0 !dbg !345 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !346, metadata !DIExpression()), !dbg !347
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_badData, align 4, !dbg !348
  store i32 %0, i32* %data, align 4, !dbg !347
  call void @llvm.dbg.declare(metadata i32* %i, metadata !349, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !352, metadata !DIExpression()), !dbg !356
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !356
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !356
  %2 = load i32, i32* %data, align 4, !dbg !357
  %cmp = icmp sge i32 %2, 0, !dbg !359
  br i1 %cmp, label %if.then, label %if.else, !dbg !360

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !361
  %idxprom = sext i32 %3 to i64, !dbg !363
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !363
  store i32 1, i32* %arrayidx, align 4, !dbg !364
  store i32 0, i32* %i, align 4, !dbg !365
  br label %for.cond, !dbg !367

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !368
  %cmp1 = icmp slt i32 %4, 10, !dbg !370
  br i1 %cmp1, label %for.body, label %for.end, !dbg !371

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !372
  %idxprom2 = sext i32 %5 to i64, !dbg !374
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !374
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !374
  call void @printIntLine(i32 %6), !dbg !375
  br label %for.inc, !dbg !376

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !377
  %inc = add nsw i32 %7, 1, !dbg !377
  store i32 %inc, i32* %i, align 4, !dbg !377
  br label %for.cond, !dbg !378, !llvm.loop !379

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !382

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !383
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_goodG2BSink() #0 !dbg !386 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodG2BData, align 4, !dbg !389
  store i32 %0, i32* %data, align 4, !dbg !388
  call void @llvm.dbg.declare(metadata i32* %i, metadata !390, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !393, metadata !DIExpression()), !dbg !394
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !394
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !394
  %2 = load i32, i32* %data, align 4, !dbg !395
  %cmp = icmp sge i32 %2, 0, !dbg !397
  br i1 %cmp, label %if.then, label %if.else, !dbg !398

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !399
  %idxprom = sext i32 %3 to i64, !dbg !401
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !401
  store i32 1, i32* %arrayidx, align 4, !dbg !402
  store i32 0, i32* %i, align 4, !dbg !403
  br label %for.cond, !dbg !405

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !406
  %cmp1 = icmp slt i32 %4, 10, !dbg !408
  br i1 %cmp1, label %for.body, label %for.end, !dbg !409

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !410
  %idxprom2 = sext i32 %5 to i64, !dbg !412
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !412
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !412
  call void @printIntLine(i32 %6), !dbg !413
  br label %for.inc, !dbg !414

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !415
  %inc = add nsw i32 %7, 1, !dbg !415
  store i32 %inc, i32* %i, align 4, !dbg !415
  br label %for.cond, !dbg !416, !llvm.loop !417

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !419

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !420
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !422
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_goodB2GSink() #0 !dbg !423 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodB2GData, align 4, !dbg !426
  store i32 %0, i32* %data, align 4, !dbg !425
  call void @llvm.dbg.declare(metadata i32* %i, metadata !427, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !430, metadata !DIExpression()), !dbg !431
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !431
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !431
  %2 = load i32, i32* %data, align 4, !dbg !432
  %cmp = icmp sge i32 %2, 0, !dbg !434
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !435

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !436
  %cmp1 = icmp slt i32 %3, 10, !dbg !437
  br i1 %cmp1, label %if.then, label %if.else, !dbg !438

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !439
  %idxprom = sext i32 %4 to i64, !dbg !441
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !441
  store i32 1, i32* %arrayidx, align 4, !dbg !442
  store i32 0, i32* %i, align 4, !dbg !443
  br label %for.cond, !dbg !445

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !446
  %cmp2 = icmp slt i32 %5, 10, !dbg !448
  br i1 %cmp2, label %for.body, label %for.end, !dbg !449

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !450
  %idxprom3 = sext i32 %6 to i64, !dbg !452
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !452
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !452
  call void @printIntLine(i32 %7), !dbg !453
  br label %for.inc, !dbg !454

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !455
  %inc = add nsw i32 %8, 1, !dbg !455
  store i32 %inc, i32* %i, align 4, !dbg !455
  br label %for.cond, !dbg !456, !llvm.loop !457

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !459

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !460
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !462
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !463 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !466, metadata !DIExpression()), !dbg !467
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !dbg !468
  %0 = load i8*, i8** %line.addr, align 8, !dbg !469
  %cmp = icmp ne i8* %0, null, !dbg !471
  br i1 %cmp, label %if.then, label %if.end, !dbg !472

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !473
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !475
  br label %if.end, !dbg !476

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !477
  ret void, !dbg !478
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !479 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !480, metadata !DIExpression()), !dbg !481
  %0 = load i8*, i8** %line.addr, align 8, !dbg !482
  %cmp = icmp ne i8* %0, null, !dbg !484
  br i1 %cmp, label %if.then, label %if.end, !dbg !485

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !486
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !488
  br label %if.end, !dbg !489

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !491 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load i32*, i32** %line.addr, align 8, !dbg !499
  %cmp = icmp ne i32* %0, null, !dbg !501
  br i1 %cmp, label %if.then, label %if.end, !dbg !502

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !503
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !505
  br label %if.end, !dbg !506

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !507
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !508 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !511, metadata !DIExpression()), !dbg !512
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !513
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !514
  ret void, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !516 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !520, metadata !DIExpression()), !dbg !521
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !522
  %conv = sext i16 %0 to i32, !dbg !522
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !523
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !525 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !529, metadata !DIExpression()), !dbg !530
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !531
  %conv = fpext float %0 to double, !dbg !531
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !532
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !534 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !538, metadata !DIExpression()), !dbg !539
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !540
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !541
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !543 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !549, metadata !DIExpression()), !dbg !550
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !551
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !552
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !554 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !559, metadata !DIExpression()), !dbg !560
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !561
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !562
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !564 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !567, metadata !DIExpression()), !dbg !568
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !569
  %conv = sext i8 %0 to i32, !dbg !569
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !570
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !572 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !575, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !577, metadata !DIExpression()), !dbg !581
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !582
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !583
  store i32 %0, i32* %arrayidx, align 4, !dbg !584
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !585
  store i32 0, i32* %arrayidx1, align 4, !dbg !586
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !587
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !588
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !590 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !593, metadata !DIExpression()), !dbg !594
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !595
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !596
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !598 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !601, metadata !DIExpression()), !dbg !602
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !603
  %conv = zext i8 %0 to i32, !dbg !603
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !604
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !606 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !610, metadata !DIExpression()), !dbg !611
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !612
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !613
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !615 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !625, metadata !DIExpression()), !dbg !626
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !627
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !628
  %1 = load i32, i32* %intOne, align 4, !dbg !628
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !629
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !630
  %3 = load i32, i32* %intTwo, align 4, !dbg !630
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !631
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !633 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !637, metadata !DIExpression()), !dbg !638
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !639, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.declare(metadata i64* %i, metadata !641, metadata !DIExpression()), !dbg !642
  store i64 0, i64* %i, align 8, !dbg !643
  br label %for.cond, !dbg !645

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !646
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !648
  %cmp = icmp ult i64 %0, %1, !dbg !649
  br i1 %cmp, label %for.body, label %for.end, !dbg !650

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !651
  %3 = load i64, i64* %i, align 8, !dbg !653
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !651
  %4 = load i8, i8* %arrayidx, align 1, !dbg !651
  %conv = zext i8 %4 to i32, !dbg !651
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !654
  br label %for.inc, !dbg !655

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !656
  %inc = add i64 %5, 1, !dbg !656
  store i64 %inc, i64* %i, align 8, !dbg !656
  br label %for.cond, !dbg !657, !llvm.loop !658

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !660
  ret void, !dbg !661
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !662 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !665, metadata !DIExpression()), !dbg !666
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !667, metadata !DIExpression()), !dbg !668
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !669, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !671, metadata !DIExpression()), !dbg !672
  store i64 0, i64* %numWritten, align 8, !dbg !672
  br label %while.cond, !dbg !673

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !674
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !675
  %cmp = icmp ult i64 %0, %1, !dbg !676
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !677

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !678
  %2 = load i16*, i16** %call, align 8, !dbg !678
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !678
  %4 = load i64, i64* %numWritten, align 8, !dbg !678
  %mul = mul i64 2, %4, !dbg !678
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !678
  %5 = load i8, i8* %arrayidx, align 1, !dbg !678
  %conv = sext i8 %5 to i32, !dbg !678
  %idxprom = sext i32 %conv to i64, !dbg !678
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !678
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !678
  %conv2 = zext i16 %6 to i32, !dbg !678
  %and = and i32 %conv2, 4096, !dbg !678
  %tobool = icmp ne i32 %and, 0, !dbg !678
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !679

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !680
  %7 = load i16*, i16** %call3, align 8, !dbg !680
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !680
  %9 = load i64, i64* %numWritten, align 8, !dbg !680
  %mul4 = mul i64 2, %9, !dbg !680
  %add = add i64 %mul4, 1, !dbg !680
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !680
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !680
  %conv6 = sext i8 %10 to i32, !dbg !680
  %idxprom7 = sext i32 %conv6 to i64, !dbg !680
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !680
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !680
  %conv9 = zext i16 %11 to i32, !dbg !680
  %and10 = and i32 %conv9, 4096, !dbg !680
  %tobool11 = icmp ne i32 %and10, 0, !dbg !679
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !681
  br i1 %12, label %while.body, label %while.end, !dbg !673

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !682, metadata !DIExpression()), !dbg !684
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !685
  %14 = load i64, i64* %numWritten, align 8, !dbg !686
  %mul12 = mul i64 2, %14, !dbg !687
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !685
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !688
  %15 = load i32, i32* %byte, align 4, !dbg !689
  %conv15 = trunc i32 %15 to i8, !dbg !690
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !691
  %17 = load i64, i64* %numWritten, align 8, !dbg !692
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !691
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !693
  %18 = load i64, i64* %numWritten, align 8, !dbg !694
  %inc = add i64 %18, 1, !dbg !694
  store i64 %inc, i64* %numWritten, align 8, !dbg !694
  br label %while.cond, !dbg !673, !llvm.loop !695

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !697
  ret i64 %19, !dbg !698
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !699 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !702, metadata !DIExpression()), !dbg !703
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !704, metadata !DIExpression()), !dbg !705
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !706, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !708, metadata !DIExpression()), !dbg !709
  store i64 0, i64* %numWritten, align 8, !dbg !709
  br label %while.cond, !dbg !710

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !711
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !712
  %cmp = icmp ult i64 %0, %1, !dbg !713
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !714

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !715
  %3 = load i64, i64* %numWritten, align 8, !dbg !716
  %mul = mul i64 2, %3, !dbg !717
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !715
  %4 = load i32, i32* %arrayidx, align 4, !dbg !715
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !718
  %tobool = icmp ne i32 %call, 0, !dbg !718
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !719

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !720
  %6 = load i64, i64* %numWritten, align 8, !dbg !721
  %mul1 = mul i64 2, %6, !dbg !722
  %add = add i64 %mul1, 1, !dbg !723
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !720
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !720
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !724
  %tobool4 = icmp ne i32 %call3, 0, !dbg !719
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !725
  br i1 %8, label %while.body, label %while.end, !dbg !710

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !726, metadata !DIExpression()), !dbg !728
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !729
  %10 = load i64, i64* %numWritten, align 8, !dbg !730
  %mul5 = mul i64 2, %10, !dbg !731
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !729
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !732
  %11 = load i32, i32* %byte, align 4, !dbg !733
  %conv = trunc i32 %11 to i8, !dbg !734
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !735
  %13 = load i64, i64* %numWritten, align 8, !dbg !736
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !735
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !737
  %14 = load i64, i64* %numWritten, align 8, !dbg !738
  %inc = add i64 %14, 1, !dbg !738
  store i64 %inc, i64* %numWritten, align 8, !dbg !738
  br label %while.cond, !dbg !710, !llvm.loop !739

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !741
  ret i64 %15, !dbg !742
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !743 {
entry:
  ret i32 1, !dbg !746
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !747 {
entry:
  ret i32 0, !dbg !748
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !749 {
entry:
  %call = call i32 @rand() #7, !dbg !750
  %rem = srem i32 %call, 2, !dbg !751
  ret i32 %rem, !dbg !752
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !753 {
entry:
  ret void, !dbg !754
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !755 {
entry:
  ret void, !dbg !756
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !757 {
entry:
  ret void, !dbg !758
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !759 {
entry:
  ret void, !dbg !760
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !761 {
entry:
  ret void, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !763 {
entry:
  ret void, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !765 {
entry:
  ret void, !dbg !766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !767 {
entry:
  ret void, !dbg !768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !769 {
entry:
  ret void, !dbg !770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !771 {
entry:
  ret void, !dbg !772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !773 {
entry:
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !775 {
entry:
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !777 {
entry:
  ret void, !dbg !778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !779 {
entry:
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !781 {
entry:
  ret void, !dbg !782
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !783 {
entry:
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !785 {
entry:
  ret void, !dbg !786
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !787 {
entry:
  ret void, !dbg !788
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

!llvm.dbg.cu = !{!2, !112, !74}
!llvm.ident = !{!115, !115, !115}
!llvm.module.flags = !{!116, !117, !118}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_badData", scope: !2, file: !3, line: 43, type: !69, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_748/source_code")
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
!66 = !{!0, !67, !70}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodG2BData", scope: !2, file: !3, line: 44, type: !69, isLocal: false, isDefinition: true)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodB2GData", scope: !2, file: !3, line: 45, type: !69, isLocal: false, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !74, file: !75, line: 174, type: !69, isLocal: false, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !76, retainedTypes: !92, globals: !95, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_748/source_code")
!76 = !{!77}
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 46, baseType: !7, size: 32, elements: !79)
!78 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!80 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!81 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!92 = !{!93, !69, !60, !94}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!94 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !{!72, !96, !98, !100, !102, !104, !106, !108}
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !74, file: !75, line: 175, type: !69, isLocal: false, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !74, file: !75, line: 176, type: !69, isLocal: false, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "globalTrue", scope: !74, file: !75, line: 181, type: !69, isLocal: false, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "globalFalse", scope: !74, file: !75, line: 182, type: !69, isLocal: false, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "globalFive", scope: !74, file: !75, line: 183, type: !69, isLocal: false, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "globalArgc", scope: !74, file: !75, line: 214, type: !69, isLocal: false, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "globalArgv", scope: !74, file: !75, line: 215, type: !110, isLocal: false, isDefinition: true)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !114, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_748/source_code")
!114 = !{}
!115 = !{!"clang version 12.0.0"}
!116 = !{i32 7, !"Dwarf Version", i32 4}
!117 = !{i32 2, !"Debug Info Version", i32 3}
!118 = !{i32 1, !"wchar_size", i32 4}
!119 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_bad", scope: !3, file: !3, line: 51, type: !120, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!120 = !DISubroutineType(types: !121)
!121 = !{null}
!122 = !DILocalVariable(name: "data", scope: !119, file: !3, line: 53, type: !69)
!123 = !DILocation(line: 53, column: 9, scope: !119)
!124 = !DILocation(line: 55, column: 10, scope: !119)
!125 = !DILocalVariable(name: "recvResult", scope: !126, file: !3, line: 61, type: !69)
!126 = distinct !DILexicalBlock(scope: !119, file: !3, line: 56, column: 5)
!127 = !DILocation(line: 61, column: 13, scope: !126)
!128 = !DILocalVariable(name: "service", scope: !126, file: !3, line: 62, type: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !130)
!130 = !{!131, !132, !136, !140}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !129, file: !19, line: 240, baseType: !58, size: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !129, file: !19, line: 241, baseType: !133, size: 16, offset: 16)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 25, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 40, baseType: !60)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !129, file: !19, line: 242, baseType: !137, size: 32, offset: 32)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !137, file: !19, line: 33, baseType: !48, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !129, file: !19, line: 245, baseType: !141, size: 64, offset: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 8)
!144 = !DILocation(line: 62, column: 28, scope: !126)
!145 = !DILocalVariable(name: "listenSocket", scope: !126, file: !3, line: 63, type: !69)
!146 = !DILocation(line: 63, column: 16, scope: !126)
!147 = !DILocalVariable(name: "acceptSocket", scope: !126, file: !3, line: 64, type: !69)
!148 = !DILocation(line: 64, column: 16, scope: !126)
!149 = !DILocalVariable(name: "inputBuffer", scope: !126, file: !3, line: 65, type: !62)
!150 = !DILocation(line: 65, column: 14, scope: !126)
!151 = !DILocation(line: 66, column: 9, scope: !126)
!152 = !DILocation(line: 76, column: 28, scope: !153)
!153 = distinct !DILexicalBlock(scope: !126, file: !3, line: 67, column: 9)
!154 = !DILocation(line: 76, column: 26, scope: !153)
!155 = !DILocation(line: 77, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !3, line: 77, column: 17)
!157 = !DILocation(line: 77, column: 30, scope: !156)
!158 = !DILocation(line: 77, column: 17, scope: !153)
!159 = !DILocation(line: 79, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !3, line: 78, column: 13)
!161 = !DILocation(line: 81, column: 13, scope: !153)
!162 = !DILocation(line: 82, column: 21, scope: !153)
!163 = !DILocation(line: 82, column: 32, scope: !153)
!164 = !DILocation(line: 83, column: 21, scope: !153)
!165 = !DILocation(line: 83, column: 30, scope: !153)
!166 = !DILocation(line: 83, column: 37, scope: !153)
!167 = !DILocation(line: 84, column: 32, scope: !153)
!168 = !DILocation(line: 84, column: 21, scope: !153)
!169 = !DILocation(line: 84, column: 30, scope: !153)
!170 = !DILocation(line: 85, column: 22, scope: !171)
!171 = distinct !DILexicalBlock(scope: !153, file: !3, line: 85, column: 17)
!172 = !DILocation(line: 85, column: 36, scope: !171)
!173 = !DILocation(line: 85, column: 17, scope: !171)
!174 = !DILocation(line: 85, column: 81, scope: !171)
!175 = !DILocation(line: 85, column: 17, scope: !153)
!176 = !DILocation(line: 87, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !171, file: !3, line: 86, column: 13)
!178 = !DILocation(line: 89, column: 24, scope: !179)
!179 = distinct !DILexicalBlock(scope: !153, file: !3, line: 89, column: 17)
!180 = !DILocation(line: 89, column: 17, scope: !179)
!181 = !DILocation(line: 89, column: 54, scope: !179)
!182 = !DILocation(line: 89, column: 17, scope: !153)
!183 = !DILocation(line: 91, column: 17, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !3, line: 90, column: 13)
!185 = !DILocation(line: 93, column: 35, scope: !153)
!186 = !DILocation(line: 93, column: 28, scope: !153)
!187 = !DILocation(line: 93, column: 26, scope: !153)
!188 = !DILocation(line: 94, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !153, file: !3, line: 94, column: 17)
!190 = !DILocation(line: 94, column: 30, scope: !189)
!191 = !DILocation(line: 94, column: 17, scope: !153)
!192 = !DILocation(line: 96, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !3, line: 95, column: 13)
!194 = !DILocation(line: 99, column: 31, scope: !153)
!195 = !DILocation(line: 99, column: 45, scope: !153)
!196 = !DILocation(line: 99, column: 26, scope: !153)
!197 = !DILocation(line: 99, column: 24, scope: !153)
!198 = !DILocation(line: 100, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !153, file: !3, line: 100, column: 17)
!200 = !DILocation(line: 100, column: 28, scope: !199)
!201 = !DILocation(line: 100, column: 44, scope: !199)
!202 = !DILocation(line: 100, column: 47, scope: !199)
!203 = !DILocation(line: 100, column: 58, scope: !199)
!204 = !DILocation(line: 100, column: 17, scope: !153)
!205 = !DILocation(line: 102, column: 17, scope: !206)
!206 = distinct !DILexicalBlock(scope: !199, file: !3, line: 101, column: 13)
!207 = !DILocation(line: 105, column: 25, scope: !153)
!208 = !DILocation(line: 105, column: 13, scope: !153)
!209 = !DILocation(line: 105, column: 37, scope: !153)
!210 = !DILocation(line: 107, column: 25, scope: !153)
!211 = !DILocation(line: 107, column: 20, scope: !153)
!212 = !DILocation(line: 107, column: 18, scope: !153)
!213 = !DILocation(line: 108, column: 9, scope: !153)
!214 = !DILocation(line: 110, column: 13, scope: !215)
!215 = distinct !DILexicalBlock(scope: !126, file: !3, line: 110, column: 13)
!216 = !DILocation(line: 110, column: 26, scope: !215)
!217 = !DILocation(line: 110, column: 13, scope: !126)
!218 = !DILocation(line: 112, column: 26, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !3, line: 111, column: 9)
!220 = !DILocation(line: 112, column: 13, scope: !219)
!221 = !DILocation(line: 113, column: 9, scope: !219)
!222 = !DILocation(line: 114, column: 13, scope: !223)
!223 = distinct !DILexicalBlock(scope: !126, file: !3, line: 114, column: 13)
!224 = !DILocation(line: 114, column: 26, scope: !223)
!225 = !DILocation(line: 114, column: 13, scope: !126)
!226 = !DILocation(line: 116, column: 26, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !3, line: 115, column: 9)
!228 = !DILocation(line: 116, column: 13, scope: !227)
!229 = !DILocation(line: 117, column: 9, scope: !227)
!230 = !DILocation(line: 125, column: 75, scope: !119)
!231 = !DILocation(line: 125, column: 73, scope: !119)
!232 = !DILocation(line: 126, column: 5, scope: !119)
!233 = !DILocation(line: 127, column: 1, scope: !119)
!234 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 136, type: !120, scopeLine: 137, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!235 = !DILocalVariable(name: "data", scope: !234, file: !3, line: 138, type: !69)
!236 = !DILocation(line: 138, column: 9, scope: !234)
!237 = !DILocation(line: 140, column: 10, scope: !234)
!238 = !DILocation(line: 143, column: 10, scope: !234)
!239 = !DILocation(line: 144, column: 79, scope: !234)
!240 = !DILocation(line: 144, column: 77, scope: !234)
!241 = !DILocation(line: 145, column: 5, scope: !234)
!242 = !DILocation(line: 146, column: 1, scope: !234)
!243 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 149, type: !120, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!244 = !DILocalVariable(name: "data", scope: !243, file: !3, line: 151, type: !69)
!245 = !DILocation(line: 151, column: 9, scope: !243)
!246 = !DILocation(line: 153, column: 10, scope: !243)
!247 = !DILocalVariable(name: "recvResult", scope: !248, file: !3, line: 159, type: !69)
!248 = distinct !DILexicalBlock(scope: !243, file: !3, line: 154, column: 5)
!249 = !DILocation(line: 159, column: 13, scope: !248)
!250 = !DILocalVariable(name: "service", scope: !248, file: !3, line: 160, type: !129)
!251 = !DILocation(line: 160, column: 28, scope: !248)
!252 = !DILocalVariable(name: "listenSocket", scope: !248, file: !3, line: 161, type: !69)
!253 = !DILocation(line: 161, column: 16, scope: !248)
!254 = !DILocalVariable(name: "acceptSocket", scope: !248, file: !3, line: 162, type: !69)
!255 = !DILocation(line: 162, column: 16, scope: !248)
!256 = !DILocalVariable(name: "inputBuffer", scope: !248, file: !3, line: 163, type: !62)
!257 = !DILocation(line: 163, column: 14, scope: !248)
!258 = !DILocation(line: 164, column: 9, scope: !248)
!259 = !DILocation(line: 174, column: 28, scope: !260)
!260 = distinct !DILexicalBlock(scope: !248, file: !3, line: 165, column: 9)
!261 = !DILocation(line: 174, column: 26, scope: !260)
!262 = !DILocation(line: 175, column: 17, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !3, line: 175, column: 17)
!264 = !DILocation(line: 175, column: 30, scope: !263)
!265 = !DILocation(line: 175, column: 17, scope: !260)
!266 = !DILocation(line: 177, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !3, line: 176, column: 13)
!268 = !DILocation(line: 179, column: 13, scope: !260)
!269 = !DILocation(line: 180, column: 21, scope: !260)
!270 = !DILocation(line: 180, column: 32, scope: !260)
!271 = !DILocation(line: 181, column: 21, scope: !260)
!272 = !DILocation(line: 181, column: 30, scope: !260)
!273 = !DILocation(line: 181, column: 37, scope: !260)
!274 = !DILocation(line: 182, column: 32, scope: !260)
!275 = !DILocation(line: 182, column: 21, scope: !260)
!276 = !DILocation(line: 182, column: 30, scope: !260)
!277 = !DILocation(line: 183, column: 22, scope: !278)
!278 = distinct !DILexicalBlock(scope: !260, file: !3, line: 183, column: 17)
!279 = !DILocation(line: 183, column: 36, scope: !278)
!280 = !DILocation(line: 183, column: 17, scope: !278)
!281 = !DILocation(line: 183, column: 81, scope: !278)
!282 = !DILocation(line: 183, column: 17, scope: !260)
!283 = !DILocation(line: 185, column: 17, scope: !284)
!284 = distinct !DILexicalBlock(scope: !278, file: !3, line: 184, column: 13)
!285 = !DILocation(line: 187, column: 24, scope: !286)
!286 = distinct !DILexicalBlock(scope: !260, file: !3, line: 187, column: 17)
!287 = !DILocation(line: 187, column: 17, scope: !286)
!288 = !DILocation(line: 187, column: 54, scope: !286)
!289 = !DILocation(line: 187, column: 17, scope: !260)
!290 = !DILocation(line: 189, column: 17, scope: !291)
!291 = distinct !DILexicalBlock(scope: !286, file: !3, line: 188, column: 13)
!292 = !DILocation(line: 191, column: 35, scope: !260)
!293 = !DILocation(line: 191, column: 28, scope: !260)
!294 = !DILocation(line: 191, column: 26, scope: !260)
!295 = !DILocation(line: 192, column: 17, scope: !296)
!296 = distinct !DILexicalBlock(scope: !260, file: !3, line: 192, column: 17)
!297 = !DILocation(line: 192, column: 30, scope: !296)
!298 = !DILocation(line: 192, column: 17, scope: !260)
!299 = !DILocation(line: 194, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !3, line: 193, column: 13)
!301 = !DILocation(line: 197, column: 31, scope: !260)
!302 = !DILocation(line: 197, column: 45, scope: !260)
!303 = !DILocation(line: 197, column: 26, scope: !260)
!304 = !DILocation(line: 197, column: 24, scope: !260)
!305 = !DILocation(line: 198, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !260, file: !3, line: 198, column: 17)
!307 = !DILocation(line: 198, column: 28, scope: !306)
!308 = !DILocation(line: 198, column: 44, scope: !306)
!309 = !DILocation(line: 198, column: 47, scope: !306)
!310 = !DILocation(line: 198, column: 58, scope: !306)
!311 = !DILocation(line: 198, column: 17, scope: !260)
!312 = !DILocation(line: 200, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !306, file: !3, line: 199, column: 13)
!314 = !DILocation(line: 203, column: 25, scope: !260)
!315 = !DILocation(line: 203, column: 13, scope: !260)
!316 = !DILocation(line: 203, column: 37, scope: !260)
!317 = !DILocation(line: 205, column: 25, scope: !260)
!318 = !DILocation(line: 205, column: 20, scope: !260)
!319 = !DILocation(line: 205, column: 18, scope: !260)
!320 = !DILocation(line: 206, column: 9, scope: !260)
!321 = !DILocation(line: 208, column: 13, scope: !322)
!322 = distinct !DILexicalBlock(scope: !248, file: !3, line: 208, column: 13)
!323 = !DILocation(line: 208, column: 26, scope: !322)
!324 = !DILocation(line: 208, column: 13, scope: !248)
!325 = !DILocation(line: 210, column: 26, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !3, line: 209, column: 9)
!327 = !DILocation(line: 210, column: 13, scope: !326)
!328 = !DILocation(line: 211, column: 9, scope: !326)
!329 = !DILocation(line: 212, column: 13, scope: !330)
!330 = distinct !DILexicalBlock(scope: !248, file: !3, line: 212, column: 13)
!331 = !DILocation(line: 212, column: 26, scope: !330)
!332 = !DILocation(line: 212, column: 13, scope: !248)
!333 = !DILocation(line: 214, column: 26, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !3, line: 213, column: 9)
!335 = !DILocation(line: 214, column: 13, scope: !334)
!336 = !DILocation(line: 215, column: 9, scope: !334)
!337 = !DILocation(line: 223, column: 79, scope: !243)
!338 = !DILocation(line: 223, column: 77, scope: !243)
!339 = !DILocation(line: 224, column: 5, scope: !243)
!340 = !DILocation(line: 225, column: 1, scope: !243)
!341 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_good", scope: !3, file: !3, line: 227, type: !120, scopeLine: 228, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!342 = !DILocation(line: 229, column: 5, scope: !341)
!343 = !DILocation(line: 230, column: 5, scope: !341)
!344 = !DILocation(line: 231, column: 1, scope: !341)
!345 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_badSink", scope: !113, file: !113, line: 48, type: !120, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !114)
!346 = !DILocalVariable(name: "data", scope: !345, file: !113, line: 50, type: !69)
!347 = !DILocation(line: 50, column: 9, scope: !345)
!348 = !DILocation(line: 50, column: 16, scope: !345)
!349 = !DILocalVariable(name: "i", scope: !350, file: !113, line: 52, type: !69)
!350 = distinct !DILexicalBlock(scope: !345, file: !113, line: 51, column: 5)
!351 = !DILocation(line: 52, column: 13, scope: !350)
!352 = !DILocalVariable(name: "buffer", scope: !350, file: !113, line: 53, type: !353)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 320, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 10)
!356 = !DILocation(line: 53, column: 13, scope: !350)
!357 = !DILocation(line: 56, column: 13, scope: !358)
!358 = distinct !DILexicalBlock(scope: !350, file: !113, line: 56, column: 13)
!359 = !DILocation(line: 56, column: 18, scope: !358)
!360 = !DILocation(line: 56, column: 13, scope: !350)
!361 = !DILocation(line: 58, column: 20, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !113, line: 57, column: 9)
!363 = !DILocation(line: 58, column: 13, scope: !362)
!364 = !DILocation(line: 58, column: 26, scope: !362)
!365 = !DILocation(line: 60, column: 19, scope: !366)
!366 = distinct !DILexicalBlock(scope: !362, file: !113, line: 60, column: 13)
!367 = !DILocation(line: 60, column: 17, scope: !366)
!368 = !DILocation(line: 60, column: 24, scope: !369)
!369 = distinct !DILexicalBlock(scope: !366, file: !113, line: 60, column: 13)
!370 = !DILocation(line: 60, column: 26, scope: !369)
!371 = !DILocation(line: 60, column: 13, scope: !366)
!372 = !DILocation(line: 62, column: 37, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !113, line: 61, column: 13)
!374 = !DILocation(line: 62, column: 30, scope: !373)
!375 = !DILocation(line: 62, column: 17, scope: !373)
!376 = !DILocation(line: 63, column: 13, scope: !373)
!377 = !DILocation(line: 60, column: 33, scope: !369)
!378 = !DILocation(line: 60, column: 13, scope: !369)
!379 = distinct !{!379, !371, !380, !381}
!380 = !DILocation(line: 63, column: 13, scope: !366)
!381 = !{!"llvm.loop.mustprogress"}
!382 = !DILocation(line: 64, column: 9, scope: !362)
!383 = !DILocation(line: 67, column: 13, scope: !384)
!384 = distinct !DILexicalBlock(scope: !358, file: !113, line: 66, column: 9)
!385 = !DILocation(line: 70, column: 1, scope: !345)
!386 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_goodG2BSink", scope: !113, file: !113, line: 77, type: !120, scopeLine: 78, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !114)
!387 = !DILocalVariable(name: "data", scope: !386, file: !113, line: 79, type: !69)
!388 = !DILocation(line: 79, column: 9, scope: !386)
!389 = !DILocation(line: 79, column: 16, scope: !386)
!390 = !DILocalVariable(name: "i", scope: !391, file: !113, line: 81, type: !69)
!391 = distinct !DILexicalBlock(scope: !386, file: !113, line: 80, column: 5)
!392 = !DILocation(line: 81, column: 13, scope: !391)
!393 = !DILocalVariable(name: "buffer", scope: !391, file: !113, line: 82, type: !353)
!394 = !DILocation(line: 82, column: 13, scope: !391)
!395 = !DILocation(line: 85, column: 13, scope: !396)
!396 = distinct !DILexicalBlock(scope: !391, file: !113, line: 85, column: 13)
!397 = !DILocation(line: 85, column: 18, scope: !396)
!398 = !DILocation(line: 85, column: 13, scope: !391)
!399 = !DILocation(line: 87, column: 20, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !113, line: 86, column: 9)
!401 = !DILocation(line: 87, column: 13, scope: !400)
!402 = !DILocation(line: 87, column: 26, scope: !400)
!403 = !DILocation(line: 89, column: 19, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !113, line: 89, column: 13)
!405 = !DILocation(line: 89, column: 17, scope: !404)
!406 = !DILocation(line: 89, column: 24, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !113, line: 89, column: 13)
!408 = !DILocation(line: 89, column: 26, scope: !407)
!409 = !DILocation(line: 89, column: 13, scope: !404)
!410 = !DILocation(line: 91, column: 37, scope: !411)
!411 = distinct !DILexicalBlock(scope: !407, file: !113, line: 90, column: 13)
!412 = !DILocation(line: 91, column: 30, scope: !411)
!413 = !DILocation(line: 91, column: 17, scope: !411)
!414 = !DILocation(line: 92, column: 13, scope: !411)
!415 = !DILocation(line: 89, column: 33, scope: !407)
!416 = !DILocation(line: 89, column: 13, scope: !407)
!417 = distinct !{!417, !409, !418, !381}
!418 = !DILocation(line: 92, column: 13, scope: !404)
!419 = !DILocation(line: 93, column: 9, scope: !400)
!420 = !DILocation(line: 96, column: 13, scope: !421)
!421 = distinct !DILexicalBlock(scope: !396, file: !113, line: 95, column: 9)
!422 = !DILocation(line: 99, column: 1, scope: !386)
!423 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_goodB2GSink", scope: !113, file: !113, line: 102, type: !120, scopeLine: 103, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !114)
!424 = !DILocalVariable(name: "data", scope: !423, file: !113, line: 104, type: !69)
!425 = !DILocation(line: 104, column: 9, scope: !423)
!426 = !DILocation(line: 104, column: 16, scope: !423)
!427 = !DILocalVariable(name: "i", scope: !428, file: !113, line: 106, type: !69)
!428 = distinct !DILexicalBlock(scope: !423, file: !113, line: 105, column: 5)
!429 = !DILocation(line: 106, column: 13, scope: !428)
!430 = !DILocalVariable(name: "buffer", scope: !428, file: !113, line: 107, type: !353)
!431 = !DILocation(line: 107, column: 13, scope: !428)
!432 = !DILocation(line: 109, column: 13, scope: !433)
!433 = distinct !DILexicalBlock(scope: !428, file: !113, line: 109, column: 13)
!434 = !DILocation(line: 109, column: 18, scope: !433)
!435 = !DILocation(line: 109, column: 23, scope: !433)
!436 = !DILocation(line: 109, column: 26, scope: !433)
!437 = !DILocation(line: 109, column: 31, scope: !433)
!438 = !DILocation(line: 109, column: 13, scope: !428)
!439 = !DILocation(line: 111, column: 20, scope: !440)
!440 = distinct !DILexicalBlock(scope: !433, file: !113, line: 110, column: 9)
!441 = !DILocation(line: 111, column: 13, scope: !440)
!442 = !DILocation(line: 111, column: 26, scope: !440)
!443 = !DILocation(line: 113, column: 19, scope: !444)
!444 = distinct !DILexicalBlock(scope: !440, file: !113, line: 113, column: 13)
!445 = !DILocation(line: 113, column: 17, scope: !444)
!446 = !DILocation(line: 113, column: 24, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !113, line: 113, column: 13)
!448 = !DILocation(line: 113, column: 26, scope: !447)
!449 = !DILocation(line: 113, column: 13, scope: !444)
!450 = !DILocation(line: 115, column: 37, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !113, line: 114, column: 13)
!452 = !DILocation(line: 115, column: 30, scope: !451)
!453 = !DILocation(line: 115, column: 17, scope: !451)
!454 = !DILocation(line: 116, column: 13, scope: !451)
!455 = !DILocation(line: 113, column: 33, scope: !447)
!456 = !DILocation(line: 113, column: 13, scope: !447)
!457 = distinct !{!457, !449, !458, !381}
!458 = !DILocation(line: 116, column: 13, scope: !444)
!459 = !DILocation(line: 117, column: 9, scope: !440)
!460 = !DILocation(line: 120, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !433, file: !113, line: 119, column: 9)
!462 = !DILocation(line: 123, column: 1, scope: !423)
!463 = distinct !DISubprogram(name: "printLine", scope: !75, file: !75, line: 11, type: !464, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !111}
!466 = !DILocalVariable(name: "line", arg: 1, scope: !463, file: !75, line: 11, type: !111)
!467 = !DILocation(line: 11, column: 25, scope: !463)
!468 = !DILocation(line: 13, column: 1, scope: !463)
!469 = !DILocation(line: 14, column: 8, scope: !470)
!470 = distinct !DILexicalBlock(scope: !463, file: !75, line: 14, column: 8)
!471 = !DILocation(line: 14, column: 13, scope: !470)
!472 = !DILocation(line: 14, column: 8, scope: !463)
!473 = !DILocation(line: 16, column: 24, scope: !474)
!474 = distinct !DILexicalBlock(scope: !470, file: !75, line: 15, column: 5)
!475 = !DILocation(line: 16, column: 9, scope: !474)
!476 = !DILocation(line: 17, column: 5, scope: !474)
!477 = !DILocation(line: 18, column: 5, scope: !463)
!478 = !DILocation(line: 19, column: 1, scope: !463)
!479 = distinct !DISubprogram(name: "printSinkLine", scope: !75, file: !75, line: 20, type: !464, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!480 = !DILocalVariable(name: "line", arg: 1, scope: !479, file: !75, line: 20, type: !111)
!481 = !DILocation(line: 20, column: 29, scope: !479)
!482 = !DILocation(line: 22, column: 8, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !75, line: 22, column: 8)
!484 = !DILocation(line: 22, column: 13, scope: !483)
!485 = !DILocation(line: 22, column: 8, scope: !479)
!486 = !DILocation(line: 24, column: 24, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !75, line: 23, column: 5)
!488 = !DILocation(line: 24, column: 9, scope: !487)
!489 = !DILocation(line: 25, column: 5, scope: !487)
!490 = !DILocation(line: 26, column: 1, scope: !479)
!491 = distinct !DISubprogram(name: "printWLine", scope: !75, file: !75, line: 27, type: !492, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !496, line: 74, baseType: !69)
!496 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!497 = !DILocalVariable(name: "line", arg: 1, scope: !491, file: !75, line: 27, type: !494)
!498 = !DILocation(line: 27, column: 29, scope: !491)
!499 = !DILocation(line: 29, column: 8, scope: !500)
!500 = distinct !DILexicalBlock(scope: !491, file: !75, line: 29, column: 8)
!501 = !DILocation(line: 29, column: 13, scope: !500)
!502 = !DILocation(line: 29, column: 8, scope: !491)
!503 = !DILocation(line: 31, column: 27, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !75, line: 30, column: 5)
!505 = !DILocation(line: 31, column: 9, scope: !504)
!506 = !DILocation(line: 32, column: 5, scope: !504)
!507 = !DILocation(line: 33, column: 1, scope: !491)
!508 = distinct !DISubprogram(name: "printIntLine", scope: !75, file: !75, line: 35, type: !509, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !69}
!511 = !DILocalVariable(name: "intNumber", arg: 1, scope: !508, file: !75, line: 35, type: !69)
!512 = !DILocation(line: 35, column: 24, scope: !508)
!513 = !DILocation(line: 37, column: 20, scope: !508)
!514 = !DILocation(line: 37, column: 5, scope: !508)
!515 = !DILocation(line: 38, column: 1, scope: !508)
!516 = distinct !DISubprogram(name: "printShortLine", scope: !75, file: !75, line: 40, type: !517, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !519}
!519 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!520 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !516, file: !75, line: 40, type: !519)
!521 = !DILocation(line: 40, column: 28, scope: !516)
!522 = !DILocation(line: 42, column: 21, scope: !516)
!523 = !DILocation(line: 42, column: 5, scope: !516)
!524 = !DILocation(line: 43, column: 1, scope: !516)
!525 = distinct !DISubprogram(name: "printFloatLine", scope: !75, file: !75, line: 45, type: !526, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !528}
!528 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!529 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !525, file: !75, line: 45, type: !528)
!530 = !DILocation(line: 45, column: 28, scope: !525)
!531 = !DILocation(line: 47, column: 20, scope: !525)
!532 = !DILocation(line: 47, column: 5, scope: !525)
!533 = !DILocation(line: 48, column: 1, scope: !525)
!534 = distinct !DISubprogram(name: "printLongLine", scope: !75, file: !75, line: 50, type: !535, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !537}
!537 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!538 = !DILocalVariable(name: "longNumber", arg: 1, scope: !534, file: !75, line: 50, type: !537)
!539 = !DILocation(line: 50, column: 26, scope: !534)
!540 = !DILocation(line: 52, column: 21, scope: !534)
!541 = !DILocation(line: 52, column: 5, scope: !534)
!542 = !DILocation(line: 53, column: 1, scope: !534)
!543 = distinct !DISubprogram(name: "printLongLongLine", scope: !75, file: !75, line: 55, type: !544, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !546}
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !547, line: 27, baseType: !548)
!547 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !52, line: 44, baseType: !537)
!549 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !543, file: !75, line: 55, type: !546)
!550 = !DILocation(line: 55, column: 33, scope: !543)
!551 = !DILocation(line: 57, column: 29, scope: !543)
!552 = !DILocation(line: 57, column: 5, scope: !543)
!553 = !DILocation(line: 58, column: 1, scope: !543)
!554 = distinct !DISubprogram(name: "printSizeTLine", scope: !75, file: !75, line: 60, type: !555, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !557}
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !496, line: 46, baseType: !558)
!558 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!559 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !554, file: !75, line: 60, type: !557)
!560 = !DILocation(line: 60, column: 29, scope: !554)
!561 = !DILocation(line: 62, column: 21, scope: !554)
!562 = !DILocation(line: 62, column: 5, scope: !554)
!563 = !DILocation(line: 63, column: 1, scope: !554)
!564 = distinct !DISubprogram(name: "printHexCharLine", scope: !75, file: !75, line: 65, type: !565, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !63}
!567 = !DILocalVariable(name: "charHex", arg: 1, scope: !564, file: !75, line: 65, type: !63)
!568 = !DILocation(line: 65, column: 29, scope: !564)
!569 = !DILocation(line: 67, column: 22, scope: !564)
!570 = !DILocation(line: 67, column: 5, scope: !564)
!571 = !DILocation(line: 68, column: 1, scope: !564)
!572 = distinct !DISubprogram(name: "printWcharLine", scope: !75, file: !75, line: 70, type: !573, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !495}
!575 = !DILocalVariable(name: "wideChar", arg: 1, scope: !572, file: !75, line: 70, type: !495)
!576 = !DILocation(line: 70, column: 29, scope: !572)
!577 = !DILocalVariable(name: "s", scope: !572, file: !75, line: 74, type: !578)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 64, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 2)
!581 = !DILocation(line: 74, column: 13, scope: !572)
!582 = !DILocation(line: 75, column: 16, scope: !572)
!583 = !DILocation(line: 75, column: 9, scope: !572)
!584 = !DILocation(line: 75, column: 14, scope: !572)
!585 = !DILocation(line: 76, column: 9, scope: !572)
!586 = !DILocation(line: 76, column: 14, scope: !572)
!587 = !DILocation(line: 77, column: 21, scope: !572)
!588 = !DILocation(line: 77, column: 5, scope: !572)
!589 = !DILocation(line: 78, column: 1, scope: !572)
!590 = distinct !DISubprogram(name: "printUnsignedLine", scope: !75, file: !75, line: 80, type: !591, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !7}
!593 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !590, file: !75, line: 80, type: !7)
!594 = !DILocation(line: 80, column: 33, scope: !590)
!595 = !DILocation(line: 82, column: 20, scope: !590)
!596 = !DILocation(line: 82, column: 5, scope: !590)
!597 = !DILocation(line: 83, column: 1, scope: !590)
!598 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !75, file: !75, line: 85, type: !599, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !94}
!601 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !598, file: !75, line: 85, type: !94)
!602 = !DILocation(line: 85, column: 45, scope: !598)
!603 = !DILocation(line: 87, column: 22, scope: !598)
!604 = !DILocation(line: 87, column: 5, scope: !598)
!605 = !DILocation(line: 88, column: 1, scope: !598)
!606 = distinct !DISubprogram(name: "printDoubleLine", scope: !75, file: !75, line: 90, type: !607, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !609}
!609 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!610 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !606, file: !75, line: 90, type: !609)
!611 = !DILocation(line: 90, column: 29, scope: !606)
!612 = !DILocation(line: 92, column: 20, scope: !606)
!613 = !DILocation(line: 92, column: 5, scope: !606)
!614 = !DILocation(line: 93, column: 1, scope: !606)
!615 = distinct !DISubprogram(name: "printStructLine", scope: !75, file: !75, line: 95, type: !616, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !618}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !620, line: 100, baseType: !621)
!620 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_748/source_code")
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !620, line: 96, size: 64, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !621, file: !620, line: 98, baseType: !69, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !621, file: !620, line: 99, baseType: !69, size: 32, offset: 32)
!625 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !615, file: !75, line: 95, type: !618)
!626 = !DILocation(line: 95, column: 40, scope: !615)
!627 = !DILocation(line: 97, column: 26, scope: !615)
!628 = !DILocation(line: 97, column: 47, scope: !615)
!629 = !DILocation(line: 97, column: 55, scope: !615)
!630 = !DILocation(line: 97, column: 76, scope: !615)
!631 = !DILocation(line: 97, column: 5, scope: !615)
!632 = !DILocation(line: 98, column: 1, scope: !615)
!633 = distinct !DISubprogram(name: "printBytesLine", scope: !75, file: !75, line: 100, type: !634, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !636, !557}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!637 = !DILocalVariable(name: "bytes", arg: 1, scope: !633, file: !75, line: 100, type: !636)
!638 = !DILocation(line: 100, column: 38, scope: !633)
!639 = !DILocalVariable(name: "numBytes", arg: 2, scope: !633, file: !75, line: 100, type: !557)
!640 = !DILocation(line: 100, column: 52, scope: !633)
!641 = !DILocalVariable(name: "i", scope: !633, file: !75, line: 102, type: !557)
!642 = !DILocation(line: 102, column: 12, scope: !633)
!643 = !DILocation(line: 103, column: 12, scope: !644)
!644 = distinct !DILexicalBlock(scope: !633, file: !75, line: 103, column: 5)
!645 = !DILocation(line: 103, column: 10, scope: !644)
!646 = !DILocation(line: 103, column: 17, scope: !647)
!647 = distinct !DILexicalBlock(scope: !644, file: !75, line: 103, column: 5)
!648 = !DILocation(line: 103, column: 21, scope: !647)
!649 = !DILocation(line: 103, column: 19, scope: !647)
!650 = !DILocation(line: 103, column: 5, scope: !644)
!651 = !DILocation(line: 105, column: 24, scope: !652)
!652 = distinct !DILexicalBlock(scope: !647, file: !75, line: 104, column: 5)
!653 = !DILocation(line: 105, column: 30, scope: !652)
!654 = !DILocation(line: 105, column: 9, scope: !652)
!655 = !DILocation(line: 106, column: 5, scope: !652)
!656 = !DILocation(line: 103, column: 31, scope: !647)
!657 = !DILocation(line: 103, column: 5, scope: !647)
!658 = distinct !{!658, !650, !659, !381}
!659 = !DILocation(line: 106, column: 5, scope: !644)
!660 = !DILocation(line: 107, column: 5, scope: !633)
!661 = !DILocation(line: 108, column: 1, scope: !633)
!662 = distinct !DISubprogram(name: "decodeHexChars", scope: !75, file: !75, line: 113, type: !663, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!663 = !DISubroutineType(types: !664)
!664 = !{!557, !636, !557, !111}
!665 = !DILocalVariable(name: "bytes", arg: 1, scope: !662, file: !75, line: 113, type: !636)
!666 = !DILocation(line: 113, column: 39, scope: !662)
!667 = !DILocalVariable(name: "numBytes", arg: 2, scope: !662, file: !75, line: 113, type: !557)
!668 = !DILocation(line: 113, column: 53, scope: !662)
!669 = !DILocalVariable(name: "hex", arg: 3, scope: !662, file: !75, line: 113, type: !111)
!670 = !DILocation(line: 113, column: 71, scope: !662)
!671 = !DILocalVariable(name: "numWritten", scope: !662, file: !75, line: 115, type: !557)
!672 = !DILocation(line: 115, column: 12, scope: !662)
!673 = !DILocation(line: 121, column: 5, scope: !662)
!674 = !DILocation(line: 121, column: 12, scope: !662)
!675 = !DILocation(line: 121, column: 25, scope: !662)
!676 = !DILocation(line: 121, column: 23, scope: !662)
!677 = !DILocation(line: 121, column: 34, scope: !662)
!678 = !DILocation(line: 121, column: 37, scope: !662)
!679 = !DILocation(line: 121, column: 67, scope: !662)
!680 = !DILocation(line: 121, column: 70, scope: !662)
!681 = !DILocation(line: 0, scope: !662)
!682 = !DILocalVariable(name: "byte", scope: !683, file: !75, line: 123, type: !69)
!683 = distinct !DILexicalBlock(scope: !662, file: !75, line: 122, column: 5)
!684 = !DILocation(line: 123, column: 13, scope: !683)
!685 = !DILocation(line: 124, column: 17, scope: !683)
!686 = !DILocation(line: 124, column: 25, scope: !683)
!687 = !DILocation(line: 124, column: 23, scope: !683)
!688 = !DILocation(line: 124, column: 9, scope: !683)
!689 = !DILocation(line: 125, column: 45, scope: !683)
!690 = !DILocation(line: 125, column: 29, scope: !683)
!691 = !DILocation(line: 125, column: 9, scope: !683)
!692 = !DILocation(line: 125, column: 15, scope: !683)
!693 = !DILocation(line: 125, column: 27, scope: !683)
!694 = !DILocation(line: 126, column: 9, scope: !683)
!695 = distinct !{!695, !673, !696, !381}
!696 = !DILocation(line: 127, column: 5, scope: !662)
!697 = !DILocation(line: 129, column: 12, scope: !662)
!698 = !DILocation(line: 129, column: 5, scope: !662)
!699 = distinct !DISubprogram(name: "decodeHexWChars", scope: !75, file: !75, line: 135, type: !700, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!700 = !DISubroutineType(types: !701)
!701 = !{!557, !636, !557, !494}
!702 = !DILocalVariable(name: "bytes", arg: 1, scope: !699, file: !75, line: 135, type: !636)
!703 = !DILocation(line: 135, column: 41, scope: !699)
!704 = !DILocalVariable(name: "numBytes", arg: 2, scope: !699, file: !75, line: 135, type: !557)
!705 = !DILocation(line: 135, column: 55, scope: !699)
!706 = !DILocalVariable(name: "hex", arg: 3, scope: !699, file: !75, line: 135, type: !494)
!707 = !DILocation(line: 135, column: 76, scope: !699)
!708 = !DILocalVariable(name: "numWritten", scope: !699, file: !75, line: 137, type: !557)
!709 = !DILocation(line: 137, column: 12, scope: !699)
!710 = !DILocation(line: 143, column: 5, scope: !699)
!711 = !DILocation(line: 143, column: 12, scope: !699)
!712 = !DILocation(line: 143, column: 25, scope: !699)
!713 = !DILocation(line: 143, column: 23, scope: !699)
!714 = !DILocation(line: 143, column: 34, scope: !699)
!715 = !DILocation(line: 143, column: 47, scope: !699)
!716 = !DILocation(line: 143, column: 55, scope: !699)
!717 = !DILocation(line: 143, column: 53, scope: !699)
!718 = !DILocation(line: 143, column: 37, scope: !699)
!719 = !DILocation(line: 143, column: 68, scope: !699)
!720 = !DILocation(line: 143, column: 81, scope: !699)
!721 = !DILocation(line: 143, column: 89, scope: !699)
!722 = !DILocation(line: 143, column: 87, scope: !699)
!723 = !DILocation(line: 143, column: 100, scope: !699)
!724 = !DILocation(line: 143, column: 71, scope: !699)
!725 = !DILocation(line: 0, scope: !699)
!726 = !DILocalVariable(name: "byte", scope: !727, file: !75, line: 145, type: !69)
!727 = distinct !DILexicalBlock(scope: !699, file: !75, line: 144, column: 5)
!728 = !DILocation(line: 145, column: 13, scope: !727)
!729 = !DILocation(line: 146, column: 18, scope: !727)
!730 = !DILocation(line: 146, column: 26, scope: !727)
!731 = !DILocation(line: 146, column: 24, scope: !727)
!732 = !DILocation(line: 146, column: 9, scope: !727)
!733 = !DILocation(line: 147, column: 45, scope: !727)
!734 = !DILocation(line: 147, column: 29, scope: !727)
!735 = !DILocation(line: 147, column: 9, scope: !727)
!736 = !DILocation(line: 147, column: 15, scope: !727)
!737 = !DILocation(line: 147, column: 27, scope: !727)
!738 = !DILocation(line: 148, column: 9, scope: !727)
!739 = distinct !{!739, !710, !740, !381}
!740 = !DILocation(line: 149, column: 5, scope: !699)
!741 = !DILocation(line: 151, column: 12, scope: !699)
!742 = !DILocation(line: 151, column: 5, scope: !699)
!743 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !75, file: !75, line: 156, type: !744, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!744 = !DISubroutineType(types: !745)
!745 = !{!69}
!746 = !DILocation(line: 158, column: 5, scope: !743)
!747 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !75, file: !75, line: 161, type: !744, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!748 = !DILocation(line: 163, column: 5, scope: !747)
!749 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !75, file: !75, line: 166, type: !744, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!750 = !DILocation(line: 168, column: 13, scope: !749)
!751 = !DILocation(line: 168, column: 20, scope: !749)
!752 = !DILocation(line: 168, column: 5, scope: !749)
!753 = distinct !DISubprogram(name: "good1", scope: !75, file: !75, line: 187, type: !120, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!754 = !DILocation(line: 187, column: 16, scope: !753)
!755 = distinct !DISubprogram(name: "good2", scope: !75, file: !75, line: 188, type: !120, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!756 = !DILocation(line: 188, column: 16, scope: !755)
!757 = distinct !DISubprogram(name: "good3", scope: !75, file: !75, line: 189, type: !120, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!758 = !DILocation(line: 189, column: 16, scope: !757)
!759 = distinct !DISubprogram(name: "good4", scope: !75, file: !75, line: 190, type: !120, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!760 = !DILocation(line: 190, column: 16, scope: !759)
!761 = distinct !DISubprogram(name: "good5", scope: !75, file: !75, line: 191, type: !120, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!762 = !DILocation(line: 191, column: 16, scope: !761)
!763 = distinct !DISubprogram(name: "good6", scope: !75, file: !75, line: 192, type: !120, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!764 = !DILocation(line: 192, column: 16, scope: !763)
!765 = distinct !DISubprogram(name: "good7", scope: !75, file: !75, line: 193, type: !120, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!766 = !DILocation(line: 193, column: 16, scope: !765)
!767 = distinct !DISubprogram(name: "good8", scope: !75, file: !75, line: 194, type: !120, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!768 = !DILocation(line: 194, column: 16, scope: !767)
!769 = distinct !DISubprogram(name: "good9", scope: !75, file: !75, line: 195, type: !120, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!770 = !DILocation(line: 195, column: 16, scope: !769)
!771 = distinct !DISubprogram(name: "bad1", scope: !75, file: !75, line: 198, type: !120, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!772 = !DILocation(line: 198, column: 15, scope: !771)
!773 = distinct !DISubprogram(name: "bad2", scope: !75, file: !75, line: 199, type: !120, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!774 = !DILocation(line: 199, column: 15, scope: !773)
!775 = distinct !DISubprogram(name: "bad3", scope: !75, file: !75, line: 200, type: !120, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!776 = !DILocation(line: 200, column: 15, scope: !775)
!777 = distinct !DISubprogram(name: "bad4", scope: !75, file: !75, line: 201, type: !120, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!778 = !DILocation(line: 201, column: 15, scope: !777)
!779 = distinct !DISubprogram(name: "bad5", scope: !75, file: !75, line: 202, type: !120, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!780 = !DILocation(line: 202, column: 15, scope: !779)
!781 = distinct !DISubprogram(name: "bad6", scope: !75, file: !75, line: 203, type: !120, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!782 = !DILocation(line: 203, column: 15, scope: !781)
!783 = distinct !DISubprogram(name: "bad7", scope: !75, file: !75, line: 204, type: !120, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!784 = !DILocation(line: 204, column: 15, scope: !783)
!785 = distinct !DISubprogram(name: "bad8", scope: !75, file: !75, line: 205, type: !120, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!786 = !DILocation(line: 205, column: 15, scope: !785)
!787 = distinct !DISubprogram(name: "bad9", scope: !75, file: !75, line: 206, type: !120, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !114)
!788 = !DILocation(line: 206, column: 15, scope: !787)
