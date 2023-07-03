; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad() #0 !dbg !114 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !117, metadata !DIExpression()), !dbg !118
  store i32 -1, i32* %data, align 4, !dbg !119
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !120, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !123, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 -1, i32* %listenSocket, align 4, !dbg !141
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !142, metadata !DIExpression()), !dbg !143
  store i32 -1, i32* %acceptSocket, align 4, !dbg !143
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !144, metadata !DIExpression()), !dbg !145
  br label %do.body, !dbg !146

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !147
  store i32 %call, i32* %listenSocket, align 4, !dbg !149
  %0 = load i32, i32* %listenSocket, align 4, !dbg !150
  %cmp = icmp eq i32 %0, -1, !dbg !152
  br i1 %cmp, label %if.then, label %if.end, !dbg !153

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !154

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !156
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !156
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !157
  store i16 2, i16* %sin_family, align 4, !dbg !158
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !159
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !160
  store i32 0, i32* %s_addr, align 4, !dbg !161
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !162
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !163
  store i16 %call1, i16* %sin_port, align 2, !dbg !164
  %2 = load i32, i32* %listenSocket, align 4, !dbg !165
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !167
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !168
  %cmp3 = icmp eq i32 %call2, -1, !dbg !169
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !170

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !171

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !173
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !175
  %cmp7 = icmp eq i32 %call6, -1, !dbg !176
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !177

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !178

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !180
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !181
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !182
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !183
  %cmp11 = icmp eq i32 %6, -1, !dbg !185
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !186

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !187

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !189
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !190
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !191
  %conv = trunc i64 %call14 to i32, !dbg !191
  store i32 %conv, i32* %recvResult, align 4, !dbg !192
  %8 = load i32, i32* %recvResult, align 4, !dbg !193
  %cmp15 = icmp eq i32 %8, -1, !dbg !195
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !196

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !197
  %cmp17 = icmp eq i32 %9, 0, !dbg !198
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !199

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !200

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !202
  %idxprom = sext i32 %10 to i64, !dbg !203
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !203
  store i8 0, i8* %arrayidx, align 1, !dbg !204
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !205
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !206
  store i32 %call22, i32* %data, align 4, !dbg !207
  br label %do.end, !dbg !208

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !209
  %cmp23 = icmp ne i32 %11, -1, !dbg !211
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !212

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !213
  %call26 = call i32 @close(i32 %12), !dbg !215
  br label %if.end27, !dbg !216

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !217
  %cmp28 = icmp ne i32 %13, -1, !dbg !219
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !220

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !221
  %call31 = call i32 @close(i32 %14), !dbg !223
  br label %if.end32, !dbg !224

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = bitcast i32* %data to i8*, !dbg !225
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink(i8* %15), !dbg !226
  ret void, !dbg !227
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
define dso_local void @goodG2B() #0 !dbg !228 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !229, metadata !DIExpression()), !dbg !230
  store i32 -1, i32* %data, align 4, !dbg !231
  store i32 7, i32* %data, align 4, !dbg !232
  %0 = bitcast i32* %data to i8*, !dbg !233
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_goodG2BSink(i8* %0), !dbg !234
  ret void, !dbg !235
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !236 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !237, metadata !DIExpression()), !dbg !238
  store i32 -1, i32* %data, align 4, !dbg !239
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !245, metadata !DIExpression()), !dbg !246
  store i32 -1, i32* %listenSocket, align 4, !dbg !246
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !247, metadata !DIExpression()), !dbg !248
  store i32 -1, i32* %acceptSocket, align 4, !dbg !248
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !249, metadata !DIExpression()), !dbg !250
  br label %do.body, !dbg !251

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !252
  store i32 %call, i32* %listenSocket, align 4, !dbg !254
  %0 = load i32, i32* %listenSocket, align 4, !dbg !255
  %cmp = icmp eq i32 %0, -1, !dbg !257
  br i1 %cmp, label %if.then, label %if.end, !dbg !258

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !259

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !261
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !261
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !262
  store i16 2, i16* %sin_family, align 4, !dbg !263
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !264
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !265
  store i32 0, i32* %s_addr, align 4, !dbg !266
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !267
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !268
  store i16 %call1, i16* %sin_port, align 2, !dbg !269
  %2 = load i32, i32* %listenSocket, align 4, !dbg !270
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !272
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !273
  %cmp3 = icmp eq i32 %call2, -1, !dbg !274
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !275

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !276

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !278
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !280
  %cmp7 = icmp eq i32 %call6, -1, !dbg !281
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !282

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !283

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !285
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !286
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !287
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !288
  %cmp11 = icmp eq i32 %6, -1, !dbg !290
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !291

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !292

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !294
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !295
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !296
  %conv = trunc i64 %call14 to i32, !dbg !296
  store i32 %conv, i32* %recvResult, align 4, !dbg !297
  %8 = load i32, i32* %recvResult, align 4, !dbg !298
  %cmp15 = icmp eq i32 %8, -1, !dbg !300
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !301

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !302
  %cmp17 = icmp eq i32 %9, 0, !dbg !303
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !304

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !305

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !307
  %idxprom = sext i32 %10 to i64, !dbg !308
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !308
  store i8 0, i8* %arrayidx, align 1, !dbg !309
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !310
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !311
  store i32 %call22, i32* %data, align 4, !dbg !312
  br label %do.end, !dbg !313

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !314
  %cmp23 = icmp ne i32 %11, -1, !dbg !316
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !317

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !318
  %call26 = call i32 @close(i32 %12), !dbg !320
  br label %if.end27, !dbg !321

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !322
  %cmp28 = icmp ne i32 %13, -1, !dbg !324
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !325

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !326
  %call31 = call i32 @close(i32 %14), !dbg !328
  br label %if.end32, !dbg !329

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = bitcast i32* %data to i8*, !dbg !330
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_goodB2GSink(i8* %15), !dbg !331
  ret void, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_good() #0 !dbg !333 {
entry:
  call void @goodG2B(), !dbg !334
  call void @goodB2G(), !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink(i8* %dataVoidPtr) #0 !dbg !337 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !340, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.declare(metadata i32** %dataPtr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !344
  %1 = bitcast i8* %0 to i32*, !dbg !345
  store i32* %1, i32** %dataPtr, align 8, !dbg !343
  call void @llvm.dbg.declare(metadata i32* %data, metadata !346, metadata !DIExpression()), !dbg !347
  %2 = load i32*, i32** %dataPtr, align 8, !dbg !348
  %3 = load i32, i32* %2, align 4, !dbg !349
  store i32 %3, i32* %data, align 4, !dbg !347
  call void @llvm.dbg.declare(metadata i32* %i, metadata !350, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !353, metadata !DIExpression()), !dbg !357
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !357
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !357
  %5 = load i32, i32* %data, align 4, !dbg !358
  %cmp = icmp sge i32 %5, 0, !dbg !360
  br i1 %cmp, label %if.then, label %if.else, !dbg !361

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %data, align 4, !dbg !362
  %idxprom = sext i32 %6 to i64, !dbg !364
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !364
  store i32 1, i32* %arrayidx, align 4, !dbg !365
  store i32 0, i32* %i, align 4, !dbg !366
  br label %for.cond, !dbg !368

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4, !dbg !369
  %cmp1 = icmp slt i32 %7, 10, !dbg !371
  br i1 %cmp1, label %for.body, label %for.end, !dbg !372

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !373
  %idxprom2 = sext i32 %8 to i64, !dbg !375
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !375
  %9 = load i32, i32* %arrayidx3, align 4, !dbg !375
  call void @printIntLine(i32 %9), !dbg !376
  br label %for.inc, !dbg !377

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !378
  %inc = add nsw i32 %10, 1, !dbg !378
  store i32 %inc, i32* %i, align 4, !dbg !378
  br label %for.cond, !dbg !379, !llvm.loop !380

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !383

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !384
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_goodG2BSink(i8* %dataVoidPtr) #0 !dbg !387 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.declare(metadata i32** %dataPtr, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !392
  %1 = bitcast i8* %0 to i32*, !dbg !393
  store i32* %1, i32** %dataPtr, align 8, !dbg !391
  call void @llvm.dbg.declare(metadata i32* %data, metadata !394, metadata !DIExpression()), !dbg !395
  %2 = load i32*, i32** %dataPtr, align 8, !dbg !396
  %3 = load i32, i32* %2, align 4, !dbg !397
  store i32 %3, i32* %data, align 4, !dbg !395
  call void @llvm.dbg.declare(metadata i32* %i, metadata !398, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !401, metadata !DIExpression()), !dbg !402
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !402
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !402
  %5 = load i32, i32* %data, align 4, !dbg !403
  %cmp = icmp sge i32 %5, 0, !dbg !405
  br i1 %cmp, label %if.then, label %if.else, !dbg !406

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %data, align 4, !dbg !407
  %idxprom = sext i32 %6 to i64, !dbg !409
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !409
  store i32 1, i32* %arrayidx, align 4, !dbg !410
  store i32 0, i32* %i, align 4, !dbg !411
  br label %for.cond, !dbg !413

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4, !dbg !414
  %cmp1 = icmp slt i32 %7, 10, !dbg !416
  br i1 %cmp1, label %for.body, label %for.end, !dbg !417

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !418
  %idxprom2 = sext i32 %8 to i64, !dbg !420
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !420
  %9 = load i32, i32* %arrayidx3, align 4, !dbg !420
  call void @printIntLine(i32 %9), !dbg !421
  br label %for.inc, !dbg !422

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !423
  %inc = add nsw i32 %10, 1, !dbg !423
  store i32 %inc, i32* %i, align 4, !dbg !423
  br label %for.cond, !dbg !424, !llvm.loop !425

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !427

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !428
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_goodB2GSink(i8* %dataVoidPtr) #0 !dbg !431 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata i32** %dataPtr, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !436
  %1 = bitcast i8* %0 to i32*, !dbg !437
  store i32* %1, i32** %dataPtr, align 8, !dbg !435
  call void @llvm.dbg.declare(metadata i32* %data, metadata !438, metadata !DIExpression()), !dbg !439
  %2 = load i32*, i32** %dataPtr, align 8, !dbg !440
  %3 = load i32, i32* %2, align 4, !dbg !441
  store i32 %3, i32* %data, align 4, !dbg !439
  call void @llvm.dbg.declare(metadata i32* %i, metadata !442, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !445, metadata !DIExpression()), !dbg !446
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !446
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !446
  %5 = load i32, i32* %data, align 4, !dbg !447
  %cmp = icmp sge i32 %5, 0, !dbg !449
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !450

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %data, align 4, !dbg !451
  %cmp1 = icmp slt i32 %6, 10, !dbg !452
  br i1 %cmp1, label %if.then, label %if.else, !dbg !453

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !454
  %idxprom = sext i32 %7 to i64, !dbg !456
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !456
  store i32 1, i32* %arrayidx, align 4, !dbg !457
  store i32 0, i32* %i, align 4, !dbg !458
  br label %for.cond, !dbg !460

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4, !dbg !461
  %cmp2 = icmp slt i32 %8, 10, !dbg !463
  br i1 %cmp2, label %for.body, label %for.end, !dbg !464

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !465
  %idxprom3 = sext i32 %9 to i64, !dbg !467
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !467
  %10 = load i32, i32* %arrayidx4, align 4, !dbg !467
  call void @printIntLine(i32 %10), !dbg !468
  br label %for.inc, !dbg !469

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !470
  %inc = add nsw i32 %11, 1, !dbg !470
  store i32 %inc, i32* %i, align 4, !dbg !470
  br label %for.cond, !dbg !471, !llvm.loop !472

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !474

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !475
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !478 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !481, metadata !DIExpression()), !dbg !482
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !dbg !483
  %0 = load i8*, i8** %line.addr, align 8, !dbg !484
  %cmp = icmp ne i8* %0, null, !dbg !486
  br i1 %cmp, label %if.then, label %if.end, !dbg !487

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !488
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !490
  br label %if.end, !dbg !491

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !492
  ret void, !dbg !493
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !494 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !495, metadata !DIExpression()), !dbg !496
  %0 = load i8*, i8** %line.addr, align 8, !dbg !497
  %cmp = icmp ne i8* %0, null, !dbg !499
  br i1 %cmp, label %if.then, label %if.end, !dbg !500

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !501
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !503
  br label %if.end, !dbg !504

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !506 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !512, metadata !DIExpression()), !dbg !513
  %0 = load i32*, i32** %line.addr, align 8, !dbg !514
  %cmp = icmp ne i32* %0, null, !dbg !516
  br i1 %cmp, label %if.then, label %if.end, !dbg !517

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !518
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !520
  br label %if.end, !dbg !521

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !522
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !523 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !526, metadata !DIExpression()), !dbg !527
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !528
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !529
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !531 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !535, metadata !DIExpression()), !dbg !536
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !537
  %conv = sext i16 %0 to i32, !dbg !537
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !538
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !540 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !544, metadata !DIExpression()), !dbg !545
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !546
  %conv = fpext float %0 to double, !dbg !546
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !547
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !549 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !553, metadata !DIExpression()), !dbg !554
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !555
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !556
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !558 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !564, metadata !DIExpression()), !dbg !565
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !566
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !567
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !569 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !574, metadata !DIExpression()), !dbg !575
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !576
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !577
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !579 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !582, metadata !DIExpression()), !dbg !583
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !584
  %conv = sext i8 %0 to i32, !dbg !584
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !585
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !587 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !592, metadata !DIExpression()), !dbg !596
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !597
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !598
  store i32 %0, i32* %arrayidx, align 4, !dbg !599
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !600
  store i32 0, i32* %arrayidx1, align 4, !dbg !601
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !602
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !603
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !605 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !608, metadata !DIExpression()), !dbg !609
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !610
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !611
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !613 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !616, metadata !DIExpression()), !dbg !617
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !618
  %conv = zext i8 %0 to i32, !dbg !618
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !619
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !621 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !625, metadata !DIExpression()), !dbg !626
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !627
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !628
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !630 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !640, metadata !DIExpression()), !dbg !641
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !642
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !643
  %1 = load i32, i32* %intOne, align 4, !dbg !643
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !644
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !645
  %3 = load i32, i32* %intTwo, align 4, !dbg !645
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !646
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !648 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !652, metadata !DIExpression()), !dbg !653
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !654, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.declare(metadata i64* %i, metadata !656, metadata !DIExpression()), !dbg !657
  store i64 0, i64* %i, align 8, !dbg !658
  br label %for.cond, !dbg !660

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !661
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !663
  %cmp = icmp ult i64 %0, %1, !dbg !664
  br i1 %cmp, label %for.body, label %for.end, !dbg !665

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !666
  %3 = load i64, i64* %i, align 8, !dbg !668
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !666
  %4 = load i8, i8* %arrayidx, align 1, !dbg !666
  %conv = zext i8 %4 to i32, !dbg !666
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !669
  br label %for.inc, !dbg !670

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !671
  %inc = add i64 %5, 1, !dbg !671
  store i64 %inc, i64* %i, align 8, !dbg !671
  br label %for.cond, !dbg !672, !llvm.loop !673

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !675
  ret void, !dbg !676
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !677 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !680, metadata !DIExpression()), !dbg !681
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !682, metadata !DIExpression()), !dbg !683
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !684, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !686, metadata !DIExpression()), !dbg !687
  store i64 0, i64* %numWritten, align 8, !dbg !687
  br label %while.cond, !dbg !688

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !689
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !690
  %cmp = icmp ult i64 %0, %1, !dbg !691
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !692

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !693
  %2 = load i16*, i16** %call, align 8, !dbg !693
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !693
  %4 = load i64, i64* %numWritten, align 8, !dbg !693
  %mul = mul i64 2, %4, !dbg !693
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !693
  %5 = load i8, i8* %arrayidx, align 1, !dbg !693
  %conv = sext i8 %5 to i32, !dbg !693
  %idxprom = sext i32 %conv to i64, !dbg !693
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !693
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !693
  %conv2 = zext i16 %6 to i32, !dbg !693
  %and = and i32 %conv2, 4096, !dbg !693
  %tobool = icmp ne i32 %and, 0, !dbg !693
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !694

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !695
  %7 = load i16*, i16** %call3, align 8, !dbg !695
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !695
  %9 = load i64, i64* %numWritten, align 8, !dbg !695
  %mul4 = mul i64 2, %9, !dbg !695
  %add = add i64 %mul4, 1, !dbg !695
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !695
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !695
  %conv6 = sext i8 %10 to i32, !dbg !695
  %idxprom7 = sext i32 %conv6 to i64, !dbg !695
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !695
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !695
  %conv9 = zext i16 %11 to i32, !dbg !695
  %and10 = and i32 %conv9, 4096, !dbg !695
  %tobool11 = icmp ne i32 %and10, 0, !dbg !694
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !696
  br i1 %12, label %while.body, label %while.end, !dbg !688

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !697, metadata !DIExpression()), !dbg !699
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !700
  %14 = load i64, i64* %numWritten, align 8, !dbg !701
  %mul12 = mul i64 2, %14, !dbg !702
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !700
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !703
  %15 = load i32, i32* %byte, align 4, !dbg !704
  %conv15 = trunc i32 %15 to i8, !dbg !705
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !706
  %17 = load i64, i64* %numWritten, align 8, !dbg !707
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !706
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !708
  %18 = load i64, i64* %numWritten, align 8, !dbg !709
  %inc = add i64 %18, 1, !dbg !709
  store i64 %inc, i64* %numWritten, align 8, !dbg !709
  br label %while.cond, !dbg !688, !llvm.loop !710

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !712
  ret i64 %19, !dbg !713
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !714 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !717, metadata !DIExpression()), !dbg !718
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !719, metadata !DIExpression()), !dbg !720
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !721, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !723, metadata !DIExpression()), !dbg !724
  store i64 0, i64* %numWritten, align 8, !dbg !724
  br label %while.cond, !dbg !725

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !726
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !727
  %cmp = icmp ult i64 %0, %1, !dbg !728
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !729

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !730
  %3 = load i64, i64* %numWritten, align 8, !dbg !731
  %mul = mul i64 2, %3, !dbg !732
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !730
  %4 = load i32, i32* %arrayidx, align 4, !dbg !730
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !733
  %tobool = icmp ne i32 %call, 0, !dbg !733
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !734

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !735
  %6 = load i64, i64* %numWritten, align 8, !dbg !736
  %mul1 = mul i64 2, %6, !dbg !737
  %add = add i64 %mul1, 1, !dbg !738
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !735
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !735
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !739
  %tobool4 = icmp ne i32 %call3, 0, !dbg !734
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !740
  br i1 %8, label %while.body, label %while.end, !dbg !725

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !741, metadata !DIExpression()), !dbg !743
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !744
  %10 = load i64, i64* %numWritten, align 8, !dbg !745
  %mul5 = mul i64 2, %10, !dbg !746
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !744
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !747
  %11 = load i32, i32* %byte, align 4, !dbg !748
  %conv = trunc i32 %11 to i8, !dbg !749
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !750
  %13 = load i64, i64* %numWritten, align 8, !dbg !751
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !750
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !752
  %14 = load i64, i64* %numWritten, align 8, !dbg !753
  %inc = add i64 %14, 1, !dbg !753
  store i64 %inc, i64* %numWritten, align 8, !dbg !753
  br label %while.cond, !dbg !725, !llvm.loop !754

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !756
  ret i64 %15, !dbg !757
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !758 {
entry:
  ret i32 1, !dbg !761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !762 {
entry:
  ret i32 0, !dbg !763
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !764 {
entry:
  %call = call i32 @rand() #7, !dbg !765
  %rem = srem i32 %call, 2, !dbg !766
  ret i32 %rem, !dbg !767
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !768 {
entry:
  ret void, !dbg !769
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !770 {
entry:
  ret void, !dbg !771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !772 {
entry:
  ret void, !dbg !773
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !774 {
entry:
  ret void, !dbg !775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !776 {
entry:
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !778 {
entry:
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !780 {
entry:
  ret void, !dbg !781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !782 {
entry:
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !784 {
entry:
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !786 {
entry:
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !788 {
entry:
  ret void, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !790 {
entry:
  ret void, !dbg !791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !792 {
entry:
  ret void, !dbg !793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !794 {
entry:
  ret void, !dbg !795
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !796 {
entry:
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !798 {
entry:
  ret void, !dbg !799
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !800 {
entry:
  ret void, !dbg !801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !802 {
entry:
  ret void, !dbg !803
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
!llvm.ident = !{!110, !110, !110}
!llvm.module.flags = !{!111, !112, !113}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_744/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_744/source_code")
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
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !108, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_744/source_code")
!107 = !{}
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!110 = !{!"clang version 12.0.0"}
!111 = !{i32 7, !"Dwarf Version", i32 4}
!112 = !{i32 2, !"Debug Info Version", i32 3}
!113 = !{i32 1, !"wchar_size", i32 4}
!114 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_bad", scope: !45, file: !45, line: 47, type: !115, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!115 = !DISubroutineType(types: !116)
!116 = !{null}
!117 = !DILocalVariable(name: "data", scope: !114, file: !45, line: 49, type: !23)
!118 = !DILocation(line: 49, column: 9, scope: !114)
!119 = !DILocation(line: 51, column: 10, scope: !114)
!120 = !DILocalVariable(name: "recvResult", scope: !121, file: !45, line: 57, type: !23)
!121 = distinct !DILexicalBlock(scope: !114, file: !45, line: 52, column: 5)
!122 = !DILocation(line: 57, column: 13, scope: !121)
!123 = !DILocalVariable(name: "service", scope: !121, file: !45, line: 58, type: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !125)
!125 = !{!126, !127, !131, !135}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !124, file: !60, line: 240, baseType: !99, size: 16)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !124, file: !60, line: 241, baseType: !128, size: 16, offset: 16)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !24)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !124, file: !60, line: 242, baseType: !132, size: 32, offset: 32)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !132, file: !60, line: 33, baseType: !89, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !124, file: !60, line: 245, baseType: !136, size: 64, offset: 64)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 8)
!139 = !DILocation(line: 58, column: 28, scope: !121)
!140 = !DILocalVariable(name: "listenSocket", scope: !121, file: !45, line: 59, type: !23)
!141 = !DILocation(line: 59, column: 16, scope: !121)
!142 = !DILocalVariable(name: "acceptSocket", scope: !121, file: !45, line: 60, type: !23)
!143 = !DILocation(line: 60, column: 16, scope: !121)
!144 = !DILocalVariable(name: "inputBuffer", scope: !121, file: !45, line: 61, type: !102)
!145 = !DILocation(line: 61, column: 14, scope: !121)
!146 = !DILocation(line: 62, column: 9, scope: !121)
!147 = !DILocation(line: 72, column: 28, scope: !148)
!148 = distinct !DILexicalBlock(scope: !121, file: !45, line: 63, column: 9)
!149 = !DILocation(line: 72, column: 26, scope: !148)
!150 = !DILocation(line: 73, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !45, line: 73, column: 17)
!152 = !DILocation(line: 73, column: 30, scope: !151)
!153 = !DILocation(line: 73, column: 17, scope: !148)
!154 = !DILocation(line: 75, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !45, line: 74, column: 13)
!156 = !DILocation(line: 77, column: 13, scope: !148)
!157 = !DILocation(line: 78, column: 21, scope: !148)
!158 = !DILocation(line: 78, column: 32, scope: !148)
!159 = !DILocation(line: 79, column: 21, scope: !148)
!160 = !DILocation(line: 79, column: 30, scope: !148)
!161 = !DILocation(line: 79, column: 37, scope: !148)
!162 = !DILocation(line: 80, column: 32, scope: !148)
!163 = !DILocation(line: 80, column: 21, scope: !148)
!164 = !DILocation(line: 80, column: 30, scope: !148)
!165 = !DILocation(line: 81, column: 22, scope: !166)
!166 = distinct !DILexicalBlock(scope: !148, file: !45, line: 81, column: 17)
!167 = !DILocation(line: 81, column: 36, scope: !166)
!168 = !DILocation(line: 81, column: 17, scope: !166)
!169 = !DILocation(line: 81, column: 81, scope: !166)
!170 = !DILocation(line: 81, column: 17, scope: !148)
!171 = !DILocation(line: 83, column: 17, scope: !172)
!172 = distinct !DILexicalBlock(scope: !166, file: !45, line: 82, column: 13)
!173 = !DILocation(line: 85, column: 24, scope: !174)
!174 = distinct !DILexicalBlock(scope: !148, file: !45, line: 85, column: 17)
!175 = !DILocation(line: 85, column: 17, scope: !174)
!176 = !DILocation(line: 85, column: 54, scope: !174)
!177 = !DILocation(line: 85, column: 17, scope: !148)
!178 = !DILocation(line: 87, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !45, line: 86, column: 13)
!180 = !DILocation(line: 89, column: 35, scope: !148)
!181 = !DILocation(line: 89, column: 28, scope: !148)
!182 = !DILocation(line: 89, column: 26, scope: !148)
!183 = !DILocation(line: 90, column: 17, scope: !184)
!184 = distinct !DILexicalBlock(scope: !148, file: !45, line: 90, column: 17)
!185 = !DILocation(line: 90, column: 30, scope: !184)
!186 = !DILocation(line: 90, column: 17, scope: !148)
!187 = !DILocation(line: 92, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !45, line: 91, column: 13)
!189 = !DILocation(line: 95, column: 31, scope: !148)
!190 = !DILocation(line: 95, column: 45, scope: !148)
!191 = !DILocation(line: 95, column: 26, scope: !148)
!192 = !DILocation(line: 95, column: 24, scope: !148)
!193 = !DILocation(line: 96, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !148, file: !45, line: 96, column: 17)
!195 = !DILocation(line: 96, column: 28, scope: !194)
!196 = !DILocation(line: 96, column: 44, scope: !194)
!197 = !DILocation(line: 96, column: 47, scope: !194)
!198 = !DILocation(line: 96, column: 58, scope: !194)
!199 = !DILocation(line: 96, column: 17, scope: !148)
!200 = !DILocation(line: 98, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !194, file: !45, line: 97, column: 13)
!202 = !DILocation(line: 101, column: 25, scope: !148)
!203 = !DILocation(line: 101, column: 13, scope: !148)
!204 = !DILocation(line: 101, column: 37, scope: !148)
!205 = !DILocation(line: 103, column: 25, scope: !148)
!206 = !DILocation(line: 103, column: 20, scope: !148)
!207 = !DILocation(line: 103, column: 18, scope: !148)
!208 = !DILocation(line: 104, column: 9, scope: !148)
!209 = !DILocation(line: 106, column: 13, scope: !210)
!210 = distinct !DILexicalBlock(scope: !121, file: !45, line: 106, column: 13)
!211 = !DILocation(line: 106, column: 26, scope: !210)
!212 = !DILocation(line: 106, column: 13, scope: !121)
!213 = !DILocation(line: 108, column: 26, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !45, line: 107, column: 9)
!215 = !DILocation(line: 108, column: 13, scope: !214)
!216 = !DILocation(line: 109, column: 9, scope: !214)
!217 = !DILocation(line: 110, column: 13, scope: !218)
!218 = distinct !DILexicalBlock(scope: !121, file: !45, line: 110, column: 13)
!219 = !DILocation(line: 110, column: 26, scope: !218)
!220 = !DILocation(line: 110, column: 13, scope: !121)
!221 = !DILocation(line: 112, column: 26, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !45, line: 111, column: 9)
!223 = !DILocation(line: 112, column: 13, scope: !222)
!224 = !DILocation(line: 113, column: 9, scope: !222)
!225 = !DILocation(line: 121, column: 74, scope: !114)
!226 = !DILocation(line: 121, column: 5, scope: !114)
!227 = !DILocation(line: 122, column: 1, scope: !114)
!228 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 130, type: !115, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!229 = !DILocalVariable(name: "data", scope: !228, file: !45, line: 132, type: !23)
!230 = !DILocation(line: 132, column: 9, scope: !228)
!231 = !DILocation(line: 134, column: 10, scope: !228)
!232 = !DILocation(line: 137, column: 10, scope: !228)
!233 = !DILocation(line: 138, column: 78, scope: !228)
!234 = !DILocation(line: 138, column: 5, scope: !228)
!235 = !DILocation(line: 139, column: 1, scope: !228)
!236 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 143, type: !115, scopeLine: 144, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!237 = !DILocalVariable(name: "data", scope: !236, file: !45, line: 145, type: !23)
!238 = !DILocation(line: 145, column: 9, scope: !236)
!239 = !DILocation(line: 147, column: 10, scope: !236)
!240 = !DILocalVariable(name: "recvResult", scope: !241, file: !45, line: 153, type: !23)
!241 = distinct !DILexicalBlock(scope: !236, file: !45, line: 148, column: 5)
!242 = !DILocation(line: 153, column: 13, scope: !241)
!243 = !DILocalVariable(name: "service", scope: !241, file: !45, line: 154, type: !124)
!244 = !DILocation(line: 154, column: 28, scope: !241)
!245 = !DILocalVariable(name: "listenSocket", scope: !241, file: !45, line: 155, type: !23)
!246 = !DILocation(line: 155, column: 16, scope: !241)
!247 = !DILocalVariable(name: "acceptSocket", scope: !241, file: !45, line: 156, type: !23)
!248 = !DILocation(line: 156, column: 16, scope: !241)
!249 = !DILocalVariable(name: "inputBuffer", scope: !241, file: !45, line: 157, type: !102)
!250 = !DILocation(line: 157, column: 14, scope: !241)
!251 = !DILocation(line: 158, column: 9, scope: !241)
!252 = !DILocation(line: 168, column: 28, scope: !253)
!253 = distinct !DILexicalBlock(scope: !241, file: !45, line: 159, column: 9)
!254 = !DILocation(line: 168, column: 26, scope: !253)
!255 = !DILocation(line: 169, column: 17, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !45, line: 169, column: 17)
!257 = !DILocation(line: 169, column: 30, scope: !256)
!258 = !DILocation(line: 169, column: 17, scope: !253)
!259 = !DILocation(line: 171, column: 17, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !45, line: 170, column: 13)
!261 = !DILocation(line: 173, column: 13, scope: !253)
!262 = !DILocation(line: 174, column: 21, scope: !253)
!263 = !DILocation(line: 174, column: 32, scope: !253)
!264 = !DILocation(line: 175, column: 21, scope: !253)
!265 = !DILocation(line: 175, column: 30, scope: !253)
!266 = !DILocation(line: 175, column: 37, scope: !253)
!267 = !DILocation(line: 176, column: 32, scope: !253)
!268 = !DILocation(line: 176, column: 21, scope: !253)
!269 = !DILocation(line: 176, column: 30, scope: !253)
!270 = !DILocation(line: 177, column: 22, scope: !271)
!271 = distinct !DILexicalBlock(scope: !253, file: !45, line: 177, column: 17)
!272 = !DILocation(line: 177, column: 36, scope: !271)
!273 = !DILocation(line: 177, column: 17, scope: !271)
!274 = !DILocation(line: 177, column: 81, scope: !271)
!275 = !DILocation(line: 177, column: 17, scope: !253)
!276 = !DILocation(line: 179, column: 17, scope: !277)
!277 = distinct !DILexicalBlock(scope: !271, file: !45, line: 178, column: 13)
!278 = !DILocation(line: 181, column: 24, scope: !279)
!279 = distinct !DILexicalBlock(scope: !253, file: !45, line: 181, column: 17)
!280 = !DILocation(line: 181, column: 17, scope: !279)
!281 = !DILocation(line: 181, column: 54, scope: !279)
!282 = !DILocation(line: 181, column: 17, scope: !253)
!283 = !DILocation(line: 183, column: 17, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !45, line: 182, column: 13)
!285 = !DILocation(line: 185, column: 35, scope: !253)
!286 = !DILocation(line: 185, column: 28, scope: !253)
!287 = !DILocation(line: 185, column: 26, scope: !253)
!288 = !DILocation(line: 186, column: 17, scope: !289)
!289 = distinct !DILexicalBlock(scope: !253, file: !45, line: 186, column: 17)
!290 = !DILocation(line: 186, column: 30, scope: !289)
!291 = !DILocation(line: 186, column: 17, scope: !253)
!292 = !DILocation(line: 188, column: 17, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !45, line: 187, column: 13)
!294 = !DILocation(line: 191, column: 31, scope: !253)
!295 = !DILocation(line: 191, column: 45, scope: !253)
!296 = !DILocation(line: 191, column: 26, scope: !253)
!297 = !DILocation(line: 191, column: 24, scope: !253)
!298 = !DILocation(line: 192, column: 17, scope: !299)
!299 = distinct !DILexicalBlock(scope: !253, file: !45, line: 192, column: 17)
!300 = !DILocation(line: 192, column: 28, scope: !299)
!301 = !DILocation(line: 192, column: 44, scope: !299)
!302 = !DILocation(line: 192, column: 47, scope: !299)
!303 = !DILocation(line: 192, column: 58, scope: !299)
!304 = !DILocation(line: 192, column: 17, scope: !253)
!305 = !DILocation(line: 194, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !299, file: !45, line: 193, column: 13)
!307 = !DILocation(line: 197, column: 25, scope: !253)
!308 = !DILocation(line: 197, column: 13, scope: !253)
!309 = !DILocation(line: 197, column: 37, scope: !253)
!310 = !DILocation(line: 199, column: 25, scope: !253)
!311 = !DILocation(line: 199, column: 20, scope: !253)
!312 = !DILocation(line: 199, column: 18, scope: !253)
!313 = !DILocation(line: 200, column: 9, scope: !253)
!314 = !DILocation(line: 202, column: 13, scope: !315)
!315 = distinct !DILexicalBlock(scope: !241, file: !45, line: 202, column: 13)
!316 = !DILocation(line: 202, column: 26, scope: !315)
!317 = !DILocation(line: 202, column: 13, scope: !241)
!318 = !DILocation(line: 204, column: 26, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !45, line: 203, column: 9)
!320 = !DILocation(line: 204, column: 13, scope: !319)
!321 = !DILocation(line: 205, column: 9, scope: !319)
!322 = !DILocation(line: 206, column: 13, scope: !323)
!323 = distinct !DILexicalBlock(scope: !241, file: !45, line: 206, column: 13)
!324 = !DILocation(line: 206, column: 26, scope: !323)
!325 = !DILocation(line: 206, column: 13, scope: !241)
!326 = !DILocation(line: 208, column: 26, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !45, line: 207, column: 9)
!328 = !DILocation(line: 208, column: 13, scope: !327)
!329 = !DILocation(line: 209, column: 9, scope: !327)
!330 = !DILocation(line: 217, column: 78, scope: !236)
!331 = !DILocation(line: 217, column: 5, scope: !236)
!332 = !DILocation(line: 218, column: 1, scope: !236)
!333 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64_good", scope: !45, file: !45, line: 220, type: !115, scopeLine: 221, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!334 = !DILocation(line: 222, column: 5, scope: !333)
!335 = !DILocation(line: 223, column: 5, scope: !333)
!336 = !DILocation(line: 224, column: 1, scope: !333)
!337 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink", scope: !106, file: !106, line: 44, type: !338, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !22}
!340 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !337, file: !106, line: 44, type: !22)
!341 = !DILocation(line: 44, column: 82, scope: !337)
!342 = !DILocalVariable(name: "dataPtr", scope: !337, file: !106, line: 47, type: !109)
!343 = !DILocation(line: 47, column: 11, scope: !337)
!344 = !DILocation(line: 47, column: 28, scope: !337)
!345 = !DILocation(line: 47, column: 21, scope: !337)
!346 = !DILocalVariable(name: "data", scope: !337, file: !106, line: 49, type: !23)
!347 = !DILocation(line: 49, column: 9, scope: !337)
!348 = !DILocation(line: 49, column: 18, scope: !337)
!349 = !DILocation(line: 49, column: 17, scope: !337)
!350 = !DILocalVariable(name: "i", scope: !351, file: !106, line: 51, type: !23)
!351 = distinct !DILexicalBlock(scope: !337, file: !106, line: 50, column: 5)
!352 = !DILocation(line: 51, column: 13, scope: !351)
!353 = !DILocalVariable(name: "buffer", scope: !351, file: !106, line: 52, type: !354)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 10)
!357 = !DILocation(line: 52, column: 13, scope: !351)
!358 = !DILocation(line: 55, column: 13, scope: !359)
!359 = distinct !DILexicalBlock(scope: !351, file: !106, line: 55, column: 13)
!360 = !DILocation(line: 55, column: 18, scope: !359)
!361 = !DILocation(line: 55, column: 13, scope: !351)
!362 = !DILocation(line: 57, column: 20, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !106, line: 56, column: 9)
!364 = !DILocation(line: 57, column: 13, scope: !363)
!365 = !DILocation(line: 57, column: 26, scope: !363)
!366 = !DILocation(line: 59, column: 19, scope: !367)
!367 = distinct !DILexicalBlock(scope: !363, file: !106, line: 59, column: 13)
!368 = !DILocation(line: 59, column: 17, scope: !367)
!369 = !DILocation(line: 59, column: 24, scope: !370)
!370 = distinct !DILexicalBlock(scope: !367, file: !106, line: 59, column: 13)
!371 = !DILocation(line: 59, column: 26, scope: !370)
!372 = !DILocation(line: 59, column: 13, scope: !367)
!373 = !DILocation(line: 61, column: 37, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !106, line: 60, column: 13)
!375 = !DILocation(line: 61, column: 30, scope: !374)
!376 = !DILocation(line: 61, column: 17, scope: !374)
!377 = !DILocation(line: 62, column: 13, scope: !374)
!378 = !DILocation(line: 59, column: 33, scope: !370)
!379 = !DILocation(line: 59, column: 13, scope: !370)
!380 = distinct !{!380, !372, !381, !382}
!381 = !DILocation(line: 62, column: 13, scope: !367)
!382 = !{!"llvm.loop.mustprogress"}
!383 = !DILocation(line: 63, column: 9, scope: !363)
!384 = !DILocation(line: 66, column: 13, scope: !385)
!385 = distinct !DILexicalBlock(scope: !359, file: !106, line: 65, column: 9)
!386 = !DILocation(line: 69, column: 1, scope: !337)
!387 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_goodG2BSink", scope: !106, file: !106, line: 76, type: !338, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!388 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !387, file: !106, line: 76, type: !22)
!389 = !DILocation(line: 76, column: 86, scope: !387)
!390 = !DILocalVariable(name: "dataPtr", scope: !387, file: !106, line: 79, type: !109)
!391 = !DILocation(line: 79, column: 11, scope: !387)
!392 = !DILocation(line: 79, column: 28, scope: !387)
!393 = !DILocation(line: 79, column: 21, scope: !387)
!394 = !DILocalVariable(name: "data", scope: !387, file: !106, line: 81, type: !23)
!395 = !DILocation(line: 81, column: 9, scope: !387)
!396 = !DILocation(line: 81, column: 18, scope: !387)
!397 = !DILocation(line: 81, column: 17, scope: !387)
!398 = !DILocalVariable(name: "i", scope: !399, file: !106, line: 83, type: !23)
!399 = distinct !DILexicalBlock(scope: !387, file: !106, line: 82, column: 5)
!400 = !DILocation(line: 83, column: 13, scope: !399)
!401 = !DILocalVariable(name: "buffer", scope: !399, file: !106, line: 84, type: !354)
!402 = !DILocation(line: 84, column: 13, scope: !399)
!403 = !DILocation(line: 87, column: 13, scope: !404)
!404 = distinct !DILexicalBlock(scope: !399, file: !106, line: 87, column: 13)
!405 = !DILocation(line: 87, column: 18, scope: !404)
!406 = !DILocation(line: 87, column: 13, scope: !399)
!407 = !DILocation(line: 89, column: 20, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !106, line: 88, column: 9)
!409 = !DILocation(line: 89, column: 13, scope: !408)
!410 = !DILocation(line: 89, column: 26, scope: !408)
!411 = !DILocation(line: 91, column: 19, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !106, line: 91, column: 13)
!413 = !DILocation(line: 91, column: 17, scope: !412)
!414 = !DILocation(line: 91, column: 24, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !106, line: 91, column: 13)
!416 = !DILocation(line: 91, column: 26, scope: !415)
!417 = !DILocation(line: 91, column: 13, scope: !412)
!418 = !DILocation(line: 93, column: 37, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !106, line: 92, column: 13)
!420 = !DILocation(line: 93, column: 30, scope: !419)
!421 = !DILocation(line: 93, column: 17, scope: !419)
!422 = !DILocation(line: 94, column: 13, scope: !419)
!423 = !DILocation(line: 91, column: 33, scope: !415)
!424 = !DILocation(line: 91, column: 13, scope: !415)
!425 = distinct !{!425, !417, !426, !382}
!426 = !DILocation(line: 94, column: 13, scope: !412)
!427 = !DILocation(line: 95, column: 9, scope: !408)
!428 = !DILocation(line: 98, column: 13, scope: !429)
!429 = distinct !DILexicalBlock(scope: !404, file: !106, line: 97, column: 9)
!430 = !DILocation(line: 101, column: 1, scope: !387)
!431 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_goodB2GSink", scope: !106, file: !106, line: 104, type: !338, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!432 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !431, file: !106, line: 104, type: !22)
!433 = !DILocation(line: 104, column: 86, scope: !431)
!434 = !DILocalVariable(name: "dataPtr", scope: !431, file: !106, line: 107, type: !109)
!435 = !DILocation(line: 107, column: 11, scope: !431)
!436 = !DILocation(line: 107, column: 28, scope: !431)
!437 = !DILocation(line: 107, column: 21, scope: !431)
!438 = !DILocalVariable(name: "data", scope: !431, file: !106, line: 109, type: !23)
!439 = !DILocation(line: 109, column: 9, scope: !431)
!440 = !DILocation(line: 109, column: 18, scope: !431)
!441 = !DILocation(line: 109, column: 17, scope: !431)
!442 = !DILocalVariable(name: "i", scope: !443, file: !106, line: 111, type: !23)
!443 = distinct !DILexicalBlock(scope: !431, file: !106, line: 110, column: 5)
!444 = !DILocation(line: 111, column: 13, scope: !443)
!445 = !DILocalVariable(name: "buffer", scope: !443, file: !106, line: 112, type: !354)
!446 = !DILocation(line: 112, column: 13, scope: !443)
!447 = !DILocation(line: 114, column: 13, scope: !448)
!448 = distinct !DILexicalBlock(scope: !443, file: !106, line: 114, column: 13)
!449 = !DILocation(line: 114, column: 18, scope: !448)
!450 = !DILocation(line: 114, column: 23, scope: !448)
!451 = !DILocation(line: 114, column: 26, scope: !448)
!452 = !DILocation(line: 114, column: 31, scope: !448)
!453 = !DILocation(line: 114, column: 13, scope: !443)
!454 = !DILocation(line: 116, column: 20, scope: !455)
!455 = distinct !DILexicalBlock(scope: !448, file: !106, line: 115, column: 9)
!456 = !DILocation(line: 116, column: 13, scope: !455)
!457 = !DILocation(line: 116, column: 26, scope: !455)
!458 = !DILocation(line: 118, column: 19, scope: !459)
!459 = distinct !DILexicalBlock(scope: !455, file: !106, line: 118, column: 13)
!460 = !DILocation(line: 118, column: 17, scope: !459)
!461 = !DILocation(line: 118, column: 24, scope: !462)
!462 = distinct !DILexicalBlock(scope: !459, file: !106, line: 118, column: 13)
!463 = !DILocation(line: 118, column: 26, scope: !462)
!464 = !DILocation(line: 118, column: 13, scope: !459)
!465 = !DILocation(line: 120, column: 37, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !106, line: 119, column: 13)
!467 = !DILocation(line: 120, column: 30, scope: !466)
!468 = !DILocation(line: 120, column: 17, scope: !466)
!469 = !DILocation(line: 121, column: 13, scope: !466)
!470 = !DILocation(line: 118, column: 33, scope: !462)
!471 = !DILocation(line: 118, column: 13, scope: !462)
!472 = distinct !{!472, !464, !473, !382}
!473 = !DILocation(line: 121, column: 13, scope: !459)
!474 = !DILocation(line: 122, column: 9, scope: !455)
!475 = !DILocation(line: 125, column: 13, scope: !476)
!476 = distinct !DILexicalBlock(scope: !448, file: !106, line: 124, column: 9)
!477 = !DILocation(line: 128, column: 1, scope: !431)
!478 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !479, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !42}
!481 = !DILocalVariable(name: "line", arg: 1, scope: !478, file: !3, line: 11, type: !42)
!482 = !DILocation(line: 11, column: 25, scope: !478)
!483 = !DILocation(line: 13, column: 1, scope: !478)
!484 = !DILocation(line: 14, column: 8, scope: !485)
!485 = distinct !DILexicalBlock(scope: !478, file: !3, line: 14, column: 8)
!486 = !DILocation(line: 14, column: 13, scope: !485)
!487 = !DILocation(line: 14, column: 8, scope: !478)
!488 = !DILocation(line: 16, column: 24, scope: !489)
!489 = distinct !DILexicalBlock(scope: !485, file: !3, line: 15, column: 5)
!490 = !DILocation(line: 16, column: 9, scope: !489)
!491 = !DILocation(line: 17, column: 5, scope: !489)
!492 = !DILocation(line: 18, column: 5, scope: !478)
!493 = !DILocation(line: 19, column: 1, scope: !478)
!494 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !479, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!495 = !DILocalVariable(name: "line", arg: 1, scope: !494, file: !3, line: 20, type: !42)
!496 = !DILocation(line: 20, column: 29, scope: !494)
!497 = !DILocation(line: 22, column: 8, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !3, line: 22, column: 8)
!499 = !DILocation(line: 22, column: 13, scope: !498)
!500 = !DILocation(line: 22, column: 8, scope: !494)
!501 = !DILocation(line: 24, column: 24, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !3, line: 23, column: 5)
!503 = !DILocation(line: 24, column: 9, scope: !502)
!504 = !DILocation(line: 25, column: 5, scope: !502)
!505 = !DILocation(line: 26, column: 1, scope: !494)
!506 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !507, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !511, line: 74, baseType: !23)
!511 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!512 = !DILocalVariable(name: "line", arg: 1, scope: !506, file: !3, line: 27, type: !509)
!513 = !DILocation(line: 27, column: 29, scope: !506)
!514 = !DILocation(line: 29, column: 8, scope: !515)
!515 = distinct !DILexicalBlock(scope: !506, file: !3, line: 29, column: 8)
!516 = !DILocation(line: 29, column: 13, scope: !515)
!517 = !DILocation(line: 29, column: 8, scope: !506)
!518 = !DILocation(line: 31, column: 27, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !3, line: 30, column: 5)
!520 = !DILocation(line: 31, column: 9, scope: !519)
!521 = !DILocation(line: 32, column: 5, scope: !519)
!522 = !DILocation(line: 33, column: 1, scope: !506)
!523 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !524, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !23}
!526 = !DILocalVariable(name: "intNumber", arg: 1, scope: !523, file: !3, line: 35, type: !23)
!527 = !DILocation(line: 35, column: 24, scope: !523)
!528 = !DILocation(line: 37, column: 20, scope: !523)
!529 = !DILocation(line: 37, column: 5, scope: !523)
!530 = !DILocation(line: 38, column: 1, scope: !523)
!531 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !532, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !534}
!534 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!535 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !531, file: !3, line: 40, type: !534)
!536 = !DILocation(line: 40, column: 28, scope: !531)
!537 = !DILocation(line: 42, column: 21, scope: !531)
!538 = !DILocation(line: 42, column: 5, scope: !531)
!539 = !DILocation(line: 43, column: 1, scope: !531)
!540 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !541, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !543}
!543 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!544 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !540, file: !3, line: 45, type: !543)
!545 = !DILocation(line: 45, column: 28, scope: !540)
!546 = !DILocation(line: 47, column: 20, scope: !540)
!547 = !DILocation(line: 47, column: 5, scope: !540)
!548 = !DILocation(line: 48, column: 1, scope: !540)
!549 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !550, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !552}
!552 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!553 = !DILocalVariable(name: "longNumber", arg: 1, scope: !549, file: !3, line: 50, type: !552)
!554 = !DILocation(line: 50, column: 26, scope: !549)
!555 = !DILocation(line: 52, column: 21, scope: !549)
!556 = !DILocation(line: 52, column: 5, scope: !549)
!557 = !DILocation(line: 53, column: 1, scope: !549)
!558 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !559, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !561}
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !562, line: 27, baseType: !563)
!562 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !552)
!564 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !558, file: !3, line: 55, type: !561)
!565 = !DILocation(line: 55, column: 33, scope: !558)
!566 = !DILocation(line: 57, column: 29, scope: !558)
!567 = !DILocation(line: 57, column: 5, scope: !558)
!568 = !DILocation(line: 58, column: 1, scope: !558)
!569 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !570, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !572}
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !511, line: 46, baseType: !573)
!573 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!574 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !569, file: !3, line: 60, type: !572)
!575 = !DILocation(line: 60, column: 29, scope: !569)
!576 = !DILocation(line: 62, column: 21, scope: !569)
!577 = !DILocation(line: 62, column: 5, scope: !569)
!578 = !DILocation(line: 63, column: 1, scope: !569)
!579 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !580, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !43}
!582 = !DILocalVariable(name: "charHex", arg: 1, scope: !579, file: !3, line: 65, type: !43)
!583 = !DILocation(line: 65, column: 29, scope: !579)
!584 = !DILocation(line: 67, column: 22, scope: !579)
!585 = !DILocation(line: 67, column: 5, scope: !579)
!586 = !DILocation(line: 68, column: 1, scope: !579)
!587 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !588, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !510}
!590 = !DILocalVariable(name: "wideChar", arg: 1, scope: !587, file: !3, line: 70, type: !510)
!591 = !DILocation(line: 70, column: 29, scope: !587)
!592 = !DILocalVariable(name: "s", scope: !587, file: !3, line: 74, type: !593)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 64, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 2)
!596 = !DILocation(line: 74, column: 13, scope: !587)
!597 = !DILocation(line: 75, column: 16, scope: !587)
!598 = !DILocation(line: 75, column: 9, scope: !587)
!599 = !DILocation(line: 75, column: 14, scope: !587)
!600 = !DILocation(line: 76, column: 9, scope: !587)
!601 = !DILocation(line: 76, column: 14, scope: !587)
!602 = !DILocation(line: 77, column: 21, scope: !587)
!603 = !DILocation(line: 77, column: 5, scope: !587)
!604 = !DILocation(line: 78, column: 1, scope: !587)
!605 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !606, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !7}
!608 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !605, file: !3, line: 80, type: !7)
!609 = !DILocation(line: 80, column: 33, scope: !605)
!610 = !DILocation(line: 82, column: 20, scope: !605)
!611 = !DILocation(line: 82, column: 5, scope: !605)
!612 = !DILocation(line: 83, column: 1, scope: !605)
!613 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !614, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !25}
!616 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !613, file: !3, line: 85, type: !25)
!617 = !DILocation(line: 85, column: 45, scope: !613)
!618 = !DILocation(line: 87, column: 22, scope: !613)
!619 = !DILocation(line: 87, column: 5, scope: !613)
!620 = !DILocation(line: 88, column: 1, scope: !613)
!621 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !622, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !624}
!624 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!625 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !621, file: !3, line: 90, type: !624)
!626 = !DILocation(line: 90, column: 29, scope: !621)
!627 = !DILocation(line: 92, column: 20, scope: !621)
!628 = !DILocation(line: 92, column: 5, scope: !621)
!629 = !DILocation(line: 93, column: 1, scope: !621)
!630 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !631, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !635, line: 100, baseType: !636)
!635 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_744/source_code")
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !635, line: 96, size: 64, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !636, file: !635, line: 98, baseType: !23, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !636, file: !635, line: 99, baseType: !23, size: 32, offset: 32)
!640 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !630, file: !3, line: 95, type: !633)
!641 = !DILocation(line: 95, column: 40, scope: !630)
!642 = !DILocation(line: 97, column: 26, scope: !630)
!643 = !DILocation(line: 97, column: 47, scope: !630)
!644 = !DILocation(line: 97, column: 55, scope: !630)
!645 = !DILocation(line: 97, column: 76, scope: !630)
!646 = !DILocation(line: 97, column: 5, scope: !630)
!647 = !DILocation(line: 98, column: 1, scope: !630)
!648 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !649, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !651, !572}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!652 = !DILocalVariable(name: "bytes", arg: 1, scope: !648, file: !3, line: 100, type: !651)
!653 = !DILocation(line: 100, column: 38, scope: !648)
!654 = !DILocalVariable(name: "numBytes", arg: 2, scope: !648, file: !3, line: 100, type: !572)
!655 = !DILocation(line: 100, column: 52, scope: !648)
!656 = !DILocalVariable(name: "i", scope: !648, file: !3, line: 102, type: !572)
!657 = !DILocation(line: 102, column: 12, scope: !648)
!658 = !DILocation(line: 103, column: 12, scope: !659)
!659 = distinct !DILexicalBlock(scope: !648, file: !3, line: 103, column: 5)
!660 = !DILocation(line: 103, column: 10, scope: !659)
!661 = !DILocation(line: 103, column: 17, scope: !662)
!662 = distinct !DILexicalBlock(scope: !659, file: !3, line: 103, column: 5)
!663 = !DILocation(line: 103, column: 21, scope: !662)
!664 = !DILocation(line: 103, column: 19, scope: !662)
!665 = !DILocation(line: 103, column: 5, scope: !659)
!666 = !DILocation(line: 105, column: 24, scope: !667)
!667 = distinct !DILexicalBlock(scope: !662, file: !3, line: 104, column: 5)
!668 = !DILocation(line: 105, column: 30, scope: !667)
!669 = !DILocation(line: 105, column: 9, scope: !667)
!670 = !DILocation(line: 106, column: 5, scope: !667)
!671 = !DILocation(line: 103, column: 31, scope: !662)
!672 = !DILocation(line: 103, column: 5, scope: !662)
!673 = distinct !{!673, !665, !674, !382}
!674 = !DILocation(line: 106, column: 5, scope: !659)
!675 = !DILocation(line: 107, column: 5, scope: !648)
!676 = !DILocation(line: 108, column: 1, scope: !648)
!677 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !678, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!678 = !DISubroutineType(types: !679)
!679 = !{!572, !651, !572, !42}
!680 = !DILocalVariable(name: "bytes", arg: 1, scope: !677, file: !3, line: 113, type: !651)
!681 = !DILocation(line: 113, column: 39, scope: !677)
!682 = !DILocalVariable(name: "numBytes", arg: 2, scope: !677, file: !3, line: 113, type: !572)
!683 = !DILocation(line: 113, column: 53, scope: !677)
!684 = !DILocalVariable(name: "hex", arg: 3, scope: !677, file: !3, line: 113, type: !42)
!685 = !DILocation(line: 113, column: 71, scope: !677)
!686 = !DILocalVariable(name: "numWritten", scope: !677, file: !3, line: 115, type: !572)
!687 = !DILocation(line: 115, column: 12, scope: !677)
!688 = !DILocation(line: 121, column: 5, scope: !677)
!689 = !DILocation(line: 121, column: 12, scope: !677)
!690 = !DILocation(line: 121, column: 25, scope: !677)
!691 = !DILocation(line: 121, column: 23, scope: !677)
!692 = !DILocation(line: 121, column: 34, scope: !677)
!693 = !DILocation(line: 121, column: 37, scope: !677)
!694 = !DILocation(line: 121, column: 67, scope: !677)
!695 = !DILocation(line: 121, column: 70, scope: !677)
!696 = !DILocation(line: 0, scope: !677)
!697 = !DILocalVariable(name: "byte", scope: !698, file: !3, line: 123, type: !23)
!698 = distinct !DILexicalBlock(scope: !677, file: !3, line: 122, column: 5)
!699 = !DILocation(line: 123, column: 13, scope: !698)
!700 = !DILocation(line: 124, column: 17, scope: !698)
!701 = !DILocation(line: 124, column: 25, scope: !698)
!702 = !DILocation(line: 124, column: 23, scope: !698)
!703 = !DILocation(line: 124, column: 9, scope: !698)
!704 = !DILocation(line: 125, column: 45, scope: !698)
!705 = !DILocation(line: 125, column: 29, scope: !698)
!706 = !DILocation(line: 125, column: 9, scope: !698)
!707 = !DILocation(line: 125, column: 15, scope: !698)
!708 = !DILocation(line: 125, column: 27, scope: !698)
!709 = !DILocation(line: 126, column: 9, scope: !698)
!710 = distinct !{!710, !688, !711, !382}
!711 = !DILocation(line: 127, column: 5, scope: !677)
!712 = !DILocation(line: 129, column: 12, scope: !677)
!713 = !DILocation(line: 129, column: 5, scope: !677)
!714 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !715, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!715 = !DISubroutineType(types: !716)
!716 = !{!572, !651, !572, !509}
!717 = !DILocalVariable(name: "bytes", arg: 1, scope: !714, file: !3, line: 135, type: !651)
!718 = !DILocation(line: 135, column: 41, scope: !714)
!719 = !DILocalVariable(name: "numBytes", arg: 2, scope: !714, file: !3, line: 135, type: !572)
!720 = !DILocation(line: 135, column: 55, scope: !714)
!721 = !DILocalVariable(name: "hex", arg: 3, scope: !714, file: !3, line: 135, type: !509)
!722 = !DILocation(line: 135, column: 76, scope: !714)
!723 = !DILocalVariable(name: "numWritten", scope: !714, file: !3, line: 137, type: !572)
!724 = !DILocation(line: 137, column: 12, scope: !714)
!725 = !DILocation(line: 143, column: 5, scope: !714)
!726 = !DILocation(line: 143, column: 12, scope: !714)
!727 = !DILocation(line: 143, column: 25, scope: !714)
!728 = !DILocation(line: 143, column: 23, scope: !714)
!729 = !DILocation(line: 143, column: 34, scope: !714)
!730 = !DILocation(line: 143, column: 47, scope: !714)
!731 = !DILocation(line: 143, column: 55, scope: !714)
!732 = !DILocation(line: 143, column: 53, scope: !714)
!733 = !DILocation(line: 143, column: 37, scope: !714)
!734 = !DILocation(line: 143, column: 68, scope: !714)
!735 = !DILocation(line: 143, column: 81, scope: !714)
!736 = !DILocation(line: 143, column: 89, scope: !714)
!737 = !DILocation(line: 143, column: 87, scope: !714)
!738 = !DILocation(line: 143, column: 100, scope: !714)
!739 = !DILocation(line: 143, column: 71, scope: !714)
!740 = !DILocation(line: 0, scope: !714)
!741 = !DILocalVariable(name: "byte", scope: !742, file: !3, line: 145, type: !23)
!742 = distinct !DILexicalBlock(scope: !714, file: !3, line: 144, column: 5)
!743 = !DILocation(line: 145, column: 13, scope: !742)
!744 = !DILocation(line: 146, column: 18, scope: !742)
!745 = !DILocation(line: 146, column: 26, scope: !742)
!746 = !DILocation(line: 146, column: 24, scope: !742)
!747 = !DILocation(line: 146, column: 9, scope: !742)
!748 = !DILocation(line: 147, column: 45, scope: !742)
!749 = !DILocation(line: 147, column: 29, scope: !742)
!750 = !DILocation(line: 147, column: 9, scope: !742)
!751 = !DILocation(line: 147, column: 15, scope: !742)
!752 = !DILocation(line: 147, column: 27, scope: !742)
!753 = !DILocation(line: 148, column: 9, scope: !742)
!754 = distinct !{!754, !725, !755, !382}
!755 = !DILocation(line: 149, column: 5, scope: !714)
!756 = !DILocation(line: 151, column: 12, scope: !714)
!757 = !DILocation(line: 151, column: 5, scope: !714)
!758 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !759, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!759 = !DISubroutineType(types: !760)
!760 = !{!23}
!761 = !DILocation(line: 158, column: 5, scope: !758)
!762 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !759, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!763 = !DILocation(line: 163, column: 5, scope: !762)
!764 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !759, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!765 = !DILocation(line: 168, column: 13, scope: !764)
!766 = !DILocation(line: 168, column: 20, scope: !764)
!767 = !DILocation(line: 168, column: 5, scope: !764)
!768 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !115, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!769 = !DILocation(line: 187, column: 16, scope: !768)
!770 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !115, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!771 = !DILocation(line: 188, column: 16, scope: !770)
!772 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !115, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!773 = !DILocation(line: 189, column: 16, scope: !772)
!774 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !115, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!775 = !DILocation(line: 190, column: 16, scope: !774)
!776 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !115, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!777 = !DILocation(line: 191, column: 16, scope: !776)
!778 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !115, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!779 = !DILocation(line: 192, column: 16, scope: !778)
!780 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !115, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!781 = !DILocation(line: 193, column: 16, scope: !780)
!782 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !115, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!783 = !DILocation(line: 194, column: 16, scope: !782)
!784 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !115, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!785 = !DILocation(line: 195, column: 16, scope: !784)
!786 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !115, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!787 = !DILocation(line: 198, column: 15, scope: !786)
!788 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !115, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!789 = !DILocation(line: 199, column: 15, scope: !788)
!790 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !115, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!791 = !DILocation(line: 200, column: 15, scope: !790)
!792 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !115, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!793 = !DILocation(line: 201, column: 15, scope: !792)
!794 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !115, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!795 = !DILocation(line: 202, column: 15, scope: !794)
!796 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !115, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!797 = !DILocation(line: 203, column: 15, scope: !796)
!798 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !115, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!799 = !DILocation(line: 204, column: 15, scope: !798)
!800 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !115, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!801 = !DILocation(line: 205, column: 15, scope: !800)
!802 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !115, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!803 = !DILocation(line: 206, column: 15, scope: !802)
