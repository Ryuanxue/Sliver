; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51a.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51_bad() #0 !dbg !68 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !72, metadata !DIExpression()), !dbg !74
  store i32 -1, i32* %data, align 4, !dbg !75
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !76, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !79, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !97, metadata !DIExpression()), !dbg !98
  store i32 -1, i32* %listenSocket, align 4, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 -1, i32* %acceptSocket, align 4, !dbg !100
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !101, metadata !DIExpression()), !dbg !102
  br label %do.body, !dbg !103

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !104
  store i32 %call, i32* %listenSocket, align 4, !dbg !106
  %0 = load i32, i32* %listenSocket, align 4, !dbg !107
  %cmp = icmp eq i32 %0, -1, !dbg !109
  br i1 %cmp, label %if.then, label %if.end, !dbg !110

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !111

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !113
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !113
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !114
  store i16 2, i16* %sin_family, align 4, !dbg !115
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !116
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !117
  store i32 0, i32* %s_addr, align 4, !dbg !118
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !119
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !120
  store i16 %call1, i16* %sin_port, align 2, !dbg !121
  %2 = load i32, i32* %listenSocket, align 4, !dbg !122
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !124
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !125
  %cmp3 = icmp eq i32 %call2, -1, !dbg !126
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !127

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !128

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !130
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !132
  %cmp7 = icmp eq i32 %call6, -1, !dbg !133
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !134

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !135

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !137
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !138
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !139
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !140
  %cmp11 = icmp eq i32 %6, -1, !dbg !142
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !143

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !144

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !146
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !147
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !148
  %conv = trunc i64 %call14 to i32, !dbg !148
  store i32 %conv, i32* %recvResult, align 4, !dbg !149
  %8 = load i32, i32* %recvResult, align 4, !dbg !150
  %cmp15 = icmp eq i32 %8, -1, !dbg !152
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !153

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !154
  %cmp17 = icmp eq i32 %9, 0, !dbg !155
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !156

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !157

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !159
  %idxprom = sext i32 %10 to i64, !dbg !160
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !160
  store i8 0, i8* %arrayidx, align 1, !dbg !161
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !162
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !163
  store i32 %call22, i32* %data, align 4, !dbg !164
  br label %do.end, !dbg !165

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !166
  %cmp23 = icmp ne i32 %11, -1, !dbg !168
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !169

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !170
  %call26 = call i32 @close(i32 %12), !dbg !172
  br label %if.end27, !dbg !173

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !174
  %cmp28 = icmp ne i32 %13, -1, !dbg !176
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !177

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !178
  %call31 = call i32 @close(i32 %14), !dbg !180
  br label %if.end32, !dbg !181

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data, align 4, !dbg !182
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_badSink(i32 %15), !dbg !183
  ret void, !dbg !184
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

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_badSink(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !185 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !186, metadata !DIExpression()), !dbg !187
  store i32 -1, i32* %data, align 4, !dbg !188
  store i32 7, i32* %data, align 4, !dbg !189
  %0 = load i32, i32* %data, align 4, !dbg !190
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_goodG2BSink(i32 %0), !dbg !191
  ret void, !dbg !192
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_goodG2BSink(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !193 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !194, metadata !DIExpression()), !dbg !195
  store i32 -1, i32* %data, align 4, !dbg !196
  call void @llvm.dbg.declare(metadata i32* %recvResult, metadata !197, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %service, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i32* %listenSocket, metadata !202, metadata !DIExpression()), !dbg !203
  store i32 -1, i32* %listenSocket, align 4, !dbg !203
  call void @llvm.dbg.declare(metadata i32* %acceptSocket, metadata !204, metadata !DIExpression()), !dbg !205
  store i32 -1, i32* %acceptSocket, align 4, !dbg !205
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !206, metadata !DIExpression()), !dbg !207
  br label %do.body, !dbg !208

do.body:                                          ; preds = %entry
  %call = call i32 @socket(i32 2, i32 1, i32 6) #7, !dbg !209
  store i32 %call, i32* %listenSocket, align 4, !dbg !211
  %0 = load i32, i32* %listenSocket, align 4, !dbg !212
  %cmp = icmp eq i32 %0, -1, !dbg !214
  br i1 %cmp, label %if.then, label %if.end, !dbg !215

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !216

if.end:                                           ; preds = %do.body
  %1 = bitcast %struct.sockaddr_in* %service to i8*, !dbg !218
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 16, i1 false), !dbg !218
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 0, !dbg !219
  store i16 2, i16* %sin_family, align 4, !dbg !220
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 2, !dbg !221
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !222
  store i32 0, i32* %s_addr, align 4, !dbg !223
  %call1 = call zeroext i16 @htons(i16 zeroext 27015) #8, !dbg !224
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %service, i32 0, i32 1, !dbg !225
  store i16 %call1, i16* %sin_port, align 2, !dbg !226
  %2 = load i32, i32* %listenSocket, align 4, !dbg !227
  %3 = bitcast %struct.sockaddr_in* %service to %struct.sockaddr*, !dbg !229
  %call2 = call i32 @bind(i32 %2, %struct.sockaddr* %3, i32 16) #7, !dbg !230
  %cmp3 = icmp eq i32 %call2, -1, !dbg !231
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !232

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !233

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %listenSocket, align 4, !dbg !235
  %call6 = call i32 @listen(i32 %4, i32 5) #7, !dbg !237
  %cmp7 = icmp eq i32 %call6, -1, !dbg !238
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !239

if.then8:                                         ; preds = %if.end5
  br label %do.end, !dbg !240

if.end9:                                          ; preds = %if.end5
  %5 = load i32, i32* %listenSocket, align 4, !dbg !242
  %call10 = call i32 @accept(i32 %5, %struct.sockaddr* null, i32* null), !dbg !243
  store i32 %call10, i32* %acceptSocket, align 4, !dbg !244
  %6 = load i32, i32* %acceptSocket, align 4, !dbg !245
  %cmp11 = icmp eq i32 %6, -1, !dbg !247
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !248

if.then12:                                        ; preds = %if.end9
  br label %do.end, !dbg !249

if.end13:                                         ; preds = %if.end9
  %7 = load i32, i32* %acceptSocket, align 4, !dbg !251
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !252
  %call14 = call i64 @recv(i32 %7, i8* %arraydecay, i64 13, i32 0), !dbg !253
  %conv = trunc i64 %call14 to i32, !dbg !253
  store i32 %conv, i32* %recvResult, align 4, !dbg !254
  %8 = load i32, i32* %recvResult, align 4, !dbg !255
  %cmp15 = icmp eq i32 %8, -1, !dbg !257
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !258

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load i32, i32* %recvResult, align 4, !dbg !259
  %cmp17 = icmp eq i32 %9, 0, !dbg !260
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !261

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  br label %do.end, !dbg !262

if.end20:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %recvResult, align 4, !dbg !264
  %idxprom = sext i32 %10 to i64, !dbg !265
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 %idxprom, !dbg !265
  store i8 0, i8* %arrayidx, align 1, !dbg !266
  %arraydecay21 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !267
  %call22 = call i32 @atoi(i8* %arraydecay21) #9, !dbg !268
  store i32 %call22, i32* %data, align 4, !dbg !269
  br label %do.end, !dbg !270

do.end:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then8, %if.then4, %if.then
  %11 = load i32, i32* %listenSocket, align 4, !dbg !271
  %cmp23 = icmp ne i32 %11, -1, !dbg !273
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !274

if.then25:                                        ; preds = %do.end
  %12 = load i32, i32* %listenSocket, align 4, !dbg !275
  %call26 = call i32 @close(i32 %12), !dbg !277
  br label %if.end27, !dbg !278

if.end27:                                         ; preds = %if.then25, %do.end
  %13 = load i32, i32* %acceptSocket, align 4, !dbg !279
  %cmp28 = icmp ne i32 %13, -1, !dbg !281
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !282

if.then30:                                        ; preds = %if.end27
  %14 = load i32, i32* %acceptSocket, align 4, !dbg !283
  %call31 = call i32 @close(i32 %14), !dbg !285
  br label %if.end32, !dbg !286

if.end32:                                         ; preds = %if.then30, %if.end27
  %15 = load i32, i32* %data, align 4, !dbg !287
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_goodB2GSink(i32 %15), !dbg !288
  ret void, !dbg !289
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51b_goodB2GSink(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51_good() #0 !dbg !290 {
entry:
  call void @goodG2B(), !dbg !291
  call void @goodB2G(), !dbg !292
  ret void, !dbg !293
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_737/source_code")
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
!68 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51_bad", scope: !1, file: !1, line: 47, type: !69, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{null}
!71 = !{}
!72 = !DILocalVariable(name: "data", scope: !68, file: !1, line: 49, type: !73)
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !DILocation(line: 49, column: 9, scope: !68)
!75 = !DILocation(line: 51, column: 10, scope: !68)
!76 = !DILocalVariable(name: "recvResult", scope: !77, file: !1, line: 57, type: !73)
!77 = distinct !DILexicalBlock(scope: !68, file: !1, line: 52, column: 5)
!78 = !DILocation(line: 57, column: 13, scope: !77)
!79 = !DILocalVariable(name: "service", scope: !77, file: !1, line: 58, type: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 238, size: 128, elements: !81)
!81 = !{!82, !83, !87, !91}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !80, file: !17, line: 240, baseType: !56, size: 16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !80, file: !17, line: 241, baseType: !84, size: 16, offset: 16)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 119, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !48, line: 25, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !50, line: 40, baseType: !58)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !80, file: !17, line: 242, baseType: !88, size: 32, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !88, file: !17, line: 33, baseType: !46, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !80, file: !17, line: 245, baseType: !92, size: 64, offset: 64)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 64, elements: !94)
!93 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!94 = !{!95}
!95 = !DISubrange(count: 8)
!96 = !DILocation(line: 58, column: 28, scope: !77)
!97 = !DILocalVariable(name: "listenSocket", scope: !77, file: !1, line: 59, type: !73)
!98 = !DILocation(line: 59, column: 16, scope: !77)
!99 = !DILocalVariable(name: "acceptSocket", scope: !77, file: !1, line: 60, type: !73)
!100 = !DILocation(line: 60, column: 16, scope: !77)
!101 = !DILocalVariable(name: "inputBuffer", scope: !77, file: !1, line: 61, type: !60)
!102 = !DILocation(line: 61, column: 14, scope: !77)
!103 = !DILocation(line: 62, column: 9, scope: !77)
!104 = !DILocation(line: 72, column: 28, scope: !105)
!105 = distinct !DILexicalBlock(scope: !77, file: !1, line: 63, column: 9)
!106 = !DILocation(line: 72, column: 26, scope: !105)
!107 = !DILocation(line: 73, column: 17, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !1, line: 73, column: 17)
!109 = !DILocation(line: 73, column: 30, scope: !108)
!110 = !DILocation(line: 73, column: 17, scope: !105)
!111 = !DILocation(line: 75, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 74, column: 13)
!113 = !DILocation(line: 77, column: 13, scope: !105)
!114 = !DILocation(line: 78, column: 21, scope: !105)
!115 = !DILocation(line: 78, column: 32, scope: !105)
!116 = !DILocation(line: 79, column: 21, scope: !105)
!117 = !DILocation(line: 79, column: 30, scope: !105)
!118 = !DILocation(line: 79, column: 37, scope: !105)
!119 = !DILocation(line: 80, column: 32, scope: !105)
!120 = !DILocation(line: 80, column: 21, scope: !105)
!121 = !DILocation(line: 80, column: 30, scope: !105)
!122 = !DILocation(line: 81, column: 22, scope: !123)
!123 = distinct !DILexicalBlock(scope: !105, file: !1, line: 81, column: 17)
!124 = !DILocation(line: 81, column: 36, scope: !123)
!125 = !DILocation(line: 81, column: 17, scope: !123)
!126 = !DILocation(line: 81, column: 81, scope: !123)
!127 = !DILocation(line: 81, column: 17, scope: !105)
!128 = !DILocation(line: 83, column: 17, scope: !129)
!129 = distinct !DILexicalBlock(scope: !123, file: !1, line: 82, column: 13)
!130 = !DILocation(line: 85, column: 24, scope: !131)
!131 = distinct !DILexicalBlock(scope: !105, file: !1, line: 85, column: 17)
!132 = !DILocation(line: 85, column: 17, scope: !131)
!133 = !DILocation(line: 85, column: 54, scope: !131)
!134 = !DILocation(line: 85, column: 17, scope: !105)
!135 = !DILocation(line: 87, column: 17, scope: !136)
!136 = distinct !DILexicalBlock(scope: !131, file: !1, line: 86, column: 13)
!137 = !DILocation(line: 89, column: 35, scope: !105)
!138 = !DILocation(line: 89, column: 28, scope: !105)
!139 = !DILocation(line: 89, column: 26, scope: !105)
!140 = !DILocation(line: 90, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !105, file: !1, line: 90, column: 17)
!142 = !DILocation(line: 90, column: 30, scope: !141)
!143 = !DILocation(line: 90, column: 17, scope: !105)
!144 = !DILocation(line: 92, column: 17, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !1, line: 91, column: 13)
!146 = !DILocation(line: 95, column: 31, scope: !105)
!147 = !DILocation(line: 95, column: 45, scope: !105)
!148 = !DILocation(line: 95, column: 26, scope: !105)
!149 = !DILocation(line: 95, column: 24, scope: !105)
!150 = !DILocation(line: 96, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !105, file: !1, line: 96, column: 17)
!152 = !DILocation(line: 96, column: 28, scope: !151)
!153 = !DILocation(line: 96, column: 44, scope: !151)
!154 = !DILocation(line: 96, column: 47, scope: !151)
!155 = !DILocation(line: 96, column: 58, scope: !151)
!156 = !DILocation(line: 96, column: 17, scope: !105)
!157 = !DILocation(line: 98, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !151, file: !1, line: 97, column: 13)
!159 = !DILocation(line: 101, column: 25, scope: !105)
!160 = !DILocation(line: 101, column: 13, scope: !105)
!161 = !DILocation(line: 101, column: 37, scope: !105)
!162 = !DILocation(line: 103, column: 25, scope: !105)
!163 = !DILocation(line: 103, column: 20, scope: !105)
!164 = !DILocation(line: 103, column: 18, scope: !105)
!165 = !DILocation(line: 104, column: 9, scope: !105)
!166 = !DILocation(line: 106, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !77, file: !1, line: 106, column: 13)
!168 = !DILocation(line: 106, column: 26, scope: !167)
!169 = !DILocation(line: 106, column: 13, scope: !77)
!170 = !DILocation(line: 108, column: 26, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !1, line: 107, column: 9)
!172 = !DILocation(line: 108, column: 13, scope: !171)
!173 = !DILocation(line: 109, column: 9, scope: !171)
!174 = !DILocation(line: 110, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !77, file: !1, line: 110, column: 13)
!176 = !DILocation(line: 110, column: 26, scope: !175)
!177 = !DILocation(line: 110, column: 13, scope: !77)
!178 = !DILocation(line: 112, column: 26, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 111, column: 9)
!180 = !DILocation(line: 112, column: 13, scope: !179)
!181 = !DILocation(line: 113, column: 9, scope: !179)
!182 = !DILocation(line: 121, column: 74, scope: !68)
!183 = !DILocation(line: 121, column: 5, scope: !68)
!184 = !DILocation(line: 122, column: 1, scope: !68)
!185 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 130, type: !69, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!186 = !DILocalVariable(name: "data", scope: !185, file: !1, line: 132, type: !73)
!187 = !DILocation(line: 132, column: 9, scope: !185)
!188 = !DILocation(line: 134, column: 10, scope: !185)
!189 = !DILocation(line: 137, column: 10, scope: !185)
!190 = !DILocation(line: 138, column: 78, scope: !185)
!191 = !DILocation(line: 138, column: 5, scope: !185)
!192 = !DILocation(line: 139, column: 1, scope: !185)
!193 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 143, type: !69, scopeLine: 144, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!194 = !DILocalVariable(name: "data", scope: !193, file: !1, line: 145, type: !73)
!195 = !DILocation(line: 145, column: 9, scope: !193)
!196 = !DILocation(line: 147, column: 10, scope: !193)
!197 = !DILocalVariable(name: "recvResult", scope: !198, file: !1, line: 153, type: !73)
!198 = distinct !DILexicalBlock(scope: !193, file: !1, line: 148, column: 5)
!199 = !DILocation(line: 153, column: 13, scope: !198)
!200 = !DILocalVariable(name: "service", scope: !198, file: !1, line: 154, type: !80)
!201 = !DILocation(line: 154, column: 28, scope: !198)
!202 = !DILocalVariable(name: "listenSocket", scope: !198, file: !1, line: 155, type: !73)
!203 = !DILocation(line: 155, column: 16, scope: !198)
!204 = !DILocalVariable(name: "acceptSocket", scope: !198, file: !1, line: 156, type: !73)
!205 = !DILocation(line: 156, column: 16, scope: !198)
!206 = !DILocalVariable(name: "inputBuffer", scope: !198, file: !1, line: 157, type: !60)
!207 = !DILocation(line: 157, column: 14, scope: !198)
!208 = !DILocation(line: 158, column: 9, scope: !198)
!209 = !DILocation(line: 168, column: 28, scope: !210)
!210 = distinct !DILexicalBlock(scope: !198, file: !1, line: 159, column: 9)
!211 = !DILocation(line: 168, column: 26, scope: !210)
!212 = !DILocation(line: 169, column: 17, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !1, line: 169, column: 17)
!214 = !DILocation(line: 169, column: 30, scope: !213)
!215 = !DILocation(line: 169, column: 17, scope: !210)
!216 = !DILocation(line: 171, column: 17, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !1, line: 170, column: 13)
!218 = !DILocation(line: 173, column: 13, scope: !210)
!219 = !DILocation(line: 174, column: 21, scope: !210)
!220 = !DILocation(line: 174, column: 32, scope: !210)
!221 = !DILocation(line: 175, column: 21, scope: !210)
!222 = !DILocation(line: 175, column: 30, scope: !210)
!223 = !DILocation(line: 175, column: 37, scope: !210)
!224 = !DILocation(line: 176, column: 32, scope: !210)
!225 = !DILocation(line: 176, column: 21, scope: !210)
!226 = !DILocation(line: 176, column: 30, scope: !210)
!227 = !DILocation(line: 177, column: 22, scope: !228)
!228 = distinct !DILexicalBlock(scope: !210, file: !1, line: 177, column: 17)
!229 = !DILocation(line: 177, column: 36, scope: !228)
!230 = !DILocation(line: 177, column: 17, scope: !228)
!231 = !DILocation(line: 177, column: 81, scope: !228)
!232 = !DILocation(line: 177, column: 17, scope: !210)
!233 = !DILocation(line: 179, column: 17, scope: !234)
!234 = distinct !DILexicalBlock(scope: !228, file: !1, line: 178, column: 13)
!235 = !DILocation(line: 181, column: 24, scope: !236)
!236 = distinct !DILexicalBlock(scope: !210, file: !1, line: 181, column: 17)
!237 = !DILocation(line: 181, column: 17, scope: !236)
!238 = !DILocation(line: 181, column: 54, scope: !236)
!239 = !DILocation(line: 181, column: 17, scope: !210)
!240 = !DILocation(line: 183, column: 17, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !1, line: 182, column: 13)
!242 = !DILocation(line: 185, column: 35, scope: !210)
!243 = !DILocation(line: 185, column: 28, scope: !210)
!244 = !DILocation(line: 185, column: 26, scope: !210)
!245 = !DILocation(line: 186, column: 17, scope: !246)
!246 = distinct !DILexicalBlock(scope: !210, file: !1, line: 186, column: 17)
!247 = !DILocation(line: 186, column: 30, scope: !246)
!248 = !DILocation(line: 186, column: 17, scope: !210)
!249 = !DILocation(line: 188, column: 17, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !1, line: 187, column: 13)
!251 = !DILocation(line: 191, column: 31, scope: !210)
!252 = !DILocation(line: 191, column: 45, scope: !210)
!253 = !DILocation(line: 191, column: 26, scope: !210)
!254 = !DILocation(line: 191, column: 24, scope: !210)
!255 = !DILocation(line: 192, column: 17, scope: !256)
!256 = distinct !DILexicalBlock(scope: !210, file: !1, line: 192, column: 17)
!257 = !DILocation(line: 192, column: 28, scope: !256)
!258 = !DILocation(line: 192, column: 44, scope: !256)
!259 = !DILocation(line: 192, column: 47, scope: !256)
!260 = !DILocation(line: 192, column: 58, scope: !256)
!261 = !DILocation(line: 192, column: 17, scope: !210)
!262 = !DILocation(line: 194, column: 17, scope: !263)
!263 = distinct !DILexicalBlock(scope: !256, file: !1, line: 193, column: 13)
!264 = !DILocation(line: 197, column: 25, scope: !210)
!265 = !DILocation(line: 197, column: 13, scope: !210)
!266 = !DILocation(line: 197, column: 37, scope: !210)
!267 = !DILocation(line: 199, column: 25, scope: !210)
!268 = !DILocation(line: 199, column: 20, scope: !210)
!269 = !DILocation(line: 199, column: 18, scope: !210)
!270 = !DILocation(line: 200, column: 9, scope: !210)
!271 = !DILocation(line: 202, column: 13, scope: !272)
!272 = distinct !DILexicalBlock(scope: !198, file: !1, line: 202, column: 13)
!273 = !DILocation(line: 202, column: 26, scope: !272)
!274 = !DILocation(line: 202, column: 13, scope: !198)
!275 = !DILocation(line: 204, column: 26, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !1, line: 203, column: 9)
!277 = !DILocation(line: 204, column: 13, scope: !276)
!278 = !DILocation(line: 205, column: 9, scope: !276)
!279 = !DILocation(line: 206, column: 13, scope: !280)
!280 = distinct !DILexicalBlock(scope: !198, file: !1, line: 206, column: 13)
!281 = !DILocation(line: 206, column: 26, scope: !280)
!282 = !DILocation(line: 206, column: 13, scope: !198)
!283 = !DILocation(line: 208, column: 26, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !1, line: 207, column: 9)
!285 = !DILocation(line: 208, column: 13, scope: !284)
!286 = !DILocation(line: 209, column: 9, scope: !284)
!287 = !DILocation(line: 217, column: 78, scope: !193)
!288 = !DILocation(line: 217, column: 5, scope: !193)
!289 = !DILocation(line: 218, column: 1, scope: !193)
!290 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_51_good", scope: !1, file: !1, line: 220, type: !69, scopeLine: 221, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!291 = !DILocation(line: 222, column: 5, scope: !290)
!292 = !DILocation(line: 223, column: 5, scope: !290)
!293 = !DILocation(line: 224, column: 1, scope: !290)
