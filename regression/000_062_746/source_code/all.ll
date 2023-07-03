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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66_bad() #0 !dbg !112 {
entry:
  %data = alloca i32, align 4
  %dataArray = alloca [5 x i32], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata [5 x i32]* %dataArray, metadata !117, metadata !DIExpression()), !dbg !121
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
  %15 = load i32, i32* %data, align 4, !dbg !228
  %arrayidx33 = getelementptr inbounds [5 x i32], [5 x i32]* %dataArray, i64 0, i64 2, !dbg !229
  store i32 %15, i32* %arrayidx33, align 8, !dbg !230
  %arraydecay34 = getelementptr inbounds [5 x i32], [5 x i32]* %dataArray, i64 0, i64 0, !dbg !231
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_badSink(i32* %arraydecay34), !dbg !232
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
  %dataArray = alloca [5 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata [5 x i32]* %dataArray, metadata !237, metadata !DIExpression()), !dbg !238
  store i32 -1, i32* %data, align 4, !dbg !239
  store i32 7, i32* %data, align 4, !dbg !240
  %0 = load i32, i32* %data, align 4, !dbg !241
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %dataArray, i64 0, i64 2, !dbg !242
  store i32 %0, i32* %arrayidx, align 8, !dbg !243
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %dataArray, i64 0, i64 0, !dbg !244
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodG2BSink(i32* %arraydecay), !dbg !245
  ret void, !dbg !246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !247 {
entry:
  %data = alloca i32, align 4
  %dataArray = alloca [5 x i32], align 16
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata [5 x i32]* %dataArray, metadata !250, metadata !DIExpression()), !dbg !251
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
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !278
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
  %arrayidx33 = getelementptr inbounds [5 x i32], [5 x i32]* %dataArray, i64 0, i64 2, !dbg !344
  store i32 %15, i32* %arrayidx33, align 8, !dbg !345
  %arraydecay34 = getelementptr inbounds [5 x i32], [5 x i32]* %dataArray, i64 0, i64 0, !dbg !346
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink(i32* %arraydecay34), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66_good() #0 !dbg !349 {
entry:
  call void @goodG2B(), !dbg !350
  call void @goodB2G(), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_badSink(i32* %dataArray) #0 !dbg !353 {
entry:
  %dataArray.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataArray, i32** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataArray.addr, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata i32* %data, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = load i32*, i32** %dataArray.addr, align 8, !dbg !361
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 2, !dbg !361
  %1 = load i32, i32* %arrayidx, align 4, !dbg !361
  store i32 %1, i32* %data, align 4, !dbg !360
  call void @llvm.dbg.declare(metadata i32* %i, metadata !362, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !365, metadata !DIExpression()), !dbg !369
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !369
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !369
  %3 = load i32, i32* %data, align 4, !dbg !370
  %cmp = icmp sge i32 %3, 0, !dbg !372
  br i1 %cmp, label %if.then, label %if.else, !dbg !373

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !374
  %idxprom = sext i32 %4 to i64, !dbg !376
  %arrayidx1 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !376
  store i32 1, i32* %arrayidx1, align 4, !dbg !377
  store i32 0, i32* %i, align 4, !dbg !378
  br label %for.cond, !dbg !380

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !381
  %cmp2 = icmp slt i32 %5, 10, !dbg !383
  br i1 %cmp2, label %for.body, label %for.end, !dbg !384

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !385
  %idxprom3 = sext i32 %6 to i64, !dbg !387
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !387
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !387
  call void @printIntLine(i32 %7), !dbg !388
  br label %for.inc, !dbg !389

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !390
  %inc = add nsw i32 %8, 1, !dbg !390
  store i32 %inc, i32* %i, align 4, !dbg !390
  br label %for.cond, !dbg !391, !llvm.loop !392

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !395

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !396
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !398
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodG2BSink(i32* %dataArray) #0 !dbg !399 {
entry:
  %dataArray.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataArray, i32** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataArray.addr, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata i32* %data, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load i32*, i32** %dataArray.addr, align 8, !dbg !404
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 2, !dbg !404
  %1 = load i32, i32* %arrayidx, align 4, !dbg !404
  store i32 %1, i32* %data, align 4, !dbg !403
  call void @llvm.dbg.declare(metadata i32* %i, metadata !405, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !408, metadata !DIExpression()), !dbg !409
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !409
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !409
  %3 = load i32, i32* %data, align 4, !dbg !410
  %cmp = icmp sge i32 %3, 0, !dbg !412
  br i1 %cmp, label %if.then, label %if.else, !dbg !413

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !414
  %idxprom = sext i32 %4 to i64, !dbg !416
  %arrayidx1 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !416
  store i32 1, i32* %arrayidx1, align 4, !dbg !417
  store i32 0, i32* %i, align 4, !dbg !418
  br label %for.cond, !dbg !420

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !421
  %cmp2 = icmp slt i32 %5, 10, !dbg !423
  br i1 %cmp2, label %for.body, label %for.end, !dbg !424

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !425
  %idxprom3 = sext i32 %6 to i64, !dbg !427
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !427
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !427
  call void @printIntLine(i32 %7), !dbg !428
  br label %for.inc, !dbg !429

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !430
  %inc = add nsw i32 %8, 1, !dbg !430
  store i32 %inc, i32* %i, align 4, !dbg !430
  br label %for.cond, !dbg !431, !llvm.loop !432

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !434

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !435
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !437
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink(i32* %dataArray) #0 !dbg !438 {
entry:
  %dataArray.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataArray, i32** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataArray.addr, metadata !439, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.declare(metadata i32* %data, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = load i32*, i32** %dataArray.addr, align 8, !dbg !443
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 2, !dbg !443
  %1 = load i32, i32* %arrayidx, align 4, !dbg !443
  store i32 %1, i32* %data, align 4, !dbg !442
  call void @llvm.dbg.declare(metadata i32* %i, metadata !444, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !447, metadata !DIExpression()), !dbg !448
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !448
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !448
  %3 = load i32, i32* %data, align 4, !dbg !449
  %cmp = icmp sge i32 %3, 0, !dbg !451
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !452

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !453
  %cmp1 = icmp slt i32 %4, 10, !dbg !454
  br i1 %cmp1, label %if.then, label %if.else, !dbg !455

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !456
  %idxprom = sext i32 %5 to i64, !dbg !458
  %arrayidx2 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !458
  store i32 1, i32* %arrayidx2, align 4, !dbg !459
  store i32 0, i32* %i, align 4, !dbg !460
  br label %for.cond, !dbg !462

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !463
  %cmp3 = icmp slt i32 %6, 10, !dbg !465
  br i1 %cmp3, label %for.body, label %for.end, !dbg !466

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !467
  %idxprom4 = sext i32 %7 to i64, !dbg !469
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !469
  %8 = load i32, i32* %arrayidx5, align 4, !dbg !469
  call void @printIntLine(i32 %8), !dbg !470
  br label %for.inc, !dbg !471

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !472
  %inc = add nsw i32 %9, 1, !dbg !472
  store i32 %inc, i32* %i, align 4, !dbg !472
  br label %for.cond, !dbg !473, !llvm.loop !474

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !476

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !477
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !480 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !483, metadata !DIExpression()), !dbg !484
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !dbg !485
  %0 = load i8*, i8** %line.addr, align 8, !dbg !486
  %cmp = icmp ne i8* %0, null, !dbg !488
  br i1 %cmp, label %if.then, label %if.end, !dbg !489

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !490
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !492
  br label %if.end, !dbg !493

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !494
  ret void, !dbg !495
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !496 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load i8*, i8** %line.addr, align 8, !dbg !499
  %cmp = icmp ne i8* %0, null, !dbg !501
  br i1 %cmp, label %if.then, label %if.end, !dbg !502

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !503
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.10, i64 0, i64 0), i8* %1), !dbg !505
  br label %if.end, !dbg !506

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !508 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !514, metadata !DIExpression()), !dbg !515
  %0 = load i32*, i32** %line.addr, align 8, !dbg !516
  %cmp = icmp ne i32* %0, null, !dbg !518
  br i1 %cmp, label %if.then, label %if.end, !dbg !519

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !520
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !522
  br label %if.end, !dbg !523

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !524
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !525 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !528, metadata !DIExpression()), !dbg !529
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !530
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !533 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !537, metadata !DIExpression()), !dbg !538
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !539
  %conv = sext i16 %0 to i32, !dbg !539
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !540
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !542 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !546, metadata !DIExpression()), !dbg !547
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !548
  %conv = fpext float %0 to double, !dbg !548
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !549
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !551 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !555, metadata !DIExpression()), !dbg !556
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !557
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !558
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !560 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !566, metadata !DIExpression()), !dbg !567
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !568
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !569
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !571 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !576, metadata !DIExpression()), !dbg !577
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !578
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !579
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !581 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !584, metadata !DIExpression()), !dbg !585
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !586
  %conv = sext i8 %0 to i32, !dbg !586
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !587
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !589 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !592, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !594, metadata !DIExpression()), !dbg !598
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !599
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !600
  store i32 %0, i32* %arrayidx, align 4, !dbg !601
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !602
  store i32 0, i32* %arrayidx1, align 4, !dbg !603
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !604
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !605
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !607 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !610, metadata !DIExpression()), !dbg !611
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !612
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !613
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !615 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !618, metadata !DIExpression()), !dbg !619
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !620
  %conv = zext i8 %0 to i32, !dbg !620
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.13, i64 0, i64 0), i32 %conv), !dbg !621
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !623 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !627, metadata !DIExpression()), !dbg !628
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !629
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !630
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !632 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !642, metadata !DIExpression()), !dbg !643
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !644
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !645
  %1 = load i32, i32* %intOne, align 4, !dbg !645
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !646
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !647
  %3 = load i32, i32* %intTwo, align 4, !dbg !647
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !648
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !650 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !654, metadata !DIExpression()), !dbg !655
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !656, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.declare(metadata i64* %i, metadata !658, metadata !DIExpression()), !dbg !659
  store i64 0, i64* %i, align 8, !dbg !660
  br label %for.cond, !dbg !662

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !663
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !665
  %cmp = icmp ult i64 %0, %1, !dbg !666
  br i1 %cmp, label %for.body, label %for.end, !dbg !667

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !668
  %3 = load i64, i64* %i, align 8, !dbg !670
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !668
  %4 = load i8, i8* %arrayidx, align 1, !dbg !668
  %conv = zext i8 %4 to i32, !dbg !668
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !671
  br label %for.inc, !dbg !672

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !673
  %inc = add i64 %5, 1, !dbg !673
  store i64 %inc, i64* %i, align 8, !dbg !673
  br label %for.cond, !dbg !674, !llvm.loop !675

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !677
  ret void, !dbg !678
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !679 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !682, metadata !DIExpression()), !dbg !683
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !684, metadata !DIExpression()), !dbg !685
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !686, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !688, metadata !DIExpression()), !dbg !689
  store i64 0, i64* %numWritten, align 8, !dbg !689
  br label %while.cond, !dbg !690

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !691
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !692
  %cmp = icmp ult i64 %0, %1, !dbg !693
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !694

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !695
  %2 = load i16*, i16** %call, align 8, !dbg !695
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !695
  %4 = load i64, i64* %numWritten, align 8, !dbg !695
  %mul = mul i64 2, %4, !dbg !695
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !695
  %5 = load i8, i8* %arrayidx, align 1, !dbg !695
  %conv = sext i8 %5 to i32, !dbg !695
  %idxprom = sext i32 %conv to i64, !dbg !695
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !695
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !695
  %conv2 = zext i16 %6 to i32, !dbg !695
  %and = and i32 %conv2, 4096, !dbg !695
  %tobool = icmp ne i32 %and, 0, !dbg !695
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !696

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !697
  %7 = load i16*, i16** %call3, align 8, !dbg !697
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !697
  %9 = load i64, i64* %numWritten, align 8, !dbg !697
  %mul4 = mul i64 2, %9, !dbg !697
  %add = add i64 %mul4, 1, !dbg !697
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !697
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !697
  %conv6 = sext i8 %10 to i32, !dbg !697
  %idxprom7 = sext i32 %conv6 to i64, !dbg !697
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !697
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !697
  %conv9 = zext i16 %11 to i32, !dbg !697
  %and10 = and i32 %conv9, 4096, !dbg !697
  %tobool11 = icmp ne i32 %and10, 0, !dbg !696
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !698
  br i1 %12, label %while.body, label %while.end, !dbg !690

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !699, metadata !DIExpression()), !dbg !701
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !702
  %14 = load i64, i64* %numWritten, align 8, !dbg !703
  %mul12 = mul i64 2, %14, !dbg !704
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !702
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !705
  %15 = load i32, i32* %byte, align 4, !dbg !706
  %conv15 = trunc i32 %15 to i8, !dbg !707
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !708
  %17 = load i64, i64* %numWritten, align 8, !dbg !709
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !708
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !710
  %18 = load i64, i64* %numWritten, align 8, !dbg !711
  %inc = add i64 %18, 1, !dbg !711
  store i64 %inc, i64* %numWritten, align 8, !dbg !711
  br label %while.cond, !dbg !690, !llvm.loop !712

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !714
  ret i64 %19, !dbg !715
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !716 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !719, metadata !DIExpression()), !dbg !720
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !721, metadata !DIExpression()), !dbg !722
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !723, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !725, metadata !DIExpression()), !dbg !726
  store i64 0, i64* %numWritten, align 8, !dbg !726
  br label %while.cond, !dbg !727

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !728
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !729
  %cmp = icmp ult i64 %0, %1, !dbg !730
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !731

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !732
  %3 = load i64, i64* %numWritten, align 8, !dbg !733
  %mul = mul i64 2, %3, !dbg !734
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !732
  %4 = load i32, i32* %arrayidx, align 4, !dbg !732
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !735
  %tobool = icmp ne i32 %call, 0, !dbg !735
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !736

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !737
  %6 = load i64, i64* %numWritten, align 8, !dbg !738
  %mul1 = mul i64 2, %6, !dbg !739
  %add = add i64 %mul1, 1, !dbg !740
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !737
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !737
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !741
  %tobool4 = icmp ne i32 %call3, 0, !dbg !736
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !742
  br i1 %8, label %while.body, label %while.end, !dbg !727

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !743, metadata !DIExpression()), !dbg !745
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !746
  %10 = load i64, i64* %numWritten, align 8, !dbg !747
  %mul5 = mul i64 2, %10, !dbg !748
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !746
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !749
  %11 = load i32, i32* %byte, align 4, !dbg !750
  %conv = trunc i32 %11 to i8, !dbg !751
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !752
  %13 = load i64, i64* %numWritten, align 8, !dbg !753
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !752
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !754
  %14 = load i64, i64* %numWritten, align 8, !dbg !755
  %inc = add i64 %14, 1, !dbg !755
  store i64 %inc, i64* %numWritten, align 8, !dbg !755
  br label %while.cond, !dbg !727, !llvm.loop !756

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !758
  ret i64 %15, !dbg !759
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !760 {
entry:
  ret i32 1, !dbg !763
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !764 {
entry:
  ret i32 0, !dbg !765
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !766 {
entry:
  %call = call i32 @rand() #7, !dbg !767
  %rem = srem i32 %call, 2, !dbg !768
  ret i32 %rem, !dbg !769
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !770 {
entry:
  ret void, !dbg !771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !772 {
entry:
  ret void, !dbg !773
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !774 {
entry:
  ret void, !dbg !775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !776 {
entry:
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !778 {
entry:
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !780 {
entry:
  ret void, !dbg !781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !782 {
entry:
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !784 {
entry:
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !786 {
entry:
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !788 {
entry:
  ret void, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !790 {
entry:
  ret void, !dbg !791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !792 {
entry:
  ret void, !dbg !793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !794 {
entry:
  ret void, !dbg !795
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !796 {
entry:
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !798 {
entry:
  ret void, !dbg !799
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !800 {
entry:
  ret void, !dbg !801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !802 {
entry:
  ret void, !dbg !803
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !804 {
entry:
  ret void, !dbg !805
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_746/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_746/source_code")
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
!106 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_746/source_code")
!107 = !{}
!108 = !{!"clang version 12.0.0"}
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66_bad", scope: !45, file: !45, line: 47, type: !113, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!113 = !DISubroutineType(types: !114)
!114 = !{null}
!115 = !DILocalVariable(name: "data", scope: !112, file: !45, line: 49, type: !23)
!116 = !DILocation(line: 49, column: 9, scope: !112)
!117 = !DILocalVariable(name: "dataArray", scope: !112, file: !45, line: 50, type: !118)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 5)
!121 = !DILocation(line: 50, column: 9, scope: !112)
!122 = !DILocation(line: 52, column: 10, scope: !112)
!123 = !DILocalVariable(name: "recvResult", scope: !124, file: !45, line: 58, type: !23)
!124 = distinct !DILexicalBlock(scope: !112, file: !45, line: 53, column: 5)
!125 = !DILocation(line: 58, column: 13, scope: !124)
!126 = !DILocalVariable(name: "service", scope: !124, file: !45, line: 59, type: !127)
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
!142 = !DILocation(line: 59, column: 28, scope: !124)
!143 = !DILocalVariable(name: "listenSocket", scope: !124, file: !45, line: 60, type: !23)
!144 = !DILocation(line: 60, column: 16, scope: !124)
!145 = !DILocalVariable(name: "acceptSocket", scope: !124, file: !45, line: 61, type: !23)
!146 = !DILocation(line: 61, column: 16, scope: !124)
!147 = !DILocalVariable(name: "inputBuffer", scope: !124, file: !45, line: 62, type: !102)
!148 = !DILocation(line: 62, column: 14, scope: !124)
!149 = !DILocation(line: 63, column: 9, scope: !124)
!150 = !DILocation(line: 73, column: 28, scope: !151)
!151 = distinct !DILexicalBlock(scope: !124, file: !45, line: 64, column: 9)
!152 = !DILocation(line: 73, column: 26, scope: !151)
!153 = !DILocation(line: 74, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !45, line: 74, column: 17)
!155 = !DILocation(line: 74, column: 30, scope: !154)
!156 = !DILocation(line: 74, column: 17, scope: !151)
!157 = !DILocation(line: 76, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !45, line: 75, column: 13)
!159 = !DILocation(line: 78, column: 13, scope: !151)
!160 = !DILocation(line: 79, column: 21, scope: !151)
!161 = !DILocation(line: 79, column: 32, scope: !151)
!162 = !DILocation(line: 80, column: 21, scope: !151)
!163 = !DILocation(line: 80, column: 30, scope: !151)
!164 = !DILocation(line: 80, column: 37, scope: !151)
!165 = !DILocation(line: 81, column: 32, scope: !151)
!166 = !DILocation(line: 81, column: 21, scope: !151)
!167 = !DILocation(line: 81, column: 30, scope: !151)
!168 = !DILocation(line: 82, column: 22, scope: !169)
!169 = distinct !DILexicalBlock(scope: !151, file: !45, line: 82, column: 17)
!170 = !DILocation(line: 82, column: 36, scope: !169)
!171 = !DILocation(line: 82, column: 17, scope: !169)
!172 = !DILocation(line: 82, column: 81, scope: !169)
!173 = !DILocation(line: 82, column: 17, scope: !151)
!174 = !DILocation(line: 84, column: 17, scope: !175)
!175 = distinct !DILexicalBlock(scope: !169, file: !45, line: 83, column: 13)
!176 = !DILocation(line: 86, column: 24, scope: !177)
!177 = distinct !DILexicalBlock(scope: !151, file: !45, line: 86, column: 17)
!178 = !DILocation(line: 86, column: 17, scope: !177)
!179 = !DILocation(line: 86, column: 54, scope: !177)
!180 = !DILocation(line: 86, column: 17, scope: !151)
!181 = !DILocation(line: 88, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !177, file: !45, line: 87, column: 13)
!183 = !DILocation(line: 90, column: 35, scope: !151)
!184 = !DILocation(line: 90, column: 28, scope: !151)
!185 = !DILocation(line: 90, column: 26, scope: !151)
!186 = !DILocation(line: 91, column: 17, scope: !187)
!187 = distinct !DILexicalBlock(scope: !151, file: !45, line: 91, column: 17)
!188 = !DILocation(line: 91, column: 30, scope: !187)
!189 = !DILocation(line: 91, column: 17, scope: !151)
!190 = !DILocation(line: 93, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !45, line: 92, column: 13)
!192 = !DILocation(line: 96, column: 31, scope: !151)
!193 = !DILocation(line: 96, column: 45, scope: !151)
!194 = !DILocation(line: 96, column: 26, scope: !151)
!195 = !DILocation(line: 96, column: 24, scope: !151)
!196 = !DILocation(line: 97, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !151, file: !45, line: 97, column: 17)
!198 = !DILocation(line: 97, column: 28, scope: !197)
!199 = !DILocation(line: 97, column: 44, scope: !197)
!200 = !DILocation(line: 97, column: 47, scope: !197)
!201 = !DILocation(line: 97, column: 58, scope: !197)
!202 = !DILocation(line: 97, column: 17, scope: !151)
!203 = !DILocation(line: 99, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !197, file: !45, line: 98, column: 13)
!205 = !DILocation(line: 102, column: 25, scope: !151)
!206 = !DILocation(line: 102, column: 13, scope: !151)
!207 = !DILocation(line: 102, column: 37, scope: !151)
!208 = !DILocation(line: 104, column: 25, scope: !151)
!209 = !DILocation(line: 104, column: 20, scope: !151)
!210 = !DILocation(line: 104, column: 18, scope: !151)
!211 = !DILocation(line: 105, column: 9, scope: !151)
!212 = !DILocation(line: 107, column: 13, scope: !213)
!213 = distinct !DILexicalBlock(scope: !124, file: !45, line: 107, column: 13)
!214 = !DILocation(line: 107, column: 26, scope: !213)
!215 = !DILocation(line: 107, column: 13, scope: !124)
!216 = !DILocation(line: 109, column: 26, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !45, line: 108, column: 9)
!218 = !DILocation(line: 109, column: 13, scope: !217)
!219 = !DILocation(line: 110, column: 9, scope: !217)
!220 = !DILocation(line: 111, column: 13, scope: !221)
!221 = distinct !DILexicalBlock(scope: !124, file: !45, line: 111, column: 13)
!222 = !DILocation(line: 111, column: 26, scope: !221)
!223 = !DILocation(line: 111, column: 13, scope: !124)
!224 = !DILocation(line: 113, column: 26, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !45, line: 112, column: 9)
!226 = !DILocation(line: 113, column: 13, scope: !225)
!227 = !DILocation(line: 114, column: 9, scope: !225)
!228 = !DILocation(line: 123, column: 20, scope: !112)
!229 = !DILocation(line: 123, column: 5, scope: !112)
!230 = !DILocation(line: 123, column: 18, scope: !112)
!231 = !DILocation(line: 124, column: 74, scope: !112)
!232 = !DILocation(line: 124, column: 5, scope: !112)
!233 = !DILocation(line: 125, column: 1, scope: !112)
!234 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 133, type: !113, scopeLine: 134, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!235 = !DILocalVariable(name: "data", scope: !234, file: !45, line: 135, type: !23)
!236 = !DILocation(line: 135, column: 9, scope: !234)
!237 = !DILocalVariable(name: "dataArray", scope: !234, file: !45, line: 136, type: !118)
!238 = !DILocation(line: 136, column: 9, scope: !234)
!239 = !DILocation(line: 138, column: 10, scope: !234)
!240 = !DILocation(line: 141, column: 10, scope: !234)
!241 = !DILocation(line: 142, column: 20, scope: !234)
!242 = !DILocation(line: 142, column: 5, scope: !234)
!243 = !DILocation(line: 142, column: 18, scope: !234)
!244 = !DILocation(line: 143, column: 78, scope: !234)
!245 = !DILocation(line: 143, column: 5, scope: !234)
!246 = !DILocation(line: 144, column: 1, scope: !234)
!247 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 148, type: !113, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!248 = !DILocalVariable(name: "data", scope: !247, file: !45, line: 150, type: !23)
!249 = !DILocation(line: 150, column: 9, scope: !247)
!250 = !DILocalVariable(name: "dataArray", scope: !247, file: !45, line: 151, type: !118)
!251 = !DILocation(line: 151, column: 9, scope: !247)
!252 = !DILocation(line: 153, column: 10, scope: !247)
!253 = !DILocalVariable(name: "recvResult", scope: !254, file: !45, line: 159, type: !23)
!254 = distinct !DILexicalBlock(scope: !247, file: !45, line: 154, column: 5)
!255 = !DILocation(line: 159, column: 13, scope: !254)
!256 = !DILocalVariable(name: "service", scope: !254, file: !45, line: 160, type: !127)
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
!343 = !DILocation(line: 223, column: 20, scope: !247)
!344 = !DILocation(line: 223, column: 5, scope: !247)
!345 = !DILocation(line: 223, column: 18, scope: !247)
!346 = !DILocation(line: 224, column: 78, scope: !247)
!347 = !DILocation(line: 224, column: 5, scope: !247)
!348 = !DILocation(line: 225, column: 1, scope: !247)
!349 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66_good", scope: !45, file: !45, line: 227, type: !113, scopeLine: 228, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!350 = !DILocation(line: 229, column: 5, scope: !349)
!351 = !DILocation(line: 230, column: 5, scope: !349)
!352 = !DILocation(line: 231, column: 1, scope: !349)
!353 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_badSink", scope: !106, file: !106, line: 44, type: !354, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!357 = !DILocalVariable(name: "dataArray", arg: 1, scope: !353, file: !106, line: 44, type: !356)
!358 = !DILocation(line: 44, column: 79, scope: !353)
!359 = !DILocalVariable(name: "data", scope: !353, file: !106, line: 47, type: !23)
!360 = !DILocation(line: 47, column: 9, scope: !353)
!361 = !DILocation(line: 47, column: 16, scope: !353)
!362 = !DILocalVariable(name: "i", scope: !363, file: !106, line: 49, type: !23)
!363 = distinct !DILexicalBlock(scope: !353, file: !106, line: 48, column: 5)
!364 = !DILocation(line: 49, column: 13, scope: !363)
!365 = !DILocalVariable(name: "buffer", scope: !363, file: !106, line: 50, type: !366)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 10)
!369 = !DILocation(line: 50, column: 13, scope: !363)
!370 = !DILocation(line: 53, column: 13, scope: !371)
!371 = distinct !DILexicalBlock(scope: !363, file: !106, line: 53, column: 13)
!372 = !DILocation(line: 53, column: 18, scope: !371)
!373 = !DILocation(line: 53, column: 13, scope: !363)
!374 = !DILocation(line: 55, column: 20, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !106, line: 54, column: 9)
!376 = !DILocation(line: 55, column: 13, scope: !375)
!377 = !DILocation(line: 55, column: 26, scope: !375)
!378 = !DILocation(line: 57, column: 19, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !106, line: 57, column: 13)
!380 = !DILocation(line: 57, column: 17, scope: !379)
!381 = !DILocation(line: 57, column: 24, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !106, line: 57, column: 13)
!383 = !DILocation(line: 57, column: 26, scope: !382)
!384 = !DILocation(line: 57, column: 13, scope: !379)
!385 = !DILocation(line: 59, column: 37, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !106, line: 58, column: 13)
!387 = !DILocation(line: 59, column: 30, scope: !386)
!388 = !DILocation(line: 59, column: 17, scope: !386)
!389 = !DILocation(line: 60, column: 13, scope: !386)
!390 = !DILocation(line: 57, column: 33, scope: !382)
!391 = !DILocation(line: 57, column: 13, scope: !382)
!392 = distinct !{!392, !384, !393, !394}
!393 = !DILocation(line: 60, column: 13, scope: !379)
!394 = !{!"llvm.loop.mustprogress"}
!395 = !DILocation(line: 61, column: 9, scope: !375)
!396 = !DILocation(line: 64, column: 13, scope: !397)
!397 = distinct !DILexicalBlock(scope: !371, file: !106, line: 63, column: 9)
!398 = !DILocation(line: 67, column: 1, scope: !353)
!399 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodG2BSink", scope: !106, file: !106, line: 74, type: !354, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!400 = !DILocalVariable(name: "dataArray", arg: 1, scope: !399, file: !106, line: 74, type: !356)
!401 = !DILocation(line: 74, column: 83, scope: !399)
!402 = !DILocalVariable(name: "data", scope: !399, file: !106, line: 76, type: !23)
!403 = !DILocation(line: 76, column: 9, scope: !399)
!404 = !DILocation(line: 76, column: 16, scope: !399)
!405 = !DILocalVariable(name: "i", scope: !406, file: !106, line: 78, type: !23)
!406 = distinct !DILexicalBlock(scope: !399, file: !106, line: 77, column: 5)
!407 = !DILocation(line: 78, column: 13, scope: !406)
!408 = !DILocalVariable(name: "buffer", scope: !406, file: !106, line: 79, type: !366)
!409 = !DILocation(line: 79, column: 13, scope: !406)
!410 = !DILocation(line: 82, column: 13, scope: !411)
!411 = distinct !DILexicalBlock(scope: !406, file: !106, line: 82, column: 13)
!412 = !DILocation(line: 82, column: 18, scope: !411)
!413 = !DILocation(line: 82, column: 13, scope: !406)
!414 = !DILocation(line: 84, column: 20, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !106, line: 83, column: 9)
!416 = !DILocation(line: 84, column: 13, scope: !415)
!417 = !DILocation(line: 84, column: 26, scope: !415)
!418 = !DILocation(line: 86, column: 19, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !106, line: 86, column: 13)
!420 = !DILocation(line: 86, column: 17, scope: !419)
!421 = !DILocation(line: 86, column: 24, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !106, line: 86, column: 13)
!423 = !DILocation(line: 86, column: 26, scope: !422)
!424 = !DILocation(line: 86, column: 13, scope: !419)
!425 = !DILocation(line: 88, column: 37, scope: !426)
!426 = distinct !DILexicalBlock(scope: !422, file: !106, line: 87, column: 13)
!427 = !DILocation(line: 88, column: 30, scope: !426)
!428 = !DILocation(line: 88, column: 17, scope: !426)
!429 = !DILocation(line: 89, column: 13, scope: !426)
!430 = !DILocation(line: 86, column: 33, scope: !422)
!431 = !DILocation(line: 86, column: 13, scope: !422)
!432 = distinct !{!432, !424, !433, !394}
!433 = !DILocation(line: 89, column: 13, scope: !419)
!434 = !DILocation(line: 90, column: 9, scope: !415)
!435 = !DILocation(line: 93, column: 13, scope: !436)
!436 = distinct !DILexicalBlock(scope: !411, file: !106, line: 92, column: 9)
!437 = !DILocation(line: 96, column: 1, scope: !399)
!438 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_66b_goodB2GSink", scope: !106, file: !106, line: 99, type: !354, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!439 = !DILocalVariable(name: "dataArray", arg: 1, scope: !438, file: !106, line: 99, type: !356)
!440 = !DILocation(line: 99, column: 83, scope: !438)
!441 = !DILocalVariable(name: "data", scope: !438, file: !106, line: 101, type: !23)
!442 = !DILocation(line: 101, column: 9, scope: !438)
!443 = !DILocation(line: 101, column: 16, scope: !438)
!444 = !DILocalVariable(name: "i", scope: !445, file: !106, line: 103, type: !23)
!445 = distinct !DILexicalBlock(scope: !438, file: !106, line: 102, column: 5)
!446 = !DILocation(line: 103, column: 13, scope: !445)
!447 = !DILocalVariable(name: "buffer", scope: !445, file: !106, line: 104, type: !366)
!448 = !DILocation(line: 104, column: 13, scope: !445)
!449 = !DILocation(line: 106, column: 13, scope: !450)
!450 = distinct !DILexicalBlock(scope: !445, file: !106, line: 106, column: 13)
!451 = !DILocation(line: 106, column: 18, scope: !450)
!452 = !DILocation(line: 106, column: 23, scope: !450)
!453 = !DILocation(line: 106, column: 26, scope: !450)
!454 = !DILocation(line: 106, column: 31, scope: !450)
!455 = !DILocation(line: 106, column: 13, scope: !445)
!456 = !DILocation(line: 108, column: 20, scope: !457)
!457 = distinct !DILexicalBlock(scope: !450, file: !106, line: 107, column: 9)
!458 = !DILocation(line: 108, column: 13, scope: !457)
!459 = !DILocation(line: 108, column: 26, scope: !457)
!460 = !DILocation(line: 110, column: 19, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !106, line: 110, column: 13)
!462 = !DILocation(line: 110, column: 17, scope: !461)
!463 = !DILocation(line: 110, column: 24, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !106, line: 110, column: 13)
!465 = !DILocation(line: 110, column: 26, scope: !464)
!466 = !DILocation(line: 110, column: 13, scope: !461)
!467 = !DILocation(line: 112, column: 37, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !106, line: 111, column: 13)
!469 = !DILocation(line: 112, column: 30, scope: !468)
!470 = !DILocation(line: 112, column: 17, scope: !468)
!471 = !DILocation(line: 113, column: 13, scope: !468)
!472 = !DILocation(line: 110, column: 33, scope: !464)
!473 = !DILocation(line: 110, column: 13, scope: !464)
!474 = distinct !{!474, !466, !475, !394}
!475 = !DILocation(line: 113, column: 13, scope: !461)
!476 = !DILocation(line: 114, column: 9, scope: !457)
!477 = !DILocation(line: 117, column: 13, scope: !478)
!478 = distinct !DILexicalBlock(scope: !450, file: !106, line: 116, column: 9)
!479 = !DILocation(line: 120, column: 1, scope: !438)
!480 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !481, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !42}
!483 = !DILocalVariable(name: "line", arg: 1, scope: !480, file: !3, line: 11, type: !42)
!484 = !DILocation(line: 11, column: 25, scope: !480)
!485 = !DILocation(line: 13, column: 1, scope: !480)
!486 = !DILocation(line: 14, column: 8, scope: !487)
!487 = distinct !DILexicalBlock(scope: !480, file: !3, line: 14, column: 8)
!488 = !DILocation(line: 14, column: 13, scope: !487)
!489 = !DILocation(line: 14, column: 8, scope: !480)
!490 = !DILocation(line: 16, column: 24, scope: !491)
!491 = distinct !DILexicalBlock(scope: !487, file: !3, line: 15, column: 5)
!492 = !DILocation(line: 16, column: 9, scope: !491)
!493 = !DILocation(line: 17, column: 5, scope: !491)
!494 = !DILocation(line: 18, column: 5, scope: !480)
!495 = !DILocation(line: 19, column: 1, scope: !480)
!496 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !481, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!497 = !DILocalVariable(name: "line", arg: 1, scope: !496, file: !3, line: 20, type: !42)
!498 = !DILocation(line: 20, column: 29, scope: !496)
!499 = !DILocation(line: 22, column: 8, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !3, line: 22, column: 8)
!501 = !DILocation(line: 22, column: 13, scope: !500)
!502 = !DILocation(line: 22, column: 8, scope: !496)
!503 = !DILocation(line: 24, column: 24, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !3, line: 23, column: 5)
!505 = !DILocation(line: 24, column: 9, scope: !504)
!506 = !DILocation(line: 25, column: 5, scope: !504)
!507 = !DILocation(line: 26, column: 1, scope: !496)
!508 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !509, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !513, line: 74, baseType: !23)
!513 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!514 = !DILocalVariable(name: "line", arg: 1, scope: !508, file: !3, line: 27, type: !511)
!515 = !DILocation(line: 27, column: 29, scope: !508)
!516 = !DILocation(line: 29, column: 8, scope: !517)
!517 = distinct !DILexicalBlock(scope: !508, file: !3, line: 29, column: 8)
!518 = !DILocation(line: 29, column: 13, scope: !517)
!519 = !DILocation(line: 29, column: 8, scope: !508)
!520 = !DILocation(line: 31, column: 27, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !3, line: 30, column: 5)
!522 = !DILocation(line: 31, column: 9, scope: !521)
!523 = !DILocation(line: 32, column: 5, scope: !521)
!524 = !DILocation(line: 33, column: 1, scope: !508)
!525 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !526, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !23}
!528 = !DILocalVariable(name: "intNumber", arg: 1, scope: !525, file: !3, line: 35, type: !23)
!529 = !DILocation(line: 35, column: 24, scope: !525)
!530 = !DILocation(line: 37, column: 20, scope: !525)
!531 = !DILocation(line: 37, column: 5, scope: !525)
!532 = !DILocation(line: 38, column: 1, scope: !525)
!533 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !534, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !536}
!536 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!537 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !533, file: !3, line: 40, type: !536)
!538 = !DILocation(line: 40, column: 28, scope: !533)
!539 = !DILocation(line: 42, column: 21, scope: !533)
!540 = !DILocation(line: 42, column: 5, scope: !533)
!541 = !DILocation(line: 43, column: 1, scope: !533)
!542 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !543, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !545}
!545 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!546 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !542, file: !3, line: 45, type: !545)
!547 = !DILocation(line: 45, column: 28, scope: !542)
!548 = !DILocation(line: 47, column: 20, scope: !542)
!549 = !DILocation(line: 47, column: 5, scope: !542)
!550 = !DILocation(line: 48, column: 1, scope: !542)
!551 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !552, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !554}
!554 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!555 = !DILocalVariable(name: "longNumber", arg: 1, scope: !551, file: !3, line: 50, type: !554)
!556 = !DILocation(line: 50, column: 26, scope: !551)
!557 = !DILocation(line: 52, column: 21, scope: !551)
!558 = !DILocation(line: 52, column: 5, scope: !551)
!559 = !DILocation(line: 53, column: 1, scope: !551)
!560 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !561, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !563}
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !564, line: 27, baseType: !565)
!564 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !554)
!566 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !560, file: !3, line: 55, type: !563)
!567 = !DILocation(line: 55, column: 33, scope: !560)
!568 = !DILocation(line: 57, column: 29, scope: !560)
!569 = !DILocation(line: 57, column: 5, scope: !560)
!570 = !DILocation(line: 58, column: 1, scope: !560)
!571 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !572, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !574}
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !513, line: 46, baseType: !575)
!575 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!576 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !571, file: !3, line: 60, type: !574)
!577 = !DILocation(line: 60, column: 29, scope: !571)
!578 = !DILocation(line: 62, column: 21, scope: !571)
!579 = !DILocation(line: 62, column: 5, scope: !571)
!580 = !DILocation(line: 63, column: 1, scope: !571)
!581 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !582, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !43}
!584 = !DILocalVariable(name: "charHex", arg: 1, scope: !581, file: !3, line: 65, type: !43)
!585 = !DILocation(line: 65, column: 29, scope: !581)
!586 = !DILocation(line: 67, column: 22, scope: !581)
!587 = !DILocation(line: 67, column: 5, scope: !581)
!588 = !DILocation(line: 68, column: 1, scope: !581)
!589 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !590, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !512}
!592 = !DILocalVariable(name: "wideChar", arg: 1, scope: !589, file: !3, line: 70, type: !512)
!593 = !DILocation(line: 70, column: 29, scope: !589)
!594 = !DILocalVariable(name: "s", scope: !589, file: !3, line: 74, type: !595)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 64, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 2)
!598 = !DILocation(line: 74, column: 13, scope: !589)
!599 = !DILocation(line: 75, column: 16, scope: !589)
!600 = !DILocation(line: 75, column: 9, scope: !589)
!601 = !DILocation(line: 75, column: 14, scope: !589)
!602 = !DILocation(line: 76, column: 9, scope: !589)
!603 = !DILocation(line: 76, column: 14, scope: !589)
!604 = !DILocation(line: 77, column: 21, scope: !589)
!605 = !DILocation(line: 77, column: 5, scope: !589)
!606 = !DILocation(line: 78, column: 1, scope: !589)
!607 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !608, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !7}
!610 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !607, file: !3, line: 80, type: !7)
!611 = !DILocation(line: 80, column: 33, scope: !607)
!612 = !DILocation(line: 82, column: 20, scope: !607)
!613 = !DILocation(line: 82, column: 5, scope: !607)
!614 = !DILocation(line: 83, column: 1, scope: !607)
!615 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !616, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !25}
!618 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !615, file: !3, line: 85, type: !25)
!619 = !DILocation(line: 85, column: 45, scope: !615)
!620 = !DILocation(line: 87, column: 22, scope: !615)
!621 = !DILocation(line: 87, column: 5, scope: !615)
!622 = !DILocation(line: 88, column: 1, scope: !615)
!623 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !624, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !626}
!626 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!627 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !623, file: !3, line: 90, type: !626)
!628 = !DILocation(line: 90, column: 29, scope: !623)
!629 = !DILocation(line: 92, column: 20, scope: !623)
!630 = !DILocation(line: 92, column: 5, scope: !623)
!631 = !DILocation(line: 93, column: 1, scope: !623)
!632 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !633, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !637, line: 100, baseType: !638)
!637 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_746/source_code")
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !637, line: 96, size: 64, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !638, file: !637, line: 98, baseType: !23, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !638, file: !637, line: 99, baseType: !23, size: 32, offset: 32)
!642 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !632, file: !3, line: 95, type: !635)
!643 = !DILocation(line: 95, column: 40, scope: !632)
!644 = !DILocation(line: 97, column: 26, scope: !632)
!645 = !DILocation(line: 97, column: 47, scope: !632)
!646 = !DILocation(line: 97, column: 55, scope: !632)
!647 = !DILocation(line: 97, column: 76, scope: !632)
!648 = !DILocation(line: 97, column: 5, scope: !632)
!649 = !DILocation(line: 98, column: 1, scope: !632)
!650 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !651, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !653, !574}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!654 = !DILocalVariable(name: "bytes", arg: 1, scope: !650, file: !3, line: 100, type: !653)
!655 = !DILocation(line: 100, column: 38, scope: !650)
!656 = !DILocalVariable(name: "numBytes", arg: 2, scope: !650, file: !3, line: 100, type: !574)
!657 = !DILocation(line: 100, column: 52, scope: !650)
!658 = !DILocalVariable(name: "i", scope: !650, file: !3, line: 102, type: !574)
!659 = !DILocation(line: 102, column: 12, scope: !650)
!660 = !DILocation(line: 103, column: 12, scope: !661)
!661 = distinct !DILexicalBlock(scope: !650, file: !3, line: 103, column: 5)
!662 = !DILocation(line: 103, column: 10, scope: !661)
!663 = !DILocation(line: 103, column: 17, scope: !664)
!664 = distinct !DILexicalBlock(scope: !661, file: !3, line: 103, column: 5)
!665 = !DILocation(line: 103, column: 21, scope: !664)
!666 = !DILocation(line: 103, column: 19, scope: !664)
!667 = !DILocation(line: 103, column: 5, scope: !661)
!668 = !DILocation(line: 105, column: 24, scope: !669)
!669 = distinct !DILexicalBlock(scope: !664, file: !3, line: 104, column: 5)
!670 = !DILocation(line: 105, column: 30, scope: !669)
!671 = !DILocation(line: 105, column: 9, scope: !669)
!672 = !DILocation(line: 106, column: 5, scope: !669)
!673 = !DILocation(line: 103, column: 31, scope: !664)
!674 = !DILocation(line: 103, column: 5, scope: !664)
!675 = distinct !{!675, !667, !676, !394}
!676 = !DILocation(line: 106, column: 5, scope: !661)
!677 = !DILocation(line: 107, column: 5, scope: !650)
!678 = !DILocation(line: 108, column: 1, scope: !650)
!679 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !680, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!680 = !DISubroutineType(types: !681)
!681 = !{!574, !653, !574, !42}
!682 = !DILocalVariable(name: "bytes", arg: 1, scope: !679, file: !3, line: 113, type: !653)
!683 = !DILocation(line: 113, column: 39, scope: !679)
!684 = !DILocalVariable(name: "numBytes", arg: 2, scope: !679, file: !3, line: 113, type: !574)
!685 = !DILocation(line: 113, column: 53, scope: !679)
!686 = !DILocalVariable(name: "hex", arg: 3, scope: !679, file: !3, line: 113, type: !42)
!687 = !DILocation(line: 113, column: 71, scope: !679)
!688 = !DILocalVariable(name: "numWritten", scope: !679, file: !3, line: 115, type: !574)
!689 = !DILocation(line: 115, column: 12, scope: !679)
!690 = !DILocation(line: 121, column: 5, scope: !679)
!691 = !DILocation(line: 121, column: 12, scope: !679)
!692 = !DILocation(line: 121, column: 25, scope: !679)
!693 = !DILocation(line: 121, column: 23, scope: !679)
!694 = !DILocation(line: 121, column: 34, scope: !679)
!695 = !DILocation(line: 121, column: 37, scope: !679)
!696 = !DILocation(line: 121, column: 67, scope: !679)
!697 = !DILocation(line: 121, column: 70, scope: !679)
!698 = !DILocation(line: 0, scope: !679)
!699 = !DILocalVariable(name: "byte", scope: !700, file: !3, line: 123, type: !23)
!700 = distinct !DILexicalBlock(scope: !679, file: !3, line: 122, column: 5)
!701 = !DILocation(line: 123, column: 13, scope: !700)
!702 = !DILocation(line: 124, column: 17, scope: !700)
!703 = !DILocation(line: 124, column: 25, scope: !700)
!704 = !DILocation(line: 124, column: 23, scope: !700)
!705 = !DILocation(line: 124, column: 9, scope: !700)
!706 = !DILocation(line: 125, column: 45, scope: !700)
!707 = !DILocation(line: 125, column: 29, scope: !700)
!708 = !DILocation(line: 125, column: 9, scope: !700)
!709 = !DILocation(line: 125, column: 15, scope: !700)
!710 = !DILocation(line: 125, column: 27, scope: !700)
!711 = !DILocation(line: 126, column: 9, scope: !700)
!712 = distinct !{!712, !690, !713, !394}
!713 = !DILocation(line: 127, column: 5, scope: !679)
!714 = !DILocation(line: 129, column: 12, scope: !679)
!715 = !DILocation(line: 129, column: 5, scope: !679)
!716 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !717, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!717 = !DISubroutineType(types: !718)
!718 = !{!574, !653, !574, !511}
!719 = !DILocalVariable(name: "bytes", arg: 1, scope: !716, file: !3, line: 135, type: !653)
!720 = !DILocation(line: 135, column: 41, scope: !716)
!721 = !DILocalVariable(name: "numBytes", arg: 2, scope: !716, file: !3, line: 135, type: !574)
!722 = !DILocation(line: 135, column: 55, scope: !716)
!723 = !DILocalVariable(name: "hex", arg: 3, scope: !716, file: !3, line: 135, type: !511)
!724 = !DILocation(line: 135, column: 76, scope: !716)
!725 = !DILocalVariable(name: "numWritten", scope: !716, file: !3, line: 137, type: !574)
!726 = !DILocation(line: 137, column: 12, scope: !716)
!727 = !DILocation(line: 143, column: 5, scope: !716)
!728 = !DILocation(line: 143, column: 12, scope: !716)
!729 = !DILocation(line: 143, column: 25, scope: !716)
!730 = !DILocation(line: 143, column: 23, scope: !716)
!731 = !DILocation(line: 143, column: 34, scope: !716)
!732 = !DILocation(line: 143, column: 47, scope: !716)
!733 = !DILocation(line: 143, column: 55, scope: !716)
!734 = !DILocation(line: 143, column: 53, scope: !716)
!735 = !DILocation(line: 143, column: 37, scope: !716)
!736 = !DILocation(line: 143, column: 68, scope: !716)
!737 = !DILocation(line: 143, column: 81, scope: !716)
!738 = !DILocation(line: 143, column: 89, scope: !716)
!739 = !DILocation(line: 143, column: 87, scope: !716)
!740 = !DILocation(line: 143, column: 100, scope: !716)
!741 = !DILocation(line: 143, column: 71, scope: !716)
!742 = !DILocation(line: 0, scope: !716)
!743 = !DILocalVariable(name: "byte", scope: !744, file: !3, line: 145, type: !23)
!744 = distinct !DILexicalBlock(scope: !716, file: !3, line: 144, column: 5)
!745 = !DILocation(line: 145, column: 13, scope: !744)
!746 = !DILocation(line: 146, column: 18, scope: !744)
!747 = !DILocation(line: 146, column: 26, scope: !744)
!748 = !DILocation(line: 146, column: 24, scope: !744)
!749 = !DILocation(line: 146, column: 9, scope: !744)
!750 = !DILocation(line: 147, column: 45, scope: !744)
!751 = !DILocation(line: 147, column: 29, scope: !744)
!752 = !DILocation(line: 147, column: 9, scope: !744)
!753 = !DILocation(line: 147, column: 15, scope: !744)
!754 = !DILocation(line: 147, column: 27, scope: !744)
!755 = !DILocation(line: 148, column: 9, scope: !744)
!756 = distinct !{!756, !727, !757, !394}
!757 = !DILocation(line: 149, column: 5, scope: !716)
!758 = !DILocation(line: 151, column: 12, scope: !716)
!759 = !DILocation(line: 151, column: 5, scope: !716)
!760 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !761, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!761 = !DISubroutineType(types: !762)
!762 = !{!23}
!763 = !DILocation(line: 158, column: 5, scope: !760)
!764 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !761, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!765 = !DILocation(line: 163, column: 5, scope: !764)
!766 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !761, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!767 = !DILocation(line: 168, column: 13, scope: !766)
!768 = !DILocation(line: 168, column: 20, scope: !766)
!769 = !DILocation(line: 168, column: 5, scope: !766)
!770 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !113, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!771 = !DILocation(line: 187, column: 16, scope: !770)
!772 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !113, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!773 = !DILocation(line: 188, column: 16, scope: !772)
!774 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !113, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!775 = !DILocation(line: 189, column: 16, scope: !774)
!776 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !113, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!777 = !DILocation(line: 190, column: 16, scope: !776)
!778 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !113, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!779 = !DILocation(line: 191, column: 16, scope: !778)
!780 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !113, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!781 = !DILocation(line: 192, column: 16, scope: !780)
!782 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !113, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!783 = !DILocation(line: 193, column: 16, scope: !782)
!784 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !113, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!785 = !DILocation(line: 194, column: 16, scope: !784)
!786 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !113, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!787 = !DILocation(line: 195, column: 16, scope: !786)
!788 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !113, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!789 = !DILocation(line: 198, column: 15, scope: !788)
!790 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !113, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!791 = !DILocation(line: 199, column: 15, scope: !790)
!792 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !113, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!793 = !DILocation(line: 200, column: 15, scope: !792)
!794 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !113, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!795 = !DILocation(line: 201, column: 15, scope: !794)
!796 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !113, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!797 = !DILocation(line: 202, column: 15, scope: !796)
!798 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !113, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!799 = !DILocation(line: 203, column: 15, scope: !798)
!800 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !113, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!801 = !DILocation(line: 204, column: 15, scope: !800)
!802 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !113, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!803 = !DILocation(line: 205, column: 15, scope: !802)
!804 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !113, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!805 = !DILocation(line: 206, column: 15, scope: !804)
