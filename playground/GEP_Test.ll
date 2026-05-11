target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%S = type { ptr, ptr, ptr, ptr }

define i32 @main() {
  %main = alloca %S, align 8
  %output_capture = alloca ptr, align 8
  %f0 = getelementptr inbounds %S, ptr %main, i32 0, i32 2
  store ptr %output_capture, ptr %f0, align 8
  %loadF = load ptr, ptr %f0, align 8
  ret i32 0
}
