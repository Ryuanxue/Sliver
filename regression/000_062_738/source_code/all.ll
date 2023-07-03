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
@.str.15 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52_bad() #0 !dbg !114 {
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
  %15 = load i32, i32* %data, align 4, !dbg !225
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52b_badSink(i32 %15), !dbg !226
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
  %0 = load i32, i32* %data, align 4, !dbg !233
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52b_goodG2BSink(i32 %0), !dbg !234
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
  %15 = load i32, i32* %data, align 4, !dbg !330
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52b_goodB2GSink(i32 %15), !dbg !331
  ret void, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52_good() #0 !dbg !333 {
entry:
  call void @goodG2B(), !dbg !334
  call void @goodB2G(), !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52b_badSink(i32 %data) #0 !dbg !337 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load i32, i32* %data.addr, align 4, !dbg !342
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52c_badSink(i32 %0), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52b_goodG2BSink(i32 %data) #0 !dbg !345 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !346, metadata !DIExpression()), !dbg !347
  %0 = load i32, i32* %data.addr, align 4, !dbg !348
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52c_goodG2BSink(i32 %0), !dbg !349
  ret void, !dbg !350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52b_goodB2GSink(i32 %data) #0 !dbg !351 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !352, metadata !DIExpression()), !dbg !353
  %0 = load i32, i32* %data.addr, align 4, !dbg !354
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52c_goodB2GSink(i32 %0), !dbg !355
  ret void, !dbg !356
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52c_badSink(i32 %data) #0 !dbg !357 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !358, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata i32* %i, metadata !360, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !363, metadata !DIExpression()), !dbg !367
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !367
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !367
  %1 = load i32, i32* %data.addr, align 4, !dbg !368
  %cmp = icmp sge i32 %1, 0, !dbg !370
  br i1 %cmp, label %if.then, label %if.else, !dbg !371

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !372
  %idxprom = sext i32 %2 to i64, !dbg !374
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !374
  store i32 1, i32* %arrayidx, align 4, !dbg !375
  store i32 0, i32* %i, align 4, !dbg !376
  br label %for.cond, !dbg !378

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !379
  %cmp1 = icmp slt i32 %3, 10, !dbg !381
  br i1 %cmp1, label %for.body, label %for.end, !dbg !382

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !383
  %idxprom2 = sext i32 %4 to i64, !dbg !385
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !385
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !385
  call void @printIntLine(i32 %5), !dbg !386
  br label %for.inc, !dbg !387

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !388
  %inc = add nsw i32 %6, 1, !dbg !388
  store i32 %inc, i32* %i, align 4, !dbg !388
  br label %for.cond, !dbg !389, !llvm.loop !390

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !393

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !394
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52c_goodG2BSink(i32 %data) #0 !dbg !397 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.declare(metadata i32* %i, metadata !400, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !404
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !404
  %1 = load i32, i32* %data.addr, align 4, !dbg !405
  %cmp = icmp sge i32 %1, 0, !dbg !407
  br i1 %cmp, label %if.then, label %if.else, !dbg !408

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !409
  %idxprom = sext i32 %2 to i64, !dbg !411
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !411
  store i32 1, i32* %arrayidx, align 4, !dbg !412
  store i32 0, i32* %i, align 4, !dbg !413
  br label %for.cond, !dbg !415

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !416
  %cmp1 = icmp slt i32 %3, 10, !dbg !418
  br i1 %cmp1, label %for.body, label %for.end, !dbg !419

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !420
  %idxprom2 = sext i32 %4 to i64, !dbg !422
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !422
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !422
  call void @printIntLine(i32 %5), !dbg !423
  br label %for.inc, !dbg !424

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !425
  %inc = add nsw i32 %6, 1, !dbg !425
  store i32 %inc, i32* %i, align 4, !dbg !425
  br label %for.cond, !dbg !426, !llvm.loop !427

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !429

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !430
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52c_goodB2GSink(i32 %data) #0 !dbg !433 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !434, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.declare(metadata i32* %i, metadata !436, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !439, metadata !DIExpression()), !dbg !440
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !440
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !440
  %1 = load i32, i32* %data.addr, align 4, !dbg !441
  %cmp = icmp sge i32 %1, 0, !dbg !443
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !444

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !445
  %cmp1 = icmp slt i32 %2, 10, !dbg !446
  br i1 %cmp1, label %if.then, label %if.else, !dbg !447

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !448
  %idxprom = sext i32 %3 to i64, !dbg !450
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !450
  store i32 1, i32* %arrayidx, align 4, !dbg !451
  store i32 0, i32* %i, align 4, !dbg !452
  br label %for.cond, !dbg !454

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !455
  %cmp2 = icmp slt i32 %4, 10, !dbg !457
  br i1 %cmp2, label %for.body, label %for.end, !dbg !458

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !459
  %idxprom3 = sext i32 %5 to i64, !dbg !461
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !461
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !461
  call void @printIntLine(i32 %6), !dbg !462
  br label %for.inc, !dbg !463

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !464
  %inc = add nsw i32 %7, 1, !dbg !464
  store i32 %inc, i32* %i, align 4, !dbg !464
  br label %for.cond, !dbg !465, !llvm.loop !466

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !468

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !469
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !472 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !475, metadata !DIExpression()), !dbg !476
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0)), !dbg !477
  %0 = load i8*, i8** %line.addr, align 8, !dbg !478
  %cmp = icmp ne i8* %0, null, !dbg !480
  br i1 %cmp, label %if.then, label %if.end, !dbg !481

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !482
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.16, i64 0, i64 0), i8* %1), !dbg !484
  br label %if.end, !dbg !485

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !486
  ret void, !dbg !487
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !488 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !489, metadata !DIExpression()), !dbg !490
  %0 = load i8*, i8** %line.addr, align 8, !dbg !491
  %cmp = icmp ne i8* %0, null, !dbg !493
  br i1 %cmp, label %if.then, label %if.end, !dbg !494

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !495
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.16, i64 0, i64 0), i8* %1), !dbg !497
  br label %if.end, !dbg !498

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !500 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load i32*, i32** %line.addr, align 8, !dbg !508
  %cmp = icmp ne i32* %0, null, !dbg !510
  br i1 %cmp, label %if.then, label %if.end, !dbg !511

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !512
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !514
  br label %if.end, !dbg !515

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !516
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !517 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !518, metadata !DIExpression()), !dbg !519
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !520
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !521
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !523 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !527, metadata !DIExpression()), !dbg !528
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !529
  %conv = sext i16 %0 to i32, !dbg !529
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !530
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !532 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !536, metadata !DIExpression()), !dbg !537
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !538
  %conv = fpext float %0 to double, !dbg !538
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !539
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !541 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !545, metadata !DIExpression()), !dbg !546
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !547
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !548
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !550 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !556, metadata !DIExpression()), !dbg !557
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !558
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !559
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !561 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !566, metadata !DIExpression()), !dbg !567
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !568
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !569
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !571 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !574, metadata !DIExpression()), !dbg !575
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !576
  %conv = sext i8 %0 to i32, !dbg !576
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !577
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !579 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !584, metadata !DIExpression()), !dbg !588
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !589
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !590
  store i32 %0, i32* %arrayidx, align 4, !dbg !591
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !592
  store i32 0, i32* %arrayidx1, align 4, !dbg !593
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !594
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !595
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !597 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !600, metadata !DIExpression()), !dbg !601
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !602
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !603
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !605 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !608, metadata !DIExpression()), !dbg !609
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !610
  %conv = zext i8 %0 to i32, !dbg !610
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !611
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !613 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !617, metadata !DIExpression()), !dbg !618
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !619
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !620
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !622 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !632, metadata !DIExpression()), !dbg !633
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !634
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !635
  %1 = load i32, i32* %intOne, align 4, !dbg !635
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !636
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !637
  %3 = load i32, i32* %intTwo, align 4, !dbg !637
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !638
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !640 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !644, metadata !DIExpression()), !dbg !645
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !646, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.declare(metadata i64* %i, metadata !648, metadata !DIExpression()), !dbg !649
  store i64 0, i64* %i, align 8, !dbg !650
  br label %for.cond, !dbg !652

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !653
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !655
  %cmp = icmp ult i64 %0, %1, !dbg !656
  br i1 %cmp, label %for.body, label %for.end, !dbg !657

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !658
  %3 = load i64, i64* %i, align 8, !dbg !660
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !658
  %4 = load i8, i8* %arrayidx, align 1, !dbg !658
  %conv = zext i8 %4 to i32, !dbg !658
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !661
  br label %for.inc, !dbg !662

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !663
  %inc = add i64 %5, 1, !dbg !663
  store i64 %inc, i64* %i, align 8, !dbg !663
  br label %for.cond, !dbg !664, !llvm.loop !665

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15.19, i64 0, i64 0)), !dbg !667
  ret void, !dbg !668
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !669 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !672, metadata !DIExpression()), !dbg !673
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !674, metadata !DIExpression()), !dbg !675
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !676, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !678, metadata !DIExpression()), !dbg !679
  store i64 0, i64* %numWritten, align 8, !dbg !679
  br label %while.cond, !dbg !680

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !681
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !682
  %cmp = icmp ult i64 %0, %1, !dbg !683
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !684

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !685
  %2 = load i16*, i16** %call, align 8, !dbg !685
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !685
  %4 = load i64, i64* %numWritten, align 8, !dbg !685
  %mul = mul i64 2, %4, !dbg !685
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !685
  %5 = load i8, i8* %arrayidx, align 1, !dbg !685
  %conv = sext i8 %5 to i32, !dbg !685
  %idxprom = sext i32 %conv to i64, !dbg !685
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !685
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !685
  %conv2 = zext i16 %6 to i32, !dbg !685
  %and = and i32 %conv2, 4096, !dbg !685
  %tobool = icmp ne i32 %and, 0, !dbg !685
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !686

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !687
  %7 = load i16*, i16** %call3, align 8, !dbg !687
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !687
  %9 = load i64, i64* %numWritten, align 8, !dbg !687
  %mul4 = mul i64 2, %9, !dbg !687
  %add = add i64 %mul4, 1, !dbg !687
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !687
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !687
  %conv6 = sext i8 %10 to i32, !dbg !687
  %idxprom7 = sext i32 %conv6 to i64, !dbg !687
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !687
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !687
  %conv9 = zext i16 %11 to i32, !dbg !687
  %and10 = and i32 %conv9, 4096, !dbg !687
  %tobool11 = icmp ne i32 %and10, 0, !dbg !686
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !688
  br i1 %12, label %while.body, label %while.end, !dbg !680

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !689, metadata !DIExpression()), !dbg !691
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !692
  %14 = load i64, i64* %numWritten, align 8, !dbg !693
  %mul12 = mul i64 2, %14, !dbg !694
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !692
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !695
  %15 = load i32, i32* %byte, align 4, !dbg !696
  %conv15 = trunc i32 %15 to i8, !dbg !697
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !698
  %17 = load i64, i64* %numWritten, align 8, !dbg !699
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !698
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !700
  %18 = load i64, i64* %numWritten, align 8, !dbg !701
  %inc = add i64 %18, 1, !dbg !701
  store i64 %inc, i64* %numWritten, align 8, !dbg !701
  br label %while.cond, !dbg !680, !llvm.loop !702

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !704
  ret i64 %19, !dbg !705
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !706 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !709, metadata !DIExpression()), !dbg !710
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !711, metadata !DIExpression()), !dbg !712
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !713, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !715, metadata !DIExpression()), !dbg !716
  store i64 0, i64* %numWritten, align 8, !dbg !716
  br label %while.cond, !dbg !717

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !718
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !719
  %cmp = icmp ult i64 %0, %1, !dbg !720
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !721

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !722
  %3 = load i64, i64* %numWritten, align 8, !dbg !723
  %mul = mul i64 2, %3, !dbg !724
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !722
  %4 = load i32, i32* %arrayidx, align 4, !dbg !722
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !725
  %tobool = icmp ne i32 %call, 0, !dbg !725
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !726

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !727
  %6 = load i64, i64* %numWritten, align 8, !dbg !728
  %mul1 = mul i64 2, %6, !dbg !729
  %add = add i64 %mul1, 1, !dbg !730
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !727
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !727
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !731
  %tobool4 = icmp ne i32 %call3, 0, !dbg !726
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !732
  br i1 %8, label %while.body, label %while.end, !dbg !717

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !733, metadata !DIExpression()), !dbg !735
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !736
  %10 = load i64, i64* %numWritten, align 8, !dbg !737
  %mul5 = mul i64 2, %10, !dbg !738
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !736
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !739
  %11 = load i32, i32* %byte, align 4, !dbg !740
  %conv = trunc i32 %11 to i8, !dbg !741
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !742
  %13 = load i64, i64* %numWritten, align 8, !dbg !743
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !742
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !744
  %14 = load i64, i64* %numWritten, align 8, !dbg !745
  %inc = add i64 %14, 1, !dbg !745
  store i64 %inc, i64* %numWritten, align 8, !dbg !745
  br label %while.cond, !dbg !717, !llvm.loop !746

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !748
  ret i64 %15, !dbg !749
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !750 {
entry:
  ret i32 1, !dbg !753
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !754 {
entry:
  ret i32 0, !dbg !755
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !756 {
entry:
  %call = call i32 @rand() #7, !dbg !757
  %rem = srem i32 %call, 2, !dbg !758
  ret i32 %rem, !dbg !759
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !760 {
entry:
  ret void, !dbg !761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !762 {
entry:
  ret void, !dbg !763
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !764 {
entry:
  ret void, !dbg !765
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !766 {
entry:
  ret void, !dbg !767
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !768 {
entry:
  ret void, !dbg !769
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !770 {
entry:
  ret void, !dbg !771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !772 {
entry:
  ret void, !dbg !773
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !774 {
entry:
  ret void, !dbg !775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !776 {
entry:
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !778 {
entry:
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !780 {
entry:
  ret void, !dbg !781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !782 {
entry:
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !784 {
entry:
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !786 {
entry:
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !788 {
entry:
  ret void, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !790 {
entry:
  ret void, !dbg !791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !792 {
entry:
  ret void, !dbg !793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !794 {
entry:
  ret void, !dbg !795
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

!llvm.dbg.cu = !{!44, !105, !108, !2}
!llvm.ident = !{!110, !110, !110, !110}
!llvm.module.flags = !{!111, !112, !113}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_738/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_738/source_code")
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
!106 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_738/source_code")
!107 = !{}
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_738/source_code")
!110 = !{!"clang version 12.0.0"}
!111 = !{i32 7, !"Dwarf Version", i32 4}
!112 = !{i32 2, !"Debug Info Version", i32 3}
!113 = !{i32 1, !"wchar_size", i32 4}
!114 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52_bad", scope: !45, file: !45, line: 47, type: !115, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
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
!333 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52_good", scope: !45, file: !45, line: 220, type: !115, scopeLine: 221, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!334 = !DILocation(line: 222, column: 5, scope: !333)
!335 = !DILocation(line: 223, column: 5, scope: !333)
!336 = !DILocation(line: 224, column: 1, scope: !333)
!337 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52b_badSink", scope: !106, file: !106, line: 47, type: !338, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !23}
!340 = !DILocalVariable(name: "data", arg: 1, scope: !337, file: !106, line: 47, type: !23)
!341 = !DILocation(line: 47, column: 79, scope: !337)
!342 = !DILocation(line: 49, column: 74, scope: !337)
!343 = !DILocation(line: 49, column: 5, scope: !337)
!344 = !DILocation(line: 50, column: 1, scope: !337)
!345 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52b_goodG2BSink", scope: !106, file: !106, line: 59, type: !338, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!346 = !DILocalVariable(name: "data", arg: 1, scope: !345, file: !106, line: 59, type: !23)
!347 = !DILocation(line: 59, column: 83, scope: !345)
!348 = !DILocation(line: 61, column: 78, scope: !345)
!349 = !DILocation(line: 61, column: 5, scope: !345)
!350 = !DILocation(line: 62, column: 1, scope: !345)
!351 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52b_goodB2GSink", scope: !106, file: !106, line: 67, type: !338, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!352 = !DILocalVariable(name: "data", arg: 1, scope: !351, file: !106, line: 67, type: !23)
!353 = !DILocation(line: 67, column: 83, scope: !351)
!354 = !DILocation(line: 69, column: 78, scope: !351)
!355 = !DILocation(line: 69, column: 5, scope: !351)
!356 = !DILocation(line: 70, column: 1, scope: !351)
!357 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52c_badSink", scope: !109, file: !109, line: 44, type: !338, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!358 = !DILocalVariable(name: "data", arg: 1, scope: !357, file: !109, line: 44, type: !23)
!359 = !DILocation(line: 44, column: 79, scope: !357)
!360 = !DILocalVariable(name: "i", scope: !361, file: !109, line: 47, type: !23)
!361 = distinct !DILexicalBlock(scope: !357, file: !109, line: 46, column: 5)
!362 = !DILocation(line: 47, column: 13, scope: !361)
!363 = !DILocalVariable(name: "buffer", scope: !361, file: !109, line: 48, type: !364)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 10)
!367 = !DILocation(line: 48, column: 13, scope: !361)
!368 = !DILocation(line: 51, column: 13, scope: !369)
!369 = distinct !DILexicalBlock(scope: !361, file: !109, line: 51, column: 13)
!370 = !DILocation(line: 51, column: 18, scope: !369)
!371 = !DILocation(line: 51, column: 13, scope: !361)
!372 = !DILocation(line: 53, column: 20, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !109, line: 52, column: 9)
!374 = !DILocation(line: 53, column: 13, scope: !373)
!375 = !DILocation(line: 53, column: 26, scope: !373)
!376 = !DILocation(line: 55, column: 19, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !109, line: 55, column: 13)
!378 = !DILocation(line: 55, column: 17, scope: !377)
!379 = !DILocation(line: 55, column: 24, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !109, line: 55, column: 13)
!381 = !DILocation(line: 55, column: 26, scope: !380)
!382 = !DILocation(line: 55, column: 13, scope: !377)
!383 = !DILocation(line: 57, column: 37, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !109, line: 56, column: 13)
!385 = !DILocation(line: 57, column: 30, scope: !384)
!386 = !DILocation(line: 57, column: 17, scope: !384)
!387 = !DILocation(line: 58, column: 13, scope: !384)
!388 = !DILocation(line: 55, column: 33, scope: !380)
!389 = !DILocation(line: 55, column: 13, scope: !380)
!390 = distinct !{!390, !382, !391, !392}
!391 = !DILocation(line: 58, column: 13, scope: !377)
!392 = !{!"llvm.loop.mustprogress"}
!393 = !DILocation(line: 59, column: 9, scope: !373)
!394 = !DILocation(line: 62, column: 13, scope: !395)
!395 = distinct !DILexicalBlock(scope: !369, file: !109, line: 61, column: 9)
!396 = !DILocation(line: 65, column: 1, scope: !357)
!397 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52c_goodG2BSink", scope: !109, file: !109, line: 72, type: !338, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!398 = !DILocalVariable(name: "data", arg: 1, scope: !397, file: !109, line: 72, type: !23)
!399 = !DILocation(line: 72, column: 83, scope: !397)
!400 = !DILocalVariable(name: "i", scope: !401, file: !109, line: 75, type: !23)
!401 = distinct !DILexicalBlock(scope: !397, file: !109, line: 74, column: 5)
!402 = !DILocation(line: 75, column: 13, scope: !401)
!403 = !DILocalVariable(name: "buffer", scope: !401, file: !109, line: 76, type: !364)
!404 = !DILocation(line: 76, column: 13, scope: !401)
!405 = !DILocation(line: 79, column: 13, scope: !406)
!406 = distinct !DILexicalBlock(scope: !401, file: !109, line: 79, column: 13)
!407 = !DILocation(line: 79, column: 18, scope: !406)
!408 = !DILocation(line: 79, column: 13, scope: !401)
!409 = !DILocation(line: 81, column: 20, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !109, line: 80, column: 9)
!411 = !DILocation(line: 81, column: 13, scope: !410)
!412 = !DILocation(line: 81, column: 26, scope: !410)
!413 = !DILocation(line: 83, column: 19, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !109, line: 83, column: 13)
!415 = !DILocation(line: 83, column: 17, scope: !414)
!416 = !DILocation(line: 83, column: 24, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !109, line: 83, column: 13)
!418 = !DILocation(line: 83, column: 26, scope: !417)
!419 = !DILocation(line: 83, column: 13, scope: !414)
!420 = !DILocation(line: 85, column: 37, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !109, line: 84, column: 13)
!422 = !DILocation(line: 85, column: 30, scope: !421)
!423 = !DILocation(line: 85, column: 17, scope: !421)
!424 = !DILocation(line: 86, column: 13, scope: !421)
!425 = !DILocation(line: 83, column: 33, scope: !417)
!426 = !DILocation(line: 83, column: 13, scope: !417)
!427 = distinct !{!427, !419, !428, !392}
!428 = !DILocation(line: 86, column: 13, scope: !414)
!429 = !DILocation(line: 87, column: 9, scope: !410)
!430 = !DILocation(line: 90, column: 13, scope: !431)
!431 = distinct !DILexicalBlock(scope: !406, file: !109, line: 89, column: 9)
!432 = !DILocation(line: 93, column: 1, scope: !397)
!433 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_52c_goodB2GSink", scope: !109, file: !109, line: 96, type: !338, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!434 = !DILocalVariable(name: "data", arg: 1, scope: !433, file: !109, line: 96, type: !23)
!435 = !DILocation(line: 96, column: 83, scope: !433)
!436 = !DILocalVariable(name: "i", scope: !437, file: !109, line: 99, type: !23)
!437 = distinct !DILexicalBlock(scope: !433, file: !109, line: 98, column: 5)
!438 = !DILocation(line: 99, column: 13, scope: !437)
!439 = !DILocalVariable(name: "buffer", scope: !437, file: !109, line: 100, type: !364)
!440 = !DILocation(line: 100, column: 13, scope: !437)
!441 = !DILocation(line: 102, column: 13, scope: !442)
!442 = distinct !DILexicalBlock(scope: !437, file: !109, line: 102, column: 13)
!443 = !DILocation(line: 102, column: 18, scope: !442)
!444 = !DILocation(line: 102, column: 23, scope: !442)
!445 = !DILocation(line: 102, column: 26, scope: !442)
!446 = !DILocation(line: 102, column: 31, scope: !442)
!447 = !DILocation(line: 102, column: 13, scope: !437)
!448 = !DILocation(line: 104, column: 20, scope: !449)
!449 = distinct !DILexicalBlock(scope: !442, file: !109, line: 103, column: 9)
!450 = !DILocation(line: 104, column: 13, scope: !449)
!451 = !DILocation(line: 104, column: 26, scope: !449)
!452 = !DILocation(line: 106, column: 19, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !109, line: 106, column: 13)
!454 = !DILocation(line: 106, column: 17, scope: !453)
!455 = !DILocation(line: 106, column: 24, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !109, line: 106, column: 13)
!457 = !DILocation(line: 106, column: 26, scope: !456)
!458 = !DILocation(line: 106, column: 13, scope: !453)
!459 = !DILocation(line: 108, column: 37, scope: !460)
!460 = distinct !DILexicalBlock(scope: !456, file: !109, line: 107, column: 13)
!461 = !DILocation(line: 108, column: 30, scope: !460)
!462 = !DILocation(line: 108, column: 17, scope: !460)
!463 = !DILocation(line: 109, column: 13, scope: !460)
!464 = !DILocation(line: 106, column: 33, scope: !456)
!465 = !DILocation(line: 106, column: 13, scope: !456)
!466 = distinct !{!466, !458, !467, !392}
!467 = !DILocation(line: 109, column: 13, scope: !453)
!468 = !DILocation(line: 110, column: 9, scope: !449)
!469 = !DILocation(line: 113, column: 13, scope: !470)
!470 = distinct !DILexicalBlock(scope: !442, file: !109, line: 112, column: 9)
!471 = !DILocation(line: 116, column: 1, scope: !433)
!472 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !473, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !42}
!475 = !DILocalVariable(name: "line", arg: 1, scope: !472, file: !3, line: 11, type: !42)
!476 = !DILocation(line: 11, column: 25, scope: !472)
!477 = !DILocation(line: 13, column: 1, scope: !472)
!478 = !DILocation(line: 14, column: 8, scope: !479)
!479 = distinct !DILexicalBlock(scope: !472, file: !3, line: 14, column: 8)
!480 = !DILocation(line: 14, column: 13, scope: !479)
!481 = !DILocation(line: 14, column: 8, scope: !472)
!482 = !DILocation(line: 16, column: 24, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !3, line: 15, column: 5)
!484 = !DILocation(line: 16, column: 9, scope: !483)
!485 = !DILocation(line: 17, column: 5, scope: !483)
!486 = !DILocation(line: 18, column: 5, scope: !472)
!487 = !DILocation(line: 19, column: 1, scope: !472)
!488 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !473, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!489 = !DILocalVariable(name: "line", arg: 1, scope: !488, file: !3, line: 20, type: !42)
!490 = !DILocation(line: 20, column: 29, scope: !488)
!491 = !DILocation(line: 22, column: 8, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !3, line: 22, column: 8)
!493 = !DILocation(line: 22, column: 13, scope: !492)
!494 = !DILocation(line: 22, column: 8, scope: !488)
!495 = !DILocation(line: 24, column: 24, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !3, line: 23, column: 5)
!497 = !DILocation(line: 24, column: 9, scope: !496)
!498 = !DILocation(line: 25, column: 5, scope: !496)
!499 = !DILocation(line: 26, column: 1, scope: !488)
!500 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !501, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !503}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !505, line: 74, baseType: !23)
!505 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!506 = !DILocalVariable(name: "line", arg: 1, scope: !500, file: !3, line: 27, type: !503)
!507 = !DILocation(line: 27, column: 29, scope: !500)
!508 = !DILocation(line: 29, column: 8, scope: !509)
!509 = distinct !DILexicalBlock(scope: !500, file: !3, line: 29, column: 8)
!510 = !DILocation(line: 29, column: 13, scope: !509)
!511 = !DILocation(line: 29, column: 8, scope: !500)
!512 = !DILocation(line: 31, column: 27, scope: !513)
!513 = distinct !DILexicalBlock(scope: !509, file: !3, line: 30, column: 5)
!514 = !DILocation(line: 31, column: 9, scope: !513)
!515 = !DILocation(line: 32, column: 5, scope: !513)
!516 = !DILocation(line: 33, column: 1, scope: !500)
!517 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !338, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!518 = !DILocalVariable(name: "intNumber", arg: 1, scope: !517, file: !3, line: 35, type: !23)
!519 = !DILocation(line: 35, column: 24, scope: !517)
!520 = !DILocation(line: 37, column: 20, scope: !517)
!521 = !DILocation(line: 37, column: 5, scope: !517)
!522 = !DILocation(line: 38, column: 1, scope: !517)
!523 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !524, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !526}
!526 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!527 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !523, file: !3, line: 40, type: !526)
!528 = !DILocation(line: 40, column: 28, scope: !523)
!529 = !DILocation(line: 42, column: 21, scope: !523)
!530 = !DILocation(line: 42, column: 5, scope: !523)
!531 = !DILocation(line: 43, column: 1, scope: !523)
!532 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !533, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !535}
!535 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!536 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !532, file: !3, line: 45, type: !535)
!537 = !DILocation(line: 45, column: 28, scope: !532)
!538 = !DILocation(line: 47, column: 20, scope: !532)
!539 = !DILocation(line: 47, column: 5, scope: !532)
!540 = !DILocation(line: 48, column: 1, scope: !532)
!541 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !542, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !544}
!544 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!545 = !DILocalVariable(name: "longNumber", arg: 1, scope: !541, file: !3, line: 50, type: !544)
!546 = !DILocation(line: 50, column: 26, scope: !541)
!547 = !DILocation(line: 52, column: 21, scope: !541)
!548 = !DILocation(line: 52, column: 5, scope: !541)
!549 = !DILocation(line: 53, column: 1, scope: !541)
!550 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !551, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !553}
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !554, line: 27, baseType: !555)
!554 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !544)
!556 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !550, file: !3, line: 55, type: !553)
!557 = !DILocation(line: 55, column: 33, scope: !550)
!558 = !DILocation(line: 57, column: 29, scope: !550)
!559 = !DILocation(line: 57, column: 5, scope: !550)
!560 = !DILocation(line: 58, column: 1, scope: !550)
!561 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !562, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !564}
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !505, line: 46, baseType: !565)
!565 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!566 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !561, file: !3, line: 60, type: !564)
!567 = !DILocation(line: 60, column: 29, scope: !561)
!568 = !DILocation(line: 62, column: 21, scope: !561)
!569 = !DILocation(line: 62, column: 5, scope: !561)
!570 = !DILocation(line: 63, column: 1, scope: !561)
!571 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !572, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !43}
!574 = !DILocalVariable(name: "charHex", arg: 1, scope: !571, file: !3, line: 65, type: !43)
!575 = !DILocation(line: 65, column: 29, scope: !571)
!576 = !DILocation(line: 67, column: 22, scope: !571)
!577 = !DILocation(line: 67, column: 5, scope: !571)
!578 = !DILocation(line: 68, column: 1, scope: !571)
!579 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !580, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !504}
!582 = !DILocalVariable(name: "wideChar", arg: 1, scope: !579, file: !3, line: 70, type: !504)
!583 = !DILocation(line: 70, column: 29, scope: !579)
!584 = !DILocalVariable(name: "s", scope: !579, file: !3, line: 74, type: !585)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 64, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 2)
!588 = !DILocation(line: 74, column: 13, scope: !579)
!589 = !DILocation(line: 75, column: 16, scope: !579)
!590 = !DILocation(line: 75, column: 9, scope: !579)
!591 = !DILocation(line: 75, column: 14, scope: !579)
!592 = !DILocation(line: 76, column: 9, scope: !579)
!593 = !DILocation(line: 76, column: 14, scope: !579)
!594 = !DILocation(line: 77, column: 21, scope: !579)
!595 = !DILocation(line: 77, column: 5, scope: !579)
!596 = !DILocation(line: 78, column: 1, scope: !579)
!597 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !598, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !7}
!600 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !597, file: !3, line: 80, type: !7)
!601 = !DILocation(line: 80, column: 33, scope: !597)
!602 = !DILocation(line: 82, column: 20, scope: !597)
!603 = !DILocation(line: 82, column: 5, scope: !597)
!604 = !DILocation(line: 83, column: 1, scope: !597)
!605 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !606, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !25}
!608 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !605, file: !3, line: 85, type: !25)
!609 = !DILocation(line: 85, column: 45, scope: !605)
!610 = !DILocation(line: 87, column: 22, scope: !605)
!611 = !DILocation(line: 87, column: 5, scope: !605)
!612 = !DILocation(line: 88, column: 1, scope: !605)
!613 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !614, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !616}
!616 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!617 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !613, file: !3, line: 90, type: !616)
!618 = !DILocation(line: 90, column: 29, scope: !613)
!619 = !DILocation(line: 92, column: 20, scope: !613)
!620 = !DILocation(line: 92, column: 5, scope: !613)
!621 = !DILocation(line: 93, column: 1, scope: !613)
!622 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !623, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !627, line: 100, baseType: !628)
!627 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_738/source_code")
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !627, line: 96, size: 64, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !628, file: !627, line: 98, baseType: !23, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !628, file: !627, line: 99, baseType: !23, size: 32, offset: 32)
!632 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !622, file: !3, line: 95, type: !625)
!633 = !DILocation(line: 95, column: 40, scope: !622)
!634 = !DILocation(line: 97, column: 26, scope: !622)
!635 = !DILocation(line: 97, column: 47, scope: !622)
!636 = !DILocation(line: 97, column: 55, scope: !622)
!637 = !DILocation(line: 97, column: 76, scope: !622)
!638 = !DILocation(line: 97, column: 5, scope: !622)
!639 = !DILocation(line: 98, column: 1, scope: !622)
!640 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !641, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !643, !564}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!644 = !DILocalVariable(name: "bytes", arg: 1, scope: !640, file: !3, line: 100, type: !643)
!645 = !DILocation(line: 100, column: 38, scope: !640)
!646 = !DILocalVariable(name: "numBytes", arg: 2, scope: !640, file: !3, line: 100, type: !564)
!647 = !DILocation(line: 100, column: 52, scope: !640)
!648 = !DILocalVariable(name: "i", scope: !640, file: !3, line: 102, type: !564)
!649 = !DILocation(line: 102, column: 12, scope: !640)
!650 = !DILocation(line: 103, column: 12, scope: !651)
!651 = distinct !DILexicalBlock(scope: !640, file: !3, line: 103, column: 5)
!652 = !DILocation(line: 103, column: 10, scope: !651)
!653 = !DILocation(line: 103, column: 17, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !3, line: 103, column: 5)
!655 = !DILocation(line: 103, column: 21, scope: !654)
!656 = !DILocation(line: 103, column: 19, scope: !654)
!657 = !DILocation(line: 103, column: 5, scope: !651)
!658 = !DILocation(line: 105, column: 24, scope: !659)
!659 = distinct !DILexicalBlock(scope: !654, file: !3, line: 104, column: 5)
!660 = !DILocation(line: 105, column: 30, scope: !659)
!661 = !DILocation(line: 105, column: 9, scope: !659)
!662 = !DILocation(line: 106, column: 5, scope: !659)
!663 = !DILocation(line: 103, column: 31, scope: !654)
!664 = !DILocation(line: 103, column: 5, scope: !654)
!665 = distinct !{!665, !657, !666, !392}
!666 = !DILocation(line: 106, column: 5, scope: !651)
!667 = !DILocation(line: 107, column: 5, scope: !640)
!668 = !DILocation(line: 108, column: 1, scope: !640)
!669 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !670, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!670 = !DISubroutineType(types: !671)
!671 = !{!564, !643, !564, !42}
!672 = !DILocalVariable(name: "bytes", arg: 1, scope: !669, file: !3, line: 113, type: !643)
!673 = !DILocation(line: 113, column: 39, scope: !669)
!674 = !DILocalVariable(name: "numBytes", arg: 2, scope: !669, file: !3, line: 113, type: !564)
!675 = !DILocation(line: 113, column: 53, scope: !669)
!676 = !DILocalVariable(name: "hex", arg: 3, scope: !669, file: !3, line: 113, type: !42)
!677 = !DILocation(line: 113, column: 71, scope: !669)
!678 = !DILocalVariable(name: "numWritten", scope: !669, file: !3, line: 115, type: !564)
!679 = !DILocation(line: 115, column: 12, scope: !669)
!680 = !DILocation(line: 121, column: 5, scope: !669)
!681 = !DILocation(line: 121, column: 12, scope: !669)
!682 = !DILocation(line: 121, column: 25, scope: !669)
!683 = !DILocation(line: 121, column: 23, scope: !669)
!684 = !DILocation(line: 121, column: 34, scope: !669)
!685 = !DILocation(line: 121, column: 37, scope: !669)
!686 = !DILocation(line: 121, column: 67, scope: !669)
!687 = !DILocation(line: 121, column: 70, scope: !669)
!688 = !DILocation(line: 0, scope: !669)
!689 = !DILocalVariable(name: "byte", scope: !690, file: !3, line: 123, type: !23)
!690 = distinct !DILexicalBlock(scope: !669, file: !3, line: 122, column: 5)
!691 = !DILocation(line: 123, column: 13, scope: !690)
!692 = !DILocation(line: 124, column: 17, scope: !690)
!693 = !DILocation(line: 124, column: 25, scope: !690)
!694 = !DILocation(line: 124, column: 23, scope: !690)
!695 = !DILocation(line: 124, column: 9, scope: !690)
!696 = !DILocation(line: 125, column: 45, scope: !690)
!697 = !DILocation(line: 125, column: 29, scope: !690)
!698 = !DILocation(line: 125, column: 9, scope: !690)
!699 = !DILocation(line: 125, column: 15, scope: !690)
!700 = !DILocation(line: 125, column: 27, scope: !690)
!701 = !DILocation(line: 126, column: 9, scope: !690)
!702 = distinct !{!702, !680, !703, !392}
!703 = !DILocation(line: 127, column: 5, scope: !669)
!704 = !DILocation(line: 129, column: 12, scope: !669)
!705 = !DILocation(line: 129, column: 5, scope: !669)
!706 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !707, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!707 = !DISubroutineType(types: !708)
!708 = !{!564, !643, !564, !503}
!709 = !DILocalVariable(name: "bytes", arg: 1, scope: !706, file: !3, line: 135, type: !643)
!710 = !DILocation(line: 135, column: 41, scope: !706)
!711 = !DILocalVariable(name: "numBytes", arg: 2, scope: !706, file: !3, line: 135, type: !564)
!712 = !DILocation(line: 135, column: 55, scope: !706)
!713 = !DILocalVariable(name: "hex", arg: 3, scope: !706, file: !3, line: 135, type: !503)
!714 = !DILocation(line: 135, column: 76, scope: !706)
!715 = !DILocalVariable(name: "numWritten", scope: !706, file: !3, line: 137, type: !564)
!716 = !DILocation(line: 137, column: 12, scope: !706)
!717 = !DILocation(line: 143, column: 5, scope: !706)
!718 = !DILocation(line: 143, column: 12, scope: !706)
!719 = !DILocation(line: 143, column: 25, scope: !706)
!720 = !DILocation(line: 143, column: 23, scope: !706)
!721 = !DILocation(line: 143, column: 34, scope: !706)
!722 = !DILocation(line: 143, column: 47, scope: !706)
!723 = !DILocation(line: 143, column: 55, scope: !706)
!724 = !DILocation(line: 143, column: 53, scope: !706)
!725 = !DILocation(line: 143, column: 37, scope: !706)
!726 = !DILocation(line: 143, column: 68, scope: !706)
!727 = !DILocation(line: 143, column: 81, scope: !706)
!728 = !DILocation(line: 143, column: 89, scope: !706)
!729 = !DILocation(line: 143, column: 87, scope: !706)
!730 = !DILocation(line: 143, column: 100, scope: !706)
!731 = !DILocation(line: 143, column: 71, scope: !706)
!732 = !DILocation(line: 0, scope: !706)
!733 = !DILocalVariable(name: "byte", scope: !734, file: !3, line: 145, type: !23)
!734 = distinct !DILexicalBlock(scope: !706, file: !3, line: 144, column: 5)
!735 = !DILocation(line: 145, column: 13, scope: !734)
!736 = !DILocation(line: 146, column: 18, scope: !734)
!737 = !DILocation(line: 146, column: 26, scope: !734)
!738 = !DILocation(line: 146, column: 24, scope: !734)
!739 = !DILocation(line: 146, column: 9, scope: !734)
!740 = !DILocation(line: 147, column: 45, scope: !734)
!741 = !DILocation(line: 147, column: 29, scope: !734)
!742 = !DILocation(line: 147, column: 9, scope: !734)
!743 = !DILocation(line: 147, column: 15, scope: !734)
!744 = !DILocation(line: 147, column: 27, scope: !734)
!745 = !DILocation(line: 148, column: 9, scope: !734)
!746 = distinct !{!746, !717, !747, !392}
!747 = !DILocation(line: 149, column: 5, scope: !706)
!748 = !DILocation(line: 151, column: 12, scope: !706)
!749 = !DILocation(line: 151, column: 5, scope: !706)
!750 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !751, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!751 = !DISubroutineType(types: !752)
!752 = !{!23}
!753 = !DILocation(line: 158, column: 5, scope: !750)
!754 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !751, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!755 = !DILocation(line: 163, column: 5, scope: !754)
!756 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !751, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!757 = !DILocation(line: 168, column: 13, scope: !756)
!758 = !DILocation(line: 168, column: 20, scope: !756)
!759 = !DILocation(line: 168, column: 5, scope: !756)
!760 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !115, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!761 = !DILocation(line: 187, column: 16, scope: !760)
!762 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !115, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!763 = !DILocation(line: 188, column: 16, scope: !762)
!764 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !115, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!765 = !DILocation(line: 189, column: 16, scope: !764)
!766 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !115, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!767 = !DILocation(line: 190, column: 16, scope: !766)
!768 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !115, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!769 = !DILocation(line: 191, column: 16, scope: !768)
!770 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !115, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!771 = !DILocation(line: 192, column: 16, scope: !770)
!772 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !115, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!773 = !DILocation(line: 193, column: 16, scope: !772)
!774 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !115, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!775 = !DILocation(line: 194, column: 16, scope: !774)
!776 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !115, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!777 = !DILocation(line: 195, column: 16, scope: !776)
!778 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !115, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!779 = !DILocation(line: 198, column: 15, scope: !778)
!780 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !115, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!781 = !DILocation(line: 199, column: 15, scope: !780)
!782 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !115, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!783 = !DILocation(line: 200, column: 15, scope: !782)
!784 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !115, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!785 = !DILocation(line: 201, column: 15, scope: !784)
!786 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !115, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!787 = !DILocation(line: 202, column: 15, scope: !786)
!788 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !115, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!789 = !DILocation(line: 203, column: 15, scope: !788)
!790 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !115, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!791 = !DILocation(line: 204, column: 15, scope: !790)
!792 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !115, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!793 = !DILocation(line: 205, column: 15, scope: !792)
!794 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !115, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!795 = !DILocation(line: 206, column: 15, scope: !794)
