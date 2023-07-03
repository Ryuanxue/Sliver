; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67a.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad() #0 !dbg !68 {
entry:
  %data = alloca i32, align 4
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !72, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, metadata !75, metadata !DIExpression()), !dbg !81
  store i32 -1, i32* %data, align 4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !83, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !86, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !104, metadata !DIExpression()), !dbg !105
  store i32 -1, i32* %listenSocket, align 4, !dbg !105
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !106, metadata !DIExpression()), !dbg !107
  store i32 -1, i32* %acceptSocket, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !108, metadata !DIExpression()), !dbg !109
  br label %do.body, !dbg !110

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !111
  store i32 %call, i32* %listenSocket, align 4, !dbg !113
  %0 = load i32, i32* %listenSocket, align 4, !dbg !114
  %cmp = icmp eq i32 %0, -1, !dbg !116
  br i1 %cmp, label %if.then, label %if.end, !dbg !117

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !118

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !120
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !120
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !121
  store i16 2, i16* %sin_family, align 4, !dbg !122
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !123
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !124
  store i32 0, i32* %s_addr, align 4, !dbg !125
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !126
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !127
  store i16 %call1, i16* %sin_port, align 2, !dbg !128
  %2 = load i32, i32* %listenSocket, align 4, !dbg !129
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !131
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !132
  %cmp3 = icmp eq i32 %call2, -1, !dbg !133
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !134

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !135

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !137
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !139
  %cmp7 = icmp eq i32 %call6, -1, !dbg !140
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !141

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !142

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !144
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !145
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !146
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !147
  %cmp11 = icmp eq i32 %6, -1, !dbg !149
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !150

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !151

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !153
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !154
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !155
  %conv = trunc i64 %call14 to i32, !dbg !155
  store i32 %conv, i32* %recvResult, align 4, !dbg !156
  %8 = load i32, i32* %recvResult, align 4, !dbg !157
  %cmp15 = icmp eq i32 %8, -1, !dbg !159
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !160

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !161
  %cmp17 = icmp eq i32 %9, 0, !dbg !162
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !163

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !164

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !166
  %idxprom = sext i32 %10 to i64, !dbg !167
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !167
  store i8 0, i8* %arrayidx, align 1, !dbg !168
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !169
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !170
  store i32 %call22, i32* %data, align 4, !dbg !171
  br label %do.end, !dbg !172

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !173
  %cmp23 = icmp ne i32 %11, -1, !dbg !175
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !176

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !177
  %call26 = call i32 @close(i32 %12), !dbg !179
  br label %if.end27, !dbg !180

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !181
  %cmp28 = icmp ne i32 %13, -1, !dbg !183
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !184

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !185
  %call31 = call i32 @close(i32 %14), !dbg !187
  br label %if.end32, !dbg !188

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data, align 4, !dbg !189
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !190
  store i32 %15, i32* %structFirst, align 4, !dbg !191
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !192
  %16 = load i32, i32* %coerce.dive, align 4, !dbg !192
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink(i32 %16), !dbg !192
  ret void, !dbg !193
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

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !194 {
entry:
  %data = alloca i32, align 4
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, metadata !197, metadata !DIExpression()), !dbg !198
  store i32 -1, i32* %data, align 4, !dbg !199
  store i32 7, i32* %data, align 4, !dbg !200
  %0 = load i32, i32* %data, align 4, !dbg !201
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !202
  store i32 %0, i32* %structFirst, align 4, !dbg !203
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !204
  %1 = load i32, i32* %coerce.dive, align 4, !dbg !204
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_goodG2BSink(i32 %1), !dbg !204
  ret void, !dbg !205
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_goodG2BSink(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !206 {
entry:
  %data = alloca i32, align 4
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, metadata !209, metadata !DIExpression()), !dbg !210
  store i32 -1, i32* %data, align 4, !dbg !211
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !212, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !217, metadata !DIExpression()), !dbg !218
  store i32 -1, i32* %listenSocket, align 4, !dbg !218
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !219, metadata !DIExpression()), !dbg !220
  store i32 -1, i32* %acceptSocket, align 4, !dbg !220
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !221, metadata !DIExpression()), !dbg !222
  br label %do.body, !dbg !223

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !224
  store i32 %call, i32* %listenSocket, align 4, !dbg !226
  %0 = load i32, i32* %listenSocket, align 4, !dbg !227
  %cmp = icmp eq i32 %0, -1, !dbg !229
  br i1 %cmp, label %if.then, label %if.end, !dbg !230

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !231

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !233
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !233
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !234
  store i16 2, i16* %sin_family, align 4, !dbg !235
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !236
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !237
  store i32 0, i32* %s_addr, align 4, !dbg !238
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !239
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !240
  store i16 %call1, i16* %sin_port, align 2, !dbg !241
  %2 = load i32, i32* %listenSocket, align 4, !dbg !242
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !244
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !245
  %cmp3 = icmp eq i32 %call2, -1, !dbg !246
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !247

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !248

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !250
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !252
  %cmp7 = icmp eq i32 %call6, -1, !dbg !253
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !254

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !255

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !257
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !258
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !259
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !260
  %cmp11 = icmp eq i32 %6, -1, !dbg !262
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !263

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !264

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !266
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !267
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !268
  %conv = trunc i64 %call14 to i32, !dbg !268
  store i32 %conv, i32* %recvResult, align 4, !dbg !269
  %8 = load i32, i32* %recvResult, align 4, !dbg !270
  %cmp15 = icmp eq i32 %8, -1, !dbg !272
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !273

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !274
  %cmp17 = icmp eq i32 %9, 0, !dbg !275
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !276

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !277

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !279
  %idxprom = sext i32 %10 to i64, !dbg !280
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !280
  store i8 0, i8* %arrayidx, align 1, !dbg !281
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !282
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !283
  store i32 %call22, i32* %data, align 4, !dbg !284
  br label %do.end, !dbg !285

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !286
  %cmp23 = icmp ne i32 %11, -1, !dbg !288
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !289

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !290
  %call26 = call i32 @close(i32 %12), !dbg !292
  br label %if.end27, !dbg !293

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !294
  %cmp28 = icmp ne i32 %13, -1, !dbg !296
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !297

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !298
  %call31 = call i32 @close(i32 %14), !dbg !300
  br label %if.end32, !dbg !301

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data, align 4, !dbg !302
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !303
  store i32 %15, i32* %structFirst, align 4, !dbg !304
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %myStruct, i32 0, i32 0, !dbg !305
  %16 = load i32, i32* %coerce.dive, align 4, !dbg !305
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_goodB2GSink(i32 %16), !dbg !305
  ret void, !dbg !306
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_goodB2GSink(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_good() #0 !dbg !307 {
entry:
  call void @goodG2B(), !dbg !308
  call void @goodB2G(), !dbg !309
  ret void, !dbg !310
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!64, !65, !66}
!llvm.ident = !{!67}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_747/source_code")
!2 = !{!3, !16}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !4, line: 24, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15}
!7 = !DIEnumerator(name: "SOCK_STREAM", value: 1, isUnsigned: true)
!8 = !DIEnumerator(name: "SOCK_DGRAM", value: 2, isUnsigned: true)
!9 = !DIEnumerator(name: "SOCK_RAW", value: 3, isUnsigned: true)
!10 = !DIEnumerator(name: "SOCK_RDM", value: 4, isUnsigned: true)
!11 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5, isUnsigned: true)
!12 = !DIEnumerator(name: "SOCK_DCCP", value: 6, isUnsigned: true)
!13 = !DIEnumerator(name: "SOCK_PACKET", value: 10, isUnsigned: true)
!14 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288, isUnsigned: true)
!15 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 40, baseType: !5, size: 32, elements: !18)
!17 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!19 = !DIEnumerator(name: "IPPROTO_IP", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2, isUnsigned: true)
!22 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4, isUnsigned: true)
!23 = !DIEnumerator(name: "IPPROTO_TCP", value: 6, isUnsigned: true)
!24 = !DIEnumerator(name: "IPPROTO_EGP", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "IPPROTO_PUP", value: 12, isUnsigned: true)
!26 = !DIEnumerator(name: "IPPROTO_UDP", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "IPPROTO_IDP", value: 22, isUnsigned: true)
!28 = !DIEnumerator(name: "IPPROTO_TP", value: 29, isUnsigned: true)
!29 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33, isUnsigned: true)
!30 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41, isUnsigned: true)
!31 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46, isUnsigned: true)
!32 = !DIEnumerator(name: "IPPROTO_GRE", value: 47, isUnsigned: true)
!33 = !DIEnumerator(name: "IPPROTO_ESP", value: 50, isUnsigned: true)
!34 = !DIEnumerator(name: "IPPROTO_AH", value: 51, isUnsigned: true)
!35 = !DIEnumerator(name: "IPPROTO_MTP", value: 92, isUnsigned: true)
!36 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94, isUnsigned: true)
!37 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98, isUnsigned: true)
!38 = !DIEnumerator(name: "IPPROTO_PIM", value: 103, isUnsigned: true)
!39 = !DIEnumerator(name: "IPPROTO_COMP", value: 108, isUnsigned: true)
!40 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132, isUnsigned: true)
!41 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136, isUnsigned: true)
!42 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137, isUnsigned: true)
!43 = !DIEnumerator(name: "IPPROTO_RAW", value: 255, isUnsigned: true)
!44 = !DIEnumerator(name: "IPPROTO_MAX", value: 256, isUnsigned: true)
!45 = !{!46, !51}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !48, line: 26, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !50, line: 42, baseType: !5)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !53, line: 178, size: 128, elements: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!54 = !{!55, !59}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !52, file: !53, line: 180, baseType: !56, size: 16)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !57, line: 28, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !52, file: !53, line: 181, baseType: !60, size: 112, offset: 16)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 112, elements: !62)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!62 = !{!63}
!63 = !DISubrange(count: 14)
!64 = !{i32 7, !"Dwarf Version", i32 4}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"wchar_size", i32 4}
!67 = !{!"clang version 12.0.0"}
!68 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad", scope: !1, file: !1, line: 48, type: !69, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{null}
!71 = !{}
!72 = !DILocalVariable(name: "data", scope: !68, file: !1, line: 50, type: !73)
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !DILocation(line: 50, column: 9, scope: !68)
!75 = !DILocalVariable(name: "myStruct", scope: !68, file: !1, line: 51, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType", file: !77, line: 8, baseType: !78)
!77 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_747/source_code")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType", file: !77, line: 5, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !78, file: !77, line: 7, baseType: !73, size: 32)
!81 = !DILocation(line: 51, column: 76, scope: !68)
!82 = !DILocation(line: 53, column: 10, scope: !68)
!83 = !DILocalVariable(name: "recvResult", scope: !84, file: !1, line: 59, type: !73)
!84 = distinct !DILexicalBlock(scope: !68, file: !1, line: 54, column: 5)
!85 = !DILocation(line: 59, column: 13, scope: !84)
!86 = !DILocalVariable(name: "service", scope: !84, file: !1, line: 60, type: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !88)
!88 = !{!89, !90, !94, !98}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !87, file: !17, line: 240, baseType: !56, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !87, file: !17, line: 241, baseType: !91, size: 16, offset: 16)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !87, file: !17, line: 242, baseType: !95, size: 32, offset: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !95, file: !17, line: 33, baseType: !46, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !87, file: !17, line: 245, baseType: !99, size: 64, offset: 64)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 64, elements: !101)
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !{!102}
!102 = !DISubrange(count: 8)
!103 = !DILocation(line: 60, column: 28, scope: !84)
!104 = !DILocalVariable(name: "listenSocket", scope: !84, file: !1, line: 61, type: !73)
!105 = !DILocation(line: 61, column: 16, scope: !84)
!106 = !DILocalVariable(name: "acceptSocket", scope: !84, file: !1, line: 62, type: !73)
!107 = !DILocation(line: 62, column: 16, scope: !84)
!108 = !DILocalVariable(name: "inputBuffer", scope: !84, file: !1, line: 63, type: !60)
!109 = !DILocation(line: 63, column: 14, scope: !84)
!110 = !DILocation(line: 64, column: 9, scope: !84)
!111 = !DILocation(line: 74, column: 28, scope: !112)
!112 = distinct !DILexicalBlock(scope: !84, file: !1, line: 65, column: 9)
!113 = !DILocation(line: 74, column: 26, scope: !112)
!114 = !DILocation(line: 75, column: 17, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 75, column: 17)
!116 = !DILocation(line: 75, column: 30, scope: !115)
!117 = !DILocation(line: 75, column: 17, scope: !112)
!118 = !DILocation(line: 77, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 76, column: 13)
!120 = !DILocation(line: 79, column: 13, scope: !112)
!121 = !DILocation(line: 80, column: 21, scope: !112)
!122 = !DILocation(line: 80, column: 32, scope: !112)
!123 = !DILocation(line: 81, column: 21, scope: !112)
!124 = !DILocation(line: 81, column: 30, scope: !112)
!125 = !DILocation(line: 81, column: 37, scope: !112)
!126 = !DILocation(line: 82, column: 32, scope: !112)
!127 = !DILocation(line: 82, column: 21, scope: !112)
!128 = !DILocation(line: 82, column: 30, scope: !112)
!129 = !DILocation(line: 83, column: 22, scope: !130)
!130 = distinct !DILexicalBlock(scope: !112, file: !1, line: 83, column: 17)
!131 = !DILocation(line: 83, column: 36, scope: !130)
!132 = !DILocation(line: 83, column: 17, scope: !130)
!133 = !DILocation(line: 83, column: 81, scope: !130)
!134 = !DILocation(line: 83, column: 17, scope: !112)
!135 = !DILocation(line: 85, column: 17, scope: !136)
!136 = distinct !DILexicalBlock(scope: !130, file: !1, line: 84, column: 13)
!137 = !DILocation(line: 87, column: 24, scope: !138)
!138 = distinct !DILexicalBlock(scope: !112, file: !1, line: 87, column: 17)
!139 = !DILocation(line: 87, column: 17, scope: !138)
!140 = !DILocation(line: 87, column: 54, scope: !138)
!141 = !DILocation(line: 87, column: 17, scope: !112)
!142 = !DILocation(line: 89, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !1, line: 88, column: 13)
!144 = !DILocation(line: 91, column: 35, scope: !112)
!145 = !DILocation(line: 91, column: 28, scope: !112)
!146 = !DILocation(line: 91, column: 26, scope: !112)
!147 = !DILocation(line: 92, column: 17, scope: !148)
!148 = distinct !DILexicalBlock(scope: !112, file: !1, line: 92, column: 17)
!149 = !DILocation(line: 92, column: 30, scope: !148)
!150 = !DILocation(line: 92, column: 17, scope: !112)
!151 = !DILocation(line: 94, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 93, column: 13)
!153 = !DILocation(line: 97, column: 31, scope: !112)
!154 = !DILocation(line: 97, column: 45, scope: !112)
!155 = !DILocation(line: 97, column: 26, scope: !112)
!156 = !DILocation(line: 97, column: 24, scope: !112)
!157 = !DILocation(line: 98, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !112, file: !1, line: 98, column: 17)
!159 = !DILocation(line: 98, column: 28, scope: !158)
!160 = !DILocation(line: 98, column: 44, scope: !158)
!161 = !DILocation(line: 98, column: 47, scope: !158)
!162 = !DILocation(line: 98, column: 58, scope: !158)
!163 = !DILocation(line: 98, column: 17, scope: !112)
!164 = !DILocation(line: 100, column: 17, scope: !165)
!165 = distinct !DILexicalBlock(scope: !158, file: !1, line: 99, column: 13)
!166 = !DILocation(line: 103, column: 25, scope: !112)
!167 = !DILocation(line: 103, column: 13, scope: !112)
!168 = !DILocation(line: 103, column: 37, scope: !112)
!169 = !DILocation(line: 105, column: 25, scope: !112)
!170 = !DILocation(line: 105, column: 20, scope: !112)
!171 = !DILocation(line: 105, column: 18, scope: !112)
!172 = !DILocation(line: 106, column: 9, scope: !112)
!173 = !DILocation(line: 108, column: 13, scope: !174)
!174 = distinct !DILexicalBlock(scope: !84, file: !1, line: 108, column: 13)
!175 = !DILocation(line: 108, column: 26, scope: !174)
!176 = !DILocation(line: 108, column: 13, scope: !84)
!177 = !DILocation(line: 110, column: 26, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 109, column: 9)
!179 = !DILocation(line: 110, column: 13, scope: !178)
!180 = !DILocation(line: 111, column: 9, scope: !178)
!181 = !DILocation(line: 112, column: 13, scope: !182)
!182 = distinct !DILexicalBlock(scope: !84, file: !1, line: 112, column: 13)
!183 = !DILocation(line: 112, column: 26, scope: !182)
!184 = !DILocation(line: 112, column: 13, scope: !84)
!185 = !DILocation(line: 114, column: 26, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 113, column: 9)
!187 = !DILocation(line: 114, column: 13, scope: !186)
!188 = !DILocation(line: 115, column: 9, scope: !186)
!189 = !DILocation(line: 123, column: 28, scope: !68)
!190 = !DILocation(line: 123, column: 14, scope: !68)
!191 = !DILocation(line: 123, column: 26, scope: !68)
!192 = !DILocation(line: 124, column: 5, scope: !68)
!193 = !DILocation(line: 125, column: 1, scope: !68)
!194 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 133, type: !69, scopeLine: 134, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!195 = !DILocalVariable(name: "data", scope: !194, file: !1, line: 135, type: !73)
!196 = !DILocation(line: 135, column: 9, scope: !194)
!197 = !DILocalVariable(name: "myStruct", scope: !194, file: !1, line: 136, type: !76)
!198 = !DILocation(line: 136, column: 76, scope: !194)
!199 = !DILocation(line: 138, column: 10, scope: !194)
!200 = !DILocation(line: 141, column: 10, scope: !194)
!201 = !DILocation(line: 142, column: 28, scope: !194)
!202 = !DILocation(line: 142, column: 14, scope: !194)
!203 = !DILocation(line: 142, column: 26, scope: !194)
!204 = !DILocation(line: 143, column: 5, scope: !194)
!205 = !DILocation(line: 144, column: 1, scope: !194)
!206 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 148, type: !69, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!207 = !DILocalVariable(name: "data", scope: !206, file: !1, line: 150, type: !73)
!208 = !DILocation(line: 150, column: 9, scope: !206)
!209 = !DILocalVariable(name: "myStruct", scope: !206, file: !1, line: 151, type: !76)
!210 = !DILocation(line: 151, column: 76, scope: !206)
!211 = !DILocation(line: 153, column: 10, scope: !206)
!212 = !DILocalVariable(name: "recvResult", scope: !213, file: !1, line: 159, type: !73)
!213 = distinct !DILexicalBlock(scope: !206, file: !1, line: 154, column: 5)
!214 = !DILocation(line: 159, column: 13, scope: !213)
!215 = !DILocalVariable(name: "service", scope: !213, file: !1, line: 160, type: !87)
!216 = !DILocation(line: 160, column: 28, scope: !213)
!217 = !DILocalVariable(name: "listenSocket", scope: !213, file: !1, line: 161, type: !73)
!218 = !DILocation(line: 161, column: 16, scope: !213)
!219 = !DILocalVariable(name: "acceptSocket", scope: !213, file: !1, line: 162, type: !73)
!220 = !DILocation(line: 162, column: 16, scope: !213)
!221 = !DILocalVariable(name: "inputBuffer", scope: !213, file: !1, line: 163, type: !60)
!222 = !DILocation(line: 163, column: 14, scope: !213)
!223 = !DILocation(line: 164, column: 9, scope: !213)
!224 = !DILocation(line: 174, column: 28, scope: !225)
!225 = distinct !DILexicalBlock(scope: !213, file: !1, line: 165, column: 9)
!226 = !DILocation(line: 174, column: 26, scope: !225)
!227 = !DILocation(line: 175, column: 17, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !1, line: 175, column: 17)
!229 = !DILocation(line: 175, column: 30, scope: !228)
!230 = !DILocation(line: 175, column: 17, scope: !225)
!231 = !DILocation(line: 177, column: 17, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !1, line: 176, column: 13)
!233 = !DILocation(line: 179, column: 13, scope: !225)
!234 = !DILocation(line: 180, column: 21, scope: !225)
!235 = !DILocation(line: 180, column: 32, scope: !225)
!236 = !DILocation(line: 181, column: 21, scope: !225)
!237 = !DILocation(line: 181, column: 30, scope: !225)
!238 = !DILocation(line: 181, column: 37, scope: !225)
!239 = !DILocation(line: 182, column: 32, scope: !225)
!240 = !DILocation(line: 182, column: 21, scope: !225)
!241 = !DILocation(line: 182, column: 30, scope: !225)
!242 = !DILocation(line: 183, column: 22, scope: !243)
!243 = distinct !DILexicalBlock(scope: !225, file: !1, line: 183, column: 17)
!244 = !DILocation(line: 183, column: 36, scope: !243)
!245 = !DILocation(line: 183, column: 17, scope: !243)
!246 = !DILocation(line: 183, column: 81, scope: !243)
!247 = !DILocation(line: 183, column: 17, scope: !225)
!248 = !DILocation(line: 185, column: 17, scope: !249)
!249 = distinct !DILexicalBlock(scope: !243, file: !1, line: 184, column: 13)
!250 = !DILocation(line: 187, column: 24, scope: !251)
!251 = distinct !DILexicalBlock(scope: !225, file: !1, line: 187, column: 17)
!252 = !DILocation(line: 187, column: 17, scope: !251)
!253 = !DILocation(line: 187, column: 54, scope: !251)
!254 = !DILocation(line: 187, column: 17, scope: !225)
!255 = !DILocation(line: 189, column: 17, scope: !256)
!256 = distinct !DILexicalBlock(scope: !251, file: !1, line: 188, column: 13)
!257 = !DILocation(line: 191, column: 35, scope: !225)
!258 = !DILocation(line: 191, column: 28, scope: !225)
!259 = !DILocation(line: 191, column: 26, scope: !225)
!260 = !DILocation(line: 192, column: 17, scope: !261)
!261 = distinct !DILexicalBlock(scope: !225, file: !1, line: 192, column: 17)
!262 = !DILocation(line: 192, column: 30, scope: !261)
!263 = !DILocation(line: 192, column: 17, scope: !225)
!264 = !DILocation(line: 194, column: 17, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !1, line: 193, column: 13)
!266 = !DILocation(line: 197, column: 31, scope: !225)
!267 = !DILocation(line: 197, column: 45, scope: !225)
!268 = !DILocation(line: 197, column: 26, scope: !225)
!269 = !DILocation(line: 197, column: 24, scope: !225)
!270 = !DILocation(line: 198, column: 17, scope: !271)
!271 = distinct !DILexicalBlock(scope: !225, file: !1, line: 198, column: 17)
!272 = !DILocation(line: 198, column: 28, scope: !271)
!273 = !DILocation(line: 198, column: 44, scope: !271)
!274 = !DILocation(line: 198, column: 47, scope: !271)
!275 = !DILocation(line: 198, column: 58, scope: !271)
!276 = !DILocation(line: 198, column: 17, scope: !225)
!277 = !DILocation(line: 200, column: 17, scope: !278)
!278 = distinct !DILexicalBlock(scope: !271, file: !1, line: 199, column: 13)
!279 = !DILocation(line: 203, column: 25, scope: !225)
!280 = !DILocation(line: 203, column: 13, scope: !225)
!281 = !DILocation(line: 203, column: 37, scope: !225)
!282 = !DILocation(line: 205, column: 25, scope: !225)
!283 = !DILocation(line: 205, column: 20, scope: !225)
!284 = !DILocation(line: 205, column: 18, scope: !225)
!285 = !DILocation(line: 206, column: 9, scope: !225)
!286 = !DILocation(line: 208, column: 13, scope: !287)
!287 = distinct !DILexicalBlock(scope: !213, file: !1, line: 208, column: 13)
!288 = !DILocation(line: 208, column: 26, scope: !287)
!289 = !DILocation(line: 208, column: 13, scope: !213)
!290 = !DILocation(line: 210, column: 26, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !1, line: 209, column: 9)
!292 = !DILocation(line: 210, column: 13, scope: !291)
!293 = !DILocation(line: 211, column: 9, scope: !291)
!294 = !DILocation(line: 212, column: 13, scope: !295)
!295 = distinct !DILexicalBlock(scope: !213, file: !1, line: 212, column: 13)
!296 = !DILocation(line: 212, column: 26, scope: !295)
!297 = !DILocation(line: 212, column: 13, scope: !213)
!298 = !DILocation(line: 214, column: 26, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !1, line: 213, column: 9)
!300 = !DILocation(line: 214, column: 13, scope: !299)
!301 = !DILocation(line: 215, column: 9, scope: !299)
!302 = !DILocation(line: 223, column: 28, scope: !206)
!303 = !DILocation(line: 223, column: 14, scope: !206)
!304 = !DILocation(line: 223, column: 26, scope: !206)
!305 = !DILocation(line: 224, column: 5, scope: !206)
!306 = !DILocation(line: 225, column: 1, scope: !206)
!307 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_good", scope: !1, file: !1, line: 227, type: !69, scopeLine: 228, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!308 = !DILocation(line: 229, column: 5, scope: !307)
!309 = !DILocation(line: 230, column: 5, scope: !307)
!310 = !DILocation(line: 231, column: 1, scope: !307)
