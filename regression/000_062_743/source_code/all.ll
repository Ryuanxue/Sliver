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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad() #0 !dbg !112 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 -1, i32* %data, align 4, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !118, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !121, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !138, metadata !DIExpression()), !dbg !139
  store i32 -1, i32* %listenSocket, align 4, !dbg !139
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 -1, i32* %acceptSocket, align 4, !dbg !141
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !142, metadata !DIExpression()), !dbg !143
  br label %do.body, !dbg !144

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !145
  store i32 %call, i32* %listenSocket, align 4, !dbg !147
  %0 = load i32, i32* %listenSocket, align 4, !dbg !148
  %cmp = icmp eq i32 %0, -1, !dbg !150
  br i1 %cmp, label %if.then, label %if.end, !dbg !151

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !152

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !154
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !154
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !155
  store i16 2, i16* %sin_family, align 4, !dbg !156
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !157
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !158
  store i32 0, i32* %s_addr, align 4, !dbg !159
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !160
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !161
  store i16 %call1, i16* %sin_port, align 2, !dbg !162
  %2 = load i32, i32* %listenSocket, align 4, !dbg !163
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !165
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !166
  %cmp3 = icmp eq i32 %call2, -1, !dbg !167
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !168

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !169

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !171
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !173
  %cmp7 = icmp eq i32 %call6, -1, !dbg !174
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !175

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !176

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !178
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !179
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !180
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !181
  %cmp11 = icmp eq i32 %6, -1, !dbg !183
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !184

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !185

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !187
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !188
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !189
  %conv = trunc i64 %call14 to i32, !dbg !189
  store i32 %conv, i32* %recvResult, align 4, !dbg !190
  %8 = load i32, i32* %recvResult, align 4, !dbg !191
  %cmp15 = icmp eq i32 %8, -1, !dbg !193
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !194

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !195
  %cmp17 = icmp eq i32 %9, 0, !dbg !196
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !197

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !198

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !200
  %idxprom = sext i32 %10 to i64, !dbg !201
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !201
  store i8 0, i8* %arrayidx, align 1, !dbg !202
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !203
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !204
  store i32 %call22, i32* %data, align 4, !dbg !205
  br label %do.end, !dbg !206

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !207
  %cmp23 = icmp ne i32 %11, -1, !dbg !209
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !210

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !211
  %call26 = call i32 @close(i32 %12), !dbg !213
  br label %if.end27, !dbg !214

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !215
  %cmp28 = icmp ne i32 %13, -1, !dbg !217
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !218

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !219
  %call31 = call i32 @close(i32 %14), !dbg !221
  br label %if.end32, !dbg !222

if.end32:                                         ; preds = %if.then30, %if.end27
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink(i32* %data), !dbg !223
  ret void, !dbg !224
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
define dso_local void @goodG2B() #0 !dbg !225 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !226, metadata !DIExpression()), !dbg !227
  store i32 -1, i32* %data, align 4, !dbg !228
  store i32 7, i32* %data, align 4, !dbg !229
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_goodG2BSink(i32* %data), !dbg !230
  ret void, !dbg !231
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !232 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !233, metadata !DIExpression()), !dbg !234
  store i32 -1, i32* %data, align 4, !dbg !235
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !236, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !241, metadata !DIExpression()), !dbg !242
  store i32 -1, i32* %listenSocket, align 4, !dbg !242
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !243, metadata !DIExpression()), !dbg !244
  store i32 -1, i32* %acceptSocket, align 4, !dbg !244
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !245, metadata !DIExpression()), !dbg !246
  br label %do.body, !dbg !247

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !248
  store i32 %call, i32* %listenSocket, align 4, !dbg !250
  %0 = load i32, i32* %listenSocket, align 4, !dbg !251
  %cmp = icmp eq i32 %0, -1, !dbg !253
  br i1 %cmp, label %if.then, label %if.end, !dbg !254

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !255

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !257
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !257
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !258
  store i16 2, i16* %sin_family, align 4, !dbg !259
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !260
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !261
  store i32 0, i32* %s_addr, align 4, !dbg !262
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !263
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !264
  store i16 %call1, i16* %sin_port, align 2, !dbg !265
  %2 = load i32, i32* %listenSocket, align 4, !dbg !266
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !268
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !269
  %cmp3 = icmp eq i32 %call2, -1, !dbg !270
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !271

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !272

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !274
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !276
  %cmp7 = icmp eq i32 %call6, -1, !dbg !277
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !278

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !279

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !281
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !282
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !283
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !284
  %cmp11 = icmp eq i32 %6, -1, !dbg !286
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !287

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !288

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !290
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !291
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !292
  %conv = trunc i64 %call14 to i32, !dbg !292
  store i32 %conv, i32* %recvResult, align 4, !dbg !293
  %8 = load i32, i32* %recvResult, align 4, !dbg !294
  %cmp15 = icmp eq i32 %8, -1, !dbg !296
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !297

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !298
  %cmp17 = icmp eq i32 %9, 0, !dbg !299
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !300

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !301

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !303
  %idxprom = sext i32 %10 to i64, !dbg !304
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !304
  store i8 0, i8* %arrayidx, align 1, !dbg !305
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !306
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !307
  store i32 %call22, i32* %data, align 4, !dbg !308
  br label %do.end, !dbg !309

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !310
  %cmp23 = icmp ne i32 %11, -1, !dbg !312
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !313

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !314
  %call26 = call i32 @close(i32 %12), !dbg !316
  br label %if.end27, !dbg !317

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !318
  %cmp28 = icmp ne i32 %13, -1, !dbg !320
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !321

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !322
  %call31 = call i32 @close(i32 %14), !dbg !324
  br label %if.end32, !dbg !325

if.end32:                                         ; preds = %if.then30, %if.end27
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_goodB2GSink(i32* %data), !dbg !326
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_good() #0 !dbg !328 {
entry:
  call void @goodG2B(), !dbg !329
  call void @goodB2G(), !dbg !330
  ret void, !dbg !331
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink(i32* %dataPtr) #0 !dbg !332 {
entry:
  %dataPtr.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataPtr, i32** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataPtr.addr, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata i32* %data, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load i32*, i32** %dataPtr.addr, align 8, !dbg !340
  %1 = load i32, i32* %0, align 4, !dbg !341
  store i32 %1, i32* %data, align 4, !dbg !339
  call void @llvm.dbg.declare(metadata i32* %i, metadata !342, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !345, metadata !DIExpression()), !dbg !349
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !349
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !349
  %3 = load i32, i32* %data, align 4, !dbg !350
  %cmp = icmp sge i32 %3, 0, !dbg !352
  br i1 %cmp, label %if.then, label %if.else, !dbg !353

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !354
  %idxprom = sext i32 %4 to i64, !dbg !356
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !356
  store i32 1, i32* %arrayidx, align 4, !dbg !357
  store i32 0, i32* %i, align 4, !dbg !358
  br label %for.cond, !dbg !360

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !361
  %cmp1 = icmp slt i32 %5, 10, !dbg !363
  br i1 %cmp1, label %for.body, label %for.end, !dbg !364

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !365
  %idxprom2 = sext i32 %6 to i64, !dbg !367
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !367
  %7 = load i32, i32* %arrayidx3, align 4, !dbg !367
  call void @printIntLine(i32 %7), !dbg !368
  br label %for.inc, !dbg !369

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !370
  %inc = add nsw i32 %8, 1, !dbg !370
  store i32 %inc, i32* %i, align 4, !dbg !370
  br label %for.cond, !dbg !371, !llvm.loop !372

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !375

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !376
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_goodG2BSink(i32* %dataPtr) #0 !dbg !379 {
entry:
  %dataPtr.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataPtr, i32** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataPtr.addr, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.declare(metadata i32* %data, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load i32*, i32** %dataPtr.addr, align 8, !dbg !384
  %1 = load i32, i32* %0, align 4, !dbg !385
  store i32 %1, i32* %data, align 4, !dbg !383
  call void @llvm.dbg.declare(metadata i32* %i, metadata !386, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !389, metadata !DIExpression()), !dbg !390
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !390
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !390
  %3 = load i32, i32* %data, align 4, !dbg !391
  %cmp = icmp sge i32 %3, 0, !dbg !393
  br i1 %cmp, label %if.then, label %if.else, !dbg !394

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !395
  %idxprom = sext i32 %4 to i64, !dbg !397
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !397
  store i32 1, i32* %arrayidx, align 4, !dbg !398
  store i32 0, i32* %i, align 4, !dbg !399
  br label %for.cond, !dbg !401

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !402
  %cmp1 = icmp slt i32 %5, 10, !dbg !404
  br i1 %cmp1, label %for.body, label %for.end, !dbg !405

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !406
  %idxprom2 = sext i32 %6 to i64, !dbg !408
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !408
  %7 = load i32, i32* %arrayidx3, align 4, !dbg !408
  call void @printIntLine(i32 %7), !dbg !409
  br label %for.inc, !dbg !410

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !411
  %inc = add nsw i32 %8, 1, !dbg !411
  store i32 %inc, i32* %i, align 4, !dbg !411
  br label %for.cond, !dbg !412, !llvm.loop !413

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !415

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !416
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_goodB2GSink(i32* %dataPtr) #0 !dbg !419 {
entry:
  %dataPtr.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataPtr, i32** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataPtr.addr, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata i32* %data, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load i32*, i32** %dataPtr.addr, align 8, !dbg !424
  %1 = load i32, i32* %0, align 4, !dbg !425
  store i32 %1, i32* %data, align 4, !dbg !423
  call void @llvm.dbg.declare(metadata i32* %i, metadata !426, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !429, metadata !DIExpression()), !dbg !430
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !430
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !430
  %3 = load i32, i32* %data, align 4, !dbg !431
  %cmp = icmp sge i32 %3, 0, !dbg !433
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !434

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !435
  %cmp1 = icmp slt i32 %4, 10, !dbg !436
  br i1 %cmp1, label %if.then, label %if.else, !dbg !437

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !438
  %idxprom = sext i32 %5 to i64, !dbg !440
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !440
  store i32 1, i32* %arrayidx, align 4, !dbg !441
  store i32 0, i32* %i, align 4, !dbg !442
  br label %for.cond, !dbg !444

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !445
  %cmp2 = icmp slt i32 %6, 10, !dbg !447
  br i1 %cmp2, label %for.body, label %for.end, !dbg !448

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !449
  %idxprom3 = sext i32 %7 to i64, !dbg !451
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !451
  %8 = load i32, i32* %arrayidx4, align 4, !dbg !451
  call void @printIntLine(i32 %8), !dbg !452
  br label %for.inc, !dbg !453

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !454
  %inc = add nsw i32 %9, 1, !dbg !454
  store i32 %inc, i32* %i, align 4, !dbg !454
  br label %for.cond, !dbg !455, !llvm.loop !456

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !458

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !459
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !461
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !462 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !465, metadata !DIExpression()), !dbg !466
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !dbg !467
  %0 = load i8*, i8** %line.addr, align 8, !dbg !468
  %cmp = icmp ne i8* %0, null, !dbg !470
  br i1 %cmp, label %if.then, label %if.end, !dbg !471

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !472
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !474
  br label %if.end, !dbg !475

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !476
  ret void, !dbg !477
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !478 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !479, metadata !DIExpression()), !dbg !480
  %0 = load i8*, i8** %line.addr, align 8, !dbg !481
  %cmp = icmp ne i8* %0, null, !dbg !483
  br i1 %cmp, label %if.then, label %if.end, !dbg !484

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !485
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !487
  br label %if.end, !dbg !488

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !489
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !490 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !496, metadata !DIExpression()), !dbg !497
  %0 = load i32*, i32** %line.addr, align 8, !dbg !498
  %cmp = icmp ne i32* %0, null, !dbg !500
  br i1 %cmp, label %if.then, label %if.end, !dbg !501

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !502
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !504
  br label %if.end, !dbg !505

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !506
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !507 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !512
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !513
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !515 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !519, metadata !DIExpression()), !dbg !520
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !521
  %conv = sext i16 %0 to i32, !dbg !521
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !522
  ret void, !dbg !523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !524 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !528, metadata !DIExpression()), !dbg !529
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !530
  %conv = fpext float %0 to double, !dbg !530
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !533 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !537, metadata !DIExpression()), !dbg !538
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !539
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !540
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !542 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !548, metadata !DIExpression()), !dbg !549
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !550
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !551
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !553 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !558, metadata !DIExpression()), !dbg !559
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !560
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !561
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !563 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !566, metadata !DIExpression()), !dbg !567
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !568
  %conv = sext i8 %0 to i32, !dbg !568
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !569
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !571 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !576, metadata !DIExpression()), !dbg !580
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !581
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !582
  store i32 %0, i32* %arrayidx, align 4, !dbg !583
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !584
  store i32 0, i32* %arrayidx1, align 4, !dbg !585
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !586
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !587
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !589 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !592, metadata !DIExpression()), !dbg !593
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !594
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !595
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !597 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !600, metadata !DIExpression()), !dbg !601
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !602
  %conv = zext i8 %0 to i32, !dbg !602
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !603
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !605 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !609, metadata !DIExpression()), !dbg !610
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !611
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !612
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !614 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !624, metadata !DIExpression()), !dbg !625
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !626
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !627
  %1 = load i32, i32* %intOne, align 4, !dbg !627
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !628
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !629
  %3 = load i32, i32* %intTwo, align 4, !dbg !629
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !630
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !632 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !636, metadata !DIExpression()), !dbg !637
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !638, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.declare(metadata i64* %i, metadata !640, metadata !DIExpression()), !dbg !641
  store i64 0, i64* %i, align 8, !dbg !642
  br label %for.cond, !dbg !644

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !645
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !647
  %cmp = icmp ult i64 %0, %1, !dbg !648
  br i1 %cmp, label %for.body, label %for.end, !dbg !649

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !650
  %3 = load i64, i64* %i, align 8, !dbg !652
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !650
  %4 = load i8, i8* %arrayidx, align 1, !dbg !650
  %conv = zext i8 %4 to i32, !dbg !650
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !653
  br label %for.inc, !dbg !654

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !655
  %inc = add i64 %5, 1, !dbg !655
  store i64 %inc, i64* %i, align 8, !dbg !655
  br label %for.cond, !dbg !656, !llvm.loop !657

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !659
  ret void, !dbg !660
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !661 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !664, metadata !DIExpression()), !dbg !665
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !666, metadata !DIExpression()), !dbg !667
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !668, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !670, metadata !DIExpression()), !dbg !671
  store i64 0, i64* %numWritten, align 8, !dbg !671
  br label %while.cond, !dbg !672

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !673
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !674
  %cmp = icmp ult i64 %0, %1, !dbg !675
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !676

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !677
  %2 = load i16*, i16** %call, align 8, !dbg !677
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !677
  %4 = load i64, i64* %numWritten, align 8, !dbg !677
  %mul = mul i64 2, %4, !dbg !677
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !677
  %5 = load i8, i8* %arrayidx, align 1, !dbg !677
  %conv = sext i8 %5 to i32, !dbg !677
  %idxprom = sext i32 %conv to i64, !dbg !677
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !677
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !677
  %conv2 = zext i16 %6 to i32, !dbg !677
  %and = and i32 %conv2, 4096, !dbg !677
  %tobool = icmp ne i32 %and, 0, !dbg !677
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !678

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !679
  %7 = load i16*, i16** %call3, align 8, !dbg !679
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !679
  %9 = load i64, i64* %numWritten, align 8, !dbg !679
  %mul4 = mul i64 2, %9, !dbg !679
  %add = add i64 %mul4, 1, !dbg !679
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !679
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !679
  %conv6 = sext i8 %10 to i32, !dbg !679
  %idxprom7 = sext i32 %conv6 to i64, !dbg !679
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !679
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !679
  %conv9 = zext i16 %11 to i32, !dbg !679
  %and10 = and i32 %conv9, 4096, !dbg !679
  %tobool11 = icmp ne i32 %and10, 0, !dbg !678
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !680
  br i1 %12, label %while.body, label %while.end, !dbg !672

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !681, metadata !DIExpression()), !dbg !683
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !684
  %14 = load i64, i64* %numWritten, align 8, !dbg !685
  %mul12 = mul i64 2, %14, !dbg !686
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !684
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !687
  %15 = load i32, i32* %byte, align 4, !dbg !688
  %conv15 = trunc i32 %15 to i8, !dbg !689
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !690
  %17 = load i64, i64* %numWritten, align 8, !dbg !691
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !690
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !692
  %18 = load i64, i64* %numWritten, align 8, !dbg !693
  %inc = add i64 %18, 1, !dbg !693
  store i64 %inc, i64* %numWritten, align 8, !dbg !693
  br label %while.cond, !dbg !672, !llvm.loop !694

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !696
  ret i64 %19, !dbg !697
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !698 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !701, metadata !DIExpression()), !dbg !702
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !703, metadata !DIExpression()), !dbg !704
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !705, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !707, metadata !DIExpression()), !dbg !708
  store i64 0, i64* %numWritten, align 8, !dbg !708
  br label %while.cond, !dbg !709

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !710
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !711
  %cmp = icmp ult i64 %0, %1, !dbg !712
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !713

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !714
  %3 = load i64, i64* %numWritten, align 8, !dbg !715
  %mul = mul i64 2, %3, !dbg !716
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !714
  %4 = load i32, i32* %arrayidx, align 4, !dbg !714
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !717
  %tobool = icmp ne i32 %call, 0, !dbg !717
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !718

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !719
  %6 = load i64, i64* %numWritten, align 8, !dbg !720
  %mul1 = mul i64 2, %6, !dbg !721
  %add = add i64 %mul1, 1, !dbg !722
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !719
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !719
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !723
  %tobool4 = icmp ne i32 %call3, 0, !dbg !718
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !724
  br i1 %8, label %while.body, label %while.end, !dbg !709

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !725, metadata !DIExpression()), !dbg !727
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !728
  %10 = load i64, i64* %numWritten, align 8, !dbg !729
  %mul5 = mul i64 2, %10, !dbg !730
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !728
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !731
  %11 = load i32, i32* %byte, align 4, !dbg !732
  %conv = trunc i32 %11 to i8, !dbg !733
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !734
  %13 = load i64, i64* %numWritten, align 8, !dbg !735
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !734
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !736
  %14 = load i64, i64* %numWritten, align 8, !dbg !737
  %inc = add i64 %14, 1, !dbg !737
  store i64 %inc, i64* %numWritten, align 8, !dbg !737
  br label %while.cond, !dbg !709, !llvm.loop !738

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !740
  ret i64 %15, !dbg !741
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !742 {
entry:
  ret i32 1, !dbg !745
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !746 {
entry:
  ret i32 0, !dbg !747
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !748 {
entry:
  %call = call i32 @rand() #7, !dbg !749
  %rem = srem i32 %call, 2, !dbg !750
  ret i32 %rem, !dbg !751
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !752 {
entry:
  ret void, !dbg !753
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !754 {
entry:
  ret void, !dbg !755
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !756 {
entry:
  ret void, !dbg !757
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !758 {
entry:
  ret void, !dbg !759
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !760 {
entry:
  ret void, !dbg !761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !762 {
entry:
  ret void, !dbg !763
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !764 {
entry:
  ret void, !dbg !765
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !766 {
entry:
  ret void, !dbg !767
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !768 {
entry:
  ret void, !dbg !769
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !770 {
entry:
  ret void, !dbg !771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !772 {
entry:
  ret void, !dbg !773
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !774 {
entry:
  ret void, !dbg !775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !776 {
entry:
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !778 {
entry:
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !780 {
entry:
  ret void, !dbg !781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !782 {
entry:
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !784 {
entry:
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !786 {
entry:
  ret void, !dbg !787
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_743/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_743/source_code")
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
!106 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_743/source_code")
!107 = !{}
!108 = !{!"clang version 12.0.0"}
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_bad", scope: !45, file: !45, line: 47, type: !113, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!113 = !DISubroutineType(types: !114)
!114 = !{null}
!115 = !DILocalVariable(name: "data", scope: !112, file: !45, line: 49, type: !23)
!116 = !DILocation(line: 49, column: 9, scope: !112)
!117 = !DILocation(line: 51, column: 10, scope: !112)
!118 = !DILocalVariable(name: "recvResult", scope: !119, file: !45, line: 57, type: !23)
!119 = distinct !DILexicalBlock(scope: !112, file: !45, line: 52, column: 5)
!120 = !DILocation(line: 57, column: 13, scope: !119)
!121 = !DILocalVariable(name: "service", scope: !119, file: !45, line: 58, type: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !123)
!123 = !{!124, !125, !129, !133}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !122, file: !60, line: 240, baseType: !99, size: 16)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !122, file: !60, line: 241, baseType: !126, size: 16, offset: 16)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !24)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !122, file: !60, line: 242, baseType: !130, size: 32, offset: 32)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !130, file: !60, line: 33, baseType: !89, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !122, file: !60, line: 245, baseType: !134, size: 64, offset: 64)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 8)
!137 = !DILocation(line: 58, column: 28, scope: !119)
!138 = !DILocalVariable(name: "listenSocket", scope: !119, file: !45, line: 59, type: !23)
!139 = !DILocation(line: 59, column: 16, scope: !119)
!140 = !DILocalVariable(name: "acceptSocket", scope: !119, file: !45, line: 60, type: !23)
!141 = !DILocation(line: 60, column: 16, scope: !119)
!142 = !DILocalVariable(name: "inputBuffer", scope: !119, file: !45, line: 61, type: !102)
!143 = !DILocation(line: 61, column: 14, scope: !119)
!144 = !DILocation(line: 62, column: 9, scope: !119)
!145 = !DILocation(line: 72, column: 28, scope: !146)
!146 = distinct !DILexicalBlock(scope: !119, file: !45, line: 63, column: 9)
!147 = !DILocation(line: 72, column: 26, scope: !146)
!148 = !DILocation(line: 73, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !45, line: 73, column: 17)
!150 = !DILocation(line: 73, column: 30, scope: !149)
!151 = !DILocation(line: 73, column: 17, scope: !146)
!152 = !DILocation(line: 75, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !45, line: 74, column: 13)
!154 = !DILocation(line: 77, column: 13, scope: !146)
!155 = !DILocation(line: 78, column: 21, scope: !146)
!156 = !DILocation(line: 78, column: 32, scope: !146)
!157 = !DILocation(line: 79, column: 21, scope: !146)
!158 = !DILocation(line: 79, column: 30, scope: !146)
!159 = !DILocation(line: 79, column: 37, scope: !146)
!160 = !DILocation(line: 80, column: 32, scope: !146)
!161 = !DILocation(line: 80, column: 21, scope: !146)
!162 = !DILocation(line: 80, column: 30, scope: !146)
!163 = !DILocation(line: 81, column: 22, scope: !164)
!164 = distinct !DILexicalBlock(scope: !146, file: !45, line: 81, column: 17)
!165 = !DILocation(line: 81, column: 36, scope: !164)
!166 = !DILocation(line: 81, column: 17, scope: !164)
!167 = !DILocation(line: 81, column: 81, scope: !164)
!168 = !DILocation(line: 81, column: 17, scope: !146)
!169 = !DILocation(line: 83, column: 17, scope: !170)
!170 = distinct !DILexicalBlock(scope: !164, file: !45, line: 82, column: 13)
!171 = !DILocation(line: 85, column: 24, scope: !172)
!172 = distinct !DILexicalBlock(scope: !146, file: !45, line: 85, column: 17)
!173 = !DILocation(line: 85, column: 17, scope: !172)
!174 = !DILocation(line: 85, column: 54, scope: !172)
!175 = !DILocation(line: 85, column: 17, scope: !146)
!176 = !DILocation(line: 87, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !172, file: !45, line: 86, column: 13)
!178 = !DILocation(line: 89, column: 35, scope: !146)
!179 = !DILocation(line: 89, column: 28, scope: !146)
!180 = !DILocation(line: 89, column: 26, scope: !146)
!181 = !DILocation(line: 90, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !146, file: !45, line: 90, column: 17)
!183 = !DILocation(line: 90, column: 30, scope: !182)
!184 = !DILocation(line: 90, column: 17, scope: !146)
!185 = !DILocation(line: 92, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !45, line: 91, column: 13)
!187 = !DILocation(line: 95, column: 31, scope: !146)
!188 = !DILocation(line: 95, column: 45, scope: !146)
!189 = !DILocation(line: 95, column: 26, scope: !146)
!190 = !DILocation(line: 95, column: 24, scope: !146)
!191 = !DILocation(line: 96, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !146, file: !45, line: 96, column: 17)
!193 = !DILocation(line: 96, column: 28, scope: !192)
!194 = !DILocation(line: 96, column: 44, scope: !192)
!195 = !DILocation(line: 96, column: 47, scope: !192)
!196 = !DILocation(line: 96, column: 58, scope: !192)
!197 = !DILocation(line: 96, column: 17, scope: !146)
!198 = !DILocation(line: 98, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !45, line: 97, column: 13)
!200 = !DILocation(line: 101, column: 25, scope: !146)
!201 = !DILocation(line: 101, column: 13, scope: !146)
!202 = !DILocation(line: 101, column: 37, scope: !146)
!203 = !DILocation(line: 103, column: 25, scope: !146)
!204 = !DILocation(line: 103, column: 20, scope: !146)
!205 = !DILocation(line: 103, column: 18, scope: !146)
!206 = !DILocation(line: 104, column: 9, scope: !146)
!207 = !DILocation(line: 106, column: 13, scope: !208)
!208 = distinct !DILexicalBlock(scope: !119, file: !45, line: 106, column: 13)
!209 = !DILocation(line: 106, column: 26, scope: !208)
!210 = !DILocation(line: 106, column: 13, scope: !119)
!211 = !DILocation(line: 108, column: 26, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !45, line: 107, column: 9)
!213 = !DILocation(line: 108, column: 13, scope: !212)
!214 = !DILocation(line: 109, column: 9, scope: !212)
!215 = !DILocation(line: 110, column: 13, scope: !216)
!216 = distinct !DILexicalBlock(scope: !119, file: !45, line: 110, column: 13)
!217 = !DILocation(line: 110, column: 26, scope: !216)
!218 = !DILocation(line: 110, column: 13, scope: !119)
!219 = !DILocation(line: 112, column: 26, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !45, line: 111, column: 9)
!221 = !DILocation(line: 112, column: 13, scope: !220)
!222 = !DILocation(line: 113, column: 9, scope: !220)
!223 = !DILocation(line: 121, column: 5, scope: !112)
!224 = !DILocation(line: 122, column: 1, scope: !112)
!225 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 130, type: !113, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!226 = !DILocalVariable(name: "data", scope: !225, file: !45, line: 132, type: !23)
!227 = !DILocation(line: 132, column: 9, scope: !225)
!228 = !DILocation(line: 134, column: 10, scope: !225)
!229 = !DILocation(line: 137, column: 10, scope: !225)
!230 = !DILocation(line: 138, column: 5, scope: !225)
!231 = !DILocation(line: 139, column: 1, scope: !225)
!232 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 143, type: !113, scopeLine: 144, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!233 = !DILocalVariable(name: "data", scope: !232, file: !45, line: 145, type: !23)
!234 = !DILocation(line: 145, column: 9, scope: !232)
!235 = !DILocation(line: 147, column: 10, scope: !232)
!236 = !DILocalVariable(name: "recvResult", scope: !237, file: !45, line: 153, type: !23)
!237 = distinct !DILexicalBlock(scope: !232, file: !45, line: 148, column: 5)
!238 = !DILocation(line: 153, column: 13, scope: !237)
!239 = !DILocalVariable(name: "service", scope: !237, file: !45, line: 154, type: !122)
!240 = !DILocation(line: 154, column: 28, scope: !237)
!241 = !DILocalVariable(name: "listenSocket", scope: !237, file: !45, line: 155, type: !23)
!242 = !DILocation(line: 155, column: 16, scope: !237)
!243 = !DILocalVariable(name: "acceptSocket", scope: !237, file: !45, line: 156, type: !23)
!244 = !DILocation(line: 156, column: 16, scope: !237)
!245 = !DILocalVariable(name: "inputBuffer", scope: !237, file: !45, line: 157, type: !102)
!246 = !DILocation(line: 157, column: 14, scope: !237)
!247 = !DILocation(line: 158, column: 9, scope: !237)
!248 = !DILocation(line: 168, column: 28, scope: !249)
!249 = distinct !DILexicalBlock(scope: !237, file: !45, line: 159, column: 9)
!250 = !DILocation(line: 168, column: 26, scope: !249)
!251 = !DILocation(line: 169, column: 17, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !45, line: 169, column: 17)
!253 = !DILocation(line: 169, column: 30, scope: !252)
!254 = !DILocation(line: 169, column: 17, scope: !249)
!255 = !DILocation(line: 171, column: 17, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !45, line: 170, column: 13)
!257 = !DILocation(line: 173, column: 13, scope: !249)
!258 = !DILocation(line: 174, column: 21, scope: !249)
!259 = !DILocation(line: 174, column: 32, scope: !249)
!260 = !DILocation(line: 175, column: 21, scope: !249)
!261 = !DILocation(line: 175, column: 30, scope: !249)
!262 = !DILocation(line: 175, column: 37, scope: !249)
!263 = !DILocation(line: 176, column: 32, scope: !249)
!264 = !DILocation(line: 176, column: 21, scope: !249)
!265 = !DILocation(line: 176, column: 30, scope: !249)
!266 = !DILocation(line: 177, column: 22, scope: !267)
!267 = distinct !DILexicalBlock(scope: !249, file: !45, line: 177, column: 17)
!268 = !DILocation(line: 177, column: 36, scope: !267)
!269 = !DILocation(line: 177, column: 17, scope: !267)
!270 = !DILocation(line: 177, column: 81, scope: !267)
!271 = !DILocation(line: 177, column: 17, scope: !249)
!272 = !DILocation(line: 179, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !267, file: !45, line: 178, column: 13)
!274 = !DILocation(line: 181, column: 24, scope: !275)
!275 = distinct !DILexicalBlock(scope: !249, file: !45, line: 181, column: 17)
!276 = !DILocation(line: 181, column: 17, scope: !275)
!277 = !DILocation(line: 181, column: 54, scope: !275)
!278 = !DILocation(line: 181, column: 17, scope: !249)
!279 = !DILocation(line: 183, column: 17, scope: !280)
!280 = distinct !DILexicalBlock(scope: !275, file: !45, line: 182, column: 13)
!281 = !DILocation(line: 185, column: 35, scope: !249)
!282 = !DILocation(line: 185, column: 28, scope: !249)
!283 = !DILocation(line: 185, column: 26, scope: !249)
!284 = !DILocation(line: 186, column: 17, scope: !285)
!285 = distinct !DILexicalBlock(scope: !249, file: !45, line: 186, column: 17)
!286 = !DILocation(line: 186, column: 30, scope: !285)
!287 = !DILocation(line: 186, column: 17, scope: !249)
!288 = !DILocation(line: 188, column: 17, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !45, line: 187, column: 13)
!290 = !DILocation(line: 191, column: 31, scope: !249)
!291 = !DILocation(line: 191, column: 45, scope: !249)
!292 = !DILocation(line: 191, column: 26, scope: !249)
!293 = !DILocation(line: 191, column: 24, scope: !249)
!294 = !DILocation(line: 192, column: 17, scope: !295)
!295 = distinct !DILexicalBlock(scope: !249, file: !45, line: 192, column: 17)
!296 = !DILocation(line: 192, column: 28, scope: !295)
!297 = !DILocation(line: 192, column: 44, scope: !295)
!298 = !DILocation(line: 192, column: 47, scope: !295)
!299 = !DILocation(line: 192, column: 58, scope: !295)
!300 = !DILocation(line: 192, column: 17, scope: !249)
!301 = !DILocation(line: 194, column: 17, scope: !302)
!302 = distinct !DILexicalBlock(scope: !295, file: !45, line: 193, column: 13)
!303 = !DILocation(line: 197, column: 25, scope: !249)
!304 = !DILocation(line: 197, column: 13, scope: !249)
!305 = !DILocation(line: 197, column: 37, scope: !249)
!306 = !DILocation(line: 199, column: 25, scope: !249)
!307 = !DILocation(line: 199, column: 20, scope: !249)
!308 = !DILocation(line: 199, column: 18, scope: !249)
!309 = !DILocation(line: 200, column: 9, scope: !249)
!310 = !DILocation(line: 202, column: 13, scope: !311)
!311 = distinct !DILexicalBlock(scope: !237, file: !45, line: 202, column: 13)
!312 = !DILocation(line: 202, column: 26, scope: !311)
!313 = !DILocation(line: 202, column: 13, scope: !237)
!314 = !DILocation(line: 204, column: 26, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !45, line: 203, column: 9)
!316 = !DILocation(line: 204, column: 13, scope: !315)
!317 = !DILocation(line: 205, column: 9, scope: !315)
!318 = !DILocation(line: 206, column: 13, scope: !319)
!319 = distinct !DILexicalBlock(scope: !237, file: !45, line: 206, column: 13)
!320 = !DILocation(line: 206, column: 26, scope: !319)
!321 = !DILocation(line: 206, column: 13, scope: !237)
!322 = !DILocation(line: 208, column: 26, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !45, line: 207, column: 9)
!324 = !DILocation(line: 208, column: 13, scope: !323)
!325 = !DILocation(line: 209, column: 9, scope: !323)
!326 = !DILocation(line: 217, column: 5, scope: !232)
!327 = !DILocation(line: 218, column: 1, scope: !232)
!328 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63_good", scope: !45, file: !45, line: 220, type: !113, scopeLine: 221, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!329 = !DILocation(line: 222, column: 5, scope: !328)
!330 = !DILocation(line: 223, column: 5, scope: !328)
!331 = !DILocation(line: 224, column: 1, scope: !328)
!332 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink", scope: !106, file: !106, line: 44, type: !333, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!336 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !332, file: !106, line: 44, type: !335)
!337 = !DILocation(line: 44, column: 81, scope: !332)
!338 = !DILocalVariable(name: "data", scope: !332, file: !106, line: 46, type: !23)
!339 = !DILocation(line: 46, column: 9, scope: !332)
!340 = !DILocation(line: 46, column: 17, scope: !332)
!341 = !DILocation(line: 46, column: 16, scope: !332)
!342 = !DILocalVariable(name: "i", scope: !343, file: !106, line: 48, type: !23)
!343 = distinct !DILexicalBlock(scope: !332, file: !106, line: 47, column: 5)
!344 = !DILocation(line: 48, column: 13, scope: !343)
!345 = !DILocalVariable(name: "buffer", scope: !343, file: !106, line: 49, type: !346)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 10)
!349 = !DILocation(line: 49, column: 13, scope: !343)
!350 = !DILocation(line: 52, column: 13, scope: !351)
!351 = distinct !DILexicalBlock(scope: !343, file: !106, line: 52, column: 13)
!352 = !DILocation(line: 52, column: 18, scope: !351)
!353 = !DILocation(line: 52, column: 13, scope: !343)
!354 = !DILocation(line: 54, column: 20, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !106, line: 53, column: 9)
!356 = !DILocation(line: 54, column: 13, scope: !355)
!357 = !DILocation(line: 54, column: 26, scope: !355)
!358 = !DILocation(line: 56, column: 19, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !106, line: 56, column: 13)
!360 = !DILocation(line: 56, column: 17, scope: !359)
!361 = !DILocation(line: 56, column: 24, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !106, line: 56, column: 13)
!363 = !DILocation(line: 56, column: 26, scope: !362)
!364 = !DILocation(line: 56, column: 13, scope: !359)
!365 = !DILocation(line: 58, column: 37, scope: !366)
!366 = distinct !DILexicalBlock(scope: !362, file: !106, line: 57, column: 13)
!367 = !DILocation(line: 58, column: 30, scope: !366)
!368 = !DILocation(line: 58, column: 17, scope: !366)
!369 = !DILocation(line: 59, column: 13, scope: !366)
!370 = !DILocation(line: 56, column: 33, scope: !362)
!371 = !DILocation(line: 56, column: 13, scope: !362)
!372 = distinct !{!372, !364, !373, !374}
!373 = !DILocation(line: 59, column: 13, scope: !359)
!374 = !{!"llvm.loop.mustprogress"}
!375 = !DILocation(line: 60, column: 9, scope: !355)
!376 = !DILocation(line: 63, column: 13, scope: !377)
!377 = distinct !DILexicalBlock(scope: !351, file: !106, line: 62, column: 9)
!378 = !DILocation(line: 66, column: 1, scope: !332)
!379 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_goodG2BSink", scope: !106, file: !106, line: 73, type: !333, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!380 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !379, file: !106, line: 73, type: !335)
!381 = !DILocation(line: 73, column: 85, scope: !379)
!382 = !DILocalVariable(name: "data", scope: !379, file: !106, line: 75, type: !23)
!383 = !DILocation(line: 75, column: 9, scope: !379)
!384 = !DILocation(line: 75, column: 17, scope: !379)
!385 = !DILocation(line: 75, column: 16, scope: !379)
!386 = !DILocalVariable(name: "i", scope: !387, file: !106, line: 77, type: !23)
!387 = distinct !DILexicalBlock(scope: !379, file: !106, line: 76, column: 5)
!388 = !DILocation(line: 77, column: 13, scope: !387)
!389 = !DILocalVariable(name: "buffer", scope: !387, file: !106, line: 78, type: !346)
!390 = !DILocation(line: 78, column: 13, scope: !387)
!391 = !DILocation(line: 81, column: 13, scope: !392)
!392 = distinct !DILexicalBlock(scope: !387, file: !106, line: 81, column: 13)
!393 = !DILocation(line: 81, column: 18, scope: !392)
!394 = !DILocation(line: 81, column: 13, scope: !387)
!395 = !DILocation(line: 83, column: 20, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !106, line: 82, column: 9)
!397 = !DILocation(line: 83, column: 13, scope: !396)
!398 = !DILocation(line: 83, column: 26, scope: !396)
!399 = !DILocation(line: 85, column: 19, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !106, line: 85, column: 13)
!401 = !DILocation(line: 85, column: 17, scope: !400)
!402 = !DILocation(line: 85, column: 24, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !106, line: 85, column: 13)
!404 = !DILocation(line: 85, column: 26, scope: !403)
!405 = !DILocation(line: 85, column: 13, scope: !400)
!406 = !DILocation(line: 87, column: 37, scope: !407)
!407 = distinct !DILexicalBlock(scope: !403, file: !106, line: 86, column: 13)
!408 = !DILocation(line: 87, column: 30, scope: !407)
!409 = !DILocation(line: 87, column: 17, scope: !407)
!410 = !DILocation(line: 88, column: 13, scope: !407)
!411 = !DILocation(line: 85, column: 33, scope: !403)
!412 = !DILocation(line: 85, column: 13, scope: !403)
!413 = distinct !{!413, !405, !414, !374}
!414 = !DILocation(line: 88, column: 13, scope: !400)
!415 = !DILocation(line: 89, column: 9, scope: !396)
!416 = !DILocation(line: 92, column: 13, scope: !417)
!417 = distinct !DILexicalBlock(scope: !392, file: !106, line: 91, column: 9)
!418 = !DILocation(line: 95, column: 1, scope: !379)
!419 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_goodB2GSink", scope: !106, file: !106, line: 98, type: !333, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!420 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !419, file: !106, line: 98, type: !335)
!421 = !DILocation(line: 98, column: 85, scope: !419)
!422 = !DILocalVariable(name: "data", scope: !419, file: !106, line: 100, type: !23)
!423 = !DILocation(line: 100, column: 9, scope: !419)
!424 = !DILocation(line: 100, column: 17, scope: !419)
!425 = !DILocation(line: 100, column: 16, scope: !419)
!426 = !DILocalVariable(name: "i", scope: !427, file: !106, line: 102, type: !23)
!427 = distinct !DILexicalBlock(scope: !419, file: !106, line: 101, column: 5)
!428 = !DILocation(line: 102, column: 13, scope: !427)
!429 = !DILocalVariable(name: "buffer", scope: !427, file: !106, line: 103, type: !346)
!430 = !DILocation(line: 103, column: 13, scope: !427)
!431 = !DILocation(line: 105, column: 13, scope: !432)
!432 = distinct !DILexicalBlock(scope: !427, file: !106, line: 105, column: 13)
!433 = !DILocation(line: 105, column: 18, scope: !432)
!434 = !DILocation(line: 105, column: 23, scope: !432)
!435 = !DILocation(line: 105, column: 26, scope: !432)
!436 = !DILocation(line: 105, column: 31, scope: !432)
!437 = !DILocation(line: 105, column: 13, scope: !427)
!438 = !DILocation(line: 107, column: 20, scope: !439)
!439 = distinct !DILexicalBlock(scope: !432, file: !106, line: 106, column: 9)
!440 = !DILocation(line: 107, column: 13, scope: !439)
!441 = !DILocation(line: 107, column: 26, scope: !439)
!442 = !DILocation(line: 109, column: 19, scope: !443)
!443 = distinct !DILexicalBlock(scope: !439, file: !106, line: 109, column: 13)
!444 = !DILocation(line: 109, column: 17, scope: !443)
!445 = !DILocation(line: 109, column: 24, scope: !446)
!446 = distinct !DILexicalBlock(scope: !443, file: !106, line: 109, column: 13)
!447 = !DILocation(line: 109, column: 26, scope: !446)
!448 = !DILocation(line: 109, column: 13, scope: !443)
!449 = !DILocation(line: 111, column: 37, scope: !450)
!450 = distinct !DILexicalBlock(scope: !446, file: !106, line: 110, column: 13)
!451 = !DILocation(line: 111, column: 30, scope: !450)
!452 = !DILocation(line: 111, column: 17, scope: !450)
!453 = !DILocation(line: 112, column: 13, scope: !450)
!454 = !DILocation(line: 109, column: 33, scope: !446)
!455 = !DILocation(line: 109, column: 13, scope: !446)
!456 = distinct !{!456, !448, !457, !374}
!457 = !DILocation(line: 112, column: 13, scope: !443)
!458 = !DILocation(line: 113, column: 9, scope: !439)
!459 = !DILocation(line: 116, column: 13, scope: !460)
!460 = distinct !DILexicalBlock(scope: !432, file: !106, line: 115, column: 9)
!461 = !DILocation(line: 119, column: 1, scope: !419)
!462 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !463, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !42}
!465 = !DILocalVariable(name: "line", arg: 1, scope: !462, file: !3, line: 11, type: !42)
!466 = !DILocation(line: 11, column: 25, scope: !462)
!467 = !DILocation(line: 13, column: 1, scope: !462)
!468 = !DILocation(line: 14, column: 8, scope: !469)
!469 = distinct !DILexicalBlock(scope: !462, file: !3, line: 14, column: 8)
!470 = !DILocation(line: 14, column: 13, scope: !469)
!471 = !DILocation(line: 14, column: 8, scope: !462)
!472 = !DILocation(line: 16, column: 24, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !3, line: 15, column: 5)
!474 = !DILocation(line: 16, column: 9, scope: !473)
!475 = !DILocation(line: 17, column: 5, scope: !473)
!476 = !DILocation(line: 18, column: 5, scope: !462)
!477 = !DILocation(line: 19, column: 1, scope: !462)
!478 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !463, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!479 = !DILocalVariable(name: "line", arg: 1, scope: !478, file: !3, line: 20, type: !42)
!480 = !DILocation(line: 20, column: 29, scope: !478)
!481 = !DILocation(line: 22, column: 8, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !3, line: 22, column: 8)
!483 = !DILocation(line: 22, column: 13, scope: !482)
!484 = !DILocation(line: 22, column: 8, scope: !478)
!485 = !DILocation(line: 24, column: 24, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !3, line: 23, column: 5)
!487 = !DILocation(line: 24, column: 9, scope: !486)
!488 = !DILocation(line: 25, column: 5, scope: !486)
!489 = !DILocation(line: 26, column: 1, scope: !478)
!490 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !491, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !495, line: 74, baseType: !23)
!495 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!496 = !DILocalVariable(name: "line", arg: 1, scope: !490, file: !3, line: 27, type: !493)
!497 = !DILocation(line: 27, column: 29, scope: !490)
!498 = !DILocation(line: 29, column: 8, scope: !499)
!499 = distinct !DILexicalBlock(scope: !490, file: !3, line: 29, column: 8)
!500 = !DILocation(line: 29, column: 13, scope: !499)
!501 = !DILocation(line: 29, column: 8, scope: !490)
!502 = !DILocation(line: 31, column: 27, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !3, line: 30, column: 5)
!504 = !DILocation(line: 31, column: 9, scope: !503)
!505 = !DILocation(line: 32, column: 5, scope: !503)
!506 = !DILocation(line: 33, column: 1, scope: !490)
!507 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !508, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !23}
!510 = !DILocalVariable(name: "intNumber", arg: 1, scope: !507, file: !3, line: 35, type: !23)
!511 = !DILocation(line: 35, column: 24, scope: !507)
!512 = !DILocation(line: 37, column: 20, scope: !507)
!513 = !DILocation(line: 37, column: 5, scope: !507)
!514 = !DILocation(line: 38, column: 1, scope: !507)
!515 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !516, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !518}
!518 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!519 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !515, file: !3, line: 40, type: !518)
!520 = !DILocation(line: 40, column: 28, scope: !515)
!521 = !DILocation(line: 42, column: 21, scope: !515)
!522 = !DILocation(line: 42, column: 5, scope: !515)
!523 = !DILocation(line: 43, column: 1, scope: !515)
!524 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !525, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !527}
!527 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!528 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !524, file: !3, line: 45, type: !527)
!529 = !DILocation(line: 45, column: 28, scope: !524)
!530 = !DILocation(line: 47, column: 20, scope: !524)
!531 = !DILocation(line: 47, column: 5, scope: !524)
!532 = !DILocation(line: 48, column: 1, scope: !524)
!533 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !534, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !536}
!536 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!537 = !DILocalVariable(name: "longNumber", arg: 1, scope: !533, file: !3, line: 50, type: !536)
!538 = !DILocation(line: 50, column: 26, scope: !533)
!539 = !DILocation(line: 52, column: 21, scope: !533)
!540 = !DILocation(line: 52, column: 5, scope: !533)
!541 = !DILocation(line: 53, column: 1, scope: !533)
!542 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !543, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !545}
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !546, line: 27, baseType: !547)
!546 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !536)
!548 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !542, file: !3, line: 55, type: !545)
!549 = !DILocation(line: 55, column: 33, scope: !542)
!550 = !DILocation(line: 57, column: 29, scope: !542)
!551 = !DILocation(line: 57, column: 5, scope: !542)
!552 = !DILocation(line: 58, column: 1, scope: !542)
!553 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !554, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556}
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !495, line: 46, baseType: !557)
!557 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!558 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !553, file: !3, line: 60, type: !556)
!559 = !DILocation(line: 60, column: 29, scope: !553)
!560 = !DILocation(line: 62, column: 21, scope: !553)
!561 = !DILocation(line: 62, column: 5, scope: !553)
!562 = !DILocation(line: 63, column: 1, scope: !553)
!563 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !564, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !43}
!566 = !DILocalVariable(name: "charHex", arg: 1, scope: !563, file: !3, line: 65, type: !43)
!567 = !DILocation(line: 65, column: 29, scope: !563)
!568 = !DILocation(line: 67, column: 22, scope: !563)
!569 = !DILocation(line: 67, column: 5, scope: !563)
!570 = !DILocation(line: 68, column: 1, scope: !563)
!571 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !572, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !494}
!574 = !DILocalVariable(name: "wideChar", arg: 1, scope: !571, file: !3, line: 70, type: !494)
!575 = !DILocation(line: 70, column: 29, scope: !571)
!576 = !DILocalVariable(name: "s", scope: !571, file: !3, line: 74, type: !577)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 64, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 2)
!580 = !DILocation(line: 74, column: 13, scope: !571)
!581 = !DILocation(line: 75, column: 16, scope: !571)
!582 = !DILocation(line: 75, column: 9, scope: !571)
!583 = !DILocation(line: 75, column: 14, scope: !571)
!584 = !DILocation(line: 76, column: 9, scope: !571)
!585 = !DILocation(line: 76, column: 14, scope: !571)
!586 = !DILocation(line: 77, column: 21, scope: !571)
!587 = !DILocation(line: 77, column: 5, scope: !571)
!588 = !DILocation(line: 78, column: 1, scope: !571)
!589 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !590, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !7}
!592 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !589, file: !3, line: 80, type: !7)
!593 = !DILocation(line: 80, column: 33, scope: !589)
!594 = !DILocation(line: 82, column: 20, scope: !589)
!595 = !DILocation(line: 82, column: 5, scope: !589)
!596 = !DILocation(line: 83, column: 1, scope: !589)
!597 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !598, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !25}
!600 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !597, file: !3, line: 85, type: !25)
!601 = !DILocation(line: 85, column: 45, scope: !597)
!602 = !DILocation(line: 87, column: 22, scope: !597)
!603 = !DILocation(line: 87, column: 5, scope: !597)
!604 = !DILocation(line: 88, column: 1, scope: !597)
!605 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !606, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !608}
!608 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!609 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !605, file: !3, line: 90, type: !608)
!610 = !DILocation(line: 90, column: 29, scope: !605)
!611 = !DILocation(line: 92, column: 20, scope: !605)
!612 = !DILocation(line: 92, column: 5, scope: !605)
!613 = !DILocation(line: 93, column: 1, scope: !605)
!614 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !615, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !619, line: 100, baseType: !620)
!619 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_743/source_code")
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !619, line: 96, size: 64, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !620, file: !619, line: 98, baseType: !23, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !620, file: !619, line: 99, baseType: !23, size: 32, offset: 32)
!624 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !614, file: !3, line: 95, type: !617)
!625 = !DILocation(line: 95, column: 40, scope: !614)
!626 = !DILocation(line: 97, column: 26, scope: !614)
!627 = !DILocation(line: 97, column: 47, scope: !614)
!628 = !DILocation(line: 97, column: 55, scope: !614)
!629 = !DILocation(line: 97, column: 76, scope: !614)
!630 = !DILocation(line: 97, column: 5, scope: !614)
!631 = !DILocation(line: 98, column: 1, scope: !614)
!632 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !633, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !635, !556}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!636 = !DILocalVariable(name: "bytes", arg: 1, scope: !632, file: !3, line: 100, type: !635)
!637 = !DILocation(line: 100, column: 38, scope: !632)
!638 = !DILocalVariable(name: "numBytes", arg: 2, scope: !632, file: !3, line: 100, type: !556)
!639 = !DILocation(line: 100, column: 52, scope: !632)
!640 = !DILocalVariable(name: "i", scope: !632, file: !3, line: 102, type: !556)
!641 = !DILocation(line: 102, column: 12, scope: !632)
!642 = !DILocation(line: 103, column: 12, scope: !643)
!643 = distinct !DILexicalBlock(scope: !632, file: !3, line: 103, column: 5)
!644 = !DILocation(line: 103, column: 10, scope: !643)
!645 = !DILocation(line: 103, column: 17, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !3, line: 103, column: 5)
!647 = !DILocation(line: 103, column: 21, scope: !646)
!648 = !DILocation(line: 103, column: 19, scope: !646)
!649 = !DILocation(line: 103, column: 5, scope: !643)
!650 = !DILocation(line: 105, column: 24, scope: !651)
!651 = distinct !DILexicalBlock(scope: !646, file: !3, line: 104, column: 5)
!652 = !DILocation(line: 105, column: 30, scope: !651)
!653 = !DILocation(line: 105, column: 9, scope: !651)
!654 = !DILocation(line: 106, column: 5, scope: !651)
!655 = !DILocation(line: 103, column: 31, scope: !646)
!656 = !DILocation(line: 103, column: 5, scope: !646)
!657 = distinct !{!657, !649, !658, !374}
!658 = !DILocation(line: 106, column: 5, scope: !643)
!659 = !DILocation(line: 107, column: 5, scope: !632)
!660 = !DILocation(line: 108, column: 1, scope: !632)
!661 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !662, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!662 = !DISubroutineType(types: !663)
!663 = !{!556, !635, !556, !42}
!664 = !DILocalVariable(name: "bytes", arg: 1, scope: !661, file: !3, line: 113, type: !635)
!665 = !DILocation(line: 113, column: 39, scope: !661)
!666 = !DILocalVariable(name: "numBytes", arg: 2, scope: !661, file: !3, line: 113, type: !556)
!667 = !DILocation(line: 113, column: 53, scope: !661)
!668 = !DILocalVariable(name: "hex", arg: 3, scope: !661, file: !3, line: 113, type: !42)
!669 = !DILocation(line: 113, column: 71, scope: !661)
!670 = !DILocalVariable(name: "numWritten", scope: !661, file: !3, line: 115, type: !556)
!671 = !DILocation(line: 115, column: 12, scope: !661)
!672 = !DILocation(line: 121, column: 5, scope: !661)
!673 = !DILocation(line: 121, column: 12, scope: !661)
!674 = !DILocation(line: 121, column: 25, scope: !661)
!675 = !DILocation(line: 121, column: 23, scope: !661)
!676 = !DILocation(line: 121, column: 34, scope: !661)
!677 = !DILocation(line: 121, column: 37, scope: !661)
!678 = !DILocation(line: 121, column: 67, scope: !661)
!679 = !DILocation(line: 121, column: 70, scope: !661)
!680 = !DILocation(line: 0, scope: !661)
!681 = !DILocalVariable(name: "byte", scope: !682, file: !3, line: 123, type: !23)
!682 = distinct !DILexicalBlock(scope: !661, file: !3, line: 122, column: 5)
!683 = !DILocation(line: 123, column: 13, scope: !682)
!684 = !DILocation(line: 124, column: 17, scope: !682)
!685 = !DILocation(line: 124, column: 25, scope: !682)
!686 = !DILocation(line: 124, column: 23, scope: !682)
!687 = !DILocation(line: 124, column: 9, scope: !682)
!688 = !DILocation(line: 125, column: 45, scope: !682)
!689 = !DILocation(line: 125, column: 29, scope: !682)
!690 = !DILocation(line: 125, column: 9, scope: !682)
!691 = !DILocation(line: 125, column: 15, scope: !682)
!692 = !DILocation(line: 125, column: 27, scope: !682)
!693 = !DILocation(line: 126, column: 9, scope: !682)
!694 = distinct !{!694, !672, !695, !374}
!695 = !DILocation(line: 127, column: 5, scope: !661)
!696 = !DILocation(line: 129, column: 12, scope: !661)
!697 = !DILocation(line: 129, column: 5, scope: !661)
!698 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !699, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!699 = !DISubroutineType(types: !700)
!700 = !{!556, !635, !556, !493}
!701 = !DILocalVariable(name: "bytes", arg: 1, scope: !698, file: !3, line: 135, type: !635)
!702 = !DILocation(line: 135, column: 41, scope: !698)
!703 = !DILocalVariable(name: "numBytes", arg: 2, scope: !698, file: !3, line: 135, type: !556)
!704 = !DILocation(line: 135, column: 55, scope: !698)
!705 = !DILocalVariable(name: "hex", arg: 3, scope: !698, file: !3, line: 135, type: !493)
!706 = !DILocation(line: 135, column: 76, scope: !698)
!707 = !DILocalVariable(name: "numWritten", scope: !698, file: !3, line: 137, type: !556)
!708 = !DILocation(line: 137, column: 12, scope: !698)
!709 = !DILocation(line: 143, column: 5, scope: !698)
!710 = !DILocation(line: 143, column: 12, scope: !698)
!711 = !DILocation(line: 143, column: 25, scope: !698)
!712 = !DILocation(line: 143, column: 23, scope: !698)
!713 = !DILocation(line: 143, column: 34, scope: !698)
!714 = !DILocation(line: 143, column: 47, scope: !698)
!715 = !DILocation(line: 143, column: 55, scope: !698)
!716 = !DILocation(line: 143, column: 53, scope: !698)
!717 = !DILocation(line: 143, column: 37, scope: !698)
!718 = !DILocation(line: 143, column: 68, scope: !698)
!719 = !DILocation(line: 143, column: 81, scope: !698)
!720 = !DILocation(line: 143, column: 89, scope: !698)
!721 = !DILocation(line: 143, column: 87, scope: !698)
!722 = !DILocation(line: 143, column: 100, scope: !698)
!723 = !DILocation(line: 143, column: 71, scope: !698)
!724 = !DILocation(line: 0, scope: !698)
!725 = !DILocalVariable(name: "byte", scope: !726, file: !3, line: 145, type: !23)
!726 = distinct !DILexicalBlock(scope: !698, file: !3, line: 144, column: 5)
!727 = !DILocation(line: 145, column: 13, scope: !726)
!728 = !DILocation(line: 146, column: 18, scope: !726)
!729 = !DILocation(line: 146, column: 26, scope: !726)
!730 = !DILocation(line: 146, column: 24, scope: !726)
!731 = !DILocation(line: 146, column: 9, scope: !726)
!732 = !DILocation(line: 147, column: 45, scope: !726)
!733 = !DILocation(line: 147, column: 29, scope: !726)
!734 = !DILocation(line: 147, column: 9, scope: !726)
!735 = !DILocation(line: 147, column: 15, scope: !726)
!736 = !DILocation(line: 147, column: 27, scope: !726)
!737 = !DILocation(line: 148, column: 9, scope: !726)
!738 = distinct !{!738, !709, !739, !374}
!739 = !DILocation(line: 149, column: 5, scope: !698)
!740 = !DILocation(line: 151, column: 12, scope: !698)
!741 = !DILocation(line: 151, column: 5, scope: !698)
!742 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !743, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!743 = !DISubroutineType(types: !744)
!744 = !{!23}
!745 = !DILocation(line: 158, column: 5, scope: !742)
!746 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !743, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!747 = !DILocation(line: 163, column: 5, scope: !746)
!748 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !743, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!749 = !DILocation(line: 168, column: 13, scope: !748)
!750 = !DILocation(line: 168, column: 20, scope: !748)
!751 = !DILocation(line: 168, column: 5, scope: !748)
!752 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !113, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!753 = !DILocation(line: 187, column: 16, scope: !752)
!754 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !113, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!755 = !DILocation(line: 188, column: 16, scope: !754)
!756 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !113, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!757 = !DILocation(line: 189, column: 16, scope: !756)
!758 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !113, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!759 = !DILocation(line: 190, column: 16, scope: !758)
!760 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !113, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!761 = !DILocation(line: 191, column: 16, scope: !760)
!762 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !113, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!763 = !DILocation(line: 192, column: 16, scope: !762)
!764 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !113, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!765 = !DILocation(line: 193, column: 16, scope: !764)
!766 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !113, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!767 = !DILocation(line: 194, column: 16, scope: !766)
!768 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !113, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!769 = !DILocation(line: 195, column: 16, scope: !768)
!770 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !113, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!771 = !DILocation(line: 198, column: 15, scope: !770)
!772 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !113, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!773 = !DILocation(line: 199, column: 15, scope: !772)
!774 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !113, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!775 = !DILocation(line: 200, column: 15, scope: !774)
!776 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !113, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!777 = !DILocation(line: 201, column: 15, scope: !776)
!778 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !113, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!779 = !DILocation(line: 202, column: 15, scope: !778)
!780 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !113, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!781 = !DILocation(line: 203, column: 15, scope: !780)
!782 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !113, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!783 = !DILocation(line: 204, column: 15, scope: !782)
!784 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !113, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!785 = !DILocation(line: 205, column: 15, scope: !784)
!786 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !113, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!787 = !DILocation(line: 206, column: 15, scope: !786)
