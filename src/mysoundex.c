
#include <stringdist_api.h>

SEXP my_soundex(SEXP strings, SEXP useBytes){
  Rprintf("\nWow, using 'stringdist' soundex encoding, from my own C code!\n");
  return sd_soundex(strings, useBytes);
}


