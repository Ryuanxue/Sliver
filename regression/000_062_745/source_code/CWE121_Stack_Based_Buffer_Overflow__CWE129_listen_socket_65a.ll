; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65a.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65_bad() #0 !dbg !68 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !72, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !75, metadata !DIExpression()), !dbg !79
  store void (i32)* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink, void (i32)** %funcPtr, align 8, !dbg !79
  store i32 -1, i32* %data, align 4, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !81, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !84, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !102, metadata !DIExpression()), !dbg !103
  store i32 -1, i32* %listenSocket, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !104, metadata !DIExpression()), !dbg !105
  store i32 -1, i32* %acceptSocket, align 4, !dbg !105
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !106, metadata !DIExpression()), !dbg !107
  br label %do.body, !dbg !108

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !109
  store i32 %call, i32* %listenSocket, align 4, !dbg !111
  %0 = load i32, i32* %listenSocket, align 4, !dbg !112
  %cmp = icmp eq i32 %0, -1, !dbg !114
  br i1 %cmp, label %if.then, label %if.end, !dbg !115

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !116

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !118
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !118
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !119
  store i16 2, i16* %sin_family, align 4, !dbg !120
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !121
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !122
  store i32 0, i32* %s_addr, align 4, !dbg !123
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !124
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !125
  store i16 %call1, i16* %sin_port, align 2, !dbg !126
  %2 = load i32, i32* %listenSocket, align 4, !dbg !127
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !129
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !130
  %cmp3 = icmp eq i32 %call2, -1, !dbg !131
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !132

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !133

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !135
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !137
  %cmp7 = icmp eq i32 %call6, -1, !dbg !138
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !139

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !140

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !142
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !143
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !144
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !145
  %cmp11 = icmp eq i32 %6, -1, !dbg !147
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !148

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !149

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !151
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !152
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !153
  %conv = trunc i64 %call14 to i32, !dbg !153
  store i32 %conv, i32* %recvResult, align 4, !dbg !154
  %8 = load i32, i32* %recvResult, align 4, !dbg !155
  %cmp15 = icmp eq i32 %8, -1, !dbg !157
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !158

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !159
  %cmp17 = icmp eq i32 %9, 0, !dbg !160
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !161

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !162

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !164
  %idxprom = sext i32 %10 to i64, !dbg !165
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !165
  store i8 0, i8* %arrayidx, align 1, !dbg !166
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !167
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !168
  store i32 %call22, i32* %data, align 4, !dbg !169
  br label %do.end, !dbg !170

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !171
  %cmp23 = icmp ne i32 %11, -1, !dbg !173
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !174

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !175
  %call26 = call i32 @close(i32 %12), !dbg !177
  br label %if.end27, !dbg !178

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !179
  %cmp28 = icmp ne i32 %13, -1, !dbg !181
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !182

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !183
  %call31 = call i32 @close(i32 %14), !dbg !185
  br label %if.end32, !dbg !186

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !187
  %16 = load i32, i32* %data, align 4, !dbg !188
  call void %15(i32 %16), !dbg !187
  ret void, !dbg !189
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_badSink(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #3

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare dso_local i64 @recv(i32, i8*, i64, i32) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #6

declare dso_local i32 @close(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !190 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  call void @llvm.dbg.declare(metadata i32* %data, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !193, metadata !DIExpression()), !dbg !194
  store void (i32)* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_goodG2BSink, void (i32)** %funcPtr, align 8, !dbg !194
  store i32 -1, i32* %data, align 4, !dbg !195
  store i32 7, i32* %data, align 4, !dbg !196
  %0 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !197
  %1 = load i32, i32* %data, align 4, !dbg !198
  call void %0(i32 %1), !dbg !197
  ret void, !dbg !199
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_goodG2BSink(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !200 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !203, metadata !DIExpression()), !dbg !204
  store void (i32)* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_goodB2GSink, void (i32)** %funcPtr, align 8, !dbg !204
  store i32 -1, i32* %data, align 4, !dbg !205
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !206, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !211, metadata !DIExpression()), !dbg !212
  store i32 -1, i32* %listenSocket, align 4, !dbg !212
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !213, metadata !DIExpression()), !dbg !214
  store i32 -1, i32* %acceptSocket, align 4, !dbg !214
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !215, metadata !DIExpression()), !dbg !216
  br label %do.body, !dbg !217

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !218
  store i32 %call, i32* %listenSocket, align 4, !dbg !220
  %0 = load i32, i32* %listenSocket, align 4, !dbg !221
  %cmp = icmp eq i32 %0, -1, !dbg !223
  br i1 %cmp, label %if.then, label %if.end, !dbg !224

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !225

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !227
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !227
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !228
  store i16 2, i16* %sin_family, align 4, !dbg !229
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !230
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !231
  store i32 0, i32* %s_addr, align 4, !dbg !232
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !233
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !234
  store i16 %call1, i16* %sin_port, align 2, !dbg !235
  %2 = load i32, i32* %listenSocket, align 4, !dbg !236
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !238
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !239
  %cmp3 = icmp eq i32 %call2, -1, !dbg !240
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !241

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !242

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !244
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !246
  %cmp7 = icmp eq i32 %call6, -1, !dbg !247
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !248

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !249

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !251
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !252
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !253
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !254
  %cmp11 = icmp eq i32 %6, -1, !dbg !256
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !257

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !258

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !260
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !261
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !262
  %conv = trunc i64 %call14 to i32, !dbg !262
  store i32 %conv, i32* %recvResult, align 4, !dbg !263
  %8 = load i32, i32* %recvResult, align 4, !dbg !264
  %cmp15 = icmp eq i32 %8, -1, !dbg !266
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !267

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !268
  %cmp17 = icmp eq i32 %9, 0, !dbg !269
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !270

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !271

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !273
  %idxprom = sext i32 %10 to i64, !dbg !274
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !274
  store i8 0, i8* %arrayidx, align 1, !dbg !275
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !276
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !277
  store i32 %call22, i32* %data, align 4, !dbg !278
  br label %do.end, !dbg !279

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !280
  %cmp23 = icmp ne i32 %11, -1, !dbg !282
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !283

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !284
  %call26 = call i32 @close(i32 %12), !dbg !286
  br label %if.end27, !dbg !287

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !288
  %cmp28 = icmp ne i32 %13, -1, !dbg !290
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !291

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !292
  %call31 = call i32 @close(i32 %14), !dbg !294
  br label %if.end32, !dbg !295

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !296
  %16 = load i32, i32* %data, align 4, !dbg !297
  call void %15(i32 %16), !dbg !296
  ret void, !dbg !298
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65b_goodB2GSink(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65_good() #0 !dbg !299 {
entry:
  call void @goodG2B(), !dbg !300
  call void @goodB2G(), !dbg !301
  ret void, !dbg !302
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!64, !65, !66}
!llvm.ident = !{!67}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_745/source_code")
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
!68 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65_bad", scope: !1, file: !1, line: 47, type: !69, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{null}
!71 = !{}
!72 = !DILocalVariable(name: "data", scope: !68, file: !1, line: 49, type: !73)
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !DILocation(line: 49, column: 9, scope: !68)
!75 = !DILocalVariable(name: "funcPtr", scope: !68, file: !1, line: 51, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !73}
!79 = !DILocation(line: 51, column: 12, scope: !68)
!80 = !DILocation(line: 53, column: 10, scope: !68)
!81 = !DILocalVariable(name: "recvResult", scope: !82, file: !1, line: 59, type: !73)
!82 = distinct !DILexicalBlock(scope: !68, file: !1, line: 54, column: 5)
!83 = !DILocation(line: 59, column: 13, scope: !82)
!84 = !DILocalVariable(name: "service", scope: !82, file: !1, line: 60, type: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !86)
!86 = !{!87, !88, !92, !96}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !85, file: !17, line: 240, baseType: !56, size: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !85, file: !17, line: 241, baseType: !89, size: 16, offset: 16)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !85, file: !17, line: 242, baseType: !93, size: 32, offset: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !93, file: !17, line: 33, baseType: !46, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !85, file: !17, line: 245, baseType: !97, size: 64, offset: 64)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !99)
!98 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!99 = !{!100}
!100 = !DISubrange(count: 8)
!101 = !DILocation(line: 60, column: 28, scope: !82)
!102 = !DILocalVariable(name: "listenSocket", scope: !82, file: !1, line: 61, type: !73)
!103 = !DILocation(line: 61, column: 16, scope: !82)
!104 = !DILocalVariable(name: "acceptSocket", scope: !82, file: !1, line: 62, type: !73)
!105 = !DILocation(line: 62, column: 16, scope: !82)
!106 = !DILocalVariable(name: "inputBuffer", scope: !82, file: !1, line: 63, type: !60)
!107 = !DILocation(line: 63, column: 14, scope: !82)
!108 = !DILocation(line: 64, column: 9, scope: !82)
!109 = !DILocation(line: 74, column: 28, scope: !110)
!110 = distinct !DILexicalBlock(scope: !82, file: !1, line: 65, column: 9)
!111 = !DILocation(line: 74, column: 26, scope: !110)
!112 = !DILocation(line: 75, column: 17, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 75, column: 17)
!114 = !DILocation(line: 75, column: 30, scope: !113)
!115 = !DILocation(line: 75, column: 17, scope: !110)
!116 = !DILocation(line: 77, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 76, column: 13)
!118 = !DILocation(line: 79, column: 13, scope: !110)
!119 = !DILocation(line: 80, column: 21, scope: !110)
!120 = !DILocation(line: 80, column: 32, scope: !110)
!121 = !DILocation(line: 81, column: 21, scope: !110)
!122 = !DILocation(line: 81, column: 30, scope: !110)
!123 = !DILocation(line: 81, column: 37, scope: !110)
!124 = !DILocation(line: 82, column: 32, scope: !110)
!125 = !DILocation(line: 82, column: 21, scope: !110)
!126 = !DILocation(line: 82, column: 30, scope: !110)
!127 = !DILocation(line: 83, column: 22, scope: !128)
!128 = distinct !DILexicalBlock(scope: !110, file: !1, line: 83, column: 17)
!129 = !DILocation(line: 83, column: 36, scope: !128)
!130 = !DILocation(line: 83, column: 17, scope: !128)
!131 = !DILocation(line: 83, column: 81, scope: !128)
!132 = !DILocation(line: 83, column: 17, scope: !110)
!133 = !DILocation(line: 85, column: 17, scope: !134)
!134 = distinct !DILexicalBlock(scope: !128, file: !1, line: 84, column: 13)
!135 = !DILocation(line: 87, column: 24, scope: !136)
!136 = distinct !DILexicalBlock(scope: !110, file: !1, line: 87, column: 17)
!137 = !DILocation(line: 87, column: 17, scope: !136)
!138 = !DILocation(line: 87, column: 54, scope: !136)
!139 = !DILocation(line: 87, column: 17, scope: !110)
!140 = !DILocation(line: 89, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !1, line: 88, column: 13)
!142 = !DILocation(line: 91, column: 35, scope: !110)
!143 = !DILocation(line: 91, column: 28, scope: !110)
!144 = !DILocation(line: 91, column: 26, scope: !110)
!145 = !DILocation(line: 92, column: 17, scope: !146)
!146 = distinct !DILexicalBlock(scope: !110, file: !1, line: 92, column: 17)
!147 = !DILocation(line: 92, column: 30, scope: !146)
!148 = !DILocation(line: 92, column: 17, scope: !110)
!149 = !DILocation(line: 94, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 93, column: 13)
!151 = !DILocation(line: 97, column: 31, scope: !110)
!152 = !DILocation(line: 97, column: 45, scope: !110)
!153 = !DILocation(line: 97, column: 26, scope: !110)
!154 = !DILocation(line: 97, column: 24, scope: !110)
!155 = !DILocation(line: 98, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !110, file: !1, line: 98, column: 17)
!157 = !DILocation(line: 98, column: 28, scope: !156)
!158 = !DILocation(line: 98, column: 44, scope: !156)
!159 = !DILocation(line: 98, column: 47, scope: !156)
!160 = !DILocation(line: 98, column: 58, scope: !156)
!161 = !DILocation(line: 98, column: 17, scope: !110)
!162 = !DILocation(line: 100, column: 17, scope: !163)
!163 = distinct !DILexicalBlock(scope: !156, file: !1, line: 99, column: 13)
!164 = !DILocation(line: 103, column: 25, scope: !110)
!165 = !DILocation(line: 103, column: 13, scope: !110)
!166 = !DILocation(line: 103, column: 37, scope: !110)
!167 = !DILocation(line: 105, column: 25, scope: !110)
!168 = !DILocation(line: 105, column: 20, scope: !110)
!169 = !DILocation(line: 105, column: 18, scope: !110)
!170 = !DILocation(line: 106, column: 9, scope: !110)
!171 = !DILocation(line: 108, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !82, file: !1, line: 108, column: 13)
!173 = !DILocation(line: 108, column: 26, scope: !172)
!174 = !DILocation(line: 108, column: 13, scope: !82)
!175 = !DILocation(line: 110, column: 26, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !1, line: 109, column: 9)
!177 = !DILocation(line: 110, column: 13, scope: !176)
!178 = !DILocation(line: 111, column: 9, scope: !176)
!179 = !DILocation(line: 112, column: 13, scope: !180)
!180 = distinct !DILexicalBlock(scope: !82, file: !1, line: 112, column: 13)
!181 = !DILocation(line: 112, column: 26, scope: !180)
!182 = !DILocation(line: 112, column: 13, scope: !82)
!183 = !DILocation(line: 114, column: 26, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !1, line: 113, column: 9)
!185 = !DILocation(line: 114, column: 13, scope: !184)
!186 = !DILocation(line: 115, column: 9, scope: !184)
!187 = !DILocation(line: 124, column: 5, scope: !68)
!188 = !DILocation(line: 124, column: 13, scope: !68)
!189 = !DILocation(line: 125, column: 1, scope: !68)
!190 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 133, type: !69, scopeLine: 134, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!191 = !DILocalVariable(name: "data", scope: !190, file: !1, line: 135, type: !73)
!192 = !DILocation(line: 135, column: 9, scope: !190)
!193 = !DILocalVariable(name: "funcPtr", scope: !190, file: !1, line: 136, type: !76)
!194 = !DILocation(line: 136, column: 12, scope: !190)
!195 = !DILocation(line: 138, column: 10, scope: !190)
!196 = !DILocation(line: 141, column: 10, scope: !190)
!197 = !DILocation(line: 142, column: 5, scope: !190)
!198 = !DILocation(line: 142, column: 13, scope: !190)
!199 = !DILocation(line: 143, column: 1, scope: !190)
!200 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 147, type: !69, scopeLine: 148, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!201 = !DILocalVariable(name: "data", scope: !200, file: !1, line: 149, type: !73)
!202 = !DILocation(line: 149, column: 9, scope: !200)
!203 = !DILocalVariable(name: "funcPtr", scope: !200, file: !1, line: 150, type: !76)
!204 = !DILocation(line: 150, column: 12, scope: !200)
!205 = !DILocation(line: 152, column: 10, scope: !200)
!206 = !DILocalVariable(name: "recvResult", scope: !207, file: !1, line: 158, type: !73)
!207 = distinct !DILexicalBlock(scope: !200, file: !1, line: 153, column: 5)
!208 = !DILocation(line: 158, column: 13, scope: !207)
!209 = !DILocalVariable(name: "service", scope: !207, file: !1, line: 159, type: !85)
!210 = !DILocation(line: 159, column: 28, scope: !207)
!211 = !DILocalVariable(name: "listenSocket", scope: !207, file: !1, line: 160, type: !73)
!212 = !DILocation(line: 160, column: 16, scope: !207)
!213 = !DILocalVariable(name: "acceptSocket", scope: !207, file: !1, line: 161, type: !73)
!214 = !DILocation(line: 161, column: 16, scope: !207)
!215 = !DILocalVariable(name: "inputBuffer", scope: !207, file: !1, line: 162, type: !60)
!216 = !DILocation(line: 162, column: 14, scope: !207)
!217 = !DILocation(line: 163, column: 9, scope: !207)
!218 = !DILocation(line: 173, column: 28, scope: !219)
!219 = distinct !DILexicalBlock(scope: !207, file: !1, line: 164, column: 9)
!220 = !DILocation(line: 173, column: 26, scope: !219)
!221 = !DILocation(line: 174, column: 17, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !1, line: 174, column: 17)
!223 = !DILocation(line: 174, column: 30, scope: !222)
!224 = !DILocation(line: 174, column: 17, scope: !219)
!225 = !DILocation(line: 176, column: 17, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !1, line: 175, column: 13)
!227 = !DILocation(line: 178, column: 13, scope: !219)
!228 = !DILocation(line: 179, column: 21, scope: !219)
!229 = !DILocation(line: 179, column: 32, scope: !219)
!230 = !DILocation(line: 180, column: 21, scope: !219)
!231 = !DILocation(line: 180, column: 30, scope: !219)
!232 = !DILocation(line: 180, column: 37, scope: !219)
!233 = !DILocation(line: 181, column: 32, scope: !219)
!234 = !DILocation(line: 181, column: 21, scope: !219)
!235 = !DILocation(line: 181, column: 30, scope: !219)
!236 = !DILocation(line: 182, column: 22, scope: !237)
!237 = distinct !DILexicalBlock(scope: !219, file: !1, line: 182, column: 17)
!238 = !DILocation(line: 182, column: 36, scope: !237)
!239 = !DILocation(line: 182, column: 17, scope: !237)
!240 = !DILocation(line: 182, column: 81, scope: !237)
!241 = !DILocation(line: 182, column: 17, scope: !219)
!242 = !DILocation(line: 184, column: 17, scope: !243)
!243 = distinct !DILexicalBlock(scope: !237, file: !1, line: 183, column: 13)
!244 = !DILocation(line: 186, column: 24, scope: !245)
!245 = distinct !DILexicalBlock(scope: !219, file: !1, line: 186, column: 17)
!246 = !DILocation(line: 186, column: 17, scope: !245)
!247 = !DILocation(line: 186, column: 54, scope: !245)
!248 = !DILocation(line: 186, column: 17, scope: !219)
!249 = !DILocation(line: 188, column: 17, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !1, line: 187, column: 13)
!251 = !DILocation(line: 190, column: 35, scope: !219)
!252 = !DILocation(line: 190, column: 28, scope: !219)
!253 = !DILocation(line: 190, column: 26, scope: !219)
!254 = !DILocation(line: 191, column: 17, scope: !255)
!255 = distinct !DILexicalBlock(scope: !219, file: !1, line: 191, column: 17)
!256 = !DILocation(line: 191, column: 30, scope: !255)
!257 = !DILocation(line: 191, column: 17, scope: !219)
!258 = !DILocation(line: 193, column: 17, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !1, line: 192, column: 13)
!260 = !DILocation(line: 196, column: 31, scope: !219)
!261 = !DILocation(line: 196, column: 45, scope: !219)
!262 = !DILocation(line: 196, column: 26, scope: !219)
!263 = !DILocation(line: 196, column: 24, scope: !219)
!264 = !DILocation(line: 197, column: 17, scope: !265)
!265 = distinct !DILexicalBlock(scope: !219, file: !1, line: 197, column: 17)
!266 = !DILocation(line: 197, column: 28, scope: !265)
!267 = !DILocation(line: 197, column: 44, scope: !265)
!268 = !DILocation(line: 197, column: 47, scope: !265)
!269 = !DILocation(line: 197, column: 58, scope: !265)
!270 = !DILocation(line: 197, column: 17, scope: !219)
!271 = !DILocation(line: 199, column: 17, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !1, line: 198, column: 13)
!273 = !DILocation(line: 202, column: 25, scope: !219)
!274 = !DILocation(line: 202, column: 13, scope: !219)
!275 = !DILocation(line: 202, column: 37, scope: !219)
!276 = !DILocation(line: 204, column: 25, scope: !219)
!277 = !DILocation(line: 204, column: 20, scope: !219)
!278 = !DILocation(line: 204, column: 18, scope: !219)
!279 = !DILocation(line: 205, column: 9, scope: !219)
!280 = !DILocation(line: 207, column: 13, scope: !281)
!281 = distinct !DILexicalBlock(scope: !207, file: !1, line: 207, column: 13)
!282 = !DILocation(line: 207, column: 26, scope: !281)
!283 = !DILocation(line: 207, column: 13, scope: !207)
!284 = !DILocation(line: 209, column: 26, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !1, line: 208, column: 9)
!286 = !DILocation(line: 209, column: 13, scope: !285)
!287 = !DILocation(line: 210, column: 9, scope: !285)
!288 = !DILocation(line: 211, column: 13, scope: !289)
!289 = distinct !DILexicalBlock(scope: !207, file: !1, line: 211, column: 13)
!290 = !DILocation(line: 211, column: 26, scope: !289)
!291 = !DILocation(line: 211, column: 13, scope: !207)
!292 = !DILocation(line: 213, column: 26, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !1, line: 212, column: 9)
!294 = !DILocation(line: 213, column: 13, scope: !293)
!295 = !DILocation(line: 214, column: 9, scope: !293)
!296 = !DILocation(line: 222, column: 5, scope: !200)
!297 = !DILocation(line: 222, column: 13, scope: !200)
!298 = !DILocation(line: 223, column: 1, scope: !200)
!299 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_65_good", scope: !1, file: !1, line: 225, type: !69, scopeLine: 226, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!300 = !DILocation(line: 227, column: 5, scope: !299)
!301 = !DILocation(line: 228, column: 5, scope: !299)
!302 = !DILocation(line: 229, column: 1, scope: !299)
