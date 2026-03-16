@g = global i32 3
@h = global i32 4

define ptr @inner(ptr %p) {
  ret ptr %p
}

define ptr @outer(ptr %q) {
  %1 = call ptr @inner(ptr %q)
  ret ptr %1
}

define i32 @main() {
  %x = call ptr @outer(ptr @g)
  %y = call ptr @outer(ptr @h)
  ret i32 0
}


; main
;  outer (x)
;    ; inner (%1)
;
;  outer
;    ; inner (%1)
