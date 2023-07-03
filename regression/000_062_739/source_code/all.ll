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
@.str.21 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53_bad() #0 !dbg !116 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !119, metadata !DIExpression()), !dbg !120
  store i32 -1, i32* %data, align 4, !dbg !121
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !122, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !125, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !142, metadata !DIExpression()), !dbg !143
  store i32 -1, i32* %listenSocket, align 4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !144, metadata !DIExpression()), !dbg !145
  store i32 -1, i32* %acceptSocket, align 4, !dbg !145
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !146, metadata !DIExpression()), !dbg !147
  br label %do.body, !dbg !148

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !149
  store i32 %call, i32* %listenSocket, align 4, !dbg !151
  %0 = load i32, i32* %listenSocket, align 4, !dbg !152
  %cmp = icmp eq i32 %0, -1, !dbg !154
  br i1 %cmp, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !156

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !158
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !158
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !159
  store i16 2, i16* %sin_family, align 4, !dbg !160
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !161
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !162
  store i32 0, i32* %s_addr, align 4, !dbg !163
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !164
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !165
  store i16 %call1, i16* %sin_port, align 2, !dbg !166
  %2 = load i32, i32* %listenSocket, align 4, !dbg !167
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !169
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !170
  %cmp3 = icmp eq i32 %call2, -1, !dbg !171
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !172

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !173

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !175
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !177
  %cmp7 = icmp eq i32 %call6, -1, !dbg !178
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !179

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !180

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !182
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !183
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !184
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !185
  %cmp11 = icmp eq i32 %6, -1, !dbg !187
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !188

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !189

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !191
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !192
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !193
  %conv = trunc i64 %call14 to i32, !dbg !193
  store i32 %conv, i32* %recvResult, align 4, !dbg !194
  %8 = load i32, i32* %recvResult, align 4, !dbg !195
  %cmp15 = icmp eq i32 %8, -1, !dbg !197
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !198

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !199
  %cmp17 = icmp eq i32 %9, 0, !dbg !200
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !201

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !202

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !204
  %idxprom = sext i32 %10 to i64, !dbg !205
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !205
  store i8 0, i8* %arrayidx, align 1, !dbg !206
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !207
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !208
  store i32 %call22, i32* %data, align 4, !dbg !209
  br label %do.end, !dbg !210

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !211
  %cmp23 = icmp ne i32 %11, -1, !dbg !213
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !214

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !215
  %call26 = call i32 @close(i32 %12), !dbg !217
  br label %if.end27, !dbg !218

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !219
  %cmp28 = icmp ne i32 %13, -1, !dbg !221
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !222

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !223
  %call31 = call i32 @close(i32 %14), !dbg !225
  br label %if.end32, !dbg !226

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data, align 4, !dbg !227
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53b_badSink(i32 %15), !dbg !228
  ret void, !dbg !229
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
define dso_local void @goodG2B() #0 !dbg !230 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !231, metadata !DIExpression()), !dbg !232
  store i32 -1, i32* %data, align 4, !dbg !233
  store i32 7, i32* %data, align 4, !dbg !234
  %0 = load i32, i32* %data, align 4, !dbg !235
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53b_goodG2BSink(i32 %0), !dbg !236
  ret void, !dbg !237
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !238 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !239, metadata !DIExpression()), !dbg !240
  store i32 -1, i32* %data, align 4, !dbg !241
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !242, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !247, metadata !DIExpression()), !dbg !248
  store i32 -1, i32* %listenSocket, align 4, !dbg !248
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !249, metadata !DIExpression()), !dbg !250
  store i32 -1, i32* %acceptSocket, align 4, !dbg !250
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !251, metadata !DIExpression()), !dbg !252
  br label %do.body, !dbg !253

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !254
  store i32 %call, i32* %listenSocket, align 4, !dbg !256
  %0 = load i32, i32* %listenSocket, align 4, !dbg !257
  %cmp = icmp eq i32 %0, -1, !dbg !259
  br i1 %cmp, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !261

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !263
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !263
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !264
  store i16 2, i16* %sin_family, align 4, !dbg !265
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !266
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !267
  store i32 0, i32* %s_addr, align 4, !dbg !268
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !269
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !270
  store i16 %call1, i16* %sin_port, align 2, !dbg !271
  %2 = load i32, i32* %listenSocket, align 4, !dbg !272
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !274
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !275
  %cmp3 = icmp eq i32 %call2, -1, !dbg !276
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !277

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !278

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !280
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !282
  %cmp7 = icmp eq i32 %call6, -1, !dbg !283
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !284

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !285

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !287
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !288
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !289
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !290
  %cmp11 = icmp eq i32 %6, -1, !dbg !292
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !293

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !294

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !296
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !297
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !298
  %conv = trunc i64 %call14 to i32, !dbg !298
  store i32 %conv, i32* %recvResult, align 4, !dbg !299
  %8 = load i32, i32* %recvResult, align 4, !dbg !300
  %cmp15 = icmp eq i32 %8, -1, !dbg !302
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !303

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !304
  %cmp17 = icmp eq i32 %9, 0, !dbg !305
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !306

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !307

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !309
  %idxprom = sext i32 %10 to i64, !dbg !310
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !310
  store i8 0, i8* %arrayidx, align 1, !dbg !311
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !312
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !313
  store i32 %call22, i32* %data, align 4, !dbg !314
  br label %do.end, !dbg !315

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !316
  %cmp23 = icmp ne i32 %11, -1, !dbg !318
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !319

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !320
  %call26 = call i32 @close(i32 %12), !dbg !322
  br label %if.end27, !dbg !323

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !324
  %cmp28 = icmp ne i32 %13, -1, !dbg !326
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !327

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !328
  %call31 = call i32 @close(i32 %14), !dbg !330
  br label %if.end32, !dbg !331

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data, align 4, !dbg !332
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53b_goodB2GSink(i32 %15), !dbg !333
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53_good() #0 !dbg !335 {
entry:
  call void @goodG2B(), !dbg !336
  call void @goodB2G(), !dbg !337
  ret void, !dbg !338
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53b_badSink(i32 %data) #0 !dbg !339 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i32, i32* %data.addr, align 4, !dbg !344
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53c_badSink(i32 %0), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53b_goodG2BSink(i32 %data) #0 !dbg !347 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load i32, i32* %data.addr, align 4, !dbg !350
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53c_goodG2BSink(i32 %0), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53b_goodB2GSink(i32 %data) #0 !dbg !353 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !354, metadata !DIExpression()), !dbg !355
  %0 = load i32, i32* %data.addr, align 4, !dbg !356
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53c_goodB2GSink(i32 %0), !dbg !357
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53c_badSink(i32 %data) #0 !dbg !359 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !360, metadata !DIExpression()), !dbg !361
  %0 = load i32, i32* %data.addr, align 4, !dbg !362
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53d_badSink(i32 %0), !dbg !363
  ret void, !dbg !364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53c_goodG2BSink(i32 %data) #0 !dbg !365 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !366, metadata !DIExpression()), !dbg !367
  %0 = load i32, i32* %data.addr, align 4, !dbg !368
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53d_goodG2BSink(i32 %0), !dbg !369
  ret void, !dbg !370
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53c_goodB2GSink(i32 %data) #0 !dbg !371 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i32, i32* %data.addr, align 4, !dbg !374
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53d_goodB2GSink(i32 %0), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53d_badSink(i32 %data) #0 !dbg !377 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.declare(metadata i32* %i, metadata !380, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !383, metadata !DIExpression()), !dbg !387
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !387
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !387
  %1 = load i32, i32* %data.addr, align 4, !dbg !388
  %cmp = icmp sge i32 %1, 0, !dbg !390
  br i1 %cmp, label %if.then, label %if.else, !dbg !391

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !392
  %idxprom = sext i32 %2 to i64, !dbg !394
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !394
  store i32 1, i32* %arrayidx, align 4, !dbg !395
  store i32 0, i32* %i, align 4, !dbg !396
  br label %for.cond, !dbg !398

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !399
  %cmp1 = icmp slt i32 %3, 10, !dbg !401
  br i1 %cmp1, label %for.body, label %for.end, !dbg !402

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !403
  %idxprom2 = sext i32 %4 to i64, !dbg !405
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !405
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !405
  call void @printIntLine(i32 %5), !dbg !406
  br label %for.inc, !dbg !407

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !408
  %inc = add nsw i32 %6, 1, !dbg !408
  store i32 %inc, i32* %i, align 4, !dbg !408
  br label %for.cond, !dbg !409, !llvm.loop !410

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !413

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !414
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53d_goodG2BSink(i32 %data) #0 !dbg !417 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !418, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.declare(metadata i32* %i, metadata !420, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !424
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !424
  %1 = load i32, i32* %data.addr, align 4, !dbg !425
  %cmp = icmp sge i32 %1, 0, !dbg !427
  br i1 %cmp, label %if.then, label %if.else, !dbg !428

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !429
  %idxprom = sext i32 %2 to i64, !dbg !431
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !431
  store i32 1, i32* %arrayidx, align 4, !dbg !432
  store i32 0, i32* %i, align 4, !dbg !433
  br label %for.cond, !dbg !435

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !436
  %cmp1 = icmp slt i32 %3, 10, !dbg !438
  br i1 %cmp1, label %for.body, label %for.end, !dbg !439

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !440
  %idxprom2 = sext i32 %4 to i64, !dbg !442
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !442
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !442
  call void @printIntLine(i32 %5), !dbg !443
  br label %for.inc, !dbg !444

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !445
  %inc = add nsw i32 %6, 1, !dbg !445
  store i32 %inc, i32* %i, align 4, !dbg !445
  br label %for.cond, !dbg !446, !llvm.loop !447

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !449

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !450
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53d_goodB2GSink(i32 %data) #0 !dbg !453 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.declare(metadata i32* %i, metadata !456, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !460
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !460
  %1 = load i32, i32* %data.addr, align 4, !dbg !461
  %cmp = icmp sge i32 %1, 0, !dbg !463
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !464

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !465
  %cmp1 = icmp slt i32 %2, 10, !dbg !466
  br i1 %cmp1, label %if.then, label %if.else, !dbg !467

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !468
  %idxprom = sext i32 %3 to i64, !dbg !470
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !470
  store i32 1, i32* %arrayidx, align 4, !dbg !471
  store i32 0, i32* %i, align 4, !dbg !472
  br label %for.cond, !dbg !474

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !475
  %cmp2 = icmp slt i32 %4, 10, !dbg !477
  br i1 %cmp2, label %for.body, label %for.end, !dbg !478

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !479
  %idxprom3 = sext i32 %5 to i64, !dbg !481
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !481
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !481
  call void @printIntLine(i32 %6), !dbg !482
  br label %for.inc, !dbg !483

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !484
  %inc = add nsw i32 %7, 1, !dbg !484
  store i32 %inc, i32* %i, align 4, !dbg !484
  br label %for.cond, !dbg !485, !llvm.loop !486

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !488

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !489
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !492 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !495, metadata !DIExpression()), !dbg !496
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)), !dbg !497
  %0 = load i8*, i8** %line.addr, align 8, !dbg !498
  %cmp = icmp ne i8* %0, null, !dbg !500
  br i1 %cmp, label %if.then, label %if.end, !dbg !501

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !502
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.22, i64 0, i64 0), i8* %1), !dbg !504
  br label %if.end, !dbg !505

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !506
  ret void, !dbg !507
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !508 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !509, metadata !DIExpression()), !dbg !510
  %0 = load i8*, i8** %line.addr, align 8, !dbg !511
  %cmp = icmp ne i8* %0, null, !dbg !513
  br i1 %cmp, label %if.then, label %if.end, !dbg !514

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !515
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.22, i64 0, i64 0), i8* %1), !dbg !517
  br label %if.end, !dbg !518

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !520 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !526, metadata !DIExpression()), !dbg !527
  %0 = load i32*, i32** %line.addr, align 8, !dbg !528
  %cmp = icmp ne i32* %0, null, !dbg !530
  br i1 %cmp, label %if.then, label %if.end, !dbg !531

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !532
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !534
  br label %if.end, !dbg !535

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !536
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !537 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !538, metadata !DIExpression()), !dbg !539
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !540
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !541
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !543 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !547, metadata !DIExpression()), !dbg !548
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !549
  %conv = sext i16 %0 to i32, !dbg !549
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !550
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !552 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !556, metadata !DIExpression()), !dbg !557
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !558
  %conv = fpext float %0 to double, !dbg !558
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !559
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !561 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !565, metadata !DIExpression()), !dbg !566
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !567
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !568
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !570 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !576, metadata !DIExpression()), !dbg !577
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !578
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !579
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !581 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !586, metadata !DIExpression()), !dbg !587
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !588
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !589
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !591 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !594, metadata !DIExpression()), !dbg !595
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !596
  %conv = sext i8 %0 to i32, !dbg !596
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !597
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !599 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !602, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !604, metadata !DIExpression()), !dbg !608
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !609
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !610
  store i32 %0, i32* %arrayidx, align 4, !dbg !611
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !612
  store i32 0, i32* %arrayidx1, align 4, !dbg !613
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !614
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !615
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !617 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !620, metadata !DIExpression()), !dbg !621
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !622
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !623
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !625 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !628, metadata !DIExpression()), !dbg !629
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !630
  %conv = zext i8 %0 to i32, !dbg !630
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !631
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !633 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !637, metadata !DIExpression()), !dbg !638
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !639
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !640
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !642 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !652, metadata !DIExpression()), !dbg !653
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !654
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !655
  %1 = load i32, i32* %intOne, align 4, !dbg !655
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !656
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !657
  %3 = load i32, i32* %intTwo, align 4, !dbg !657
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !658
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !660 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !664, metadata !DIExpression()), !dbg !665
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !666, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.declare(metadata i64* %i, metadata !668, metadata !DIExpression()), !dbg !669
  store i64 0, i64* %i, align 8, !dbg !670
  br label %for.cond, !dbg !672

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !673
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !675
  %cmp = icmp ult i64 %0, %1, !dbg !676
  br i1 %cmp, label %for.body, label %for.end, !dbg !677

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !678
  %3 = load i64, i64* %i, align 8, !dbg !680
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !678
  %4 = load i8, i8* %arrayidx, align 1, !dbg !678
  %conv = zext i8 %4 to i32, !dbg !678
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !681
  br label %for.inc, !dbg !682

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !683
  %inc = add i64 %5, 1, !dbg !683
  store i64 %inc, i64* %i, align 8, !dbg !683
  br label %for.cond, !dbg !684, !llvm.loop !685

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !687
  ret void, !dbg !688
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !689 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !692, metadata !DIExpression()), !dbg !693
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !694, metadata !DIExpression()), !dbg !695
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !696, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !698, metadata !DIExpression()), !dbg !699
  store i64 0, i64* %numWritten, align 8, !dbg !699
  br label %while.cond, !dbg !700

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !701
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !702
  %cmp = icmp ult i64 %0, %1, !dbg !703
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !704

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !705
  %2 = load i16*, i16** %call, align 8, !dbg !705
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !705
  %4 = load i64, i64* %numWritten, align 8, !dbg !705
  %mul = mul i64 2, %4, !dbg !705
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !705
  %5 = load i8, i8* %arrayidx, align 1, !dbg !705
  %conv = sext i8 %5 to i32, !dbg !705
  %idxprom = sext i32 %conv to i64, !dbg !705
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !705
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !705
  %conv2 = zext i16 %6 to i32, !dbg !705
  %and = and i32 %conv2, 4096, !dbg !705
  %tobool = icmp ne i32 %and, 0, !dbg !705
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !706

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !707
  %7 = load i16*, i16** %call3, align 8, !dbg !707
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !707
  %9 = load i64, i64* %numWritten, align 8, !dbg !707
  %mul4 = mul i64 2, %9, !dbg !707
  %add = add i64 %mul4, 1, !dbg !707
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !707
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !707
  %conv6 = sext i8 %10 to i32, !dbg !707
  %idxprom7 = sext i32 %conv6 to i64, !dbg !707
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !707
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !707
  %conv9 = zext i16 %11 to i32, !dbg !707
  %and10 = and i32 %conv9, 4096, !dbg !707
  %tobool11 = icmp ne i32 %and10, 0, !dbg !706
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !708
  br i1 %12, label %while.body, label %while.end, !dbg !700

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !709, metadata !DIExpression()), !dbg !711
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !712
  %14 = load i64, i64* %numWritten, align 8, !dbg !713
  %mul12 = mul i64 2, %14, !dbg !714
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !712
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !715
  %15 = load i32, i32* %byte, align 4, !dbg !716
  %conv15 = trunc i32 %15 to i8, !dbg !717
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !718
  %17 = load i64, i64* %numWritten, align 8, !dbg !719
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !718
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !720
  %18 = load i64, i64* %numWritten, align 8, !dbg !721
  %inc = add i64 %18, 1, !dbg !721
  store i64 %inc, i64* %numWritten, align 8, !dbg !721
  br label %while.cond, !dbg !700, !llvm.loop !722

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !724
  ret i64 %19, !dbg !725
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !726 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !729, metadata !DIExpression()), !dbg !730
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !731, metadata !DIExpression()), !dbg !732
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !733, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !735, metadata !DIExpression()), !dbg !736
  store i64 0, i64* %numWritten, align 8, !dbg !736
  br label %while.cond, !dbg !737

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !738
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !739
  %cmp = icmp ult i64 %0, %1, !dbg !740
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !741

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !742
  %3 = load i64, i64* %numWritten, align 8, !dbg !743
  %mul = mul i64 2, %3, !dbg !744
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !742
  %4 = load i32, i32* %arrayidx, align 4, !dbg !742
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !745
  %tobool = icmp ne i32 %call, 0, !dbg !745
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !746

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !747
  %6 = load i64, i64* %numWritten, align 8, !dbg !748
  %mul1 = mul i64 2, %6, !dbg !749
  %add = add i64 %mul1, 1, !dbg !750
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !747
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !747
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !751
  %tobool4 = icmp ne i32 %call3, 0, !dbg !746
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !752
  br i1 %8, label %while.body, label %while.end, !dbg !737

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !753, metadata !DIExpression()), !dbg !755
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !756
  %10 = load i64, i64* %numWritten, align 8, !dbg !757
  %mul5 = mul i64 2, %10, !dbg !758
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !756
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !759
  %11 = load i32, i32* %byte, align 4, !dbg !760
  %conv = trunc i32 %11 to i8, !dbg !761
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !762
  %13 = load i64, i64* %numWritten, align 8, !dbg !763
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !762
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !764
  %14 = load i64, i64* %numWritten, align 8, !dbg !765
  %inc = add i64 %14, 1, !dbg !765
  store i64 %inc, i64* %numWritten, align 8, !dbg !765
  br label %while.cond, !dbg !737, !llvm.loop !766

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !768
  ret i64 %15, !dbg !769
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !770 {
entry:
  ret i32 1, !dbg !773
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !774 {
entry:
  ret i32 0, !dbg !775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !776 {
entry:
  %call = call i32 @rand() #7, !dbg !777
  %rem = srem i32 %call, 2, !dbg !778
  ret i32 %rem, !dbg !779
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !780 {
entry:
  ret void, !dbg !781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !782 {
entry:
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !784 {
entry:
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !786 {
entry:
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !788 {
entry:
  ret void, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !790 {
entry:
  ret void, !dbg !791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !792 {
entry:
  ret void, !dbg !793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !794 {
entry:
  ret void, !dbg !795
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !796 {
entry:
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !798 {
entry:
  ret void, !dbg !799
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !800 {
entry:
  ret void, !dbg !801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !802 {
entry:
  ret void, !dbg !803
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !804 {
entry:
  ret void, !dbg !805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !806 {
entry:
  ret void, !dbg !807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !808 {
entry:
  ret void, !dbg !809
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !810 {
entry:
  ret void, !dbg !811
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !812 {
entry:
  ret void, !dbg !813
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !814 {
entry:
  ret void, !dbg !815
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

!llvm.dbg.cu = !{!44, !105, !108, !110, !2}
!llvm.ident = !{!112, !112, !112, !112, !112}
!llvm.module.flags = !{!113, !114, !115}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_739/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_739/source_code")
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
!106 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_739/source_code")
!107 = !{}
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_739/source_code")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_739/source_code")
!112 = !{!"clang version 12.0.0"}
!113 = !{i32 7, !"Dwarf Version", i32 4}
!114 = !{i32 2, !"Debug Info Version", i32 3}
!115 = !{i32 1, !"wchar_size", i32 4}
!116 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53_bad", scope: !45, file: !45, line: 47, type: !117, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!117 = !DISubroutineType(types: !118)
!118 = !{null}
!119 = !DILocalVariable(name: "data", scope: !116, file: !45, line: 49, type: !23)
!120 = !DILocation(line: 49, column: 9, scope: !116)
!121 = !DILocation(line: 51, column: 10, scope: !116)
!122 = !DILocalVariable(name: "recvResult", scope: !123, file: !45, line: 57, type: !23)
!123 = distinct !DILexicalBlock(scope: !116, file: !45, line: 52, column: 5)
!124 = !DILocation(line: 57, column: 13, scope: !123)
!125 = !DILocalVariable(name: "service", scope: !123, file: !45, line: 58, type: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !60, line: 238, size: 128, elements: !127)
!127 = !{!128, !129, !133, !137}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !126, file: !60, line: 240, baseType: !99, size: 16)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !126, file: !60, line: 241, baseType: !130, size: 16, offset: 16)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !60, line: 119, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !24)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !126, file: !60, line: 242, baseType: !134, size: 32, offset: 32)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !134, file: !60, line: 33, baseType: !89, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !126, file: !60, line: 245, baseType: !138, size: 64, offset: 64)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 8)
!141 = !DILocation(line: 58, column: 28, scope: !123)
!142 = !DILocalVariable(name: "listenSocket", scope: !123, file: !45, line: 59, type: !23)
!143 = !DILocation(line: 59, column: 16, scope: !123)
!144 = !DILocalVariable(name: "acceptSocket", scope: !123, file: !45, line: 60, type: !23)
!145 = !DILocation(line: 60, column: 16, scope: !123)
!146 = !DILocalVariable(name: "inputBuffer", scope: !123, file: !45, line: 61, type: !102)
!147 = !DILocation(line: 61, column: 14, scope: !123)
!148 = !DILocation(line: 62, column: 9, scope: !123)
!149 = !DILocation(line: 72, column: 28, scope: !150)
!150 = distinct !DILexicalBlock(scope: !123, file: !45, line: 63, column: 9)
!151 = !DILocation(line: 72, column: 26, scope: !150)
!152 = !DILocation(line: 73, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !45, line: 73, column: 17)
!154 = !DILocation(line: 73, column: 30, scope: !153)
!155 = !DILocation(line: 73, column: 17, scope: !150)
!156 = !DILocation(line: 75, column: 17, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !45, line: 74, column: 13)
!158 = !DILocation(line: 77, column: 13, scope: !150)
!159 = !DILocation(line: 78, column: 21, scope: !150)
!160 = !DILocation(line: 78, column: 32, scope: !150)
!161 = !DILocation(line: 79, column: 21, scope: !150)
!162 = !DILocation(line: 79, column: 30, scope: !150)
!163 = !DILocation(line: 79, column: 37, scope: !150)
!164 = !DILocation(line: 80, column: 32, scope: !150)
!165 = !DILocation(line: 80, column: 21, scope: !150)
!166 = !DILocation(line: 80, column: 30, scope: !150)
!167 = !DILocation(line: 81, column: 22, scope: !168)
!168 = distinct !DILexicalBlock(scope: !150, file: !45, line: 81, column: 17)
!169 = !DILocation(line: 81, column: 36, scope: !168)
!170 = !DILocation(line: 81, column: 17, scope: !168)
!171 = !DILocation(line: 81, column: 81, scope: !168)
!172 = !DILocation(line: 81, column: 17, scope: !150)
!173 = !DILocation(line: 83, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !168, file: !45, line: 82, column: 13)
!175 = !DILocation(line: 85, column: 24, scope: !176)
!176 = distinct !DILexicalBlock(scope: !150, file: !45, line: 85, column: 17)
!177 = !DILocation(line: 85, column: 17, scope: !176)
!178 = !DILocation(line: 85, column: 54, scope: !176)
!179 = !DILocation(line: 85, column: 17, scope: !150)
!180 = !DILocation(line: 87, column: 17, scope: !181)
!181 = distinct !DILexicalBlock(scope: !176, file: !45, line: 86, column: 13)
!182 = !DILocation(line: 89, column: 35, scope: !150)
!183 = !DILocation(line: 89, column: 28, scope: !150)
!184 = !DILocation(line: 89, column: 26, scope: !150)
!185 = !DILocation(line: 90, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !150, file: !45, line: 90, column: 17)
!187 = !DILocation(line: 90, column: 30, scope: !186)
!188 = !DILocation(line: 90, column: 17, scope: !150)
!189 = !DILocation(line: 92, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !45, line: 91, column: 13)
!191 = !DILocation(line: 95, column: 31, scope: !150)
!192 = !DILocation(line: 95, column: 45, scope: !150)
!193 = !DILocation(line: 95, column: 26, scope: !150)
!194 = !DILocation(line: 95, column: 24, scope: !150)
!195 = !DILocation(line: 96, column: 17, scope: !196)
!196 = distinct !DILexicalBlock(scope: !150, file: !45, line: 96, column: 17)
!197 = !DILocation(line: 96, column: 28, scope: !196)
!198 = !DILocation(line: 96, column: 44, scope: !196)
!199 = !DILocation(line: 96, column: 47, scope: !196)
!200 = !DILocation(line: 96, column: 58, scope: !196)
!201 = !DILocation(line: 96, column: 17, scope: !150)
!202 = !DILocation(line: 98, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !196, file: !45, line: 97, column: 13)
!204 = !DILocation(line: 101, column: 25, scope: !150)
!205 = !DILocation(line: 101, column: 13, scope: !150)
!206 = !DILocation(line: 101, column: 37, scope: !150)
!207 = !DILocation(line: 103, column: 25, scope: !150)
!208 = !DILocation(line: 103, column: 20, scope: !150)
!209 = !DILocation(line: 103, column: 18, scope: !150)
!210 = !DILocation(line: 104, column: 9, scope: !150)
!211 = !DILocation(line: 106, column: 13, scope: !212)
!212 = distinct !DILexicalBlock(scope: !123, file: !45, line: 106, column: 13)
!213 = !DILocation(line: 106, column: 26, scope: !212)
!214 = !DILocation(line: 106, column: 13, scope: !123)
!215 = !DILocation(line: 108, column: 26, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !45, line: 107, column: 9)
!217 = !DILocation(line: 108, column: 13, scope: !216)
!218 = !DILocation(line: 109, column: 9, scope: !216)
!219 = !DILocation(line: 110, column: 13, scope: !220)
!220 = distinct !DILexicalBlock(scope: !123, file: !45, line: 110, column: 13)
!221 = !DILocation(line: 110, column: 26, scope: !220)
!222 = !DILocation(line: 110, column: 13, scope: !123)
!223 = !DILocation(line: 112, column: 26, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !45, line: 111, column: 9)
!225 = !DILocation(line: 112, column: 13, scope: !224)
!226 = !DILocation(line: 113, column: 9, scope: !224)
!227 = !DILocation(line: 121, column: 74, scope: !116)
!228 = !DILocation(line: 121, column: 5, scope: !116)
!229 = !DILocation(line: 122, column: 1, scope: !116)
!230 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 130, type: !117, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!231 = !DILocalVariable(name: "data", scope: !230, file: !45, line: 132, type: !23)
!232 = !DILocation(line: 132, column: 9, scope: !230)
!233 = !DILocation(line: 134, column: 10, scope: !230)
!234 = !DILocation(line: 137, column: 10, scope: !230)
!235 = !DILocation(line: 138, column: 78, scope: !230)
!236 = !DILocation(line: 138, column: 5, scope: !230)
!237 = !DILocation(line: 139, column: 1, scope: !230)
!238 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 143, type: !117, scopeLine: 144, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!239 = !DILocalVariable(name: "data", scope: !238, file: !45, line: 145, type: !23)
!240 = !DILocation(line: 145, column: 9, scope: !238)
!241 = !DILocation(line: 147, column: 10, scope: !238)
!242 = !DILocalVariable(name: "recvResult", scope: !243, file: !45, line: 153, type: !23)
!243 = distinct !DILexicalBlock(scope: !238, file: !45, line: 148, column: 5)
!244 = !DILocation(line: 153, column: 13, scope: !243)
!245 = !DILocalVariable(name: "service", scope: !243, file: !45, line: 154, type: !126)
!246 = !DILocation(line: 154, column: 28, scope: !243)
!247 = !DILocalVariable(name: "listenSocket", scope: !243, file: !45, line: 155, type: !23)
!248 = !DILocation(line: 155, column: 16, scope: !243)
!249 = !DILocalVariable(name: "acceptSocket", scope: !243, file: !45, line: 156, type: !23)
!250 = !DILocation(line: 156, column: 16, scope: !243)
!251 = !DILocalVariable(name: "inputBuffer", scope: !243, file: !45, line: 157, type: !102)
!252 = !DILocation(line: 157, column: 14, scope: !243)
!253 = !DILocation(line: 158, column: 9, scope: !243)
!254 = !DILocation(line: 168, column: 28, scope: !255)
!255 = distinct !DILexicalBlock(scope: !243, file: !45, line: 159, column: 9)
!256 = !DILocation(line: 168, column: 26, scope: !255)
!257 = !DILocation(line: 169, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !45, line: 169, column: 17)
!259 = !DILocation(line: 169, column: 30, scope: !258)
!260 = !DILocation(line: 169, column: 17, scope: !255)
!261 = !DILocation(line: 171, column: 17, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !45, line: 170, column: 13)
!263 = !DILocation(line: 173, column: 13, scope: !255)
!264 = !DILocation(line: 174, column: 21, scope: !255)
!265 = !DILocation(line: 174, column: 32, scope: !255)
!266 = !DILocation(line: 175, column: 21, scope: !255)
!267 = !DILocation(line: 175, column: 30, scope: !255)
!268 = !DILocation(line: 175, column: 37, scope: !255)
!269 = !DILocation(line: 176, column: 32, scope: !255)
!270 = !DILocation(line: 176, column: 21, scope: !255)
!271 = !DILocation(line: 176, column: 30, scope: !255)
!272 = !DILocation(line: 177, column: 22, scope: !273)
!273 = distinct !DILexicalBlock(scope: !255, file: !45, line: 177, column: 17)
!274 = !DILocation(line: 177, column: 36, scope: !273)
!275 = !DILocation(line: 177, column: 17, scope: !273)
!276 = !DILocation(line: 177, column: 81, scope: !273)
!277 = !DILocation(line: 177, column: 17, scope: !255)
!278 = !DILocation(line: 179, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !273, file: !45, line: 178, column: 13)
!280 = !DILocation(line: 181, column: 24, scope: !281)
!281 = distinct !DILexicalBlock(scope: !255, file: !45, line: 181, column: 17)
!282 = !DILocation(line: 181, column: 17, scope: !281)
!283 = !DILocation(line: 181, column: 54, scope: !281)
!284 = !DILocation(line: 181, column: 17, scope: !255)
!285 = !DILocation(line: 183, column: 17, scope: !286)
!286 = distinct !DILexicalBlock(scope: !281, file: !45, line: 182, column: 13)
!287 = !DILocation(line: 185, column: 35, scope: !255)
!288 = !DILocation(line: 185, column: 28, scope: !255)
!289 = !DILocation(line: 185, column: 26, scope: !255)
!290 = !DILocation(line: 186, column: 17, scope: !291)
!291 = distinct !DILexicalBlock(scope: !255, file: !45, line: 186, column: 17)
!292 = !DILocation(line: 186, column: 30, scope: !291)
!293 = !DILocation(line: 186, column: 17, scope: !255)
!294 = !DILocation(line: 188, column: 17, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !45, line: 187, column: 13)
!296 = !DILocation(line: 191, column: 31, scope: !255)
!297 = !DILocation(line: 191, column: 45, scope: !255)
!298 = !DILocation(line: 191, column: 26, scope: !255)
!299 = !DILocation(line: 191, column: 24, scope: !255)
!300 = !DILocation(line: 192, column: 17, scope: !301)
!301 = distinct !DILexicalBlock(scope: !255, file: !45, line: 192, column: 17)
!302 = !DILocation(line: 192, column: 28, scope: !301)
!303 = !DILocation(line: 192, column: 44, scope: !301)
!304 = !DILocation(line: 192, column: 47, scope: !301)
!305 = !DILocation(line: 192, column: 58, scope: !301)
!306 = !DILocation(line: 192, column: 17, scope: !255)
!307 = !DILocation(line: 194, column: 17, scope: !308)
!308 = distinct !DILexicalBlock(scope: !301, file: !45, line: 193, column: 13)
!309 = !DILocation(line: 197, column: 25, scope: !255)
!310 = !DILocation(line: 197, column: 13, scope: !255)
!311 = !DILocation(line: 197, column: 37, scope: !255)
!312 = !DILocation(line: 199, column: 25, scope: !255)
!313 = !DILocation(line: 199, column: 20, scope: !255)
!314 = !DILocation(line: 199, column: 18, scope: !255)
!315 = !DILocation(line: 200, column: 9, scope: !255)
!316 = !DILocation(line: 202, column: 13, scope: !317)
!317 = distinct !DILexicalBlock(scope: !243, file: !45, line: 202, column: 13)
!318 = !DILocation(line: 202, column: 26, scope: !317)
!319 = !DILocation(line: 202, column: 13, scope: !243)
!320 = !DILocation(line: 204, column: 26, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !45, line: 203, column: 9)
!322 = !DILocation(line: 204, column: 13, scope: !321)
!323 = !DILocation(line: 205, column: 9, scope: !321)
!324 = !DILocation(line: 206, column: 13, scope: !325)
!325 = distinct !DILexicalBlock(scope: !243, file: !45, line: 206, column: 13)
!326 = !DILocation(line: 206, column: 26, scope: !325)
!327 = !DILocation(line: 206, column: 13, scope: !243)
!328 = !DILocation(line: 208, column: 26, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !45, line: 207, column: 9)
!330 = !DILocation(line: 208, column: 13, scope: !329)
!331 = !DILocation(line: 209, column: 9, scope: !329)
!332 = !DILocation(line: 217, column: 78, scope: !238)
!333 = !DILocation(line: 217, column: 5, scope: !238)
!334 = !DILocation(line: 218, column: 1, scope: !238)
!335 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53_good", scope: !45, file: !45, line: 220, type: !117, scopeLine: 221, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !107)
!336 = !DILocation(line: 222, column: 5, scope: !335)
!337 = !DILocation(line: 223, column: 5, scope: !335)
!338 = !DILocation(line: 224, column: 1, scope: !335)
!339 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53b_badSink", scope: !106, file: !106, line: 47, type: !340, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !23}
!342 = !DILocalVariable(name: "data", arg: 1, scope: !339, file: !106, line: 47, type: !23)
!343 = !DILocation(line: 47, column: 79, scope: !339)
!344 = !DILocation(line: 49, column: 74, scope: !339)
!345 = !DILocation(line: 49, column: 5, scope: !339)
!346 = !DILocation(line: 50, column: 1, scope: !339)
!347 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53b_goodG2BSink", scope: !106, file: !106, line: 59, type: !340, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!348 = !DILocalVariable(name: "data", arg: 1, scope: !347, file: !106, line: 59, type: !23)
!349 = !DILocation(line: 59, column: 83, scope: !347)
!350 = !DILocation(line: 61, column: 78, scope: !347)
!351 = !DILocation(line: 61, column: 5, scope: !347)
!352 = !DILocation(line: 62, column: 1, scope: !347)
!353 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53b_goodB2GSink", scope: !106, file: !106, line: 67, type: !340, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !107)
!354 = !DILocalVariable(name: "data", arg: 1, scope: !353, file: !106, line: 67, type: !23)
!355 = !DILocation(line: 67, column: 83, scope: !353)
!356 = !DILocation(line: 69, column: 78, scope: !353)
!357 = !DILocation(line: 69, column: 5, scope: !353)
!358 = !DILocation(line: 70, column: 1, scope: !353)
!359 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53c_badSink", scope: !109, file: !109, line: 47, type: !340, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!360 = !DILocalVariable(name: "data", arg: 1, scope: !359, file: !109, line: 47, type: !23)
!361 = !DILocation(line: 47, column: 79, scope: !359)
!362 = !DILocation(line: 49, column: 74, scope: !359)
!363 = !DILocation(line: 49, column: 5, scope: !359)
!364 = !DILocation(line: 50, column: 1, scope: !359)
!365 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53c_goodG2BSink", scope: !109, file: !109, line: 59, type: !340, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!366 = !DILocalVariable(name: "data", arg: 1, scope: !365, file: !109, line: 59, type: !23)
!367 = !DILocation(line: 59, column: 83, scope: !365)
!368 = !DILocation(line: 61, column: 78, scope: !365)
!369 = !DILocation(line: 61, column: 5, scope: !365)
!370 = !DILocation(line: 62, column: 1, scope: !365)
!371 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53c_goodB2GSink", scope: !109, file: !109, line: 67, type: !340, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !107)
!372 = !DILocalVariable(name: "data", arg: 1, scope: !371, file: !109, line: 67, type: !23)
!373 = !DILocation(line: 67, column: 83, scope: !371)
!374 = !DILocation(line: 69, column: 78, scope: !371)
!375 = !DILocation(line: 69, column: 5, scope: !371)
!376 = !DILocation(line: 70, column: 1, scope: !371)
!377 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53d_badSink", scope: !111, file: !111, line: 44, type: !340, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !107)
!378 = !DILocalVariable(name: "data", arg: 1, scope: !377, file: !111, line: 44, type: !23)
!379 = !DILocation(line: 44, column: 79, scope: !377)
!380 = !DILocalVariable(name: "i", scope: !381, file: !111, line: 47, type: !23)
!381 = distinct !DILexicalBlock(scope: !377, file: !111, line: 46, column: 5)
!382 = !DILocation(line: 47, column: 13, scope: !381)
!383 = !DILocalVariable(name: "buffer", scope: !381, file: !111, line: 48, type: !384)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 10)
!387 = !DILocation(line: 48, column: 13, scope: !381)
!388 = !DILocation(line: 51, column: 13, scope: !389)
!389 = distinct !DILexicalBlock(scope: !381, file: !111, line: 51, column: 13)
!390 = !DILocation(line: 51, column: 18, scope: !389)
!391 = !DILocation(line: 51, column: 13, scope: !381)
!392 = !DILocation(line: 53, column: 20, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !111, line: 52, column: 9)
!394 = !DILocation(line: 53, column: 13, scope: !393)
!395 = !DILocation(line: 53, column: 26, scope: !393)
!396 = !DILocation(line: 55, column: 19, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !111, line: 55, column: 13)
!398 = !DILocation(line: 55, column: 17, scope: !397)
!399 = !DILocation(line: 55, column: 24, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !111, line: 55, column: 13)
!401 = !DILocation(line: 55, column: 26, scope: !400)
!402 = !DILocation(line: 55, column: 13, scope: !397)
!403 = !DILocation(line: 57, column: 37, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !111, line: 56, column: 13)
!405 = !DILocation(line: 57, column: 30, scope: !404)
!406 = !DILocation(line: 57, column: 17, scope: !404)
!407 = !DILocation(line: 58, column: 13, scope: !404)
!408 = !DILocation(line: 55, column: 33, scope: !400)
!409 = !DILocation(line: 55, column: 13, scope: !400)
!410 = distinct !{!410, !402, !411, !412}
!411 = !DILocation(line: 58, column: 13, scope: !397)
!412 = !{!"llvm.loop.mustprogress"}
!413 = !DILocation(line: 59, column: 9, scope: !393)
!414 = !DILocation(line: 62, column: 13, scope: !415)
!415 = distinct !DILexicalBlock(scope: !389, file: !111, line: 61, column: 9)
!416 = !DILocation(line: 65, column: 1, scope: !377)
!417 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53d_goodG2BSink", scope: !111, file: !111, line: 72, type: !340, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !107)
!418 = !DILocalVariable(name: "data", arg: 1, scope: !417, file: !111, line: 72, type: !23)
!419 = !DILocation(line: 72, column: 83, scope: !417)
!420 = !DILocalVariable(name: "i", scope: !421, file: !111, line: 75, type: !23)
!421 = distinct !DILexicalBlock(scope: !417, file: !111, line: 74, column: 5)
!422 = !DILocation(line: 75, column: 13, scope: !421)
!423 = !DILocalVariable(name: "buffer", scope: !421, file: !111, line: 76, type: !384)
!424 = !DILocation(line: 76, column: 13, scope: !421)
!425 = !DILocation(line: 79, column: 13, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !111, line: 79, column: 13)
!427 = !DILocation(line: 79, column: 18, scope: !426)
!428 = !DILocation(line: 79, column: 13, scope: !421)
!429 = !DILocation(line: 81, column: 20, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !111, line: 80, column: 9)
!431 = !DILocation(line: 81, column: 13, scope: !430)
!432 = !DILocation(line: 81, column: 26, scope: !430)
!433 = !DILocation(line: 83, column: 19, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !111, line: 83, column: 13)
!435 = !DILocation(line: 83, column: 17, scope: !434)
!436 = !DILocation(line: 83, column: 24, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !111, line: 83, column: 13)
!438 = !DILocation(line: 83, column: 26, scope: !437)
!439 = !DILocation(line: 83, column: 13, scope: !434)
!440 = !DILocation(line: 85, column: 37, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !111, line: 84, column: 13)
!442 = !DILocation(line: 85, column: 30, scope: !441)
!443 = !DILocation(line: 85, column: 17, scope: !441)
!444 = !DILocation(line: 86, column: 13, scope: !441)
!445 = !DILocation(line: 83, column: 33, scope: !437)
!446 = !DILocation(line: 83, column: 13, scope: !437)
!447 = distinct !{!447, !439, !448, !412}
!448 = !DILocation(line: 86, column: 13, scope: !434)
!449 = !DILocation(line: 87, column: 9, scope: !430)
!450 = !DILocation(line: 90, column: 13, scope: !451)
!451 = distinct !DILexicalBlock(scope: !426, file: !111, line: 89, column: 9)
!452 = !DILocation(line: 93, column: 1, scope: !417)
!453 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_53d_goodB2GSink", scope: !111, file: !111, line: 96, type: !340, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !107)
!454 = !DILocalVariable(name: "data", arg: 1, scope: !453, file: !111, line: 96, type: !23)
!455 = !DILocation(line: 96, column: 83, scope: !453)
!456 = !DILocalVariable(name: "i", scope: !457, file: !111, line: 99, type: !23)
!457 = distinct !DILexicalBlock(scope: !453, file: !111, line: 98, column: 5)
!458 = !DILocation(line: 99, column: 13, scope: !457)
!459 = !DILocalVariable(name: "buffer", scope: !457, file: !111, line: 100, type: !384)
!460 = !DILocation(line: 100, column: 13, scope: !457)
!461 = !DILocation(line: 102, column: 13, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !111, line: 102, column: 13)
!463 = !DILocation(line: 102, column: 18, scope: !462)
!464 = !DILocation(line: 102, column: 23, scope: !462)
!465 = !DILocation(line: 102, column: 26, scope: !462)
!466 = !DILocation(line: 102, column: 31, scope: !462)
!467 = !DILocation(line: 102, column: 13, scope: !457)
!468 = !DILocation(line: 104, column: 20, scope: !469)
!469 = distinct !DILexicalBlock(scope: !462, file: !111, line: 103, column: 9)
!470 = !DILocation(line: 104, column: 13, scope: !469)
!471 = !DILocation(line: 104, column: 26, scope: !469)
!472 = !DILocation(line: 106, column: 19, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !111, line: 106, column: 13)
!474 = !DILocation(line: 106, column: 17, scope: !473)
!475 = !DILocation(line: 106, column: 24, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !111, line: 106, column: 13)
!477 = !DILocation(line: 106, column: 26, scope: !476)
!478 = !DILocation(line: 106, column: 13, scope: !473)
!479 = !DILocation(line: 108, column: 37, scope: !480)
!480 = distinct !DILexicalBlock(scope: !476, file: !111, line: 107, column: 13)
!481 = !DILocation(line: 108, column: 30, scope: !480)
!482 = !DILocation(line: 108, column: 17, scope: !480)
!483 = !DILocation(line: 109, column: 13, scope: !480)
!484 = !DILocation(line: 106, column: 33, scope: !476)
!485 = !DILocation(line: 106, column: 13, scope: !476)
!486 = distinct !{!486, !478, !487, !412}
!487 = !DILocation(line: 109, column: 13, scope: !473)
!488 = !DILocation(line: 110, column: 9, scope: !469)
!489 = !DILocation(line: 113, column: 13, scope: !490)
!490 = distinct !DILexicalBlock(scope: !462, file: !111, line: 112, column: 9)
!491 = !DILocation(line: 116, column: 1, scope: !453)
!492 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !493, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !42}
!495 = !DILocalVariable(name: "line", arg: 1, scope: !492, file: !3, line: 11, type: !42)
!496 = !DILocation(line: 11, column: 25, scope: !492)
!497 = !DILocation(line: 13, column: 1, scope: !492)
!498 = !DILocation(line: 14, column: 8, scope: !499)
!499 = distinct !DILexicalBlock(scope: !492, file: !3, line: 14, column: 8)
!500 = !DILocation(line: 14, column: 13, scope: !499)
!501 = !DILocation(line: 14, column: 8, scope: !492)
!502 = !DILocation(line: 16, column: 24, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !3, line: 15, column: 5)
!504 = !DILocation(line: 16, column: 9, scope: !503)
!505 = !DILocation(line: 17, column: 5, scope: !503)
!506 = !DILocation(line: 18, column: 5, scope: !492)
!507 = !DILocation(line: 19, column: 1, scope: !492)
!508 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !493, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!509 = !DILocalVariable(name: "line", arg: 1, scope: !508, file: !3, line: 20, type: !42)
!510 = !DILocation(line: 20, column: 29, scope: !508)
!511 = !DILocation(line: 22, column: 8, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !3, line: 22, column: 8)
!513 = !DILocation(line: 22, column: 13, scope: !512)
!514 = !DILocation(line: 22, column: 8, scope: !508)
!515 = !DILocation(line: 24, column: 24, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !3, line: 23, column: 5)
!517 = !DILocation(line: 24, column: 9, scope: !516)
!518 = !DILocation(line: 25, column: 5, scope: !516)
!519 = !DILocation(line: 26, column: 1, scope: !508)
!520 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !521, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !525, line: 74, baseType: !23)
!525 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!526 = !DILocalVariable(name: "line", arg: 1, scope: !520, file: !3, line: 27, type: !523)
!527 = !DILocation(line: 27, column: 29, scope: !520)
!528 = !DILocation(line: 29, column: 8, scope: !529)
!529 = distinct !DILexicalBlock(scope: !520, file: !3, line: 29, column: 8)
!530 = !DILocation(line: 29, column: 13, scope: !529)
!531 = !DILocation(line: 29, column: 8, scope: !520)
!532 = !DILocation(line: 31, column: 27, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !3, line: 30, column: 5)
!534 = !DILocation(line: 31, column: 9, scope: !533)
!535 = !DILocation(line: 32, column: 5, scope: !533)
!536 = !DILocation(line: 33, column: 1, scope: !520)
!537 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !340, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!538 = !DILocalVariable(name: "intNumber", arg: 1, scope: !537, file: !3, line: 35, type: !23)
!539 = !DILocation(line: 35, column: 24, scope: !537)
!540 = !DILocation(line: 37, column: 20, scope: !537)
!541 = !DILocation(line: 37, column: 5, scope: !537)
!542 = !DILocation(line: 38, column: 1, scope: !537)
!543 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !544, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !546}
!546 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!547 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !543, file: !3, line: 40, type: !546)
!548 = !DILocation(line: 40, column: 28, scope: !543)
!549 = !DILocation(line: 42, column: 21, scope: !543)
!550 = !DILocation(line: 42, column: 5, scope: !543)
!551 = !DILocation(line: 43, column: 1, scope: !543)
!552 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !553, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !555}
!555 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!556 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !552, file: !3, line: 45, type: !555)
!557 = !DILocation(line: 45, column: 28, scope: !552)
!558 = !DILocation(line: 47, column: 20, scope: !552)
!559 = !DILocation(line: 47, column: 5, scope: !552)
!560 = !DILocation(line: 48, column: 1, scope: !552)
!561 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !562, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !564}
!564 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!565 = !DILocalVariable(name: "longNumber", arg: 1, scope: !561, file: !3, line: 50, type: !564)
!566 = !DILocation(line: 50, column: 26, scope: !561)
!567 = !DILocation(line: 52, column: 21, scope: !561)
!568 = !DILocation(line: 52, column: 5, scope: !561)
!569 = !DILocation(line: 53, column: 1, scope: !561)
!570 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !571, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !573}
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !574, line: 27, baseType: !575)
!574 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !564)
!576 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !570, file: !3, line: 55, type: !573)
!577 = !DILocation(line: 55, column: 33, scope: !570)
!578 = !DILocation(line: 57, column: 29, scope: !570)
!579 = !DILocation(line: 57, column: 5, scope: !570)
!580 = !DILocation(line: 58, column: 1, scope: !570)
!581 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !582, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !584}
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !525, line: 46, baseType: !585)
!585 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!586 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !581, file: !3, line: 60, type: !584)
!587 = !DILocation(line: 60, column: 29, scope: !581)
!588 = !DILocation(line: 62, column: 21, scope: !581)
!589 = !DILocation(line: 62, column: 5, scope: !581)
!590 = !DILocation(line: 63, column: 1, scope: !581)
!591 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !592, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !43}
!594 = !DILocalVariable(name: "charHex", arg: 1, scope: !591, file: !3, line: 65, type: !43)
!595 = !DILocation(line: 65, column: 29, scope: !591)
!596 = !DILocation(line: 67, column: 22, scope: !591)
!597 = !DILocation(line: 67, column: 5, scope: !591)
!598 = !DILocation(line: 68, column: 1, scope: !591)
!599 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !600, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !524}
!602 = !DILocalVariable(name: "wideChar", arg: 1, scope: !599, file: !3, line: 70, type: !524)
!603 = !DILocation(line: 70, column: 29, scope: !599)
!604 = !DILocalVariable(name: "s", scope: !599, file: !3, line: 74, type: !605)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 64, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 2)
!608 = !DILocation(line: 74, column: 13, scope: !599)
!609 = !DILocation(line: 75, column: 16, scope: !599)
!610 = !DILocation(line: 75, column: 9, scope: !599)
!611 = !DILocation(line: 75, column: 14, scope: !599)
!612 = !DILocation(line: 76, column: 9, scope: !599)
!613 = !DILocation(line: 76, column: 14, scope: !599)
!614 = !DILocation(line: 77, column: 21, scope: !599)
!615 = !DILocation(line: 77, column: 5, scope: !599)
!616 = !DILocation(line: 78, column: 1, scope: !599)
!617 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !618, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !7}
!620 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !617, file: !3, line: 80, type: !7)
!621 = !DILocation(line: 80, column: 33, scope: !617)
!622 = !DILocation(line: 82, column: 20, scope: !617)
!623 = !DILocation(line: 82, column: 5, scope: !617)
!624 = !DILocation(line: 83, column: 1, scope: !617)
!625 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !626, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !25}
!628 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !625, file: !3, line: 85, type: !25)
!629 = !DILocation(line: 85, column: 45, scope: !625)
!630 = !DILocation(line: 87, column: 22, scope: !625)
!631 = !DILocation(line: 87, column: 5, scope: !625)
!632 = !DILocation(line: 88, column: 1, scope: !625)
!633 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !634, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !636}
!636 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!637 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !633, file: !3, line: 90, type: !636)
!638 = !DILocation(line: 90, column: 29, scope: !633)
!639 = !DILocation(line: 92, column: 20, scope: !633)
!640 = !DILocation(line: 92, column: 5, scope: !633)
!641 = !DILocation(line: 93, column: 1, scope: !633)
!642 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !643, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !647, line: 100, baseType: !648)
!647 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_739/source_code")
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !647, line: 96, size: 64, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !648, file: !647, line: 98, baseType: !23, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !648, file: !647, line: 99, baseType: !23, size: 32, offset: 32)
!652 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !642, file: !3, line: 95, type: !645)
!653 = !DILocation(line: 95, column: 40, scope: !642)
!654 = !DILocation(line: 97, column: 26, scope: !642)
!655 = !DILocation(line: 97, column: 47, scope: !642)
!656 = !DILocation(line: 97, column: 55, scope: !642)
!657 = !DILocation(line: 97, column: 76, scope: !642)
!658 = !DILocation(line: 97, column: 5, scope: !642)
!659 = !DILocation(line: 98, column: 1, scope: !642)
!660 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !661, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !663, !584}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!664 = !DILocalVariable(name: "bytes", arg: 1, scope: !660, file: !3, line: 100, type: !663)
!665 = !DILocation(line: 100, column: 38, scope: !660)
!666 = !DILocalVariable(name: "numBytes", arg: 2, scope: !660, file: !3, line: 100, type: !584)
!667 = !DILocation(line: 100, column: 52, scope: !660)
!668 = !DILocalVariable(name: "i", scope: !660, file: !3, line: 102, type: !584)
!669 = !DILocation(line: 102, column: 12, scope: !660)
!670 = !DILocation(line: 103, column: 12, scope: !671)
!671 = distinct !DILexicalBlock(scope: !660, file: !3, line: 103, column: 5)
!672 = !DILocation(line: 103, column: 10, scope: !671)
!673 = !DILocation(line: 103, column: 17, scope: !674)
!674 = distinct !DILexicalBlock(scope: !671, file: !3, line: 103, column: 5)
!675 = !DILocation(line: 103, column: 21, scope: !674)
!676 = !DILocation(line: 103, column: 19, scope: !674)
!677 = !DILocation(line: 103, column: 5, scope: !671)
!678 = !DILocation(line: 105, column: 24, scope: !679)
!679 = distinct !DILexicalBlock(scope: !674, file: !3, line: 104, column: 5)
!680 = !DILocation(line: 105, column: 30, scope: !679)
!681 = !DILocation(line: 105, column: 9, scope: !679)
!682 = !DILocation(line: 106, column: 5, scope: !679)
!683 = !DILocation(line: 103, column: 31, scope: !674)
!684 = !DILocation(line: 103, column: 5, scope: !674)
!685 = distinct !{!685, !677, !686, !412}
!686 = !DILocation(line: 106, column: 5, scope: !671)
!687 = !DILocation(line: 107, column: 5, scope: !660)
!688 = !DILocation(line: 108, column: 1, scope: !660)
!689 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !690, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!690 = !DISubroutineType(types: !691)
!691 = !{!584, !663, !584, !42}
!692 = !DILocalVariable(name: "bytes", arg: 1, scope: !689, file: !3, line: 113, type: !663)
!693 = !DILocation(line: 113, column: 39, scope: !689)
!694 = !DILocalVariable(name: "numBytes", arg: 2, scope: !689, file: !3, line: 113, type: !584)
!695 = !DILocation(line: 113, column: 53, scope: !689)
!696 = !DILocalVariable(name: "hex", arg: 3, scope: !689, file: !3, line: 113, type: !42)
!697 = !DILocation(line: 113, column: 71, scope: !689)
!698 = !DILocalVariable(name: "numWritten", scope: !689, file: !3, line: 115, type: !584)
!699 = !DILocation(line: 115, column: 12, scope: !689)
!700 = !DILocation(line: 121, column: 5, scope: !689)
!701 = !DILocation(line: 121, column: 12, scope: !689)
!702 = !DILocation(line: 121, column: 25, scope: !689)
!703 = !DILocation(line: 121, column: 23, scope: !689)
!704 = !DILocation(line: 121, column: 34, scope: !689)
!705 = !DILocation(line: 121, column: 37, scope: !689)
!706 = !DILocation(line: 121, column: 67, scope: !689)
!707 = !DILocation(line: 121, column: 70, scope: !689)
!708 = !DILocation(line: 0, scope: !689)
!709 = !DILocalVariable(name: "byte", scope: !710, file: !3, line: 123, type: !23)
!710 = distinct !DILexicalBlock(scope: !689, file: !3, line: 122, column: 5)
!711 = !DILocation(line: 123, column: 13, scope: !710)
!712 = !DILocation(line: 124, column: 17, scope: !710)
!713 = !DILocation(line: 124, column: 25, scope: !710)
!714 = !DILocation(line: 124, column: 23, scope: !710)
!715 = !DILocation(line: 124, column: 9, scope: !710)
!716 = !DILocation(line: 125, column: 45, scope: !710)
!717 = !DILocation(line: 125, column: 29, scope: !710)
!718 = !DILocation(line: 125, column: 9, scope: !710)
!719 = !DILocation(line: 125, column: 15, scope: !710)
!720 = !DILocation(line: 125, column: 27, scope: !710)
!721 = !DILocation(line: 126, column: 9, scope: !710)
!722 = distinct !{!722, !700, !723, !412}
!723 = !DILocation(line: 127, column: 5, scope: !689)
!724 = !DILocation(line: 129, column: 12, scope: !689)
!725 = !DILocation(line: 129, column: 5, scope: !689)
!726 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !727, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!727 = !DISubroutineType(types: !728)
!728 = !{!584, !663, !584, !523}
!729 = !DILocalVariable(name: "bytes", arg: 1, scope: !726, file: !3, line: 135, type: !663)
!730 = !DILocation(line: 135, column: 41, scope: !726)
!731 = !DILocalVariable(name: "numBytes", arg: 2, scope: !726, file: !3, line: 135, type: !584)
!732 = !DILocation(line: 135, column: 55, scope: !726)
!733 = !DILocalVariable(name: "hex", arg: 3, scope: !726, file: !3, line: 135, type: !523)
!734 = !DILocation(line: 135, column: 76, scope: !726)
!735 = !DILocalVariable(name: "numWritten", scope: !726, file: !3, line: 137, type: !584)
!736 = !DILocation(line: 137, column: 12, scope: !726)
!737 = !DILocation(line: 143, column: 5, scope: !726)
!738 = !DILocation(line: 143, column: 12, scope: !726)
!739 = !DILocation(line: 143, column: 25, scope: !726)
!740 = !DILocation(line: 143, column: 23, scope: !726)
!741 = !DILocation(line: 143, column: 34, scope: !726)
!742 = !DILocation(line: 143, column: 47, scope: !726)
!743 = !DILocation(line: 143, column: 55, scope: !726)
!744 = !DILocation(line: 143, column: 53, scope: !726)
!745 = !DILocation(line: 143, column: 37, scope: !726)
!746 = !DILocation(line: 143, column: 68, scope: !726)
!747 = !DILocation(line: 143, column: 81, scope: !726)
!748 = !DILocation(line: 143, column: 89, scope: !726)
!749 = !DILocation(line: 143, column: 87, scope: !726)
!750 = !DILocation(line: 143, column: 100, scope: !726)
!751 = !DILocation(line: 143, column: 71, scope: !726)
!752 = !DILocation(line: 0, scope: !726)
!753 = !DILocalVariable(name: "byte", scope: !754, file: !3, line: 145, type: !23)
!754 = distinct !DILexicalBlock(scope: !726, file: !3, line: 144, column: 5)
!755 = !DILocation(line: 145, column: 13, scope: !754)
!756 = !DILocation(line: 146, column: 18, scope: !754)
!757 = !DILocation(line: 146, column: 26, scope: !754)
!758 = !DILocation(line: 146, column: 24, scope: !754)
!759 = !DILocation(line: 146, column: 9, scope: !754)
!760 = !DILocation(line: 147, column: 45, scope: !754)
!761 = !DILocation(line: 147, column: 29, scope: !754)
!762 = !DILocation(line: 147, column: 9, scope: !754)
!763 = !DILocation(line: 147, column: 15, scope: !754)
!764 = !DILocation(line: 147, column: 27, scope: !754)
!765 = !DILocation(line: 148, column: 9, scope: !754)
!766 = distinct !{!766, !737, !767, !412}
!767 = !DILocation(line: 149, column: 5, scope: !726)
!768 = !DILocation(line: 151, column: 12, scope: !726)
!769 = !DILocation(line: 151, column: 5, scope: !726)
!770 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !771, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!771 = !DISubroutineType(types: !772)
!772 = !{!23}
!773 = !DILocation(line: 158, column: 5, scope: !770)
!774 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !771, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!775 = !DILocation(line: 163, column: 5, scope: !774)
!776 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !771, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!777 = !DILocation(line: 168, column: 13, scope: !776)
!778 = !DILocation(line: 168, column: 20, scope: !776)
!779 = !DILocation(line: 168, column: 5, scope: !776)
!780 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !117, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!781 = !DILocation(line: 187, column: 16, scope: !780)
!782 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !117, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!783 = !DILocation(line: 188, column: 16, scope: !782)
!784 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !117, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!785 = !DILocation(line: 189, column: 16, scope: !784)
!786 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !117, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!787 = !DILocation(line: 190, column: 16, scope: !786)
!788 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !117, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!789 = !DILocation(line: 191, column: 16, scope: !788)
!790 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !117, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!791 = !DILocation(line: 192, column: 16, scope: !790)
!792 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !117, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!793 = !DILocation(line: 193, column: 16, scope: !792)
!794 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !117, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!795 = !DILocation(line: 194, column: 16, scope: !794)
!796 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !117, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!797 = !DILocation(line: 195, column: 16, scope: !796)
!798 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !117, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!799 = !DILocation(line: 198, column: 15, scope: !798)
!800 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !117, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!801 = !DILocation(line: 199, column: 15, scope: !800)
!802 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !117, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!803 = !DILocation(line: 200, column: 15, scope: !802)
!804 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !117, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!805 = !DILocation(line: 201, column: 15, scope: !804)
!806 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !117, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!807 = !DILocation(line: 202, column: 15, scope: !806)
!808 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !117, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!809 = !DILocation(line: 203, column: 15, scope: !808)
!810 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !117, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!811 = !DILocation(line: 204, column: 15, scope: !810)
!812 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !117, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!813 = !DILocation(line: 205, column: 15, scope: !812)
!814 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !117, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !107)
!815 = !DILocation(line: 206, column: 15, scope: !814)
