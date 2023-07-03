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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65_bad() #0 !dbg !112 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !117, metadata !DIExpression()), !dbg !121
  store void (i32)* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink, void (i32)** %funcPtr, align 8, !dbg !121
  store i32 -1, i32* %data, align 4, !dbg !122
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !123, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !126, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !143, metadata !DIExpression()), !dbg !144
  store i32 -1, i32* %listenSocket, align 4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !145, metadata !DIExpression()), !dbg !146
  store i32 -1, i32* %acceptSocket, align 4, !dbg !146
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !147, metadata !DIExpression()), !dbg !148
  br label %do.body, !dbg !149

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !150
  store i32 %call, i32* %listenSocket, align 4, !dbg !152
  %0 = load i32, i32* %listenSocket, align 4, !dbg !153
  %cmp = icmp eq i32 %0, -1, !dbg !155
  br i1 %cmp, label %if.then, label %if.end, !dbg !156

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !157

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !159
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !159
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !160
  store i16 2, i16* %sin_family, align 4, !dbg !161
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !162
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !163
  store i32 0, i32* %s_addr, align 4, !dbg !164
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !165
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !166
  store i16 %call1, i16* %sin_port, align 2, !dbg !167
  %2 = load i32, i32* %listenSocket, align 4, !dbg !168
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !170
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !171
  %cmp3 = icmp eq i32 %call2, -1, !dbg !172
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !173

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !174

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !176
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !178
  %cmp7 = icmp eq i32 %call6, -1, !dbg !179
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !180

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !181

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !183
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !184
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !185
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !186
  %cmp11 = icmp eq i32 %6, -1, !dbg !188
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !189

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !190

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !192
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !193
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !194
  %conv = trunc i64 %call14 to i32, !dbg !194
  store i32 %conv, i32* %recvResult, align 4, !dbg !195
  %8 = load i32, i32* %recvResult, align 4, !dbg !196
  %cmp15 = icmp eq i32 %8, -1, !dbg !198
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !199

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !200
  %cmp17 = icmp eq i32 %9, 0, !dbg !201
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !202

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !203

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !205
  %idxprom = sext i32 %10 to i64, !dbg !206
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !206
  store i8 0, i8* %arrayidx, align 1, !dbg !207
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !208
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !209
  store i32 %call22, i32* %data, align 4, !dbg !210
  br label %do.end, !dbg !211

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !212
  %cmp23 = icmp ne i32 %11, -1, !dbg !214
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !215

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !216
  %call26 = call i32 @close(i32 %12), !dbg !218
  br label %if.end27, !dbg !219

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !220
  %cmp28 = icmp ne i32 %13, -1, !dbg !222
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !223

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !224
  %call31 = call i32 @close(i32 %14), !dbg !226
  br label %if.end32, !dbg !227

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !228
  %16 = load i32, i32* %data, align 4, !dbg !229
  call void %15(i32 %16), !dbg !228
  ret void, !dbg !230
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
define dso_local void @goodG2B() #0 !dbg !231 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  call void @llvm.dbg.declare(metadata i32* %data, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !234, metadata !DIExpression()), !dbg !235
  store void (i32)* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_goodG2BSink, void (i32)** %funcPtr, align 8, !dbg !235
  store i32 -1, i32* %data, align 4, !dbg !236
  store i32 7, i32* %data, align 4, !dbg !237
  %0 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !238
  %1 = load i32, i32* %data, align 4, !dbg !239
  call void %0(i32 %1), !dbg !238
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !241 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !244, metadata !DIExpression()), !dbg !245
  store void (i32)* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_goodB2GSink, void (i32)** %funcPtr, align 8, !dbg !245
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
  %15 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !337
  %16 = load i32, i32* %data, align 4, !dbg !338
  call void %15(i32 %16), !dbg !337
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65_good() #0 !dbg !340 {
entry:
  call void @goodG2B(), !dbg !341
  call void @goodB2G(), !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink(i32 %data) #0 !dbg !344 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata i32* %i, metadata !347, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !350, metadata !DIExpression()), !dbg !354
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !354
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !354
  %1 = load i32, i32* %data.addr, align 4, !dbg !355
  %cmp = icmp sge i32 %1, 0, !dbg !357
  br i1 %cmp, label %if.then, label %if.else, !dbg !358

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !359
  %idxprom = sext i32 %2 to i64, !dbg !361
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !361
  store i32 1, i32* %arrayidx, align 4, !dbg !362
  store i32 0, i32* %i, align 4, !dbg !363
  br label %for.cond, !dbg !365

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !366
  %cmp1 = icmp slt i32 %3, 10, !dbg !368
  br i1 %cmp1, label %for.body, label %for.end, !dbg !369

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !370
  %idxprom2 = sext i32 %4 to i64, !dbg !372
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !372
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !372
  call void @printIntLine(i32 %5), !dbg !373
  br label %for.inc, !dbg !374

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !375
  %inc = add nsw i32 %6, 1, !dbg !375
  store i32 %inc, i32* %i, align 4, !dbg !375
  br label %for.cond, !dbg !376, !llvm.loop !377

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !380

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !381
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_goodG2BSink(i32 %data) #0 !dbg !384 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata i32* %i, metadata !387, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !391
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !391
  %1 = load i32, i32* %data.addr, align 4, !dbg !392
  %cmp = icmp sge i32 %1, 0, !dbg !394
  br i1 %cmp, label %if.then, label %if.else, !dbg !395

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !396
  %idxprom = sext i32 %2 to i64, !dbg !398
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !398
  store i32 1, i32* %arrayidx, align 4, !dbg !399
  store i32 0, i32* %i, align 4, !dbg !400
  br label %for.cond, !dbg !402

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !403
  %cmp1 = icmp slt i32 %3, 10, !dbg !405
  br i1 %cmp1, label %for.body, label %for.end, !dbg !406

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !407
  %idxprom2 = sext i32 %4 to i64, !dbg !409
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !409
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !409
  call void @printIntLine(i32 %5), !dbg !410
  br label %for.inc, !dbg !411

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !412
  %inc = add nsw i32 %6, 1, !dbg !412
  store i32 %inc, i32* %i, align 4, !dbg !412
  br label %for.cond, !dbg !413, !llvm.loop !414

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !416

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !417
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_goodB2GSink(i32 %data) #0 !dbg !420 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !421, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.declare(metadata i32* %i, metadata !423, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !427
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !427
  %1 = load i32, i32* %data.addr, align 4, !dbg !428
  %cmp = icmp sge i32 %1, 0, !dbg !430
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !431

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !432
  %cmp1 = icmp slt i32 %2, 10, !dbg !433
  br i1 %cmp1, label %if.then, label %if.else, !dbg !434

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !435
  %idxprom = sext i32 %3 to i64, !dbg !437
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !437
  store i32 1, i32* %arrayidx, align 4, !dbg !438
  store i32 0, i32* %i, align 4, !dbg !439
  br label %for.cond, !dbg !441

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !442
  %cmp2 = icmp slt i32 %4, 10, !dbg !444
  br i1 %cmp2, label %for.body, label %for.end, !dbg !445

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !446
  %idxprom3 = sext i32 %5 to i64, !dbg !448
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !448
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !448
  call void @printIntLine(i32 %6), !dbg !449
  br label %for.inc, !dbg !450

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !451
  %inc = add nsw i32 %7, 1, !dbg !451
  store i32 %inc, i32* %i, align 4, !dbg !451
  br label %for.cond, !dbg !452, !llvm.loop !453

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !455

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !456
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !459 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !462, metadata !DIExpression()), !dbg !463
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !dbg !464
  %0 = load i8*, i8** %line.addr, align 8, !dbg !465
  %cmp = icmp ne i8* %0, null, !dbg !467
  br i1 %cmp, label %if.then, label %if.end, !dbg !468

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !469
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !471
  br label %if.end, !dbg !472

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !473
  ret void, !dbg !474
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !475 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load i8*, i8** %line.addr, align 8, !dbg !478
  %cmp = icmp ne i8* %0, null, !dbg !480
  br i1 %cmp, label %if.then, label %if.end, !dbg !481

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !482
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !484
  br label %if.end, !dbg !485

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !487 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !493, metadata !DIExpression()), !dbg !494
  %0 = load i32*, i32** %line.addr, align 8, !dbg !495
  %cmp = icmp ne i32* %0, null, !dbg !497
  br i1 %cmp, label %if.then, label %if.end, !dbg !498

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !499
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !501
  br label %if.end, !dbg !502

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !503
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !504 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !505, metadata !DIExpression()), !dbg !506
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !507
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !508
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !510 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !514, metadata !DIExpression()), !dbg !515
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !516
  %conv = sext i16 %0 to i32, !dbg !516
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !517
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !519 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !523, metadata !DIExpression()), !dbg !524
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !525
  %conv = fpext float %0 to double, !dbg !525
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !526
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !528 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !532, metadata !DIExpression()), !dbg !533
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !534
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !535
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !537 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !543, metadata !DIExpression()), !dbg !544
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !545
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !546
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !548 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !553, metadata !DIExpression()), !dbg !554
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !555
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !556
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !558 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !561, metadata !DIExpression()), !dbg !562
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !563
  %conv = sext i8 %0 to i32, !dbg !563
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !564
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !566 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !569, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !571, metadata !DIExpression()), !dbg !575
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !576
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !577
  store i32 %0, i32* %arrayidx, align 4, !dbg !578
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !579
  store i32 0, i32* %arrayidx1, align 4, !dbg !580
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !581
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !582
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !584 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !587, metadata !DIExpression()), !dbg !588
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !589
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !590
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !592 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !595, metadata !DIExpression()), !dbg !596
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !597
  %conv = zext i8 %0 to i32, !dbg !597
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !598
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !600 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !604, metadata !DIExpression()), !dbg !605
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !606
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !607
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !609 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !619, metadata !DIExpression()), !dbg !620
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !621
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !622
  %1 = load i32, i32* %intOne, align 4, !dbg !622
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !623
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !624
  %3 = load i32, i32* %intTwo, align 4, !dbg !624
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !625
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !627 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !631, metadata !DIExpression()), !dbg !632
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !633, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.declare(metadata i64* %i, metadata !635, metadata !DIExpression()), !dbg !636
  store i64 0, i64* %i, align 8, !dbg !637
  br label %for.cond, !dbg !639

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !640
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !642
  %cmp = icmp ult i64 %0, %1, !dbg !643
  br i1 %cmp, label %for.body, label %for.end, !dbg !644

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !645
  %3 = load i64, i64* %i, align 8, !dbg !647
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !645
  %4 = load i8, i8* %arrayidx, align 1, !dbg !645
  %conv = zext i8 %4 to i32, !dbg !645
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !648
  br label %for.inc, !dbg !649

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !650
  %inc = add i64 %5, 1, !dbg !650
  store i64 %inc, i64* %i, align 8, !dbg !650
  br label %for.cond, !dbg !651, !llvm.loop !652

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !654
  ret void, !dbg !655
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !656 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !659, metadata !DIExpression()), !dbg !660
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !661, metadata !DIExpression()), !dbg !662
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !663, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !665, metadata !DIExpression()), !dbg !666
  store i64 0, i64* %numWritten, align 8, !dbg !666
  br label %while.cond, !dbg !667

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !668
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !669
  %cmp = icmp ult i64 %0, %1, !dbg !670
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !671

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !672
  %2 = load i16*, i16** %call, align 8, !dbg !672
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !672
  %4 = load i64, i64* %numWritten, align 8, !dbg !672
  %mul = mul i64 2, %4, !dbg !672
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !672
  %5 = load i8, i8* %arrayidx, align 1, !dbg !672
  %conv = sext i8 %5 to i32, !dbg !672
  %idxprom = sext i32 %conv to i64, !dbg !672
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !672
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !672
  %conv2 = zext i16 %6 to i32, !dbg !672
  %and = and i32 %conv2, 4096, !dbg !672
  %tobool = icmp ne i32 %and, 0, !dbg !672
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !673

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !674
  %7 = load i16*, i16** %call3, align 8, !dbg !674
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !674
  %9 = load i64, i64* %numWritten, align 8, !dbg !674
  %mul4 = mul i64 2, %9, !dbg !674
  %add = add i64 %mul4, 1, !dbg !674
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !674
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !674
  %conv6 = sext i8 %10 to i32, !dbg !674
  %idxprom7 = sext i32 %conv6 to i64, !dbg !674
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !674
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !674
  %conv9 = zext i16 %11 to i32, !dbg !674
  %and10 = and i32 %conv9, 4096, !dbg !674
  %tobool11 = icmp ne i32 %and10, 0, !dbg !673
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !675
  br i1 %12, label %while.body, label %while.end, !dbg !667

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !676, metadata !DIExpression()), !dbg !678
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !679
  %14 = load i64, i64* %numWritten, align 8, !dbg !680
  %mul12 = mul i64 2, %14, !dbg !681
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !679
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !682
  %15 = load i32, i32* %byte, align 4, !dbg !683
  %conv15 = trunc i32 %15 to i8, !dbg !684
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !685
  %17 = load i64, i64* %numWritten, align 8, !dbg !686
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !685
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !687
  %18 = load i64, i64* %numWritten, align 8, !dbg !688
  %inc = add i64 %18, 1, !dbg !688
  store i64 %inc, i64* %numWritten, align 8, !dbg !688
  br label %while.cond, !dbg !667, !llvm.loop !689

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !691
  ret i64 %19, !dbg !692
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !693 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !696, metadata !DIExpression()), !dbg !697
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !698, metadata !DIExpression()), !dbg !699
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !700, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !702, metadata !DIExpression()), !dbg !703
  store i64 0, i64* %numWritten, align 8, !dbg !703
  br label %while.cond, !dbg !704

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !705
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !706
  %cmp = icmp ult i64 %0, %1, !dbg !707
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !708

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !709
  %3 = load i64, i64* %numWritten, align 8, !dbg !710
  %mul = mul i64 2, %3, !dbg !711
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !709
  %4 = load i32, i32* %arrayidx, align 4, !dbg !709
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !712
  %tobool = icmp ne i32 %call, 0, !dbg !712
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !713

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !714
  %6 = load i64, i64* %numWritten, align 8, !dbg !715
  %mul1 = mul i64 2, %6, !dbg !716
  %add = add i64 %mul1, 1, !dbg !717
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !714
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !714
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !718
  %tobool4 = icmp ne i32 %call3, 0, !dbg !713
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !719
  br i1 %8, label %while.body, label %while.end, !dbg !704

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !720, metadata !DIExpression()), !dbg !722
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !723
  %10 = load i64, i64* %numWritten, align 8, !dbg !724
  %mul5 = mul i64 2, %10, !dbg !725
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !723
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !726
  %11 = load i32, i32* %byte, align 4, !dbg !727
  %conv = trunc i32 %11 to i8, !dbg !728
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !729
  %13 = load i64, i64* %numWritten, align 8, !dbg !730
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !729
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !731
  %14 = load i64, i64* %numWritten, align 8, !dbg !732
  %inc = add i64 %14, 1, !dbg !732
  store i64 %inc, i64* %numWritten, align 8, !dbg !732
  br label %while.cond, !dbg !704, !llvm.loop !733

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !735
  ret i64 %15, !dbg !736
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !737 {
entry:
  ret i32 1, !dbg !740
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !741 {
entry:
  ret i32 0, !dbg !742
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !743 {
entry:
  %call = call i32 @rand() #7, !dbg !744
  %rem = srem i32 %call, 2, !dbg !745
  ret i32 %rem, !dbg !746
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !747 {
entry:
  ret void, !dbg !748
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !749 {
entry:
  ret void, !dbg !750
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !751 {
entry:
  ret void, !dbg !752
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !753 {
entry:
  ret void, !dbg !754
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !755 {
entry:
  ret void, !dbg !756
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !757 {
entry:
  ret void, !dbg !758
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !759 {
entry:
  ret void, !dbg !760
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !761 {
entry:
  ret void, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !763 {
entry:
  ret void, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !765 {
entry:
  ret void, !dbg !766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !767 {
entry:
  ret void, !dbg !768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !769 {
entry:
  ret void, !dbg !770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !771 {
entry:
  ret void, !dbg !772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !773 {
entry:
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !775 {
entry:
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !777 {
entry:
  ret void, !dbg !778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !779 {
entry:
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !781 {
entry:
  ret void, !dbg !782
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_745/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_745/source_code")
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
!106 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_745/source_code")
!107 = !{}
!108 = !{!"clang version 12.0.0"}
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65_bad", scope: !45, file: !45, line: 47, type: !113, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!113 = !DISubroutineType(types: !114)
!114 = !{null}
!115 = !DILocalVariable(name: "data", scope: !112, file: !45, line: 49, type: !23)
!116 = !DILocation(line: 49, column: 9, scope: !112)
!117 = !DILocalVariable(name: "funcPtr", scope: !112, file: !45, line: 51, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !23}
!121 = !DILocation(line: 51, column: 12, scope: !112)
!122 = !DILocation(line: 53, column: 10, scope: !112)
!123 = !DILocalVariable(name: "recvResult", scope: !124, file: !45, line: 59, type: !23)
!124 = distinct !DILexicalBlock(scope: !112, file: !45, line: 54, column: 5)
!125 = !DILocation(line: 59, column: 13, scope: !124)
!126 = !DILocalVariable(name: "service", scope: !124, file: !45, line: 60, type: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !128)
!128 = !{!129, !130, !134, !138}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !127, file: !60, line: 240, baseType: !99, size: 16)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !127, file: !60, line: 241, baseType: !131, size: 16, offset: 16)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !24)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !127, file: !60, line: 242, baseType: !135, size: 32, offset: 32)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !135, file: !60, line: 33, baseType: !89, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !127, file: !60, line: 245, baseType: !139, size: 64, offset: 64)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 8)
!142 = !DILocation(line: 60, column: 28, scope: !124)
!143 = !DILocalVariable(name: "listenSocket", scope: !124, file: !45, line: 61, type: !23)
!144 = !DILocation(line: 61, column: 16, scope: !124)
!145 = !DILocalVariable(name: "acceptSocket", scope: !124, file: !45, line: 62, type: !23)
!146 = !DILocation(line: 62, column: 16, scope: !124)
!147 = !DILocalVariable(name: "inputBuffer", scope: !124, file: !45, line: 63, type: !102)
!148 = !DILocation(line: 63, column: 14, scope: !124)
!149 = !DILocation(line: 64, column: 9, scope: !124)
!150 = !DILocation(line: 74, column: 28, scope: !151)
!151 = distinct !DILexicalBlock(scope: !124, file: !45, line: 65, column: 9)
!152 = !DILocation(line: 74, column: 26, scope: !151)
!153 = !DILocation(line: 75, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !45, line: 75, column: 17)
!155 = !DILocation(line: 75, column: 30, scope: !154)
!156 = !DILocation(line: 75, column: 17, scope: !151)
!157 = !DILocation(line: 77, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !45, line: 76, column: 13)
!159 = !DILocation(line: 79, column: 13, scope: !151)
!160 = !DILocation(line: 80, column: 21, scope: !151)
!161 = !DILocation(line: 80, column: 32, scope: !151)
!162 = !DILocation(line: 81, column: 21, scope: !151)
!163 = !DILocation(line: 81, column: 30, scope: !151)
!164 = !DILocation(line: 81, column: 37, scope: !151)
!165 = !DILocation(line: 82, column: 32, scope: !151)
!166 = !DILocation(line: 82, column: 21, scope: !151)
!167 = !DILocation(line: 82, column: 30, scope: !151)
!168 = !DILocation(line: 83, column: 22, scope: !169)
!169 = distinct !DILexicalBlock(scope: !151, file: !45, line: 83, column: 17)
!170 = !DILocation(line: 83, column: 36, scope: !169)
!171 = !DILocation(line: 83, column: 17, scope: !169)
!172 = !DILocation(line: 83, column: 81, scope: !169)
!173 = !DILocation(line: 83, column: 17, scope: !151)
!174 = !DILocation(line: 85, column: 17, scope: !175)
!175 = distinct !DILexicalBlock(scope: !169, file: !45, line: 84, column: 13)
!176 = !DILocation(line: 87, column: 24, scope: !177)
!177 = distinct !DILexicalBlock(scope: !151, file: !45, line: 87, column: 17)
!178 = !DILocation(line: 87, column: 17, scope: !177)
!179 = !DILocation(line: 87, column: 54, scope: !177)
!180 = !DILocation(line: 87, column: 17, scope: !151)
!181 = !DILocation(line: 89, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !177, file: !45, line: 88, column: 13)
!183 = !DILocation(line: 91, column: 35, scope: !151)
!184 = !DILocation(line: 91, column: 28, scope: !151)
!185 = !DILocation(line: 91, column: 26, scope: !151)
!186 = !DILocation(line: 92, column: 17, scope: !187)
!187 = distinct !DILexicalBlock(scope: !151, file: !45, line: 92, column: 17)
!188 = !DILocation(line: 92, column: 30, scope: !187)
!189 = !DILocation(line: 92, column: 17, scope: !151)
!190 = !DILocation(line: 94, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !45, line: 93, column: 13)
!192 = !DILocation(line: 97, column: 31, scope: !151)
!193 = !DILocation(line: 97, column: 45, scope: !151)
!194 = !DILocation(line: 97, column: 26, scope: !151)
!195 = !DILocation(line: 97, column: 24, scope: !151)
!196 = !DILocation(line: 98, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !151, file: !45, line: 98, column: 17)
!198 = !DILocation(line: 98, column: 28, scope: !197)
!199 = !DILocation(line: 98, column: 44, scope: !197)
!200 = !DILocation(line: 98, column: 47, scope: !197)
!201 = !DILocation(line: 98, column: 58, scope: !197)
!202 = !DILocation(line: 98, column: 17, scope: !151)
!203 = !DILocation(line: 100, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !197, file: !45, line: 99, column: 13)
!205 = !DILocation(line: 103, column: 25, scope: !151)
!206 = !DILocation(line: 103, column: 13, scope: !151)
!207 = !DILocation(line: 103, column: 37, scope: !151)
!208 = !DILocation(line: 105, column: 25, scope: !151)
!209 = !DILocation(line: 105, column: 20, scope: !151)
!210 = !DILocation(line: 105, column: 18, scope: !151)
!211 = !DILocation(line: 106, column: 9, scope: !151)
!212 = !DILocation(line: 108, column: 13, scope: !213)
!213 = distinct !DILexicalBlock(scope: !124, file: !45, line: 108, column: 13)
!214 = !DILocation(line: 108, column: 26, scope: !213)
!215 = !DILocation(line: 108, column: 13, scope: !124)
!216 = !DILocation(line: 110, column: 26, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !45, line: 109, column: 9)
!218 = !DILocation(line: 110, column: 13, scope: !217)
!219 = !DILocation(line: 111, column: 9, scope: !217)
!220 = !DILocation(line: 112, column: 13, scope: !221)
!221 = distinct !DILexicalBlock(scope: !124, file: !45, line: 112, column: 13)
!222 = !DILocation(line: 112, column: 26, scope: !221)
!223 = !DILocation(line: 112, column: 13, scope: !124)
!224 = !DILocation(line: 114, column: 26, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !45, line: 113, column: 9)
!226 = !DILocation(line: 114, column: 13, scope: !225)
!227 = !DILocation(line: 115, column: 9, scope: !225)
!228 = !DILocation(line: 124, column: 5, scope: !112)
!229 = !DILocation(line: 124, column: 13, scope: !112)
!230 = !DILocation(line: 125, column: 1, scope: !112)
!231 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 133, type: !113, scopeLine: 134, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!232 = !DILocalVariable(name: "data", scope: !231, file: !45, line: 135, type: !23)
!233 = !DILocation(line: 135, column: 9, scope: !231)
!234 = !DILocalVariable(name: "funcPtr", scope: !231, file: !45, line: 136, type: !118)
!235 = !DILocation(line: 136, column: 12, scope: !231)
!236 = !DILocation(line: 138, column: 10, scope: !231)
!237 = !DILocation(line: 141, column: 10, scope: !231)
!238 = !DILocation(line: 142, column: 5, scope: !231)
!239 = !DILocation(line: 142, column: 13, scope: !231)
!240 = !DILocation(line: 143, column: 1, scope: !231)
!241 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 147, type: !113, scopeLine: 148, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!242 = !DILocalVariable(name: "data", scope: !241, file: !45, line: 149, type: !23)
!243 = !DILocation(line: 149, column: 9, scope: !241)
!244 = !DILocalVariable(name: "funcPtr", scope: !241, file: !45, line: 150, type: !118)
!245 = !DILocation(line: 150, column: 12, scope: !241)
!246 = !DILocation(line: 152, column: 10, scope: !241)
!247 = !DILocalVariable(name: "recvResult", scope: !248, file: !45, line: 158, type: !23)
!248 = distinct !DILexicalBlock(scope: !241, file: !45, line: 153, column: 5)
!249 = !DILocation(line: 158, column: 13, scope: !248)
!250 = !DILocalVariable(name: "service", scope: !248, file: !45, line: 159, type: !127)
!251 = !DILocation(line: 159, column: 28, scope: !248)
!252 = !DILocalVariable(name: "listenSocket", scope: !248, file: !45, line: 160, type: !23)
!253 = !DILocation(line: 160, column: 16, scope: !248)
!254 = !DILocalVariable(name: "acceptSocket", scope: !248, file: !45, line: 161, type: !23)
!255 = !DILocation(line: 161, column: 16, scope: !248)
!256 = !DILocalVariable(name: "inputBuffer", scope: !248, file: !45, line: 162, type: !102)
!257 = !DILocation(line: 162, column: 14, scope: !248)
!258 = !DILocation(line: 163, column: 9, scope: !248)
!259 = !DILocation(line: 173, column: 28, scope: !260)
!260 = distinct !DILexicalBlock(scope: !248, file: !45, line: 164, column: 9)
!261 = !DILocation(line: 173, column: 26, scope: !260)
!262 = !DILocation(line: 174, column: 17, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !45, line: 174, column: 17)
!264 = !DILocation(line: 174, column: 30, scope: !263)
!265 = !DILocation(line: 174, column: 17, scope: !260)
!266 = !DILocation(line: 176, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !45, line: 175, column: 13)
!268 = !DILocation(line: 178, column: 13, scope: !260)
!269 = !DILocation(line: 179, column: 21, scope: !260)
!270 = !DILocation(line: 179, column: 32, scope: !260)
!271 = !DILocation(line: 180, column: 21, scope: !260)
!272 = !DILocation(line: 180, column: 30, scope: !260)
!273 = !DILocation(line: 180, column: 37, scope: !260)
!274 = !DILocation(line: 181, column: 32, scope: !260)
!275 = !DILocation(line: 181, column: 21, scope: !260)
!276 = !DILocation(line: 181, column: 30, scope: !260)
!277 = !DILocation(line: 182, column: 22, scope: !278)
!278 = distinct !DILexicalBlock(scope: !260, file: !45, line: 182, column: 17)
!279 = !DILocation(line: 182, column: 36, scope: !278)
!280 = !DILocation(line: 182, column: 17, scope: !278)
!281 = !DILocation(line: 182, column: 81, scope: !278)
!282 = !DILocation(line: 182, column: 17, scope: !260)
!283 = !DILocation(line: 184, column: 17, scope: !284)
!284 = distinct !DILexicalBlock(scope: !278, file: !45, line: 183, column: 13)
!285 = !DILocation(line: 186, column: 24, scope: !286)
!286 = distinct !DILexicalBlock(scope: !260, file: !45, line: 186, column: 17)
!287 = !DILocation(line: 186, column: 17, scope: !286)
!288 = !DILocation(line: 186, column: 54, scope: !286)
!289 = !DILocation(line: 186, column: 17, scope: !260)
!290 = !DILocation(line: 188, column: 17, scope: !291)
!291 = distinct !DILexicalBlock(scope: !286, file: !45, line: 187, column: 13)
!292 = !DILocation(line: 190, column: 35, scope: !260)
!293 = !DILocation(line: 190, column: 28, scope: !260)
!294 = !DILocation(line: 190, column: 26, scope: !260)
!295 = !DILocation(line: 191, column: 17, scope: !296)
!296 = distinct !DILexicalBlock(scope: !260, file: !45, line: 191, column: 17)
!297 = !DILocation(line: 191, column: 30, scope: !296)
!298 = !DILocation(line: 191, column: 17, scope: !260)
!299 = !DILocation(line: 193, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !45, line: 192, column: 13)
!301 = !DILocation(line: 196, column: 31, scope: !260)
!302 = !DILocation(line: 196, column: 45, scope: !260)
!303 = !DILocation(line: 196, column: 26, scope: !260)
!304 = !DILocation(line: 196, column: 24, scope: !260)
!305 = !DILocation(line: 197, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !260, file: !45, line: 197, column: 17)
!307 = !DILocation(line: 197, column: 28, scope: !306)
!308 = !DILocation(line: 197, column: 44, scope: !306)
!309 = !DILocation(line: 197, column: 47, scope: !306)
!310 = !DILocation(line: 197, column: 58, scope: !306)
!311 = !DILocation(line: 197, column: 17, scope: !260)
!312 = !DILocation(line: 199, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !306, file: !45, line: 198, column: 13)
!314 = !DILocation(line: 202, column: 25, scope: !260)
!315 = !DILocation(line: 202, column: 13, scope: !260)
!316 = !DILocation(line: 202, column: 37, scope: !260)
!317 = !DILocation(line: 204, column: 25, scope: !260)
!318 = !DILocation(line: 204, column: 20, scope: !260)
!319 = !DILocation(line: 204, column: 18, scope: !260)
!320 = !DILocation(line: 205, column: 9, scope: !260)
!321 = !DILocation(line: 207, column: 13, scope: !322)
!322 = distinct !DILexicalBlock(scope: !248, file: !45, line: 207, column: 13)
!323 = !DILocation(line: 207, column: 26, scope: !322)
!324 = !DILocation(line: 207, column: 13, scope: !248)
!325 = !DILocation(line: 209, column: 26, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !45, line: 208, column: 9)
!327 = !DILocation(line: 209, column: 13, scope: !326)
!328 = !DILocation(line: 210, column: 9, scope: !326)
!329 = !DILocation(line: 211, column: 13, scope: !330)
!330 = distinct !DILexicalBlock(scope: !248, file: !45, line: 211, column: 13)
!331 = !DILocation(line: 211, column: 26, scope: !330)
!332 = !DILocation(line: 211, column: 13, scope: !248)
!333 = !DILocation(line: 213, column: 26, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !45, line: 212, column: 9)
!335 = !DILocation(line: 213, column: 13, scope: !334)
!336 = !DILocation(line: 214, column: 9, scope: !334)
!337 = !DILocation(line: 222, column: 5, scope: !241)
!338 = !DILocation(line: 222, column: 13, scope: !241)
!339 = !DILocation(line: 223, column: 1, scope: !241)
!340 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65_good", scope: !45, file: !45, line: 225, type: !113, scopeLine: 226, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!341 = !DILocation(line: 227, column: 5, scope: !340)
!342 = !DILocation(line: 228, column: 5, scope: !340)
!343 = !DILocation(line: 229, column: 1, scope: !340)
!344 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink", scope: !106, file: !106, line: 44, type: !119, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!345 = !DILocalVariable(name: "data", arg: 1, scope: !344, file: !106, line: 44, type: !23)
!346 = !DILocation(line: 44, column: 79, scope: !344)
!347 = !DILocalVariable(name: "i", scope: !348, file: !106, line: 47, type: !23)
!348 = distinct !DILexicalBlock(scope: !344, file: !106, line: 46, column: 5)
!349 = !DILocation(line: 47, column: 13, scope: !348)
!350 = !DILocalVariable(name: "buffer", scope: !348, file: !106, line: 48, type: !351)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 10)
!354 = !DILocation(line: 48, column: 13, scope: !348)
!355 = !DILocation(line: 51, column: 13, scope: !356)
!356 = distinct !DILexicalBlock(scope: !348, file: !106, line: 51, column: 13)
!357 = !DILocation(line: 51, column: 18, scope: !356)
!358 = !DILocation(line: 51, column: 13, scope: !348)
!359 = !DILocation(line: 53, column: 20, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !106, line: 52, column: 9)
!361 = !DILocation(line: 53, column: 13, scope: !360)
!362 = !DILocation(line: 53, column: 26, scope: !360)
!363 = !DILocation(line: 55, column: 19, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !106, line: 55, column: 13)
!365 = !DILocation(line: 55, column: 17, scope: !364)
!366 = !DILocation(line: 55, column: 24, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !106, line: 55, column: 13)
!368 = !DILocation(line: 55, column: 26, scope: !367)
!369 = !DILocation(line: 55, column: 13, scope: !364)
!370 = !DILocation(line: 57, column: 37, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !106, line: 56, column: 13)
!372 = !DILocation(line: 57, column: 30, scope: !371)
!373 = !DILocation(line: 57, column: 17, scope: !371)
!374 = !DILocation(line: 58, column: 13, scope: !371)
!375 = !DILocation(line: 55, column: 33, scope: !367)
!376 = !DILocation(line: 55, column: 13, scope: !367)
!377 = distinct !{!377, !369, !378, !379}
!378 = !DILocation(line: 58, column: 13, scope: !364)
!379 = !{!"llvm.loop.mustprogress"}
!380 = !DILocation(line: 59, column: 9, scope: !360)
!381 = !DILocation(line: 62, column: 13, scope: !382)
!382 = distinct !DILexicalBlock(scope: !356, file: !106, line: 61, column: 9)
!383 = !DILocation(line: 65, column: 1, scope: !344)
!384 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_goodG2BSink", scope: !106, file: !106, line: 72, type: !119, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!385 = !DILocalVariable(name: "data", arg: 1, scope: !384, file: !106, line: 72, type: !23)
!386 = !DILocation(line: 72, column: 83, scope: !384)
!387 = !DILocalVariable(name: "i", scope: !388, file: !106, line: 75, type: !23)
!388 = distinct !DILexicalBlock(scope: !384, file: !106, line: 74, column: 5)
!389 = !DILocation(line: 75, column: 13, scope: !388)
!390 = !DILocalVariable(name: "buffer", scope: !388, file: !106, line: 76, type: !351)
!391 = !DILocation(line: 76, column: 13, scope: !388)
!392 = !DILocation(line: 79, column: 13, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !106, line: 79, column: 13)
!394 = !DILocation(line: 79, column: 18, scope: !393)
!395 = !DILocation(line: 79, column: 13, scope: !388)
!396 = !DILocation(line: 81, column: 20, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !106, line: 80, column: 9)
!398 = !DILocation(line: 81, column: 13, scope: !397)
!399 = !DILocation(line: 81, column: 26, scope: !397)
!400 = !DILocation(line: 83, column: 19, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !106, line: 83, column: 13)
!402 = !DILocation(line: 83, column: 17, scope: !401)
!403 = !DILocation(line: 83, column: 24, scope: !404)
!404 = distinct !DILexicalBlock(scope: !401, file: !106, line: 83, column: 13)
!405 = !DILocation(line: 83, column: 26, scope: !404)
!406 = !DILocation(line: 83, column: 13, scope: !401)
!407 = !DILocation(line: 85, column: 37, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !106, line: 84, column: 13)
!409 = !DILocation(line: 85, column: 30, scope: !408)
!410 = !DILocation(line: 85, column: 17, scope: !408)
!411 = !DILocation(line: 86, column: 13, scope: !408)
!412 = !DILocation(line: 83, column: 33, scope: !404)
!413 = !DILocation(line: 83, column: 13, scope: !404)
!414 = distinct !{!414, !406, !415, !379}
!415 = !DILocation(line: 86, column: 13, scope: !401)
!416 = !DILocation(line: 87, column: 9, scope: !397)
!417 = !DILocation(line: 90, column: 13, scope: !418)
!418 = distinct !DILexicalBlock(scope: !393, file: !106, line: 89, column: 9)
!419 = !DILocation(line: 93, column: 1, scope: !384)
!420 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_goodB2GSink", scope: !106, file: !106, line: 96, type: !119, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!421 = !DILocalVariable(name: "data", arg: 1, scope: !420, file: !106, line: 96, type: !23)
!422 = !DILocation(line: 96, column: 83, scope: !420)
!423 = !DILocalVariable(name: "i", scope: !424, file: !106, line: 99, type: !23)
!424 = distinct !DILexicalBlock(scope: !420, file: !106, line: 98, column: 5)
!425 = !DILocation(line: 99, column: 13, scope: !424)
!426 = !DILocalVariable(name: "buffer", scope: !424, file: !106, line: 100, type: !351)
!427 = !DILocation(line: 100, column: 13, scope: !424)
!428 = !DILocation(line: 102, column: 13, scope: !429)
!429 = distinct !DILexicalBlock(scope: !424, file: !106, line: 102, column: 13)
!430 = !DILocation(line: 102, column: 18, scope: !429)
!431 = !DILocation(line: 102, column: 23, scope: !429)
!432 = !DILocation(line: 102, column: 26, scope: !429)
!433 = !DILocation(line: 102, column: 31, scope: !429)
!434 = !DILocation(line: 102, column: 13, scope: !424)
!435 = !DILocation(line: 104, column: 20, scope: !436)
!436 = distinct !DILexicalBlock(scope: !429, file: !106, line: 103, column: 9)
!437 = !DILocation(line: 104, column: 13, scope: !436)
!438 = !DILocation(line: 104, column: 26, scope: !436)
!439 = !DILocation(line: 106, column: 19, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !106, line: 106, column: 13)
!441 = !DILocation(line: 106, column: 17, scope: !440)
!442 = !DILocation(line: 106, column: 24, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !106, line: 106, column: 13)
!444 = !DILocation(line: 106, column: 26, scope: !443)
!445 = !DILocation(line: 106, column: 13, scope: !440)
!446 = !DILocation(line: 108, column: 37, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !106, line: 107, column: 13)
!448 = !DILocation(line: 108, column: 30, scope: !447)
!449 = !DILocation(line: 108, column: 17, scope: !447)
!450 = !DILocation(line: 109, column: 13, scope: !447)
!451 = !DILocation(line: 106, column: 33, scope: !443)
!452 = !DILocation(line: 106, column: 13, scope: !443)
!453 = distinct !{!453, !445, !454, !379}
!454 = !DILocation(line: 109, column: 13, scope: !440)
!455 = !DILocation(line: 110, column: 9, scope: !436)
!456 = !DILocation(line: 113, column: 13, scope: !457)
!457 = distinct !DILexicalBlock(scope: !429, file: !106, line: 112, column: 9)
!458 = !DILocation(line: 116, column: 1, scope: !420)
!459 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !460, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !42}
!462 = !DILocalVariable(name: "line", arg: 1, scope: !459, file: !3, line: 11, type: !42)
!463 = !DILocation(line: 11, column: 25, scope: !459)
!464 = !DILocation(line: 13, column: 1, scope: !459)
!465 = !DILocation(line: 14, column: 8, scope: !466)
!466 = distinct !DILexicalBlock(scope: !459, file: !3, line: 14, column: 8)
!467 = !DILocation(line: 14, column: 13, scope: !466)
!468 = !DILocation(line: 14, column: 8, scope: !459)
!469 = !DILocation(line: 16, column: 24, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !3, line: 15, column: 5)
!471 = !DILocation(line: 16, column: 9, scope: !470)
!472 = !DILocation(line: 17, column: 5, scope: !470)
!473 = !DILocation(line: 18, column: 5, scope: !459)
!474 = !DILocation(line: 19, column: 1, scope: !459)
!475 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !460, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!476 = !DILocalVariable(name: "line", arg: 1, scope: !475, file: !3, line: 20, type: !42)
!477 = !DILocation(line: 20, column: 29, scope: !475)
!478 = !DILocation(line: 22, column: 8, scope: !479)
!479 = distinct !DILexicalBlock(scope: !475, file: !3, line: 22, column: 8)
!480 = !DILocation(line: 22, column: 13, scope: !479)
!481 = !DILocation(line: 22, column: 8, scope: !475)
!482 = !DILocation(line: 24, column: 24, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !3, line: 23, column: 5)
!484 = !DILocation(line: 24, column: 9, scope: !483)
!485 = !DILocation(line: 25, column: 5, scope: !483)
!486 = !DILocation(line: 26, column: 1, scope: !475)
!487 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !488, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !492, line: 74, baseType: !23)
!492 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!493 = !DILocalVariable(name: "line", arg: 1, scope: !487, file: !3, line: 27, type: !490)
!494 = !DILocation(line: 27, column: 29, scope: !487)
!495 = !DILocation(line: 29, column: 8, scope: !496)
!496 = distinct !DILexicalBlock(scope: !487, file: !3, line: 29, column: 8)
!497 = !DILocation(line: 29, column: 13, scope: !496)
!498 = !DILocation(line: 29, column: 8, scope: !487)
!499 = !DILocation(line: 31, column: 27, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !3, line: 30, column: 5)
!501 = !DILocation(line: 31, column: 9, scope: !500)
!502 = !DILocation(line: 32, column: 5, scope: !500)
!503 = !DILocation(line: 33, column: 1, scope: !487)
!504 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !119, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!505 = !DILocalVariable(name: "intNumber", arg: 1, scope: !504, file: !3, line: 35, type: !23)
!506 = !DILocation(line: 35, column: 24, scope: !504)
!507 = !DILocation(line: 37, column: 20, scope: !504)
!508 = !DILocation(line: 37, column: 5, scope: !504)
!509 = !DILocation(line: 38, column: 1, scope: !504)
!510 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !511, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !513}
!513 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!514 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !510, file: !3, line: 40, type: !513)
!515 = !DILocation(line: 40, column: 28, scope: !510)
!516 = !DILocation(line: 42, column: 21, scope: !510)
!517 = !DILocation(line: 42, column: 5, scope: !510)
!518 = !DILocation(line: 43, column: 1, scope: !510)
!519 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !520, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !522}
!522 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!523 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !519, file: !3, line: 45, type: !522)
!524 = !DILocation(line: 45, column: 28, scope: !519)
!525 = !DILocation(line: 47, column: 20, scope: !519)
!526 = !DILocation(line: 47, column: 5, scope: !519)
!527 = !DILocation(line: 48, column: 1, scope: !519)
!528 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !529, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !531}
!531 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!532 = !DILocalVariable(name: "longNumber", arg: 1, scope: !528, file: !3, line: 50, type: !531)
!533 = !DILocation(line: 50, column: 26, scope: !528)
!534 = !DILocation(line: 52, column: 21, scope: !528)
!535 = !DILocation(line: 52, column: 5, scope: !528)
!536 = !DILocation(line: 53, column: 1, scope: !528)
!537 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !538, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !540}
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !541, line: 27, baseType: !542)
!541 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !531)
!543 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !537, file: !3, line: 55, type: !540)
!544 = !DILocation(line: 55, column: 33, scope: !537)
!545 = !DILocation(line: 57, column: 29, scope: !537)
!546 = !DILocation(line: 57, column: 5, scope: !537)
!547 = !DILocation(line: 58, column: 1, scope: !537)
!548 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !549, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !551}
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !492, line: 46, baseType: !552)
!552 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!553 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !548, file: !3, line: 60, type: !551)
!554 = !DILocation(line: 60, column: 29, scope: !548)
!555 = !DILocation(line: 62, column: 21, scope: !548)
!556 = !DILocation(line: 62, column: 5, scope: !548)
!557 = !DILocation(line: 63, column: 1, scope: !548)
!558 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !559, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !43}
!561 = !DILocalVariable(name: "charHex", arg: 1, scope: !558, file: !3, line: 65, type: !43)
!562 = !DILocation(line: 65, column: 29, scope: !558)
!563 = !DILocation(line: 67, column: 22, scope: !558)
!564 = !DILocation(line: 67, column: 5, scope: !558)
!565 = !DILocation(line: 68, column: 1, scope: !558)
!566 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !567, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !491}
!569 = !DILocalVariable(name: "wideChar", arg: 1, scope: !566, file: !3, line: 70, type: !491)
!570 = !DILocation(line: 70, column: 29, scope: !566)
!571 = !DILocalVariable(name: "s", scope: !566, file: !3, line: 74, type: !572)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 64, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 2)
!575 = !DILocation(line: 74, column: 13, scope: !566)
!576 = !DILocation(line: 75, column: 16, scope: !566)
!577 = !DILocation(line: 75, column: 9, scope: !566)
!578 = !DILocation(line: 75, column: 14, scope: !566)
!579 = !DILocation(line: 76, column: 9, scope: !566)
!580 = !DILocation(line: 76, column: 14, scope: !566)
!581 = !DILocation(line: 77, column: 21, scope: !566)
!582 = !DILocation(line: 77, column: 5, scope: !566)
!583 = !DILocation(line: 78, column: 1, scope: !566)
!584 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !585, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !7}
!587 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !584, file: !3, line: 80, type: !7)
!588 = !DILocation(line: 80, column: 33, scope: !584)
!589 = !DILocation(line: 82, column: 20, scope: !584)
!590 = !DILocation(line: 82, column: 5, scope: !584)
!591 = !DILocation(line: 83, column: 1, scope: !584)
!592 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !593, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !25}
!595 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !592, file: !3, line: 85, type: !25)
!596 = !DILocation(line: 85, column: 45, scope: !592)
!597 = !DILocation(line: 87, column: 22, scope: !592)
!598 = !DILocation(line: 87, column: 5, scope: !592)
!599 = !DILocation(line: 88, column: 1, scope: !592)
!600 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !601, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !603}
!603 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!604 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !600, file: !3, line: 90, type: !603)
!605 = !DILocation(line: 90, column: 29, scope: !600)
!606 = !DILocation(line: 92, column: 20, scope: !600)
!607 = !DILocation(line: 92, column: 5, scope: !600)
!608 = !DILocation(line: 93, column: 1, scope: !600)
!609 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !610, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !614, line: 100, baseType: !615)
!614 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_745/source_code")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !614, line: 96, size: 64, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !615, file: !614, line: 98, baseType: !23, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !615, file: !614, line: 99, baseType: !23, size: 32, offset: 32)
!619 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !609, file: !3, line: 95, type: !612)
!620 = !DILocation(line: 95, column: 40, scope: !609)
!621 = !DILocation(line: 97, column: 26, scope: !609)
!622 = !DILocation(line: 97, column: 47, scope: !609)
!623 = !DILocation(line: 97, column: 55, scope: !609)
!624 = !DILocation(line: 97, column: 76, scope: !609)
!625 = !DILocation(line: 97, column: 5, scope: !609)
!626 = !DILocation(line: 98, column: 1, scope: !609)
!627 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !628, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !630, !551}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!631 = !DILocalVariable(name: "bytes", arg: 1, scope: !627, file: !3, line: 100, type: !630)
!632 = !DILocation(line: 100, column: 38, scope: !627)
!633 = !DILocalVariable(name: "numBytes", arg: 2, scope: !627, file: !3, line: 100, type: !551)
!634 = !DILocation(line: 100, column: 52, scope: !627)
!635 = !DILocalVariable(name: "i", scope: !627, file: !3, line: 102, type: !551)
!636 = !DILocation(line: 102, column: 12, scope: !627)
!637 = !DILocation(line: 103, column: 12, scope: !638)
!638 = distinct !DILexicalBlock(scope: !627, file: !3, line: 103, column: 5)
!639 = !DILocation(line: 103, column: 10, scope: !638)
!640 = !DILocation(line: 103, column: 17, scope: !641)
!641 = distinct !DILexicalBlock(scope: !638, file: !3, line: 103, column: 5)
!642 = !DILocation(line: 103, column: 21, scope: !641)
!643 = !DILocation(line: 103, column: 19, scope: !641)
!644 = !DILocation(line: 103, column: 5, scope: !638)
!645 = !DILocation(line: 105, column: 24, scope: !646)
!646 = distinct !DILexicalBlock(scope: !641, file: !3, line: 104, column: 5)
!647 = !DILocation(line: 105, column: 30, scope: !646)
!648 = !DILocation(line: 105, column: 9, scope: !646)
!649 = !DILocation(line: 106, column: 5, scope: !646)
!650 = !DILocation(line: 103, column: 31, scope: !641)
!651 = !DILocation(line: 103, column: 5, scope: !641)
!652 = distinct !{!652, !644, !653, !379}
!653 = !DILocation(line: 106, column: 5, scope: !638)
!654 = !DILocation(line: 107, column: 5, scope: !627)
!655 = !DILocation(line: 108, column: 1, scope: !627)
!656 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !657, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!657 = !DISubroutineType(types: !658)
!658 = !{!551, !630, !551, !42}
!659 = !DILocalVariable(name: "bytes", arg: 1, scope: !656, file: !3, line: 113, type: !630)
!660 = !DILocation(line: 113, column: 39, scope: !656)
!661 = !DILocalVariable(name: "numBytes", arg: 2, scope: !656, file: !3, line: 113, type: !551)
!662 = !DILocation(line: 113, column: 53, scope: !656)
!663 = !DILocalVariable(name: "hex", arg: 3, scope: !656, file: !3, line: 113, type: !42)
!664 = !DILocation(line: 113, column: 71, scope: !656)
!665 = !DILocalVariable(name: "numWritten", scope: !656, file: !3, line: 115, type: !551)
!666 = !DILocation(line: 115, column: 12, scope: !656)
!667 = !DILocation(line: 121, column: 5, scope: !656)
!668 = !DILocation(line: 121, column: 12, scope: !656)
!669 = !DILocation(line: 121, column: 25, scope: !656)
!670 = !DILocation(line: 121, column: 23, scope: !656)
!671 = !DILocation(line: 121, column: 34, scope: !656)
!672 = !DILocation(line: 121, column: 37, scope: !656)
!673 = !DILocation(line: 121, column: 67, scope: !656)
!674 = !DILocation(line: 121, column: 70, scope: !656)
!675 = !DILocation(line: 0, scope: !656)
!676 = !DILocalVariable(name: "byte", scope: !677, file: !3, line: 123, type: !23)
!677 = distinct !DILexicalBlock(scope: !656, file: !3, line: 122, column: 5)
!678 = !DILocation(line: 123, column: 13, scope: !677)
!679 = !DILocation(line: 124, column: 17, scope: !677)
!680 = !DILocation(line: 124, column: 25, scope: !677)
!681 = !DILocation(line: 124, column: 23, scope: !677)
!682 = !DILocation(line: 124, column: 9, scope: !677)
!683 = !DILocation(line: 125, column: 45, scope: !677)
!684 = !DILocation(line: 125, column: 29, scope: !677)
!685 = !DILocation(line: 125, column: 9, scope: !677)
!686 = !DILocation(line: 125, column: 15, scope: !677)
!687 = !DILocation(line: 125, column: 27, scope: !677)
!688 = !DILocation(line: 126, column: 9, scope: !677)
!689 = distinct !{!689, !667, !690, !379}
!690 = !DILocation(line: 127, column: 5, scope: !656)
!691 = !DILocation(line: 129, column: 12, scope: !656)
!692 = !DILocation(line: 129, column: 5, scope: !656)
!693 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !694, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!694 = !DISubroutineType(types: !695)
!695 = !{!551, !630, !551, !490}
!696 = !DILocalVariable(name: "bytes", arg: 1, scope: !693, file: !3, line: 135, type: !630)
!697 = !DILocation(line: 135, column: 41, scope: !693)
!698 = !DILocalVariable(name: "numBytes", arg: 2, scope: !693, file: !3, line: 135, type: !551)
!699 = !DILocation(line: 135, column: 55, scope: !693)
!700 = !DILocalVariable(name: "hex", arg: 3, scope: !693, file: !3, line: 135, type: !490)
!701 = !DILocation(line: 135, column: 76, scope: !693)
!702 = !DILocalVariable(name: "numWritten", scope: !693, file: !3, line: 137, type: !551)
!703 = !DILocation(line: 137, column: 12, scope: !693)
!704 = !DILocation(line: 143, column: 5, scope: !693)
!705 = !DILocation(line: 143, column: 12, scope: !693)
!706 = !DILocation(line: 143, column: 25, scope: !693)
!707 = !DILocation(line: 143, column: 23, scope: !693)
!708 = !DILocation(line: 143, column: 34, scope: !693)
!709 = !DILocation(line: 143, column: 47, scope: !693)
!710 = !DILocation(line: 143, column: 55, scope: !693)
!711 = !DILocation(line: 143, column: 53, scope: !693)
!712 = !DILocation(line: 143, column: 37, scope: !693)
!713 = !DILocation(line: 143, column: 68, scope: !693)
!714 = !DILocation(line: 143, column: 81, scope: !693)
!715 = !DILocation(line: 143, column: 89, scope: !693)
!716 = !DILocation(line: 143, column: 87, scope: !693)
!717 = !DILocation(line: 143, column: 100, scope: !693)
!718 = !DILocation(line: 143, column: 71, scope: !693)
!719 = !DILocation(line: 0, scope: !693)
!720 = !DILocalVariable(name: "byte", scope: !721, file: !3, line: 145, type: !23)
!721 = distinct !DILexicalBlock(scope: !693, file: !3, line: 144, column: 5)
!722 = !DILocation(line: 145, column: 13, scope: !721)
!723 = !DILocation(line: 146, column: 18, scope: !721)
!724 = !DILocation(line: 146, column: 26, scope: !721)
!725 = !DILocation(line: 146, column: 24, scope: !721)
!726 = !DILocation(line: 146, column: 9, scope: !721)
!727 = !DILocation(line: 147, column: 45, scope: !721)
!728 = !DILocation(line: 147, column: 29, scope: !721)
!729 = !DILocation(line: 147, column: 9, scope: !721)
!730 = !DILocation(line: 147, column: 15, scope: !721)
!731 = !DILocation(line: 147, column: 27, scope: !721)
!732 = !DILocation(line: 148, column: 9, scope: !721)
!733 = distinct !{!733, !704, !734, !379}
!734 = !DILocation(line: 149, column: 5, scope: !693)
!735 = !DILocation(line: 151, column: 12, scope: !693)
!736 = !DILocation(line: 151, column: 5, scope: !693)
!737 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !738, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!738 = !DISubroutineType(types: !739)
!739 = !{!23}
!740 = !DILocation(line: 158, column: 5, scope: !737)
!741 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !738, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!742 = !DILocation(line: 163, column: 5, scope: !741)
!743 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !738, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!744 = !DILocation(line: 168, column: 13, scope: !743)
!745 = !DILocation(line: 168, column: 20, scope: !743)
!746 = !DILocation(line: 168, column: 5, scope: !743)
!747 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !113, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!748 = !DILocation(line: 187, column: 16, scope: !747)
!749 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !113, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!750 = !DILocation(line: 188, column: 16, scope: !749)
!751 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !113, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!752 = !DILocation(line: 189, column: 16, scope: !751)
!753 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !113, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!754 = !DILocation(line: 190, column: 16, scope: !753)
!755 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !113, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!756 = !DILocation(line: 191, column: 16, scope: !755)
!757 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !113, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!758 = !DILocation(line: 192, column: 16, scope: !757)
!759 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !113, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!760 = !DILocation(line: 193, column: 16, scope: !759)
!761 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !113, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!762 = !DILocation(line: 194, column: 16, scope: !761)
!763 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !113, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!764 = !DILocation(line: 195, column: 16, scope: !763)
!765 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !113, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!766 = !DILocation(line: 198, column: 15, scope: !765)
!767 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !113, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!768 = !DILocation(line: 199, column: 15, scope: !767)
!769 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !113, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!770 = !DILocation(line: 200, column: 15, scope: !769)
!771 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !113, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!772 = !DILocation(line: 201, column: 15, scope: !771)
!773 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !113, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!774 = !DILocation(line: 202, column: 15, scope: !773)
!775 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !113, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!776 = !DILocation(line: 203, column: 15, scope: !775)
!777 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !113, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!778 = !DILocation(line: 204, column: 15, scope: !777)
!779 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !113, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!780 = !DILocation(line: 205, column: 15, scope: !779)
!781 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !113, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!782 = !DILocation(line: 206, column: 15, scope: !781)
