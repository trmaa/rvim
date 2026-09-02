syntax match c_type "\<\w\+_t\>"
syntax keyword c_preproc inline typedef enum struct
syntax keyword c_keyw static
syntax match c_function "\<\k\+\>\ze\s*("
syntax match c_operator "[+\-*/><=%\[\]&|^~!]"
syntax match c_number "\<\d\+\>"
syntax match c_number "\<\d\+\.\d\+\>"
syntax match c_number "\<0b[01]\+\>"
syntax match c_number "\<0x[0-9a-fA-F]\+\>"
syntax match c_number "\<[A-Z_]\+\>"

highlight default link c_type Type
highlight default link c_preproc PreProc
highlight default link c_keyw Keyword
highlight default link c_function Function
highlight default link c_operator Operator
highlight default link c_number Number

highlight link cBadContinuation Normal
highlight link cError Normal
