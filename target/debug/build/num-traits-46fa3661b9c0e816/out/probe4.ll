; ModuleID = 'probe4.44adcfaa9954dba4-cgu.0'
source_filename = "probe4.44adcfaa9954dba4-cgu.0"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

@alloc_72c168d6b7916ede697f0d761da74a0a = private unnamed_addr constant <{ [83 x i8] }> <{ [83 x i8] c"/private/tmp/rust-20231125-5631-dit9ou/rustc-1.74.0-src/library/core/src/num/mod.rs" }>, align 1
@alloc_7c2179d0200d726e5dd25dc58facdf46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_72c168d6b7916ede697f0d761da74a0a, [16 x i8] c"S\00\00\00\00\00\00\00v\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; probe4::probe
; Function Attrs: uwtable
define void @_ZN6probe45probe17hcff2b2054e1469daE() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17had3ca0208f63bec7E.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17he4b2c3a13599222aE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_7c2179d0200d726e5dd25dc58facdf46) #3
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17had3ca0208f63bec7E.exit": ; preds = %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17he4b2c3a13599222aE(ptr align 1, i64, ptr align 8) unnamed_addr #2

attributes #0 = { uwtable "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="all" "probe-stack"="inline-asm" "target-cpu"="penryn" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.74.0 (79e9716c9 2023-11-13) (Homebrew)"}
