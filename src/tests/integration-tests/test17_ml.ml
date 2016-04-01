module T  = Test17_pb


let decode_ref_data () = T.({
  m1 = { i1 = 1; i2 = 2; }; 
  m2 = 1; 
  m3 = 1; 
  o  = M4 4;
})
  
let mode   = Test_util.parse_args ()

let () = 

  match mode with 
  | Test_util.Decode -> 
    Test_util.decode "test17.c2ml.data" T.decode_m T.pp_m (decode_ref_data  ()) 
  | Test_util.Encode -> 
    Test_util.encode "test17.ml2c.data" T.encode_m (decode_ref_data ())
