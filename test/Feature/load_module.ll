; PR1318
; RUN: opt < %s -load=%llvmshlibdir/LLVMHello%shlibext -hello \
; RUN:   -disable-output |& grep Hello
; REQUIRES: loadable_module

@junk = global i32 0

define i32* @somefunk() {
  ret i32* @junk
}

