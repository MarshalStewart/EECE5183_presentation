; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"%d\0A,%d\0A,%d\0A,%d\0A,%d\0A,%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"p:%d,q:%d,r:%d,s:%d,u:%d,v:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
entry:
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %p, align 4
  store i32 0, i32* %q, align 4
  store i32 0, i32* %r, align 4
  store i32 0, i32* %s, align 4
  store i32 0, i32* %u, align 4
  store i32 0, i32* %v, align 4
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %p, i32* %q, i32* %r, i32* %s, i32* %u, i32* %v)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %q, align 4
  %2 = load i32, i32* %r, align 4
  %add = add nsw i32 %1, %2
  store i32 %add, i32* %p, align 4
  %3 = load i32, i32* %p, align 4
  %4 = load i32, i32* %q, align 4
  %add1 = add nsw i32 %3, %4
  store i32 %add1, i32* %s, align 4
  %5 = load i32, i32* %s, align 4
  %6 = load i32, i32* %v, align 4
  %mul = mul nsw i32 %5, %6
  store i32 %mul, i32* %u, align 4
  %7 = load i32, i32* %i, align 4
  %rem = srem i32 %7, 2
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %r, align 4
  %9 = load i32, i32* %u, align 4
  %add3 = add nsw i32 %8, %9
  store i32 %add3, i32* %v, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %10 = load i32, i32* %s, align 4
  %11 = load i32, i32* %u, align 4
  %mul4 = mul nsw i32 %10, %11
  store i32 %mul4, i32* %q, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %v, align 4
  %13 = load i32, i32* %r, align 4
  %add5 = add nsw i32 %12, %13
  store i32 %add5, i32* %q, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %p, align 4
  %16 = load i32, i32* %q, align 4
  %17 = load i32, i32* %r, align 4
  %18 = load i32, i32* %s, align 4
  %19 = load i32, i32* %u, align 4
  %20 = load i32, i32* %v, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
