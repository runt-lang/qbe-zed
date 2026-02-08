; QBE IL
; Comments
(comment) @comment

; Keywords
[
  "type"
  "data"
  "function"
  "export"
  "thread"
  "section"
  "align"
  "env"
  "phi"
] @keyword

; Control flow
(jmp) @keyword

(jnz) @keyword

(ret) @keyword

(hlt) @keyword

"call" @keyword

; Types
(base_type) @type

(extended_type) @type

(sub_type) @type

(type_ident) @type

; Opcodes
(binary_opcode) @function.builtin

(compare_opcode) @function.builtin

(convert_opcode) @function.builtin

(load_opcode) @function.builtin

(store_opcode) @function.builtin

(alloc_opcode) @function.builtin

[
  "copy"
  "cast"
  "blit"
  "vastart"
  "vaarg"
  "neg"
] @function.builtin

; Identifiers
(global_ident) @constant

(temp_ident) @variable

(label) @label

; Definitions
(function_definition
  name: (global_ident) @function)

(data_definition
  name: (global_ident) @constant)

(type_definition
  name: (type_ident) @type)

(call_expr
  callee: (global_ident) @function)

; Literals
(integer) @number

(float) @number

(string) @string

; Punctuation
[
  "{"
  "}"
  "("
  ")"
] @punctuation.bracket

[
  ","
  "="
] @punctuation.delimiter

"..." @punctuation.special
