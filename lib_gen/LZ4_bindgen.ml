
let () =
  let fmt = Format.formatter_of_out_channel (open_out "LZ4_stubs.c") in
  Format.fprintf fmt "#include <lz4.h>@.";
  Cstubs.write_c fmt ~prefix:"caml_" (module LZ4_bindings.C);

  let fmt = Format.formatter_of_out_channel (open_out "LZ4_generated.ml") in
  Cstubs.write_ml fmt ~prefix:"caml_" (module LZ4_bindings.C)
