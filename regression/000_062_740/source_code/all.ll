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
@.str.27 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.28 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
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
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54_bad() #0 !dbg !118 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !121, metadata !DIExpression()), !dbg !122
  store i32 -1, i32* %data, align 4, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !124, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !127, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !144, metadata !DIExpression()), !dbg !145
  store i32 -1, i32* %listenSocket, align 4, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !146, metadata !DIExpression()), !dbg !147
  store i32 -1, i32* %acceptSocket, align 4, !dbg !147
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !148, metadata !DIExpression()), !dbg !149
  br label %do.body, !dbg !150

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !151
  store i32 %call, i32* %listenSocket, align 4, !dbg !153
  %0 = load i32, i32* %listenSocket, align 4, !dbg !154
  %cmp = icmp eq i32 %0, -1, !dbg !156
  br i1 %cmp, label %if.then, label %if.end, !dbg !157

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !158

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !160
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !160
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !161
  store i16 2, i16* %sin_family, align 4, !dbg !162
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !163
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !164
  store i32 0, i32* %s_addr, align 4, !dbg !165
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !166
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !167
  store i16 %call1, i16* %sin_port, align 2, !dbg !168
  %2 = load i32, i32* %listenSocket, align 4, !dbg !169
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !171
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !172
  %cmp3 = icmp eq i32 %call2, -1, !dbg !173
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !174

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !175

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !177
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !179
  %cmp7 = icmp eq i32 %call6, -1, !dbg !180
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !181

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !182

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !184
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !185
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !186
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !187
  %cmp11 = icmp eq i32 %6, -1, !dbg !189
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !190

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !191

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !193
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !194
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !195
  %conv = trunc i64 %call14 to i32, !dbg !195
  store i32 %conv, i32* %recvResult, align 4, !dbg !196
  %8 = load i32, i32* %recvResult, align 4, !dbg !197
  %cmp15 = icmp eq i32 %8, -1, !dbg !199
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !200

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !201
  %cmp17 = icmp eq i32 %9, 0, !dbg !202
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !203

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !204

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !206
  %idxprom = sext i32 %10 to i64, !dbg !207
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !207
  store i8 0, i8* %arrayidx, align 1, !dbg !208
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !209
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !210
  store i32 %call22, i32* %data, align 4, !dbg !211
  br label %do.end, !dbg !212

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !213
  %cmp23 = icmp ne i32 %11, -1, !dbg !215
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !216

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !217
  %call26 = call i32 @close(i32 %12), !dbg !219
  br label %if.end27, !dbg !220

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !221
  %cmp28 = icmp ne i32 %13, -1, !dbg !223
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !224

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !225
  %call31 = call i32 @close(i32 %14), !dbg !227
  br label %if.end32, !dbg !228

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data, align 4, !dbg !229
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54b_badSink(i32 %15), !dbg !230
  ret void, !dbg !231
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
define dso_local void @goodG2B() #0 !dbg !232 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !233, metadata !DIExpression()), !dbg !234
  store i32 -1, i32* %data, align 4, !dbg !235
  store i32 7, i32* %data, align 4, !dbg !236
  %0 = load i32, i32* %data, align 4, !dbg !237
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54b_goodG2BSink(i32 %0), !dbg !238
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !240 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !241, metadata !DIExpression()), !dbg !242
  store i32 -1, i32* %data, align 4, !dbg !243
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !244, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !249, metadata !DIExpression()), !dbg !250
  store i32 -1, i32* %listenSocket, align 4, !dbg !250
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !251, metadata !DIExpression()), !dbg !252
  store i32 -1, i32* %acceptSocket, align 4, !dbg !252
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !253, metadata !DIExpression()), !dbg !254
  br label %do.body, !dbg !255

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !256
  store i32 %call, i32* %listenSocket, align 4, !dbg !258
  %0 = load i32, i32* %listenSocket, align 4, !dbg !259
  %cmp = icmp eq i32 %0, -1, !dbg !261
  br i1 %cmp, label %if.then, label %if.end, !dbg !262

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !263

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !265
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !265
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !266
  store i16 2, i16* %sin_family, align 4, !dbg !267
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !268
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !269
  store i32 0, i32* %s_addr, align 4, !dbg !270
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !271
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !272
  store i16 %call1, i16* %sin_port, align 2, !dbg !273
  %2 = load i32, i32* %listenSocket, align 4, !dbg !274
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !276
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !277
  %cmp3 = icmp eq i32 %call2, -1, !dbg !278
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !279

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !280

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !282
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !284
  %cmp7 = icmp eq i32 %call6, -1, !dbg !285
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !286

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !287

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !289
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !290
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !291
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !292
  %cmp11 = icmp eq i32 %6, -1, !dbg !294
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !295

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !296

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !298
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !299
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !300
  %conv = trunc i64 %call14 to i32, !dbg !300
  store i32 %conv, i32* %recvResult, align 4, !dbg !301
  %8 = load i32, i32* %recvResult, align 4, !dbg !302
  %cmp15 = icmp eq i32 %8, -1, !dbg !304
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !305

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !306
  %cmp17 = icmp eq i32 %9, 0, !dbg !307
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !308

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !309

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !311
  %idxprom = sext i32 %10 to i64, !dbg !312
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !312
  store i8 0, i8* %arrayidx, align 1, !dbg !313
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !314
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !315
  store i32 %call22, i32* %data, align 4, !dbg !316
  br label %do.end, !dbg !317

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !318
  %cmp23 = icmp ne i32 %11, -1, !dbg !320
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !321

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !322
  %call26 = call i32 @close(i32 %12), !dbg !324
  br label %if.end27, !dbg !325

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !326
  %cmp28 = icmp ne i32 %13, -1, !dbg !328
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !329

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !330
  %call31 = call i32 @close(i32 %14), !dbg !332
  br label %if.end32, !dbg !333

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data, align 4, !dbg !334
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54b_goodB2GSink(i32 %15), !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54_good() #0 !dbg !337 {
entry:
  call void @goodG2B(), !dbg !338
  call void @goodB2G(), !dbg !339
  ret void, !dbg !340
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54b_badSink(i32 %data) #0 !dbg !341 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load i32, i32* %data.addr, align 4, !dbg !346
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54c_badSink(i32 %0), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54b_goodG2BSink(i32 %data) #0 !dbg !349 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load i32, i32* %data.addr, align 4, !dbg !352
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54c_goodG2BSink(i32 %0), !dbg !353
  ret void, !dbg !354
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54b_goodB2GSink(i32 %data) #0 !dbg !355 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = load i32, i32* %data.addr, align 4, !dbg !358
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54c_goodB2GSink(i32 %0), !dbg !359
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54c_badSink(i32 %data) #0 !dbg !361 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %0 = load i32, i32* %data.addr, align 4, !dbg !364
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54d_badSink(i32 %0), !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54c_goodG2BSink(i32 %data) #0 !dbg !367 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !368, metadata !DIExpression()), !dbg !369
  %0 = load i32, i32* %data.addr, align 4, !dbg !370
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54d_goodG2BSink(i32 %0), !dbg !371
  ret void, !dbg !372
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54c_goodB2GSink(i32 %data) #0 !dbg !373 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i32, i32* %data.addr, align 4, !dbg !376
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54d_goodB2GSink(i32 %0), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54d_badSink(i32 %data) #0 !dbg !379 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load i32, i32* %data.addr, align 4, !dbg !382
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54e_badSink(i32 %0), !dbg !383
  ret void, !dbg !384
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54d_goodG2BSink(i32 %data) #0 !dbg !385 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = load i32, i32* %data.addr, align 4, !dbg !388
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54e_goodG2BSink(i32 %0), !dbg !389
  ret void, !dbg !390
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54d_goodB2GSink(i32 %data) #0 !dbg !391 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load i32, i32* %data.addr, align 4, !dbg !394
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54e_goodB2GSink(i32 %0), !dbg !395
  ret void, !dbg !396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54e_badSink(i32 %data) #0 !dbg !397 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.declare(metadata i32* %i, metadata !400, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !403, metadata !DIExpression()), !dbg !407
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !407
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !407
  %1 = load i32, i32* %data.addr, align 4, !dbg !408
  %cmp = icmp sge i32 %1, 0, !dbg !410
  br i1 %cmp, label %if.then, label %if.else, !dbg !411

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !412
  %idxprom = sext i32 %2 to i64, !dbg !414
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !414
  store i32 1, i32* %arrayidx, align 4, !dbg !415
  store i32 0, i32* %i, align 4, !dbg !416
  br label %for.cond, !dbg !418

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !419
  %cmp1 = icmp slt i32 %3, 10, !dbg !421
  br i1 %cmp1, label %for.body, label %for.end, !dbg !422

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !423
  %idxprom2 = sext i32 %4 to i64, !dbg !425
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !425
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !425
  call void @printIntLine(i32 %5), !dbg !426
  br label %for.inc, !dbg !427

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !428
  %inc = add nsw i32 %6, 1, !dbg !428
  store i32 %inc, i32* %i, align 4, !dbg !428
  br label %for.cond, !dbg !429, !llvm.loop !430

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !433

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !434
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54e_goodG2BSink(i32 %data) #0 !dbg !437 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !438, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata i32* %i, metadata !440, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !444
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !444
  %1 = load i32, i32* %data.addr, align 4, !dbg !445
  %cmp = icmp sge i32 %1, 0, !dbg !447
  br i1 %cmp, label %if.then, label %if.else, !dbg !448

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !449
  %idxprom = sext i32 %2 to i64, !dbg !451
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !451
  store i32 1, i32* %arrayidx, align 4, !dbg !452
  store i32 0, i32* %i, align 4, !dbg !453
  br label %for.cond, !dbg !455

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !456
  %cmp1 = icmp slt i32 %3, 10, !dbg !458
  br i1 %cmp1, label %for.body, label %for.end, !dbg !459

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !460
  %idxprom2 = sext i32 %4 to i64, !dbg !462
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !462
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !462
  call void @printIntLine(i32 %5), !dbg !463
  br label %for.inc, !dbg !464

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !465
  %inc = add nsw i32 %6, 1, !dbg !465
  store i32 %inc, i32* %i, align 4, !dbg !465
  br label %for.cond, !dbg !466, !llvm.loop !467

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !469

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !470
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54e_goodB2GSink(i32 %data) #0 !dbg !473 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !474, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.declare(metadata i32* %i, metadata !476, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !479, metadata !DIExpression()), !dbg !480
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !480
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !480
  %1 = load i32, i32* %data.addr, align 4, !dbg !481
  %cmp = icmp sge i32 %1, 0, !dbg !483
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !484

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !485
  %cmp1 = icmp slt i32 %2, 10, !dbg !486
  br i1 %cmp1, label %if.then, label %if.else, !dbg !487

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !488
  %idxprom = sext i32 %3 to i64, !dbg !490
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !490
  store i32 1, i32* %arrayidx, align 4, !dbg !491
  store i32 0, i32* %i, align 4, !dbg !492
  br label %for.cond, !dbg !494

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !495
  %cmp2 = icmp slt i32 %4, 10, !dbg !497
  br i1 %cmp2, label %for.body, label %for.end, !dbg !498

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !499
  %idxprom3 = sext i32 %5 to i64, !dbg !501
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !501
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !501
  call void @printIntLine(i32 %6), !dbg !502
  br label %for.inc, !dbg !503

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !504
  %inc = add nsw i32 %7, 1, !dbg !504
  store i32 %inc, i32* %i, align 4, !dbg !504
  br label %for.cond, !dbg !505, !llvm.loop !506

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !508

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !509
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !512 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !515, metadata !DIExpression()), !dbg !516
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0)), !dbg !517
  %0 = load i8*, i8** %line.addr, align 8, !dbg !518
  %cmp = icmp ne i8* %0, null, !dbg !520
  br i1 %cmp, label %if.then, label %if.end, !dbg !521

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !522
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.28, i64 0, i64 0), i8* %1), !dbg !524
  br label %if.end, !dbg !525

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !526
  ret void, !dbg !527
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !528 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !529, metadata !DIExpression()), !dbg !530
  %0 = load i8*, i8** %line.addr, align 8, !dbg !531
  %cmp = icmp ne i8* %0, null, !dbg !533
  br i1 %cmp, label %if.then, label %if.end, !dbg !534

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !535
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.28, i64 0, i64 0), i8* %1), !dbg !537
  br label %if.end, !dbg !538

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !540 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !546, metadata !DIExpression()), !dbg !547
  %0 = load i32*, i32** %line.addr, align 8, !dbg !548
  %cmp = icmp ne i32* %0, null, !dbg !550
  br i1 %cmp, label %if.then, label %if.end, !dbg !551

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !552
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !554
  br label %if.end, !dbg !555

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !556
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !557 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !558, metadata !DIExpression()), !dbg !559
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !560
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !561
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !563 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !567, metadata !DIExpression()), !dbg !568
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !569
  %conv = sext i16 %0 to i32, !dbg !569
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !570
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !572 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !576, metadata !DIExpression()), !dbg !577
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !578
  %conv = fpext float %0 to double, !dbg !578
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !579
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !581 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !585, metadata !DIExpression()), !dbg !586
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !587
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !588
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !590 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !596, metadata !DIExpression()), !dbg !597
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !598
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !599
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !601 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !606, metadata !DIExpression()), !dbg !607
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !608
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !609
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !611 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !614, metadata !DIExpression()), !dbg !615
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !616
  %conv = sext i8 %0 to i32, !dbg !616
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !617
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !619 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !622, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !624, metadata !DIExpression()), !dbg !628
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !629
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !630
  store i32 %0, i32* %arrayidx, align 4, !dbg !631
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !632
  store i32 0, i32* %arrayidx1, align 4, !dbg !633
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !634
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !635
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !637 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !640, metadata !DIExpression()), !dbg !641
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !642
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !643
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !645 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !648, metadata !DIExpression()), !dbg !649
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !650
  %conv = zext i8 %0 to i32, !dbg !650
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !651
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !653 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !657, metadata !DIExpression()), !dbg !658
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !659
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !660
  ret void, !dbg !661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !662 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !672, metadata !DIExpression()), !dbg !673
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !674
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !675
  %1 = load i32, i32* %intOne, align 4, !dbg !675
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !676
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !677
  %3 = load i32, i32* %intTwo, align 4, !dbg !677
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !678
  ret void, !dbg !679
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !680 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !684, metadata !DIExpression()), !dbg !685
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !686, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.declare(metadata i64* %i, metadata !688, metadata !DIExpression()), !dbg !689
  store i64 0, i64* %i, align 8, !dbg !690
  br label %for.cond, !dbg !692

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !693
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !695
  %cmp = icmp ult i64 %0, %1, !dbg !696
  br i1 %cmp, label %for.body, label %for.end, !dbg !697

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !698
  %3 = load i64, i64* %i, align 8, !dbg !700
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !698
  %4 = load i8, i8* %arrayidx, align 1, !dbg !698
  %conv = zext i8 %4 to i32, !dbg !698
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !701
  br label %for.inc, !dbg !702

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !703
  %inc = add i64 %5, 1, !dbg !703
  store i64 %inc, i64* %i, align 8, !dbg !703
  br label %for.cond, !dbg !704, !llvm.loop !705

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !707
  ret void, !dbg !708
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !709 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !712, metadata !DIExpression()), !dbg !713
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !714, metadata !DIExpression()), !dbg !715
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !716, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !718, metadata !DIExpression()), !dbg !719
  store i64 0, i64* %numWritten, align 8, !dbg !719
  br label %while.cond, !dbg !720

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !721
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !722
  %cmp = icmp ult i64 %0, %1, !dbg !723
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !724

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !725
  %2 = load i16*, i16** %call, align 8, !dbg !725
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !725
  %4 = load i64, i64* %numWritten, align 8, !dbg !725
  %mul = mul i64 2, %4, !dbg !725
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !725
  %5 = load i8, i8* %arrayidx, align 1, !dbg !725
  %conv = sext i8 %5 to i32, !dbg !725
  %idxprom = sext i32 %conv to i64, !dbg !725
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !725
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !725
  %conv2 = zext i16 %6 to i32, !dbg !725
  %and = and i32 %conv2, 4096, !dbg !725
  %tobool = icmp ne i32 %and, 0, !dbg !725
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !726

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !727
  %7 = load i16*, i16** %call3, align 8, !dbg !727
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !727
  %9 = load i64, i64* %numWritten, align 8, !dbg !727
  %mul4 = mul i64 2, %9, !dbg !727
  %add = add i64 %mul4, 1, !dbg !727
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !727
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !727
  %conv6 = sext i8 %10 to i32, !dbg !727
  %idxprom7 = sext i32 %conv6 to i64, !dbg !727
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !727
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !727
  %conv9 = zext i16 %11 to i32, !dbg !727
  %and10 = and i32 %conv9, 4096, !dbg !727
  %tobool11 = icmp ne i32 %and10, 0, !dbg !726
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !728
  br i1 %12, label %while.body, label %while.end, !dbg !720

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !729, metadata !DIExpression()), !dbg !731
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !732
  %14 = load i64, i64* %numWritten, align 8, !dbg !733
  %mul12 = mul i64 2, %14, !dbg !734
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !732
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !735
  %15 = load i32, i32* %byte, align 4, !dbg !736
  %conv15 = trunc i32 %15 to i8, !dbg !737
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !738
  %17 = load i64, i64* %numWritten, align 8, !dbg !739
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !738
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !740
  %18 = load i64, i64* %numWritten, align 8, !dbg !741
  %inc = add i64 %18, 1, !dbg !741
  store i64 %inc, i64* %numWritten, align 8, !dbg !741
  br label %while.cond, !dbg !720, !llvm.loop !742

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !744
  ret i64 %19, !dbg !745
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !746 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !749, metadata !DIExpression()), !dbg !750
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !751, metadata !DIExpression()), !dbg !752
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !753, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !755, metadata !DIExpression()), !dbg !756
  store i64 0, i64* %numWritten, align 8, !dbg !756
  br label %while.cond, !dbg !757

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !758
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !759
  %cmp = icmp ult i64 %0, %1, !dbg !760
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !761

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !762
  %3 = load i64, i64* %numWritten, align 8, !dbg !763
  %mul = mul i64 2, %3, !dbg !764
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !762
  %4 = load i32, i32* %arrayidx, align 4, !dbg !762
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !765
  %tobool = icmp ne i32 %call, 0, !dbg !765
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !766

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !767
  %6 = load i64, i64* %numWritten, align 8, !dbg !768
  %mul1 = mul i64 2, %6, !dbg !769
  %add = add i64 %mul1, 1, !dbg !770
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !767
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !767
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !771
  %tobool4 = icmp ne i32 %call3, 0, !dbg !766
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !772
  br i1 %8, label %while.body, label %while.end, !dbg !757

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !773, metadata !DIExpression()), !dbg !775
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !776
  %10 = load i64, i64* %numWritten, align 8, !dbg !777
  %mul5 = mul i64 2, %10, !dbg !778
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !776
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !779
  %11 = load i32, i32* %byte, align 4, !dbg !780
  %conv = trunc i32 %11 to i8, !dbg !781
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !782
  %13 = load i64, i64* %numWritten, align 8, !dbg !783
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !782
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !784
  %14 = load i64, i64* %numWritten, align 8, !dbg !785
  %inc = add i64 %14, 1, !dbg !785
  store i64 %inc, i64* %numWritten, align 8, !dbg !785
  br label %while.cond, !dbg !757, !llvm.loop !786

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !788
  ret i64 %15, !dbg !789
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !790 {
entry:
  ret i32 1, !dbg !793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !794 {
entry:
  ret i32 0, !dbg !795
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !796 {
entry:
  %call = call i32 @rand() #7, !dbg !797
  %rem = srem i32 %call, 2, !dbg !798
  ret i32 %rem, !dbg !799
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !800 {
entry:
  ret void, !dbg !801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !802 {
entry:
  ret void, !dbg !803
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !804 {
entry:
  ret void, !dbg !805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !806 {
entry:
  ret void, !dbg !807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !808 {
entry:
  ret void, !dbg !809
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !810 {
entry:
  ret void, !dbg !811
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !812 {
entry:
  ret void, !dbg !813
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !814 {
entry:
  ret void, !dbg !815
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !816 {
entry:
  ret void, !dbg !817
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !818 {
entry:
  ret void, !dbg !819
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !820 {
entry:
  ret void, !dbg !821
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !822 {
entry:
  ret void, !dbg !823
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !824 {
entry:
  ret void, !dbg !825
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !826 {
entry:
  ret void, !dbg !827
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !828 {
entry:
  ret void, !dbg !829
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !830 {
entry:
  ret void, !dbg !831
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !832 {
entry:
  ret void, !dbg !833
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !834 {
entry:
  ret void, !dbg !835
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

!llvm.dbg.cu = !{!44, !105, !108, !110, !112, !2}
!llvm.ident = !{!114, !114, !114, !114, !114, !114}
!llvm.module.flags = !{!115, !116, !117}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_740/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_740/source_code")
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
!106 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_740/source_code")
!107 = !{}
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_740/source_code")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_740/source_code")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54e.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_740/source_code")
!114 = !{!"clang version 12.0.0"}
!115 = !{i32 7, !"Dwarf Version", i32 4}
!116 = !{i32 2, !"Debug Info Version", i32 3}
!117 = !{i32 1, !"wchar_size", i32 4}
!118 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54_bad", scope: !45, file: !45, line: 47, type: !119, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!119 = !DISubroutineType(types: !120)
!120 = !{null}
!121 = !DILocalVariable(name: "data", scope: !118, file: !45, line: 49, type: !23)
!122 = !DILocation(line: 49, column: 9, scope: !118)
!123 = !DILocation(line: 51, column: 10, scope: !118)
!124 = !DILocalVariable(name: "recvResult", scope: !125, file: !45, line: 57, type: !23)
!125 = distinct !DILexicalBlock(scope: !118, file: !45, line: 52, column: 5)
!126 = !DILocation(line: 57, column: 13, scope: !125)
!127 = !DILocalVariable(name: "service", scope: !125, file: !45, line: 58, type: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !129)
!129 = !{!130, !131, !135, !139}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !128, file: !60, line: 240, baseType: !99, size: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !128, file: !60, line: 241, baseType: !132, size: 16, offset: 16)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !24)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !128, file: !60, line: 242, baseType: !136, size: 32, offset: 32)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !136, file: !60, line: 33, baseType: !89, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !128, file: !60, line: 245, baseType: !140, size: 64, offset: 64)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 8)
!143 = !DILocation(line: 58, column: 28, scope: !125)
!144 = !DILocalVariable(name: "listenSocket", scope: !125, file: !45, line: 59, type: !23)
!145 = !DILocation(line: 59, column: 16, scope: !125)
!146 = !DILocalVariable(name: "acceptSocket", scope: !125, file: !45, line: 60, type: !23)
!147 = !DILocation(line: 60, column: 16, scope: !125)
!148 = !DILocalVariable(name: "inputBuffer", scope: !125, file: !45, line: 61, type: !102)
!149 = !DILocation(line: 61, column: 14, scope: !125)
!150 = !DILocation(line: 62, column: 9, scope: !125)
!151 = !DILocation(line: 72, column: 28, scope: !152)
!152 = distinct !DILexicalBlock(scope: !125, file: !45, line: 63, column: 9)
!153 = !DILocation(line: 72, column: 26, scope: !152)
!154 = !DILocation(line: 73, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !45, line: 73, column: 17)
!156 = !DILocation(line: 73, column: 30, scope: !155)
!157 = !DILocation(line: 73, column: 17, scope: !152)
!158 = !DILocation(line: 75, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !45, line: 74, column: 13)
!160 = !DILocation(line: 77, column: 13, scope: !152)
!161 = !DILocation(line: 78, column: 21, scope: !152)
!162 = !DILocation(line: 78, column: 32, scope: !152)
!163 = !DILocation(line: 79, column: 21, scope: !152)
!164 = !DILocation(line: 79, column: 30, scope: !152)
!165 = !DILocation(line: 79, column: 37, scope: !152)
!166 = !DILocation(line: 80, column: 32, scope: !152)
!167 = !DILocation(line: 80, column: 21, scope: !152)
!168 = !DILocation(line: 80, column: 30, scope: !152)
!169 = !DILocation(line: 81, column: 22, scope: !170)
!170 = distinct !DILexicalBlock(scope: !152, file: !45, line: 81, column: 17)
!171 = !DILocation(line: 81, column: 36, scope: !170)
!172 = !DILocation(line: 81, column: 17, scope: !170)
!173 = !DILocation(line: 81, column: 81, scope: !170)
!174 = !DILocation(line: 81, column: 17, scope: !152)
!175 = !DILocation(line: 83, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !170, file: !45, line: 82, column: 13)
!177 = !DILocation(line: 85, column: 24, scope: !178)
!178 = distinct !DILexicalBlock(scope: !152, file: !45, line: 85, column: 17)
!179 = !DILocation(line: 85, column: 17, scope: !178)
!180 = !DILocation(line: 85, column: 54, scope: !178)
!181 = !DILocation(line: 85, column: 17, scope: !152)
!182 = !DILocation(line: 87, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !45, line: 86, column: 13)
!184 = !DILocation(line: 89, column: 35, scope: !152)
!185 = !DILocation(line: 89, column: 28, scope: !152)
!186 = !DILocation(line: 89, column: 26, scope: !152)
!187 = !DILocation(line: 90, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !152, file: !45, line: 90, column: 17)
!189 = !DILocation(line: 90, column: 30, scope: !188)
!190 = !DILocation(line: 90, column: 17, scope: !152)
!191 = !DILocation(line: 92, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !45, line: 91, column: 13)
!193 = !DILocation(line: 95, column: 31, scope: !152)
!194 = !DILocation(line: 95, column: 45, scope: !152)
!195 = !DILocation(line: 95, column: 26, scope: !152)
!196 = !DILocation(line: 95, column: 24, scope: !152)
!197 = !DILocation(line: 96, column: 17, scope: !198)
!198 = distinct !DILexicalBlock(scope: !152, file: !45, line: 96, column: 17)
!199 = !DILocation(line: 96, column: 28, scope: !198)
!200 = !DILocation(line: 96, column: 44, scope: !198)
!201 = !DILocation(line: 96, column: 47, scope: !198)
!202 = !DILocation(line: 96, column: 58, scope: !198)
!203 = !DILocation(line: 96, column: 17, scope: !152)
!204 = !DILocation(line: 98, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !198, file: !45, line: 97, column: 13)
!206 = !DILocation(line: 101, column: 25, scope: !152)
!207 = !DILocation(line: 101, column: 13, scope: !152)
!208 = !DILocation(line: 101, column: 37, scope: !152)
!209 = !DILocation(line: 103, column: 25, scope: !152)
!210 = !DILocation(line: 103, column: 20, scope: !152)
!211 = !DILocation(line: 103, column: 18, scope: !152)
!212 = !DILocation(line: 104, column: 9, scope: !152)
!213 = !DILocation(line: 106, column: 13, scope: !214)
!214 = distinct !DILexicalBlock(scope: !125, file: !45, line: 106, column: 13)
!215 = !DILocation(line: 106, column: 26, scope: !214)
!216 = !DILocation(line: 106, column: 13, scope: !125)
!217 = !DILocation(line: 108, column: 26, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !45, line: 107, column: 9)
!219 = !DILocation(line: 108, column: 13, scope: !218)
!220 = !DILocation(line: 109, column: 9, scope: !218)
!221 = !DILocation(line: 110, column: 13, scope: !222)
!222 = distinct !DILexicalBlock(scope: !125, file: !45, line: 110, column: 13)
!223 = !DILocation(line: 110, column: 26, scope: !222)
!224 = !DILocation(line: 110, column: 13, scope: !125)
!225 = !DILocation(line: 112, column: 26, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !45, line: 111, column: 9)
!227 = !DILocation(line: 112, column: 13, scope: !226)
!228 = !DILocation(line: 113, column: 9, scope: !226)
!229 = !DILocation(line: 121, column: 74, scope: !118)
!230 = !DILocation(line: 121, column: 5, scope: !118)
!231 = !DILocation(line: 122, column: 1, scope: !118)
!232 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 130, type: !119, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!233 = !DILocalVariable(name: "data", scope: !232, file: !45, line: 132, type: !23)
!234 = !DILocation(line: 132, column: 9, scope: !232)
!235 = !DILocation(line: 134, column: 10, scope: !232)
!236 = !DILocation(line: 137, column: 10, scope: !232)
!237 = !DILocation(line: 138, column: 78, scope: !232)
!238 = !DILocation(line: 138, column: 5, scope: !232)
!239 = !DILocation(line: 139, column: 1, scope: !232)
!240 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 143, type: !119, scopeLine: 144, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!241 = !DILocalVariable(name: "data", scope: !240, file: !45, line: 145, type: !23)
!242 = !DILocation(line: 145, column: 9, scope: !240)
!243 = !DILocation(line: 147, column: 10, scope: !240)
!244 = !DILocalVariable(name: "recvResult", scope: !245, file: !45, line: 153, type: !23)
!245 = distinct !DILexicalBlock(scope: !240, file: !45, line: 148, column: 5)
!246 = !DILocation(line: 153, column: 13, scope: !245)
!247 = !DILocalVariable(name: "service", scope: !245, file: !45, line: 154, type: !128)
!248 = !DILocation(line: 154, column: 28, scope: !245)
!249 = !DILocalVariable(name: "listenSocket", scope: !245, file: !45, line: 155, type: !23)
!250 = !DILocation(line: 155, column: 16, scope: !245)
!251 = !DILocalVariable(name: "acceptSocket", scope: !245, file: !45, line: 156, type: !23)
!252 = !DILocation(line: 156, column: 16, scope: !245)
!253 = !DILocalVariable(name: "inputBuffer", scope: !245, file: !45, line: 157, type: !102)
!254 = !DILocation(line: 157, column: 14, scope: !245)
!255 = !DILocation(line: 158, column: 9, scope: !245)
!256 = !DILocation(line: 168, column: 28, scope: !257)
!257 = distinct !DILexicalBlock(scope: !245, file: !45, line: 159, column: 9)
!258 = !DILocation(line: 168, column: 26, scope: !257)
!259 = !DILocation(line: 169, column: 17, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !45, line: 169, column: 17)
!261 = !DILocation(line: 169, column: 30, scope: !260)
!262 = !DILocation(line: 169, column: 17, scope: !257)
!263 = !DILocation(line: 171, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !45, line: 170, column: 13)
!265 = !DILocation(line: 173, column: 13, scope: !257)
!266 = !DILocation(line: 174, column: 21, scope: !257)
!267 = !DILocation(line: 174, column: 32, scope: !257)
!268 = !DILocation(line: 175, column: 21, scope: !257)
!269 = !DILocation(line: 175, column: 30, scope: !257)
!270 = !DILocation(line: 175, column: 37, scope: !257)
!271 = !DILocation(line: 176, column: 32, scope: !257)
!272 = !DILocation(line: 176, column: 21, scope: !257)
!273 = !DILocation(line: 176, column: 30, scope: !257)
!274 = !DILocation(line: 177, column: 22, scope: !275)
!275 = distinct !DILexicalBlock(scope: !257, file: !45, line: 177, column: 17)
!276 = !DILocation(line: 177, column: 36, scope: !275)
!277 = !DILocation(line: 177, column: 17, scope: !275)
!278 = !DILocation(line: 177, column: 81, scope: !275)
!279 = !DILocation(line: 177, column: 17, scope: !257)
!280 = !DILocation(line: 179, column: 17, scope: !281)
!281 = distinct !DILexicalBlock(scope: !275, file: !45, line: 178, column: 13)
!282 = !DILocation(line: 181, column: 24, scope: !283)
!283 = distinct !DILexicalBlock(scope: !257, file: !45, line: 181, column: 17)
!284 = !DILocation(line: 181, column: 17, scope: !283)
!285 = !DILocation(line: 181, column: 54, scope: !283)
!286 = !DILocation(line: 181, column: 17, scope: !257)
!287 = !DILocation(line: 183, column: 17, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !45, line: 182, column: 13)
!289 = !DILocation(line: 185, column: 35, scope: !257)
!290 = !DILocation(line: 185, column: 28, scope: !257)
!291 = !DILocation(line: 185, column: 26, scope: !257)
!292 = !DILocation(line: 186, column: 17, scope: !293)
!293 = distinct !DILexicalBlock(scope: !257, file: !45, line: 186, column: 17)
!294 = !DILocation(line: 186, column: 30, scope: !293)
!295 = !DILocation(line: 186, column: 17, scope: !257)
!296 = !DILocation(line: 188, column: 17, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !45, line: 187, column: 13)
!298 = !DILocation(line: 191, column: 31, scope: !257)
!299 = !DILocation(line: 191, column: 45, scope: !257)
!300 = !DILocation(line: 191, column: 26, scope: !257)
!301 = !DILocation(line: 191, column: 24, scope: !257)
!302 = !DILocation(line: 192, column: 17, scope: !303)
!303 = distinct !DILexicalBlock(scope: !257, file: !45, line: 192, column: 17)
!304 = !DILocation(line: 192, column: 28, scope: !303)
!305 = !DILocation(line: 192, column: 44, scope: !303)
!306 = !DILocation(line: 192, column: 47, scope: !303)
!307 = !DILocation(line: 192, column: 58, scope: !303)
!308 = !DILocation(line: 192, column: 17, scope: !257)
!309 = !DILocation(line: 194, column: 17, scope: !310)
!310 = distinct !DILexicalBlock(scope: !303, file: !45, line: 193, column: 13)
!311 = !DILocation(line: 197, column: 25, scope: !257)
!312 = !DILocation(line: 197, column: 13, scope: !257)
!313 = !DILocation(line: 197, column: 37, scope: !257)
!314 = !DILocation(line: 199, column: 25, scope: !257)
!315 = !DILocation(line: 199, column: 20, scope: !257)
!316 = !DILocation(line: 199, column: 18, scope: !257)
!317 = !DILocation(line: 200, column: 9, scope: !257)
!318 = !DILocation(line: 202, column: 13, scope: !319)
!319 = distinct !DILexicalBlock(scope: !245, file: !45, line: 202, column: 13)
!320 = !DILocation(line: 202, column: 26, scope: !319)
!321 = !DILocation(line: 202, column: 13, scope: !245)
!322 = !DILocation(line: 204, column: 26, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !45, line: 203, column: 9)
!324 = !DILocation(line: 204, column: 13, scope: !323)
!325 = !DILocation(line: 205, column: 9, scope: !323)
!326 = !DILocation(line: 206, column: 13, scope: !327)
!327 = distinct !DILexicalBlock(scope: !245, file: !45, line: 206, column: 13)
!328 = !DILocation(line: 206, column: 26, scope: !327)
!329 = !DILocation(line: 206, column: 13, scope: !245)
!330 = !DILocation(line: 208, column: 26, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !45, line: 207, column: 9)
!332 = !DILocation(line: 208, column: 13, scope: !331)
!333 = !DILocation(line: 209, column: 9, scope: !331)
!334 = !DILocation(line: 217, column: 78, scope: !240)
!335 = !DILocation(line: 217, column: 5, scope: !240)
!336 = !DILocation(line: 218, column: 1, scope: !240)
!337 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54_good", scope: !45, file: !45, line: 220, type: !119, scopeLine: 221, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!338 = !DILocation(line: 222, column: 5, scope: !337)
!339 = !DILocation(line: 223, column: 5, scope: !337)
!340 = !DILocation(line: 224, column: 1, scope: !337)
!341 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54b_badSink", scope: !106, file: !106, line: 47, type: !342, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !23}
!344 = !DILocalVariable(name: "data", arg: 1, scope: !341, file: !106, line: 47, type: !23)
!345 = !DILocation(line: 47, column: 79, scope: !341)
!346 = !DILocation(line: 49, column: 74, scope: !341)
!347 = !DILocation(line: 49, column: 5, scope: !341)
!348 = !DILocation(line: 50, column: 1, scope: !341)
!349 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54b_goodG2BSink", scope: !106, file: !106, line: 59, type: !342, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!350 = !DILocalVariable(name: "data", arg: 1, scope: !349, file: !106, line: 59, type: !23)
!351 = !DILocation(line: 59, column: 83, scope: !349)
!352 = !DILocation(line: 61, column: 78, scope: !349)
!353 = !DILocation(line: 61, column: 5, scope: !349)
!354 = !DILocation(line: 62, column: 1, scope: !349)
!355 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54b_goodB2GSink", scope: !106, file: !106, line: 67, type: !342, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!356 = !DILocalVariable(name: "data", arg: 1, scope: !355, file: !106, line: 67, type: !23)
!357 = !DILocation(line: 67, column: 83, scope: !355)
!358 = !DILocation(line: 69, column: 78, scope: !355)
!359 = !DILocation(line: 69, column: 5, scope: !355)
!360 = !DILocation(line: 70, column: 1, scope: !355)
!361 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54c_badSink", scope: !109, file: !109, line: 47, type: !342, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!362 = !DILocalVariable(name: "data", arg: 1, scope: !361, file: !109, line: 47, type: !23)
!363 = !DILocation(line: 47, column: 79, scope: !361)
!364 = !DILocation(line: 49, column: 74, scope: !361)
!365 = !DILocation(line: 49, column: 5, scope: !361)
!366 = !DILocation(line: 50, column: 1, scope: !361)
!367 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54c_goodG2BSink", scope: !109, file: !109, line: 59, type: !342, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!368 = !DILocalVariable(name: "data", arg: 1, scope: !367, file: !109, line: 59, type: !23)
!369 = !DILocation(line: 59, column: 83, scope: !367)
!370 = !DILocation(line: 61, column: 78, scope: !367)
!371 = !DILocation(line: 61, column: 5, scope: !367)
!372 = !DILocation(line: 62, column: 1, scope: !367)
!373 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54c_goodB2GSink", scope: !109, file: !109, line: 67, type: !342, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!374 = !DILocalVariable(name: "data", arg: 1, scope: !373, file: !109, line: 67, type: !23)
!375 = !DILocation(line: 67, column: 83, scope: !373)
!376 = !DILocation(line: 69, column: 78, scope: !373)
!377 = !DILocation(line: 69, column: 5, scope: !373)
!378 = !DILocation(line: 70, column: 1, scope: !373)
!379 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54d_badSink", scope: !111, file: !111, line: 47, type: !342, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !107)
!380 = !DILocalVariable(name: "data", arg: 1, scope: !379, file: !111, line: 47, type: !23)
!381 = !DILocation(line: 47, column: 79, scope: !379)
!382 = !DILocation(line: 49, column: 74, scope: !379)
!383 = !DILocation(line: 49, column: 5, scope: !379)
!384 = !DILocation(line: 50, column: 1, scope: !379)
!385 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54d_goodG2BSink", scope: !111, file: !111, line: 59, type: !342, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !107)
!386 = !DILocalVariable(name: "data", arg: 1, scope: !385, file: !111, line: 59, type: !23)
!387 = !DILocation(line: 59, column: 83, scope: !385)
!388 = !DILocation(line: 61, column: 78, scope: !385)
!389 = !DILocation(line: 61, column: 5, scope: !385)
!390 = !DILocation(line: 62, column: 1, scope: !385)
!391 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54d_goodB2GSink", scope: !111, file: !111, line: 67, type: !342, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !107)
!392 = !DILocalVariable(name: "data", arg: 1, scope: !391, file: !111, line: 67, type: !23)
!393 = !DILocation(line: 67, column: 83, scope: !391)
!394 = !DILocation(line: 69, column: 78, scope: !391)
!395 = !DILocation(line: 69, column: 5, scope: !391)
!396 = !DILocation(line: 70, column: 1, scope: !391)
!397 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54e_badSink", scope: !113, file: !113, line: 44, type: !342, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !107)
!398 = !DILocalVariable(name: "data", arg: 1, scope: !397, file: !113, line: 44, type: !23)
!399 = !DILocation(line: 44, column: 79, scope: !397)
!400 = !DILocalVariable(name: "i", scope: !401, file: !113, line: 47, type: !23)
!401 = distinct !DILexicalBlock(scope: !397, file: !113, line: 46, column: 5)
!402 = !DILocation(line: 47, column: 13, scope: !401)
!403 = !DILocalVariable(name: "buffer", scope: !401, file: !113, line: 48, type: !404)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 10)
!407 = !DILocation(line: 48, column: 13, scope: !401)
!408 = !DILocation(line: 51, column: 13, scope: !409)
!409 = distinct !DILexicalBlock(scope: !401, file: !113, line: 51, column: 13)
!410 = !DILocation(line: 51, column: 18, scope: !409)
!411 = !DILocation(line: 51, column: 13, scope: !401)
!412 = !DILocation(line: 53, column: 20, scope: !413)
!413 = distinct !DILexicalBlock(scope: !409, file: !113, line: 52, column: 9)
!414 = !DILocation(line: 53, column: 13, scope: !413)
!415 = !DILocation(line: 53, column: 26, scope: !413)
!416 = !DILocation(line: 55, column: 19, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !113, line: 55, column: 13)
!418 = !DILocation(line: 55, column: 17, scope: !417)
!419 = !DILocation(line: 55, column: 24, scope: !420)
!420 = distinct !DILexicalBlock(scope: !417, file: !113, line: 55, column: 13)
!421 = !DILocation(line: 55, column: 26, scope: !420)
!422 = !DILocation(line: 55, column: 13, scope: !417)
!423 = !DILocation(line: 57, column: 37, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !113, line: 56, column: 13)
!425 = !DILocation(line: 57, column: 30, scope: !424)
!426 = !DILocation(line: 57, column: 17, scope: !424)
!427 = !DILocation(line: 58, column: 13, scope: !424)
!428 = !DILocation(line: 55, column: 33, scope: !420)
!429 = !DILocation(line: 55, column: 13, scope: !420)
!430 = distinct !{!430, !422, !431, !432}
!431 = !DILocation(line: 58, column: 13, scope: !417)
!432 = !{!"llvm.loop.mustprogress"}
!433 = !DILocation(line: 59, column: 9, scope: !413)
!434 = !DILocation(line: 62, column: 13, scope: !435)
!435 = distinct !DILexicalBlock(scope: !409, file: !113, line: 61, column: 9)
!436 = !DILocation(line: 65, column: 1, scope: !397)
!437 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54e_goodG2BSink", scope: !113, file: !113, line: 72, type: !342, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !107)
!438 = !DILocalVariable(name: "data", arg: 1, scope: !437, file: !113, line: 72, type: !23)
!439 = !DILocation(line: 72, column: 83, scope: !437)
!440 = !DILocalVariable(name: "i", scope: !441, file: !113, line: 75, type: !23)
!441 = distinct !DILexicalBlock(scope: !437, file: !113, line: 74, column: 5)
!442 = !DILocation(line: 75, column: 13, scope: !441)
!443 = !DILocalVariable(name: "buffer", scope: !441, file: !113, line: 76, type: !404)
!444 = !DILocation(line: 76, column: 13, scope: !441)
!445 = !DILocation(line: 79, column: 13, scope: !446)
!446 = distinct !DILexicalBlock(scope: !441, file: !113, line: 79, column: 13)
!447 = !DILocation(line: 79, column: 18, scope: !446)
!448 = !DILocation(line: 79, column: 13, scope: !441)
!449 = !DILocation(line: 81, column: 20, scope: !450)
!450 = distinct !DILexicalBlock(scope: !446, file: !113, line: 80, column: 9)
!451 = !DILocation(line: 81, column: 13, scope: !450)
!452 = !DILocation(line: 81, column: 26, scope: !450)
!453 = !DILocation(line: 83, column: 19, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !113, line: 83, column: 13)
!455 = !DILocation(line: 83, column: 17, scope: !454)
!456 = !DILocation(line: 83, column: 24, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !113, line: 83, column: 13)
!458 = !DILocation(line: 83, column: 26, scope: !457)
!459 = !DILocation(line: 83, column: 13, scope: !454)
!460 = !DILocation(line: 85, column: 37, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !113, line: 84, column: 13)
!462 = !DILocation(line: 85, column: 30, scope: !461)
!463 = !DILocation(line: 85, column: 17, scope: !461)
!464 = !DILocation(line: 86, column: 13, scope: !461)
!465 = !DILocation(line: 83, column: 33, scope: !457)
!466 = !DILocation(line: 83, column: 13, scope: !457)
!467 = distinct !{!467, !459, !468, !432}
!468 = !DILocation(line: 86, column: 13, scope: !454)
!469 = !DILocation(line: 87, column: 9, scope: !450)
!470 = !DILocation(line: 90, column: 13, scope: !471)
!471 = distinct !DILexicalBlock(scope: !446, file: !113, line: 89, column: 9)
!472 = !DILocation(line: 93, column: 1, scope: !437)
!473 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_54e_goodB2GSink", scope: !113, file: !113, line: 96, type: !342, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !107)
!474 = !DILocalVariable(name: "data", arg: 1, scope: !473, file: !113, line: 96, type: !23)
!475 = !DILocation(line: 96, column: 83, scope: !473)
!476 = !DILocalVariable(name: "i", scope: !477, file: !113, line: 99, type: !23)
!477 = distinct !DILexicalBlock(scope: !473, file: !113, line: 98, column: 5)
!478 = !DILocation(line: 99, column: 13, scope: !477)
!479 = !DILocalVariable(name: "buffer", scope: !477, file: !113, line: 100, type: !404)
!480 = !DILocation(line: 100, column: 13, scope: !477)
!481 = !DILocation(line: 102, column: 13, scope: !482)
!482 = distinct !DILexicalBlock(scope: !477, file: !113, line: 102, column: 13)
!483 = !DILocation(line: 102, column: 18, scope: !482)
!484 = !DILocation(line: 102, column: 23, scope: !482)
!485 = !DILocation(line: 102, column: 26, scope: !482)
!486 = !DILocation(line: 102, column: 31, scope: !482)
!487 = !DILocation(line: 102, column: 13, scope: !477)
!488 = !DILocation(line: 104, column: 20, scope: !489)
!489 = distinct !DILexicalBlock(scope: !482, file: !113, line: 103, column: 9)
!490 = !DILocation(line: 104, column: 13, scope: !489)
!491 = !DILocation(line: 104, column: 26, scope: !489)
!492 = !DILocation(line: 106, column: 19, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !113, line: 106, column: 13)
!494 = !DILocation(line: 106, column: 17, scope: !493)
!495 = !DILocation(line: 106, column: 24, scope: !496)
!496 = distinct !DILexicalBlock(scope: !493, file: !113, line: 106, column: 13)
!497 = !DILocation(line: 106, column: 26, scope: !496)
!498 = !DILocation(line: 106, column: 13, scope: !493)
!499 = !DILocation(line: 108, column: 37, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !113, line: 107, column: 13)
!501 = !DILocation(line: 108, column: 30, scope: !500)
!502 = !DILocation(line: 108, column: 17, scope: !500)
!503 = !DILocation(line: 109, column: 13, scope: !500)
!504 = !DILocation(line: 106, column: 33, scope: !496)
!505 = !DILocation(line: 106, column: 13, scope: !496)
!506 = distinct !{!506, !498, !507, !432}
!507 = !DILocation(line: 109, column: 13, scope: !493)
!508 = !DILocation(line: 110, column: 9, scope: !489)
!509 = !DILocation(line: 113, column: 13, scope: !510)
!510 = distinct !DILexicalBlock(scope: !482, file: !113, line: 112, column: 9)
!511 = !DILocation(line: 116, column: 1, scope: !473)
!512 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !513, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !42}
!515 = !DILocalVariable(name: "line", arg: 1, scope: !512, file: !3, line: 11, type: !42)
!516 = !DILocation(line: 11, column: 25, scope: !512)
!517 = !DILocation(line: 13, column: 1, scope: !512)
!518 = !DILocation(line: 14, column: 8, scope: !519)
!519 = distinct !DILexicalBlock(scope: !512, file: !3, line: 14, column: 8)
!520 = !DILocation(line: 14, column: 13, scope: !519)
!521 = !DILocation(line: 14, column: 8, scope: !512)
!522 = !DILocation(line: 16, column: 24, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !3, line: 15, column: 5)
!524 = !DILocation(line: 16, column: 9, scope: !523)
!525 = !DILocation(line: 17, column: 5, scope: !523)
!526 = !DILocation(line: 18, column: 5, scope: !512)
!527 = !DILocation(line: 19, column: 1, scope: !512)
!528 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !513, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!529 = !DILocalVariable(name: "line", arg: 1, scope: !528, file: !3, line: 20, type: !42)
!530 = !DILocation(line: 20, column: 29, scope: !528)
!531 = !DILocation(line: 22, column: 8, scope: !532)
!532 = distinct !DILexicalBlock(scope: !528, file: !3, line: 22, column: 8)
!533 = !DILocation(line: 22, column: 13, scope: !532)
!534 = !DILocation(line: 22, column: 8, scope: !528)
!535 = !DILocation(line: 24, column: 24, scope: !536)
!536 = distinct !DILexicalBlock(scope: !532, file: !3, line: 23, column: 5)
!537 = !DILocation(line: 24, column: 9, scope: !536)
!538 = !DILocation(line: 25, column: 5, scope: !536)
!539 = !DILocation(line: 26, column: 1, scope: !528)
!540 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !541, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !543}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !545, line: 74, baseType: !23)
!545 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!546 = !DILocalVariable(name: "line", arg: 1, scope: !540, file: !3, line: 27, type: !543)
!547 = !DILocation(line: 27, column: 29, scope: !540)
!548 = !DILocation(line: 29, column: 8, scope: !549)
!549 = distinct !DILexicalBlock(scope: !540, file: !3, line: 29, column: 8)
!550 = !DILocation(line: 29, column: 13, scope: !549)
!551 = !DILocation(line: 29, column: 8, scope: !540)
!552 = !DILocation(line: 31, column: 27, scope: !553)
!553 = distinct !DILexicalBlock(scope: !549, file: !3, line: 30, column: 5)
!554 = !DILocation(line: 31, column: 9, scope: !553)
!555 = !DILocation(line: 32, column: 5, scope: !553)
!556 = !DILocation(line: 33, column: 1, scope: !540)
!557 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !342, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!558 = !DILocalVariable(name: "intNumber", arg: 1, scope: !557, file: !3, line: 35, type: !23)
!559 = !DILocation(line: 35, column: 24, scope: !557)
!560 = !DILocation(line: 37, column: 20, scope: !557)
!561 = !DILocation(line: 37, column: 5, scope: !557)
!562 = !DILocation(line: 38, column: 1, scope: !557)
!563 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !564, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !566}
!566 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!567 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !563, file: !3, line: 40, type: !566)
!568 = !DILocation(line: 40, column: 28, scope: !563)
!569 = !DILocation(line: 42, column: 21, scope: !563)
!570 = !DILocation(line: 42, column: 5, scope: !563)
!571 = !DILocation(line: 43, column: 1, scope: !563)
!572 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !573, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !575}
!575 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!576 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !572, file: !3, line: 45, type: !575)
!577 = !DILocation(line: 45, column: 28, scope: !572)
!578 = !DILocation(line: 47, column: 20, scope: !572)
!579 = !DILocation(line: 47, column: 5, scope: !572)
!580 = !DILocation(line: 48, column: 1, scope: !572)
!581 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !582, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !584}
!584 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!585 = !DILocalVariable(name: "longNumber", arg: 1, scope: !581, file: !3, line: 50, type: !584)
!586 = !DILocation(line: 50, column: 26, scope: !581)
!587 = !DILocation(line: 52, column: 21, scope: !581)
!588 = !DILocation(line: 52, column: 5, scope: !581)
!589 = !DILocation(line: 53, column: 1, scope: !581)
!590 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !591, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !593}
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !594, line: 27, baseType: !595)
!594 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !584)
!596 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !590, file: !3, line: 55, type: !593)
!597 = !DILocation(line: 55, column: 33, scope: !590)
!598 = !DILocation(line: 57, column: 29, scope: !590)
!599 = !DILocation(line: 57, column: 5, scope: !590)
!600 = !DILocation(line: 58, column: 1, scope: !590)
!601 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !602, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !604}
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !545, line: 46, baseType: !605)
!605 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!606 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !601, file: !3, line: 60, type: !604)
!607 = !DILocation(line: 60, column: 29, scope: !601)
!608 = !DILocation(line: 62, column: 21, scope: !601)
!609 = !DILocation(line: 62, column: 5, scope: !601)
!610 = !DILocation(line: 63, column: 1, scope: !601)
!611 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !612, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !43}
!614 = !DILocalVariable(name: "charHex", arg: 1, scope: !611, file: !3, line: 65, type: !43)
!615 = !DILocation(line: 65, column: 29, scope: !611)
!616 = !DILocation(line: 67, column: 22, scope: !611)
!617 = !DILocation(line: 67, column: 5, scope: !611)
!618 = !DILocation(line: 68, column: 1, scope: !611)
!619 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !620, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !544}
!622 = !DILocalVariable(name: "wideChar", arg: 1, scope: !619, file: !3, line: 70, type: !544)
!623 = !DILocation(line: 70, column: 29, scope: !619)
!624 = !DILocalVariable(name: "s", scope: !619, file: !3, line: 74, type: !625)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 64, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 2)
!628 = !DILocation(line: 74, column: 13, scope: !619)
!629 = !DILocation(line: 75, column: 16, scope: !619)
!630 = !DILocation(line: 75, column: 9, scope: !619)
!631 = !DILocation(line: 75, column: 14, scope: !619)
!632 = !DILocation(line: 76, column: 9, scope: !619)
!633 = !DILocation(line: 76, column: 14, scope: !619)
!634 = !DILocation(line: 77, column: 21, scope: !619)
!635 = !DILocation(line: 77, column: 5, scope: !619)
!636 = !DILocation(line: 78, column: 1, scope: !619)
!637 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !638, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !7}
!640 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !637, file: !3, line: 80, type: !7)
!641 = !DILocation(line: 80, column: 33, scope: !637)
!642 = !DILocation(line: 82, column: 20, scope: !637)
!643 = !DILocation(line: 82, column: 5, scope: !637)
!644 = !DILocation(line: 83, column: 1, scope: !637)
!645 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !646, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !25}
!648 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !645, file: !3, line: 85, type: !25)
!649 = !DILocation(line: 85, column: 45, scope: !645)
!650 = !DILocation(line: 87, column: 22, scope: !645)
!651 = !DILocation(line: 87, column: 5, scope: !645)
!652 = !DILocation(line: 88, column: 1, scope: !645)
!653 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !654, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !656}
!656 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!657 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !653, file: !3, line: 90, type: !656)
!658 = !DILocation(line: 90, column: 29, scope: !653)
!659 = !DILocation(line: 92, column: 20, scope: !653)
!660 = !DILocation(line: 92, column: 5, scope: !653)
!661 = !DILocation(line: 93, column: 1, scope: !653)
!662 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !663, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !667, line: 100, baseType: !668)
!667 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_740/source_code")
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !667, line: 96, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !668, file: !667, line: 98, baseType: !23, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !668, file: !667, line: 99, baseType: !23, size: 32, offset: 32)
!672 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !662, file: !3, line: 95, type: !665)
!673 = !DILocation(line: 95, column: 40, scope: !662)
!674 = !DILocation(line: 97, column: 26, scope: !662)
!675 = !DILocation(line: 97, column: 47, scope: !662)
!676 = !DILocation(line: 97, column: 55, scope: !662)
!677 = !DILocation(line: 97, column: 76, scope: !662)
!678 = !DILocation(line: 97, column: 5, scope: !662)
!679 = !DILocation(line: 98, column: 1, scope: !662)
!680 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !681, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !683, !604}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!684 = !DILocalVariable(name: "bytes", arg: 1, scope: !680, file: !3, line: 100, type: !683)
!685 = !DILocation(line: 100, column: 38, scope: !680)
!686 = !DILocalVariable(name: "numBytes", arg: 2, scope: !680, file: !3, line: 100, type: !604)
!687 = !DILocation(line: 100, column: 52, scope: !680)
!688 = !DILocalVariable(name: "i", scope: !680, file: !3, line: 102, type: !604)
!689 = !DILocation(line: 102, column: 12, scope: !680)
!690 = !DILocation(line: 103, column: 12, scope: !691)
!691 = distinct !DILexicalBlock(scope: !680, file: !3, line: 103, column: 5)
!692 = !DILocation(line: 103, column: 10, scope: !691)
!693 = !DILocation(line: 103, column: 17, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !3, line: 103, column: 5)
!695 = !DILocation(line: 103, column: 21, scope: !694)
!696 = !DILocation(line: 103, column: 19, scope: !694)
!697 = !DILocation(line: 103, column: 5, scope: !691)
!698 = !DILocation(line: 105, column: 24, scope: !699)
!699 = distinct !DILexicalBlock(scope: !694, file: !3, line: 104, column: 5)
!700 = !DILocation(line: 105, column: 30, scope: !699)
!701 = !DILocation(line: 105, column: 9, scope: !699)
!702 = !DILocation(line: 106, column: 5, scope: !699)
!703 = !DILocation(line: 103, column: 31, scope: !694)
!704 = !DILocation(line: 103, column: 5, scope: !694)
!705 = distinct !{!705, !697, !706, !432}
!706 = !DILocation(line: 106, column: 5, scope: !691)
!707 = !DILocation(line: 107, column: 5, scope: !680)
!708 = !DILocation(line: 108, column: 1, scope: !680)
!709 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !710, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!710 = !DISubroutineType(types: !711)
!711 = !{!604, !683, !604, !42}
!712 = !DILocalVariable(name: "bytes", arg: 1, scope: !709, file: !3, line: 113, type: !683)
!713 = !DILocation(line: 113, column: 39, scope: !709)
!714 = !DILocalVariable(name: "numBytes", arg: 2, scope: !709, file: !3, line: 113, type: !604)
!715 = !DILocation(line: 113, column: 53, scope: !709)
!716 = !DILocalVariable(name: "hex", arg: 3, scope: !709, file: !3, line: 113, type: !42)
!717 = !DILocation(line: 113, column: 71, scope: !709)
!718 = !DILocalVariable(name: "numWritten", scope: !709, file: !3, line: 115, type: !604)
!719 = !DILocation(line: 115, column: 12, scope: !709)
!720 = !DILocation(line: 121, column: 5, scope: !709)
!721 = !DILocation(line: 121, column: 12, scope: !709)
!722 = !DILocation(line: 121, column: 25, scope: !709)
!723 = !DILocation(line: 121, column: 23, scope: !709)
!724 = !DILocation(line: 121, column: 34, scope: !709)
!725 = !DILocation(line: 121, column: 37, scope: !709)
!726 = !DILocation(line: 121, column: 67, scope: !709)
!727 = !DILocation(line: 121, column: 70, scope: !709)
!728 = !DILocation(line: 0, scope: !709)
!729 = !DILocalVariable(name: "byte", scope: !730, file: !3, line: 123, type: !23)
!730 = distinct !DILexicalBlock(scope: !709, file: !3, line: 122, column: 5)
!731 = !DILocation(line: 123, column: 13, scope: !730)
!732 = !DILocation(line: 124, column: 17, scope: !730)
!733 = !DILocation(line: 124, column: 25, scope: !730)
!734 = !DILocation(line: 124, column: 23, scope: !730)
!735 = !DILocation(line: 124, column: 9, scope: !730)
!736 = !DILocation(line: 125, column: 45, scope: !730)
!737 = !DILocation(line: 125, column: 29, scope: !730)
!738 = !DILocation(line: 125, column: 9, scope: !730)
!739 = !DILocation(line: 125, column: 15, scope: !730)
!740 = !DILocation(line: 125, column: 27, scope: !730)
!741 = !DILocation(line: 126, column: 9, scope: !730)
!742 = distinct !{!742, !720, !743, !432}
!743 = !DILocation(line: 127, column: 5, scope: !709)
!744 = !DILocation(line: 129, column: 12, scope: !709)
!745 = !DILocation(line: 129, column: 5, scope: !709)
!746 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !747, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!747 = !DISubroutineType(types: !748)
!748 = !{!604, !683, !604, !543}
!749 = !DILocalVariable(name: "bytes", arg: 1, scope: !746, file: !3, line: 135, type: !683)
!750 = !DILocation(line: 135, column: 41, scope: !746)
!751 = !DILocalVariable(name: "numBytes", arg: 2, scope: !746, file: !3, line: 135, type: !604)
!752 = !DILocation(line: 135, column: 55, scope: !746)
!753 = !DILocalVariable(name: "hex", arg: 3, scope: !746, file: !3, line: 135, type: !543)
!754 = !DILocation(line: 135, column: 76, scope: !746)
!755 = !DILocalVariable(name: "numWritten", scope: !746, file: !3, line: 137, type: !604)
!756 = !DILocation(line: 137, column: 12, scope: !746)
!757 = !DILocation(line: 143, column: 5, scope: !746)
!758 = !DILocation(line: 143, column: 12, scope: !746)
!759 = !DILocation(line: 143, column: 25, scope: !746)
!760 = !DILocation(line: 143, column: 23, scope: !746)
!761 = !DILocation(line: 143, column: 34, scope: !746)
!762 = !DILocation(line: 143, column: 47, scope: !746)
!763 = !DILocation(line: 143, column: 55, scope: !746)
!764 = !DILocation(line: 143, column: 53, scope: !746)
!765 = !DILocation(line: 143, column: 37, scope: !746)
!766 = !DILocation(line: 143, column: 68, scope: !746)
!767 = !DILocation(line: 143, column: 81, scope: !746)
!768 = !DILocation(line: 143, column: 89, scope: !746)
!769 = !DILocation(line: 143, column: 87, scope: !746)
!770 = !DILocation(line: 143, column: 100, scope: !746)
!771 = !DILocation(line: 143, column: 71, scope: !746)
!772 = !DILocation(line: 0, scope: !746)
!773 = !DILocalVariable(name: "byte", scope: !774, file: !3, line: 145, type: !23)
!774 = distinct !DILexicalBlock(scope: !746, file: !3, line: 144, column: 5)
!775 = !DILocation(line: 145, column: 13, scope: !774)
!776 = !DILocation(line: 146, column: 18, scope: !774)
!777 = !DILocation(line: 146, column: 26, scope: !774)
!778 = !DILocation(line: 146, column: 24, scope: !774)
!779 = !DILocation(line: 146, column: 9, scope: !774)
!780 = !DILocation(line: 147, column: 45, scope: !774)
!781 = !DILocation(line: 147, column: 29, scope: !774)
!782 = !DILocation(line: 147, column: 9, scope: !774)
!783 = !DILocation(line: 147, column: 15, scope: !774)
!784 = !DILocation(line: 147, column: 27, scope: !774)
!785 = !DILocation(line: 148, column: 9, scope: !774)
!786 = distinct !{!786, !757, !787, !432}
!787 = !DILocation(line: 149, column: 5, scope: !746)
!788 = !DILocation(line: 151, column: 12, scope: !746)
!789 = !DILocation(line: 151, column: 5, scope: !746)
!790 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !791, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!791 = !DISubroutineType(types: !792)
!792 = !{!23}
!793 = !DILocation(line: 158, column: 5, scope: !790)
!794 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !791, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!795 = !DILocation(line: 163, column: 5, scope: !794)
!796 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !791, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!797 = !DILocation(line: 168, column: 13, scope: !796)
!798 = !DILocation(line: 168, column: 20, scope: !796)
!799 = !DILocation(line: 168, column: 5, scope: !796)
!800 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !119, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!801 = !DILocation(line: 187, column: 16, scope: !800)
!802 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !119, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!803 = !DILocation(line: 188, column: 16, scope: !802)
!804 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !119, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!805 = !DILocation(line: 189, column: 16, scope: !804)
!806 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !119, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!807 = !DILocation(line: 190, column: 16, scope: !806)
!808 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !119, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!809 = !DILocation(line: 191, column: 16, scope: !808)
!810 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !119, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!811 = !DILocation(line: 192, column: 16, scope: !810)
!812 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !119, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!813 = !DILocation(line: 193, column: 16, scope: !812)
!814 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !119, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!815 = !DILocation(line: 194, column: 16, scope: !814)
!816 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !119, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!817 = !DILocation(line: 195, column: 16, scope: !816)
!818 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !119, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!819 = !DILocation(line: 198, column: 15, scope: !818)
!820 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !119, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!821 = !DILocation(line: 199, column: 15, scope: !820)
!822 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !119, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!823 = !DILocation(line: 200, column: 15, scope: !822)
!824 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !119, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!825 = !DILocation(line: 201, column: 15, scope: !824)
!826 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !119, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!827 = !DILocation(line: 202, column: 15, scope: !826)
!828 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !119, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!829 = !DILocation(line: 203, column: 15, scope: !828)
!830 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !119, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!831 = !DILocation(line: 204, column: 15, scope: !830)
!832 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !119, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!833 = !DILocation(line: 205, column: 15, scope: !832)
!834 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !119, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!835 = !DILocation(line: 206, column: 15, scope: !834)
