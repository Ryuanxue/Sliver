; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad() #0 !dbg !112 {
entry:
  %data = alloca i32, align 4
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, metadata !117, metadata !DIExpression()), !dbg !123
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
  %s_addr = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %sin_addr, i32 0, i32 0, !dbg !165
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
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !231
  store i32 %15, i32* %structFirst, align 4, !dbg !232
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !233
  %16 = load i32, i32* %coerce.dive, align 4, !dbg !233
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink(i32 %16), !dbg !233
  ret void, !dbg !234
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
define dso_local void @goodG2B() #0 !dbg !235 {
entry:
  %data = alloca i32, align 4
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, metadata !238, metadata !DIExpression()), !dbg !239
  store i32 -1, i32* %data, align 4, !dbg !240
  store i32 7, i32* %data, align 4, !dbg !241
  %0 = load i32, i32* %data, align 4, !dbg !242
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !243
  store i32 %0, i32* %structFirst, align 4, !dbg !244
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !245
  %1 = load i32, i32* %coerce.dive, align 4, !dbg !245
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_goodG2BSink(i32 %1), !dbg !245
  ret void, !dbg !246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !247 {
entry:
  %data = alloca i32, align 4
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, metadata !250, metadata !DIExpression()), !dbg !251
  store i32 -1, i32* %data, align 4, !dbg !252
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !253, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !258, metadata !DIExpression()), !dbg !259
  store i32 -1, i32* %listenSocket, align 4, !dbg !259
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !260, metadata !DIExpression()), !dbg !261
  store i32 -1, i32* %acceptSocket, align 4, !dbg !261
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !262, metadata !DIExpression()), !dbg !263
  br label %do.body, !dbg !264

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !265
  store i32 %call, i32* %listenSocket, align 4, !dbg !267
  %0 = load i32, i32* %listenSocket, align 4, !dbg !268
  %cmp = icmp eq i32 %0, -1, !dbg !270
  br i1 %cmp, label %if.then, label %if.end, !dbg !271

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !272

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !274
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !274
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !275
  store i16 2, i16* %sin_family, align 4, !dbg !276
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !277
  %s_addr = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %sin_addr, i32 0, i32 0, !dbg !278
  store i32 0, i32* %s_addr, align 4, !dbg !279
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !280
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !281
  store i16 %call1, i16* %sin_port, align 2, !dbg !282
  %2 = load i32, i32* %listenSocket, align 4, !dbg !283
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !285
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !286
  %cmp3 = icmp eq i32 %call2, -1, !dbg !287
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !288

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !289

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !291
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !293
  %cmp7 = icmp eq i32 %call6, -1, !dbg !294
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !295

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !296

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !298
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !299
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !300
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !301
  %cmp11 = icmp eq i32 %6, -1, !dbg !303
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !304

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !305

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !307
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !308
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !309
  %conv = trunc i64 %call14 to i32, !dbg !309
  store i32 %conv, i32* %recvResult, align 4, !dbg !310
  %8 = load i32, i32* %recvResult, align 4, !dbg !311
  %cmp15 = icmp eq i32 %8, -1, !dbg !313
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !314

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !315
  %cmp17 = icmp eq i32 %9, 0, !dbg !316
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !317

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !318

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !320
  %idxprom = sext i32 %10 to i64, !dbg !321
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !321
  store i8 0, i8* %arrayidx, align 1, !dbg !322
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !323
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !324
  store i32 %call22, i32* %data, align 4, !dbg !325
  br label %do.end, !dbg !326

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !327
  %cmp23 = icmp ne i32 %11, -1, !dbg !329
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !330

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !331
  %call26 = call i32 @close(i32 %12), !dbg !333
  br label %if.end27, !dbg !334

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !335
  %cmp28 = icmp ne i32 %13, -1, !dbg !337
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !338

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !339
  %call31 = call i32 @close(i32 %14), !dbg !341
  br label %if.end32, !dbg !342

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data, align 4, !dbg !343
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !344
  store i32 %15, i32* %structFirst, align 4, !dbg !345
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !346
  %16 = load i32, i32* %coerce.dive, align 4, !dbg !346
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_goodB2GSink(i32 %16), !dbg !346
  ret void, !dbg !347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_good() #0 !dbg !348 {
entry:
  call void @goodG2B(), !dbg !349
  call void @goodB2G(), !dbg !350
  ret void, !dbg !351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink(i32 %myStruct.coerce) #0 !dbg !352 {
entry:
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, align 4
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0
  store i32 %myStruct.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, metadata !359, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.declare(metadata i32* %data, metadata !361, metadata !DIExpression()), !dbg !362
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !363
  %0 = load i32, i32* %structFirst, align 4, !dbg !363
  store i32 %0, i32* %data, align 4, !dbg !362
  call void @llvm.dbg.declare(metadata i32* %i, metadata !364, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !367, metadata !DIExpression()), !dbg !371
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !371
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !371
  %2 = load i32, i32* %data, align 4, !dbg !372
  %cmp = icmp sge i32 %2, 0, !dbg !374
  br i1 %cmp, label %if.then, label %if.else, !dbg !375

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !376
  %idxprom = sext i32 %3 to i64, !dbg !378
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !378
  store i32 1, i32* %arrayidx, align 4, !dbg !379
  store i32 0, i32* %i, align 4, !dbg !380
  br label %for.cond, !dbg !382

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !383
  %cmp1 = icmp slt i32 %4, 10, !dbg !385
  br i1 %cmp1, label %for.body, label %for.end, !dbg !386

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !387
  %idxprom2 = sext i32 %5 to i64, !dbg !389
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !389
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !389
  call void @printIntLine(i32 %6), !dbg !390
  br label %for.inc, !dbg !391

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !392
  %inc = add nsw i32 %7, 1, !dbg !392
  store i32 %inc, i32* %i, align 4, !dbg !392
  br label %for.cond, !dbg !393, !llvm.loop !394

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !397

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !398
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_goodG2BSink(i32 %myStruct.coerce) #0 !dbg !401 {
entry:
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, align 4
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0
  store i32 %myStruct.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, metadata !402, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.declare(metadata i32* %data, metadata !404, metadata !DIExpression()), !dbg !405
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !406
  %0 = load i32, i32* %structFirst, align 4, !dbg !406
  store i32 %0, i32* %data, align 4, !dbg !405
  call void @llvm.dbg.declare(metadata i32* %i, metadata !407, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !410, metadata !DIExpression()), !dbg !411
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !411
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !411
  %2 = load i32, i32* %data, align 4, !dbg !412
  %cmp = icmp sge i32 %2, 0, !dbg !414
  br i1 %cmp, label %if.then, label %if.else, !dbg !415

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !416
  %idxprom = sext i32 %3 to i64, !dbg !418
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !418
  store i32 1, i32* %arrayidx, align 4, !dbg !419
  store i32 0, i32* %i, align 4, !dbg !420
  br label %for.cond, !dbg !422

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !423
  %cmp1 = icmp slt i32 %4, 10, !dbg !425
  br i1 %cmp1, label %for.body, label %for.end, !dbg !426

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !427
  %idxprom2 = sext i32 %5 to i64, !dbg !429
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !429
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !429
  call void @printIntLine(i32 %6), !dbg !430
  br label %for.inc, !dbg !431

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !432
  %inc = add nsw i32 %7, 1, !dbg !432
  store i32 %inc, i32* %i, align 4, !dbg !432
  br label %for.cond, !dbg !433, !llvm.loop !434

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !436

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !437
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_goodB2GSink(i32 %myStruct.coerce) #0 !dbg !440 {
entry:
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, align 4
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0
  store i32 %myStruct.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata i32* %data, metadata !443, metadata !DIExpression()), !dbg !444
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !445
  %0 = load i32, i32* %structFirst, align 4, !dbg !445
  store i32 %0, i32* %data, align 4, !dbg !444
  call void @llvm.dbg.declare(metadata i32* %i, metadata !446, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !449, metadata !DIExpression()), !dbg !450
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !450
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !450
  %2 = load i32, i32* %data, align 4, !dbg !451
  %cmp = icmp sge i32 %2, 0, !dbg !453
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !454

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !455
  %cmp1 = icmp slt i32 %3, 10, !dbg !456
  br i1 %cmp1, label %if.then, label %if.else, !dbg !457

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !458
  %idxprom = sext i32 %4 to i64, !dbg !460
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !460
  store i32 1, i32* %arrayidx, align 4, !dbg !461
  store i32 0, i32* %i, align 4, !dbg !462
  br label %for.cond, !dbg !464

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !465
  %cmp2 = icmp slt i32 %5, 10, !dbg !467
  br i1 %cmp2, label %for.body, label %for.end, !dbg !468

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !469
  %idxprom3 = sext i32 %6 to i64, !dbg !471
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !471
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !471
  call void @printIntLine(i32 %7), !dbg !472
  br label %for.inc, !dbg !473

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !474
  %inc = add nsw i32 %8, 1, !dbg !474
  store i32 %inc, i32* %i, align 4, !dbg !474
  br label %for.cond, !dbg !475, !llvm.loop !476

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !478

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !479
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !482 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !485, metadata !DIExpression()), !dbg !486
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !dbg !487
  %0 = load i8*, i8** %line.addr, align 8, !dbg !488
  %cmp = icmp ne i8* %0, null, !dbg !490
  br i1 %cmp, label %if.then, label %if.end, !dbg !491

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !492
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !494
  br label %if.end, !dbg !495

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !496
  ret void, !dbg !497
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !498 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load i8*, i8** %line.addr, align 8, !dbg !501
  %cmp = icmp ne i8* %0, null, !dbg !503
  br i1 %cmp, label %if.then, label %if.end, !dbg !504

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !505
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !507
  br label %if.end, !dbg !508

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !510 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !516, metadata !DIExpression()), !dbg !517
  %0 = load i32*, i32** %line.addr, align 8, !dbg !518
  %cmp = icmp ne i32* %0, null, !dbg !520
  br i1 %cmp, label %if.then, label %if.end, !dbg !521

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !522
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !524
  br label %if.end, !dbg !525

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !526
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !527 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !530, metadata !DIExpression()), !dbg !531
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !532
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !533
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !535 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !539, metadata !DIExpression()), !dbg !540
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !541
  %conv = sext i16 %0 to i32, !dbg !541
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !542
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !544 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !548, metadata !DIExpression()), !dbg !549
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !550
  %conv = fpext float %0 to double, !dbg !550
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !551
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !553 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !557, metadata !DIExpression()), !dbg !558
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !559
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !560
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !562 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !568, metadata !DIExpression()), !dbg !569
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !570
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !571
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !573 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !578, metadata !DIExpression()), !dbg !579
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !580
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !581
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !583 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !586, metadata !DIExpression()), !dbg !587
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !588
  %conv = sext i8 %0 to i32, !dbg !588
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !589
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !591 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !594, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !596, metadata !DIExpression()), !dbg !600
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !601
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !602
  store i32 %0, i32* %arrayidx, align 4, !dbg !603
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !604
  store i32 0, i32* %arrayidx1, align 4, !dbg !605
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !606
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !607
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !609 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !612, metadata !DIExpression()), !dbg !613
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !614
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !615
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !617 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !620, metadata !DIExpression()), !dbg !621
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !622
  %conv = zext i8 %0 to i32, !dbg !622
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !623
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !625 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !629, metadata !DIExpression()), !dbg !630
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !631
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !632
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !634 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !644, metadata !DIExpression()), !dbg !645
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !646
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !647
  %1 = load i32, i32* %intOne, align 4, !dbg !647
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !648
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !649
  %3 = load i32, i32* %intTwo, align 4, !dbg !649
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !650
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !652 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !656, metadata !DIExpression()), !dbg !657
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !658, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.declare(metadata i64* %i, metadata !660, metadata !DIExpression()), !dbg !661
  store i64 0, i64* %i, align 8, !dbg !662
  br label %for.cond, !dbg !664

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !665
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !667
  %cmp = icmp ult i64 %0, %1, !dbg !668
  br i1 %cmp, label %for.body, label %for.end, !dbg !669

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !670
  %3 = load i64, i64* %i, align 8, !dbg !672
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !670
  %4 = load i8, i8* %arrayidx, align 1, !dbg !670
  %conv = zext i8 %4 to i32, !dbg !670
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !673
  br label %for.inc, !dbg !674

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !675
  %inc = add i64 %5, 1, !dbg !675
  store i64 %inc, i64* %i, align 8, !dbg !675
  br label %for.cond, !dbg !676, !llvm.loop !677

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !679
  ret void, !dbg !680
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !681 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !684, metadata !DIExpression()), !dbg !685
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !686, metadata !DIExpression()), !dbg !687
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !688, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !690, metadata !DIExpression()), !dbg !691
  store i64 0, i64* %numWritten, align 8, !dbg !691
  br label %while.cond, !dbg !692

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !693
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !694
  %cmp = icmp ult i64 %0, %1, !dbg !695
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !696

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !697
  %2 = load i16*, i16** %call, align 8, !dbg !697
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !697
  %4 = load i64, i64* %numWritten, align 8, !dbg !697
  %mul = mul i64 2, %4, !dbg !697
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !697
  %5 = load i8, i8* %arrayidx, align 1, !dbg !697
  %conv = sext i8 %5 to i32, !dbg !697
  %idxprom = sext i32 %conv to i64, !dbg !697
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !697
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !697
  %conv2 = zext i16 %6 to i32, !dbg !697
  %and = and i32 %conv2, 4096, !dbg !697
  %tobool = icmp ne i32 %and, 0, !dbg !697
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !698

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !699
  %7 = load i16*, i16** %call3, align 8, !dbg !699
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !699
  %9 = load i64, i64* %numWritten, align 8, !dbg !699
  %mul4 = mul i64 2, %9, !dbg !699
  %add = add i64 %mul4, 1, !dbg !699
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !699
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !699
  %conv6 = sext i8 %10 to i32, !dbg !699
  %idxprom7 = sext i32 %conv6 to i64, !dbg !699
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !699
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !699
  %conv9 = zext i16 %11 to i32, !dbg !699
  %and10 = and i32 %conv9, 4096, !dbg !699
  %tobool11 = icmp ne i32 %and10, 0, !dbg !698
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !700
  br i1 %12, label %while.body, label %while.end, !dbg !692

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !701, metadata !DIExpression()), !dbg !703
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !704
  %14 = load i64, i64* %numWritten, align 8, !dbg !705
  %mul12 = mul i64 2, %14, !dbg !706
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !704
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !707
  %15 = load i32, i32* %byte, align 4, !dbg !708
  %conv15 = trunc i32 %15 to i8, !dbg !709
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !710
  %17 = load i64, i64* %numWritten, align 8, !dbg !711
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !710
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !712
  %18 = load i64, i64* %numWritten, align 8, !dbg !713
  %inc = add i64 %18, 1, !dbg !713
  store i64 %inc, i64* %numWritten, align 8, !dbg !713
  br label %while.cond, !dbg !692, !llvm.loop !714

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !716
  ret i64 %19, !dbg !717
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !718 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !721, metadata !DIExpression()), !dbg !722
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !723, metadata !DIExpression()), !dbg !724
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !725, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !727, metadata !DIExpression()), !dbg !728
  store i64 0, i64* %numWritten, align 8, !dbg !728
  br label %while.cond, !dbg !729

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !730
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !731
  %cmp = icmp ult i64 %0, %1, !dbg !732
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !733

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !734
  %3 = load i64, i64* %numWritten, align 8, !dbg !735
  %mul = mul i64 2, %3, !dbg !736
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !734
  %4 = load i32, i32* %arrayidx, align 4, !dbg !734
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !737
  %tobool = icmp ne i32 %call, 0, !dbg !737
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !738

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !739
  %6 = load i64, i64* %numWritten, align 8, !dbg !740
  %mul1 = mul i64 2, %6, !dbg !741
  %add = add i64 %mul1, 1, !dbg !742
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !739
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !739
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !743
  %tobool4 = icmp ne i32 %call3, 0, !dbg !738
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !744
  br i1 %8, label %while.body, label %while.end, !dbg !729

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !745, metadata !DIExpression()), !dbg !747
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !748
  %10 = load i64, i64* %numWritten, align 8, !dbg !749
  %mul5 = mul i64 2, %10, !dbg !750
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !748
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !751
  %11 = load i32, i32* %byte, align 4, !dbg !752
  %conv = trunc i32 %11 to i8, !dbg !753
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !754
  %13 = load i64, i64* %numWritten, align 8, !dbg !755
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !754
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !756
  %14 = load i64, i64* %numWritten, align 8, !dbg !757
  %inc = add i64 %14, 1, !dbg !757
  store i64 %inc, i64* %numWritten, align 8, !dbg !757
  br label %while.cond, !dbg !729, !llvm.loop !758

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !760
  ret i64 %15, !dbg !761
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !762 {
entry:
  ret i32 1, !dbg !765
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !766 {
entry:
  ret i32 0, !dbg !767
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !768 {
entry:
  %call = call i32 @rand() #7, !dbg !769
  %rem = srem i32 %call, 2, !dbg !770
  ret i32 %rem, !dbg !771
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !772 {
entry:
  ret void, !dbg !773
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !774 {
entry:
  ret void, !dbg !775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !776 {
entry:
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !778 {
entry:
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !780 {
entry:
  ret void, !dbg !781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !782 {
entry:
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !784 {
entry:
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !786 {
entry:
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !788 {
entry:
  ret void, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !790 {
entry:
  ret void, !dbg !791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !792 {
entry:
  ret void, !dbg !793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !794 {
entry:
  ret void, !dbg !795
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !796 {
entry:
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !798 {
entry:
  ret void, !dbg !799
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !800 {
entry:
  ret void, !dbg !801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !802 {
entry:
  ret void, !dbg !803
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !804 {
entry:
  ret void, !dbg !805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !806 {
entry:
  ret void, !dbg !807
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

!llvm.dbg.cu = !{!44, !105, !2}
!llvm.ident = !{!108, !108, !108}
!llvm.module.flags = !{!109, !110, !111}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_747/source_code")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!10 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!14 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!21 = !{!22, !23, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!0, !27, !29, !31, !33, !35, !37, !39}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !2, file: !3, line: 175, type: !23, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !2, file: !3, line: 176, type: !23, isLocal: false, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "globalTrue", scope: !2, file: !3, line: 181, type: !23, isLocal: false, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "globalFalse", scope: !2, file: !3, line: 182, type: !23, isLocal: false, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "globalFive", scope: !2, file: !3, line: 183, type: !23, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "globalArgc", scope: !2, file: !3, line: 214, type: !23, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "globalArgv", scope: !2, file: !3, line: 215, type: !41, isLocal: false, isDefinition: true)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !88, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_747/source_code")
!46 = !{!47, !59}
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !48, line: 24, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58}
!50 = !DIEnumerator(name: "SOCK_STREAM", value: 1, isUnsigned: true)
!51 = !DIEnumerator(name: "SOCK_DGRAM", value: 2, isUnsigned: true)
!52 = !DIEnumerator(name: "SOCK_RAW", value: 3, isUnsigned: true)
!53 = !DIEnumerator(name: "SOCK_RDM", value: 4, isUnsigned: true)
!54 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5, isUnsigned: true)
!55 = !DIEnumerator(name: "SOCK_DCCP", value: 6, isUnsigned: true)
!56 = !DIEnumerator(name: "SOCK_PACKET", value: 10, isUnsigned: true)
!57 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288, isUnsigned: true)
!58 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !60, line: 40, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!62 = !DIEnumerator(name: "IPPROTO_IP", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4, isUnsigned: true)
!66 = !DIEnumerator(name: "IPPROTO_TCP", value: 6, isUnsigned: true)
!67 = !DIEnumerator(name: "IPPROTO_EGP", value: 8, isUnsigned: true)
!68 = !DIEnumerator(name: "IPPROTO_PUP", value: 12, isUnsigned: true)
!69 = !DIEnumerator(name: "IPPROTO_UDP", value: 17, isUnsigned: true)
!70 = !DIEnumerator(name: "IPPROTO_IDP", value: 22, isUnsigned: true)
!71 = !DIEnumerator(name: "IPPROTO_TP", value: 29, isUnsigned: true)
!72 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33, isUnsigned: true)
!73 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41, isUnsigned: true)
!74 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46, isUnsigned: true)
!75 = !DIEnumerator(name: "IPPROTO_GRE", value: 47, isUnsigned: true)
!76 = !DIEnumerator(name: "IPPROTO_ESP", value: 50, isUnsigned: true)
!77 = !DIEnumerator(name: "IPPROTO_AH", value: 51, isUnsigned: true)
!78 = !DIEnumerator(name: "IPPROTO_MTP", value: 92, isUnsigned: true)
!79 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94, isUnsigned: true)
!80 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98, isUnsigned: true)
!81 = !DIEnumerator(name: "IPPROTO_PIM", value: 103, isUnsigned: true)
!82 = !DIEnumerator(name: "IPPROTO_COMP", value: 108, isUnsigned: true)
!83 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132, isUnsigned: true)
!84 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136, isUnsigned: true)
!85 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137, isUnsigned: true)
!86 = !DIEnumerator(name: "IPPROTO_RAW", value: 255, isUnsigned: true)
!87 = !DIEnumerator(name: "IPPROTO_MAX", value: 256, isUnsigned: true)
!88 = !{!89, !94}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !91, line: 26, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !93, line: 42, baseType: !7)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !96, line: 178, size: 128, elements: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!97 = !{!98, !101}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !95, file: !96, line: 180, baseType: !99, size: 16)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !100, line: 28, baseType: !24)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !95, file: !96, line: 181, baseType: !102, size: 112, offset: 16)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 14)
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_747/source_code")
!107 = !{}
!108 = !{!"clang version 12.0.0"}
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad", scope: !45, file: !45, line: 48, type: !113, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!113 = !DISubroutineType(types: !114)
!114 = !{null}
!115 = !DILocalVariable(name: "data", scope: !112, file: !45, line: 50, type: !23)
!116 = !DILocation(line: 50, column: 9, scope: !112)
!117 = !DILocalVariable(name: "myStruct", scope: !112, file: !45, line: 51, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType", file: !119, line: 8, baseType: !120)
!119 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_747/source_code")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType", file: !119, line: 5, size: 32, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !120, file: !119, line: 7, baseType: !23, size: 32)
!123 = !DILocation(line: 51, column: 76, scope: !112)
!124 = !DILocation(line: 53, column: 10, scope: !112)
!125 = !DILocalVariable(name: "recvResult", scope: !126, file: !45, line: 59, type: !23)
!126 = distinct !DILexicalBlock(scope: !112, file: !45, line: 54, column: 5)
!127 = !DILocation(line: 59, column: 13, scope: !126)
!128 = !DILocalVariable(name: "service", scope: !126, file: !45, line: 60, type: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !130)
!130 = !{!131, !132, !136, !140}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !129, file: !60, line: 240, baseType: !99, size: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !129, file: !60, line: 241, baseType: !133, size: 16, offset: 16)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !24)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !129, file: !60, line: 242, baseType: !137, size: 32, offset: 32)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !137, file: !60, line: 33, baseType: !89, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !129, file: !60, line: 245, baseType: !141, size: 64, offset: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 8)
!144 = !DILocation(line: 60, column: 28, scope: !126)
!145 = !DILocalVariable(name: "listenSocket", scope: !126, file: !45, line: 61, type: !23)
!146 = !DILocation(line: 61, column: 16, scope: !126)
!147 = !DILocalVariable(name: "acceptSocket", scope: !126, file: !45, line: 62, type: !23)
!148 = !DILocation(line: 62, column: 16, scope: !126)
!149 = !DILocalVariable(name: "inputBuffer", scope: !126, file: !45, line: 63, type: !102)
!150 = !DILocation(line: 63, column: 14, scope: !126)
!151 = !DILocation(line: 64, column: 9, scope: !126)
!152 = !DILocation(line: 74, column: 28, scope: !153)
!153 = distinct !DILexicalBlock(scope: !126, file: !45, line: 65, column: 9)
!154 = !DILocation(line: 74, column: 26, scope: !153)
!155 = !DILocation(line: 75, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !45, line: 75, column: 17)
!157 = !DILocation(line: 75, column: 30, scope: !156)
!158 = !DILocation(line: 75, column: 17, scope: !153)
!159 = !DILocation(line: 77, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !45, line: 76, column: 13)
!161 = !DILocation(line: 79, column: 13, scope: !153)
!162 = !DILocation(line: 80, column: 21, scope: !153)
!163 = !DILocation(line: 80, column: 32, scope: !153)
!164 = !DILocation(line: 81, column: 21, scope: !153)
!165 = !DILocation(line: 81, column: 30, scope: !153)
!166 = !DILocation(line: 81, column: 37, scope: !153)
!167 = !DILocation(line: 82, column: 32, scope: !153)
!168 = !DILocation(line: 82, column: 21, scope: !153)
!169 = !DILocation(line: 82, column: 30, scope: !153)
!170 = !DILocation(line: 83, column: 22, scope: !171)
!171 = distinct !DILexicalBlock(scope: !153, file: !45, line: 83, column: 17)
!172 = !DILocation(line: 83, column: 36, scope: !171)
!173 = !DILocation(line: 83, column: 17, scope: !171)
!174 = !DILocation(line: 83, column: 81, scope: !171)
!175 = !DILocation(line: 83, column: 17, scope: !153)
!176 = !DILocation(line: 85, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !171, file: !45, line: 84, column: 13)
!178 = !DILocation(line: 87, column: 24, scope: !179)
!179 = distinct !DILexicalBlock(scope: !153, file: !45, line: 87, column: 17)
!180 = !DILocation(line: 87, column: 17, scope: !179)
!181 = !DILocation(line: 87, column: 54, scope: !179)
!182 = !DILocation(line: 87, column: 17, scope: !153)
!183 = !DILocation(line: 89, column: 17, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !45, line: 88, column: 13)
!185 = !DILocation(line: 91, column: 35, scope: !153)
!186 = !DILocation(line: 91, column: 28, scope: !153)
!187 = !DILocation(line: 91, column: 26, scope: !153)
!188 = !DILocation(line: 92, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !153, file: !45, line: 92, column: 17)
!190 = !DILocation(line: 92, column: 30, scope: !189)
!191 = !DILocation(line: 92, column: 17, scope: !153)
!192 = !DILocation(line: 94, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !45, line: 93, column: 13)
!194 = !DILocation(line: 97, column: 31, scope: !153)
!195 = !DILocation(line: 97, column: 45, scope: !153)
!196 = !DILocation(line: 97, column: 26, scope: !153)
!197 = !DILocation(line: 97, column: 24, scope: !153)
!198 = !DILocation(line: 98, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !153, file: !45, line: 98, column: 17)
!200 = !DILocation(line: 98, column: 28, scope: !199)
!201 = !DILocation(line: 98, column: 44, scope: !199)
!202 = !DILocation(line: 98, column: 47, scope: !199)
!203 = !DILocation(line: 98, column: 58, scope: !199)
!204 = !DILocation(line: 98, column: 17, scope: !153)
!205 = !DILocation(line: 100, column: 17, scope: !206)
!206 = distinct !DILexicalBlock(scope: !199, file: !45, line: 99, column: 13)
!207 = !DILocation(line: 103, column: 25, scope: !153)
!208 = !DILocation(line: 103, column: 13, scope: !153)
!209 = !DILocation(line: 103, column: 37, scope: !153)
!210 = !DILocation(line: 105, column: 25, scope: !153)
!211 = !DILocation(line: 105, column: 20, scope: !153)
!212 = !DILocation(line: 105, column: 18, scope: !153)
!213 = !DILocation(line: 106, column: 9, scope: !153)
!214 = !DILocation(line: 108, column: 13, scope: !215)
!215 = distinct !DILexicalBlock(scope: !126, file: !45, line: 108, column: 13)
!216 = !DILocation(line: 108, column: 26, scope: !215)
!217 = !DILocation(line: 108, column: 13, scope: !126)
!218 = !DILocation(line: 110, column: 26, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !45, line: 109, column: 9)
!220 = !DILocation(line: 110, column: 13, scope: !219)
!221 = !DILocation(line: 111, column: 9, scope: !219)
!222 = !DILocation(line: 112, column: 13, scope: !223)
!223 = distinct !DILexicalBlock(scope: !126, file: !45, line: 112, column: 13)
!224 = !DILocation(line: 112, column: 26, scope: !223)
!225 = !DILocation(line: 112, column: 13, scope: !126)
!226 = !DILocation(line: 114, column: 26, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !45, line: 113, column: 9)
!228 = !DILocation(line: 114, column: 13, scope: !227)
!229 = !DILocation(line: 115, column: 9, scope: !227)
!230 = !DILocation(line: 123, column: 28, scope: !112)
!231 = !DILocation(line: 123, column: 14, scope: !112)
!232 = !DILocation(line: 123, column: 26, scope: !112)
!233 = !DILocation(line: 124, column: 5, scope: !112)
!234 = !DILocation(line: 125, column: 1, scope: !112)
!235 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 133, type: !113, scopeLine: 134, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!236 = !DILocalVariable(name: "data", scope: !235, file: !45, line: 135, type: !23)
!237 = !DILocation(line: 135, column: 9, scope: !235)
!238 = !DILocalVariable(name: "myStruct", scope: !235, file: !45, line: 136, type: !118)
!239 = !DILocation(line: 136, column: 76, scope: !235)
!240 = !DILocation(line: 138, column: 10, scope: !235)
!241 = !DILocation(line: 141, column: 10, scope: !235)
!242 = !DILocation(line: 142, column: 28, scope: !235)
!243 = !DILocation(line: 142, column: 14, scope: !235)
!244 = !DILocation(line: 142, column: 26, scope: !235)
!245 = !DILocation(line: 143, column: 5, scope: !235)
!246 = !DILocation(line: 144, column: 1, scope: !235)
!247 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 148, type: !113, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!248 = !DILocalVariable(name: "data", scope: !247, file: !45, line: 150, type: !23)
!249 = !DILocation(line: 150, column: 9, scope: !247)
!250 = !DILocalVariable(name: "myStruct", scope: !247, file: !45, line: 151, type: !118)
!251 = !DILocation(line: 151, column: 76, scope: !247)
!252 = !DILocation(line: 153, column: 10, scope: !247)
!253 = !DILocalVariable(name: "recvResult", scope: !254, file: !45, line: 159, type: !23)
!254 = distinct !DILexicalBlock(scope: !247, file: !45, line: 154, column: 5)
!255 = !DILocation(line: 159, column: 13, scope: !254)
!256 = !DILocalVariable(name: "service", scope: !254, file: !45, line: 160, type: !129)
!257 = !DILocation(line: 160, column: 28, scope: !254)
!258 = !DILocalVariable(name: "listenSocket", scope: !254, file: !45, line: 161, type: !23)
!259 = !DILocation(line: 161, column: 16, scope: !254)
!260 = !DILocalVariable(name: "acceptSocket", scope: !254, file: !45, line: 162, type: !23)
!261 = !DILocation(line: 162, column: 16, scope: !254)
!262 = !DILocalVariable(name: "inputBuffer", scope: !254, file: !45, line: 163, type: !102)
!263 = !DILocation(line: 163, column: 14, scope: !254)
!264 = !DILocation(line: 164, column: 9, scope: !254)
!265 = !DILocation(line: 174, column: 28, scope: !266)
!266 = distinct !DILexicalBlock(scope: !254, file: !45, line: 165, column: 9)
!267 = !DILocation(line: 174, column: 26, scope: !266)
!268 = !DILocation(line: 175, column: 17, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !45, line: 175, column: 17)
!270 = !DILocation(line: 175, column: 30, scope: !269)
!271 = !DILocation(line: 175, column: 17, scope: !266)
!272 = !DILocation(line: 177, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !45, line: 176, column: 13)
!274 = !DILocation(line: 179, column: 13, scope: !266)
!275 = !DILocation(line: 180, column: 21, scope: !266)
!276 = !DILocation(line: 180, column: 32, scope: !266)
!277 = !DILocation(line: 181, column: 21, scope: !266)
!278 = !DILocation(line: 181, column: 30, scope: !266)
!279 = !DILocation(line: 181, column: 37, scope: !266)
!280 = !DILocation(line: 182, column: 32, scope: !266)
!281 = !DILocation(line: 182, column: 21, scope: !266)
!282 = !DILocation(line: 182, column: 30, scope: !266)
!283 = !DILocation(line: 183, column: 22, scope: !284)
!284 = distinct !DILexicalBlock(scope: !266, file: !45, line: 183, column: 17)
!285 = !DILocation(line: 183, column: 36, scope: !284)
!286 = !DILocation(line: 183, column: 17, scope: !284)
!287 = !DILocation(line: 183, column: 81, scope: !284)
!288 = !DILocation(line: 183, column: 17, scope: !266)
!289 = !DILocation(line: 185, column: 17, scope: !290)
!290 = distinct !DILexicalBlock(scope: !284, file: !45, line: 184, column: 13)
!291 = !DILocation(line: 187, column: 24, scope: !292)
!292 = distinct !DILexicalBlock(scope: !266, file: !45, line: 187, column: 17)
!293 = !DILocation(line: 187, column: 17, scope: !292)
!294 = !DILocation(line: 187, column: 54, scope: !292)
!295 = !DILocation(line: 187, column: 17, scope: !266)
!296 = !DILocation(line: 189, column: 17, scope: !297)
!297 = distinct !DILexicalBlock(scope: !292, file: !45, line: 188, column: 13)
!298 = !DILocation(line: 191, column: 35, scope: !266)
!299 = !DILocation(line: 191, column: 28, scope: !266)
!300 = !DILocation(line: 191, column: 26, scope: !266)
!301 = !DILocation(line: 192, column: 17, scope: !302)
!302 = distinct !DILexicalBlock(scope: !266, file: !45, line: 192, column: 17)
!303 = !DILocation(line: 192, column: 30, scope: !302)
!304 = !DILocation(line: 192, column: 17, scope: !266)
!305 = !DILocation(line: 194, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !45, line: 193, column: 13)
!307 = !DILocation(line: 197, column: 31, scope: !266)
!308 = !DILocation(line: 197, column: 45, scope: !266)
!309 = !DILocation(line: 197, column: 26, scope: !266)
!310 = !DILocation(line: 197, column: 24, scope: !266)
!311 = !DILocation(line: 198, column: 17, scope: !312)
!312 = distinct !DILexicalBlock(scope: !266, file: !45, line: 198, column: 17)
!313 = !DILocation(line: 198, column: 28, scope: !312)
!314 = !DILocation(line: 198, column: 44, scope: !312)
!315 = !DILocation(line: 198, column: 47, scope: !312)
!316 = !DILocation(line: 198, column: 58, scope: !312)
!317 = !DILocation(line: 198, column: 17, scope: !266)
!318 = !DILocation(line: 200, column: 17, scope: !319)
!319 = distinct !DILexicalBlock(scope: !312, file: !45, line: 199, column: 13)
!320 = !DILocation(line: 203, column: 25, scope: !266)
!321 = !DILocation(line: 203, column: 13, scope: !266)
!322 = !DILocation(line: 203, column: 37, scope: !266)
!323 = !DILocation(line: 205, column: 25, scope: !266)
!324 = !DILocation(line: 205, column: 20, scope: !266)
!325 = !DILocation(line: 205, column: 18, scope: !266)
!326 = !DILocation(line: 206, column: 9, scope: !266)
!327 = !DILocation(line: 208, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !254, file: !45, line: 208, column: 13)
!329 = !DILocation(line: 208, column: 26, scope: !328)
!330 = !DILocation(line: 208, column: 13, scope: !254)
!331 = !DILocation(line: 210, column: 26, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !45, line: 209, column: 9)
!333 = !DILocation(line: 210, column: 13, scope: !332)
!334 = !DILocation(line: 211, column: 9, scope: !332)
!335 = !DILocation(line: 212, column: 13, scope: !336)
!336 = distinct !DILexicalBlock(scope: !254, file: !45, line: 212, column: 13)
!337 = !DILocation(line: 212, column: 26, scope: !336)
!338 = !DILocation(line: 212, column: 13, scope: !254)
!339 = !DILocation(line: 214, column: 26, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !45, line: 213, column: 9)
!341 = !DILocation(line: 214, column: 13, scope: !340)
!342 = !DILocation(line: 215, column: 9, scope: !340)
!343 = !DILocation(line: 223, column: 28, scope: !247)
!344 = !DILocation(line: 223, column: 14, scope: !247)
!345 = !DILocation(line: 223, column: 26, scope: !247)
!346 = !DILocation(line: 224, column: 5, scope: !247)
!347 = !DILocation(line: 225, column: 1, scope: !247)
!348 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_good", scope: !45, file: !45, line: 227, type: !113, scopeLine: 228, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!349 = !DILocation(line: 229, column: 5, scope: !348)
!350 = !DILocation(line: 230, column: 5, scope: !348)
!351 = !DILocation(line: 231, column: 1, scope: !348)
!352 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink", scope: !106, file: !106, line: 49, type: !353, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !355}
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType", file: !106, line: 45, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType", file: !106, line: 42, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !356, file: !106, line: 44, baseType: !23, size: 32)
!359 = !DILocalVariable(name: "myStruct", arg: 1, scope: !352, file: !106, line: 49, type: !355)
!360 = !DILocation(line: 49, column: 146, scope: !352)
!361 = !DILocalVariable(name: "data", scope: !352, file: !106, line: 51, type: !23)
!362 = !DILocation(line: 51, column: 9, scope: !352)
!363 = !DILocation(line: 51, column: 25, scope: !352)
!364 = !DILocalVariable(name: "i", scope: !365, file: !106, line: 53, type: !23)
!365 = distinct !DILexicalBlock(scope: !352, file: !106, line: 52, column: 5)
!366 = !DILocation(line: 53, column: 13, scope: !365)
!367 = !DILocalVariable(name: "buffer", scope: !365, file: !106, line: 54, type: !368)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 10)
!371 = !DILocation(line: 54, column: 13, scope: !365)
!372 = !DILocation(line: 57, column: 13, scope: !373)
!373 = distinct !DILexicalBlock(scope: !365, file: !106, line: 57, column: 13)
!374 = !DILocation(line: 57, column: 18, scope: !373)
!375 = !DILocation(line: 57, column: 13, scope: !365)
!376 = !DILocation(line: 59, column: 20, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !106, line: 58, column: 9)
!378 = !DILocation(line: 59, column: 13, scope: !377)
!379 = !DILocation(line: 59, column: 26, scope: !377)
!380 = !DILocation(line: 61, column: 19, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !106, line: 61, column: 13)
!382 = !DILocation(line: 61, column: 17, scope: !381)
!383 = !DILocation(line: 61, column: 24, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !106, line: 61, column: 13)
!385 = !DILocation(line: 61, column: 26, scope: !384)
!386 = !DILocation(line: 61, column: 13, scope: !381)
!387 = !DILocation(line: 63, column: 37, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !106, line: 62, column: 13)
!389 = !DILocation(line: 63, column: 30, scope: !388)
!390 = !DILocation(line: 63, column: 17, scope: !388)
!391 = !DILocation(line: 64, column: 13, scope: !388)
!392 = !DILocation(line: 61, column: 33, scope: !384)
!393 = !DILocation(line: 61, column: 13, scope: !384)
!394 = distinct !{!394, !386, !395, !396}
!395 = !DILocation(line: 64, column: 13, scope: !381)
!396 = !{!"llvm.loop.mustprogress"}
!397 = !DILocation(line: 65, column: 9, scope: !377)
!398 = !DILocation(line: 68, column: 13, scope: !399)
!399 = distinct !DILexicalBlock(scope: !373, file: !106, line: 67, column: 9)
!400 = !DILocation(line: 71, column: 1, scope: !352)
!401 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_goodG2BSink", scope: !106, file: !106, line: 78, type: !353, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!402 = !DILocalVariable(name: "myStruct", arg: 1, scope: !401, file: !106, line: 78, type: !355)
!403 = !DILocation(line: 78, column: 150, scope: !401)
!404 = !DILocalVariable(name: "data", scope: !401, file: !106, line: 80, type: !23)
!405 = !DILocation(line: 80, column: 9, scope: !401)
!406 = !DILocation(line: 80, column: 25, scope: !401)
!407 = !DILocalVariable(name: "i", scope: !408, file: !106, line: 82, type: !23)
!408 = distinct !DILexicalBlock(scope: !401, file: !106, line: 81, column: 5)
!409 = !DILocation(line: 82, column: 13, scope: !408)
!410 = !DILocalVariable(name: "buffer", scope: !408, file: !106, line: 83, type: !368)
!411 = !DILocation(line: 83, column: 13, scope: !408)
!412 = !DILocation(line: 86, column: 13, scope: !413)
!413 = distinct !DILexicalBlock(scope: !408, file: !106, line: 86, column: 13)
!414 = !DILocation(line: 86, column: 18, scope: !413)
!415 = !DILocation(line: 86, column: 13, scope: !408)
!416 = !DILocation(line: 88, column: 20, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !106, line: 87, column: 9)
!418 = !DILocation(line: 88, column: 13, scope: !417)
!419 = !DILocation(line: 88, column: 26, scope: !417)
!420 = !DILocation(line: 90, column: 19, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !106, line: 90, column: 13)
!422 = !DILocation(line: 90, column: 17, scope: !421)
!423 = !DILocation(line: 90, column: 24, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !106, line: 90, column: 13)
!425 = !DILocation(line: 90, column: 26, scope: !424)
!426 = !DILocation(line: 90, column: 13, scope: !421)
!427 = !DILocation(line: 92, column: 37, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !106, line: 91, column: 13)
!429 = !DILocation(line: 92, column: 30, scope: !428)
!430 = !DILocation(line: 92, column: 17, scope: !428)
!431 = !DILocation(line: 93, column: 13, scope: !428)
!432 = !DILocation(line: 90, column: 33, scope: !424)
!433 = !DILocation(line: 90, column: 13, scope: !424)
!434 = distinct !{!434, !426, !435, !396}
!435 = !DILocation(line: 93, column: 13, scope: !421)
!436 = !DILocation(line: 94, column: 9, scope: !417)
!437 = !DILocation(line: 97, column: 13, scope: !438)
!438 = distinct !DILexicalBlock(scope: !413, file: !106, line: 96, column: 9)
!439 = !DILocation(line: 100, column: 1, scope: !401)
!440 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_goodB2GSink", scope: !106, file: !106, line: 103, type: !353, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!441 = !DILocalVariable(name: "myStruct", arg: 1, scope: !440, file: !106, line: 103, type: !355)
!442 = !DILocation(line: 103, column: 150, scope: !440)
!443 = !DILocalVariable(name: "data", scope: !440, file: !106, line: 105, type: !23)
!444 = !DILocation(line: 105, column: 9, scope: !440)
!445 = !DILocation(line: 105, column: 25, scope: !440)
!446 = !DILocalVariable(name: "i", scope: !447, file: !106, line: 107, type: !23)
!447 = distinct !DILexicalBlock(scope: !440, file: !106, line: 106, column: 5)
!448 = !DILocation(line: 107, column: 13, scope: !447)
!449 = !DILocalVariable(name: "buffer", scope: !447, file: !106, line: 108, type: !368)
!450 = !DILocation(line: 108, column: 13, scope: !447)
!451 = !DILocation(line: 110, column: 13, scope: !452)
!452 = distinct !DILexicalBlock(scope: !447, file: !106, line: 110, column: 13)
!453 = !DILocation(line: 110, column: 18, scope: !452)
!454 = !DILocation(line: 110, column: 23, scope: !452)
!455 = !DILocation(line: 110, column: 26, scope: !452)
!456 = !DILocation(line: 110, column: 31, scope: !452)
!457 = !DILocation(line: 110, column: 13, scope: !447)
!458 = !DILocation(line: 112, column: 20, scope: !459)
!459 = distinct !DILexicalBlock(scope: !452, file: !106, line: 111, column: 9)
!460 = !DILocation(line: 112, column: 13, scope: !459)
!461 = !DILocation(line: 112, column: 26, scope: !459)
!462 = !DILocation(line: 114, column: 19, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !106, line: 114, column: 13)
!464 = !DILocation(line: 114, column: 17, scope: !463)
!465 = !DILocation(line: 114, column: 24, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !106, line: 114, column: 13)
!467 = !DILocation(line: 114, column: 26, scope: !466)
!468 = !DILocation(line: 114, column: 13, scope: !463)
!469 = !DILocation(line: 116, column: 37, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !106, line: 115, column: 13)
!471 = !DILocation(line: 116, column: 30, scope: !470)
!472 = !DILocation(line: 116, column: 17, scope: !470)
!473 = !DILocation(line: 117, column: 13, scope: !470)
!474 = !DILocation(line: 114, column: 33, scope: !466)
!475 = !DILocation(line: 114, column: 13, scope: !466)
!476 = distinct !{!476, !468, !477, !396}
!477 = !DILocation(line: 117, column: 13, scope: !463)
!478 = !DILocation(line: 118, column: 9, scope: !459)
!479 = !DILocation(line: 121, column: 13, scope: !480)
!480 = distinct !DILexicalBlock(scope: !452, file: !106, line: 120, column: 9)
!481 = !DILocation(line: 124, column: 1, scope: !440)
!482 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !483, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !42}
!485 = !DILocalVariable(name: "line", arg: 1, scope: !482, file: !3, line: 11, type: !42)
!486 = !DILocation(line: 11, column: 25, scope: !482)
!487 = !DILocation(line: 13, column: 1, scope: !482)
!488 = !DILocation(line: 14, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !482, file: !3, line: 14, column: 8)
!490 = !DILocation(line: 14, column: 13, scope: !489)
!491 = !DILocation(line: 14, column: 8, scope: !482)
!492 = !DILocation(line: 16, column: 24, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !3, line: 15, column: 5)
!494 = !DILocation(line: 16, column: 9, scope: !493)
!495 = !DILocation(line: 17, column: 5, scope: !493)
!496 = !DILocation(line: 18, column: 5, scope: !482)
!497 = !DILocation(line: 19, column: 1, scope: !482)
!498 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !483, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!499 = !DILocalVariable(name: "line", arg: 1, scope: !498, file: !3, line: 20, type: !42)
!500 = !DILocation(line: 20, column: 29, scope: !498)
!501 = !DILocation(line: 22, column: 8, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !3, line: 22, column: 8)
!503 = !DILocation(line: 22, column: 13, scope: !502)
!504 = !DILocation(line: 22, column: 8, scope: !498)
!505 = !DILocation(line: 24, column: 24, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !3, line: 23, column: 5)
!507 = !DILocation(line: 24, column: 9, scope: !506)
!508 = !DILocation(line: 25, column: 5, scope: !506)
!509 = !DILocation(line: 26, column: 1, scope: !498)
!510 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !511, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !515, line: 74, baseType: !23)
!515 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!516 = !DILocalVariable(name: "line", arg: 1, scope: !510, file: !3, line: 27, type: !513)
!517 = !DILocation(line: 27, column: 29, scope: !510)
!518 = !DILocation(line: 29, column: 8, scope: !519)
!519 = distinct !DILexicalBlock(scope: !510, file: !3, line: 29, column: 8)
!520 = !DILocation(line: 29, column: 13, scope: !519)
!521 = !DILocation(line: 29, column: 8, scope: !510)
!522 = !DILocation(line: 31, column: 27, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !3, line: 30, column: 5)
!524 = !DILocation(line: 31, column: 9, scope: !523)
!525 = !DILocation(line: 32, column: 5, scope: !523)
!526 = !DILocation(line: 33, column: 1, scope: !510)
!527 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !528, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !23}
!530 = !DILocalVariable(name: "intNumber", arg: 1, scope: !527, file: !3, line: 35, type: !23)
!531 = !DILocation(line: 35, column: 24, scope: !527)
!532 = !DILocation(line: 37, column: 20, scope: !527)
!533 = !DILocation(line: 37, column: 5, scope: !527)
!534 = !DILocation(line: 38, column: 1, scope: !527)
!535 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !536, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !538}
!538 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!539 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !535, file: !3, line: 40, type: !538)
!540 = !DILocation(line: 40, column: 28, scope: !535)
!541 = !DILocation(line: 42, column: 21, scope: !535)
!542 = !DILocation(line: 42, column: 5, scope: !535)
!543 = !DILocation(line: 43, column: 1, scope: !535)
!544 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !545, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !547}
!547 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!548 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !544, file: !3, line: 45, type: !547)
!549 = !DILocation(line: 45, column: 28, scope: !544)
!550 = !DILocation(line: 47, column: 20, scope: !544)
!551 = !DILocation(line: 47, column: 5, scope: !544)
!552 = !DILocation(line: 48, column: 1, scope: !544)
!553 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !554, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556}
!556 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!557 = !DILocalVariable(name: "longNumber", arg: 1, scope: !553, file: !3, line: 50, type: !556)
!558 = !DILocation(line: 50, column: 26, scope: !553)
!559 = !DILocation(line: 52, column: 21, scope: !553)
!560 = !DILocation(line: 52, column: 5, scope: !553)
!561 = !DILocation(line: 53, column: 1, scope: !553)
!562 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !563, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !565}
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !566, line: 27, baseType: !567)
!566 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !556)
!568 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !562, file: !3, line: 55, type: !565)
!569 = !DILocation(line: 55, column: 33, scope: !562)
!570 = !DILocation(line: 57, column: 29, scope: !562)
!571 = !DILocation(line: 57, column: 5, scope: !562)
!572 = !DILocation(line: 58, column: 1, scope: !562)
!573 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !574, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !576}
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !515, line: 46, baseType: !577)
!577 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!578 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !573, file: !3, line: 60, type: !576)
!579 = !DILocation(line: 60, column: 29, scope: !573)
!580 = !DILocation(line: 62, column: 21, scope: !573)
!581 = !DILocation(line: 62, column: 5, scope: !573)
!582 = !DILocation(line: 63, column: 1, scope: !573)
!583 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !584, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !43}
!586 = !DILocalVariable(name: "charHex", arg: 1, scope: !583, file: !3, line: 65, type: !43)
!587 = !DILocation(line: 65, column: 29, scope: !583)
!588 = !DILocation(line: 67, column: 22, scope: !583)
!589 = !DILocation(line: 67, column: 5, scope: !583)
!590 = !DILocation(line: 68, column: 1, scope: !583)
!591 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !592, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !514}
!594 = !DILocalVariable(name: "wideChar", arg: 1, scope: !591, file: !3, line: 70, type: !514)
!595 = !DILocation(line: 70, column: 29, scope: !591)
!596 = !DILocalVariable(name: "s", scope: !591, file: !3, line: 74, type: !597)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 64, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 2)
!600 = !DILocation(line: 74, column: 13, scope: !591)
!601 = !DILocation(line: 75, column: 16, scope: !591)
!602 = !DILocation(line: 75, column: 9, scope: !591)
!603 = !DILocation(line: 75, column: 14, scope: !591)
!604 = !DILocation(line: 76, column: 9, scope: !591)
!605 = !DILocation(line: 76, column: 14, scope: !591)
!606 = !DILocation(line: 77, column: 21, scope: !591)
!607 = !DILocation(line: 77, column: 5, scope: !591)
!608 = !DILocation(line: 78, column: 1, scope: !591)
!609 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !610, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !7}
!612 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !609, file: !3, line: 80, type: !7)
!613 = !DILocation(line: 80, column: 33, scope: !609)
!614 = !DILocation(line: 82, column: 20, scope: !609)
!615 = !DILocation(line: 82, column: 5, scope: !609)
!616 = !DILocation(line: 83, column: 1, scope: !609)
!617 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !618, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !25}
!620 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !617, file: !3, line: 85, type: !25)
!621 = !DILocation(line: 85, column: 45, scope: !617)
!622 = !DILocation(line: 87, column: 22, scope: !617)
!623 = !DILocation(line: 87, column: 5, scope: !617)
!624 = !DILocation(line: 88, column: 1, scope: !617)
!625 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !626, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !628}
!628 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!629 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !625, file: !3, line: 90, type: !628)
!630 = !DILocation(line: 90, column: 29, scope: !625)
!631 = !DILocation(line: 92, column: 20, scope: !625)
!632 = !DILocation(line: 92, column: 5, scope: !625)
!633 = !DILocation(line: 93, column: 1, scope: !625)
!634 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !635, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !639, line: 100, baseType: !640)
!639 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_747/source_code")
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !639, line: 96, size: 64, elements: !641)
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !640, file: !639, line: 98, baseType: !23, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !640, file: !639, line: 99, baseType: !23, size: 32, offset: 32)
!644 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !634, file: !3, line: 95, type: !637)
!645 = !DILocation(line: 95, column: 40, scope: !634)
!646 = !DILocation(line: 97, column: 26, scope: !634)
!647 = !DILocation(line: 97, column: 47, scope: !634)
!648 = !DILocation(line: 97, column: 55, scope: !634)
!649 = !DILocation(line: 97, column: 76, scope: !634)
!650 = !DILocation(line: 97, column: 5, scope: !634)
!651 = !DILocation(line: 98, column: 1, scope: !634)
!652 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !653, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !655, !576}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!656 = !DILocalVariable(name: "bytes", arg: 1, scope: !652, file: !3, line: 100, type: !655)
!657 = !DILocation(line: 100, column: 38, scope: !652)
!658 = !DILocalVariable(name: "numBytes", arg: 2, scope: !652, file: !3, line: 100, type: !576)
!659 = !DILocation(line: 100, column: 52, scope: !652)
!660 = !DILocalVariable(name: "i", scope: !652, file: !3, line: 102, type: !576)
!661 = !DILocation(line: 102, column: 12, scope: !652)
!662 = !DILocation(line: 103, column: 12, scope: !663)
!663 = distinct !DILexicalBlock(scope: !652, file: !3, line: 103, column: 5)
!664 = !DILocation(line: 103, column: 10, scope: !663)
!665 = !DILocation(line: 103, column: 17, scope: !666)
!666 = distinct !DILexicalBlock(scope: !663, file: !3, line: 103, column: 5)
!667 = !DILocation(line: 103, column: 21, scope: !666)
!668 = !DILocation(line: 103, column: 19, scope: !666)
!669 = !DILocation(line: 103, column: 5, scope: !663)
!670 = !DILocation(line: 105, column: 24, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !3, line: 104, column: 5)
!672 = !DILocation(line: 105, column: 30, scope: !671)
!673 = !DILocation(line: 105, column: 9, scope: !671)
!674 = !DILocation(line: 106, column: 5, scope: !671)
!675 = !DILocation(line: 103, column: 31, scope: !666)
!676 = !DILocation(line: 103, column: 5, scope: !666)
!677 = distinct !{!677, !669, !678, !396}
!678 = !DILocation(line: 106, column: 5, scope: !663)
!679 = !DILocation(line: 107, column: 5, scope: !652)
!680 = !DILocation(line: 108, column: 1, scope: !652)
!681 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !682, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!682 = !DISubroutineType(types: !683)
!683 = !{!576, !655, !576, !42}
!684 = !DILocalVariable(name: "bytes", arg: 1, scope: !681, file: !3, line: 113, type: !655)
!685 = !DILocation(line: 113, column: 39, scope: !681)
!686 = !DILocalVariable(name: "numBytes", arg: 2, scope: !681, file: !3, line: 113, type: !576)
!687 = !DILocation(line: 113, column: 53, scope: !681)
!688 = !DILocalVariable(name: "hex", arg: 3, scope: !681, file: !3, line: 113, type: !42)
!689 = !DILocation(line: 113, column: 71, scope: !681)
!690 = !DILocalVariable(name: "numWritten", scope: !681, file: !3, line: 115, type: !576)
!691 = !DILocation(line: 115, column: 12, scope: !681)
!692 = !DILocation(line: 121, column: 5, scope: !681)
!693 = !DILocation(line: 121, column: 12, scope: !681)
!694 = !DILocation(line: 121, column: 25, scope: !681)
!695 = !DILocation(line: 121, column: 23, scope: !681)
!696 = !DILocation(line: 121, column: 34, scope: !681)
!697 = !DILocation(line: 121, column: 37, scope: !681)
!698 = !DILocation(line: 121, column: 67, scope: !681)
!699 = !DILocation(line: 121, column: 70, scope: !681)
!700 = !DILocation(line: 0, scope: !681)
!701 = !DILocalVariable(name: "byte", scope: !702, file: !3, line: 123, type: !23)
!702 = distinct !DILexicalBlock(scope: !681, file: !3, line: 122, column: 5)
!703 = !DILocation(line: 123, column: 13, scope: !702)
!704 = !DILocation(line: 124, column: 17, scope: !702)
!705 = !DILocation(line: 124, column: 25, scope: !702)
!706 = !DILocation(line: 124, column: 23, scope: !702)
!707 = !DILocation(line: 124, column: 9, scope: !702)
!708 = !DILocation(line: 125, column: 45, scope: !702)
!709 = !DILocation(line: 125, column: 29, scope: !702)
!710 = !DILocation(line: 125, column: 9, scope: !702)
!711 = !DILocation(line: 125, column: 15, scope: !702)
!712 = !DILocation(line: 125, column: 27, scope: !702)
!713 = !DILocation(line: 126, column: 9, scope: !702)
!714 = distinct !{!714, !692, !715, !396}
!715 = !DILocation(line: 127, column: 5, scope: !681)
!716 = !DILocation(line: 129, column: 12, scope: !681)
!717 = !DILocation(line: 129, column: 5, scope: !681)
!718 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !719, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!719 = !DISubroutineType(types: !720)
!720 = !{!576, !655, !576, !513}
!721 = !DILocalVariable(name: "bytes", arg: 1, scope: !718, file: !3, line: 135, type: !655)
!722 = !DILocation(line: 135, column: 41, scope: !718)
!723 = !DILocalVariable(name: "numBytes", arg: 2, scope: !718, file: !3, line: 135, type: !576)
!724 = !DILocation(line: 135, column: 55, scope: !718)
!725 = !DILocalVariable(name: "hex", arg: 3, scope: !718, file: !3, line: 135, type: !513)
!726 = !DILocation(line: 135, column: 76, scope: !718)
!727 = !DILocalVariable(name: "numWritten", scope: !718, file: !3, line: 137, type: !576)
!728 = !DILocation(line: 137, column: 12, scope: !718)
!729 = !DILocation(line: 143, column: 5, scope: !718)
!730 = !DILocation(line: 143, column: 12, scope: !718)
!731 = !DILocation(line: 143, column: 25, scope: !718)
!732 = !DILocation(line: 143, column: 23, scope: !718)
!733 = !DILocation(line: 143, column: 34, scope: !718)
!734 = !DILocation(line: 143, column: 47, scope: !718)
!735 = !DILocation(line: 143, column: 55, scope: !718)
!736 = !DILocation(line: 143, column: 53, scope: !718)
!737 = !DILocation(line: 143, column: 37, scope: !718)
!738 = !DILocation(line: 143, column: 68, scope: !718)
!739 = !DILocation(line: 143, column: 81, scope: !718)
!740 = !DILocation(line: 143, column: 89, scope: !718)
!741 = !DILocation(line: 143, column: 87, scope: !718)
!742 = !DILocation(line: 143, column: 100, scope: !718)
!743 = !DILocation(line: 143, column: 71, scope: !718)
!744 = !DILocation(line: 0, scope: !718)
!745 = !DILocalVariable(name: "byte", scope: !746, file: !3, line: 145, type: !23)
!746 = distinct !DILexicalBlock(scope: !718, file: !3, line: 144, column: 5)
!747 = !DILocation(line: 145, column: 13, scope: !746)
!748 = !DILocation(line: 146, column: 18, scope: !746)
!749 = !DILocation(line: 146, column: 26, scope: !746)
!750 = !DILocation(line: 146, column: 24, scope: !746)
!751 = !DILocation(line: 146, column: 9, scope: !746)
!752 = !DILocation(line: 147, column: 45, scope: !746)
!753 = !DILocation(line: 147, column: 29, scope: !746)
!754 = !DILocation(line: 147, column: 9, scope: !746)
!755 = !DILocation(line: 147, column: 15, scope: !746)
!756 = !DILocation(line: 147, column: 27, scope: !746)
!757 = !DILocation(line: 148, column: 9, scope: !746)
!758 = distinct !{!758, !729, !759, !396}
!759 = !DILocation(line: 149, column: 5, scope: !718)
!760 = !DILocation(line: 151, column: 12, scope: !718)
!761 = !DILocation(line: 151, column: 5, scope: !718)
!762 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !763, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!763 = !DISubroutineType(types: !764)
!764 = !{!23}
!765 = !DILocation(line: 158, column: 5, scope: !762)
!766 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !763, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!767 = !DILocation(line: 163, column: 5, scope: !766)
!768 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !763, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!769 = !DILocation(line: 168, column: 13, scope: !768)
!770 = !DILocation(line: 168, column: 20, scope: !768)
!771 = !DILocation(line: 168, column: 5, scope: !768)
!772 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !113, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!773 = !DILocation(line: 187, column: 16, scope: !772)
!774 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !113, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!775 = !DILocation(line: 188, column: 16, scope: !774)
!776 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !113, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!777 = !DILocation(line: 189, column: 16, scope: !776)
!778 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !113, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!779 = !DILocation(line: 190, column: 16, scope: !778)
!780 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !113, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!781 = !DILocation(line: 191, column: 16, scope: !780)
!782 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !113, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!783 = !DILocation(line: 192, column: 16, scope: !782)
!784 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !113, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!785 = !DILocation(line: 193, column: 16, scope: !784)
!786 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !113, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!787 = !DILocation(line: 194, column: 16, scope: !786)
!788 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !113, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!789 = !DILocation(line: 195, column: 16, scope: !788)
!790 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !113, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!791 = !DILocation(line: 198, column: 15, scope: !790)
!792 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !113, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!793 = !DILocation(line: 199, column: 15, scope: !792)
!794 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !113, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!795 = !DILocation(line: 200, column: 15, scope: !794)
!796 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !113, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!797 = !DILocation(line: 201, column: 15, scope: !796)
!798 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !113, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!799 = !DILocation(line: 202, column: 15, scope: !798)
!800 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !113, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!801 = !DILocation(line: 203, column: 15, scope: !800)
!802 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !113, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!803 = !DILocation(line: 204, column: 15, scope: !802)
!804 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !113, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!805 = !DILocation(line: 205, column: 15, scope: !804)
!806 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !113, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!807 = !DILocation(line: 206, column: 15, scope: !806)
