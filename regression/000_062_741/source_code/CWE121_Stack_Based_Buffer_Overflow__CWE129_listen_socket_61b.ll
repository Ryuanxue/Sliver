; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource(i32 %data) #0 !dbg !68 {
entry:
  %data.addr = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !75, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !78, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !96, metadata !DIExpression()), !dbg !97
  store i32 -1, i32* %listenSocket, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !98, metadata !DIExpression()), !dbg !99
  store i32 -1, i32* %acceptSocket, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !100, metadata !DIExpression()), !dbg !101
  br label %do.body, !dbg !102

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !103
  store i32 %call, i32* %listenSocket, align 4, !dbg !105
  %0 = load i32, i32* %listenSocket, align 4, !dbg !106
  %cmp = icmp eq i32 %0, -1, !dbg !108
  br i1 %cmp, label %if.then, label %if.end, !dbg !109

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !110

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !112
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !112
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !113
  store i16 2, i16* %sin_family, align 4, !dbg !114
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !115
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !116
  store i32 0, i32* %s_addr, align 4, !dbg !117
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !118
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !119
  store i16 %call1, i16* %sin_port, align 2, !dbg !120
  %2 = load i32, i32* %listenSocket, align 4, !dbg !121
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !123
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !124
  %cmp3 = icmp eq i32 %call2, -1, !dbg !125
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !126

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !127

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !129
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !131
  %cmp7 = icmp eq i32 %call6, -1, !dbg !132
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !133

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !134

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !136
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !137
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !138
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !139
  %cmp11 = icmp eq i32 %6, -1, !dbg !141
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !142

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !143

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !145
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !146
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !147
  %conv = trunc i64 %call14 to i32, !dbg !147
  store i32 %conv, i32* %recvResult, align 4, !dbg !148
  %8 = load i32, i32* %recvResult, align 4, !dbg !149
  %cmp15 = icmp eq i32 %8, -1, !dbg !151
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !152

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !153
  %cmp17 = icmp eq i32 %9, 0, !dbg !154
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !155

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !156

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !158
  %idxprom = sext i32 %10 to i64, !dbg !159
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !159
  store i8 0, i8* %arrayidx, align 1, !dbg !160
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !161
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !162
  store i32 %call22, i32* %data.addr, align 4, !dbg !163
  br label %do.end, !dbg !164

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !165
  %cmp23 = icmp ne i32 %11, -1, !dbg !167
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !168

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !169
  %call26 = call i32 @close(i32 %12), !dbg !171
  br label %if.end27, !dbg !172

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !173
  %cmp28 = icmp ne i32 %13, -1, !dbg !175
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !176

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !177
  %call31 = call i32 @close(i32 %14), !dbg !179
  br label %if.end32, !dbg !180

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data.addr, align 4, !dbg !181
  ret i32 %15, !dbg !182
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
define dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodG2BSource(i32 %data) #0 !dbg !183 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !184, metadata !DIExpression()), !dbg !185
  store i32 7, i32* %data.addr, align 4, !dbg !186
  %0 = load i32, i32* %data.addr, align 4, !dbg !187
  ret i32 %0, !dbg !188
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource(i32 %data) #0 !dbg !189 {
entry:
  %data.addr = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !192, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !197, metadata !DIExpression()), !dbg !198
  store i32 -1, i32* %listenSocket, align 4, !dbg !198
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !199, metadata !DIExpression()), !dbg !200
  store i32 -1, i32* %acceptSocket, align 4, !dbg !200
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !201, metadata !DIExpression()), !dbg !202
  br label %do.body, !dbg !203

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !204
  store i32 %call, i32* %listenSocket, align 4, !dbg !206
  %0 = load i32, i32* %listenSocket, align 4, !dbg !207
  %cmp = icmp eq i32 %0, -1, !dbg !209
  br i1 %cmp, label %if.then, label %if.end, !dbg !210

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !211

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !213
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !213
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !214
  store i16 2, i16* %sin_family, align 4, !dbg !215
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !216
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !217
  store i32 0, i32* %s_addr, align 4, !dbg !218
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !219
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !220
  store i16 %call1, i16* %sin_port, align 2, !dbg !221
  %2 = load i32, i32* %listenSocket, align 4, !dbg !222
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !224
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !225
  %cmp3 = icmp eq i32 %call2, -1, !dbg !226
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !227

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !228

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !230
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !232
  %cmp7 = icmp eq i32 %call6, -1, !dbg !233
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !234

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !235

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !237
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !238
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !239
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !240
  %cmp11 = icmp eq i32 %6, -1, !dbg !242
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !243

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !244

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !246
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !247
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !248
  %conv = trunc i64 %call14 to i32, !dbg !248
  store i32 %conv, i32* %recvResult, align 4, !dbg !249
  %8 = load i32, i32* %recvResult, align 4, !dbg !250
  %cmp15 = icmp eq i32 %8, -1, !dbg !252
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !253

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !254
  %cmp17 = icmp eq i32 %9, 0, !dbg !255
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !256

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !257

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !259
  %idxprom = sext i32 %10 to i64, !dbg !260
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !260
  store i8 0, i8* %arrayidx, align 1, !dbg !261
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !262
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !263
  store i32 %call22, i32* %data.addr, align 4, !dbg !264
  br label %do.end, !dbg !265

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !266
  %cmp23 = icmp ne i32 %11, -1, !dbg !268
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !269

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !270
  %call26 = call i32 @close(i32 %12), !dbg !272
  br label %if.end27, !dbg !273

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !274
  %cmp28 = icmp ne i32 %13, -1, !dbg !276
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !277

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !278
  %call31 = call i32 @close(i32 %14), !dbg !280
  br label %if.end32, !dbg !281

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data.addr, align 4, !dbg !282
  ret i32 %15, !dbg !283
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_741/source_code")
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
!68 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource", scope: !1, file: !1, line: 44, type: !69, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !71}
!71 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!72 = !{}
!73 = !DILocalVariable(name: "data", arg: 1, scope: !68, file: !1, line: 44, type: !71)
!74 = !DILocation(line: 44, column: 80, scope: !68)
!75 = !DILocalVariable(name: "recvResult", scope: !76, file: !1, line: 51, type: !71)
!76 = distinct !DILexicalBlock(scope: !68, file: !1, line: 46, column: 5)
!77 = !DILocation(line: 51, column: 13, scope: !76)
!78 = !DILocalVariable(name: "service", scope: !76, file: !1, line: 52, type: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !80)
!80 = !{!81, !82, !86, !90}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !79, file: !17, line: 240, baseType: !56, size: 16)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !79, file: !17, line: 241, baseType: !83, size: 16, offset: 16)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !79, file: !17, line: 242, baseType: !87, size: 32, offset: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !87, file: !17, line: 33, baseType: !46, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !79, file: !17, line: 245, baseType: !91, size: 64, offset: 64)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 64, elements: !93)
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !{!94}
!94 = !DISubrange(count: 8)
!95 = !DILocation(line: 52, column: 28, scope: !76)
!96 = !DILocalVariable(name: "listenSocket", scope: !76, file: !1, line: 53, type: !71)
!97 = !DILocation(line: 53, column: 16, scope: !76)
!98 = !DILocalVariable(name: "acceptSocket", scope: !76, file: !1, line: 54, type: !71)
!99 = !DILocation(line: 54, column: 16, scope: !76)
!100 = !DILocalVariable(name: "inputBuffer", scope: !76, file: !1, line: 55, type: !60)
!101 = !DILocation(line: 55, column: 14, scope: !76)
!102 = !DILocation(line: 56, column: 9, scope: !76)
!103 = !DILocation(line: 66, column: 28, scope: !104)
!104 = distinct !DILexicalBlock(scope: !76, file: !1, line: 57, column: 9)
!105 = !DILocation(line: 66, column: 26, scope: !104)
!106 = !DILocation(line: 67, column: 17, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !1, line: 67, column: 17)
!108 = !DILocation(line: 67, column: 30, scope: !107)
!109 = !DILocation(line: 67, column: 17, scope: !104)
!110 = !DILocation(line: 69, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 68, column: 13)
!112 = !DILocation(line: 71, column: 13, scope: !104)
!113 = !DILocation(line: 72, column: 21, scope: !104)
!114 = !DILocation(line: 72, column: 32, scope: !104)
!115 = !DILocation(line: 73, column: 21, scope: !104)
!116 = !DILocation(line: 73, column: 30, scope: !104)
!117 = !DILocation(line: 73, column: 37, scope: !104)
!118 = !DILocation(line: 74, column: 32, scope: !104)
!119 = !DILocation(line: 74, column: 21, scope: !104)
!120 = !DILocation(line: 74, column: 30, scope: !104)
!121 = !DILocation(line: 75, column: 22, scope: !122)
!122 = distinct !DILexicalBlock(scope: !104, file: !1, line: 75, column: 17)
!123 = !DILocation(line: 75, column: 36, scope: !122)
!124 = !DILocation(line: 75, column: 17, scope: !122)
!125 = !DILocation(line: 75, column: 81, scope: !122)
!126 = !DILocation(line: 75, column: 17, scope: !104)
!127 = !DILocation(line: 77, column: 17, scope: !128)
!128 = distinct !DILexicalBlock(scope: !122, file: !1, line: 76, column: 13)
!129 = !DILocation(line: 79, column: 24, scope: !130)
!130 = distinct !DILexicalBlock(scope: !104, file: !1, line: 79, column: 17)
!131 = !DILocation(line: 79, column: 17, scope: !130)
!132 = !DILocation(line: 79, column: 54, scope: !130)
!133 = !DILocation(line: 79, column: 17, scope: !104)
!134 = !DILocation(line: 81, column: 17, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !1, line: 80, column: 13)
!136 = !DILocation(line: 83, column: 35, scope: !104)
!137 = !DILocation(line: 83, column: 28, scope: !104)
!138 = !DILocation(line: 83, column: 26, scope: !104)
!139 = !DILocation(line: 84, column: 17, scope: !140)
!140 = distinct !DILexicalBlock(scope: !104, file: !1, line: 84, column: 17)
!141 = !DILocation(line: 84, column: 30, scope: !140)
!142 = !DILocation(line: 84, column: 17, scope: !104)
!143 = !DILocation(line: 86, column: 17, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 85, column: 13)
!145 = !DILocation(line: 89, column: 31, scope: !104)
!146 = !DILocation(line: 89, column: 45, scope: !104)
!147 = !DILocation(line: 89, column: 26, scope: !104)
!148 = !DILocation(line: 89, column: 24, scope: !104)
!149 = !DILocation(line: 90, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !104, file: !1, line: 90, column: 17)
!151 = !DILocation(line: 90, column: 28, scope: !150)
!152 = !DILocation(line: 90, column: 44, scope: !150)
!153 = !DILocation(line: 90, column: 47, scope: !150)
!154 = !DILocation(line: 90, column: 58, scope: !150)
!155 = !DILocation(line: 90, column: 17, scope: !104)
!156 = !DILocation(line: 92, column: 17, scope: !157)
!157 = distinct !DILexicalBlock(scope: !150, file: !1, line: 91, column: 13)
!158 = !DILocation(line: 95, column: 25, scope: !104)
!159 = !DILocation(line: 95, column: 13, scope: !104)
!160 = !DILocation(line: 95, column: 37, scope: !104)
!161 = !DILocation(line: 97, column: 25, scope: !104)
!162 = !DILocation(line: 97, column: 20, scope: !104)
!163 = !DILocation(line: 97, column: 18, scope: !104)
!164 = !DILocation(line: 98, column: 9, scope: !104)
!165 = !DILocation(line: 100, column: 13, scope: !166)
!166 = distinct !DILexicalBlock(scope: !76, file: !1, line: 100, column: 13)
!167 = !DILocation(line: 100, column: 26, scope: !166)
!168 = !DILocation(line: 100, column: 13, scope: !76)
!169 = !DILocation(line: 102, column: 26, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 101, column: 9)
!171 = !DILocation(line: 102, column: 13, scope: !170)
!172 = !DILocation(line: 103, column: 9, scope: !170)
!173 = !DILocation(line: 104, column: 13, scope: !174)
!174 = distinct !DILexicalBlock(scope: !76, file: !1, line: 104, column: 13)
!175 = !DILocation(line: 104, column: 26, scope: !174)
!176 = !DILocation(line: 104, column: 13, scope: !76)
!177 = !DILocation(line: 106, column: 26, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 105, column: 9)
!179 = !DILocation(line: 106, column: 13, scope: !178)
!180 = !DILocation(line: 107, column: 9, scope: !178)
!181 = !DILocation(line: 115, column: 12, scope: !68)
!182 = !DILocation(line: 115, column: 5, scope: !68)
!183 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodG2BSource", scope: !1, file: !1, line: 123, type: !69, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!184 = !DILocalVariable(name: "data", arg: 1, scope: !183, file: !1, line: 123, type: !71)
!185 = !DILocation(line: 123, column: 84, scope: !183)
!186 = !DILocation(line: 127, column: 10, scope: !183)
!187 = !DILocation(line: 128, column: 12, scope: !183)
!188 = !DILocation(line: 128, column: 5, scope: !183)
!189 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource", scope: !1, file: !1, line: 132, type: !69, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !72)
!190 = !DILocalVariable(name: "data", arg: 1, scope: !189, file: !1, line: 132, type: !71)
!191 = !DILocation(line: 132, column: 84, scope: !189)
!192 = !DILocalVariable(name: "recvResult", scope: !193, file: !1, line: 139, type: !71)
!193 = distinct !DILexicalBlock(scope: !189, file: !1, line: 134, column: 5)
!194 = !DILocation(line: 139, column: 13, scope: !193)
!195 = !DILocalVariable(name: "service", scope: !193, file: !1, line: 140, type: !79)
!196 = !DILocation(line: 140, column: 28, scope: !193)
!197 = !DILocalVariable(name: "listenSocket", scope: !193, file: !1, line: 141, type: !71)
!198 = !DILocation(line: 141, column: 16, scope: !193)
!199 = !DILocalVariable(name: "acceptSocket", scope: !193, file: !1, line: 142, type: !71)
!200 = !DILocation(line: 142, column: 16, scope: !193)
!201 = !DILocalVariable(name: "inputBuffer", scope: !193, file: !1, line: 143, type: !60)
!202 = !DILocation(line: 143, column: 14, scope: !193)
!203 = !DILocation(line: 144, column: 9, scope: !193)
!204 = !DILocation(line: 154, column: 28, scope: !205)
!205 = distinct !DILexicalBlock(scope: !193, file: !1, line: 145, column: 9)
!206 = !DILocation(line: 154, column: 26, scope: !205)
!207 = !DILocation(line: 155, column: 17, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !1, line: 155, column: 17)
!209 = !DILocation(line: 155, column: 30, scope: !208)
!210 = !DILocation(line: 155, column: 17, scope: !205)
!211 = !DILocation(line: 157, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !1, line: 156, column: 13)
!213 = !DILocation(line: 159, column: 13, scope: !205)
!214 = !DILocation(line: 160, column: 21, scope: !205)
!215 = !DILocation(line: 160, column: 32, scope: !205)
!216 = !DILocation(line: 161, column: 21, scope: !205)
!217 = !DILocation(line: 161, column: 30, scope: !205)
!218 = !DILocation(line: 161, column: 37, scope: !205)
!219 = !DILocation(line: 162, column: 32, scope: !205)
!220 = !DILocation(line: 162, column: 21, scope: !205)
!221 = !DILocation(line: 162, column: 30, scope: !205)
!222 = !DILocation(line: 163, column: 22, scope: !223)
!223 = distinct !DILexicalBlock(scope: !205, file: !1, line: 163, column: 17)
!224 = !DILocation(line: 163, column: 36, scope: !223)
!225 = !DILocation(line: 163, column: 17, scope: !223)
!226 = !DILocation(line: 163, column: 81, scope: !223)
!227 = !DILocation(line: 163, column: 17, scope: !205)
!228 = !DILocation(line: 165, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !223, file: !1, line: 164, column: 13)
!230 = !DILocation(line: 167, column: 24, scope: !231)
!231 = distinct !DILexicalBlock(scope: !205, file: !1, line: 167, column: 17)
!232 = !DILocation(line: 167, column: 17, scope: !231)
!233 = !DILocation(line: 167, column: 54, scope: !231)
!234 = !DILocation(line: 167, column: 17, scope: !205)
!235 = !DILocation(line: 169, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !231, file: !1, line: 168, column: 13)
!237 = !DILocation(line: 171, column: 35, scope: !205)
!238 = !DILocation(line: 171, column: 28, scope: !205)
!239 = !DILocation(line: 171, column: 26, scope: !205)
!240 = !DILocation(line: 172, column: 17, scope: !241)
!241 = distinct !DILexicalBlock(scope: !205, file: !1, line: 172, column: 17)
!242 = !DILocation(line: 172, column: 30, scope: !241)
!243 = !DILocation(line: 172, column: 17, scope: !205)
!244 = !DILocation(line: 174, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !1, line: 173, column: 13)
!246 = !DILocation(line: 177, column: 31, scope: !205)
!247 = !DILocation(line: 177, column: 45, scope: !205)
!248 = !DILocation(line: 177, column: 26, scope: !205)
!249 = !DILocation(line: 177, column: 24, scope: !205)
!250 = !DILocation(line: 178, column: 17, scope: !251)
!251 = distinct !DILexicalBlock(scope: !205, file: !1, line: 178, column: 17)
!252 = !DILocation(line: 178, column: 28, scope: !251)
!253 = !DILocation(line: 178, column: 44, scope: !251)
!254 = !DILocation(line: 178, column: 47, scope: !251)
!255 = !DILocation(line: 178, column: 58, scope: !251)
!256 = !DILocation(line: 178, column: 17, scope: !205)
!257 = !DILocation(line: 180, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !251, file: !1, line: 179, column: 13)
!259 = !DILocation(line: 183, column: 25, scope: !205)
!260 = !DILocation(line: 183, column: 13, scope: !205)
!261 = !DILocation(line: 183, column: 37, scope: !205)
!262 = !DILocation(line: 185, column: 25, scope: !205)
!263 = !DILocation(line: 185, column: 20, scope: !205)
!264 = !DILocation(line: 185, column: 18, scope: !205)
!265 = !DILocation(line: 186, column: 9, scope: !205)
!266 = !DILocation(line: 188, column: 13, scope: !267)
!267 = distinct !DILexicalBlock(scope: !193, file: !1, line: 188, column: 13)
!268 = !DILocation(line: 188, column: 26, scope: !267)
!269 = !DILocation(line: 188, column: 13, scope: !193)
!270 = !DILocation(line: 190, column: 26, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !1, line: 189, column: 9)
!272 = !DILocation(line: 190, column: 13, scope: !271)
!273 = !DILocation(line: 191, column: 9, scope: !271)
!274 = !DILocation(line: 192, column: 13, scope: !275)
!275 = distinct !DILexicalBlock(scope: !193, file: !1, line: 192, column: 13)
!276 = !DILocation(line: 192, column: 26, scope: !275)
!277 = !DILocation(line: 192, column: 13, scope: !193)
!278 = !DILocation(line: 194, column: 26, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !1, line: 193, column: 9)
!280 = !DILocation(line: 194, column: 13, scope: !279)
!281 = !DILocation(line: 195, column: 9, scope: !279)
!282 = !DILocation(line: 203, column: 12, scope: !189)
!283 = !DILocation(line: 203, column: 5, scope: !189)
