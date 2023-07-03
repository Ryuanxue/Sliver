; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68a.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_badData = dso_local global i32 0, align 4, !dbg !0
@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodG2BData = dso_local global i32 0, align 4, !dbg !67
@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodB2GData = dso_local global i32 0, align 4, !dbg !70

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_bad() #0 !dbg !76 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !80, metadata !DIExpression()), !dbg !81
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
  store i32 %15, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_badData, align 4, !dbg !190
  call void (...) @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_badSink(), !dbg !191
  ret void, !dbg !192
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

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_badSink(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !193 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !194, metadata !DIExpression()), !dbg !195
  store i32 -1, i32* %data, align 4, !dbg !196
  store i32 7, i32* %data, align 4, !dbg !197
  %0 = load i32, i32* %data, align 4, !dbg !198
  store i32 %0, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodG2BData, align 4, !dbg !199
  call void (...) @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_goodG2BSink(), !dbg !200
  ret void, !dbg !201
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_goodG2BSink(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !202 {
entry:
  %data = alloca i32, align 4
  %recvResult = alloca i32, align 4
  %service = alloca %struct.sockaddr_in, align 4
  %listenSocket = alloca i32, align 4
  %acceptSocket = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !203, metadata !DIExpression()), !dbg !204
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
  %15 = load i32, i32* %data, align 4, !dbg !296
  store i32 %15, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodB2GData, align 4, !dbg !297
  call void (...) @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_goodB2GSink(), !dbg !298
  ret void, !dbg !299
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_goodB2GSink(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_good() #0 !dbg !300 {
entry:
  call void @goodG2B(), !dbg !301
  call void @goodB2G(), !dbg !302
  ret void, !dbg !303
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!72, !73, !74}
!llvm.ident = !{!75}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_badData", scope: !2, file: !3, line: 43, type: !69, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_748/source_code")
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
!66 = !{!0, !67, !70}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodG2BData", scope: !2, file: !3, line: 44, type: !69, isLocal: false, isDefinition: true)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodB2GData", scope: !2, file: !3, line: 45, type: !69, isLocal: false, isDefinition: true)
!72 = !{i32 7, !"Dwarf Version", i32 4}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"wchar_size", i32 4}
!75 = !{!"clang version 12.0.0"}
!76 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_bad", scope: !3, file: !3, line: 51, type: !77, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{null}
!79 = !{}
!80 = !DILocalVariable(name: "data", scope: !76, file: !3, line: 53, type: !69)
!81 = !DILocation(line: 53, column: 9, scope: !76)
!82 = !DILocation(line: 55, column: 10, scope: !76)
!83 = !DILocalVariable(name: "recvResult", scope: !84, file: !3, line: 61, type: !69)
!84 = distinct !DILexicalBlock(scope: !76, file: !3, line: 56, column: 5)
!85 = !DILocation(line: 61, column: 13, scope: !84)
!86 = !DILocalVariable(name: "service", scope: !84, file: !3, line: 62, type: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !19, line: 238, size: 128, elements: !88)
!88 = !{!89, !90, !94, !98}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !87, file: !19, line: 240, baseType: !58, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !87, file: !19, line: 241, baseType: !91, size: 16, offset: 16)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !19, line: 119, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 25, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 40, baseType: !60)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !87, file: !19, line: 242, baseType: !95, size: 32, offset: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !19, line: 31, size: 32, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !95, file: !19, line: 33, baseType: !48, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !87, file: !19, line: 245, baseType: !99, size: 64, offset: 64)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 64, elements: !101)
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !{!102}
!102 = !DISubrange(count: 8)
!103 = !DILocation(line: 62, column: 28, scope: !84)
!104 = !DILocalVariable(name: "listenSocket", scope: !84, file: !3, line: 63, type: !69)
!105 = !DILocation(line: 63, column: 16, scope: !84)
!106 = !DILocalVariable(name: "acceptSocket", scope: !84, file: !3, line: 64, type: !69)
!107 = !DILocation(line: 64, column: 16, scope: !84)
!108 = !DILocalVariable(name: "inputBuffer", scope: !84, file: !3, line: 65, type: !62)
!109 = !DILocation(line: 65, column: 14, scope: !84)
!110 = !DILocation(line: 66, column: 9, scope: !84)
!111 = !DILocation(line: 76, column: 28, scope: !112)
!112 = distinct !DILexicalBlock(scope: !84, file: !3, line: 67, column: 9)
!113 = !DILocation(line: 76, column: 26, scope: !112)
!114 = !DILocation(line: 77, column: 17, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !3, line: 77, column: 17)
!116 = !DILocation(line: 77, column: 30, scope: !115)
!117 = !DILocation(line: 77, column: 17, scope: !112)
!118 = !DILocation(line: 79, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !3, line: 78, column: 13)
!120 = !DILocation(line: 81, column: 13, scope: !112)
!121 = !DILocation(line: 82, column: 21, scope: !112)
!122 = !DILocation(line: 82, column: 32, scope: !112)
!123 = !DILocation(line: 83, column: 21, scope: !112)
!124 = !DILocation(line: 83, column: 30, scope: !112)
!125 = !DILocation(line: 83, column: 37, scope: !112)
!126 = !DILocation(line: 84, column: 32, scope: !112)
!127 = !DILocation(line: 84, column: 21, scope: !112)
!128 = !DILocation(line: 84, column: 30, scope: !112)
!129 = !DILocation(line: 85, column: 22, scope: !130)
!130 = distinct !DILexicalBlock(scope: !112, file: !3, line: 85, column: 17)
!131 = !DILocation(line: 85, column: 36, scope: !130)
!132 = !DILocation(line: 85, column: 17, scope: !130)
!133 = !DILocation(line: 85, column: 81, scope: !130)
!134 = !DILocation(line: 85, column: 17, scope: !112)
!135 = !DILocation(line: 87, column: 17, scope: !136)
!136 = distinct !DILexicalBlock(scope: !130, file: !3, line: 86, column: 13)
!137 = !DILocation(line: 89, column: 24, scope: !138)
!138 = distinct !DILexicalBlock(scope: !112, file: !3, line: 89, column: 17)
!139 = !DILocation(line: 89, column: 17, scope: !138)
!140 = !DILocation(line: 89, column: 54, scope: !138)
!141 = !DILocation(line: 89, column: 17, scope: !112)
!142 = !DILocation(line: 91, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !3, line: 90, column: 13)
!144 = !DILocation(line: 93, column: 35, scope: !112)
!145 = !DILocation(line: 93, column: 28, scope: !112)
!146 = !DILocation(line: 93, column: 26, scope: !112)
!147 = !DILocation(line: 94, column: 17, scope: !148)
!148 = distinct !DILexicalBlock(scope: !112, file: !3, line: 94, column: 17)
!149 = !DILocation(line: 94, column: 30, scope: !148)
!150 = !DILocation(line: 94, column: 17, scope: !112)
!151 = !DILocation(line: 96, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !3, line: 95, column: 13)
!153 = !DILocation(line: 99, column: 31, scope: !112)
!154 = !DILocation(line: 99, column: 45, scope: !112)
!155 = !DILocation(line: 99, column: 26, scope: !112)
!156 = !DILocation(line: 99, column: 24, scope: !112)
!157 = !DILocation(line: 100, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !112, file: !3, line: 100, column: 17)
!159 = !DILocation(line: 100, column: 28, scope: !158)
!160 = !DILocation(line: 100, column: 44, scope: !158)
!161 = !DILocation(line: 100, column: 47, scope: !158)
!162 = !DILocation(line: 100, column: 58, scope: !158)
!163 = !DILocation(line: 100, column: 17, scope: !112)
!164 = !DILocation(line: 102, column: 17, scope: !165)
!165 = distinct !DILexicalBlock(scope: !158, file: !3, line: 101, column: 13)
!166 = !DILocation(line: 105, column: 25, scope: !112)
!167 = !DILocation(line: 105, column: 13, scope: !112)
!168 = !DILocation(line: 105, column: 37, scope: !112)
!169 = !DILocation(line: 107, column: 25, scope: !112)
!170 = !DILocation(line: 107, column: 20, scope: !112)
!171 = !DILocation(line: 107, column: 18, scope: !112)
!172 = !DILocation(line: 108, column: 9, scope: !112)
!173 = !DILocation(line: 110, column: 13, scope: !174)
!174 = distinct !DILexicalBlock(scope: !84, file: !3, line: 110, column: 13)
!175 = !DILocation(line: 110, column: 26, scope: !174)
!176 = !DILocation(line: 110, column: 13, scope: !84)
!177 = !DILocation(line: 112, column: 26, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !3, line: 111, column: 9)
!179 = !DILocation(line: 112, column: 13, scope: !178)
!180 = !DILocation(line: 113, column: 9, scope: !178)
!181 = !DILocation(line: 114, column: 13, scope: !182)
!182 = distinct !DILexicalBlock(scope: !84, file: !3, line: 114, column: 13)
!183 = !DILocation(line: 114, column: 26, scope: !182)
!184 = !DILocation(line: 114, column: 13, scope: !84)
!185 = !DILocation(line: 116, column: 26, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !3, line: 115, column: 9)
!187 = !DILocation(line: 116, column: 13, scope: !186)
!188 = !DILocation(line: 117, column: 9, scope: !186)
!189 = !DILocation(line: 125, column: 75, scope: !76)
!190 = !DILocation(line: 125, column: 73, scope: !76)
!191 = !DILocation(line: 126, column: 5, scope: !76)
!192 = !DILocation(line: 127, column: 1, scope: !76)
!193 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 136, type: !77, scopeLine: 137, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !79)
!194 = !DILocalVariable(name: "data", scope: !193, file: !3, line: 138, type: !69)
!195 = !DILocation(line: 138, column: 9, scope: !193)
!196 = !DILocation(line: 140, column: 10, scope: !193)
!197 = !DILocation(line: 143, column: 10, scope: !193)
!198 = !DILocation(line: 144, column: 79, scope: !193)
!199 = !DILocation(line: 144, column: 77, scope: !193)
!200 = !DILocation(line: 145, column: 5, scope: !193)
!201 = !DILocation(line: 146, column: 1, scope: !193)
!202 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 149, type: !77, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !79)
!203 = !DILocalVariable(name: "data", scope: !202, file: !3, line: 151, type: !69)
!204 = !DILocation(line: 151, column: 9, scope: !202)
!205 = !DILocation(line: 153, column: 10, scope: !202)
!206 = !DILocalVariable(name: "recvResult", scope: !207, file: !3, line: 159, type: !69)
!207 = distinct !DILexicalBlock(scope: !202, file: !3, line: 154, column: 5)
!208 = !DILocation(line: 159, column: 13, scope: !207)
!209 = !DILocalVariable(name: "service", scope: !207, file: !3, line: 160, type: !87)
!210 = !DILocation(line: 160, column: 28, scope: !207)
!211 = !DILocalVariable(name: "listenSocket", scope: !207, file: !3, line: 161, type: !69)
!212 = !DILocation(line: 161, column: 16, scope: !207)
!213 = !DILocalVariable(name: "acceptSocket", scope: !207, file: !3, line: 162, type: !69)
!214 = !DILocation(line: 162, column: 16, scope: !207)
!215 = !DILocalVariable(name: "inputBuffer", scope: !207, file: !3, line: 163, type: !62)
!216 = !DILocation(line: 163, column: 14, scope: !207)
!217 = !DILocation(line: 164, column: 9, scope: !207)
!218 = !DILocation(line: 174, column: 28, scope: !219)
!219 = distinct !DILexicalBlock(scope: !207, file: !3, line: 165, column: 9)
!220 = !DILocation(line: 174, column: 26, scope: !219)
!221 = !DILocation(line: 175, column: 17, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !3, line: 175, column: 17)
!223 = !DILocation(line: 175, column: 30, scope: !222)
!224 = !DILocation(line: 175, column: 17, scope: !219)
!225 = !DILocation(line: 177, column: 17, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !3, line: 176, column: 13)
!227 = !DILocation(line: 179, column: 13, scope: !219)
!228 = !DILocation(line: 180, column: 21, scope: !219)
!229 = !DILocation(line: 180, column: 32, scope: !219)
!230 = !DILocation(line: 181, column: 21, scope: !219)
!231 = !DILocation(line: 181, column: 30, scope: !219)
!232 = !DILocation(line: 181, column: 37, scope: !219)
!233 = !DILocation(line: 182, column: 32, scope: !219)
!234 = !DILocation(line: 182, column: 21, scope: !219)
!235 = !DILocation(line: 182, column: 30, scope: !219)
!236 = !DILocation(line: 183, column: 22, scope: !237)
!237 = distinct !DILexicalBlock(scope: !219, file: !3, line: 183, column: 17)
!238 = !DILocation(line: 183, column: 36, scope: !237)
!239 = !DILocation(line: 183, column: 17, scope: !237)
!240 = !DILocation(line: 183, column: 81, scope: !237)
!241 = !DILocation(line: 183, column: 17, scope: !219)
!242 = !DILocation(line: 185, column: 17, scope: !243)
!243 = distinct !DILexicalBlock(scope: !237, file: !3, line: 184, column: 13)
!244 = !DILocation(line: 187, column: 24, scope: !245)
!245 = distinct !DILexicalBlock(scope: !219, file: !3, line: 187, column: 17)
!246 = !DILocation(line: 187, column: 17, scope: !245)
!247 = !DILocation(line: 187, column: 54, scope: !245)
!248 = !DILocation(line: 187, column: 17, scope: !219)
!249 = !DILocation(line: 189, column: 17, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !3, line: 188, column: 13)
!251 = !DILocation(line: 191, column: 35, scope: !219)
!252 = !DILocation(line: 191, column: 28, scope: !219)
!253 = !DILocation(line: 191, column: 26, scope: !219)
!254 = !DILocation(line: 192, column: 17, scope: !255)
!255 = distinct !DILexicalBlock(scope: !219, file: !3, line: 192, column: 17)
!256 = !DILocation(line: 192, column: 30, scope: !255)
!257 = !DILocation(line: 192, column: 17, scope: !219)
!258 = !DILocation(line: 194, column: 17, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !3, line: 193, column: 13)
!260 = !DILocation(line: 197, column: 31, scope: !219)
!261 = !DILocation(line: 197, column: 45, scope: !219)
!262 = !DILocation(line: 197, column: 26, scope: !219)
!263 = !DILocation(line: 197, column: 24, scope: !219)
!264 = !DILocation(line: 198, column: 17, scope: !265)
!265 = distinct !DILexicalBlock(scope: !219, file: !3, line: 198, column: 17)
!266 = !DILocation(line: 198, column: 28, scope: !265)
!267 = !DILocation(line: 198, column: 44, scope: !265)
!268 = !DILocation(line: 198, column: 47, scope: !265)
!269 = !DILocation(line: 198, column: 58, scope: !265)
!270 = !DILocation(line: 198, column: 17, scope: !219)
!271 = !DILocation(line: 200, column: 17, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !3, line: 199, column: 13)
!273 = !DILocation(line: 203, column: 25, scope: !219)
!274 = !DILocation(line: 203, column: 13, scope: !219)
!275 = !DILocation(line: 203, column: 37, scope: !219)
!276 = !DILocation(line: 205, column: 25, scope: !219)
!277 = !DILocation(line: 205, column: 20, scope: !219)
!278 = !DILocation(line: 205, column: 18, scope: !219)
!279 = !DILocation(line: 206, column: 9, scope: !219)
!280 = !DILocation(line: 208, column: 13, scope: !281)
!281 = distinct !DILexicalBlock(scope: !207, file: !3, line: 208, column: 13)
!282 = !DILocation(line: 208, column: 26, scope: !281)
!283 = !DILocation(line: 208, column: 13, scope: !207)
!284 = !DILocation(line: 210, column: 26, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !3, line: 209, column: 9)
!286 = !DILocation(line: 210, column: 13, scope: !285)
!287 = !DILocation(line: 211, column: 9, scope: !285)
!288 = !DILocation(line: 212, column: 13, scope: !289)
!289 = distinct !DILexicalBlock(scope: !207, file: !3, line: 212, column: 13)
!290 = !DILocation(line: 212, column: 26, scope: !289)
!291 = !DILocation(line: 212, column: 13, scope: !207)
!292 = !DILocation(line: 214, column: 26, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !3, line: 213, column: 9)
!294 = !DILocation(line: 214, column: 13, scope: !293)
!295 = !DILocation(line: 215, column: 9, scope: !293)
!296 = !DILocation(line: 223, column: 79, scope: !202)
!297 = !DILocation(line: 223, column: 77, scope: !202)
!298 = !DILocation(line: 224, column: 5, scope: !202)
!299 = !DILocation(line: 225, column: 1, scope: !202)
!300 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_good", scope: !3, file: !3, line: 227, type: !77, scopeLine: 228, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !79)
!301 = !DILocation(line: 229, column: 5, scope: !300)
!302 = !DILocation(line: 230, column: 5, scope: !300)
!303 = !DILocation(line: 231, column: 1, scope: !300)
