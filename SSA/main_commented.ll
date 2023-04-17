; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  ; Define variable memory once, all others are references
  ; Note: %1 is unused, it represents the function return type
  %1 = alloca i32, align 4          ; return value
  %2 = alloca i32, align 4          ; int x
  %3 = alloca i32, align 4          ; int y
  %4 = alloca i32, align 4          ; int z
  
  store i32 0, i32* %1, align 4     ; return value
  store i32 5, i32* %2, align 4     ; x = 5
  store i32 7, i32* %3, align 4     ; y = 7
  
  ; Create new variables for x and y reads (SSA)
  %5 = load i32, i32* %2, align 4   ; x_1 = x
  %6 = load i32, i32* %3, align 4   ; y_1 = y
  
  %7 = add nsw i32 %5, %6           ; (x_1 + y_1)
  store i32 %7, i32* %4, align 4    ; z = (x_1 + y_1)
  
  ; Assign original, not x_1 and y_1
  store i32 10, i32* %2, align 4    ; x = 10, line 5
  store i32 15, i32* %3, align 4    ; y = 15, line 6
  
  ; Create new variables again for x and y reads (SSA)
  %8 = load i32, i32* %2, align 4   ; x_2 = x
  %9 = load i32, i32* %3, align 4   ; y_2 = y
  
  %10 = add nsw i32 %8, %9          ; (x_2 + y_2) 
  store i32 %10, i32* %4, align 4   ; z = (x_2 + y_2)

  ret i32 0                         ; return 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
