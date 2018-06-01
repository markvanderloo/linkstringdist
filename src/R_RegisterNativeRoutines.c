#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME: 
   Check these declarations against the C/Fortran source code.
*/

/* .Call calls */
extern SEXP my_soundex(SEXP, SEXP);

static const R_CallMethodDef CallEntries[] = {
    {"my_soundex", (DL_FUNC) &my_soundex, 2},
    {NULL, NULL, 0}
};

void R_init_linkstringdist(DllInfo *dll)
{
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
