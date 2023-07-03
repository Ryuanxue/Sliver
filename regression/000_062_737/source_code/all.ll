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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51_bad() #0 !dbg !112 {
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
  %15 = load i32, i32* %data, align 4, !dbg !223
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_badSink(i32 %15), !dbg !224
  ret void, !dbg !225
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
define dso_local void @goodG2B() #0 !dbg !226 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !227, metadata !DIExpression()), !dbg !228
  store i32 -1, i32* %data, align 4, !dbg !229
  store i32 7, i32* %data, align 4, !dbg !230
  %0 = load i32, i32* %data, align 4, !dbg !231
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_goodG2BSink(i32 %0), !dbg !232
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !234 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !235, metadata !DIExpression()), !dbg !236
  store i32 -1, i32* %data, align 4, !dbg !237
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !238, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !243, metadata !DIExpression()), !dbg !244
  store i32 -1, i32* %listenSocket, align 4, !dbg !244
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !245, metadata !DIExpression()), !dbg !246
  store i32 -1, i32* %acceptSocket, align 4, !dbg !246
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !247, metadata !DIExpression()), !dbg !248
  br label %do.body, !dbg !249

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !250
  store i32 %call, i32* %listenSocket, align 4, !dbg !252
  %0 = load i32, i32* %listenSocket, align 4, !dbg !253
  %cmp = icmp eq i32 %0, -1, !dbg !255
  br i1 %cmp, label %if.then, label %if.end, !dbg !256

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !257

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !259
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !259
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !260
  store i16 2, i16* %sin_family, align 4, !dbg !261
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !262
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !263
  store i32 0, i32* %s_addr, align 4, !dbg !264
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !265
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !266
  store i16 %call1, i16* %sin_port, align 2, !dbg !267
  %2 = load i32, i32* %listenSocket, align 4, !dbg !268
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !270
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !271
  %cmp3 = icmp eq i32 %call2, -1, !dbg !272
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !273

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !274

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !276
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !278
  %cmp7 = icmp eq i32 %call6, -1, !dbg !279
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !280

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !281

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !283
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !284
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !285
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !286
  %cmp11 = icmp eq i32 %6, -1, !dbg !288
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !289

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !290

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !292
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !293
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !294
  %conv = trunc i64 %call14 to i32, !dbg !294
  store i32 %conv, i32* %recvResult, align 4, !dbg !295
  %8 = load i32, i32* %recvResult, align 4, !dbg !296
  %cmp15 = icmp eq i32 %8, -1, !dbg !298
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !299

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !300
  %cmp17 = icmp eq i32 %9, 0, !dbg !301
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !302

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !303

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !305
  %idxprom = sext i32 %10 to i64, !dbg !306
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !306
  store i8 0, i8* %arrayidx, align 1, !dbg !307
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !308
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !309
  store i32 %call22, i32* %data, align 4, !dbg !310
  br label %do.end, !dbg !311

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !312
  %cmp23 = icmp ne i32 %11, -1, !dbg !314
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !315

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !316
  %call26 = call i32 @close(i32 %12), !dbg !318
  br label %if.end27, !dbg !319

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !320
  %cmp28 = icmp ne i32 %13, -1, !dbg !322
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !323

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !324
  %call31 = call i32 @close(i32 %14), !dbg !326
  br label %if.end32, !dbg !327

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data, align 4, !dbg !328
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_goodB2GSink(i32 %15), !dbg !329
  ret void, !dbg !330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51_good() #0 !dbg !331 {
entry:
  call void @goodG2B(), !dbg !332
  call void @goodB2G(), !dbg !333
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_badSink(i32 %data) #0 !dbg !335 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata i32* %i, metadata !340, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !343, metadata !DIExpression()), !dbg !347
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !347
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !347
  %1 = load i32, i32* %data.addr, align 4, !dbg !348
  %cmp = icmp sge i32 %1, 0, !dbg !350
  br i1 %cmp, label %if.then, label %if.else, !dbg !351

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !352
  %idxprom = sext i32 %2 to i64, !dbg !354
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !354
  store i32 1, i32* %arrayidx, align 4, !dbg !355
  store i32 0, i32* %i, align 4, !dbg !356
  br label %for.cond, !dbg !358

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !359
  %cmp1 = icmp slt i32 %3, 10, !dbg !361
  br i1 %cmp1, label %for.body, label %for.end, !dbg !362

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !363
  %idxprom2 = sext i32 %4 to i64, !dbg !365
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !365
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !365
  call void @printIntLine(i32 %5), !dbg !366
  br label %for.inc, !dbg !367

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !368
  %inc = add nsw i32 %6, 1, !dbg !368
  store i32 %inc, i32* %i, align 4, !dbg !368
  br label %for.cond, !dbg !369, !llvm.loop !370

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !373

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !374
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_goodG2BSink(i32 %data) #0 !dbg !377 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.declare(metadata i32* %i, metadata !380, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !384
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !384
  %1 = load i32, i32* %data.addr, align 4, !dbg !385
  %cmp = icmp sge i32 %1, 0, !dbg !387
  br i1 %cmp, label %if.then, label %if.else, !dbg !388

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !389
  %idxprom = sext i32 %2 to i64, !dbg !391
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !391
  store i32 1, i32* %arrayidx, align 4, !dbg !392
  store i32 0, i32* %i, align 4, !dbg !393
  br label %for.cond, !dbg !395

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !396
  %cmp1 = icmp slt i32 %3, 10, !dbg !398
  br i1 %cmp1, label %for.body, label %for.end, !dbg !399

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !400
  %idxprom2 = sext i32 %4 to i64, !dbg !402
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !402
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !402
  call void @printIntLine(i32 %5), !dbg !403
  br label %for.inc, !dbg !404

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !405
  %inc = add nsw i32 %6, 1, !dbg !405
  store i32 %inc, i32* %i, align 4, !dbg !405
  br label %for.cond, !dbg !406, !llvm.loop !407

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !409

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !410
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_goodB2GSink(i32 %data) #0 !dbg !413 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata i32* %i, metadata !416, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !419, metadata !DIExpression()), !dbg !420
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !420
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !420
  %1 = load i32, i32* %data.addr, align 4, !dbg !421
  %cmp = icmp sge i32 %1, 0, !dbg !423
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !424

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !425
  %cmp1 = icmp slt i32 %2, 10, !dbg !426
  br i1 %cmp1, label %if.then, label %if.else, !dbg !427

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !428
  %idxprom = sext i32 %3 to i64, !dbg !430
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !430
  store i32 1, i32* %arrayidx, align 4, !dbg !431
  store i32 0, i32* %i, align 4, !dbg !432
  br label %for.cond, !dbg !434

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !435
  %cmp2 = icmp slt i32 %4, 10, !dbg !437
  br i1 %cmp2, label %for.body, label %for.end, !dbg !438

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !439
  %idxprom3 = sext i32 %5 to i64, !dbg !441
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !441
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !441
  call void @printIntLine(i32 %6), !dbg !442
  br label %for.inc, !dbg !443

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !444
  %inc = add nsw i32 %7, 1, !dbg !444
  store i32 %inc, i32* %i, align 4, !dbg !444
  br label %for.cond, !dbg !445, !llvm.loop !446

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !448

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !449
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !452 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !dbg !457
  %0 = load i8*, i8** %line.addr, align 8, !dbg !458
  %cmp = icmp ne i8* %0, null, !dbg !460
  br i1 %cmp, label %if.then, label %if.end, !dbg !461

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !462
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !464
  br label %if.end, !dbg !465

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !466
  ret void, !dbg !467
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !468 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !469, metadata !DIExpression()), !dbg !470
  %0 = load i8*, i8** %line.addr, align 8, !dbg !471
  %cmp = icmp ne i8* %0, null, !dbg !473
  br i1 %cmp, label %if.then, label %if.end, !dbg !474

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !475
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !477
  br label %if.end, !dbg !478

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !480 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !486, metadata !DIExpression()), !dbg !487
  %0 = load i32*, i32** %line.addr, align 8, !dbg !488
  %cmp = icmp ne i32* %0, null, !dbg !490
  br i1 %cmp, label %if.then, label %if.end, !dbg !491

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !492
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !494
  br label %if.end, !dbg !495

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !496
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !497 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !498, metadata !DIExpression()), !dbg !499
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !500
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !501
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !503 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !507, metadata !DIExpression()), !dbg !508
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !509
  %conv = sext i16 %0 to i32, !dbg !509
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !510
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !512 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !516, metadata !DIExpression()), !dbg !517
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !518
  %conv = fpext float %0 to double, !dbg !518
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !519
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !521 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !525, metadata !DIExpression()), !dbg !526
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !527
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !528
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !530 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !536, metadata !DIExpression()), !dbg !537
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !538
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !539
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !541 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !546, metadata !DIExpression()), !dbg !547
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !548
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !549
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !551 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !556
  %conv = sext i8 %0 to i32, !dbg !556
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !557
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !559 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !564, metadata !DIExpression()), !dbg !568
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !569
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !570
  store i32 %0, i32* %arrayidx, align 4, !dbg !571
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !572
  store i32 0, i32* %arrayidx1, align 4, !dbg !573
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !574
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !575
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !577 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !580, metadata !DIExpression()), !dbg !581
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !582
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !583
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !585 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !588, metadata !DIExpression()), !dbg !589
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !590
  %conv = zext i8 %0 to i32, !dbg !590
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !591
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !593 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !597, metadata !DIExpression()), !dbg !598
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !599
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !600
  ret void, !dbg !601
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !602 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !612, metadata !DIExpression()), !dbg !613
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !614
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !615
  %1 = load i32, i32* %intOne, align 4, !dbg !615
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !616
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !617
  %3 = load i32, i32* %intTwo, align 4, !dbg !617
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !618
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !620 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !624, metadata !DIExpression()), !dbg !625
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !626, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata i64* %i, metadata !628, metadata !DIExpression()), !dbg !629
  store i64 0, i64* %i, align 8, !dbg !630
  br label %for.cond, !dbg !632

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !633
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !635
  %cmp = icmp ult i64 %0, %1, !dbg !636
  br i1 %cmp, label %for.body, label %for.end, !dbg !637

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !638
  %3 = load i64, i64* %i, align 8, !dbg !640
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !638
  %4 = load i8, i8* %arrayidx, align 1, !dbg !638
  %conv = zext i8 %4 to i32, !dbg !638
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !641
  br label %for.inc, !dbg !642

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !643
  %inc = add i64 %5, 1, !dbg !643
  store i64 %inc, i64* %i, align 8, !dbg !643
  br label %for.cond, !dbg !644, !llvm.loop !645

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !647
  ret void, !dbg !648
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !649 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !652, metadata !DIExpression()), !dbg !653
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !654, metadata !DIExpression()), !dbg !655
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !656, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !658, metadata !DIExpression()), !dbg !659
  store i64 0, i64* %numWritten, align 8, !dbg !659
  br label %while.cond, !dbg !660

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !661
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !662
  %cmp = icmp ult i64 %0, %1, !dbg !663
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !664

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !665
  %2 = load i16*, i16** %call, align 8, !dbg !665
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !665
  %4 = load i64, i64* %numWritten, align 8, !dbg !665
  %mul = mul i64 2, %4, !dbg !665
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !665
  %5 = load i8, i8* %arrayidx, align 1, !dbg !665
  %conv = sext i8 %5 to i32, !dbg !665
  %idxprom = sext i32 %conv to i64, !dbg !665
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !665
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !665
  %conv2 = zext i16 %6 to i32, !dbg !665
  %and = and i32 %conv2, 4096, !dbg !665
  %tobool = icmp ne i32 %and, 0, !dbg !665
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !666

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !667
  %7 = load i16*, i16** %call3, align 8, !dbg !667
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !667
  %9 = load i64, i64* %numWritten, align 8, !dbg !667
  %mul4 = mul i64 2, %9, !dbg !667
  %add = add i64 %mul4, 1, !dbg !667
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !667
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !667
  %conv6 = sext i8 %10 to i32, !dbg !667
  %idxprom7 = sext i32 %conv6 to i64, !dbg !667
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !667
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !667
  %conv9 = zext i16 %11 to i32, !dbg !667
  %and10 = and i32 %conv9, 4096, !dbg !667
  %tobool11 = icmp ne i32 %and10, 0, !dbg !666
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !668
  br i1 %12, label %while.body, label %while.end, !dbg !660

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !669, metadata !DIExpression()), !dbg !671
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !672
  %14 = load i64, i64* %numWritten, align 8, !dbg !673
  %mul12 = mul i64 2, %14, !dbg !674
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !672
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !675
  %15 = load i32, i32* %byte, align 4, !dbg !676
  %conv15 = trunc i32 %15 to i8, !dbg !677
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !678
  %17 = load i64, i64* %numWritten, align 8, !dbg !679
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !678
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !680
  %18 = load i64, i64* %numWritten, align 8, !dbg !681
  %inc = add i64 %18, 1, !dbg !681
  store i64 %inc, i64* %numWritten, align 8, !dbg !681
  br label %while.cond, !dbg !660, !llvm.loop !682

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !684
  ret i64 %19, !dbg !685
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !686 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !689, metadata !DIExpression()), !dbg !690
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !691, metadata !DIExpression()), !dbg !692
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !693, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !695, metadata !DIExpression()), !dbg !696
  store i64 0, i64* %numWritten, align 8, !dbg !696
  br label %while.cond, !dbg !697

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !698
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !699
  %cmp = icmp ult i64 %0, %1, !dbg !700
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !701

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !702
  %3 = load i64, i64* %numWritten, align 8, !dbg !703
  %mul = mul i64 2, %3, !dbg !704
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !702
  %4 = load i32, i32* %arrayidx, align 4, !dbg !702
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !705
  %tobool = icmp ne i32 %call, 0, !dbg !705
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !706

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !707
  %6 = load i64, i64* %numWritten, align 8, !dbg !708
  %mul1 = mul i64 2, %6, !dbg !709
  %add = add i64 %mul1, 1, !dbg !710
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !707
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !707
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !711
  %tobool4 = icmp ne i32 %call3, 0, !dbg !706
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !712
  br i1 %8, label %while.body, label %while.end, !dbg !697

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !713, metadata !DIExpression()), !dbg !715
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !716
  %10 = load i64, i64* %numWritten, align 8, !dbg !717
  %mul5 = mul i64 2, %10, !dbg !718
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !716
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !719
  %11 = load i32, i32* %byte, align 4, !dbg !720
  %conv = trunc i32 %11 to i8, !dbg !721
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !722
  %13 = load i64, i64* %numWritten, align 8, !dbg !723
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !722
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !724
  %14 = load i64, i64* %numWritten, align 8, !dbg !725
  %inc = add i64 %14, 1, !dbg !725
  store i64 %inc, i64* %numWritten, align 8, !dbg !725
  br label %while.cond, !dbg !697, !llvm.loop !726

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !728
  ret i64 %15, !dbg !729
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !730 {
entry:
  ret i32 1, !dbg !733
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !734 {
entry:
  ret i32 0, !dbg !735
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !736 {
entry:
  %call = call i32 @rand() #7, !dbg !737
  %rem = srem i32 %call, 2, !dbg !738
  ret i32 %rem, !dbg !739
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !740 {
entry:
  ret void, !dbg !741
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !742 {
entry:
  ret void, !dbg !743
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !744 {
entry:
  ret void, !dbg !745
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !746 {
entry:
  ret void, !dbg !747
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !748 {
entry:
  ret void, !dbg !749
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !750 {
entry:
  ret void, !dbg !751
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !752 {
entry:
  ret void, !dbg !753
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !754 {
entry:
  ret void, !dbg !755
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !756 {
entry:
  ret void, !dbg !757
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !758 {
entry:
  ret void, !dbg !759
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !760 {
entry:
  ret void, !dbg !761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !762 {
entry:
  ret void, !dbg !763
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !764 {
entry:
  ret void, !dbg !765
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !766 {
entry:
  ret void, !dbg !767
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !768 {
entry:
  ret void, !dbg !769
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !770 {
entry:
  ret void, !dbg !771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !772 {
entry:
  ret void, !dbg !773
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !774 {
entry:
  ret void, !dbg !775
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_737/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_737/source_code")
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
!106 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_737/source_code")
!107 = !{}
!108 = !{!"clang version 12.0.0"}
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51_bad", scope: !45, file: !45, line: 47, type: !113, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
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
!223 = !DILocation(line: 121, column: 74, scope: !112)
!224 = !DILocation(line: 121, column: 5, scope: !112)
!225 = !DILocation(line: 122, column: 1, scope: !112)
!226 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 130, type: !113, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!227 = !DILocalVariable(name: "data", scope: !226, file: !45, line: 132, type: !23)
!228 = !DILocation(line: 132, column: 9, scope: !226)
!229 = !DILocation(line: 134, column: 10, scope: !226)
!230 = !DILocation(line: 137, column: 10, scope: !226)
!231 = !DILocation(line: 138, column: 78, scope: !226)
!232 = !DILocation(line: 138, column: 5, scope: !226)
!233 = !DILocation(line: 139, column: 1, scope: !226)
!234 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 143, type: !113, scopeLine: 144, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!235 = !DILocalVariable(name: "data", scope: !234, file: !45, line: 145, type: !23)
!236 = !DILocation(line: 145, column: 9, scope: !234)
!237 = !DILocation(line: 147, column: 10, scope: !234)
!238 = !DILocalVariable(name: "recvResult", scope: !239, file: !45, line: 153, type: !23)
!239 = distinct !DILexicalBlock(scope: !234, file: !45, line: 148, column: 5)
!240 = !DILocation(line: 153, column: 13, scope: !239)
!241 = !DILocalVariable(name: "service", scope: !239, file: !45, line: 154, type: !122)
!242 = !DILocation(line: 154, column: 28, scope: !239)
!243 = !DILocalVariable(name: "listenSocket", scope: !239, file: !45, line: 155, type: !23)
!244 = !DILocation(line: 155, column: 16, scope: !239)
!245 = !DILocalVariable(name: "acceptSocket", scope: !239, file: !45, line: 156, type: !23)
!246 = !DILocation(line: 156, column: 16, scope: !239)
!247 = !DILocalVariable(name: "inputBuffer", scope: !239, file: !45, line: 157, type: !102)
!248 = !DILocation(line: 157, column: 14, scope: !239)
!249 = !DILocation(line: 158, column: 9, scope: !239)
!250 = !DILocation(line: 168, column: 28, scope: !251)
!251 = distinct !DILexicalBlock(scope: !239, file: !45, line: 159, column: 9)
!252 = !DILocation(line: 168, column: 26, scope: !251)
!253 = !DILocation(line: 169, column: 17, scope: !254)
!254 = distinct !DILexicalBlock(scope: !251, file: !45, line: 169, column: 17)
!255 = !DILocation(line: 169, column: 30, scope: !254)
!256 = !DILocation(line: 169, column: 17, scope: !251)
!257 = !DILocation(line: 171, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !45, line: 170, column: 13)
!259 = !DILocation(line: 173, column: 13, scope: !251)
!260 = !DILocation(line: 174, column: 21, scope: !251)
!261 = !DILocation(line: 174, column: 32, scope: !251)
!262 = !DILocation(line: 175, column: 21, scope: !251)
!263 = !DILocation(line: 175, column: 30, scope: !251)
!264 = !DILocation(line: 175, column: 37, scope: !251)
!265 = !DILocation(line: 176, column: 32, scope: !251)
!266 = !DILocation(line: 176, column: 21, scope: !251)
!267 = !DILocation(line: 176, column: 30, scope: !251)
!268 = !DILocation(line: 177, column: 22, scope: !269)
!269 = distinct !DILexicalBlock(scope: !251, file: !45, line: 177, column: 17)
!270 = !DILocation(line: 177, column: 36, scope: !269)
!271 = !DILocation(line: 177, column: 17, scope: !269)
!272 = !DILocation(line: 177, column: 81, scope: !269)
!273 = !DILocation(line: 177, column: 17, scope: !251)
!274 = !DILocation(line: 179, column: 17, scope: !275)
!275 = distinct !DILexicalBlock(scope: !269, file: !45, line: 178, column: 13)
!276 = !DILocation(line: 181, column: 24, scope: !277)
!277 = distinct !DILexicalBlock(scope: !251, file: !45, line: 181, column: 17)
!278 = !DILocation(line: 181, column: 17, scope: !277)
!279 = !DILocation(line: 181, column: 54, scope: !277)
!280 = !DILocation(line: 181, column: 17, scope: !251)
!281 = !DILocation(line: 183, column: 17, scope: !282)
!282 = distinct !DILexicalBlock(scope: !277, file: !45, line: 182, column: 13)
!283 = !DILocation(line: 185, column: 35, scope: !251)
!284 = !DILocation(line: 185, column: 28, scope: !251)
!285 = !DILocation(line: 185, column: 26, scope: !251)
!286 = !DILocation(line: 186, column: 17, scope: !287)
!287 = distinct !DILexicalBlock(scope: !251, file: !45, line: 186, column: 17)
!288 = !DILocation(line: 186, column: 30, scope: !287)
!289 = !DILocation(line: 186, column: 17, scope: !251)
!290 = !DILocation(line: 188, column: 17, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !45, line: 187, column: 13)
!292 = !DILocation(line: 191, column: 31, scope: !251)
!293 = !DILocation(line: 191, column: 45, scope: !251)
!294 = !DILocation(line: 191, column: 26, scope: !251)
!295 = !DILocation(line: 191, column: 24, scope: !251)
!296 = !DILocation(line: 192, column: 17, scope: !297)
!297 = distinct !DILexicalBlock(scope: !251, file: !45, line: 192, column: 17)
!298 = !DILocation(line: 192, column: 28, scope: !297)
!299 = !DILocation(line: 192, column: 44, scope: !297)
!300 = !DILocation(line: 192, column: 47, scope: !297)
!301 = !DILocation(line: 192, column: 58, scope: !297)
!302 = !DILocation(line: 192, column: 17, scope: !251)
!303 = !DILocation(line: 194, column: 17, scope: !304)
!304 = distinct !DILexicalBlock(scope: !297, file: !45, line: 193, column: 13)
!305 = !DILocation(line: 197, column: 25, scope: !251)
!306 = !DILocation(line: 197, column: 13, scope: !251)
!307 = !DILocation(line: 197, column: 37, scope: !251)
!308 = !DILocation(line: 199, column: 25, scope: !251)
!309 = !DILocation(line: 199, column: 20, scope: !251)
!310 = !DILocation(line: 199, column: 18, scope: !251)
!311 = !DILocation(line: 200, column: 9, scope: !251)
!312 = !DILocation(line: 202, column: 13, scope: !313)
!313 = distinct !DILexicalBlock(scope: !239, file: !45, line: 202, column: 13)
!314 = !DILocation(line: 202, column: 26, scope: !313)
!315 = !DILocation(line: 202, column: 13, scope: !239)
!316 = !DILocation(line: 204, column: 26, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !45, line: 203, column: 9)
!318 = !DILocation(line: 204, column: 13, scope: !317)
!319 = !DILocation(line: 205, column: 9, scope: !317)
!320 = !DILocation(line: 206, column: 13, scope: !321)
!321 = distinct !DILexicalBlock(scope: !239, file: !45, line: 206, column: 13)
!322 = !DILocation(line: 206, column: 26, scope: !321)
!323 = !DILocation(line: 206, column: 13, scope: !239)
!324 = !DILocation(line: 208, column: 26, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !45, line: 207, column: 9)
!326 = !DILocation(line: 208, column: 13, scope: !325)
!327 = !DILocation(line: 209, column: 9, scope: !325)
!328 = !DILocation(line: 217, column: 78, scope: !234)
!329 = !DILocation(line: 217, column: 5, scope: !234)
!330 = !DILocation(line: 218, column: 1, scope: !234)
!331 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51_good", scope: !45, file: !45, line: 220, type: !113, scopeLine: 221, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!332 = !DILocation(line: 222, column: 5, scope: !331)
!333 = !DILocation(line: 223, column: 5, scope: !331)
!334 = !DILocation(line: 224, column: 1, scope: !331)
!335 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_badSink", scope: !106, file: !106, line: 44, type: !336, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !23}
!338 = !DILocalVariable(name: "data", arg: 1, scope: !335, file: !106, line: 44, type: !23)
!339 = !DILocation(line: 44, column: 79, scope: !335)
!340 = !DILocalVariable(name: "i", scope: !341, file: !106, line: 47, type: !23)
!341 = distinct !DILexicalBlock(scope: !335, file: !106, line: 46, column: 5)
!342 = !DILocation(line: 47, column: 13, scope: !341)
!343 = !DILocalVariable(name: "buffer", scope: !341, file: !106, line: 48, type: !344)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 10)
!347 = !DILocation(line: 48, column: 13, scope: !341)
!348 = !DILocation(line: 51, column: 13, scope: !349)
!349 = distinct !DILexicalBlock(scope: !341, file: !106, line: 51, column: 13)
!350 = !DILocation(line: 51, column: 18, scope: !349)
!351 = !DILocation(line: 51, column: 13, scope: !341)
!352 = !DILocation(line: 53, column: 20, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !106, line: 52, column: 9)
!354 = !DILocation(line: 53, column: 13, scope: !353)
!355 = !DILocation(line: 53, column: 26, scope: !353)
!356 = !DILocation(line: 55, column: 19, scope: !357)
!357 = distinct !DILexicalBlock(scope: !353, file: !106, line: 55, column: 13)
!358 = !DILocation(line: 55, column: 17, scope: !357)
!359 = !DILocation(line: 55, column: 24, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !106, line: 55, column: 13)
!361 = !DILocation(line: 55, column: 26, scope: !360)
!362 = !DILocation(line: 55, column: 13, scope: !357)
!363 = !DILocation(line: 57, column: 37, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !106, line: 56, column: 13)
!365 = !DILocation(line: 57, column: 30, scope: !364)
!366 = !DILocation(line: 57, column: 17, scope: !364)
!367 = !DILocation(line: 58, column: 13, scope: !364)
!368 = !DILocation(line: 55, column: 33, scope: !360)
!369 = !DILocation(line: 55, column: 13, scope: !360)
!370 = distinct !{!370, !362, !371, !372}
!371 = !DILocation(line: 58, column: 13, scope: !357)
!372 = !{!"llvm.loop.mustprogress"}
!373 = !DILocation(line: 59, column: 9, scope: !353)
!374 = !DILocation(line: 62, column: 13, scope: !375)
!375 = distinct !DILexicalBlock(scope: !349, file: !106, line: 61, column: 9)
!376 = !DILocation(line: 65, column: 1, scope: !335)
!377 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_goodG2BSink", scope: !106, file: !106, line: 72, type: !336, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!378 = !DILocalVariable(name: "data", arg: 1, scope: !377, file: !106, line: 72, type: !23)
!379 = !DILocation(line: 72, column: 83, scope: !377)
!380 = !DILocalVariable(name: "i", scope: !381, file: !106, line: 75, type: !23)
!381 = distinct !DILexicalBlock(scope: !377, file: !106, line: 74, column: 5)
!382 = !DILocation(line: 75, column: 13, scope: !381)
!383 = !DILocalVariable(name: "buffer", scope: !381, file: !106, line: 76, type: !344)
!384 = !DILocation(line: 76, column: 13, scope: !381)
!385 = !DILocation(line: 79, column: 13, scope: !386)
!386 = distinct !DILexicalBlock(scope: !381, file: !106, line: 79, column: 13)
!387 = !DILocation(line: 79, column: 18, scope: !386)
!388 = !DILocation(line: 79, column: 13, scope: !381)
!389 = !DILocation(line: 81, column: 20, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !106, line: 80, column: 9)
!391 = !DILocation(line: 81, column: 13, scope: !390)
!392 = !DILocation(line: 81, column: 26, scope: !390)
!393 = !DILocation(line: 83, column: 19, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !106, line: 83, column: 13)
!395 = !DILocation(line: 83, column: 17, scope: !394)
!396 = !DILocation(line: 83, column: 24, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !106, line: 83, column: 13)
!398 = !DILocation(line: 83, column: 26, scope: !397)
!399 = !DILocation(line: 83, column: 13, scope: !394)
!400 = !DILocation(line: 85, column: 37, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !106, line: 84, column: 13)
!402 = !DILocation(line: 85, column: 30, scope: !401)
!403 = !DILocation(line: 85, column: 17, scope: !401)
!404 = !DILocation(line: 86, column: 13, scope: !401)
!405 = !DILocation(line: 83, column: 33, scope: !397)
!406 = !DILocation(line: 83, column: 13, scope: !397)
!407 = distinct !{!407, !399, !408, !372}
!408 = !DILocation(line: 86, column: 13, scope: !394)
!409 = !DILocation(line: 87, column: 9, scope: !390)
!410 = !DILocation(line: 90, column: 13, scope: !411)
!411 = distinct !DILexicalBlock(scope: !386, file: !106, line: 89, column: 9)
!412 = !DILocation(line: 93, column: 1, scope: !377)
!413 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_goodB2GSink", scope: !106, file: !106, line: 96, type: !336, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!414 = !DILocalVariable(name: "data", arg: 1, scope: !413, file: !106, line: 96, type: !23)
!415 = !DILocation(line: 96, column: 83, scope: !413)
!416 = !DILocalVariable(name: "i", scope: !417, file: !106, line: 99, type: !23)
!417 = distinct !DILexicalBlock(scope: !413, file: !106, line: 98, column: 5)
!418 = !DILocation(line: 99, column: 13, scope: !417)
!419 = !DILocalVariable(name: "buffer", scope: !417, file: !106, line: 100, type: !344)
!420 = !DILocation(line: 100, column: 13, scope: !417)
!421 = !DILocation(line: 102, column: 13, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !106, line: 102, column: 13)
!423 = !DILocation(line: 102, column: 18, scope: !422)
!424 = !DILocation(line: 102, column: 23, scope: !422)
!425 = !DILocation(line: 102, column: 26, scope: !422)
!426 = !DILocation(line: 102, column: 31, scope: !422)
!427 = !DILocation(line: 102, column: 13, scope: !417)
!428 = !DILocation(line: 104, column: 20, scope: !429)
!429 = distinct !DILexicalBlock(scope: !422, file: !106, line: 103, column: 9)
!430 = !DILocation(line: 104, column: 13, scope: !429)
!431 = !DILocation(line: 104, column: 26, scope: !429)
!432 = !DILocation(line: 106, column: 19, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !106, line: 106, column: 13)
!434 = !DILocation(line: 106, column: 17, scope: !433)
!435 = !DILocation(line: 106, column: 24, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !106, line: 106, column: 13)
!437 = !DILocation(line: 106, column: 26, scope: !436)
!438 = !DILocation(line: 106, column: 13, scope: !433)
!439 = !DILocation(line: 108, column: 37, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !106, line: 107, column: 13)
!441 = !DILocation(line: 108, column: 30, scope: !440)
!442 = !DILocation(line: 108, column: 17, scope: !440)
!443 = !DILocation(line: 109, column: 13, scope: !440)
!444 = !DILocation(line: 106, column: 33, scope: !436)
!445 = !DILocation(line: 106, column: 13, scope: !436)
!446 = distinct !{!446, !438, !447, !372}
!447 = !DILocation(line: 109, column: 13, scope: !433)
!448 = !DILocation(line: 110, column: 9, scope: !429)
!449 = !DILocation(line: 113, column: 13, scope: !450)
!450 = distinct !DILexicalBlock(scope: !422, file: !106, line: 112, column: 9)
!451 = !DILocation(line: 116, column: 1, scope: !413)
!452 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !453, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !42}
!455 = !DILocalVariable(name: "line", arg: 1, scope: !452, file: !3, line: 11, type: !42)
!456 = !DILocation(line: 11, column: 25, scope: !452)
!457 = !DILocation(line: 13, column: 1, scope: !452)
!458 = !DILocation(line: 14, column: 8, scope: !459)
!459 = distinct !DILexicalBlock(scope: !452, file: !3, line: 14, column: 8)
!460 = !DILocation(line: 14, column: 13, scope: !459)
!461 = !DILocation(line: 14, column: 8, scope: !452)
!462 = !DILocation(line: 16, column: 24, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !3, line: 15, column: 5)
!464 = !DILocation(line: 16, column: 9, scope: !463)
!465 = !DILocation(line: 17, column: 5, scope: !463)
!466 = !DILocation(line: 18, column: 5, scope: !452)
!467 = !DILocation(line: 19, column: 1, scope: !452)
!468 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !453, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!469 = !DILocalVariable(name: "line", arg: 1, scope: !468, file: !3, line: 20, type: !42)
!470 = !DILocation(line: 20, column: 29, scope: !468)
!471 = !DILocation(line: 22, column: 8, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !3, line: 22, column: 8)
!473 = !DILocation(line: 22, column: 13, scope: !472)
!474 = !DILocation(line: 22, column: 8, scope: !468)
!475 = !DILocation(line: 24, column: 24, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !3, line: 23, column: 5)
!477 = !DILocation(line: 24, column: 9, scope: !476)
!478 = !DILocation(line: 25, column: 5, scope: !476)
!479 = !DILocation(line: 26, column: 1, scope: !468)
!480 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !481, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !485, line: 74, baseType: !23)
!485 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!486 = !DILocalVariable(name: "line", arg: 1, scope: !480, file: !3, line: 27, type: !483)
!487 = !DILocation(line: 27, column: 29, scope: !480)
!488 = !DILocation(line: 29, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !480, file: !3, line: 29, column: 8)
!490 = !DILocation(line: 29, column: 13, scope: !489)
!491 = !DILocation(line: 29, column: 8, scope: !480)
!492 = !DILocation(line: 31, column: 27, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !3, line: 30, column: 5)
!494 = !DILocation(line: 31, column: 9, scope: !493)
!495 = !DILocation(line: 32, column: 5, scope: !493)
!496 = !DILocation(line: 33, column: 1, scope: !480)
!497 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !336, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!498 = !DILocalVariable(name: "intNumber", arg: 1, scope: !497, file: !3, line: 35, type: !23)
!499 = !DILocation(line: 35, column: 24, scope: !497)
!500 = !DILocation(line: 37, column: 20, scope: !497)
!501 = !DILocation(line: 37, column: 5, scope: !497)
!502 = !DILocation(line: 38, column: 1, scope: !497)
!503 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !504, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !506}
!506 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!507 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !503, file: !3, line: 40, type: !506)
!508 = !DILocation(line: 40, column: 28, scope: !503)
!509 = !DILocation(line: 42, column: 21, scope: !503)
!510 = !DILocation(line: 42, column: 5, scope: !503)
!511 = !DILocation(line: 43, column: 1, scope: !503)
!512 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !513, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !515}
!515 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!516 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !512, file: !3, line: 45, type: !515)
!517 = !DILocation(line: 45, column: 28, scope: !512)
!518 = !DILocation(line: 47, column: 20, scope: !512)
!519 = !DILocation(line: 47, column: 5, scope: !512)
!520 = !DILocation(line: 48, column: 1, scope: !512)
!521 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !522, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !524}
!524 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!525 = !DILocalVariable(name: "longNumber", arg: 1, scope: !521, file: !3, line: 50, type: !524)
!526 = !DILocation(line: 50, column: 26, scope: !521)
!527 = !DILocation(line: 52, column: 21, scope: !521)
!528 = !DILocation(line: 52, column: 5, scope: !521)
!529 = !DILocation(line: 53, column: 1, scope: !521)
!530 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !531, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !533}
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !534, line: 27, baseType: !535)
!534 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !524)
!536 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !530, file: !3, line: 55, type: !533)
!537 = !DILocation(line: 55, column: 33, scope: !530)
!538 = !DILocation(line: 57, column: 29, scope: !530)
!539 = !DILocation(line: 57, column: 5, scope: !530)
!540 = !DILocation(line: 58, column: 1, scope: !530)
!541 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !542, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !544}
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !485, line: 46, baseType: !545)
!545 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!546 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !541, file: !3, line: 60, type: !544)
!547 = !DILocation(line: 60, column: 29, scope: !541)
!548 = !DILocation(line: 62, column: 21, scope: !541)
!549 = !DILocation(line: 62, column: 5, scope: !541)
!550 = !DILocation(line: 63, column: 1, scope: !541)
!551 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !552, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !43}
!554 = !DILocalVariable(name: "charHex", arg: 1, scope: !551, file: !3, line: 65, type: !43)
!555 = !DILocation(line: 65, column: 29, scope: !551)
!556 = !DILocation(line: 67, column: 22, scope: !551)
!557 = !DILocation(line: 67, column: 5, scope: !551)
!558 = !DILocation(line: 68, column: 1, scope: !551)
!559 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !560, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !484}
!562 = !DILocalVariable(name: "wideChar", arg: 1, scope: !559, file: !3, line: 70, type: !484)
!563 = !DILocation(line: 70, column: 29, scope: !559)
!564 = !DILocalVariable(name: "s", scope: !559, file: !3, line: 74, type: !565)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 64, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 2)
!568 = !DILocation(line: 74, column: 13, scope: !559)
!569 = !DILocation(line: 75, column: 16, scope: !559)
!570 = !DILocation(line: 75, column: 9, scope: !559)
!571 = !DILocation(line: 75, column: 14, scope: !559)
!572 = !DILocation(line: 76, column: 9, scope: !559)
!573 = !DILocation(line: 76, column: 14, scope: !559)
!574 = !DILocation(line: 77, column: 21, scope: !559)
!575 = !DILocation(line: 77, column: 5, scope: !559)
!576 = !DILocation(line: 78, column: 1, scope: !559)
!577 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !578, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !7}
!580 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !577, file: !3, line: 80, type: !7)
!581 = !DILocation(line: 80, column: 33, scope: !577)
!582 = !DILocation(line: 82, column: 20, scope: !577)
!583 = !DILocation(line: 82, column: 5, scope: !577)
!584 = !DILocation(line: 83, column: 1, scope: !577)
!585 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !586, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !25}
!588 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !585, file: !3, line: 85, type: !25)
!589 = !DILocation(line: 85, column: 45, scope: !585)
!590 = !DILocation(line: 87, column: 22, scope: !585)
!591 = !DILocation(line: 87, column: 5, scope: !585)
!592 = !DILocation(line: 88, column: 1, scope: !585)
!593 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !594, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !596}
!596 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!597 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !593, file: !3, line: 90, type: !596)
!598 = !DILocation(line: 90, column: 29, scope: !593)
!599 = !DILocation(line: 92, column: 20, scope: !593)
!600 = !DILocation(line: 92, column: 5, scope: !593)
!601 = !DILocation(line: 93, column: 1, scope: !593)
!602 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !603, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !607, line: 100, baseType: !608)
!607 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_737/source_code")
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !607, line: 96, size: 64, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !608, file: !607, line: 98, baseType: !23, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !608, file: !607, line: 99, baseType: !23, size: 32, offset: 32)
!612 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !602, file: !3, line: 95, type: !605)
!613 = !DILocation(line: 95, column: 40, scope: !602)
!614 = !DILocation(line: 97, column: 26, scope: !602)
!615 = !DILocation(line: 97, column: 47, scope: !602)
!616 = !DILocation(line: 97, column: 55, scope: !602)
!617 = !DILocation(line: 97, column: 76, scope: !602)
!618 = !DILocation(line: 97, column: 5, scope: !602)
!619 = !DILocation(line: 98, column: 1, scope: !602)
!620 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !621, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !623, !544}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!624 = !DILocalVariable(name: "bytes", arg: 1, scope: !620, file: !3, line: 100, type: !623)
!625 = !DILocation(line: 100, column: 38, scope: !620)
!626 = !DILocalVariable(name: "numBytes", arg: 2, scope: !620, file: !3, line: 100, type: !544)
!627 = !DILocation(line: 100, column: 52, scope: !620)
!628 = !DILocalVariable(name: "i", scope: !620, file: !3, line: 102, type: !544)
!629 = !DILocation(line: 102, column: 12, scope: !620)
!630 = !DILocation(line: 103, column: 12, scope: !631)
!631 = distinct !DILexicalBlock(scope: !620, file: !3, line: 103, column: 5)
!632 = !DILocation(line: 103, column: 10, scope: !631)
!633 = !DILocation(line: 103, column: 17, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !3, line: 103, column: 5)
!635 = !DILocation(line: 103, column: 21, scope: !634)
!636 = !DILocation(line: 103, column: 19, scope: !634)
!637 = !DILocation(line: 103, column: 5, scope: !631)
!638 = !DILocation(line: 105, column: 24, scope: !639)
!639 = distinct !DILexicalBlock(scope: !634, file: !3, line: 104, column: 5)
!640 = !DILocation(line: 105, column: 30, scope: !639)
!641 = !DILocation(line: 105, column: 9, scope: !639)
!642 = !DILocation(line: 106, column: 5, scope: !639)
!643 = !DILocation(line: 103, column: 31, scope: !634)
!644 = !DILocation(line: 103, column: 5, scope: !634)
!645 = distinct !{!645, !637, !646, !372}
!646 = !DILocation(line: 106, column: 5, scope: !631)
!647 = !DILocation(line: 107, column: 5, scope: !620)
!648 = !DILocation(line: 108, column: 1, scope: !620)
!649 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !650, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!650 = !DISubroutineType(types: !651)
!651 = !{!544, !623, !544, !42}
!652 = !DILocalVariable(name: "bytes", arg: 1, scope: !649, file: !3, line: 113, type: !623)
!653 = !DILocation(line: 113, column: 39, scope: !649)
!654 = !DILocalVariable(name: "numBytes", arg: 2, scope: !649, file: !3, line: 113, type: !544)
!655 = !DILocation(line: 113, column: 53, scope: !649)
!656 = !DILocalVariable(name: "hex", arg: 3, scope: !649, file: !3, line: 113, type: !42)
!657 = !DILocation(line: 113, column: 71, scope: !649)
!658 = !DILocalVariable(name: "numWritten", scope: !649, file: !3, line: 115, type: !544)
!659 = !DILocation(line: 115, column: 12, scope: !649)
!660 = !DILocation(line: 121, column: 5, scope: !649)
!661 = !DILocation(line: 121, column: 12, scope: !649)
!662 = !DILocation(line: 121, column: 25, scope: !649)
!663 = !DILocation(line: 121, column: 23, scope: !649)
!664 = !DILocation(line: 121, column: 34, scope: !649)
!665 = !DILocation(line: 121, column: 37, scope: !649)
!666 = !DILocation(line: 121, column: 67, scope: !649)
!667 = !DILocation(line: 121, column: 70, scope: !649)
!668 = !DILocation(line: 0, scope: !649)
!669 = !DILocalVariable(name: "byte", scope: !670, file: !3, line: 123, type: !23)
!670 = distinct !DILexicalBlock(scope: !649, file: !3, line: 122, column: 5)
!671 = !DILocation(line: 123, column: 13, scope: !670)
!672 = !DILocation(line: 124, column: 17, scope: !670)
!673 = !DILocation(line: 124, column: 25, scope: !670)
!674 = !DILocation(line: 124, column: 23, scope: !670)
!675 = !DILocation(line: 124, column: 9, scope: !670)
!676 = !DILocation(line: 125, column: 45, scope: !670)
!677 = !DILocation(line: 125, column: 29, scope: !670)
!678 = !DILocation(line: 125, column: 9, scope: !670)
!679 = !DILocation(line: 125, column: 15, scope: !670)
!680 = !DILocation(line: 125, column: 27, scope: !670)
!681 = !DILocation(line: 126, column: 9, scope: !670)
!682 = distinct !{!682, !660, !683, !372}
!683 = !DILocation(line: 127, column: 5, scope: !649)
!684 = !DILocation(line: 129, column: 12, scope: !649)
!685 = !DILocation(line: 129, column: 5, scope: !649)
!686 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !687, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!687 = !DISubroutineType(types: !688)
!688 = !{!544, !623, !544, !483}
!689 = !DILocalVariable(name: "bytes", arg: 1, scope: !686, file: !3, line: 135, type: !623)
!690 = !DILocation(line: 135, column: 41, scope: !686)
!691 = !DILocalVariable(name: "numBytes", arg: 2, scope: !686, file: !3, line: 135, type: !544)
!692 = !DILocation(line: 135, column: 55, scope: !686)
!693 = !DILocalVariable(name: "hex", arg: 3, scope: !686, file: !3, line: 135, type: !483)
!694 = !DILocation(line: 135, column: 76, scope: !686)
!695 = !DILocalVariable(name: "numWritten", scope: !686, file: !3, line: 137, type: !544)
!696 = !DILocation(line: 137, column: 12, scope: !686)
!697 = !DILocation(line: 143, column: 5, scope: !686)
!698 = !DILocation(line: 143, column: 12, scope: !686)
!699 = !DILocation(line: 143, column: 25, scope: !686)
!700 = !DILocation(line: 143, column: 23, scope: !686)
!701 = !DILocation(line: 143, column: 34, scope: !686)
!702 = !DILocation(line: 143, column: 47, scope: !686)
!703 = !DILocation(line: 143, column: 55, scope: !686)
!704 = !DILocation(line: 143, column: 53, scope: !686)
!705 = !DILocation(line: 143, column: 37, scope: !686)
!706 = !DILocation(line: 143, column: 68, scope: !686)
!707 = !DILocation(line: 143, column: 81, scope: !686)
!708 = !DILocation(line: 143, column: 89, scope: !686)
!709 = !DILocation(line: 143, column: 87, scope: !686)
!710 = !DILocation(line: 143, column: 100, scope: !686)
!711 = !DILocation(line: 143, column: 71, scope: !686)
!712 = !DILocation(line: 0, scope: !686)
!713 = !DILocalVariable(name: "byte", scope: !714, file: !3, line: 145, type: !23)
!714 = distinct !DILexicalBlock(scope: !686, file: !3, line: 144, column: 5)
!715 = !DILocation(line: 145, column: 13, scope: !714)
!716 = !DILocation(line: 146, column: 18, scope: !714)
!717 = !DILocation(line: 146, column: 26, scope: !714)
!718 = !DILocation(line: 146, column: 24, scope: !714)
!719 = !DILocation(line: 146, column: 9, scope: !714)
!720 = !DILocation(line: 147, column: 45, scope: !714)
!721 = !DILocation(line: 147, column: 29, scope: !714)
!722 = !DILocation(line: 147, column: 9, scope: !714)
!723 = !DILocation(line: 147, column: 15, scope: !714)
!724 = !DILocation(line: 147, column: 27, scope: !714)
!725 = !DILocation(line: 148, column: 9, scope: !714)
!726 = distinct !{!726, !697, !727, !372}
!727 = !DILocation(line: 149, column: 5, scope: !686)
!728 = !DILocation(line: 151, column: 12, scope: !686)
!729 = !DILocation(line: 151, column: 5, scope: !686)
!730 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !731, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!731 = !DISubroutineType(types: !732)
!732 = !{!23}
!733 = !DILocation(line: 158, column: 5, scope: !730)
!734 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !731, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!735 = !DILocation(line: 163, column: 5, scope: !734)
!736 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !731, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!737 = !DILocation(line: 168, column: 13, scope: !736)
!738 = !DILocation(line: 168, column: 20, scope: !736)
!739 = !DILocation(line: 168, column: 5, scope: !736)
!740 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !113, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!741 = !DILocation(line: 187, column: 16, scope: !740)
!742 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !113, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!743 = !DILocation(line: 188, column: 16, scope: !742)
!744 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !113, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!745 = !DILocation(line: 189, column: 16, scope: !744)
!746 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !113, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!747 = !DILocation(line: 190, column: 16, scope: !746)
!748 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !113, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!749 = !DILocation(line: 191, column: 16, scope: !748)
!750 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !113, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!751 = !DILocation(line: 192, column: 16, scope: !750)
!752 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !113, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!753 = !DILocation(line: 193, column: 16, scope: !752)
!754 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !113, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!755 = !DILocation(line: 194, column: 16, scope: !754)
!756 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !113, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!757 = !DILocation(line: 195, column: 16, scope: !756)
!758 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !113, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!759 = !DILocation(line: 198, column: 15, scope: !758)
!760 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !113, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!761 = !DILocation(line: 199, column: 15, scope: !760)
!762 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !113, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!763 = !DILocation(line: 200, column: 15, scope: !762)
!764 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !113, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!765 = !DILocation(line: 201, column: 15, scope: !764)
!766 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !113, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!767 = !DILocation(line: 202, column: 15, scope: !766)
!768 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !113, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!769 = !DILocation(line: 203, column: 15, scope: !768)
!770 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !113, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!771 = !DILocation(line: 204, column: 15, scope: !770)
!772 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !113, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!773 = !DILocation(line: 205, column: 15, scope: !772)
!774 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !113, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!775 = !DILocation(line: 206, column: 15, scope: !774)
