; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"%d\0A,%d\0A,%d\0A,%d\0A,%d\0A,%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"p:%d,q:%d,r:%d,s:%d,u:%d,v:%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @main() local_unnamed_addr #0 {
if.end.3:
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %0 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  store i32 0, i32* %p, align 4, !tbaa !2
  %1 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #3
  store i32 0, i32* %q, align 4, !tbaa !2
  %2 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #3
  store i32 0, i32* %r, align 4, !tbaa !2
  %3 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #3
  store i32 0, i32* %s, align 4, !tbaa !2
  %4 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #3
  store i32 0, i32* %u, align 4, !tbaa !2
  %5 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #3
  store i32 0, i32* %v, align 4, !tbaa !2
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* nonnull %p, i32* nonnull %q, i32* nonnull %r, i32* nonnull %s, i32* nonnull %u, i32* nonnull %v)
  %6 = load i32, i32* %r, align 4, !tbaa !2
  %q.promoted = load i32, i32* %q, align 4, !tbaa !2
  %7 = load i32, i32* %v, align 4, !tbaa !2
  %add = add nsw i32 %6, %q.promoted
  %add1 = add nsw i32 %add, %q.promoted
  %mul = mul nsw i32 %7, %add1
  %add3 = add nsw i32 %mul, %6
  %add5 = add nsw i32 %add3, %6
  %add.1 = add nsw i32 %6, %add5
  %add1.1 = add nsw i32 %add.1, %add5
  %mul.1 = mul nsw i32 %add3, %add1.1
  %add3.2 = add nsw i32 %mul.1, %6
  store i32 %add3.2, i32* %v, align 4, !tbaa !2
  %.pre = add nsw i32 %add3.2, %6
  %.pre12 = add nsw i32 %6, %.pre
  %.pre13 = add nsw i32 %.pre12, %.pre
  %.pre14 = mul nsw i32 %add3.2, %.pre13
  store i32 %.pre, i32* %q, align 4, !tbaa !2
  store i32 %.pre12, i32* %p, align 4, !tbaa !2
  store i32 %.pre13, i32* %s, align 4, !tbaa !2
  store i32 %.pre14, i32* %u, align 4, !tbaa !2
  %call6 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %.pre12, i32 %.pre, i32 %6, i32 %.pre13, i32 %.pre14, i32 %add3.2)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__isoc99_scanf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
