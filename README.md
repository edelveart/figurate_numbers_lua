# Figurate Numbers in Lua

`figurate_numbers` is the most comprehensive and specialized module for figurate numbers written in `Lua` to date. It implements `241 infinite number sequences` based on the remarkable book
> [Figurate Numbers](https://books.google.com.pe/books/about/Figurate_Numbers.html?id=ERS7CgAAQBAJ&redir_esc=y)  by Elena Deza and Michel Deza, published in 2012.

This implementation uses **coroutines** in Lua to handle **infinite sequences**. It is intended for use in mathematical projects and with Sonic Pi.

Following the order of the book, the methods are divided into 3 types according to the spatial dimension (see complete list below):

1. **Plane** figurate numbers implemented = `79`
2. **Space** figurate numbers implemented = `86`
3. **Multidimensional** figurate numbers implemented = `70`
4. **Zoo of figurate-related numbers** implemented = `6`

- [x] **TOTAL** = `241` infinite sequences of figurate numbers implemented.


# List of implemented sequences

* Note that `=` means that you can call the same sequence with different names.

### 1. Plane Figurate Numbers

1. `polygonal_numbers(m)`
2. `triangular_numbers`
3. `square_numbers`
4. `pentagonal_numbers`
5. `hexagonal_numbers`
6. `heptagonal_numbers`
7. `octagonal_numbers`
8. `nonagonal_numbers`
9. `decagonal_numbers`
10. `hendecagonal_numbers`
11. `dodecagonal_numbers`
12. `tridecagonal_numbers`
13. `tetradecagonal_numbers`
14. `pentadecagonal_numbers`
15. `hexadecagonal_numbers`
16. `heptadecagonal_numbers`
17. `octadecagonal_numbers`
18. `nonadecagonal_numbers`
19. `icosagonal_numbers`
20. `icosihenagonal_numbers`
21. `icosidigonal_numbers`
22. `icositrigonal_numbers`
23. `icositetragonal_numbers`
24. `icosipentagonal_numbers`
25. `icosihexagonal_numbers`
26. `icosiheptagonal_numbers`
27. `icosioctagonal_numbers`
28. `icosinonagonal_numbers`
29. `triacontagonal_numbers`
30. `centered_triangular_numbers`
31. `centered_square_numbers = diamond_numbers (equality only by quantity)`
32. `centered_pentagonal_numbers`
33. `centered_hexagonal_numbers`
34. `centered_heptagonal_numbers`
35. `centered_octagonal_numbers`
36. `centered_nonagonal_numbers`
37. `centered_decagonal_numbers`
38. `centered_hendecagonal_numbers`
39. `centered_dodecagonal_numbers = star_numbers (equality only by quantity)`
40. `centered_tridecagonal_numbers`
41. `centered_tetradecagonal_numbers`
42. `centered_pentadecagonal_numbers`
43. `centered_hexadecagonal_numbers`
44. `centered_heptadecagonal_numbers`
45. `centered_octadecagonal_numbers`
46. `centered_nonadecagonal_numbers`
47. `centered_icosagonal_numbers`
48. `centered_icosihenagonal_numbers`
49. `centered_icosidigonal_numbers`
50. `centered_icositrigonal_numbers`
51. `centered_icositetragonal_numbers`
52. `centered_icosipentagonal_numbers`
53. `centered_icosihexagonal_numbers`
54. `centered_icosiheptagonal_numbers`
55. `centered_icosioctagonal_numbers`
56. `centered_icosinonagonal_numbers`
57. `centered_triacontagonal_numbers`
58. `centered_mgonal_numbers(m)`
59. `pronic_numbers = heteromecic_numbers = oblong_numbers`
60. `polite_numbers`
61. `impolite_numbers`
62. `cross_numbers`
63. `aztec_diamond_numbers`
64. `polygram_numbers(m) = centered_star_polygonal_numbers(m)`
65. `pentagram_numbers`
66. `gnomic_numbers`
67. `truncated_triangular_numbers`
68. `truncated_square_numbers`
69. `truncated_pronic_numbers`
70. `truncated_centered_pol_numbers(m) = truncated_centered_mgonal_numbers(m)`
71. `truncated_centered_triangular_numbers`
72. `truncated_centered_square_numbers`
73. `truncated_centered_pentagonal_numbers`
74. `truncated_centered_hexagonal_numbers = truncated_hex_numbers`
75. `generalized_mgonal_numbers(m, left_index = 0)`
76. `generalized_pentagonal_numbers(left_index = 0)`
77. `generalized_hexagonal_numbers(left_index = 0)`
78. `generalized_centered_pol_numbers(m, left_index = 0)`
79. `generalized_pronic_numbers(left_index = 0)`

### 2. Space Figurate Numbers

1. `r_pyramidal_numbers(r)`
2. `triangular_pyramidal_numbers = tetrahedral_numbers`
3. `square_pyramidal_numbers = pyramidal_numbers`
4. `pentagonal_pyramidal_numbers`
5. `hexagonal_pyramidal_numbers`
6. `heptagonal_pyramidal_numbers`
7. `octagonal_pyramidal_numbers`
8. `nonagonal_pyramidal_numbers`
9. `decagonal_pyramidal_numbers`
10. `hendecagonal_pyramidal_numbers`
11. `dodecagonal_pyramidal_numbers`
12. `tridecagonal_pyramidal_numbers`
13. `tetradecagonal_pyramidal_numbers`
14. `pentadecagonal_pyramidal_numbers`
15. `hexadecagonal_pyramidal_numbers`
16. `heptadecagonal_pyramidal_numbers`
17. `octadecagonal_pyramidal_numbers`
18. `nonadecagonal_pyramidal_numbers`
19. `icosagonal_pyramidal_numbers`
20. `icosihenagonal_pyramidal_numbers`
21. `icosidigonal_pyramidal_numbers`
22. `icositrigonal_pyramidal_numbers`
23. `icositetragonal_pyramidal_numbers`
24. `icosipentagonal_pyramidal_numbers`
25. `icosihexagonal_pyramidal_numbers`
26. `icosiheptagonal_pyramidal_numbers`
27. `icosioctagonal_pyramidal_numbers`
28. `icosinonagonal_pyramidal_numbers`
29. `triacontagonal_pyramidal_numbers`
30. `triangular_tetrahedral_numbers [finite]`
31. `triangular_square_pyramidal_numbers [finite]`
32. `square_tetrahedral_numbers [finite]`
33. `square_square_pyramidal_numbers [finite]`
34. `tetrahedral_square_pyramidal_number [finite]`
35. `cubic_numbers = perfect_cube_numbers != hex_pyramidal_numbers (equality only by quantity)`
36. `tetrahedral_numbers`
37. `octahedral_numbers`
38. `dodecahedral_numbers`
39. `icosahedral_numbers`
40. `truncated_tetrahedral_numbers`
41. `truncated_cubic_numbers`
42. `truncated_octahedral_numbers`
43. `stella_octangula_numbers`
44. `centered_cube_numbers`
45. `rhombic_dodecahedral_numbers`
46. `hauy_rhombic_dodecahedral_numbers`
47. `centered_tetrahedron_numbers = centered_tetrahedral_numbers`
48. `centered_square_pyramid_numbers = centered_pyramid_numbers`
49. `centered_mgonal_pyramid_numbers(m)`
50. `centered_pentagonal_pyramid_numbers != centered_octahedron_numbers (equality only in quantity)`
51. `centered_hexagonal_pyramid_numbers`
52. `centered_heptagonal_pyramid_numbers`
53. `centered_octagonal_pyramid_numbers`
54. `centered_octahedron_numbers`
55. `centered_icosahedron_numbers = centered_cuboctahedron_numbers`
56. `centered_dodecahedron_numbers`
57. `centered_truncated_tetrahedron_numbers`
58. `centered_truncated_cube_numbers`
59. `centered_truncated_octahedron_numbers`
60. `centered_mgonal_pyramidal_numbers(m)`
61. `centered_triangular_pyramidal_numbers`
62. `centered_square_pyramidal_numbers`
63. `centered_pentagonal_pyramidal_numbers`
64. `centered_hexagonal_pyramidal_numbers = hex_pyramidal_numbers`
65. `centered_heptagonal_pyramidal_numbers`
66. `centered_octagonal_pyramidal_numbers`
67. `centered_nonagonal_pyramidal_numbers`
68. `centered_decagonal_pyramidal_numbers`
69. `centered_hendecagonal_pyramidal_numbers`
70. `centered_dodecagonal_pyramidal_numbers`
71. `hexagonal_prism_numbers`
72. `mgonal_prism_numbers(m)`
73. `generalized_mgonal_pyramidal_numbers(m, left_index = 0)`
74. `generalized_pentagonal_pyramidal_numbers(left_index = 0)`
75. `generalized_hexagonal_pyramidal_numbers(left_index = 0)`
76. `generalized_cubic_numbers(left_index = 0)`
77. `generalized_octahedral_numbers(left_index = 0)`
78. `generalized_icosahedral_numbers(left_index = 0)`
79. `generalized_dodecahedral_numbers(left_index = 0)`
80. `generalized_centered_cube_numbers(left_index = 0)`
81. `generalized_centered_tetrahedron_numbers(left_index = 0)`
82. `generalized_centered_square_pyramid_numbers(left_index = 0)`
83. `generalized_rhombic_dodecahedral_numbers(left_index = 0)`
84. `generalized_centered_mgonal_pyramidal_numbers(m, left_index = 0)`
85. `generalized_mgonal_prism_numbers(m, left_index = 0)`
86. `generalized_hexagonal_prism_numbers(left_index = 0)`
