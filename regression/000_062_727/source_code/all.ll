; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._twoIntsStruct = type { i32, i32 }

@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !67
@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !70
@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !72
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !74
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !98
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !100
@globalTrue = dso_local global i32 1, align 4, !dbg !102
@globalFalse = dso_local global i32 0, align 4, !dbg !104
@globalFive = dso_local global i32 5, align 4, !dbg !106
@globalArgc = dso_local global i32 0, align 4, !dbg !108
@globalArgv = dso_local global i8** null, align 8, !dbg !110
@.str.11 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.13 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11.16 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_bad() #0 !dbg !121 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !124, metadata !DIExpression()), !dbg !125
  store i32 -1, i32* %data, align 4, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !127, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !130, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !147, metadata !DIExpression()), !dbg !148
  store i32 -1, i32* %listenSocket, align 4, !dbg !148
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !149, metadata !DIExpression()), !dbg !150
  store i32 -1, i32* %acceptSocket, align 4, !dbg !150
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !151, metadata !DIExpression()), !dbg !152
  br label %do.body, !dbg !153

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !154
  store i32 %call, i32* %listenSocket, align 4, !dbg !156
  %0 = load i32, i32* %listenSocket, align 4, !dbg !157
  %cmp = icmp eq i32 %0, -1, !dbg !159
  br i1 %cmp, label %if.then, label %if.end, !dbg !160

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !161

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !163
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !163
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !164
  store i16 2, i16* %sin_family, align 4, !dbg !165
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !166
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !167
  store i32 0, i32* %s_addr, align 4, !dbg !168
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !169
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !170
  store i16 %call1, i16* %sin_port, align 2, !dbg !171
  %2 = load i32, i32* %listenSocket, align 4, !dbg !172
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !174
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !175
  %cmp3 = icmp eq i32 %call2, -1, !dbg !176
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !177

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !178

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !180
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !182
  %cmp7 = icmp eq i32 %call6, -1, !dbg !183
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !184

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !185

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !187
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !188
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !189
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !190
  %cmp11 = icmp eq i32 %6, -1, !dbg !192
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !193

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !194

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !196
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !197
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !198
  %conv = trunc i64 %call14 to i32, !dbg !198
  store i32 %conv, i32* %recvResult, align 4, !dbg !199
  %8 = load i32, i32* %recvResult, align 4, !dbg !200
  %cmp15 = icmp eq i32 %8, -1, !dbg !202
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !203

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !204
  %cmp17 = icmp eq i32 %9, 0, !dbg !205
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !206

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !207

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !209
  %idxprom = sext i32 %10 to i64, !dbg !210
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !210
  store i8 0, i8* %arrayidx, align 1, !dbg !211
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !212
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !213
  store i32 %call22, i32* %data, align 4, !dbg !214
  br label %do.end, !dbg !215

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !216
  %cmp23 = icmp ne i32 %11, -1, !dbg !218
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !219

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !220
  %call26 = call i32 @close(i32 %12), !dbg !222
  br label %if.end27, !dbg !223

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !224
  %cmp28 = icmp ne i32 %13, -1, !dbg !226
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !227

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !228
  %call31 = call i32 @close(i32 %14), !dbg !230
  br label %if.end32, !dbg !231

if.end32:                                         ; preds = %if.then30, %if.end27
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_badGlobal, align 4, !dbg !232
  %15 = load i32, i32* %data, align 4, !dbg !233
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_badSink(i32 %15), !dbg !234
  ret void, !dbg !235
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
define dso_local void @goodB2G1() #0 !dbg !236 {
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
  store i32 0, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G1Global, align 4, !dbg !330
  %15 = load i32, i32* %data, align 4, !dbg !331
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G1Sink(i32 %15), !dbg !332
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !334 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !335, metadata !DIExpression()), !dbg !336
  store i32 -1, i32* %data, align 4, !dbg !337
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !343, metadata !DIExpression()), !dbg !344
  store i32 -1, i32* %listenSocket, align 4, !dbg !344
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !345, metadata !DIExpression()), !dbg !346
  store i32 -1, i32* %acceptSocket, align 4, !dbg !346
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !347, metadata !DIExpression()), !dbg !348
  br label %do.body, !dbg !349

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !350
  store i32 %call, i32* %listenSocket, align 4, !dbg !352
  %0 = load i32, i32* %listenSocket, align 4, !dbg !353
  %cmp = icmp eq i32 %0, -1, !dbg !355
  br i1 %cmp, label %if.then, label %if.end, !dbg !356

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !357

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !359
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !359
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !360
  store i16 2, i16* %sin_family, align 4, !dbg !361
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !362
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !363
  store i32 0, i32* %s_addr, align 4, !dbg !364
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !365
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !366
  store i16 %call1, i16* %sin_port, align 2, !dbg !367
  %2 = load i32, i32* %listenSocket, align 4, !dbg !368
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !370
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !371
  %cmp3 = icmp eq i32 %call2, -1, !dbg !372
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !373

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !374

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !376
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !378
  %cmp7 = icmp eq i32 %call6, -1, !dbg !379
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !380

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !381

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !383
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !384
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !385
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !386
  %cmp11 = icmp eq i32 %6, -1, !dbg !388
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !389

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !390

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !392
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !393
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !394
  %conv = trunc i64 %call14 to i32, !dbg !394
  store i32 %conv, i32* %recvResult, align 4, !dbg !395
  %8 = load i32, i32* %recvResult, align 4, !dbg !396
  %cmp15 = icmp eq i32 %8, -1, !dbg !398
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !399

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !400
  %cmp17 = icmp eq i32 %9, 0, !dbg !401
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !402

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !403

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !405
  %idxprom = sext i32 %10 to i64, !dbg !406
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !406
  store i8 0, i8* %arrayidx, align 1, !dbg !407
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !408
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !409
  store i32 %call22, i32* %data, align 4, !dbg !410
  br label %do.end, !dbg !411

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !412
  %cmp23 = icmp ne i32 %11, -1, !dbg !414
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !415

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !416
  %call26 = call i32 @close(i32 %12), !dbg !418
  br label %if.end27, !dbg !419

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !420
  %cmp28 = icmp ne i32 %13, -1, !dbg !422
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !423

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !424
  %call31 = call i32 @close(i32 %14), !dbg !426
  br label %if.end32, !dbg !427

if.end32:                                         ; preds = %if.then30, %if.end27
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Global, align 4, !dbg !428
  %15 = load i32, i32* %data, align 4, !dbg !429
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink(i32 %15), !dbg !430
  ret void, !dbg !431
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !432 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !433, metadata !DIExpression()), !dbg !434
  store i32 -1, i32* %data, align 4, !dbg !435
  store i32 7, i32* %data, align 4, !dbg !436
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BGlobal, align 4, !dbg !437
  %0 = load i32, i32* %data, align 4, !dbg !438
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink(i32 %0), !dbg !439
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_good() #0 !dbg !441 {
entry:
  call void @goodB2G1(), !dbg !442
  call void @goodB2G2(), !dbg !443
  call void @goodG2B(), !dbg !444
  ret void, !dbg !445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_badSink(i32 %data) #0 !dbg !446 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_badGlobal, align 4, !dbg !451
  %tobool = icmp ne i32 %0, 0, !dbg !451
  br i1 %tobool, label %if.then, label %if.end5, !dbg !453

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !454, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !458, metadata !DIExpression()), !dbg !462
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !462
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !462
  %2 = load i32, i32* %data.addr, align 4, !dbg !463
  %cmp = icmp sge i32 %2, 0, !dbg !465
  br i1 %cmp, label %if.then1, label %if.else, !dbg !466

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !467
  %idxprom = sext i32 %3 to i64, !dbg !469
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !469
  store i32 1, i32* %arrayidx, align 4, !dbg !470
  store i32 0, i32* %i, align 4, !dbg !471
  br label %for.cond, !dbg !473

for.cond:                                         ; preds = %for.inc, %if.then1
  %4 = load i32, i32* %i, align 4, !dbg !474
  %cmp2 = icmp slt i32 %4, 10, !dbg !476
  br i1 %cmp2, label %for.body, label %for.end, !dbg !477

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !478
  %idxprom3 = sext i32 %5 to i64, !dbg !480
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !480
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !480
  call void @printIntLine(i32 %6), !dbg !481
  br label %for.inc, !dbg !482

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !483
  %inc = add nsw i32 %7, 1, !dbg !483
  store i32 %inc, i32* %i, align 4, !dbg !483
  br label %for.cond, !dbg !484, !llvm.loop !485

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !488

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !489
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end5, !dbg !491

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G1Sink(i32 %data) #0 !dbg !493 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G1Global, align 4, !dbg !496
  %tobool = icmp ne i32 %0, 0, !dbg !496
  br i1 %tobool, label %if.then, label %if.else, !dbg !498

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !499
  br label %if.end7, !dbg !501

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !502, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !506, metadata !DIExpression()), !dbg !507
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !507
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !507
  %2 = load i32, i32* %data.addr, align 4, !dbg !508
  %cmp = icmp sge i32 %2, 0, !dbg !510
  br i1 %cmp, label %land.lhs.true, label %if.else6, !dbg !511

land.lhs.true:                                    ; preds = %if.else
  %3 = load i32, i32* %data.addr, align 4, !dbg !512
  %cmp1 = icmp slt i32 %3, 10, !dbg !513
  br i1 %cmp1, label %if.then2, label %if.else6, !dbg !514

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %data.addr, align 4, !dbg !515
  %idxprom = sext i32 %4 to i64, !dbg !517
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !517
  store i32 1, i32* %arrayidx, align 4, !dbg !518
  store i32 0, i32* %i, align 4, !dbg !519
  br label %for.cond, !dbg !521

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !522
  %cmp3 = icmp slt i32 %5, 10, !dbg !524
  br i1 %cmp3, label %for.body, label %for.end, !dbg !525

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !526
  %idxprom4 = sext i32 %6 to i64, !dbg !528
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !528
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !528
  call void @printIntLine(i32 %7), !dbg !529
  br label %for.inc, !dbg !530

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !531
  %inc = add nsw i32 %8, 1, !dbg !531
  store i32 %inc, i32* %i, align 4, !dbg !531
  br label %for.cond, !dbg !532, !llvm.loop !533

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !535

if.else6:                                         ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !536
  br label %if.end

if.end:                                           ; preds = %if.else6, %for.end
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink(i32 %data) #0 !dbg !539 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !540, metadata !DIExpression()), !dbg !541
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Global, align 4, !dbg !542
  %tobool = icmp ne i32 %0, 0, !dbg !542
  br i1 %tobool, label %if.then, label %if.end6, !dbg !544

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !545, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !549, metadata !DIExpression()), !dbg !550
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !550
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !550
  %2 = load i32, i32* %data.addr, align 4, !dbg !551
  %cmp = icmp sge i32 %2, 0, !dbg !553
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !554

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !555
  %cmp1 = icmp slt i32 %3, 10, !dbg !556
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !557

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %data.addr, align 4, !dbg !558
  %idxprom = sext i32 %4 to i64, !dbg !560
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !560
  store i32 1, i32* %arrayidx, align 4, !dbg !561
  store i32 0, i32* %i, align 4, !dbg !562
  br label %for.cond, !dbg !564

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !565
  %cmp3 = icmp slt i32 %5, 10, !dbg !567
  br i1 %cmp3, label %for.body, label %for.end, !dbg !568

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !569
  %idxprom4 = sext i32 %6 to i64, !dbg !571
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !571
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !571
  call void @printIntLine(i32 %7), !dbg !572
  br label %for.inc, !dbg !573

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !574
  %inc = add nsw i32 %8, 1, !dbg !574
  store i32 %inc, i32* %i, align 4, !dbg !574
  br label %for.cond, !dbg !575, !llvm.loop !576

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !578

if.else:                                          ; preds = %land.lhs.true, %if.then
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !579
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end6, !dbg !581

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink(i32 %data) #0 !dbg !583 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !584, metadata !DIExpression()), !dbg !585
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BGlobal, align 4, !dbg !586
  %tobool = icmp ne i32 %0, 0, !dbg !586
  br i1 %tobool, label %if.then, label %if.end5, !dbg !588

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !589, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !593, metadata !DIExpression()), !dbg !594
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !594
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !594
  %2 = load i32, i32* %data.addr, align 4, !dbg !595
  %cmp = icmp sge i32 %2, 0, !dbg !597
  br i1 %cmp, label %if.then1, label %if.else, !dbg !598

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !599
  %idxprom = sext i32 %3 to i64, !dbg !601
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !601
  store i32 1, i32* %arrayidx, align 4, !dbg !602
  store i32 0, i32* %i, align 4, !dbg !603
  br label %for.cond, !dbg !605

for.cond:                                         ; preds = %for.inc, %if.then1
  %4 = load i32, i32* %i, align 4, !dbg !606
  %cmp2 = icmp slt i32 %4, 10, !dbg !608
  br i1 %cmp2, label %for.body, label %for.end, !dbg !609

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !610
  %idxprom3 = sext i32 %5 to i64, !dbg !612
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !612
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !612
  call void @printIntLine(i32 %6), !dbg !613
  br label %for.inc, !dbg !614

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !615
  %inc = add nsw i32 %7, 1, !dbg !615
  store i32 %inc, i32* %i, align 4, !dbg !615
  br label %for.cond, !dbg !616, !llvm.loop !617

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !619

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !620
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end5, !dbg !622

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !624 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !627, metadata !DIExpression()), !dbg !628
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)), !dbg !629
  %0 = load i8*, i8** %line.addr, align 8, !dbg !630
  %cmp = icmp ne i8* %0, null, !dbg !632
  br i1 %cmp, label %if.then, label %if.end, !dbg !633

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !634
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !636
  br label %if.end, !dbg !637

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.13, i64 0, i64 0)), !dbg !638
  ret void, !dbg !639
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !640 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !641, metadata !DIExpression()), !dbg !642
  %0 = load i8*, i8** %line.addr, align 8, !dbg !643
  %cmp = icmp ne i8* %0, null, !dbg !645
  br i1 %cmp, label %if.then, label %if.end, !dbg !646

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !647
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !649
  br label %if.end, !dbg !650

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !652 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !658, metadata !DIExpression()), !dbg !659
  %0 = load i32*, i32** %line.addr, align 8, !dbg !660
  %cmp = icmp ne i32* %0, null, !dbg !662
  br i1 %cmp, label %if.then, label %if.end, !dbg !663

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !664
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !666
  br label %if.end, !dbg !667

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !668
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !669 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !670, metadata !DIExpression()), !dbg !671
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !672
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !673
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !675 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !679, metadata !DIExpression()), !dbg !680
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !681
  %conv = sext i16 %0 to i32, !dbg !681
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !682
  ret void, !dbg !683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !684 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !688, metadata !DIExpression()), !dbg !689
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !690
  %conv = fpext float %0 to double, !dbg !690
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !691
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !693 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !697, metadata !DIExpression()), !dbg !698
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !699
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !700
  ret void, !dbg !701
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !702 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !708, metadata !DIExpression()), !dbg !709
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !710
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !711
  ret void, !dbg !712
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !713 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !718, metadata !DIExpression()), !dbg !719
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !720
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !721
  ret void, !dbg !722
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !723 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !726, metadata !DIExpression()), !dbg !727
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !728
  %conv = sext i8 %0 to i32, !dbg !728
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !729
  ret void, !dbg !730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !731 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !736, metadata !DIExpression()), !dbg !740
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !741
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !742
  store i32 %0, i32* %arrayidx, align 4, !dbg !743
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !744
  store i32 0, i32* %arrayidx1, align 4, !dbg !745
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !746
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !747
  ret void, !dbg !748
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !749 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !752, metadata !DIExpression()), !dbg !753
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !754
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11.16, i64 0, i64 0), i32 %0), !dbg !755
  ret void, !dbg !756
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !757 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !760, metadata !DIExpression()), !dbg !761
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !762
  %conv = zext i8 %0 to i32, !dbg !762
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !763
  ret void, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !765 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !769, metadata !DIExpression()), !dbg !770
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !771
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !772
  ret void, !dbg !773
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !774 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !784, metadata !DIExpression()), !dbg !785
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !786
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !787
  %1 = load i32, i32* %intOne, align 4, !dbg !787
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !788
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !789
  %3 = load i32, i32* %intTwo, align 4, !dbg !789
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !790
  ret void, !dbg !791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !792 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !796, metadata !DIExpression()), !dbg !797
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !798, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.declare(metadata i64* %i, metadata !800, metadata !DIExpression()), !dbg !801
  store i64 0, i64* %i, align 8, !dbg !802
  br label %for.cond, !dbg !804

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !805
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !807
  %cmp = icmp ult i64 %0, %1, !dbg !808
  br i1 %cmp, label %for.body, label %for.end, !dbg !809

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !810
  %3 = load i64, i64* %i, align 8, !dbg !812
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !810
  %4 = load i8, i8* %arrayidx, align 1, !dbg !810
  %conv = zext i8 %4 to i32, !dbg !810
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !813
  br label %for.inc, !dbg !814

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !815
  %inc = add i64 %5, 1, !dbg !815
  store i64 %inc, i64* %i, align 8, !dbg !815
  br label %for.cond, !dbg !816, !llvm.loop !817

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !819
  ret void, !dbg !820
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !821 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !824, metadata !DIExpression()), !dbg !825
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !826, metadata !DIExpression()), !dbg !827
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !828, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !830, metadata !DIExpression()), !dbg !831
  store i64 0, i64* %numWritten, align 8, !dbg !831
  br label %while.cond, !dbg !832

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !833
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !834
  %cmp = icmp ult i64 %0, %1, !dbg !835
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !836

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !837
  %2 = load i16*, i16** %call, align 8, !dbg !837
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !837
  %4 = load i64, i64* %numWritten, align 8, !dbg !837
  %mul = mul i64 2, %4, !dbg !837
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !837
  %5 = load i8, i8* %arrayidx, align 1, !dbg !837
  %conv = sext i8 %5 to i32, !dbg !837
  %idxprom = sext i32 %conv to i64, !dbg !837
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !837
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !837
  %conv2 = zext i16 %6 to i32, !dbg !837
  %and = and i32 %conv2, 4096, !dbg !837
  %tobool = icmp ne i32 %and, 0, !dbg !837
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !838

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !839
  %7 = load i16*, i16** %call3, align 8, !dbg !839
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !839
  %9 = load i64, i64* %numWritten, align 8, !dbg !839
  %mul4 = mul i64 2, %9, !dbg !839
  %add = add i64 %mul4, 1, !dbg !839
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !839
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !839
  %conv6 = sext i8 %10 to i32, !dbg !839
  %idxprom7 = sext i32 %conv6 to i64, !dbg !839
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !839
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !839
  %conv9 = zext i16 %11 to i32, !dbg !839
  %and10 = and i32 %conv9, 4096, !dbg !839
  %tobool11 = icmp ne i32 %and10, 0, !dbg !838
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !840
  br i1 %12, label %while.body, label %while.end, !dbg !832

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !841, metadata !DIExpression()), !dbg !843
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !844
  %14 = load i64, i64* %numWritten, align 8, !dbg !845
  %mul12 = mul i64 2, %14, !dbg !846
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !844
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !847
  %15 = load i32, i32* %byte, align 4, !dbg !848
  %conv15 = trunc i32 %15 to i8, !dbg !849
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !850
  %17 = load i64, i64* %numWritten, align 8, !dbg !851
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !850
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !852
  %18 = load i64, i64* %numWritten, align 8, !dbg !853
  %inc = add i64 %18, 1, !dbg !853
  store i64 %inc, i64* %numWritten, align 8, !dbg !853
  br label %while.cond, !dbg !832, !llvm.loop !854

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !856
  ret i64 %19, !dbg !857
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !858 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !861, metadata !DIExpression()), !dbg !862
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !863, metadata !DIExpression()), !dbg !864
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !865, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !867, metadata !DIExpression()), !dbg !868
  store i64 0, i64* %numWritten, align 8, !dbg !868
  br label %while.cond, !dbg !869

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !870
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !871
  %cmp = icmp ult i64 %0, %1, !dbg !872
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !873

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !874
  %3 = load i64, i64* %numWritten, align 8, !dbg !875
  %mul = mul i64 2, %3, !dbg !876
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !874
  %4 = load i32, i32* %arrayidx, align 4, !dbg !874
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !877
  %tobool = icmp ne i32 %call, 0, !dbg !877
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !878

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !879
  %6 = load i64, i64* %numWritten, align 8, !dbg !880
  %mul1 = mul i64 2, %6, !dbg !881
  %add = add i64 %mul1, 1, !dbg !882
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !879
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !879
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !883
  %tobool4 = icmp ne i32 %call3, 0, !dbg !878
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !884
  br i1 %8, label %while.body, label %while.end, !dbg !869

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !885, metadata !DIExpression()), !dbg !887
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !888
  %10 = load i64, i64* %numWritten, align 8, !dbg !889
  %mul5 = mul i64 2, %10, !dbg !890
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !888
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !891
  %11 = load i32, i32* %byte, align 4, !dbg !892
  %conv = trunc i32 %11 to i8, !dbg !893
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !894
  %13 = load i64, i64* %numWritten, align 8, !dbg !895
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !894
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !896
  %14 = load i64, i64* %numWritten, align 8, !dbg !897
  %inc = add i64 %14, 1, !dbg !897
  store i64 %inc, i64* %numWritten, align 8, !dbg !897
  br label %while.cond, !dbg !869, !llvm.loop !898

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !900
  ret i64 %15, !dbg !901
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !902 {
entry:
  ret i32 1, !dbg !905
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !906 {
entry:
  ret i32 0, !dbg !907
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !908 {
entry:
  %call = call i32 @rand() #7, !dbg !909
  %rem = srem i32 %call, 2, !dbg !910
  ret i32 %rem, !dbg !911
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !912 {
entry:
  ret void, !dbg !913
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !914 {
entry:
  ret void, !dbg !915
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !916 {
entry:
  ret void, !dbg !917
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !918 {
entry:
  ret void, !dbg !919
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !920 {
entry:
  ret void, !dbg !921
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !922 {
entry:
  ret void, !dbg !923
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !924 {
entry:
  ret void, !dbg !925
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !926 {
entry:
  ret void, !dbg !927
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !928 {
entry:
  ret void, !dbg !929
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !930 {
entry:
  ret void, !dbg !931
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !932 {
entry:
  ret void, !dbg !933
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !934 {
entry:
  ret void, !dbg !935
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !936 {
entry:
  ret void, !dbg !937
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !938 {
entry:
  ret void, !dbg !939
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !940 {
entry:
  ret void, !dbg !941
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !942 {
entry:
  ret void, !dbg !943
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !944 {
entry:
  ret void, !dbg !945
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !946 {
entry:
  ret void, !dbg !947
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

!llvm.dbg.cu = !{!2, !114, !76}
!llvm.ident = !{!117, !117, !117}
!llvm.module.flags = !{!118, !119, !120}

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
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !76, file: !77, line: 174, type: !69, isLocal: false, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !94, globals: !97, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_727/source_code")
!78 = !{!79}
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !80, line: 46, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!82 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!94 = !{!95, !69, !60, !96}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!97 = !{!74, !98, !100, !102, !104, !106, !108, !110}
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !76, file: !77, line: 175, type: !69, isLocal: false, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !76, file: !77, line: 176, type: !69, isLocal: false, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "globalTrue", scope: !76, file: !77, line: 181, type: !69, isLocal: false, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "globalFalse", scope: !76, file: !77, line: 182, type: !69, isLocal: false, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "globalFive", scope: !76, file: !77, line: 183, type: !69, isLocal: false, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "globalArgc", scope: !76, file: !77, line: 214, type: !69, isLocal: false, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "globalArgv", scope: !76, file: !77, line: 215, type: !112, isLocal: false, isDefinition: true)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !116, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_727/source_code")
!116 = !{}
!117 = !{!"clang version 12.0.0"}
!118 = !{i32 7, !"Dwarf Version", i32 4}
!119 = !{i32 2, !"Debug Info Version", i32 3}
!120 = !{i32 1, !"wchar_size", i32 4}
!121 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_bad", scope: !3, file: !3, line: 49, type: !122, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!122 = !DISubroutineType(types: !123)
!123 = !{null}
!124 = !DILocalVariable(name: "data", scope: !121, file: !3, line: 51, type: !69)
!125 = !DILocation(line: 51, column: 9, scope: !121)
!126 = !DILocation(line: 53, column: 10, scope: !121)
!127 = !DILocalVariable(name: "recvResult", scope: !128, file: !3, line: 59, type: !69)
!128 = distinct !DILexicalBlock(scope: !121, file: !3, line: 54, column: 5)
!129 = !DILocation(line: 59, column: 13, scope: !128)
!130 = !DILocalVariable(name: "service", scope: !128, file: !3, line: 60, type: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !132)
!132 = !{!133, !134, !138, !142}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !131, file: !19, line: 240, baseType: !58, size: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !131, file: !19, line: 241, baseType: !135, size: 16, offset: 16)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 25, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 40, baseType: !60)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !131, file: !19, line: 242, baseType: !139, size: 32, offset: 32)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !139, file: !19, line: 33, baseType: !48, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !131, file: !19, line: 245, baseType: !143, size: 64, offset: 64)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 64, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 8)
!146 = !DILocation(line: 60, column: 28, scope: !128)
!147 = !DILocalVariable(name: "listenSocket", scope: !128, file: !3, line: 61, type: !69)
!148 = !DILocation(line: 61, column: 16, scope: !128)
!149 = !DILocalVariable(name: "acceptSocket", scope: !128, file: !3, line: 62, type: !69)
!150 = !DILocation(line: 62, column: 16, scope: !128)
!151 = !DILocalVariable(name: "inputBuffer", scope: !128, file: !3, line: 63, type: !62)
!152 = !DILocation(line: 63, column: 14, scope: !128)
!153 = !DILocation(line: 64, column: 9, scope: !128)
!154 = !DILocation(line: 74, column: 28, scope: !155)
!155 = distinct !DILexicalBlock(scope: !128, file: !3, line: 65, column: 9)
!156 = !DILocation(line: 74, column: 26, scope: !155)
!157 = !DILocation(line: 75, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !3, line: 75, column: 17)
!159 = !DILocation(line: 75, column: 30, scope: !158)
!160 = !DILocation(line: 75, column: 17, scope: !155)
!161 = !DILocation(line: 77, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 76, column: 13)
!163 = !DILocation(line: 79, column: 13, scope: !155)
!164 = !DILocation(line: 80, column: 21, scope: !155)
!165 = !DILocation(line: 80, column: 32, scope: !155)
!166 = !DILocation(line: 81, column: 21, scope: !155)
!167 = !DILocation(line: 81, column: 30, scope: !155)
!168 = !DILocation(line: 81, column: 37, scope: !155)
!169 = !DILocation(line: 82, column: 32, scope: !155)
!170 = !DILocation(line: 82, column: 21, scope: !155)
!171 = !DILocation(line: 82, column: 30, scope: !155)
!172 = !DILocation(line: 83, column: 22, scope: !173)
!173 = distinct !DILexicalBlock(scope: !155, file: !3, line: 83, column: 17)
!174 = !DILocation(line: 83, column: 36, scope: !173)
!175 = !DILocation(line: 83, column: 17, scope: !173)
!176 = !DILocation(line: 83, column: 81, scope: !173)
!177 = !DILocation(line: 83, column: 17, scope: !155)
!178 = !DILocation(line: 85, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !173, file: !3, line: 84, column: 13)
!180 = !DILocation(line: 87, column: 24, scope: !181)
!181 = distinct !DILexicalBlock(scope: !155, file: !3, line: 87, column: 17)
!182 = !DILocation(line: 87, column: 17, scope: !181)
!183 = !DILocation(line: 87, column: 54, scope: !181)
!184 = !DILocation(line: 87, column: 17, scope: !155)
!185 = !DILocation(line: 89, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !181, file: !3, line: 88, column: 13)
!187 = !DILocation(line: 91, column: 35, scope: !155)
!188 = !DILocation(line: 91, column: 28, scope: !155)
!189 = !DILocation(line: 91, column: 26, scope: !155)
!190 = !DILocation(line: 92, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !155, file: !3, line: 92, column: 17)
!192 = !DILocation(line: 92, column: 30, scope: !191)
!193 = !DILocation(line: 92, column: 17, scope: !155)
!194 = !DILocation(line: 94, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !3, line: 93, column: 13)
!196 = !DILocation(line: 97, column: 31, scope: !155)
!197 = !DILocation(line: 97, column: 45, scope: !155)
!198 = !DILocation(line: 97, column: 26, scope: !155)
!199 = !DILocation(line: 97, column: 24, scope: !155)
!200 = !DILocation(line: 98, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !155, file: !3, line: 98, column: 17)
!202 = !DILocation(line: 98, column: 28, scope: !201)
!203 = !DILocation(line: 98, column: 44, scope: !201)
!204 = !DILocation(line: 98, column: 47, scope: !201)
!205 = !DILocation(line: 98, column: 58, scope: !201)
!206 = !DILocation(line: 98, column: 17, scope: !155)
!207 = !DILocation(line: 100, column: 17, scope: !208)
!208 = distinct !DILexicalBlock(scope: !201, file: !3, line: 99, column: 13)
!209 = !DILocation(line: 103, column: 25, scope: !155)
!210 = !DILocation(line: 103, column: 13, scope: !155)
!211 = !DILocation(line: 103, column: 37, scope: !155)
!212 = !DILocation(line: 105, column: 25, scope: !155)
!213 = !DILocation(line: 105, column: 20, scope: !155)
!214 = !DILocation(line: 105, column: 18, scope: !155)
!215 = !DILocation(line: 106, column: 9, scope: !155)
!216 = !DILocation(line: 108, column: 13, scope: !217)
!217 = distinct !DILexicalBlock(scope: !128, file: !3, line: 108, column: 13)
!218 = !DILocation(line: 108, column: 26, scope: !217)
!219 = !DILocation(line: 108, column: 13, scope: !128)
!220 = !DILocation(line: 110, column: 26, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !3, line: 109, column: 9)
!222 = !DILocation(line: 110, column: 13, scope: !221)
!223 = !DILocation(line: 111, column: 9, scope: !221)
!224 = !DILocation(line: 112, column: 13, scope: !225)
!225 = distinct !DILexicalBlock(scope: !128, file: !3, line: 112, column: 13)
!226 = !DILocation(line: 112, column: 26, scope: !225)
!227 = !DILocation(line: 112, column: 13, scope: !128)
!228 = !DILocation(line: 114, column: 26, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !3, line: 113, column: 9)
!230 = !DILocation(line: 114, column: 13, scope: !229)
!231 = !DILocation(line: 115, column: 9, scope: !229)
!232 = !DILocation(line: 123, column: 75, scope: !121)
!233 = !DILocation(line: 124, column: 73, scope: !121)
!234 = !DILocation(line: 124, column: 5, scope: !121)
!235 = !DILocation(line: 125, column: 1, scope: !121)
!236 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 138, type: !122, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!237 = !DILocalVariable(name: "data", scope: !236, file: !3, line: 140, type: !69)
!238 = !DILocation(line: 140, column: 9, scope: !236)
!239 = !DILocation(line: 142, column: 10, scope: !236)
!240 = !DILocalVariable(name: "recvResult", scope: !241, file: !3, line: 148, type: !69)
!241 = distinct !DILexicalBlock(scope: !236, file: !3, line: 143, column: 5)
!242 = !DILocation(line: 148, column: 13, scope: !241)
!243 = !DILocalVariable(name: "service", scope: !241, file: !3, line: 149, type: !131)
!244 = !DILocation(line: 149, column: 28, scope: !241)
!245 = !DILocalVariable(name: "listenSocket", scope: !241, file: !3, line: 150, type: !69)
!246 = !DILocation(line: 150, column: 16, scope: !241)
!247 = !DILocalVariable(name: "acceptSocket", scope: !241, file: !3, line: 151, type: !69)
!248 = !DILocation(line: 151, column: 16, scope: !241)
!249 = !DILocalVariable(name: "inputBuffer", scope: !241, file: !3, line: 152, type: !62)
!250 = !DILocation(line: 152, column: 14, scope: !241)
!251 = !DILocation(line: 153, column: 9, scope: !241)
!252 = !DILocation(line: 163, column: 28, scope: !253)
!253 = distinct !DILexicalBlock(scope: !241, file: !3, line: 154, column: 9)
!254 = !DILocation(line: 163, column: 26, scope: !253)
!255 = !DILocation(line: 164, column: 17, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !3, line: 164, column: 17)
!257 = !DILocation(line: 164, column: 30, scope: !256)
!258 = !DILocation(line: 164, column: 17, scope: !253)
!259 = !DILocation(line: 166, column: 17, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !3, line: 165, column: 13)
!261 = !DILocation(line: 168, column: 13, scope: !253)
!262 = !DILocation(line: 169, column: 21, scope: !253)
!263 = !DILocation(line: 169, column: 32, scope: !253)
!264 = !DILocation(line: 170, column: 21, scope: !253)
!265 = !DILocation(line: 170, column: 30, scope: !253)
!266 = !DILocation(line: 170, column: 37, scope: !253)
!267 = !DILocation(line: 171, column: 32, scope: !253)
!268 = !DILocation(line: 171, column: 21, scope: !253)
!269 = !DILocation(line: 171, column: 30, scope: !253)
!270 = !DILocation(line: 172, column: 22, scope: !271)
!271 = distinct !DILexicalBlock(scope: !253, file: !3, line: 172, column: 17)
!272 = !DILocation(line: 172, column: 36, scope: !271)
!273 = !DILocation(line: 172, column: 17, scope: !271)
!274 = !DILocation(line: 172, column: 81, scope: !271)
!275 = !DILocation(line: 172, column: 17, scope: !253)
!276 = !DILocation(line: 174, column: 17, scope: !277)
!277 = distinct !DILexicalBlock(scope: !271, file: !3, line: 173, column: 13)
!278 = !DILocation(line: 176, column: 24, scope: !279)
!279 = distinct !DILexicalBlock(scope: !253, file: !3, line: 176, column: 17)
!280 = !DILocation(line: 176, column: 17, scope: !279)
!281 = !DILocation(line: 176, column: 54, scope: !279)
!282 = !DILocation(line: 176, column: 17, scope: !253)
!283 = !DILocation(line: 178, column: 17, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !3, line: 177, column: 13)
!285 = !DILocation(line: 180, column: 35, scope: !253)
!286 = !DILocation(line: 180, column: 28, scope: !253)
!287 = !DILocation(line: 180, column: 26, scope: !253)
!288 = !DILocation(line: 181, column: 17, scope: !289)
!289 = distinct !DILexicalBlock(scope: !253, file: !3, line: 181, column: 17)
!290 = !DILocation(line: 181, column: 30, scope: !289)
!291 = !DILocation(line: 181, column: 17, scope: !253)
!292 = !DILocation(line: 183, column: 17, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !3, line: 182, column: 13)
!294 = !DILocation(line: 186, column: 31, scope: !253)
!295 = !DILocation(line: 186, column: 45, scope: !253)
!296 = !DILocation(line: 186, column: 26, scope: !253)
!297 = !DILocation(line: 186, column: 24, scope: !253)
!298 = !DILocation(line: 187, column: 17, scope: !299)
!299 = distinct !DILexicalBlock(scope: !253, file: !3, line: 187, column: 17)
!300 = !DILocation(line: 187, column: 28, scope: !299)
!301 = !DILocation(line: 187, column: 44, scope: !299)
!302 = !DILocation(line: 187, column: 47, scope: !299)
!303 = !DILocation(line: 187, column: 58, scope: !299)
!304 = !DILocation(line: 187, column: 17, scope: !253)
!305 = !DILocation(line: 189, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !299, file: !3, line: 188, column: 13)
!307 = !DILocation(line: 192, column: 25, scope: !253)
!308 = !DILocation(line: 192, column: 13, scope: !253)
!309 = !DILocation(line: 192, column: 37, scope: !253)
!310 = !DILocation(line: 194, column: 25, scope: !253)
!311 = !DILocation(line: 194, column: 20, scope: !253)
!312 = !DILocation(line: 194, column: 18, scope: !253)
!313 = !DILocation(line: 195, column: 9, scope: !253)
!314 = !DILocation(line: 197, column: 13, scope: !315)
!315 = distinct !DILexicalBlock(scope: !241, file: !3, line: 197, column: 13)
!316 = !DILocation(line: 197, column: 26, scope: !315)
!317 = !DILocation(line: 197, column: 13, scope: !241)
!318 = !DILocation(line: 199, column: 26, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !3, line: 198, column: 9)
!320 = !DILocation(line: 199, column: 13, scope: !319)
!321 = !DILocation(line: 200, column: 9, scope: !319)
!322 = !DILocation(line: 201, column: 13, scope: !323)
!323 = distinct !DILexicalBlock(scope: !241, file: !3, line: 201, column: 13)
!324 = !DILocation(line: 201, column: 26, scope: !323)
!325 = !DILocation(line: 201, column: 13, scope: !241)
!326 = !DILocation(line: 203, column: 26, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !3, line: 202, column: 9)
!328 = !DILocation(line: 203, column: 13, scope: !327)
!329 = !DILocation(line: 204, column: 9, scope: !327)
!330 = !DILocation(line: 212, column: 80, scope: !236)
!331 = !DILocation(line: 213, column: 78, scope: !236)
!332 = !DILocation(line: 213, column: 5, scope: !236)
!333 = !DILocation(line: 214, column: 1, scope: !236)
!334 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 218, type: !122, scopeLine: 219, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!335 = !DILocalVariable(name: "data", scope: !334, file: !3, line: 220, type: !69)
!336 = !DILocation(line: 220, column: 9, scope: !334)
!337 = !DILocation(line: 222, column: 10, scope: !334)
!338 = !DILocalVariable(name: "recvResult", scope: !339, file: !3, line: 228, type: !69)
!339 = distinct !DILexicalBlock(scope: !334, file: !3, line: 223, column: 5)
!340 = !DILocation(line: 228, column: 13, scope: !339)
!341 = !DILocalVariable(name: "service", scope: !339, file: !3, line: 229, type: !131)
!342 = !DILocation(line: 229, column: 28, scope: !339)
!343 = !DILocalVariable(name: "listenSocket", scope: !339, file: !3, line: 230, type: !69)
!344 = !DILocation(line: 230, column: 16, scope: !339)
!345 = !DILocalVariable(name: "acceptSocket", scope: !339, file: !3, line: 231, type: !69)
!346 = !DILocation(line: 231, column: 16, scope: !339)
!347 = !DILocalVariable(name: "inputBuffer", scope: !339, file: !3, line: 232, type: !62)
!348 = !DILocation(line: 232, column: 14, scope: !339)
!349 = !DILocation(line: 233, column: 9, scope: !339)
!350 = !DILocation(line: 243, column: 28, scope: !351)
!351 = distinct !DILexicalBlock(scope: !339, file: !3, line: 234, column: 9)
!352 = !DILocation(line: 243, column: 26, scope: !351)
!353 = !DILocation(line: 244, column: 17, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !3, line: 244, column: 17)
!355 = !DILocation(line: 244, column: 30, scope: !354)
!356 = !DILocation(line: 244, column: 17, scope: !351)
!357 = !DILocation(line: 246, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !3, line: 245, column: 13)
!359 = !DILocation(line: 248, column: 13, scope: !351)
!360 = !DILocation(line: 249, column: 21, scope: !351)
!361 = !DILocation(line: 249, column: 32, scope: !351)
!362 = !DILocation(line: 250, column: 21, scope: !351)
!363 = !DILocation(line: 250, column: 30, scope: !351)
!364 = !DILocation(line: 250, column: 37, scope: !351)
!365 = !DILocation(line: 251, column: 32, scope: !351)
!366 = !DILocation(line: 251, column: 21, scope: !351)
!367 = !DILocation(line: 251, column: 30, scope: !351)
!368 = !DILocation(line: 252, column: 22, scope: !369)
!369 = distinct !DILexicalBlock(scope: !351, file: !3, line: 252, column: 17)
!370 = !DILocation(line: 252, column: 36, scope: !369)
!371 = !DILocation(line: 252, column: 17, scope: !369)
!372 = !DILocation(line: 252, column: 81, scope: !369)
!373 = !DILocation(line: 252, column: 17, scope: !351)
!374 = !DILocation(line: 254, column: 17, scope: !375)
!375 = distinct !DILexicalBlock(scope: !369, file: !3, line: 253, column: 13)
!376 = !DILocation(line: 256, column: 24, scope: !377)
!377 = distinct !DILexicalBlock(scope: !351, file: !3, line: 256, column: 17)
!378 = !DILocation(line: 256, column: 17, scope: !377)
!379 = !DILocation(line: 256, column: 54, scope: !377)
!380 = !DILocation(line: 256, column: 17, scope: !351)
!381 = !DILocation(line: 258, column: 17, scope: !382)
!382 = distinct !DILexicalBlock(scope: !377, file: !3, line: 257, column: 13)
!383 = !DILocation(line: 260, column: 35, scope: !351)
!384 = !DILocation(line: 260, column: 28, scope: !351)
!385 = !DILocation(line: 260, column: 26, scope: !351)
!386 = !DILocation(line: 261, column: 17, scope: !387)
!387 = distinct !DILexicalBlock(scope: !351, file: !3, line: 261, column: 17)
!388 = !DILocation(line: 261, column: 30, scope: !387)
!389 = !DILocation(line: 261, column: 17, scope: !351)
!390 = !DILocation(line: 263, column: 17, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !3, line: 262, column: 13)
!392 = !DILocation(line: 266, column: 31, scope: !351)
!393 = !DILocation(line: 266, column: 45, scope: !351)
!394 = !DILocation(line: 266, column: 26, scope: !351)
!395 = !DILocation(line: 266, column: 24, scope: !351)
!396 = !DILocation(line: 267, column: 17, scope: !397)
!397 = distinct !DILexicalBlock(scope: !351, file: !3, line: 267, column: 17)
!398 = !DILocation(line: 267, column: 28, scope: !397)
!399 = !DILocation(line: 267, column: 44, scope: !397)
!400 = !DILocation(line: 267, column: 47, scope: !397)
!401 = !DILocation(line: 267, column: 58, scope: !397)
!402 = !DILocation(line: 267, column: 17, scope: !351)
!403 = !DILocation(line: 269, column: 17, scope: !404)
!404 = distinct !DILexicalBlock(scope: !397, file: !3, line: 268, column: 13)
!405 = !DILocation(line: 272, column: 25, scope: !351)
!406 = !DILocation(line: 272, column: 13, scope: !351)
!407 = !DILocation(line: 272, column: 37, scope: !351)
!408 = !DILocation(line: 274, column: 25, scope: !351)
!409 = !DILocation(line: 274, column: 20, scope: !351)
!410 = !DILocation(line: 274, column: 18, scope: !351)
!411 = !DILocation(line: 275, column: 9, scope: !351)
!412 = !DILocation(line: 277, column: 13, scope: !413)
!413 = distinct !DILexicalBlock(scope: !339, file: !3, line: 277, column: 13)
!414 = !DILocation(line: 277, column: 26, scope: !413)
!415 = !DILocation(line: 277, column: 13, scope: !339)
!416 = !DILocation(line: 279, column: 26, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !3, line: 278, column: 9)
!418 = !DILocation(line: 279, column: 13, scope: !417)
!419 = !DILocation(line: 280, column: 9, scope: !417)
!420 = !DILocation(line: 281, column: 13, scope: !421)
!421 = distinct !DILexicalBlock(scope: !339, file: !3, line: 281, column: 13)
!422 = !DILocation(line: 281, column: 26, scope: !421)
!423 = !DILocation(line: 281, column: 13, scope: !339)
!424 = !DILocation(line: 283, column: 26, scope: !425)
!425 = distinct !DILexicalBlock(scope: !421, file: !3, line: 282, column: 9)
!426 = !DILocation(line: 283, column: 13, scope: !425)
!427 = !DILocation(line: 284, column: 9, scope: !425)
!428 = !DILocation(line: 292, column: 80, scope: !334)
!429 = !DILocation(line: 293, column: 78, scope: !334)
!430 = !DILocation(line: 293, column: 5, scope: !334)
!431 = !DILocation(line: 294, column: 1, scope: !334)
!432 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 298, type: !122, scopeLine: 299, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!433 = !DILocalVariable(name: "data", scope: !432, file: !3, line: 300, type: !69)
!434 = !DILocation(line: 300, column: 9, scope: !432)
!435 = !DILocation(line: 302, column: 10, scope: !432)
!436 = !DILocation(line: 305, column: 10, scope: !432)
!437 = !DILocation(line: 306, column: 79, scope: !432)
!438 = !DILocation(line: 307, column: 77, scope: !432)
!439 = !DILocation(line: 307, column: 5, scope: !432)
!440 = !DILocation(line: 308, column: 1, scope: !432)
!441 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_good", scope: !3, file: !3, line: 310, type: !122, scopeLine: 311, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!442 = !DILocation(line: 312, column: 5, scope: !441)
!443 = !DILocation(line: 313, column: 5, scope: !441)
!444 = !DILocation(line: 314, column: 5, scope: !441)
!445 = !DILocation(line: 315, column: 1, scope: !441)
!446 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_badSink", scope: !115, file: !115, line: 25, type: !447, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !116)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !69}
!449 = !DILocalVariable(name: "data", arg: 1, scope: !446, file: !115, line: 25, type: !69)
!450 = !DILocation(line: 25, column: 78, scope: !446)
!451 = !DILocation(line: 27, column: 8, scope: !452)
!452 = distinct !DILexicalBlock(scope: !446, file: !115, line: 27, column: 8)
!453 = !DILocation(line: 27, column: 8, scope: !446)
!454 = !DILocalVariable(name: "i", scope: !455, file: !115, line: 30, type: !69)
!455 = distinct !DILexicalBlock(scope: !456, file: !115, line: 29, column: 9)
!456 = distinct !DILexicalBlock(scope: !452, file: !115, line: 28, column: 5)
!457 = !DILocation(line: 30, column: 17, scope: !455)
!458 = !DILocalVariable(name: "buffer", scope: !455, file: !115, line: 31, type: !459)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 320, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 10)
!462 = !DILocation(line: 31, column: 17, scope: !455)
!463 = !DILocation(line: 34, column: 17, scope: !464)
!464 = distinct !DILexicalBlock(scope: !455, file: !115, line: 34, column: 17)
!465 = !DILocation(line: 34, column: 22, scope: !464)
!466 = !DILocation(line: 34, column: 17, scope: !455)
!467 = !DILocation(line: 36, column: 24, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !115, line: 35, column: 13)
!469 = !DILocation(line: 36, column: 17, scope: !468)
!470 = !DILocation(line: 36, column: 30, scope: !468)
!471 = !DILocation(line: 38, column: 23, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !115, line: 38, column: 17)
!473 = !DILocation(line: 38, column: 21, scope: !472)
!474 = !DILocation(line: 38, column: 28, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !115, line: 38, column: 17)
!476 = !DILocation(line: 38, column: 30, scope: !475)
!477 = !DILocation(line: 38, column: 17, scope: !472)
!478 = !DILocation(line: 40, column: 41, scope: !479)
!479 = distinct !DILexicalBlock(scope: !475, file: !115, line: 39, column: 17)
!480 = !DILocation(line: 40, column: 34, scope: !479)
!481 = !DILocation(line: 40, column: 21, scope: !479)
!482 = !DILocation(line: 41, column: 17, scope: !479)
!483 = !DILocation(line: 38, column: 37, scope: !475)
!484 = !DILocation(line: 38, column: 17, scope: !475)
!485 = distinct !{!485, !477, !486, !487}
!486 = !DILocation(line: 41, column: 17, scope: !472)
!487 = !{!"llvm.loop.mustprogress"}
!488 = !DILocation(line: 42, column: 13, scope: !468)
!489 = !DILocation(line: 45, column: 17, scope: !490)
!490 = distinct !DILexicalBlock(scope: !464, file: !115, line: 44, column: 13)
!491 = !DILocation(line: 48, column: 5, scope: !456)
!492 = !DILocation(line: 49, column: 1, scope: !446)
!493 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G1Sink", scope: !115, file: !115, line: 61, type: !447, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !116)
!494 = !DILocalVariable(name: "data", arg: 1, scope: !493, file: !115, line: 61, type: !69)
!495 = !DILocation(line: 61, column: 83, scope: !493)
!496 = !DILocation(line: 63, column: 8, scope: !497)
!497 = distinct !DILexicalBlock(scope: !493, file: !115, line: 63, column: 8)
!498 = !DILocation(line: 63, column: 8, scope: !493)
!499 = !DILocation(line: 66, column: 9, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !115, line: 64, column: 5)
!501 = !DILocation(line: 67, column: 5, scope: !500)
!502 = !DILocalVariable(name: "i", scope: !503, file: !115, line: 71, type: !69)
!503 = distinct !DILexicalBlock(scope: !504, file: !115, line: 70, column: 9)
!504 = distinct !DILexicalBlock(scope: !497, file: !115, line: 69, column: 5)
!505 = !DILocation(line: 71, column: 17, scope: !503)
!506 = !DILocalVariable(name: "buffer", scope: !503, file: !115, line: 72, type: !459)
!507 = !DILocation(line: 72, column: 17, scope: !503)
!508 = !DILocation(line: 74, column: 17, scope: !509)
!509 = distinct !DILexicalBlock(scope: !503, file: !115, line: 74, column: 17)
!510 = !DILocation(line: 74, column: 22, scope: !509)
!511 = !DILocation(line: 74, column: 27, scope: !509)
!512 = !DILocation(line: 74, column: 30, scope: !509)
!513 = !DILocation(line: 74, column: 35, scope: !509)
!514 = !DILocation(line: 74, column: 17, scope: !503)
!515 = !DILocation(line: 76, column: 24, scope: !516)
!516 = distinct !DILexicalBlock(scope: !509, file: !115, line: 75, column: 13)
!517 = !DILocation(line: 76, column: 17, scope: !516)
!518 = !DILocation(line: 76, column: 30, scope: !516)
!519 = !DILocation(line: 78, column: 23, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !115, line: 78, column: 17)
!521 = !DILocation(line: 78, column: 21, scope: !520)
!522 = !DILocation(line: 78, column: 28, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !115, line: 78, column: 17)
!524 = !DILocation(line: 78, column: 30, scope: !523)
!525 = !DILocation(line: 78, column: 17, scope: !520)
!526 = !DILocation(line: 80, column: 41, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !115, line: 79, column: 17)
!528 = !DILocation(line: 80, column: 34, scope: !527)
!529 = !DILocation(line: 80, column: 21, scope: !527)
!530 = !DILocation(line: 81, column: 17, scope: !527)
!531 = !DILocation(line: 78, column: 37, scope: !523)
!532 = !DILocation(line: 78, column: 17, scope: !523)
!533 = distinct !{!533, !525, !534, !487}
!534 = !DILocation(line: 81, column: 17, scope: !520)
!535 = !DILocation(line: 82, column: 13, scope: !516)
!536 = !DILocation(line: 85, column: 17, scope: !537)
!537 = distinct !DILexicalBlock(scope: !509, file: !115, line: 84, column: 13)
!538 = !DILocation(line: 89, column: 1, scope: !493)
!539 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodB2G2Sink", scope: !115, file: !115, line: 92, type: !447, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !116)
!540 = !DILocalVariable(name: "data", arg: 1, scope: !539, file: !115, line: 92, type: !69)
!541 = !DILocation(line: 92, column: 83, scope: !539)
!542 = !DILocation(line: 94, column: 8, scope: !543)
!543 = distinct !DILexicalBlock(scope: !539, file: !115, line: 94, column: 8)
!544 = !DILocation(line: 94, column: 8, scope: !539)
!545 = !DILocalVariable(name: "i", scope: !546, file: !115, line: 97, type: !69)
!546 = distinct !DILexicalBlock(scope: !547, file: !115, line: 96, column: 9)
!547 = distinct !DILexicalBlock(scope: !543, file: !115, line: 95, column: 5)
!548 = !DILocation(line: 97, column: 17, scope: !546)
!549 = !DILocalVariable(name: "buffer", scope: !546, file: !115, line: 98, type: !459)
!550 = !DILocation(line: 98, column: 17, scope: !546)
!551 = !DILocation(line: 100, column: 17, scope: !552)
!552 = distinct !DILexicalBlock(scope: !546, file: !115, line: 100, column: 17)
!553 = !DILocation(line: 100, column: 22, scope: !552)
!554 = !DILocation(line: 100, column: 27, scope: !552)
!555 = !DILocation(line: 100, column: 30, scope: !552)
!556 = !DILocation(line: 100, column: 35, scope: !552)
!557 = !DILocation(line: 100, column: 17, scope: !546)
!558 = !DILocation(line: 102, column: 24, scope: !559)
!559 = distinct !DILexicalBlock(scope: !552, file: !115, line: 101, column: 13)
!560 = !DILocation(line: 102, column: 17, scope: !559)
!561 = !DILocation(line: 102, column: 30, scope: !559)
!562 = !DILocation(line: 104, column: 23, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !115, line: 104, column: 17)
!564 = !DILocation(line: 104, column: 21, scope: !563)
!565 = !DILocation(line: 104, column: 28, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !115, line: 104, column: 17)
!567 = !DILocation(line: 104, column: 30, scope: !566)
!568 = !DILocation(line: 104, column: 17, scope: !563)
!569 = !DILocation(line: 106, column: 41, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !115, line: 105, column: 17)
!571 = !DILocation(line: 106, column: 34, scope: !570)
!572 = !DILocation(line: 106, column: 21, scope: !570)
!573 = !DILocation(line: 107, column: 17, scope: !570)
!574 = !DILocation(line: 104, column: 37, scope: !566)
!575 = !DILocation(line: 104, column: 17, scope: !566)
!576 = distinct !{!576, !568, !577, !487}
!577 = !DILocation(line: 107, column: 17, scope: !563)
!578 = !DILocation(line: 108, column: 13, scope: !559)
!579 = !DILocation(line: 111, column: 17, scope: !580)
!580 = distinct !DILexicalBlock(scope: !552, file: !115, line: 110, column: 13)
!581 = !DILocation(line: 114, column: 5, scope: !547)
!582 = !DILocation(line: 115, column: 1, scope: !539)
!583 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_22_goodG2BSink", scope: !115, file: !115, line: 118, type: !447, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !116)
!584 = !DILocalVariable(name: "data", arg: 1, scope: !583, file: !115, line: 118, type: !69)
!585 = !DILocation(line: 118, column: 82, scope: !583)
!586 = !DILocation(line: 120, column: 8, scope: !587)
!587 = distinct !DILexicalBlock(scope: !583, file: !115, line: 120, column: 8)
!588 = !DILocation(line: 120, column: 8, scope: !583)
!589 = !DILocalVariable(name: "i", scope: !590, file: !115, line: 123, type: !69)
!590 = distinct !DILexicalBlock(scope: !591, file: !115, line: 122, column: 9)
!591 = distinct !DILexicalBlock(scope: !587, file: !115, line: 121, column: 5)
!592 = !DILocation(line: 123, column: 17, scope: !590)
!593 = !DILocalVariable(name: "buffer", scope: !590, file: !115, line: 124, type: !459)
!594 = !DILocation(line: 124, column: 17, scope: !590)
!595 = !DILocation(line: 127, column: 17, scope: !596)
!596 = distinct !DILexicalBlock(scope: !590, file: !115, line: 127, column: 17)
!597 = !DILocation(line: 127, column: 22, scope: !596)
!598 = !DILocation(line: 127, column: 17, scope: !590)
!599 = !DILocation(line: 129, column: 24, scope: !600)
!600 = distinct !DILexicalBlock(scope: !596, file: !115, line: 128, column: 13)
!601 = !DILocation(line: 129, column: 17, scope: !600)
!602 = !DILocation(line: 129, column: 30, scope: !600)
!603 = !DILocation(line: 131, column: 23, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !115, line: 131, column: 17)
!605 = !DILocation(line: 131, column: 21, scope: !604)
!606 = !DILocation(line: 131, column: 28, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !115, line: 131, column: 17)
!608 = !DILocation(line: 131, column: 30, scope: !607)
!609 = !DILocation(line: 131, column: 17, scope: !604)
!610 = !DILocation(line: 133, column: 41, scope: !611)
!611 = distinct !DILexicalBlock(scope: !607, file: !115, line: 132, column: 17)
!612 = !DILocation(line: 133, column: 34, scope: !611)
!613 = !DILocation(line: 133, column: 21, scope: !611)
!614 = !DILocation(line: 134, column: 17, scope: !611)
!615 = !DILocation(line: 131, column: 37, scope: !607)
!616 = !DILocation(line: 131, column: 17, scope: !607)
!617 = distinct !{!617, !609, !618, !487}
!618 = !DILocation(line: 134, column: 17, scope: !604)
!619 = !DILocation(line: 135, column: 13, scope: !600)
!620 = !DILocation(line: 138, column: 17, scope: !621)
!621 = distinct !DILexicalBlock(scope: !596, file: !115, line: 137, column: 13)
!622 = !DILocation(line: 141, column: 5, scope: !591)
!623 = !DILocation(line: 142, column: 1, scope: !583)
!624 = distinct !DISubprogram(name: "printLine", scope: !77, file: !77, line: 11, type: !625, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !113}
!627 = !DILocalVariable(name: "line", arg: 1, scope: !624, file: !77, line: 11, type: !113)
!628 = !DILocation(line: 11, column: 25, scope: !624)
!629 = !DILocation(line: 13, column: 1, scope: !624)
!630 = !DILocation(line: 14, column: 8, scope: !631)
!631 = distinct !DILexicalBlock(scope: !624, file: !77, line: 14, column: 8)
!632 = !DILocation(line: 14, column: 13, scope: !631)
!633 = !DILocation(line: 14, column: 8, scope: !624)
!634 = !DILocation(line: 16, column: 24, scope: !635)
!635 = distinct !DILexicalBlock(scope: !631, file: !77, line: 15, column: 5)
!636 = !DILocation(line: 16, column: 9, scope: !635)
!637 = !DILocation(line: 17, column: 5, scope: !635)
!638 = !DILocation(line: 18, column: 5, scope: !624)
!639 = !DILocation(line: 19, column: 1, scope: !624)
!640 = distinct !DISubprogram(name: "printSinkLine", scope: !77, file: !77, line: 20, type: !625, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!641 = !DILocalVariable(name: "line", arg: 1, scope: !640, file: !77, line: 20, type: !113)
!642 = !DILocation(line: 20, column: 29, scope: !640)
!643 = !DILocation(line: 22, column: 8, scope: !644)
!644 = distinct !DILexicalBlock(scope: !640, file: !77, line: 22, column: 8)
!645 = !DILocation(line: 22, column: 13, scope: !644)
!646 = !DILocation(line: 22, column: 8, scope: !640)
!647 = !DILocation(line: 24, column: 24, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !77, line: 23, column: 5)
!649 = !DILocation(line: 24, column: 9, scope: !648)
!650 = !DILocation(line: 25, column: 5, scope: !648)
!651 = !DILocation(line: 26, column: 1, scope: !640)
!652 = distinct !DISubprogram(name: "printWLine", scope: !77, file: !77, line: 27, type: !653, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !657, line: 74, baseType: !69)
!657 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!658 = !DILocalVariable(name: "line", arg: 1, scope: !652, file: !77, line: 27, type: !655)
!659 = !DILocation(line: 27, column: 29, scope: !652)
!660 = !DILocation(line: 29, column: 8, scope: !661)
!661 = distinct !DILexicalBlock(scope: !652, file: !77, line: 29, column: 8)
!662 = !DILocation(line: 29, column: 13, scope: !661)
!663 = !DILocation(line: 29, column: 8, scope: !652)
!664 = !DILocation(line: 31, column: 27, scope: !665)
!665 = distinct !DILexicalBlock(scope: !661, file: !77, line: 30, column: 5)
!666 = !DILocation(line: 31, column: 9, scope: !665)
!667 = !DILocation(line: 32, column: 5, scope: !665)
!668 = !DILocation(line: 33, column: 1, scope: !652)
!669 = distinct !DISubprogram(name: "printIntLine", scope: !77, file: !77, line: 35, type: !447, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!670 = !DILocalVariable(name: "intNumber", arg: 1, scope: !669, file: !77, line: 35, type: !69)
!671 = !DILocation(line: 35, column: 24, scope: !669)
!672 = !DILocation(line: 37, column: 20, scope: !669)
!673 = !DILocation(line: 37, column: 5, scope: !669)
!674 = !DILocation(line: 38, column: 1, scope: !669)
!675 = distinct !DISubprogram(name: "printShortLine", scope: !77, file: !77, line: 40, type: !676, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !678}
!678 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!679 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !675, file: !77, line: 40, type: !678)
!680 = !DILocation(line: 40, column: 28, scope: !675)
!681 = !DILocation(line: 42, column: 21, scope: !675)
!682 = !DILocation(line: 42, column: 5, scope: !675)
!683 = !DILocation(line: 43, column: 1, scope: !675)
!684 = distinct !DISubprogram(name: "printFloatLine", scope: !77, file: !77, line: 45, type: !685, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !687}
!687 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!688 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !684, file: !77, line: 45, type: !687)
!689 = !DILocation(line: 45, column: 28, scope: !684)
!690 = !DILocation(line: 47, column: 20, scope: !684)
!691 = !DILocation(line: 47, column: 5, scope: !684)
!692 = !DILocation(line: 48, column: 1, scope: !684)
!693 = distinct !DISubprogram(name: "printLongLine", scope: !77, file: !77, line: 50, type: !694, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !696}
!696 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!697 = !DILocalVariable(name: "longNumber", arg: 1, scope: !693, file: !77, line: 50, type: !696)
!698 = !DILocation(line: 50, column: 26, scope: !693)
!699 = !DILocation(line: 52, column: 21, scope: !693)
!700 = !DILocation(line: 52, column: 5, scope: !693)
!701 = !DILocation(line: 53, column: 1, scope: !693)
!702 = distinct !DISubprogram(name: "printLongLongLine", scope: !77, file: !77, line: 55, type: !703, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !705}
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !706, line: 27, baseType: !707)
!706 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !52, line: 44, baseType: !696)
!708 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !702, file: !77, line: 55, type: !705)
!709 = !DILocation(line: 55, column: 33, scope: !702)
!710 = !DILocation(line: 57, column: 29, scope: !702)
!711 = !DILocation(line: 57, column: 5, scope: !702)
!712 = !DILocation(line: 58, column: 1, scope: !702)
!713 = distinct !DISubprogram(name: "printSizeTLine", scope: !77, file: !77, line: 60, type: !714, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !716}
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !657, line: 46, baseType: !717)
!717 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!718 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !713, file: !77, line: 60, type: !716)
!719 = !DILocation(line: 60, column: 29, scope: !713)
!720 = !DILocation(line: 62, column: 21, scope: !713)
!721 = !DILocation(line: 62, column: 5, scope: !713)
!722 = !DILocation(line: 63, column: 1, scope: !713)
!723 = distinct !DISubprogram(name: "printHexCharLine", scope: !77, file: !77, line: 65, type: !724, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !63}
!726 = !DILocalVariable(name: "charHex", arg: 1, scope: !723, file: !77, line: 65, type: !63)
!727 = !DILocation(line: 65, column: 29, scope: !723)
!728 = !DILocation(line: 67, column: 22, scope: !723)
!729 = !DILocation(line: 67, column: 5, scope: !723)
!730 = !DILocation(line: 68, column: 1, scope: !723)
!731 = distinct !DISubprogram(name: "printWcharLine", scope: !77, file: !77, line: 70, type: !732, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !656}
!734 = !DILocalVariable(name: "wideChar", arg: 1, scope: !731, file: !77, line: 70, type: !656)
!735 = !DILocation(line: 70, column: 29, scope: !731)
!736 = !DILocalVariable(name: "s", scope: !731, file: !77, line: 74, type: !737)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, size: 64, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 2)
!740 = !DILocation(line: 74, column: 13, scope: !731)
!741 = !DILocation(line: 75, column: 16, scope: !731)
!742 = !DILocation(line: 75, column: 9, scope: !731)
!743 = !DILocation(line: 75, column: 14, scope: !731)
!744 = !DILocation(line: 76, column: 9, scope: !731)
!745 = !DILocation(line: 76, column: 14, scope: !731)
!746 = !DILocation(line: 77, column: 21, scope: !731)
!747 = !DILocation(line: 77, column: 5, scope: !731)
!748 = !DILocation(line: 78, column: 1, scope: !731)
!749 = distinct !DISubprogram(name: "printUnsignedLine", scope: !77, file: !77, line: 80, type: !750, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !7}
!752 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !749, file: !77, line: 80, type: !7)
!753 = !DILocation(line: 80, column: 33, scope: !749)
!754 = !DILocation(line: 82, column: 20, scope: !749)
!755 = !DILocation(line: 82, column: 5, scope: !749)
!756 = !DILocation(line: 83, column: 1, scope: !749)
!757 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !77, file: !77, line: 85, type: !758, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !96}
!760 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !757, file: !77, line: 85, type: !96)
!761 = !DILocation(line: 85, column: 45, scope: !757)
!762 = !DILocation(line: 87, column: 22, scope: !757)
!763 = !DILocation(line: 87, column: 5, scope: !757)
!764 = !DILocation(line: 88, column: 1, scope: !757)
!765 = distinct !DISubprogram(name: "printDoubleLine", scope: !77, file: !77, line: 90, type: !766, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !768}
!768 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!769 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !765, file: !77, line: 90, type: !768)
!770 = !DILocation(line: 90, column: 29, scope: !765)
!771 = !DILocation(line: 92, column: 20, scope: !765)
!772 = !DILocation(line: 92, column: 5, scope: !765)
!773 = !DILocation(line: 93, column: 1, scope: !765)
!774 = distinct !DISubprogram(name: "printStructLine", scope: !77, file: !77, line: 95, type: !775, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !777}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !779, line: 100, baseType: !780)
!779 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_727/source_code")
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !779, line: 96, size: 64, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !780, file: !779, line: 98, baseType: !69, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !780, file: !779, line: 99, baseType: !69, size: 32, offset: 32)
!784 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !774, file: !77, line: 95, type: !777)
!785 = !DILocation(line: 95, column: 40, scope: !774)
!786 = !DILocation(line: 97, column: 26, scope: !774)
!787 = !DILocation(line: 97, column: 47, scope: !774)
!788 = !DILocation(line: 97, column: 55, scope: !774)
!789 = !DILocation(line: 97, column: 76, scope: !774)
!790 = !DILocation(line: 97, column: 5, scope: !774)
!791 = !DILocation(line: 98, column: 1, scope: !774)
!792 = distinct !DISubprogram(name: "printBytesLine", scope: !77, file: !77, line: 100, type: !793, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !795, !716}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!796 = !DILocalVariable(name: "bytes", arg: 1, scope: !792, file: !77, line: 100, type: !795)
!797 = !DILocation(line: 100, column: 38, scope: !792)
!798 = !DILocalVariable(name: "numBytes", arg: 2, scope: !792, file: !77, line: 100, type: !716)
!799 = !DILocation(line: 100, column: 52, scope: !792)
!800 = !DILocalVariable(name: "i", scope: !792, file: !77, line: 102, type: !716)
!801 = !DILocation(line: 102, column: 12, scope: !792)
!802 = !DILocation(line: 103, column: 12, scope: !803)
!803 = distinct !DILexicalBlock(scope: !792, file: !77, line: 103, column: 5)
!804 = !DILocation(line: 103, column: 10, scope: !803)
!805 = !DILocation(line: 103, column: 17, scope: !806)
!806 = distinct !DILexicalBlock(scope: !803, file: !77, line: 103, column: 5)
!807 = !DILocation(line: 103, column: 21, scope: !806)
!808 = !DILocation(line: 103, column: 19, scope: !806)
!809 = !DILocation(line: 103, column: 5, scope: !803)
!810 = !DILocation(line: 105, column: 24, scope: !811)
!811 = distinct !DILexicalBlock(scope: !806, file: !77, line: 104, column: 5)
!812 = !DILocation(line: 105, column: 30, scope: !811)
!813 = !DILocation(line: 105, column: 9, scope: !811)
!814 = !DILocation(line: 106, column: 5, scope: !811)
!815 = !DILocation(line: 103, column: 31, scope: !806)
!816 = !DILocation(line: 103, column: 5, scope: !806)
!817 = distinct !{!817, !809, !818, !487}
!818 = !DILocation(line: 106, column: 5, scope: !803)
!819 = !DILocation(line: 107, column: 5, scope: !792)
!820 = !DILocation(line: 108, column: 1, scope: !792)
!821 = distinct !DISubprogram(name: "decodeHexChars", scope: !77, file: !77, line: 113, type: !822, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!822 = !DISubroutineType(types: !823)
!823 = !{!716, !795, !716, !113}
!824 = !DILocalVariable(name: "bytes", arg: 1, scope: !821, file: !77, line: 113, type: !795)
!825 = !DILocation(line: 113, column: 39, scope: !821)
!826 = !DILocalVariable(name: "numBytes", arg: 2, scope: !821, file: !77, line: 113, type: !716)
!827 = !DILocation(line: 113, column: 53, scope: !821)
!828 = !DILocalVariable(name: "hex", arg: 3, scope: !821, file: !77, line: 113, type: !113)
!829 = !DILocation(line: 113, column: 71, scope: !821)
!830 = !DILocalVariable(name: "numWritten", scope: !821, file: !77, line: 115, type: !716)
!831 = !DILocation(line: 115, column: 12, scope: !821)
!832 = !DILocation(line: 121, column: 5, scope: !821)
!833 = !DILocation(line: 121, column: 12, scope: !821)
!834 = !DILocation(line: 121, column: 25, scope: !821)
!835 = !DILocation(line: 121, column: 23, scope: !821)
!836 = !DILocation(line: 121, column: 34, scope: !821)
!837 = !DILocation(line: 121, column: 37, scope: !821)
!838 = !DILocation(line: 121, column: 67, scope: !821)
!839 = !DILocation(line: 121, column: 70, scope: !821)
!840 = !DILocation(line: 0, scope: !821)
!841 = !DILocalVariable(name: "byte", scope: !842, file: !77, line: 123, type: !69)
!842 = distinct !DILexicalBlock(scope: !821, file: !77, line: 122, column: 5)
!843 = !DILocation(line: 123, column: 13, scope: !842)
!844 = !DILocation(line: 124, column: 17, scope: !842)
!845 = !DILocation(line: 124, column: 25, scope: !842)
!846 = !DILocation(line: 124, column: 23, scope: !842)
!847 = !DILocation(line: 124, column: 9, scope: !842)
!848 = !DILocation(line: 125, column: 45, scope: !842)
!849 = !DILocation(line: 125, column: 29, scope: !842)
!850 = !DILocation(line: 125, column: 9, scope: !842)
!851 = !DILocation(line: 125, column: 15, scope: !842)
!852 = !DILocation(line: 125, column: 27, scope: !842)
!853 = !DILocation(line: 126, column: 9, scope: !842)
!854 = distinct !{!854, !832, !855, !487}
!855 = !DILocation(line: 127, column: 5, scope: !821)
!856 = !DILocation(line: 129, column: 12, scope: !821)
!857 = !DILocation(line: 129, column: 5, scope: !821)
!858 = distinct !DISubprogram(name: "decodeHexWChars", scope: !77, file: !77, line: 135, type: !859, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!859 = !DISubroutineType(types: !860)
!860 = !{!716, !795, !716, !655}
!861 = !DILocalVariable(name: "bytes", arg: 1, scope: !858, file: !77, line: 135, type: !795)
!862 = !DILocation(line: 135, column: 41, scope: !858)
!863 = !DILocalVariable(name: "numBytes", arg: 2, scope: !858, file: !77, line: 135, type: !716)
!864 = !DILocation(line: 135, column: 55, scope: !858)
!865 = !DILocalVariable(name: "hex", arg: 3, scope: !858, file: !77, line: 135, type: !655)
!866 = !DILocation(line: 135, column: 76, scope: !858)
!867 = !DILocalVariable(name: "numWritten", scope: !858, file: !77, line: 137, type: !716)
!868 = !DILocation(line: 137, column: 12, scope: !858)
!869 = !DILocation(line: 143, column: 5, scope: !858)
!870 = !DILocation(line: 143, column: 12, scope: !858)
!871 = !DILocation(line: 143, column: 25, scope: !858)
!872 = !DILocation(line: 143, column: 23, scope: !858)
!873 = !DILocation(line: 143, column: 34, scope: !858)
!874 = !DILocation(line: 143, column: 47, scope: !858)
!875 = !DILocation(line: 143, column: 55, scope: !858)
!876 = !DILocation(line: 143, column: 53, scope: !858)
!877 = !DILocation(line: 143, column: 37, scope: !858)
!878 = !DILocation(line: 143, column: 68, scope: !858)
!879 = !DILocation(line: 143, column: 81, scope: !858)
!880 = !DILocation(line: 143, column: 89, scope: !858)
!881 = !DILocation(line: 143, column: 87, scope: !858)
!882 = !DILocation(line: 143, column: 100, scope: !858)
!883 = !DILocation(line: 143, column: 71, scope: !858)
!884 = !DILocation(line: 0, scope: !858)
!885 = !DILocalVariable(name: "byte", scope: !886, file: !77, line: 145, type: !69)
!886 = distinct !DILexicalBlock(scope: !858, file: !77, line: 144, column: 5)
!887 = !DILocation(line: 145, column: 13, scope: !886)
!888 = !DILocation(line: 146, column: 18, scope: !886)
!889 = !DILocation(line: 146, column: 26, scope: !886)
!890 = !DILocation(line: 146, column: 24, scope: !886)
!891 = !DILocation(line: 146, column: 9, scope: !886)
!892 = !DILocation(line: 147, column: 45, scope: !886)
!893 = !DILocation(line: 147, column: 29, scope: !886)
!894 = !DILocation(line: 147, column: 9, scope: !886)
!895 = !DILocation(line: 147, column: 15, scope: !886)
!896 = !DILocation(line: 147, column: 27, scope: !886)
!897 = !DILocation(line: 148, column: 9, scope: !886)
!898 = distinct !{!898, !869, !899, !487}
!899 = !DILocation(line: 149, column: 5, scope: !858)
!900 = !DILocation(line: 151, column: 12, scope: !858)
!901 = !DILocation(line: 151, column: 5, scope: !858)
!902 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !77, file: !77, line: 156, type: !903, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!903 = !DISubroutineType(types: !904)
!904 = !{!69}
!905 = !DILocation(line: 158, column: 5, scope: !902)
!906 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !77, file: !77, line: 161, type: !903, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!907 = !DILocation(line: 163, column: 5, scope: !906)
!908 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !77, file: !77, line: 166, type: !903, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!909 = !DILocation(line: 168, column: 13, scope: !908)
!910 = !DILocation(line: 168, column: 20, scope: !908)
!911 = !DILocation(line: 168, column: 5, scope: !908)
!912 = distinct !DISubprogram(name: "good1", scope: !77, file: !77, line: 187, type: !122, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!913 = !DILocation(line: 187, column: 16, scope: !912)
!914 = distinct !DISubprogram(name: "good2", scope: !77, file: !77, line: 188, type: !122, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!915 = !DILocation(line: 188, column: 16, scope: !914)
!916 = distinct !DISubprogram(name: "good3", scope: !77, file: !77, line: 189, type: !122, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!917 = !DILocation(line: 189, column: 16, scope: !916)
!918 = distinct !DISubprogram(name: "good4", scope: !77, file: !77, line: 190, type: !122, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!919 = !DILocation(line: 190, column: 16, scope: !918)
!920 = distinct !DISubprogram(name: "good5", scope: !77, file: !77, line: 191, type: !122, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!921 = !DILocation(line: 191, column: 16, scope: !920)
!922 = distinct !DISubprogram(name: "good6", scope: !77, file: !77, line: 192, type: !122, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!923 = !DILocation(line: 192, column: 16, scope: !922)
!924 = distinct !DISubprogram(name: "good7", scope: !77, file: !77, line: 193, type: !122, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!925 = !DILocation(line: 193, column: 16, scope: !924)
!926 = distinct !DISubprogram(name: "good8", scope: !77, file: !77, line: 194, type: !122, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!927 = !DILocation(line: 194, column: 16, scope: !926)
!928 = distinct !DISubprogram(name: "good9", scope: !77, file: !77, line: 195, type: !122, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!929 = !DILocation(line: 195, column: 16, scope: !928)
!930 = distinct !DISubprogram(name: "bad1", scope: !77, file: !77, line: 198, type: !122, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!931 = !DILocation(line: 198, column: 15, scope: !930)
!932 = distinct !DISubprogram(name: "bad2", scope: !77, file: !77, line: 199, type: !122, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!933 = !DILocation(line: 199, column: 15, scope: !932)
!934 = distinct !DISubprogram(name: "bad3", scope: !77, file: !77, line: 200, type: !122, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!935 = !DILocation(line: 200, column: 15, scope: !934)
!936 = distinct !DISubprogram(name: "bad4", scope: !77, file: !77, line: 201, type: !122, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!937 = !DILocation(line: 201, column: 15, scope: !936)
!938 = distinct !DISubprogram(name: "bad5", scope: !77, file: !77, line: 202, type: !122, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!939 = !DILocation(line: 202, column: 15, scope: !938)
!940 = distinct !DISubprogram(name: "bad6", scope: !77, file: !77, line: 203, type: !122, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!941 = !DILocation(line: 203, column: 15, scope: !940)
!942 = distinct !DISubprogram(name: "bad7", scope: !77, file: !77, line: 204, type: !122, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!943 = !DILocation(line: 204, column: 15, scope: !942)
!944 = distinct !DISubprogram(name: "bad8", scope: !77, file: !77, line: 205, type: !122, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!945 = !DILocation(line: 205, column: 15, scope: !944)
!946 = distinct !DISubprogram(name: "bad9", scope: !77, file: !77, line: 206, type: !122, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !116)
!947 = !DILocation(line: 206, column: 15, scope: !946)
