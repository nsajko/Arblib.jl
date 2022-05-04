###
### **arb_hypgeom.h** -- hypergeometric functions of real variables
###

### Rising factorials
arbcall"void _arb_hypgeom_rising_coeffs_1(ulong * c, ulong k, slong n)"
arbcall"void _arb_hypgeom_rising_coeffs_2(ulong * c, ulong k, slong n)"
#ni arbcall"void _arb_hypgeom_rising_coeffs_fmpz(fmpz * c, ulong k, slong n)"
arbcall"void arb_hypgeom_rising_ui_forward(arb_t res, const arb_t x, ulong n, slong prec)"
arbcall"void arb_hypgeom_rising_ui_bs(arb_t res, const arb_t x, ulong n, slong prec)"
arbcall"void arb_hypgeom_rising_ui_rs(arb_t res, const arb_t x, ulong n, ulong m, slong prec)"
arbcall"void arb_hypgeom_rising_ui_rec(arb_t res, const arb_t x, ulong n, slong prec)"
arbcall"void arb_hypgeom_rising_ui(arb_t res, const arb_t x, ulong n, slong prec)"
arbcall"void arb_hypgeom_rising(arb_t res, const arb_t x, const arb_t n, slong prec)"
arbcall"void arb_hypgeom_rising_ui_jet_powsum(arb_ptr res, const arb_t x, ulong n, slong len, slong prec)"
arbcall"void arb_hypgeom_rising_ui_jet_bs(arb_ptr res, const arb_t x, ulong n, slong len, slong prec)"
arbcall"void arb_hypgeom_rising_ui_jet_rs(arb_ptr res, const arb_t x, ulong n, ulong m, slong len, slong prec)"
arbcall"void arb_hypgeom_rising_ui_jet(arb_ptr res, const arb_t x, ulong n, slong len, slong prec)"

### Gamma function
arbcall"void _arb_hypgeom_gamma_stirling_term_bounds(slong * bound, const mag_t zinv, slong N)"
arbcall"void arb_hypgeom_gamma_stirling_sum_horner(arb_t res, const arb_t z, slong N, slong prec)"
arbcall"void arb_hypgeom_gamma_stirling_sum_improved(arb_t res, const arb_t z, slong N, slong K, slong prec)"
arbcall"void arb_hypgeom_gamma_stirling(arb_t res, const arb_t x, int reciprocal, slong prec)"
arbcall"int arb_hypgeom_gamma_taylor(arb_t res, const arb_t x, int reciprocal, slong prec)"
arbcall"void arb_hypgeom_gamma(arb_t res, const arb_t x, slong prec)"
#ni arbcall"void arb_hypgeom_gamma_fmpq(arb_t res, const fmpq_t x, slong prec)"
#ni arbcall"void arb_hypgeom_gamma_fmpz(arb_t res, const fmpz_t x, slong prec)"
arbcall"void arb_hypgeom_rgamma(arb_t res, const arb_t x, slong prec)"
arbcall"void arb_hypgeom_lgamma(arb_t res, const arb_t x, slong prec)"

### Binomial coefficients
arbcall"void arb_hypgeom_central_bin_ui(arb_t res, ulong n, slong prec)"

### Generalized hypergeometric function
arbcall"void arb_hypgeom_pfq(arb_t res, arb_srcptr a, slong p, arb_srcptr b, slong q, const arb_t z, int regularized, slong prec)"

### Confluent hypergeometric functions
arbcall"void arb_hypgeom_0f1(arb_t res, const arb_t a, const arb_t z, int regularized, slong prec)"
arbcall"void arb_hypgeom_m(arb_t res, const arb_t a, const arb_t b, const arb_t z, int regularized, slong prec)"
arbcall"void arb_hypgeom_1f1(arb_t res, const arb_t a, const arb_t b, const arb_t z, int regularized, slong prec)"
arbcall"void arb_hypgeom_1f1_integration(arb_t res, const arb_t a, const arb_t b, const arb_t z, int regularized, slong prec)"
arbcall"void arb_hypgeom_u(arb_t res, const arb_t a, const arb_t b, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_u_integration(arb_t res, const arb_t a, const arb_t b, const arb_t z, int regularized, slong prec)"

### Gauss hypergeometric function
arbcall"void arb_hypgeom_2f1(arb_t res, const arb_t a, const arb_t b, const arb_t c, const arb_t z, int regularized, slong prec)"
arbcall"void arb_hypgeom_2f1_integration(arb_t res, const arb_t a, const arb_t b, const arb_t z, int regularized, slong prec)"

### Error functions and Fresnel integrals
arbcall"void arb_hypgeom_erf(arb_t res, const arb_t z, slong prec)"
arbcall"void _arb_hypgeom_erf_series(arb_ptr res, arb_srcptr z, slong zlen, slong len, slong prec)"
arbcall"void arb_hypgeom_erf_series(arb_poly_t res, const arb_poly_t z, slong len, slong prec)"
arbcall"void arb_hypgeom_erfc(arb_t res, const arb_t z, slong prec)"
arbcall"void _arb_hypgeom_erfc_series(arb_ptr res, arb_srcptr z, slong zlen, slong len, slong prec)"
arbcall"void arb_hypgeom_erfc_series(arb_poly_t res, const arb_poly_t z, slong len, slong prec)"
arbcall"void arb_hypgeom_erfi(arb_t res, const arb_t z, slong prec)"
arbcall"void _arb_hypgeom_erfi_series(arb_ptr res, arb_srcptr z, slong zlen, slong len, slong prec)"
arbcall"void arb_hypgeom_erfi_series(arb_poly_t res, const arb_poly_t z, slong len, slong prec)"
arbcall"void arb_hypgeom_erfinv(arb_t res, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_erfcinv(arb_t res, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_fresnel(arb_t res1, arb_t res2, const arb_t z, int normalized, slong prec)"
arbcall"void _arb_hypgeom_fresnel_series(arb_ptr res1, arb_ptr res2, arb_srcptr z, slong zlen, int normalized, slong len, slong prec)"
arbcall"void arb_hypgeom_fresnel_series(arb_poly_t res1, arb_poly_t res2, const arb_poly_t z, int normalized, slong len, slong prec)"

### Incomplete gamma and beta functions
arbcall"void arb_hypgeom_gamma_upper(arb_t res, const arb_t s, const arb_t z, int regularized, slong prec)"
arbcall"void arb_hypgeom_gamma_upper_integration(arb_t res, const arb_t s, const arb_t z, int regularized, slong prec)"
arbcall"void _arb_hypgeom_gamma_upper_series(arb_ptr res, const arb_t s, arb_srcptr z, slong zlen, int regularized, slong n, slong prec)"
arbcall"void arb_hypgeom_gamma_upper_series(arb_poly_t res, const arb_t s, const arb_poly_t z, int regularized, slong n, slong prec)"
arbcall"void arb_hypgeom_gamma_lower(arb_t res, const arb_t s, const arb_t z, int regularized, slong prec)"
arbcall"void _arb_hypgeom_gamma_lower_series(arb_ptr res, const arb_t s, arb_srcptr z, slong zlen, int regularized, slong n, slong prec)"
arbcall"void arb_hypgeom_gamma_lower_series(arb_poly_t res, const arb_t s, const arb_poly_t z, int regularized, slong n, slong prec)"
arbcall"void arb_hypgeom_beta_lower(arb_t res, const arb_t a, const arb_t b, const arb_t z, int regularized, slong prec)"
arbcall"void _arb_hypgeom_beta_lower_series(arb_ptr res, const arb_t a, const arb_t b, arb_srcptr z, slong zlen, int regularized, slong n, slong prec)"
arbcall"void arb_hypgeom_beta_lower_series(arb_poly_t res, const arb_t a, const arb_t b, const arb_poly_t z, int regularized, slong n, slong prec)"
arbcall"void _arb_hypgeom_gamma_lower_sum_rs_1(arb_t res, ulong p, ulong q, const arb_t z, slong N, slong prec)"
arbcall"void _arb_hypgeom_gamma_upper_sum_rs_1(arb_t res, ulong p, ulong q, const arb_t z, slong N, slong prec)"
#ni arbcall"slong _arb_hypgeom_gamma_upper_fmpq_inf_choose_N(mag_t err, const fmpq_t a, const arb_t z, const mag_t abs_tol)"
#ni arbcall"void _arb_hypgeom_gamma_upper_fmpq_inf_bsplit(arb_t res, const fmpq_t a, const arb_t z, slong N, slong prec)"
#ni arbcall"slong _arb_hypgeom_gamma_lower_fmpq_0_choose_N(mag_t err, const fmpq_t a, const arb_t z, const mag_t abs_tol)"
#ni arbcall"void _arb_hypgeom_gamma_lower_fmpq_0_bsplit(arb_t res, const fmpq_t a, const arb_t z, slong N, slong prec)"
arbcall"slong _arb_hypgeom_gamma_upper_singular_si_choose_N(mag_t err, slong n, const arb_t z, const mag_t abs_tol)"
arbcall"void _arb_hypgeom_gamma_upper_singular_si_bsplit(arb_t res, slong n, const arb_t z, slong N, slong prec)"
#ni arbcall"void _arb_gamma_upper_fmpq_step_bsplit(arb_t Gz1, const fmpq_t a, const arb_t z0, const arb_t z1, const arb_t Gz0, const arb_t expmz0, const mag_t abs_tol, slong prec)"

### Exponential and trigonometric integrals
arbcall"void arb_hypgeom_expint(arb_t res, const arb_t s, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_ei(arb_t res, const arb_t z, slong prec)"
arbcall"void _arb_hypgeom_ei_series(arb_ptr res, arb_srcptr z, slong zlen, slong len, slong prec)"
arbcall"void arb_hypgeom_ei_series(arb_poly_t res, const arb_poly_t z, slong len, slong prec)"
arbcall"void _arb_hypgeom_si_asymp(arb_t res, const arb_t z, slong N, slong prec)"
arbcall"void _arb_hypgeom_si_1f2(arb_t res, const arb_t z, slong N, slong wp, slong prec)"
arbcall"void arb_hypgeom_si(arb_t res, const arb_t z, slong prec)"
arbcall"void _arb_hypgeom_si_series(arb_ptr res, arb_srcptr z, slong zlen, slong len, slong prec)"
arbcall"void arb_hypgeom_si_series(arb_poly_t res, const arb_poly_t z, slong len, slong prec)"
arbcall"void _arb_hypgeom_ci_asymp(arb_t res, const arb_t z, slong N, slong prec)"
arbcall"void _arb_hypgeom_ci_2f3(arb_t res, const arb_t z, slong N, slong wp, slong prec)"
arbcall"void arb_hypgeom_ci(arb_t res, const arb_t z, slong prec)"
arbcall"void _arb_hypgeom_ci_series(arb_ptr res, arb_srcptr z, slong zlen, slong len, slong prec)"
arbcall"void arb_hypgeom_ci_series(arb_poly_t res, const arb_poly_t z, slong len, slong prec)"
arbcall"void arb_hypgeom_shi(arb_t res, const arb_t z, slong prec)"
arbcall"void _arb_hypgeom_shi_series(arb_ptr res, arb_srcptr z, slong zlen, slong len, slong prec)"
arbcall"void arb_hypgeom_shi_series(arb_poly_t res, const arb_poly_t z, slong len, slong prec)"
arbcall"void arb_hypgeom_chi(arb_t res, const arb_t z, slong prec)"
arbcall"void _arb_hypgeom_chi_series(arb_ptr res, arb_srcptr z, slong zlen, slong len, slong prec)"
arbcall"void arb_hypgeom_chi_series(arb_poly_t res, const arb_poly_t z, slong len, slong prec)"
arbcall"void arb_hypgeom_li(arb_t res, const arb_t z, int offset, slong prec)"
arbcall"void _arb_hypgeom_li_series(arb_ptr res, arb_srcptr z, slong zlen, int offset, slong len, slong prec)"
arbcall"void arb_hypgeom_li_series(arb_poly_t res, const arb_poly_t z, int offset, slong len, slong prec)"

### Bessel functions
arbcall"void arb_hypgeom_bessel_j(arb_t res, const arb_t nu, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_bessel_y(arb_t res, const arb_t nu, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_bessel_jy(arb_t res1, arb_t res2, const arb_t nu, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_bessel_i(arb_t res, const arb_t nu, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_bessel_i_scaled(arb_t res, const arb_t nu, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_bessel_k(arb_t res, const arb_t nu, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_bessel_k_scaled(arb_t res, const arb_t nu, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_bessel_i_integration(arb_t res, const arb_t nu, const arb_t z, int scaled, slong prec)"
arbcall"void arb_hypgeom_bessel_k_integration(arb_t res, const arb_t nu, const arb_t z, int scaled, slong prec)"

### Airy functions
arbcall"void arb_hypgeom_airy(arb_t ai, arb_t ai_prime, arb_t bi, arb_t bi_prime, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_airy_jet(arb_ptr ai, arb_ptr bi, const arb_t z, slong len, slong prec)"
arbcall"void _arb_hypgeom_airy_series(arb_ptr ai, arb_ptr ai_prime, arb_ptr bi, arb_ptr bi_prime, arb_srcptr z, slong zlen, slong len, slong prec)"
arbcall"void arb_hypgeom_airy_series(arb_poly_t ai, arb_poly_t ai_prime, arb_poly_t bi, arb_poly_t bi_prime, const arb_poly_t z, slong len, slong prec)"
#ni arbcall"void arb_hypgeom_airy_zero(arb_t a, arb_t a_prime, arb_t b, arb_t b_prime, const fmpz_t n, slong prec)"

### Coulomb wave functions
arbcall"void arb_hypgeom_coulomb(arb_t F, arb_t G, const arb_t l, const arb_t eta, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_coulomb_jet(arb_ptr F, arb_ptr G, const arb_t l, const arb_t eta, const arb_t z, slong len, slong prec)"
arbcall"void _arb_hypgeom_coulomb_series(arb_ptr F, arb_ptr G, const arb_t l, const arb_t eta, arb_srcptr z, slong zlen, slong len, slong prec)"
arbcall"void arb_hypgeom_coulomb_series(arb_poly_t F, arb_poly_t G, const arb_t l, const arb_t eta, const arb_poly_t z, slong len, slong prec)"

### Orthogonal polynomials and functions
arbcall"void arb_hypgeom_chebyshev_t(arb_t res, const arb_t nu, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_chebyshev_u(arb_t res, const arb_t nu, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_jacobi_p(arb_t res, const arb_t n, const arb_t a, const arb_t b, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_gegenbauer_c(arb_t res, const arb_t n, const arb_t m, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_laguerre_l(arb_t res, const arb_t n, const arb_t m, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_hermite_h(arb_t res, const arb_t nu, const arb_t z, slong prec)"
arbcall"void arb_hypgeom_legendre_p(arb_t res, const arb_t n, const arb_t m, const arb_t z, int type, slong prec)"
arbcall"void arb_hypgeom_legendre_q(arb_t res, const arb_t n, const arb_t m, const arb_t z, int type, slong prec)"
arbcall"void arb_hypgeom_legendre_p_ui_deriv_bound(mag_t dp, mag_t dp2, ulong n, const arb_t x, const arb_t x2sub1)"
arbcall"void arb_hypgeom_legendre_p_ui_zero(arb_t res, arb_t res_prime, ulong n, const arb_t x, slong K, slong prec)"
arbcall"void arb_hypgeom_legendre_p_ui_one(arb_t res, arb_t res_prime, ulong n, const arb_t x, slong K, slong prec)"
arbcall"void arb_hypgeom_legendre_p_ui_asymp(arb_t res, arb_t res_prime, ulong n, const arb_t x, slong K, slong prec)"
arbcall"void arb_hypgeom_legendre_p_rec(arb_t res, arb_t res_prime, ulong n, const arb_t x, slong prec)"
arbcall"void arb_hypgeom_legendre_p_ui(arb_t res, arb_t res_prime, ulong n, const arb_t x, slong prec)"
arbcall"void arb_hypgeom_legendre_p_ui_root(arb_t res, arb_t weight, ulong n, ulong k, slong prec)"

### Dilogarithm
arbcall"void arb_hypgeom_dilog(arb_t res, const arb_t z, slong prec)"

### Hypergeometric sums
#ni arbcall"void arb_hypgeom_sum_fmpq_arb_forward(arb_t res, const fmpq * a, slong alen, const fmpq * b, slong blen, const arb_t z, int reciprocal, slong N, slong prec)"
#ni arbcall"void arb_hypgeom_sum_fmpq_arb_rs(arb_t res, const fmpq * a, slong alen, const fmpq * b, slong blen, const arb_t z, int reciprocal, slong N, slong prec)"
#ni arbcall"void arb_hypgeom_sum_fmpq_arb(arb_t res, const fmpq * a, slong alen, const fmpq * b, slong blen, const arb_t z, int reciprocal, slong N, slong prec)"
#ni arbcall"void arb_hypgeom_sum_fmpq_imag_arb_forward(arb_t res1, arb_t res2, const fmpq * a, slong alen, const fmpq * b, slong blen, const arb_t z, int reciprocal, slong N, slong prec)"
#ni arbcall"void arb_hypgeom_sum_fmpq_imag_arb_rs(arb_t res1, arb_t res2, const fmpq * a, slong alen, const fmpq * b, slong blen, const arb_t z, int reciprocal, slong N, slong prec)"
#ni arbcall"void arb_hypgeom_sum_fmpq_imag_arb_bs(arb_t res1, arb_t res2, const fmpq * a, slong alen, const fmpq * b, slong blen, const arb_t z, int reciprocal, slong N, slong prec)"
#ni arbcall"void arb_hypgeom_sum_fmpq_imag_arb(arb_t res1, arb_t res2, const fmpq * a, slong alen, const fmpq * b, slong blen, const arb_t z, int reciprocal, slong N, slong prec)"
