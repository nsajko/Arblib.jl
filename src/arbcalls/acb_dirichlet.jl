###
### **acb_dirichlet.h** -- Dirichlet L-functions, Riemann zeta and related functions
###

### Roots of unity
#ni arbcall"void acb_dirichlet_roots_init(acb_dirichlet_roots_t roots, ulong n, slong num, slong prec)"
#ni arbcall"void acb_dirichlet_roots_clear(acb_dirichlet_roots_t roots)"
#ni arbcall"void acb_dirichlet_root(acb_t res, const acb_dirichlet_roots_t roots, ulong k, slong prec)"

### Truncated L-series and power sums
arbcall"void acb_dirichlet_powsum_term(acb_ptr res, arb_t log_prev, ulong * prev, const acb_t s, ulong k, int integer, int critical_line, slong len, slong prec)"
arbcall"void acb_dirichlet_powsum_sieved(acb_ptr res, const acb_t s, ulong n, slong len, slong prec)"
arbcall"void acb_dirichlet_powsum_smooth(acb_ptr res, const acb_t s, ulong n, slong len, slong prec)"

### Riemann zeta function
arbcall"void acb_dirichlet_zeta(acb_t res, const acb_t s, slong prec)"
arbcall"void acb_dirichlet_zeta_jet(acb_t res, const acb_t s, int deflate, slong len, slong prec)"
arbcall"void acb_dirichlet_zeta_bound(mag_t res, const acb_t s)"
arbcall"void acb_dirichlet_zeta_deriv_bound(mag_t der1, mag_t der2, const acb_t s)"
arbcall"void acb_dirichlet_eta(acb_t res, const acb_t s, slong prec)"
arbcall"void acb_dirichlet_xi(acb_t res, const acb_t s, slong prec)"

### Riemann-Siegel formula
arbcall"void acb_dirichlet_zeta_rs_f_coeffs(acb_ptr f, const arb_t p, slong n, slong prec)"
arbcall"void acb_dirichlet_zeta_rs_d_coeffs(arb_ptr d, const arb_t sigma, slong k, slong prec)"
arbcall"void acb_dirichlet_zeta_rs_bound(mag_t err, const acb_t s, slong K)"
arbcall"void acb_dirichlet_zeta_rs_r(acb_t res, const acb_t s, slong K, slong prec)"
arbcall"void acb_dirichlet_zeta_rs(acb_t res, const acb_t s, slong K, slong prec)"
arbcall"void acb_dirichlet_zeta_jet_rs(acb_t res, const acb_t s, slong len, slong prec)"

### Hurwitz zeta function
arbcall"void acb_dirichlet_hurwitz(acb_t res, const acb_t s, const acb_t a, slong prec)"

### Hurwitz zeta function precomputation
#ni arbcall"void acb_dirichlet_hurwitz_precomp_init(acb_dirichlet_hurwitz_precomp_t pre, const acb_t s, int deflate, ulong A, ulong K, ulong N, slong prec)"
#ni arbcall"void acb_dirichlet_hurwitz_precomp_init_num(acb_dirichlet_hurwitz_precomp_t pre, const acb_t s, int deflate, double num_eval, slong prec)"
#ni arbcall"void acb_dirichlet_hurwitz_precomp_clear(acb_dirichlet_hurwitz_precomp_t pre)"
arbcall"void acb_dirichlet_hurwitz_precomp_choose_param(ulong * A, ulong * K, ulong * N, const acb_t s, double num_eval, slong prec)"
arbcall"void acb_dirichlet_hurwitz_precomp_bound(mag_t res, const acb_t s, ulong A, ulong K, ulong N)"
#ni arbcall"void acb_dirichlet_hurwitz_precomp_eval(acb_t res, const acb_dirichlet_hurwitz_precomp_t pre, ulong p, ulong q, slong prec)"

### Stieltjes constants
#ni arbcall"void acb_dirichlet_stieltjes(acb_t res, const fmpz_t n, const acb_t a, slong prec)"

### Dirichlet character evaluation
#ni arbcall"void acb_dirichlet_chi(acb_t res, const dirichlet_group_t G, const dirichlet_char_t chi, ulong n, slong prec)"
#ni arbcall"void acb_dirichlet_chi_vec(acb_ptr v, const dirichlet_group_t G, const dirichlet_char_t chi, slong nv, slong prec)"
#ni arbcall"void acb_dirichlet_pairing(acb_t res, const dirichlet_group_t G, ulong m, ulong n, slong prec)"
#ni arbcall"void acb_dirichlet_pairing_char(acb_t res, const dirichlet_group_t G, const dirichlet_char_t a, const dirichlet_char_t b, slong prec)"

### Dirichlet character Gauss, Jacobi and theta sums
#ni arbcall"void acb_dirichlet_gauss_sum_naive(acb_t res, const dirichlet_group_t G, const dirichlet_char_t chi, slong prec)"
#ni arbcall"void acb_dirichlet_gauss_sum_factor(acb_t res, const dirichlet_group_t G, const dirichlet_char_t chi, slong prec)"
#ni arbcall"void acb_dirichlet_gauss_sum_order2(acb_t res, const dirichlet_char_t chi, slong prec)"
#ni arbcall"void acb_dirichlet_gauss_sum_theta(acb_t res, const dirichlet_group_t G, const dirichlet_char_t chi, slong prec)"
#ni arbcall"void acb_dirichlet_gauss_sum(acb_t res, const dirichlet_group_t G, const dirichlet_char_t chi, slong prec)"
#ni arbcall"void acb_dirichlet_gauss_sum_ui(acb_t res, const dirichlet_group_t G, ulong a, slong prec)"
#ni arbcall"void acb_dirichlet_jacobi_sum_naive(acb_t res, const dirichlet_group_t G, const dirichlet_char_t chi1, const dirichlet_char_t chi2, slong prec)"
#ni arbcall"void acb_dirichlet_jacobi_sum_factor(acb_t res,  const dirichlet_group_t G, const dirichlet_char_t chi1, const dirichlet_char_t chi2, slong prec)"
#ni arbcall"void acb_dirichlet_jacobi_sum_gauss(acb_t res, const dirichlet_group_t G, const dirichlet_char_t chi1, const dirichlet_char_t chi2, slong prec)"
#ni arbcall"void acb_dirichlet_jacobi_sum(acb_t res, const dirichlet_group_t G, const dirichlet_char_t chi1,  const dirichlet_char_t chi2, slong prec)"
#ni arbcall"void acb_dirichlet_jacobi_sum_ui(acb_t res, const dirichlet_group_t G, ulong a, ulong b, slong prec)"
#ni arbcall"void acb_dirichlet_chi_theta_arb(acb_t res, const dirichlet_group_t G, const dirichlet_char_t chi, const arb_t t, slong prec)"
#ni arbcall"void acb_dirichlet_ui_theta_arb(acb_t res, const dirichlet_group_t G, ulong a, const arb_t t, slong prec)"
arbcall"ulong acb_dirichlet_theta_length(ulong q, const arb_t t, slong prec)"
#ni arbcall"void acb_dirichlet_qseries_powers_naive(acb_t res, const arb_t x, int p, const ulong * a, const acb_dirichlet_powers_t z, slong len, slong prec)"
#ni arbcall"void acb_dirichlet_qseries_powers_smallorder(acb_t res, const arb_t x, int p, const ulong * a, const acb_dirichlet_powers_t z, slong len, slong prec)"

### Discrete Fourier transforms
#ni arbcall"void acb_dirichlet_dft_conrey(acb_ptr w, acb_srcptr v, const dirichlet_group_t G, slong prec)"
#ni arbcall"void acb_dirichlet_dft(acb_ptr w, acb_srcptr v, const dirichlet_group_t G, slong prec)"

### Dirichlet L-functions
#ni arbcall"void acb_dirichlet_root_number_theta(acb_t res, const dirichlet_group_t G, const dirichlet_char_t chi, slong prec)"
#ni arbcall"void acb_dirichlet_root_number(acb_t res, const dirichlet_group_t G, const dirichlet_char_t chi, slong prec)"
#ni arbcall"void acb_dirichlet_l_hurwitz(acb_t res, const acb_t s, const acb_dirichlet_hurwitz_precomp_t precomp, const dirichlet_group_t G, const dirichlet_char_t chi, slong prec)"
#ni arbcall"void acb_dirichlet_l_euler_product(acb_t res, const acb_t s, const dirichlet_group_t G, const dirichlet_char_t chi, slong prec)"
#ni arbcall"void _acb_dirichlet_euler_product_real_ui(arb_t res, ulong s, const signed char * chi, int mod, int reciprocal, slong prec)"
#ni arbcall"void acb_dirichlet_l(acb_t res, const acb_t s, const dirichlet_group_t G, const dirichlet_char_t chi, slong prec)"
#ni arbcall"void acb_dirichlet_l_fmpq(acb_t res, const fmpq_t s, const dirichlet_group_t G, const dirichlet_char_t chi, slong prec)"
#ni arbcall"void acb_dirichlet_l_fmpq_afe(acb_t res, const fmpq_t s, const dirichlet_group_t G, const dirichlet_char_t chi, slong prec)"
#ni arbcall"void acb_dirichlet_l_vec_hurwitz(acb_ptr res, const acb_t s, const acb_dirichlet_hurwitz_precomp_t precomp, const dirichlet_group_t G, slong prec)"
#ni arbcall"void acb_dirichlet_l_jet(acb_ptr res, const acb_t s, const dirichlet_group_t G, const dirichlet_char_t chi, int deflate, slong len, slong prec)"
#ni arbcall"void _acb_dirichlet_l_series(acb_ptr res, acb_srcptr s, slong slen, const dirichlet_group_t G, const dirichlet_char_t chi, int deflate, slong len, slong prec)"
#ni arbcall"void acb_dirichlet_l_series(acb_poly_t res, const acb_poly_t s, const dirichlet_group_t G, const dirichlet_char_t chi, int deflate, slong len, slong prec)"

### Hardy Z-functions
#ni arbcall"void acb_dirichlet_hardy_theta(acb_ptr res, const acb_t t, const dirichlet_group_t G, const dirichlet_char_t chi, slong len, slong prec)"
#ni arbcall"void acb_dirichlet_hardy_z(acb_t res, const acb_t t, const dirichlet_group_t G, const dirichlet_char_t chi, slong len, slong prec)"
#ni arbcall"void _acb_dirichlet_hardy_theta_series(acb_ptr res, acb_srcptr t, slong tlen, const dirichlet_group_t G, const dirichlet_char_t chi, slong len, slong prec)"
#ni arbcall"void acb_dirichlet_hardy_theta_series(acb_poly_t res, const acb_poly_t t, const dirichlet_group_t G, const dirichlet_char_t chi, slong len, slong prec)"
#ni arbcall"void _acb_dirichlet_hardy_z_series(acb_ptr res, acb_srcptr t, slong tlen, const dirichlet_group_t G, const dirichlet_char_t chi, slong len, slong prec)"
#ni arbcall"void acb_dirichlet_hardy_z_series(acb_poly_t res, const acb_poly_t t, const dirichlet_group_t G, const dirichlet_char_t chi, slong len, slong prec)"

### Gram points
#ni arbcall"void acb_dirichlet_gram_point(arb_t res, const fmpz_t n, const dirichlet_group_t G, const dirichlet_char_t chi, slong prec)"

### Riemann zeta function zeros
#ni arbcall"ulong acb_dirichlet_turing_method_bound(const fmpz_t p)"
arbcall"int _acb_dirichlet_definite_hardy_z(arb_t res, const arf_t t, slong * pprec)"
#ni arbcall"void _acb_dirichlet_isolate_gram_hardy_z_zero(arf_t a, arf_t b, const fmpz_t n)"
#ni arbcall"void _acb_dirichlet_isolate_rosser_hardy_z_zero(arf_t a, arf_t b, const fmpz_t n)"
#ni arbcall"void _acb_dirichlet_isolate_turing_hardy_z_zero(arf_t a, arf_t b, const fmpz_t n)"
#ni arbcall"void acb_dirichlet_isolate_hardy_z_zero(arf_t a, arf_t b, const fmpz_t n)"
arbcall"void _acb_dirichlet_refine_hardy_z_zero(arb_t res, const arf_t a, const arf_t b, slong prec)"
#ni arbcall"void acb_dirichlet_hardy_z_zero(arb_t res, const fmpz_t n, slong prec)"
#ni arbcall"void acb_dirichlet_hardy_z_zeros(arb_ptr res, const fmpz_t n, slong len, slong prec)"
#ni arbcall"void acb_dirichlet_zeta_zero(acb_t res, const fmpz_t n, slong prec)"
#ni arbcall"void acb_dirichlet_zeta_zeros(acb_ptr res, const fmpz_t n, slong len, slong prec)"
#ni arbcall"void _acb_dirichlet_exact_zeta_nzeros(fmpz_t res, const arf_t t)"
arbcall"void acb_dirichlet_zeta_nzeros(arb_t res, const arb_t t, slong prec)"
arbcall"void acb_dirichlet_backlund_s(arb_t res, const arb_t t, slong prec)"
arbcall"void acb_dirichlet_backlund_s_bound(mag_t res, const arb_t t)"
#ni arbcall"void acb_dirichlet_zeta_nzeros_gram(fmpz_t res, const fmpz_t n)"
#ni arbcall"slong acb_dirichlet_backlund_s_gram(const fmpz_t n)"

### Riemann zeta function zeros (Platt's method)
arbcall"void acb_dirichlet_platt_scaled_lambda(arb_t res, const arb_t t, slong prec)"
#ni arbcall"void acb_dirichlet_platt_scaled_lambda_vec(arb_ptr res, const fmpz_t T, slong A, slong B, slong prec)"
#ni arbcall"void acb_dirichlet_platt_multieval(arb_ptr res, const fmpz_t T, slong A, slong B, const arb_t h, slong J, slong K, slong sigma, slong prec)"
#ni arbcall"void acb_dirichlet_platt_multieval_threaded(arb_ptr res, const fmpz_t T, slong A, slong B, const arb_t h, slong J, slong K, slong sigma, slong prec)"
#ni arbcall"void acb_dirichlet_platt_ws_interpolation(arb_t res, arf_t deriv, const arb_t t0, arb_srcptr p, const fmpz_t T, slong A, slong B, slong Ns_max, const arb_t H, slong sigma, slong prec)"
#ni arbcall"slong _acb_dirichlet_platt_local_hardy_z_zeros(arb_ptr res, const fmpz_t n, slong len, const fmpz_t T, slong A, slong B, const arb_t h, slong J, slong K, slong sigma_grid, slong Ns_max, const arb_t H, slong sigma_interp, slong prec)"
#ni arbcall"slong acb_dirichlet_platt_local_hardy_z_zeros(arb_ptr res, const fmpz_t n, slong len, slong prec)"
#ni arbcall"slong acb_dirichlet_platt_hardy_z_zeros(arb_ptr res, const fmpz_t n, slong len, slong prec)"
#ni arbcall"slong acb_dirichlet_platt_zeta_zeros(acb_ptr res, const fmpz_t n, slong len, slong prec)"
