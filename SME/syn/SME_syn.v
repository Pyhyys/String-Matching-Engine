/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Mon Jun 12 21:33:20 2023
/////////////////////////////////////////////////////////////


module SME ( clk, reset, chardata, isstring, ispattern, valid, match, 
        match_index );
  input [7:0] chardata;
  output [4:0] match_index;
  input clk, reset, isstring, ispattern;
  output valid, match;
  wire   n3563, n3564, n3565, n3566, n3567, match_ns, star_c, N111, N112, N113,
         N114, N115, N442, N443, N444, N445, \str_reg[33][5] ,
         \str_reg[33][1] , \str_reg[33][0] , \str_reg[32][7] ,
         \str_reg[32][6] , \str_reg[31][7] , \str_reg[31][6] ,
         \str_reg[31][5] , \str_reg[31][3] , \str_reg[31][1] ,
         \str_reg[30][5] , \str_reg[30][2] , \str_reg[30][1] ,
         \str_reg[30][0] , \str_reg[29][3] , \str_reg[29][2] ,
         \str_reg[28][5] , \str_reg[28][2] , \str_reg[28][1] ,
         \str_reg[28][0] , \str_reg[27][5] , \str_reg[26][4] ,
         \str_reg[26][3] , \str_reg[26][2] , \str_reg[25][5] ,
         \str_reg[25][2] , \str_reg[24][7] , \str_reg[24][5] ,
         \str_reg[24][3] , \str_reg[24][2] , \str_reg[23][5] ,
         \str_reg[23][2] , \str_reg[22][5] , \str_reg[22][2] ,
         \str_reg[22][1] , \str_reg[22][0] , \str_reg[21][7] ,
         \str_reg[21][6] , \str_reg[21][5] , \str_reg[21][3] ,
         \str_reg[21][1] , \str_reg[20][5] , \str_reg[20][3] ,
         \str_reg[20][2] , \str_reg[20][1] , \str_reg[19][3] ,
         \str_reg[19][2] , \str_reg[18][5] , \str_reg[18][2] ,
         \str_reg[16][5] , \str_reg[16][2] , \str_reg[16][1] ,
         \str_reg[16][0] , \str_reg[15][3] , \str_reg[15][2] ,
         \str_reg[14][7] , \str_reg[14][6] , \str_reg[14][5] ,
         \str_reg[14][3] , \str_reg[14][1] , \str_reg[13][7] ,
         \str_reg[13][6] , \str_reg[13][5] , \str_reg[13][3] ,
         \str_reg[13][2] , \str_reg[13][1] , \str_reg[13][0] ,
         \str_reg[12][5] , \str_reg[11][7] , \str_reg[11][6] ,
         \str_reg[11][5] , \str_reg[11][3] , \str_reg[11][1] ,
         \str_reg[10][7] , \str_reg[10][6] , \str_reg[10][5] ,
         \str_reg[10][3] , \str_reg[10][2] , \str_reg[10][1] , \str_reg[9][5] ,
         \str_reg[9][3] , \str_reg[9][2] , \str_reg[8][7] , \str_reg[8][6] ,
         \str_reg[8][5] , \str_reg[8][0] , \str_reg[7][5] , \str_reg[7][1] ,
         \str_reg[6][7] , \str_reg[6][6] , \str_reg[6][5] , \str_reg[6][4] ,
         \str_reg[6][1] , \str_reg[6][0] , \str_reg[5][5] , \str_reg[5][4] ,
         \str_reg[5][3] , \str_reg[5][2] , \str_reg[4][7] , \str_reg[4][6] ,
         \str_reg[4][5] , \str_reg[4][3] , \str_reg[4][2] , \str_reg[4][1] ,
         \str_reg[4][0] , \str_reg[3][7] , \str_reg[3][6] , \str_reg[3][4] ,
         \str_reg[3][3] , \str_reg[3][2] , \str_reg[3][1] , \str_reg[3][0] ,
         \str_reg[2][7] , \str_reg[2][6] , \str_reg[2][5] , \str_reg[2][3] ,
         \str_reg[2][1] , \str_reg[1][5] , \str_reg[1][3] , \str_reg[1][2] ,
         \str_reg[1][1] , \str_reg[1][0] , \str_reg[0][5] , \str_reg[0][3] ,
         \str_reg[0][2] , N562, N563, N564, N565, N566, N567, N568, N569, N570,
         N571, N572, N573, N581, N583, N584, N585, N586, N8605, N8606, N8607,
         N8608, N8609, N8610, N8646, N8647, N8648, N8649, N8650, N8651, N8652,
         N8653, N8654, N8655, N8656, N8657, N8658, N8659, N8660, N8661, N8662,
         N8663, N8664, N8665, N8666, N8667, N8668, N8669, N8670, N8671, N8672,
         N8673, N8674, N8675, N8676, N8677, N8678, N8679, n1611, n1691, n1692,
         n1693, n1694, n1695, n1696, n1697, n1698, n1699, n1700, n1701, n1702,
         n1703, n1704, n1706, n1707, n1708, n1709, n1717, n1718, n1719, n1720,
         n1721, n1722, n1723, n1724, n1725, n1726, n1727, n1728, n1729, n1730,
         n1731, n1732, n1733, n1734, n1735, n1736, n1737, n1738, n1739, n1740,
         n1741, n1742, n1743, n1744, n1745, n1746, n1747, n1748, n1749, n1750,
         n1751, n1752, n1753, n1754, n1755, n1756, n1757, n1758, n1759, n1760,
         n1761, n1762, n1763, n1764, n1765, n1766, n1767, n1768, n1769, n1770,
         n1771, n1772, n1773, n1774, n1775, n1776, n1777, n1778, n1779, n1780,
         n1781, n1782, n1783, n1784, n1785, n1786, n1787, n1788, n1789, n1790,
         n1791, n1792, n1793, n1794, n1795, n1796, n1797, n1798, n1799, n1800,
         n1801, n1802, n1803, n1804, n1805, n1806, n1807, n1808, n1809, n1810,
         n1811, n1812, n1813, n1814, n1815, n1816, n1817, n1818, n1819, n1820,
         n1821, n1822, n1823, n1824, n1825, n1826, n1827, n1828, n1829, n1830,
         n1831, n1832, n1833, n1834, n1835, n1836, n1837, n1838, n1839, n1840,
         n1841, n1842, n1843, n1844, n1845, n1846, n1847, n1848, n1849, n1850,
         n1851, n1852, n1853, n1854, n1855, n1856, n1857, n1858, n1859, n1860,
         n1861, n1862, n1863, n1864, n1865, n1866, n1867, n1868, n1869, n1870,
         n1871, n1872, n1873, n1874, n1875, n1876, n1877, n1878, n1879, n1880,
         n1881, n1882, n1883, n1884, n1885, n1886, n1887, n1888, n1889, n1890,
         n1891, n1892, n1893, n1894, n1895, n1896, n1897, n1898, n1899, n1900,
         n1901, n1902, n1903, n1904, n1905, n1906, n1907, n1908, n1909, n1910,
         n1911, n1912, n1913, n1914, n1915, n1916, n1917, n1918, n1919, n1920,
         n1921, n1922, n1923, n1924, n1925, n1926, n1927, n1928, n1929, n1930,
         n1931, n1932, n1933, n1934, n1935, n1936, n1937, n1938, n1939, n1940,
         n1941, n1942, n1943, n1944, n1945, n1946, n1947, n1948, n1949, n1950,
         n1951, n1952, n1953, n1954, n1955, n1956, n1957, n1958, n1959, n1960,
         n1961, n1962, n1963, n1964, n1965, n1966, n1967, n1968, n1969, n1970,
         n1971, n1972, n1973, n1974, n1975, n1976, n1977, n1978, n1979, n1980,
         n1981, n1982, n1983, n1984, n1985, n1986, n1987, n1988, n1989, n1990,
         n1991, N9405, N9404, N9403, N9402, N9401, N9400, \r1189/A[1] ,
         \r1189/A[2] , \r1189/A[3] , \r1189/A[4] , n1992, n1993, n1994, n1995,
         n1996, n1997, n1998, n1999, n2000, n2001, n2002, n2003, n2004, n2005,
         n2006, n2007, n2008, n2009, n2010, n2011, n2012, n2013, n2014, n2015,
         n2016, n2017, n2018, n2019, n2020, n2021, n2022, n2023, n2024, n2025,
         n2026, n2027, n2028, n2029, n2030, n2031, n2032, n2033, n2034, n2035,
         n2036, n2037, n2038, n2039, n2040, n2041, n2042, n2043, n2044, n2045,
         n2046, n2047, n2048, n2049, n2050, n2051, n2052, n2053, n2054, n2055,
         n2056, n2057, n2058, n2059, n2060, n2061, n2062, n2063, n2064, n2065,
         n2066, n2067, n2068, n2069, n2070, n2071, n2072, n2073, n2074, n2075,
         n2076, n2077, n2078, n2079, n2080, n2081, n2082, n2083, n2084, n2085,
         n2086, n2087, n2088, n2089, n2090, n2091, n2092, n2093, n2094, n2095,
         n2096, n2097, n2098, n2099, n2100, n2101, n2102, n2103, n2104, n2105,
         n2106, n2107, n2108, n2109, n2110, n2116, n2118, n2120, n2121, n2122,
         n2123, n2124, n2125, n2126, n2127, n2128, n2129, n2130, n2131, n2132,
         n2133, n2134, n2135, n2136, n2137, n2138, n2139, n2140, n2141, n2142,
         n2143, n2144, n2145, n2146, n2147, n2148, n2149, n2150, n2151, n2152,
         n2153, n2154, n2155, n2156, n2157, n2158, n2159, n2160, n2161, n2162,
         n2163, n2164, n2165, n2166, n2167, n2168, n2169, n2170, n2171, n2172,
         n2173, n2174, n2175, n2176, n2177, n2178, n2179, n2180, n2181, n2182,
         n2183, n2184, n2185, n2186, n2187, n2188, n2189, n2190, n2191, n2192,
         n2193, n2194, n2195, n2196, n2197, n2198, n2199, n2200, n2201, n2202,
         n2203, n2204, n2205, n2206, n2207, n2208, n2209, n2210, n2211, n2212,
         n2213, n2214, n2215, n2216, n2217, n2218, n2219, n2220, n2221, n2222,
         n2223, n2224, n2225, n2226, n2227, n2228, n2229, n2230, n2231, n2232,
         n2233, n2234, n2235, n2236, n2237, n2238, n2239, n2240, n2241, n2242,
         n2243, n2244, n2245, n2246, n2247, n2248, n2249, n2250, n2251, n2252,
         n2253, n2254, n2255, n2256, n2257, n2258, n2259, n2260, n2261, n2262,
         n2263, n2264, n2265, n2266, n2267, n2268, n2269, n2270, n2271, n2272,
         n2273, n2274, n2275, n2276, n2277, n2278, n2279, n2280, n2281, n2282,
         n2283, n2284, n2285, n2286, n2287, n2288, n2289, n2290, n2291, n2292,
         n2293, n2294, n2295, n2296, n2297, n2298, n2299, n2300, n2301, n2302,
         n2303, n2304, n2305, n2306, n2307, n2308, n2309, n2310, n2311, n2312,
         n2313, n2314, n2315, n2316, n2317, n2318, n2319, n2320, n2321, n2322,
         n2323, n2324, n2325, n2326, n2327, n2328, n2329, n2330, n2331, n2332,
         n2333, n2334, n2335, n2336, n2337, n2338, n2339, n2340, n2341, n2342,
         n2343, n2344, n2345, n2346, n2347, n2348, n2349, n2350, n2351, n2352,
         n2353, n2354, n2355, n2356, n2357, n2358, n2359, n2360, n2361, n2362,
         n2363, n2364, n2365, n2366, n2367, n2368, n2369, n2370, n2371, n2372,
         n2373, n2374, n2375, n2376, n2377, n2378, n2379, n2380, n2381, n2382,
         n2383, n2384, n2385, n2386, n2387, n2388, n2389, n2390, n2391, n2392,
         n2393, n2394, n2395, n2396, n2397, n2398, n2399, n2400, n2401, n2402,
         n2403, n2404, n2405, n2406, n2407, n2408, n2409, n2410, n2411, n2412,
         n2413, n2414, n2415, n2416, n2417, n2418, n2419, n2420, n2421, n2422,
         n2423, n2424, n2425, n2426, n2427, n2428, n2429, n2430, n2431, n2432,
         n2433, n2434, n2435, n2436, n2437, n2438, n2439, n2440, n2441, n2442,
         n2443, n2444, n2445, n2446, n2447, n2448, n2449, n2450, n2451, n2452,
         n2453, n2454, n2455, n2456, n2457, n2458, n2459, n2460, n2461, n2462,
         n2463, n2464, n2465, n2466, n2467, n2468, n2469, n2470, n2471, n2472,
         n2473, n2474, n2475, n2476, n2477, n2478, n2479, n2480, n2481, n2482,
         n2483, n2484, n2485, n2486, n2487, n2488, n2489, n2490, n2491, n2492,
         n2493, n2494, n2495, n2496, n2497, n2498, n2499, n2500, n2501, n2502,
         n2503, n2504, n2505, n2506, n2507, n2508, n2509, n2510, n2511, n2512,
         n2513, n2514, n2515, n2516, n2517, n2518, n2519, n2520, n2521, n2522,
         n2523, n2524, n2525, n2526, n2527, n2528, n2529, n2530, n2531, n2532,
         n2533, n2534, n2535, n2536, n2537, n2538, n2539, n2540, n2541, n2542,
         n2543, n2544, n2545, n2546, n2547, n2548, n2549, n2550, n2551, n2552,
         n2553, n2554, n2555, n2556, n2557, n2558, n2559, n2560, n2561, n2562,
         n2563, n2564, n2565, n2566, n2567, n2568, n2569, n2570, n2571, n2572,
         n2573, n2574, n2575, n2576, n2577, n2578, n2579, n2580, n2581, n2582,
         n2583, n2584, n2585, n2586, n2587, n2588, n2589, n2590, n2591, n2592,
         n2593, n2594, n2595, n2596, n2597, n2598, n2599, n2600, n2601, n2602,
         n2603, n2604, n2605, n2606, n2607, n2608, n2609, n2610, n2611, n2612,
         n2613, n2614, n2615, n2616, n2617, n2618, n2619, n2620, n2621, n2622,
         n2623, n2624, n2625, n2626, n2627, n2628, n2629, n2630, n2631, n2632,
         n2633, n2634, n2635, n2636, n2637, n2638, n2639, n2640, n2641, n2642,
         n2643, n2644, n2645, n2646, n2647, n2648, n2649, n2650, n2651, n2652,
         n2653, n2654, n2655, n2656, n2657, n2658, n2659, n2660, n2661, n2662,
         n2663, n2664, n2665, n2666, n2667, n2668, n2669, n2670, n2671, n2672,
         n2673, n2674, n2675, n2676, n2677, n2678, n2679, n2680, n2681, n2682,
         n2683, n2684, n2685, n2686, n2687, n2688, n2689, n2690, n2691, n2692,
         n2693, n2694, n2695, n2696, n2697, n2698, n2699, n2700, n2701, n2702,
         n2703, n2704, n2705, n2706, n2707, n2708, n2709, n2710, n2711, n2712,
         n2713, n2714, n2715, n2716, n2717, n2718, n2719, n2720, n2721, n2722,
         n2723, n2724, n2725, n2726, n2727, n2728, n2729, n2730, n2731, n2732,
         n2733, n2734, n2735, n2736, n2737, n2738, n2739, n2740, n2741, n2742,
         n2743, n2744, n2745, n2746, n2747, n2748, n2749, n2750, n2751, n2752,
         n2753, n2754, n2755, n2756, n2757, n2758, n2759, n2760, n2761, n2762,
         n2763, n2764, n2765, n2766, n2767, n2768, n2769, n2770, n2771, n2772,
         n2773, n2774, n2775, n2776, n2777, n2778, n2779, n2780, n2781, n2782,
         n2783, n2784, n2785, n2786, n2787, n2788, n2789, n2790, n2791, n2792,
         n2793, n2794, n2795, n2796, n2797, n2798, n2799, n2800, n2801, n2802,
         n2803, n2804, n2805, n2806, n2807, n2808, n2809, n2810, n2811, n2812,
         n2813, n2814, n2815, n2816, n2817, n2818, n2819, n2820, n2821, n2822,
         n2823, n2824, n2825, n2826, n2827, n2828, n2829, n2830, n2831, n2832,
         n2833, n2834, n2835, n2836, n2837, n2838, n2839, n2840, n2841, n2842,
         n2843, n2844, n2845, n2846, n2847, n2848, n2849, n2850, n2851, n2852,
         n2853, n2854, n2855, n2856, n2857, n2858, n2859, n2860, n2861, n2862,
         n2863, n2864, n2865, n2866, n2867, n2868, n2869, n2870, n2871, n2872,
         n2873, n2874, n2875, n2876, n2877, n2878, n2879, n2880, n2881, n2882,
         n2883, n2884, n2885, n2886, n2887, n2888, n2889, n2890, n2891, n2892,
         n2893, n2894, n2895, n2896, n2897, n2898, n2899, n2900, n2901, n2902,
         n2903, n2904, n2905, n2906, n2907, n2908, n2909, n2910, n2911, n2912,
         n2913, n2914, n2915, n2916, n2917, n2918, n2919, n2920, n2921, n2922,
         n2923, n2924, n2925, n2926, n2927, n2928, n2929, n2930, n2931, n2932,
         n2933, n2934, n2935, n2936, n2937, n2938, n2939, n2940, n2941, n2942,
         n2943, n2944, n2945, n2946, n2947, n2948, n2949, n2950, n2951, n2952,
         n2953, n2954, n2955, n2956, n2957, n2958, n2959, n2960, n2961, n2962,
         n2963, n2964, n2965, n2966, n2967, n2968, n2969, n2970, n2971, n2972,
         n2973, n2974, n2975, n2976, n2977, n2978, n2979, n2980, n2981, n2982,
         n2983, n2984, n2985, n2986, n2987, n2988, n2989, n2990, n2991, n2992,
         n2993, n2994, n2995, n2996, n2997, n2998, n2999, n3000, n3001, n3002,
         n3003, n3004, n3005, n3006, n3007, n3008, n3009, n3010, n3011, n3012,
         n3013, n3014, n3015, n3016, n3017, n3018, n3019, n3020, n3021, n3022,
         n3023, n3024, n3025, n3026, n3027, n3028, n3029, n3030, n3031, n3032,
         n3033, n3034, n3035, n3036, n3037, n3038, n3039, n3040, n3041, n3042,
         n3043, n3044, n3045, n3046, n3047, n3048, n3049, n3050, n3051, n3052,
         n3053, n3054, n3055, n3056, n3057, n3058, n3059, n3060, n3061, n3062,
         n3063, n3064, n3065, n3066, n3067, n3068, n3069, n3070, n3071, n3072,
         n3073, n3074, n3075, n3076, n3077, n3078, n3079, n3080, n3081, n3082,
         n3083, n3084, n3085, n3086, n3087, n3088, n3089, n3090, n3091, n3092,
         n3093, n3094, n3095, n3096, n3097, n3098, n3099, n3100, n3101, n3102,
         n3103, n3104, n3105, n3106, n3107, n3108, n3109, n3110, n3111, n3112,
         n3113, n3114, n3115, n3116, n3117, n3118, n3119, n3120, n3121, n3122,
         n3123, n3124, n3125, n3126, n3127, n3128, n3129, n3130, n3131, n3132,
         n3133, n3134, n3135, n3136, n3137, n3138, n3139, n3140, n3141, n3142,
         n3143, n3144, n3145, n3146, n3147, n3148, n3149, n3150, n3151, n3152,
         n3153, n3154, n3155, n3156, n3157, n3158, n3159, n3160, n3161, n3162,
         n3163, n3164, n3165, n3166, n3167, n3168, n3169, n3170, n3171, n3172,
         n3173, n3174, n3175, n3176, n3177, n3178, n3179, n3180, n3181, n3182,
         n3183, n3184, n3185, n3186, n3187, n3188, n3189, n3190, n3191, n3192,
         n3193, n3194, n3195, n3196, n3197, n3198, n3199, n3200, n3201, n3202,
         n3203, n3204, n3205, n3206, n3207, n3208, n3209, n3210, n3211, n3212,
         n3213, n3214, n3215, n3216, n3217, n3218, n3219, n3220, n3221, n3222,
         n3223, n3224, n3225, n3226, n3227, n3228, n3229, n3230, n3231, n3232,
         n3233, n3234, n3235, n3236, n3237, n3238, n3239, n3240, n3241, n3242,
         n3243, n3244, n3245, n3246, n3247, n3248, n3249, n3250, n3251, n3252,
         n3253, n3254, n3255, n3256, n3257, n3258, n3259, n3260, n3261, n3262,
         n3263, n3264, n3265, n3266, n3267, n3268, n3269, n3270, n3271, n3272,
         n3273, n3274, n3275, n3276, n3277, n3278, n3279, n3280, n3281, n3282,
         n3283, n3284, n3285, n3286, n3287, n3288, n3289, n3290, n3291, n3292,
         n3293, n3294, n3295, n3296, n3297, n3298, n3299, n3300, n3301, n3302,
         n3303, n3304, n3305, n3306, n3307, n3308, n3309, n3310, n3311, n3312,
         n3313, n3314, n3315, n3316, n3317, n3318, n3319, n3320, n3321, n3322,
         n3323, n3324, n3325, n3326, n3327, n3328, n3329, n3330, n3331, n3332,
         n3333, n3334, n3335, n3336, n3337, n3338, n3339, n3340, n3341, n3342,
         n3343, n3344, n3345, n3346, n3347, n3348, n3349, n3350, n3351, n3352,
         n3353, n3354, n3355, n3356, n3357, n3358, n3359, n3360, n3361, n3362,
         n3363, n3364, n3365, n3366, n3367, n3368, n3369, n3370, n3371, n3372,
         n3373, n3374, n3375, n3376, n3377, n3378, n3379, n3380, n3381, n3382,
         n3383, n3384, n3385, n3386, n3387, n3388, n3389, n3390, n3391, n3392,
         n3393, n3394, n3395, n3396, n3397, n3398, n3399, n3400, n3401, n3402,
         n3403, n3404, n3405, n3406, n3407, n3408, n3409, n3410, n3411, n3412,
         n3413, n3414, n3415, n3416, n3417, n3418, n3419, n3420, n3421, n3422,
         n3423, n3424, n3425, n3426, n3427, n3428, n3429, n3430, n3431, n3432,
         n3433, n3434, n3435, n3436, n3437, n3438, n3439, n3440, n3441, n3442,
         n3443, n3444, n3445, n3446, n3447, n3448, n3449, n3450, n3451, n3452,
         n3453, n3454, n3455, n3456, n3457, n3458, n3459, n3460, n3461, n3462,
         n3463, n3464, n3465, n3466, n3467, n3468, n3469, n3470, n3471, n3472,
         n3473, n3474, n3475, n3476, n3477, n3478, n3479, n3480, n3481, n3482,
         n3483, n3484, n3485, n3486, n3487, n3488, n3489, n3490, n3491, n3492,
         n3493, n3494, n3495, n3496, n3497, n3498, n3499, n3500, n3501, n3502,
         n3503, n3504, n3505, n3506, n3507, n3508, n3509, n3510, n3511, n3512,
         n3513, n3514, n3515, n3516, n3517, n3518, n3519, n3520, n3521, n3522,
         n3523, n3524, n3525, n3526, n3527, n3528, n3529, n3530, n3531, n3532,
         n3533, n3534, n3535, n3536, n3537, n3538, n3539, n3540, n3541, n3542,
         n3543, n3544, n3545, n3546, n3547, n3548, n3549, n3550, n3551, n3552,
         n3553, n3554, n3555, n3556, n3557, n3558, n3559, n3560, n3561, n3562;
  wire   [33:0] match_reg;
  wire   [5:0] count_s;
  wire   [5:0] str_num;
  wire   [7:0] \sub_189/carry ;
  wire   [5:2] \add_148/carry ;
  wire   [5:1] \r1189/carry ;
  wire   [5:2] \add_147_aco/carry ;

  EDFFX1 \star_match_index_reg[0]  ( .D(N581), .E(n1717), .CK(clk), .QN(n1701)
         );
  EDFFX1 \star_match_index_reg[4]  ( .D(\r1189/A[4] ), .E(n1717), .CK(clk), 
        .QN(n1697) );
  EDFFX1 \star_match_index_reg[3]  ( .D(\r1189/A[3] ), .E(n1717), .CK(clk), 
        .QN(n1698) );
  EDFFX1 \star_match_index_reg[2]  ( .D(\r1189/A[2] ), .E(n1717), .CK(clk), 
        .QN(n1699) );
  EDFFX1 \star_match_index_reg[1]  ( .D(\r1189/A[1] ), .E(n1717), .CK(clk), 
        .QN(n1700) );
  DFFRX1 \str_reg_reg[0][7]  ( .D(n1990), .CK(clk), .RN(n2177), .QN(n3492) );
  DFFRX1 \str_reg_reg[0][6]  ( .D(n1989), .CK(clk), .RN(n2177), .QN(n3493) );
  DFFRX1 \str_reg_reg[0][0]  ( .D(n1991), .CK(clk), .RN(n2177), .QN(n3491) );
  DFFRX1 \str_reg_reg[0][4]  ( .D(n1987), .CK(clk), .RN(n2178), .QN(n3561) );
  DFFRX1 \str_reg_reg[0][1]  ( .D(n1984), .CK(clk), .RN(n2178), .QN(n3560) );
  DFFSX1 \str_reg_reg[0][5]  ( .D(n1988), .CK(clk), .SN(n2198), .Q(
        \str_reg[0][5] ), .QN(n2238) );
  DFFRX1 \str_reg_reg[1][6]  ( .D(n1981), .CK(clk), .RN(n2189), .QN(n2247) );
  DFFRX1 \str_reg_reg[1][7]  ( .D(n1982), .CK(clk), .RN(n2189), .QN(n2246) );
  DFFRX1 \str_reg_reg[0][2]  ( .D(n1985), .CK(clk), .RN(n2178), .Q(
        \str_reg[0][2] ), .QN(n2240) );
  DFFRX1 \str_reg_reg[0][3]  ( .D(n1986), .CK(clk), .RN(n2178), .Q(
        \str_reg[0][3] ), .QN(n2239) );
  DFFRX1 \str_reg_reg[1][3]  ( .D(n1978), .CK(clk), .RN(n2189), .Q(
        \str_reg[1][3] ), .QN(n2061) );
  DFFRX1 \str_reg_reg[1][0]  ( .D(n1983), .CK(clk), .RN(n2188), .Q(
        \str_reg[1][0] ), .QN(n2060) );
  DFFRX1 \str_reg_reg[1][1]  ( .D(n1976), .CK(clk), .RN(n2189), .Q(
        \str_reg[1][1] ), .QN(n2250) );
  DFFRX1 \str_reg_reg[1][2]  ( .D(n1977), .CK(clk), .RN(n2189), .Q(
        \str_reg[1][2] ), .QN(n2249) );
  DFFRX1 \str_reg_reg[1][4]  ( .D(n1979), .CK(clk), .RN(n2189), .QN(n3483) );
  DFFRX1 \str_reg_reg[2][4]  ( .D(n1971), .CK(clk), .RN(n2180), .QN(n3559) );
  DFFSX1 \str_reg_reg[2][5]  ( .D(n1972), .CK(clk), .SN(n2198), .Q(
        \str_reg[2][5] ), .QN(n2255) );
  DFFSX1 \str_reg_reg[1][5]  ( .D(n1980), .CK(clk), .SN(n2197), .Q(
        \str_reg[1][5] ), .QN(n2248) );
  DFFSX1 \str_reg_reg[29][5]  ( .D(n1756), .CK(clk), .SN(n2198), .QN(n2415) );
  DFFSX1 \str_reg_reg[19][5]  ( .D(n1836), .CK(clk), .SN(n2197), .QN(n2360) );
  DFFRX1 \str_reg_reg[2][2]  ( .D(n1969), .CK(clk), .RN(n2180), .QN(n2256) );
  DFFRX1 \str_reg_reg[2][0]  ( .D(n1975), .CK(clk), .RN(n2180), .QN(n2253) );
  DFFRX1 \str_reg_reg[8][1]  ( .D(n1920), .CK(clk), .RN(n2178), .QN(n2303) );
  DFFRX1 \str_reg_reg[33][2]  ( .D(n1721), .CK(clk), .RN(n2191), .QN(n3497) );
  DFFRX1 \str_reg_reg[33][3]  ( .D(n1722), .CK(clk), .RN(n2191), .QN(n3498) );
  DFFRX1 \str_reg_reg[10][6]  ( .D(n1909), .CK(clk), .RN(n2181), .Q(
        \str_reg[10][6] ), .QN(n2315) );
  DFFRX1 \str_reg_reg[24][3]  ( .D(n1794), .CK(clk), .RN(n2179), .Q(
        \str_reg[24][3] ), .QN(n2386) );
  DFFRX1 \str_reg_reg[13][6]  ( .D(n1885), .CK(clk), .RN(n2195), .Q(
        \str_reg[13][6] ), .QN(n2334) );
  DFFRX1 \str_reg_reg[5][3]  ( .D(n1946), .CK(clk), .RN(n2195), .Q(
        \str_reg[5][3] ), .QN(n2280) );
  DFFRX1 \str_reg_reg[3][6]  ( .D(n1965), .CK(clk), .RN(n2192), .Q(
        \str_reg[3][6] ), .QN(n2262) );
  DFFRX1 \str_reg_reg[24][7]  ( .D(n1798), .CK(clk), .RN(n2179), .Q(
        \str_reg[24][7] ), .QN(n2385) );
  DFFRX1 \str_reg_reg[5][4]  ( .D(n1947), .CK(clk), .RN(n2195), .Q(
        \str_reg[5][4] ), .QN(n2279) );
  DFFRX1 \str_reg_reg[3][7]  ( .D(n1966), .CK(clk), .RN(n2192), .Q(
        \str_reg[3][7] ), .QN(n2261) );
  DFFRX1 \str_reg_reg[2][6]  ( .D(n1973), .CK(clk), .RN(n2181), .Q(
        \str_reg[2][6] ), .QN(n2006) );
  DFFRX1 \str_reg_reg[2][7]  ( .D(n1974), .CK(clk), .RN(n2181), .Q(
        \str_reg[2][7] ), .QN(n2021) );
  DFFRX1 \str_reg_reg[2][1]  ( .D(n1968), .CK(clk), .RN(n2181), .Q(
        \str_reg[2][1] ), .QN(n2052) );
  DFFRX1 \str_reg_reg[2][3]  ( .D(n1970), .CK(clk), .RN(n2180), .Q(
        \str_reg[2][3] ), .QN(n2054) );
  DFFRX1 \str_reg_reg[8][6]  ( .D(n1925), .CK(clk), .RN(n2178), .Q(
        \str_reg[8][6] ), .QN(n2302) );
  DFFRX1 \str_reg_reg[8][7]  ( .D(n1926), .CK(clk), .RN(n2178), .Q(
        \str_reg[8][7] ), .QN(n2301) );
  DFFRX1 \str_reg_reg[13][0]  ( .D(n1887), .CK(clk), .RN(n2195), .Q(
        \str_reg[13][0] ), .QN(n2057) );
  DFFRX1 \str_reg_reg[19][2]  ( .D(n1833), .CK(clk), .RN(n2196), .Q(
        \str_reg[19][2] ), .QN(n2362) );
  DFFRX1 \str_reg_reg[19][3]  ( .D(n1834), .CK(clk), .RN(n2196), .Q(
        \str_reg[19][3] ), .QN(n2361) );
  DFFSX1 \str_reg_reg[10][5]  ( .D(n1908), .CK(clk), .SN(n2198), .Q(
        \str_reg[10][5] ), .QN(n2316) );
  DFFSX1 \str_reg_reg[13][5]  ( .D(n1884), .CK(clk), .SN(n2198), .Q(
        \str_reg[13][5] ), .QN(n2335) );
  DFFRX1 \str_reg_reg[33][0]  ( .D(n1727), .CK(clk), .RN(n2191), .Q(
        \str_reg[33][0] ), .QN(n2442) );
  DFFRX1 \str_reg_reg[3][0]  ( .D(n1967), .CK(clk), .RN(n2192), .Q(
        \str_reg[3][0] ), .QN(n2259) );
  DFFRX1 \str_reg_reg[33][1]  ( .D(n1720), .CK(clk), .RN(n2191), .Q(
        \str_reg[33][1] ), .QN(n2448) );
  DFFRX1 \str_reg_reg[3][1]  ( .D(n1960), .CK(clk), .RN(n2192), .Q(
        \str_reg[3][1] ), .QN(n2266) );
  DFFSX1 \str_reg_reg[8][5]  ( .D(n1924), .CK(clk), .SN(n2198), .Q(
        \str_reg[8][5] ), .QN(n2051) );
  DFFSX1 \str_reg_reg[24][5]  ( .D(n1796), .CK(clk), .SN(n2198), .Q(
        \str_reg[24][5] ), .QN(n2056) );
  DFFSX1 \str_reg_reg[5][5]  ( .D(n1948), .CK(clk), .SN(n2198), .Q(
        \str_reg[5][5] ), .QN(n2047) );
  DFFSX1 \str_reg_reg[25][5]  ( .D(n1788), .CK(clk), .SN(n2197), .Q(
        \str_reg[25][5] ), .QN(n2392) );
  DFFSX1 \str_reg_reg[33][5]  ( .D(n1724), .CK(clk), .SN(n2197), .Q(
        \str_reg[33][5] ), .QN(n2446) );
  DFFRX1 \str_reg_reg[24][1]  ( .D(n1792), .CK(clk), .RN(n2179), .QN(n3516) );
  DFFRX1 \str_reg_reg[24][0]  ( .D(n1799), .CK(clk), .RN(n2179), .QN(n3518) );
  DFFRX1 \str_reg_reg[13][4]  ( .D(n1883), .CK(clk), .RN(n2195), .QN(n3486) );
  DFFRX1 \str_reg_reg[13][1]  ( .D(n1880), .CK(clk), .RN(n2194), .Q(
        \str_reg[13][1] ), .QN(n2338) );
  DFFRX1 \str_reg_reg[3][2]  ( .D(n1961), .CK(clk), .RN(n2191), .Q(
        \str_reg[3][2] ), .QN(n2265) );
  DFFRX1 \str_reg_reg[24][4]  ( .D(n1795), .CK(clk), .RN(n2179), .QN(n3495) );
  DFFRX1 \str_reg_reg[10][4]  ( .D(n1907), .CK(clk), .RN(n2181), .QN(n3548) );
  DFFRX1 \str_reg_reg[24][6]  ( .D(n1797), .CK(clk), .RN(n2179), .QN(n3517) );
  DFFRX1 \str_reg_reg[5][7]  ( .D(n1950), .CK(clk), .RN(n2195), .QN(n3555) );
  DFFRX1 \str_reg_reg[10][2]  ( .D(n1905), .CK(clk), .RN(n2181), .Q(
        \str_reg[10][2] ), .QN(n2318) );
  DFFRX1 \str_reg_reg[13][2]  ( .D(n1881), .CK(clk), .RN(n2194), .Q(
        \str_reg[13][2] ), .QN(n2337) );
  DFFRX1 \str_reg_reg[3][3]  ( .D(n1962), .CK(clk), .RN(n2191), .Q(
        \str_reg[3][3] ), .QN(n2264) );
  DFFRX1 \str_reg_reg[10][3]  ( .D(n1906), .CK(clk), .RN(n2181), .Q(
        \str_reg[10][3] ), .QN(n2317) );
  DFFRX1 \str_reg_reg[24][2]  ( .D(n1793), .CK(clk), .RN(n2180), .Q(
        \str_reg[24][2] ), .QN(n2387) );
  DFFRX1 \str_reg_reg[13][3]  ( .D(n1882), .CK(clk), .RN(n2194), .Q(
        \str_reg[13][3] ), .QN(n2336) );
  DFFRX1 \str_reg_reg[5][2]  ( .D(n1945), .CK(clk), .RN(n2195), .Q(
        \str_reg[5][2] ), .QN(n2281) );
  DFFRX1 \str_reg_reg[3][4]  ( .D(n1963), .CK(clk), .RN(n2192), .Q(
        \str_reg[3][4] ), .QN(n2263) );
  DFFRX1 \str_reg_reg[10][7]  ( .D(n1910), .CK(clk), .RN(n2181), .Q(
        \str_reg[10][7] ), .QN(n2314) );
  DFFRX1 \str_reg_reg[13][7]  ( .D(n1886), .CK(clk), .RN(n2195), .Q(
        \str_reg[13][7] ), .QN(n2333) );
  DFFRX1 \str_reg_reg[30][2]  ( .D(n1745), .CK(clk), .RN(n2187), .Q(
        \str_reg[30][2] ), .QN(n2425) );
  DFFRX1 \str_reg_reg[22][2]  ( .D(n1809), .CK(clk), .RN(n2187), .Q(
        \str_reg[22][2] ), .QN(n2379) );
  DFFRX1 \str_reg_reg[28][2]  ( .D(n1761), .CK(clk), .RN(n2185), .Q(
        \str_reg[28][2] ), .QN(n2411) );
  DFFRX1 \str_reg_reg[20][2]  ( .D(n1825), .CK(clk), .RN(n2184), .Q(
        \str_reg[20][2] ), .QN(n2369) );
  DFFRX1 \str_reg_reg[8][0]  ( .D(n1927), .CK(clk), .RN(n2178), .Q(
        \str_reg[8][0] ), .QN(n2300) );
  DFFRX1 \str_reg_reg[19][1]  ( .D(n1832), .CK(clk), .RN(n2196), .QN(n3527) );
  DFFRX1 \str_reg_reg[25][1]  ( .D(n1784), .CK(clk), .RN(n2191), .QN(n3515) );
  DFFRX1 \str_reg_reg[19][6]  ( .D(n1837), .CK(clk), .RN(n2197), .QN(n3525) );
  DFFRX1 \str_reg_reg[8][2]  ( .D(n1921), .CK(clk), .RN(n2178), .QN(n3550) );
  DFFRX1 \str_reg_reg[30][4]  ( .D(n1747), .CK(clk), .RN(n2187), .QN(n3503) );
  DFFRX1 \str_reg_reg[22][4]  ( .D(n1811), .CK(clk), .RN(n2186), .QN(n3521) );
  DFFRX1 \str_reg_reg[28][4]  ( .D(n1763), .CK(clk), .RN(n2185), .QN(n3507) );
  DFFRX1 \str_reg_reg[8][3]  ( .D(n1922), .CK(clk), .RN(n2178), .QN(n3494) );
  DFFRX1 \str_reg_reg[8][4]  ( .D(n1923), .CK(clk), .RN(n2178), .QN(n3549) );
  DFFRX1 \str_reg_reg[25][6]  ( .D(n1789), .CK(clk), .RN(n2190), .QN(n3513) );
  DFFRX1 \str_reg_reg[29][6]  ( .D(n1757), .CK(clk), .RN(n2193), .QN(n3505) );
  DFFRX1 \str_reg_reg[19][4]  ( .D(n1835), .CK(clk), .RN(n2196), .QN(n3526) );
  DFFRX1 \str_reg_reg[20][4]  ( .D(n1827), .CK(clk), .RN(n2184), .QN(n3523) );
  DFFRX1 \str_reg_reg[29][4]  ( .D(n1755), .CK(clk), .RN(n2193), .QN(n3487) );
  DFFRX1 \str_reg_reg[19][0]  ( .D(n1839), .CK(clk), .RN(n2197), .QN(n3524) );
  DFFRX1 \str_reg_reg[25][0]  ( .D(n1791), .CK(clk), .RN(n2190), .QN(n3512) );
  DFFSX1 \str_reg_reg[20][5]  ( .D(n1828), .CK(clk), .SN(n2199), .Q(
        \str_reg[20][5] ), .QN(n2367) );
  DFFSX1 \str_reg_reg[3][5]  ( .D(n1964), .CK(clk), .SN(n2197), .QN(n3558) );
  EDFFTRX1 star_c_reg ( .RN(n2209), .D(ispattern), .E(n1718), .CK(clk), .Q(
        star_c) );
  DFFSX1 \str_reg_reg[15][5]  ( .D(n1868), .CK(clk), .SN(n2198), .QN(n2342) );
  DFFSX1 \str_reg_reg[17][5]  ( .D(n1852), .CK(clk), .SN(n2197), .QN(n2352) );
  DFFRX1 \str_reg_reg[30][3]  ( .D(n1746), .CK(clk), .RN(n2187), .QN(n2424) );
  DFFRX1 \str_reg_reg[30][6]  ( .D(n1749), .CK(clk), .RN(n2187), .QN(n2422) );
  DFFRX1 \str_reg_reg[30][7]  ( .D(n1750), .CK(clk), .RN(n2187), .QN(n2421) );
  DFFRX1 \str_reg_reg[22][3]  ( .D(n1810), .CK(clk), .RN(n2187), .QN(n2378) );
  DFFRX1 \str_reg_reg[22][6]  ( .D(n1813), .CK(clk), .RN(n2186), .QN(n2376) );
  DFFRX1 \str_reg_reg[22][7]  ( .D(n1814), .CK(clk), .RN(n2186), .QN(n2375) );
  DFFRX1 \str_reg_reg[14][2]  ( .D(n1873), .CK(clk), .RN(n2186), .QN(n2341) );
  DFFRX1 \str_reg_reg[14][0]  ( .D(n1879), .CK(clk), .RN(n2186), .QN(n2339) );
  DFFRX1 \str_reg_reg[6][2]  ( .D(n1937), .CK(clk), .RN(n2185), .QN(n2287) );
  DFFRX1 \str_reg_reg[6][3]  ( .D(n1938), .CK(clk), .RN(n2185), .QN(n2286) );
  DFFRX1 \str_reg_reg[28][3]  ( .D(n1762), .CK(clk), .RN(n2185), .QN(n2410) );
  DFFRX1 \str_reg_reg[28][6]  ( .D(n1765), .CK(clk), .RN(n2185), .QN(n2408) );
  DFFRX1 \str_reg_reg[28][7]  ( .D(n1766), .CK(clk), .RN(n2184), .QN(n2407) );
  DFFRX1 \str_reg_reg[20][6]  ( .D(n1829), .CK(clk), .RN(n2184), .QN(n2366) );
  DFFRX1 \str_reg_reg[20][7]  ( .D(n1830), .CK(clk), .RN(n2184), .QN(n2365) );
  DFFRX1 \str_reg_reg[20][0]  ( .D(n1831), .CK(clk), .RN(n2184), .QN(n2363) );
  DFFRX1 \str_reg_reg[12][2]  ( .D(n1889), .CK(clk), .RN(n2184), .QN(n2331) );
  DFFRX1 \str_reg_reg[12][3]  ( .D(n1890), .CK(clk), .RN(n2184), .QN(n2330) );
  DFFRX1 \str_reg_reg[12][7]  ( .D(n1894), .CK(clk), .RN(n2183), .QN(n2328) );
  DFFRX1 \str_reg_reg[26][1]  ( .D(n1776), .CK(clk), .RN(n2183), .QN(n2399) );
  DFFRX1 \str_reg_reg[26][6]  ( .D(n1781), .CK(clk), .RN(n2182), .QN(n2398) );
  DFFRX1 \str_reg_reg[26][7]  ( .D(n1782), .CK(clk), .RN(n2182), .QN(n2397) );
  DFFRX1 \str_reg_reg[26][0]  ( .D(n1783), .CK(clk), .RN(n2182), .QN(n2395) );
  DFFRX1 \str_reg_reg[10][0]  ( .D(n1911), .CK(clk), .RN(n2181), .QN(n2312) );
  DFFRX1 \str_reg_reg[16][3]  ( .D(n1858), .CK(clk), .RN(n2179), .QN(n2346) );
  DFFRX1 \str_reg_reg[16][6]  ( .D(n1861), .CK(clk), .RN(n2179), .QN(n2344) );
  DFFRX1 \str_reg_reg[16][7]  ( .D(n1862), .CK(clk), .RN(n2179), .QN(n2343) );
  DFFRX1 \str_reg_reg[31][2]  ( .D(n1737), .CK(clk), .RN(n2177), .QN(n2431) );
  DFFRX1 \str_reg_reg[31][0]  ( .D(n1743), .CK(clk), .RN(n2177), .QN(n2428) );
  DFFRX1 \str_reg_reg[23][3]  ( .D(n1802), .CK(clk), .RN(n2177), .QN(n2383) );
  DFFRX1 \str_reg_reg[23][7]  ( .D(n1806), .CK(clk), .RN(n2176), .QN(n2381) );
  DFFRX1 \str_reg_reg[7][6]  ( .D(n1933), .CK(clk), .RN(n2193), .QN(n2293) );
  DFFRX1 \str_reg_reg[7][7]  ( .D(n1934), .CK(clk), .RN(n2193), .QN(n2292) );
  DFFRX1 \str_reg_reg[7][0]  ( .D(n1935), .CK(clk), .RN(n2193), .QN(n2290) );
  DFFRX1 \str_reg_reg[29][7]  ( .D(n1758), .CK(clk), .RN(n2194), .QN(n2414) );
  DFFRX1 \str_reg_reg[21][2]  ( .D(n1817), .CK(clk), .RN(n2194), .QN(n2373) );
  DFFRX1 \str_reg_reg[19][7]  ( .D(n1838), .CK(clk), .RN(n2196), .QN(n2359) );
  DFFRX1 \str_reg_reg[11][2]  ( .D(n1897), .CK(clk), .RN(n2192), .QN(n2325) );
  DFFRX1 \str_reg_reg[11][0]  ( .D(n1903), .CK(clk), .RN(n2192), .QN(n2320) );
  DFFRX1 \str_reg_reg[33][4]  ( .D(n1723), .CK(clk), .RN(n2191), .QN(n2447) );
  DFFRX1 \str_reg_reg[33][6]  ( .D(n1725), .CK(clk), .RN(n2191), .QN(n2445) );
  DFFRX1 \str_reg_reg[33][7]  ( .D(n1726), .CK(clk), .RN(n2191), .QN(n2444) );
  DFFRX1 \str_reg_reg[25][3]  ( .D(n1786), .CK(clk), .RN(n2191), .QN(n2393) );
  DFFRX1 \str_reg_reg[25][7]  ( .D(n1790), .CK(clk), .RN(n2190), .QN(n2391) );
  DFFRX1 \str_reg_reg[17][2]  ( .D(n1849), .CK(clk), .RN(n2190), .QN(n2354) );
  DFFRX1 \str_reg_reg[17][3]  ( .D(n1850), .CK(clk), .RN(n2190), .QN(n2353) );
  DFFRX1 \str_reg_reg[10][1]  ( .D(n1904), .CK(clk), .RN(n2181), .Q(
        \str_reg[10][1] ), .QN(n2319) );
  DFFRX1 \str_reg_reg[4][6]  ( .D(n1957), .CK(clk), .RN(n2183), .Q(
        \str_reg[4][6] ), .QN(n2271) );
  DFFRX1 \str_reg_reg[15][2]  ( .D(n1865), .CK(clk), .RN(n2176), .Q(
        \str_reg[15][2] ), .QN(n2050) );
  DFFRX1 \str_reg_reg[4][7]  ( .D(n1958), .CK(clk), .RN(n2183), .Q(
        \str_reg[4][7] ), .QN(n2270) );
  DFFRX1 \str_reg_reg[15][3]  ( .D(n1866), .CK(clk), .RN(n2176), .Q(
        \str_reg[15][3] ), .QN(n2049) );
  DFFRX1 \str_reg_reg[30][0]  ( .D(n1751), .CK(clk), .RN(n2187), .Q(
        \str_reg[30][0] ), .QN(n2031) );
  DFFRX1 \str_reg_reg[22][0]  ( .D(n1815), .CK(clk), .RN(n2186), .Q(
        \str_reg[22][0] ), .QN(n2033) );
  DFFRX1 \str_reg_reg[14][3]  ( .D(n1874), .CK(clk), .RN(n2186), .Q(
        \str_reg[14][3] ), .QN(n2044) );
  DFFRX1 \str_reg_reg[14][1]  ( .D(n1872), .CK(clk), .RN(n2186), .Q(
        \str_reg[14][1] ), .QN(n2038) );
  DFFRX1 \str_reg_reg[14][6]  ( .D(n1877), .CK(clk), .RN(n2186), .Q(
        \str_reg[14][6] ), .QN(n2005) );
  DFFRX1 \str_reg_reg[14][7]  ( .D(n1878), .CK(clk), .RN(n2186), .Q(
        \str_reg[14][7] ), .QN(n2019) );
  DFFRX1 \str_reg_reg[6][1]  ( .D(n1936), .CK(clk), .RN(n2185), .Q(
        \str_reg[6][1] ), .QN(n2029) );
  DFFRX1 \str_reg_reg[6][4]  ( .D(n1939), .CK(clk), .RN(n2185), .Q(
        \str_reg[6][4] ), .QN(n2015) );
  DFFRX1 \str_reg_reg[6][6]  ( .D(n1941), .CK(clk), .RN(n2185), .Q(
        \str_reg[6][6] ), .QN(n2030) );
  DFFRX1 \str_reg_reg[6][7]  ( .D(n1942), .CK(clk), .RN(n2185), .Q(
        \str_reg[6][7] ), .QN(n2002) );
  DFFRX1 \str_reg_reg[6][0]  ( .D(n1943), .CK(clk), .RN(n2185), .Q(
        \str_reg[6][0] ), .QN(n2014) );
  DFFRX1 \str_reg_reg[28][0]  ( .D(n1767), .CK(clk), .RN(n2184), .Q(
        \str_reg[28][0] ), .QN(n2032) );
  DFFRX1 \str_reg_reg[20][3]  ( .D(n1826), .CK(clk), .RN(n2184), .Q(
        \str_reg[20][3] ), .QN(n2368) );
  DFFRX1 \str_reg_reg[4][0]  ( .D(n1959), .CK(clk), .RN(n2183), .Q(
        \str_reg[4][0] ), .QN(n2058) );
  DFFRX1 \str_reg_reg[26][4]  ( .D(n1779), .CK(clk), .RN(n2182), .Q(
        \str_reg[26][4] ), .QN(n2040) );
  DFFRX1 \str_reg_reg[26][2]  ( .D(n1777), .CK(clk), .RN(n2182), .Q(
        \str_reg[26][2] ), .QN(n2020) );
  DFFRX1 \str_reg_reg[26][3]  ( .D(n1778), .CK(clk), .RN(n2182), .Q(
        \str_reg[26][3] ), .QN(n2046) );
  DFFRX1 \str_reg_reg[16][0]  ( .D(n1863), .CK(clk), .RN(n2178), .Q(
        \str_reg[16][0] ), .QN(n2034) );
  DFFRX1 \str_reg_reg[31][3]  ( .D(n1738), .CK(clk), .RN(n2177), .Q(
        \str_reg[31][3] ), .QN(n2039) );
  DFFRX1 \str_reg_reg[31][1]  ( .D(n1736), .CK(clk), .RN(n2177), .Q(
        \str_reg[31][1] ), .QN(n2036) );
  DFFRX1 \str_reg_reg[31][6]  ( .D(n1741), .CK(clk), .RN(n2177), .Q(
        \str_reg[31][6] ), .QN(n2003) );
  DFFRX1 \str_reg_reg[31][7]  ( .D(n1742), .CK(clk), .RN(n2177), .Q(
        \str_reg[31][7] ), .QN(n2017) );
  DFFRX1 \str_reg_reg[23][2]  ( .D(n1801), .CK(clk), .RN(n2177), .Q(
        \str_reg[23][2] ), .QN(n2041) );
  DFFRX1 \str_reg_reg[7][1]  ( .D(n1928), .CK(clk), .RN(n2193), .Q(
        \str_reg[7][1] ), .QN(n2045) );
  DFFRX1 \str_reg_reg[29][2]  ( .D(n1753), .CK(clk), .RN(n2193), .Q(
        \str_reg[29][2] ), .QN(n2417) );
  DFFRX1 \str_reg_reg[29][3]  ( .D(n1754), .CK(clk), .RN(n2193), .Q(
        \str_reg[29][3] ), .QN(n2416) );
  DFFRX1 \str_reg_reg[21][3]  ( .D(n1818), .CK(clk), .RN(n2194), .Q(
        \str_reg[21][3] ), .QN(n2042) );
  DFFRX1 \str_reg_reg[21][1]  ( .D(n1816), .CK(clk), .RN(n2194), .Q(
        \str_reg[21][1] ), .QN(n2037) );
  DFFRX1 \str_reg_reg[21][6]  ( .D(n1821), .CK(clk), .RN(n2194), .Q(
        \str_reg[21][6] ), .QN(n2004) );
  DFFRX1 \str_reg_reg[21][7]  ( .D(n1822), .CK(clk), .RN(n2194), .Q(
        \str_reg[21][7] ), .QN(n2018) );
  DFFRX1 \str_reg_reg[11][3]  ( .D(n1898), .CK(clk), .RN(n2192), .Q(
        \str_reg[11][3] ), .QN(n2324) );
  DFFRX1 \str_reg_reg[11][1]  ( .D(n1896), .CK(clk), .RN(n2192), .Q(
        \str_reg[11][1] ), .QN(n2326) );
  DFFRX1 \str_reg_reg[11][6]  ( .D(n1901), .CK(clk), .RN(n2192), .Q(
        \str_reg[11][6] ), .QN(n2322) );
  DFFRX1 \str_reg_reg[11][7]  ( .D(n1902), .CK(clk), .RN(n2192), .Q(
        \str_reg[11][7] ), .QN(n2321) );
  DFFRX1 \str_reg_reg[25][2]  ( .D(n1785), .CK(clk), .RN(n2191), .Q(
        \str_reg[25][2] ), .QN(n2394) );
  DFFRX1 \str_reg_reg[30][1]  ( .D(n1744), .CK(clk), .RN(n2187), .Q(
        \str_reg[30][1] ), .QN(n2426) );
  DFFRX1 \str_reg_reg[22][1]  ( .D(n1808), .CK(clk), .RN(n2186), .Q(
        \str_reg[22][1] ), .QN(n2380) );
  DFFRX1 \str_reg_reg[28][1]  ( .D(n1760), .CK(clk), .RN(n2185), .Q(
        \str_reg[28][1] ), .QN(n2412) );
  DFFRX1 \str_reg_reg[20][1]  ( .D(n1824), .CK(clk), .RN(n2184), .Q(
        \str_reg[20][1] ), .QN(n2048) );
  DFFRX1 \str_reg_reg[16][1]  ( .D(n1856), .CK(clk), .RN(n2179), .Q(
        \str_reg[16][1] ), .QN(n2348) );
  DFFSX1 \str_reg_reg[12][5]  ( .D(n1892), .CK(clk), .SN(n2199), .Q(
        \str_reg[12][5] ), .QN(n2329) );
  DFFSX1 \str_reg_reg[7][5]  ( .D(n1932), .CK(clk), .SN(n2198), .Q(
        \str_reg[7][5] ), .QN(n2294) );
  DFFSX1 \str_reg_reg[30][5]  ( .D(n1748), .CK(clk), .SN(n2199), .Q(
        \str_reg[30][5] ), .QN(n2423) );
  DFFSX1 \str_reg_reg[22][5]  ( .D(n1812), .CK(clk), .SN(n2199), .Q(
        \str_reg[22][5] ), .QN(n2377) );
  DFFSX1 \str_reg_reg[28][5]  ( .D(n1764), .CK(clk), .SN(n2199), .Q(
        \str_reg[28][5] ), .QN(n2409) );
  DFFSX1 \str_reg_reg[16][5]  ( .D(n1860), .CK(clk), .SN(n2198), .Q(
        \str_reg[16][5] ), .QN(n2345) );
  DFFRX1 \str_reg_reg[15][1]  ( .D(n1864), .CK(clk), .RN(n2176), .QN(n3542) );
  DFFRX1 \str_reg_reg[15][4]  ( .D(n1867), .CK(clk), .RN(n2176), .QN(n3539) );
  DFFRX1 \str_reg_reg[5][1]  ( .D(n1944), .CK(clk), .RN(n2195), .QN(n3553) );
  DFFRX1 \str_reg_reg[5][0]  ( .D(n1951), .CK(clk), .RN(n2196), .QN(n3556) );
  DFFRX1 \str_reg_reg[15][6]  ( .D(n1869), .CK(clk), .RN(n2176), .QN(n3538) );
  DFFRX1 \str_reg_reg[5][6]  ( .D(n1949), .CK(clk), .RN(n2195), .QN(n3554) );
  DFFRX1 \str_reg_reg[4][4]  ( .D(n1955), .CK(clk), .RN(n2183), .QN(n3557) );
  DFFRX1 \str_reg_reg[15][7]  ( .D(n1870), .CK(clk), .RN(n2176), .QN(n3540) );
  DFFRX1 \str_reg_reg[4][1]  ( .D(n1952), .CK(clk), .RN(n2183), .Q(
        \str_reg[4][1] ), .QN(n2275) );
  DFFRX1 \str_reg_reg[15][0]  ( .D(n1871), .CK(clk), .RN(n2195), .QN(n3541) );
  DFFRX1 \str_reg_reg[17][7]  ( .D(n1854), .CK(clk), .RN(n2190), .QN(n3536) );
  DFFRX1 \str_reg_reg[4][2]  ( .D(n1953), .CK(clk), .RN(n2183), .Q(
        \str_reg[4][2] ), .QN(n2274) );
  DFFRX1 \str_reg_reg[4][3]  ( .D(n1954), .CK(clk), .RN(n2183), .Q(
        \str_reg[4][3] ), .QN(n2273) );
  DFFRX1 \str_reg_reg[16][2]  ( .D(n1857), .CK(clk), .RN(n2179), .Q(
        \str_reg[16][2] ), .QN(n2347) );
  DFFRX1 \str_reg_reg[32][3]  ( .D(n1730), .CK(clk), .RN(n2180), .QN(n3500) );
  DFFRX1 \str_reg_reg[12][0]  ( .D(n1895), .CK(clk), .RN(n2183), .QN(n3546) );
  DFFRX1 \str_reg_reg[29][0]  ( .D(n1759), .CK(clk), .RN(n2194), .QN(n3506) );
  DFFRX1 \str_reg_reg[27][0]  ( .D(n1775), .CK(clk), .RN(n2196), .QN(n3510) );
  DFFRX1 \str_reg_reg[32][2]  ( .D(n1729), .CK(clk), .RN(n2180), .QN(n3499) );
  DFFRX1 \str_reg_reg[12][1]  ( .D(n1888), .CK(clk), .RN(n2184), .QN(n3544) );
  DFFRX1 \str_reg_reg[23][1]  ( .D(n1800), .CK(clk), .RN(n2176), .QN(n3490) );
  DFFRX1 \str_reg_reg[7][3]  ( .D(n1930), .CK(clk), .RN(n2193), .QN(n3551) );
  DFFRX1 \str_reg_reg[29][1]  ( .D(n1752), .CK(clk), .RN(n2193), .QN(n3504) );
  DFFRX1 \str_reg_reg[27][1]  ( .D(n1768), .CK(clk), .RN(n2196), .QN(n3508) );
  DFFRX1 \str_reg_reg[17][0]  ( .D(n1855), .CK(clk), .RN(n2190), .QN(n3533) );
  DFFRX1 \str_reg_reg[23][6]  ( .D(n1805), .CK(clk), .RN(n2176), .QN(n3519) );
  DFFRX1 \str_reg_reg[7][4]  ( .D(n1931), .CK(clk), .RN(n2193), .QN(n3552) );
  DFFRX1 \str_reg_reg[25][4]  ( .D(n1787), .CK(clk), .RN(n2190), .QN(n3514) );
  DFFRX1 \str_reg_reg[17][1]  ( .D(n1848), .CK(clk), .RN(n2190), .QN(n3534) );
  DFFRX1 \str_reg_reg[23][0]  ( .D(n1807), .CK(clk), .RN(n2176), .QN(n3520) );
  DFFRX1 \str_reg_reg[17][6]  ( .D(n1853), .CK(clk), .RN(n2190), .QN(n3535) );
  DFFRX1 \str_reg_reg[12][4]  ( .D(n1891), .CK(clk), .RN(n2183), .QN(n3496) );
  DFFRX1 \str_reg_reg[16][4]  ( .D(n1859), .CK(clk), .RN(n2179), .QN(n3537) );
  DFFRX1 \str_reg_reg[23][4]  ( .D(n1803), .CK(clk), .RN(n2176), .QN(n3489) );
  DFFRX1 \str_reg_reg[7][2]  ( .D(n1929), .CK(clk), .RN(n2193), .QN(n3488) );
  DFFRX1 \str_reg_reg[27][4]  ( .D(n1771), .CK(clk), .RN(n2195), .QN(n3485) );
  DFFRX1 \str_reg_reg[17][4]  ( .D(n1851), .CK(clk), .RN(n2190), .QN(n3532) );
  DFFRX1 \str_reg_reg[12][6]  ( .D(n1893), .CK(clk), .RN(n2183), .QN(n3545) );
  DFFRX1 \str_reg_reg[27][6]  ( .D(n1773), .CK(clk), .RN(n2196), .QN(n3509) );
  DFFRX1 \str_reg_reg[14][4]  ( .D(n1875), .CK(clk), .RN(n2186), .QN(n3543) );
  DFFRX1 \str_reg_reg[31][4]  ( .D(n1739), .CK(clk), .RN(n2177), .QN(n3502) );
  DFFRX1 \str_reg_reg[21][4]  ( .D(n1819), .CK(clk), .RN(n2194), .QN(n3522) );
  DFFRX1 \str_reg_reg[11][4]  ( .D(n1899), .CK(clk), .RN(n2192), .QN(n3547) );
  DFFRX1 \str_reg_reg[9][7]  ( .D(n1918), .CK(clk), .RN(n2189), .QN(n3484) );
  DFFSX1 \str_reg_reg[4][5]  ( .D(n1956), .CK(clk), .SN(n2199), .Q(
        \str_reg[4][5] ), .QN(n2272) );
  DFFSX1 \str_reg_reg[23][5]  ( .D(n1804), .CK(clk), .SN(n2198), .Q(
        \str_reg[23][5] ), .QN(n2382) );
  DFFSX1 \str_reg_reg[14][5]  ( .D(n1876), .CK(clk), .SN(n2199), .Q(
        \str_reg[14][5] ), .QN(n2340) );
  DFFSX1 \str_reg_reg[31][5]  ( .D(n1740), .CK(clk), .SN(n2198), .Q(
        \str_reg[31][5] ), .QN(n2430) );
  DFFSX1 \str_reg_reg[21][5]  ( .D(n1820), .CK(clk), .SN(n2198), .Q(
        \str_reg[21][5] ), .QN(n2372) );
  DFFSX1 \str_reg_reg[11][5]  ( .D(n1900), .CK(clk), .SN(n2197), .Q(
        \str_reg[11][5] ), .QN(n2323) );
  DFFSX1 \str_reg_reg[9][5]  ( .D(n1916), .CK(clk), .SN(n2197), .Q(
        \str_reg[9][5] ), .QN(n2309) );
  DFFSX1 \str_reg_reg[6][5]  ( .D(n1940), .CK(clk), .SN(n2199), .Q(
        \str_reg[6][5] ), .QN(n2285) );
  DFFSX1 \str_reg_reg[32][5]  ( .D(n1732), .CK(clk), .SN(n2197), .QN(n3501) );
  DFFSX1 \str_reg_reg[26][5]  ( .D(n1780), .CK(clk), .SN(n2197), .QN(n3511) );
  DFFRX1 \count_p_reg[0]  ( .D(N442), .CK(clk), .RN(n2176), .QN(n1611) );
  DFFRX1 \count_p_reg[1]  ( .D(N443), .CK(clk), .RN(n2188), .QN(n1704) );
  DFFRX1 \count_p_reg[3]  ( .D(N445), .CK(clk), .RN(n2188), .Q(n2013), .QN(
        n1702) );
  DFFRX1 \count_p_reg[2]  ( .D(N444), .CK(clk), .RN(n2188), .Q(n2027), .QN(
        n1703) );
  DFFRX1 \str_reg_reg[18][3]  ( .D(n1842), .CK(clk), .RN(n2182), .QN(n2358) );
  DFFRX1 \str_reg_reg[18][4]  ( .D(n1843), .CK(clk), .RN(n2182), .QN(n2357) );
  DFFRX1 \str_reg_reg[32][4]  ( .D(n1731), .CK(clk), .RN(n2180), .QN(n2438) );
  DFFRX1 \str_reg_reg[32][1]  ( .D(n1728), .CK(clk), .RN(n2180), .QN(n2439) );
  DFFRX1 \str_reg_reg[32][0]  ( .D(n1735), .CK(clk), .RN(n2180), .QN(n2436) );
  DFFRX1 \str_reg_reg[21][0]  ( .D(n1823), .CK(clk), .RN(n2194), .QN(n2370) );
  DFFRX1 \str_reg_reg[27][2]  ( .D(n1769), .CK(clk), .RN(n2196), .QN(n2405) );
  DFFRX1 \str_reg_reg[27][3]  ( .D(n1770), .CK(clk), .RN(n2196), .QN(n2404) );
  DFFRX1 \str_reg_reg[27][7]  ( .D(n1774), .CK(clk), .RN(n2196), .QN(n2402) );
  DFFRX1 \str_reg_reg[9][1]  ( .D(n1912), .CK(clk), .RN(n2189), .QN(n2311) );
  DFFRX1 \str_reg_reg[9][4]  ( .D(n1915), .CK(clk), .RN(n2189), .QN(n2310) );
  DFFRX1 \str_reg_reg[9][6]  ( .D(n1917), .CK(clk), .RN(n2189), .QN(n2308) );
  DFFRX1 \str_reg_reg[9][0]  ( .D(n1919), .CK(clk), .RN(n2189), .QN(n2306) );
  DFFRX1 \str_reg_reg[18][2]  ( .D(n1841), .CK(clk), .RN(n2182), .Q(
        \str_reg[18][2] ), .QN(n2043) );
  DFFRX1 \str_reg_reg[32][6]  ( .D(n1733), .CK(clk), .RN(n2180), .Q(
        \str_reg[32][6] ), .QN(n2016) );
  DFFRX1 \str_reg_reg[32][7]  ( .D(n1734), .CK(clk), .RN(n2180), .Q(
        \str_reg[32][7] ), .QN(n2035) );
  DFFRX1 \str_reg_reg[9][2]  ( .D(n1913), .CK(clk), .RN(n2190), .Q(
        \str_reg[9][2] ), .QN(n2055) );
  DFFRX1 \str_reg_reg[9][3]  ( .D(n1914), .CK(clk), .RN(n2189), .Q(
        \str_reg[9][3] ), .QN(n2053) );
  DFFSX1 \str_reg_reg[27][5]  ( .D(n1772), .CK(clk), .SN(n2197), .Q(
        \str_reg[27][5] ), .QN(n2403) );
  DFFRX1 \str_reg_reg[18][0]  ( .D(n1847), .CK(clk), .RN(n2181), .QN(n3531) );
  DFFRX1 \str_reg_reg[18][7]  ( .D(n1846), .CK(clk), .RN(n2181), .QN(n3530) );
  DFFRX1 \str_reg_reg[18][1]  ( .D(n1840), .CK(clk), .RN(n2182), .QN(n3528) );
  DFFRX1 \str_reg_reg[18][6]  ( .D(n1845), .CK(clk), .RN(n2182), .QN(n3529) );
  DFFSX1 \str_reg_reg[18][5]  ( .D(n1844), .CK(clk), .SN(n2199), .Q(
        \str_reg[18][5] ), .QN(n2356) );
  DFFRX1 \str_num_reg[1]  ( .D(n1692), .CK(clk), .RN(n2187), .Q(N8606), .QN(
        n2059) );
  DFFRX1 match_reg_inst ( .D(match_ns), .CK(clk), .RN(n2188), .QN(n2118) );
  DFFRX1 valid_reg ( .D(1'b1), .CK(clk), .RN(n2182), .QN(n2116) );
  DFFSX1 \count_s_reg[0]  ( .D(N568), .CK(clk), .SN(n3562), .Q(count_s[0]), 
        .QN(N562) );
  DFFRX1 \count_s_reg[1]  ( .D(N569), .CK(clk), .RN(n3562), .Q(count_s[1]), 
        .QN(n1709) );
  DFFRX1 \count_s_reg[2]  ( .D(N570), .CK(clk), .RN(n3562), .Q(count_s[2]), 
        .QN(n1708) );
  DFFRX1 \count_s_reg[3]  ( .D(N571), .CK(clk), .RN(n3562), .Q(count_s[3]), 
        .QN(n1707) );
  DFFRX1 \count_s_reg[4]  ( .D(N572), .CK(clk), .RN(n3562), .Q(count_s[4]), 
        .QN(n1706) );
  DFFRX1 \count_s_reg[5]  ( .D(N573), .CK(clk), .RN(n3562), .Q(n2435) );
  DFFXL \match_index_reg[2]  ( .D(N113), .CK(clk), .Q(n3565) );
  DFFXL \match_index_reg[3]  ( .D(N114), .CK(clk), .Q(n3564) );
  DFFXL \match_index_reg[1]  ( .D(N112), .CK(clk), .Q(n3566) );
  DFFXL \match_index_reg[0]  ( .D(N111), .CK(clk), .Q(n3567) );
  DFFXL \match_index_reg[4]  ( .D(N115), .CK(clk), .Q(n3563) );
  DFFXL \match_reg_reg[33]  ( .D(N8679), .CK(clk), .QN(n2453) );
  DFFXL \match_reg_reg[7]  ( .D(N8653), .CK(clk), .Q(match_reg[7]), .QN(n2865)
         );
  DFFXL \match_reg_reg[32]  ( .D(N8678), .CK(clk), .Q(match_reg[32]), .QN(
        n2468) );
  DFFXL \match_reg_reg[27]  ( .D(N8673), .CK(clk), .Q(match_reg[27]), .QN(
        n2491) );
  DFFXL \match_reg_reg[8]  ( .D(N8654), .CK(clk), .Q(match_reg[8]), .QN(n2838)
         );
  DFFXL \match_reg_reg[24]  ( .D(N8670), .CK(clk), .Q(match_reg[24]), .QN(
        n2510) );
  DFFXL \match_reg_reg[10]  ( .D(N8656), .CK(clk), .Q(match_reg[10]), .QN(
        n2783) );
  DFFXL \match_reg_reg[1]  ( .D(N8647), .CK(clk), .Q(match_reg[1]), .QN(n3050)
         );
  DFFXL \match_reg_reg[14]  ( .D(N8660), .CK(clk), .Q(match_reg[14]), .QN(
        n2669) );
  DFFXL \match_reg_reg[25]  ( .D(N8671), .CK(clk), .Q(match_reg[25]), .QN(
        n2503) );
  DFFXL \match_reg_reg[13]  ( .D(N8659), .CK(clk), .Q(match_reg[13]), .QN(
        n2699) );
  DFFXL \match_reg_reg[15]  ( .D(N8661), .CK(clk), .Q(match_reg[15]), .QN(
        n2637) );
  DFFXL \match_reg_reg[26]  ( .D(N8672), .CK(clk), .Q(match_reg[26]), .QN(
        n2497) );
  DFFXL \match_reg_reg[4]  ( .D(N8650), .CK(clk), .Q(match_reg[4]), .QN(n2950)
         );
  DFFXL \match_reg_reg[31]  ( .D(N8677), .CK(clk), .Q(match_reg[31]), .QN(
        n3087) );
  DFFXL \match_reg_reg[5]  ( .D(N8651), .CK(clk), .Q(match_reg[5]), .QN(n2920)
         );
  DFFXL \match_reg_reg[29]  ( .D(N8675), .CK(clk), .Q(match_reg[29]), .QN(
        n2479) );
  DFFXL \match_reg_reg[6]  ( .D(N8652), .CK(clk), .QN(n2893) );
  DFFXL \match_reg_reg[12]  ( .D(N8658), .CK(clk), .Q(match_reg[12]), .QN(
        n2726) );
  DFFXL \match_reg_reg[19]  ( .D(N8665), .CK(clk), .Q(match_reg[19]), .QN(
        n2549) );
  DFFXL \match_reg_reg[9]  ( .D(N8655), .CK(clk), .Q(match_reg[9]), .QN(n2812)
         );
  DFFXL \match_reg_reg[0]  ( .D(N8646), .CK(clk), .Q(match_reg[0]), .QN(n3091)
         );
  DFFXL \match_reg_reg[30]  ( .D(N8676), .CK(clk), .Q(match_reg[30]), .QN(
        n3086) );
  DFFXL \match_reg_reg[23]  ( .D(N8669), .CK(clk), .Q(match_reg[23]), .QN(
        n2519) );
  DFFXL \match_reg_reg[11]  ( .D(N8657), .CK(clk), .Q(match_reg[11]), .QN(
        n2754) );
  DFFXL \match_reg_reg[28]  ( .D(N8674), .CK(clk), .Q(match_reg[28]), .QN(
        n2488) );
  DFFXL \match_reg_reg[16]  ( .D(N8662), .CK(clk), .Q(match_reg[16]), .QN(
        n2609) );
  DFFXL \match_reg_reg[21]  ( .D(N8667), .CK(clk), .Q(match_reg[21]), .QN(
        n2531) );
  DFFXL \match_reg_reg[22]  ( .D(N8668), .CK(clk), .Q(match_reg[22]), .QN(
        n2525) );
  DFFXL \match_reg_reg[18]  ( .D(N8664), .CK(clk), .Q(match_reg[18]), .QN(
        n2557) );
  DFFXL \match_reg_reg[20]  ( .D(N8666), .CK(clk), .Q(match_reg[20]), .QN(
        n2540) );
  DFFRX2 \str_num_reg[3]  ( .D(n1694), .CK(clk), .RN(n3562), .Q(str_num[3]), 
        .QN(n2297) );
  DFFRX2 \str_num_reg[4]  ( .D(n1695), .CK(clk), .RN(n2188), .Q(str_num[4]), 
        .QN(n2231) );
  DFFRX2 \str_num_reg[2]  ( .D(n1693), .CK(clk), .RN(n2187), .Q(str_num[2]), 
        .QN(n2400) );
  DFFRX2 \str_num_reg[5]  ( .D(n1696), .CK(clk), .RN(n3562), .Q(n2434), .QN(
        n2232) );
  DFFX1 \match_reg_reg[17]  ( .D(N8663), .CK(clk), .QN(n2574) );
  DFFSX2 \str_num_reg[0]  ( .D(n1691), .CK(clk), .SN(n3562), .Q(str_num[0]), 
        .QN(N8605) );
  DFFX1 \match_reg_reg[2]  ( .D(N8648), .CK(clk), .Q(match_reg[2]), .QN(n3021)
         );
  DFFX1 \match_reg_reg[3]  ( .D(N8649), .CK(clk), .QN(n2987) );
  DFFX1 hat_c_reg ( .D(n1719), .CK(clk), .Q(n2001), .QN(n2218) );
  NOR2X1 U1549 ( .A(n3429), .B(match_reg[4]), .Y(n3424) );
  NOR3BX1 U1550 ( .AN(n3470), .B(match_reg[20]), .C(match_reg[21]), .Y(n3473)
         );
  CLKINVX1 U1551 ( .A(n2542), .Y(n2870) );
  NAND3X1 U1552 ( .A(n2126), .B(n2127), .C(n2788), .Y(n2529) );
  NAND3X1 U1553 ( .A(n2120), .B(n2121), .C(n2732), .Y(n2514) );
  NAND3X1 U1554 ( .A(n2132), .B(n2133), .C(n2645), .Y(n2495) );
  NAND2X1 U1555 ( .A(n2684), .B(n2587), .Y(n2968) );
  NAND2X1 U1556 ( .A(n2932), .B(n2933), .Y(n2808) );
  CLKINVX1 U1557 ( .A(n2505), .Y(n2705) );
  CLKINVX1 U1558 ( .A(n2481), .Y(n2583) );
  OAI31XL U1559 ( .A0(n3418), .A1(n3419), .A2(n3420), .B0(n2200), .Y(n2235) );
  OAI221XL U1560 ( .A0(n2169), .A1(n2952), .B0(n2167), .B1(n2984), .C0(n3042), 
        .Y(n3019) );
  NOR3X1 U1561 ( .A(n2013), .B(n2488), .C(n2489), .Y(n2486) );
  AO22X1 U1562 ( .A0(n2523), .A1(n2139), .B0(n2553), .B1(n2138), .Y(n2758) );
  AOI221XL U1563 ( .A0(n2164), .A1(n2523), .B0(n2162), .B1(n2553), .C0(n2554), 
        .Y(n2548) );
  AO22X1 U1564 ( .A0(n2514), .A1(n2139), .B0(n2544), .B1(n2138), .Y(n2731) );
  AO22X1 U1565 ( .A0(n2495), .A1(n2139), .B0(n2523), .B1(n2138), .Y(n2643) );
  AO22X1 U1566 ( .A0(n2529), .A1(n2138), .B0(n2501), .B1(n2139), .Y(n2673) );
  INVX3 U1567 ( .A(reset), .Y(n3562) );
  AND2X2 U1568 ( .A(n2085), .B(n2087), .Y(n1992) );
  CLKBUFX2 U1569 ( .A(n1994), .Y(n2153) );
  NAND2X1 U1570 ( .A(n2224), .B(n2063), .Y(n1993) );
  CLKINVX1 U1571 ( .A(isstring), .Y(n2062) );
  CLKINVX1 U1572 ( .A(n2305), .Y(n2078) );
  NOR2X1 U1573 ( .A(n2062), .B(n2227), .Y(n1994) );
  NAND2X1 U1574 ( .A(n2229), .B(n2063), .Y(n1995) );
  NAND2X1 U1575 ( .A(n2063), .B(n2219), .Y(n1996) );
  NAND2X1 U1576 ( .A(n2228), .B(n2063), .Y(n1997) );
  NAND2X1 U1577 ( .A(chardata[1]), .B(n2063), .Y(n1998) );
  NAND2XL U1578 ( .A(n2226), .B(n2063), .Y(n1999) );
  NAND2X1 U1579 ( .A(n2223), .B(n2063), .Y(n2000) );
  NOR2X2 U1580 ( .A(n2955), .B(n2458), .Y(n2007) );
  CLKBUFX3 U1581 ( .A(n2649), .Y(n2143) );
  NOR2X2 U1582 ( .A(n2567), .B(N585), .Y(n2845) );
  NOR2BXL U1583 ( .AN(n2956), .B(n2458), .Y(n2460) );
  AND2X2 U1584 ( .A(n2091), .B(n2093), .Y(n2008) );
  AND2X2 U1585 ( .A(n2074), .B(n2077), .Y(n2009) );
  AND2X2 U1586 ( .A(n2082), .B(n2083), .Y(n2010) );
  AND2X2 U1587 ( .A(n2100), .B(n2102), .Y(n2011) );
  AND2X2 U1588 ( .A(n2104), .B(n2107), .Y(n2012) );
  NAND3X1 U1589 ( .A(n2299), .B(count_s[4]), .C(n1707), .Y(n2349) );
  NAND3X1 U1590 ( .A(n2299), .B(count_s[3]), .C(n1706), .Y(n2304) );
  NAND3X1 U1591 ( .A(n2298), .B(n2297), .C(str_num[4]), .Y(n2350) );
  AND3X2 U1592 ( .A(n3050), .B(n3091), .C(n2987), .Y(n2022) );
  CLKINVX1 U1593 ( .A(n2236), .Y(\r1189/A[1] ) );
  OAI22XL U1594 ( .A0(n2241), .A1(n2242), .B0(n2243), .B1(n2244), .Y(n2023) );
  AND2X2 U1595 ( .A(n2094), .B(n2096), .Y(n2024) );
  AND2X2 U1596 ( .A(n2098), .B(n2099), .Y(n2025) );
  AND2X2 U1597 ( .A(n2067), .B(n2069), .Y(n2026) );
  NAND3X1 U1598 ( .A(n2298), .B(n2231), .C(str_num[3]), .Y(n2305) );
  NOR2X1 U1599 ( .A(n2232), .B(\sub_189/carry [5]), .Y(n2028) );
  NAND2X1 U1600 ( .A(n2427), .B(str_num[0]), .Y(n2296) );
  INVX4 U1601 ( .A(n2062), .Y(n2063) );
  OAI221X1 U1602 ( .A0(n2728), .A1(n2169), .B0(n2756), .B1(n2167), .C0(n3022), 
        .Y(n2786) );
  OAI221X1 U1603 ( .A0(n2756), .A1(n2169), .B0(n2785), .B1(n2167), .C0(n3051), 
        .Y(n2815) );
  INVX3 U1604 ( .A(n2023), .Y(n2064) );
  OA22X2 U1605 ( .A0(n2276), .A1(n2349), .B0(n2277), .B1(n2350), .Y(n2364) );
  OAI221X1 U1606 ( .A0(n2475), .A1(n2169), .B0(n2583), .B1(n2167), .C0(n2614), 
        .Y(n2515) );
  CLKINVX1 U1607 ( .A(n2646), .Y(n2475) );
  OA22X2 U1608 ( .A0(n2242), .A1(n2388), .B0(n2244), .B1(n2389), .Y(n2384) );
  NAND3X2 U1609 ( .A(n2297), .B(n2231), .C(n2298), .Y(n2243) );
  NAND2X2 U1610 ( .A(n2432), .B(n2298), .Y(n2389) );
  NOR3X2 U1611 ( .A(n2433), .B(n2063), .C(n2434), .Y(n2298) );
  NOR2X2 U1612 ( .A(n3361), .B(n1704), .Y(n2675) );
  OA22X2 U1613 ( .A0(n2282), .A1(n2304), .B0(n2283), .B1(n2305), .Y(n2332) );
  OA22X2 U1614 ( .A0(n2257), .A1(n2304), .B0(n2258), .B1(n2305), .Y(n2313) );
  NOR2X2 U1615 ( .A(n2065), .B(n2066), .Y(n2245) );
  NOR2X1 U1616 ( .A(n2251), .B(n2241), .Y(n2065) );
  NOR2XL U1617 ( .A(n2252), .B(n2243), .Y(n2066) );
  OA22X2 U1618 ( .A0(n2257), .A1(n2349), .B0(n2258), .B1(n2350), .Y(n2355) );
  NAND2X1 U1619 ( .A(n2105), .B(n2068), .Y(n2067) );
  NAND2X1 U1620 ( .A(n2070), .B(n2071), .Y(n2069) );
  CLKINVX1 U1621 ( .A(n2282), .Y(n2068) );
  INVXL U1622 ( .A(n2389), .Y(n2070) );
  CLKINVX1 U1623 ( .A(n2283), .Y(n2071) );
  OAI221X1 U1624 ( .A0(n2756), .A1(n2165), .B0(n2671), .B1(n2174), .C0(n2988), 
        .Y(n2757) );
  OAI221X1 U1625 ( .A0(n2644), .A1(n2169), .B0(n2500), .B1(n2167), .C0(n2704), 
        .Y(n2507) );
  NOR2X2 U1626 ( .A(n2072), .B(n2073), .Y(n2269) );
  NOR2X1 U1627 ( .A(n2276), .B(n2241), .Y(n2072) );
  NOR2XL U1628 ( .A(n2277), .B(n2243), .Y(n2073) );
  NAND2X1 U1629 ( .A(n2075), .B(n2076), .Y(n2074) );
  NAND2X1 U1630 ( .A(n2078), .B(n2079), .Y(n2077) );
  CLKINVX1 U1631 ( .A(n2304), .Y(n2075) );
  CLKINVX1 U1632 ( .A(n2242), .Y(n2076) );
  CLKINVX1 U1633 ( .A(n2244), .Y(n2079) );
  OA22X2 U1634 ( .A0(n2251), .A1(n2349), .B0(n2252), .B1(n2350), .Y(n2351) );
  OA22X2 U1635 ( .A0(n2267), .A1(n2388), .B0(n2268), .B1(n2389), .Y(n2401) );
  OAI221X1 U1636 ( .A0(n2840), .A1(n2165), .B0(n2756), .B1(n2615), .C0(n3092), 
        .Y(n2841) );
  OAI221X1 U1637 ( .A0(n2870), .A1(n2169), .B0(n2551), .B1(n2168), .C0(n2899), 
        .Y(n2561) );
  NOR2X2 U1638 ( .A(n2080), .B(n2081), .Y(n2260) );
  NOR2X1 U1639 ( .A(n2267), .B(n2241), .Y(n2080) );
  NOR2XL U1640 ( .A(n2268), .B(n2243), .Y(n2081) );
  NAND2X1 U1641 ( .A(n2101), .B(n2076), .Y(n2082) );
  NAND2X1 U1642 ( .A(n2084), .B(n2079), .Y(n2083) );
  INVXL U1643 ( .A(n2350), .Y(n2084) );
  NAND2X1 U1644 ( .A(n2075), .B(n2086), .Y(n2085) );
  NAND2X1 U1645 ( .A(n2078), .B(n2088), .Y(n2087) );
  CLKINVX1 U1646 ( .A(n2288), .Y(n2086) );
  CLKINVX1 U1647 ( .A(n2289), .Y(n2088) );
  OA22X2 U1648 ( .A0(n2251), .A1(n2388), .B0(n2252), .B1(n2389), .Y(n2390) );
  AO22XL U1649 ( .A0(n2507), .A1(n2139), .B0(n2535), .B1(n2138), .Y(n2703) );
  OAI221X1 U1650 ( .A0(n2759), .A1(n2169), .B0(n2528), .B1(n2168), .C0(n2817), 
        .Y(n2535) );
  OAI221X1 U1651 ( .A0(n2577), .A1(n2555), .B0(n2611), .B1(n2167), .C0(n2989), 
        .Y(n2642) );
  AOI2BB2X1 U1652 ( .B0(n2137), .B1(n2639), .A0N(n2558), .A1N(n2174), .Y(n2989) );
  NOR2X2 U1653 ( .A(n2089), .B(n2090), .Y(n2278) );
  NOR2X1 U1654 ( .A(n2282), .B(n2241), .Y(n2089) );
  NOR2XL U1655 ( .A(n2283), .B(n2243), .Y(n2090) );
  NAND2X1 U1656 ( .A(n2075), .B(n2092), .Y(n2091) );
  NAND2X1 U1657 ( .A(n2078), .B(n2103), .Y(n2093) );
  CLKINVX1 U1658 ( .A(n2295), .Y(n2092) );
  NAND2X1 U1659 ( .A(n2101), .B(n2095), .Y(n2094) );
  NAND2X1 U1660 ( .A(n2084), .B(n2097), .Y(n2096) );
  CLKINVX1 U1661 ( .A(n2267), .Y(n2095) );
  CLKINVX1 U1662 ( .A(n2268), .Y(n2097) );
  OA22X2 U1663 ( .A0(n2288), .A1(n2388), .B0(n2289), .B1(n2389), .Y(n2420) );
  OAI221X1 U1664 ( .A0(n2584), .A1(n2585), .B0(n2564), .B1(n2586), .C0(n2567), 
        .Y(n2466) );
  AO22XL U1665 ( .A0(n2535), .A1(n2139), .B0(n2580), .B1(n2138), .Y(n2816) );
  OAI221X1 U1666 ( .A0(n2551), .A1(n2169), .B0(n2558), .B1(n2168), .C0(n2925), 
        .Y(n2580) );
  OAI221X1 U1667 ( .A0(n2671), .A1(n2169), .B0(n2701), .B1(n2167), .C0(n3173), 
        .Y(n2730) );
  NAND2X1 U1668 ( .A(n2075), .B(n2095), .Y(n2098) );
  NAND2X1 U1669 ( .A(n2078), .B(n2097), .Y(n2099) );
  OA22X2 U1670 ( .A0(n2241), .A1(n2288), .B0(n2243), .B1(n2289), .Y(n2284) );
  NAND2X1 U1671 ( .A(n2101), .B(n2092), .Y(n2100) );
  NAND2X1 U1672 ( .A(n2084), .B(n2103), .Y(n2102) );
  INVXL U1673 ( .A(n2349), .Y(n2101) );
  INVXL U1674 ( .A(n2296), .Y(n2103) );
  NAND2X1 U1675 ( .A(n2105), .B(n2106), .Y(n2104) );
  NAND2X1 U1676 ( .A(n2070), .B(n2108), .Y(n2107) );
  INVXL U1677 ( .A(n2388), .Y(n2105) );
  CLKINVX1 U1678 ( .A(n2276), .Y(n2106) );
  CLKINVX1 U1679 ( .A(n2277), .Y(n2108) );
  NAND3X2 U1680 ( .A(count_s[4]), .B(count_s[3]), .C(n2299), .Y(n2388) );
  OAI221X1 U1681 ( .A0(n2733), .A1(n2680), .B0(N583), .B1(n2567), .C0(n2734), 
        .Y(n2493) );
  OAI221X1 U1682 ( .A0(n2611), .A1(n2165), .B0(n2551), .B1(n2615), .C0(n2958), 
        .Y(n2612) );
  OAI221X1 U1683 ( .A0(n2470), .A1(n2169), .B0(n2475), .B1(n2167), .C0(n2582), 
        .Y(n2483) );
  OAI221X1 U1684 ( .A0(n3324), .A1(n3175), .B0(N583), .B1(n3115), .C0(n3325), 
        .Y(n2984) );
  NAND2X2 U1685 ( .A(n2845), .B(n2587), .Y(n3115) );
  NOR2X2 U1686 ( .A(n2109), .B(n2110), .Y(n2254) );
  NOR2XL U1687 ( .A(n2257), .B(n2241), .Y(n2109) );
  NOR2XL U1688 ( .A(n2258), .B(n2243), .Y(n2110) );
  NAND3X2 U1689 ( .A(n1706), .B(n2299), .C(n1707), .Y(n2241) );
  OA22X2 U1690 ( .A0(n2251), .A1(n2304), .B0(n2252), .B1(n2305), .Y(n2307) );
  OA22X2 U1691 ( .A0(n2288), .A1(n2349), .B0(n2289), .B1(n2350), .Y(n2374) );
  OA22X2 U1692 ( .A0(n2295), .A1(n2388), .B0(n2296), .B1(n2389), .Y(n2429) );
  OAI21X1 U1693 ( .A0(n2059), .A1(n2499), .B0(n2527), .Y(n2513) );
  INVX1 U1694 ( .A(N8608), .Y(n2499) );
  OAI221X1 U1695 ( .A0(n2990), .A1(n2585), .B0(n2567), .B1(n2991), .C0(n2143), 
        .Y(n2900) );
  OAI221X1 U1696 ( .A0(n2671), .A1(n2165), .B0(n2577), .B1(n2174), .C0(n3023), 
        .Y(n2672) );
  OAI221X1 U1697 ( .A0(n2547), .A1(n2169), .B0(n2470), .B1(n2167), .C0(n2562), 
        .Y(n2477) );
  OAI221X1 U1698 ( .A0(n3269), .A1(n3103), .B0(n2936), .B1(n2143), .C0(n3270), 
        .Y(n2952) );
  OAI32X4 U1699 ( .A0(n2440), .A1(count_s[3]), .A2(n2242), .B0(n2244), .B1(
        n2441), .Y(n2437) );
  OA22X2 U1700 ( .A0(n2276), .A1(n2304), .B0(n2277), .B1(n2305), .Y(n2327) );
  OA22X2 U1701 ( .A0(n2241), .A1(n2295), .B0(n2243), .B1(n2296), .Y(n2291) );
  OA22X2 U1702 ( .A0(n2282), .A1(n2349), .B0(n2283), .B1(n2350), .Y(n2371) );
  OA22X2 U1703 ( .A0(n2257), .A1(n2388), .B0(n2258), .B1(n2389), .Y(n2396) );
  OAI21X1 U1704 ( .A0(n2418), .A1(n3268), .B0(n3293), .Y(n3250) );
  OAI21X1 U1705 ( .A0(n2059), .A1(n2729), .B0(n2499), .Y(n2484) );
  NOR3BX1 U1706 ( .AN(n3461), .B(match_reg[23]), .C(match_reg[24]), .Y(n3411)
         );
  BUFX12 U1707 ( .A(n3563), .Y(match_index[4]) );
  BUFX12 U1708 ( .A(n3564), .Y(match_index[3]) );
  BUFX12 U1709 ( .A(n3565), .Y(match_index[2]) );
  BUFX12 U1710 ( .A(n3566), .Y(match_index[1]) );
  BUFX12 U1711 ( .A(n3567), .Y(match_index[0]) );
  INVX12 U1712 ( .A(n2116), .Y(valid) );
  INVX12 U1713 ( .A(n2118), .Y(match) );
  OAI21X1 U1714 ( .A0(n2400), .A1(n2297), .B0(n3069), .Y(n3179) );
  OAI222X1 U1715 ( .A0(n2547), .A1(n2168), .B0(n2538), .B1(n2169), .C0(n2470), 
        .C1(n2166), .Y(n2473) );
  AOI2BB2XL U1716 ( .B0(n2563), .B1(n2466), .A0N(n2583), .A1N(n2166), .Y(n2582) );
  NOR2X2 U1717 ( .A(n1611), .B(n1704), .Y(n2563) );
  AOI2BB2XL U1718 ( .B0(n2675), .B1(n2814), .A0N(n2168), .A1N(n2840), .Y(n3012) );
  AOI2BB2XL U1719 ( .B0(n2563), .B1(n2814), .A0N(n2896), .A1N(n2166), .Y(n3041) );
  OAI221X4 U1720 ( .A0(n3114), .A1(n3103), .B0(n2565), .B1(n2143), .C0(n3115), 
        .Y(n2814) );
  OAI32X4 U1721 ( .A0(n2440), .A1(count_s[3]), .A2(n2251), .B0(n2252), .B1(
        n2441), .Y(n2443) );
  NAND2BX4 U1722 ( .AN(N586), .B(n2588), .Y(n2567) );
  AND4X1 U1723 ( .A(n3480), .B(n2574), .C(n2557), .D(n2549), .Y(n3470) );
  AOI221XL U1724 ( .A0(n2163), .A1(n2544), .B0(n2164), .B1(n2514), .C0(n2545), 
        .Y(n2539) );
  NOR3BX1 U1725 ( .AN(n3462), .B(match_reg[28]), .C(match_reg[29]), .Y(n3085)
         );
  NOR3BX1 U1726 ( .AN(n3474), .B(match_reg[26]), .C(match_reg[27]), .Y(n3462)
         );
  OR2X1 U1727 ( .A(n2500), .B(n2169), .Y(n2120) );
  OR2XL U1728 ( .A(n2705), .B(n2168), .Y(n2121) );
  NAND3XL U1729 ( .A(n2956), .B(n3088), .C(n2136), .Y(n3080) );
  NAND3XL U1730 ( .A(n2296), .B(n2297), .C(n3069), .Y(n3168) );
  MXI2XL U1731 ( .A(n3501), .B(n2152), .S0(n2437), .Y(n1732) );
  OAI33X1 U1732 ( .A0(n3021), .A1(match_reg[1]), .A2(match_reg[0]), .B0(n2893), 
        .B1(match_reg[5]), .B2(n3468), .Y(n3443) );
  NOR2X1 U1733 ( .A(n3194), .B(n3195), .Y(n2122) );
  NOR2X1 U1734 ( .A(n3196), .B(n3027), .Y(n2123) );
  OR3X2 U1735 ( .A(n2122), .B(n2123), .C(n2845), .Y(n2639) );
  AOI2BB2XL U1736 ( .B0(n2675), .B1(n2639), .A0N(n2671), .A1N(n2168), .Y(n3052) );
  AOI2BB2XL U1737 ( .B0(n2563), .B1(n2639), .A0N(n2728), .A1N(n2166), .Y(n3173) );
  INVX3 U1738 ( .A(N584), .Y(n2587) );
  NAND3X1 U1739 ( .A(n2124), .B(n2125), .C(n2760), .Y(n2523) );
  CLKINVX1 U1740 ( .A(n2233), .Y(\r1189/A[4] ) );
  AND2X2 U1741 ( .A(\r1189/carry [3]), .B(\r1189/A[3] ), .Y(\r1189/carry [4])
         );
  CLKINVX1 U1742 ( .A(n2234), .Y(\r1189/A[3] ) );
  CLKINVX1 U1743 ( .A(n2521), .Y(n2759) );
  OR2XL U1744 ( .A(n2759), .B(n2165), .Y(n2124) );
  OR2X1 U1745 ( .A(n2500), .B(n2615), .Y(n2125) );
  AOI2BB2XL U1746 ( .B0(n2136), .B1(n2512), .A0N(n2705), .A1N(n2169), .Y(n2760) );
  NOR2X1 U1747 ( .A(n2845), .B(n2846), .Y(n2734) );
  CLKINVX1 U1748 ( .A(n2533), .Y(n2818) );
  CLKINVX1 U1749 ( .A(n3013), .Y(n2896) );
  CLKINVX1 U1750 ( .A(n2926), .Y(n2577) );
  OAI221XL U1751 ( .A0(n2896), .A1(n2169), .B0(n2922), .B1(n2167), .C0(n3248), 
        .Y(n2954) );
  NAND4BX1 U1752 ( .AN(n3412), .B(n3405), .C(n3422), .D(n3423), .Y(n3418) );
  CLKINVX1 U1753 ( .A(n3043), .Y(n2922) );
  OAI221X1 U1754 ( .A0(n2701), .A1(n2165), .B0(n2611), .B1(n2174), .C0(n3052), 
        .Y(n2702) );
  NOR3X1 U1755 ( .A(n2489), .B(n1702), .C(n2458), .Y(n2545) );
  NOR4X1 U1756 ( .A(n3468), .B(n3425), .C(match_reg[7]), .D(match_reg[8]), .Y(
        n3417) );
  NOR2BX1 U1757 ( .AN(n3473), .B(match_reg[22]), .Y(n3461) );
  NOR3BX1 U1758 ( .AN(n3433), .B(match_reg[13]), .C(match_reg[14]), .Y(n3463)
         );
  NOR2X1 U1759 ( .A(n3449), .B(match_reg[10]), .Y(n3464) );
  AND4X1 U1760 ( .A(match_reg[32]), .B(n3085), .C(n3086), .D(n3087), .Y(n3410)
         );
  AND2X1 U1761 ( .A(\r1189/A[1] ), .B(\r1189/A[2] ), .Y(\r1189/carry [3]) );
  INVXL U1762 ( .A(n3379), .Y(n3088) );
  OAI211XL U1763 ( .A0(n2647), .A1(n2567), .B0(n2648), .C0(n2143), .Y(n2646)
         );
  NAND2X1 U1764 ( .A(n3293), .B(n2129), .Y(n3204) );
  NOR2X1 U1765 ( .A(n3130), .B(n2128), .Y(n2129) );
  NAND2X1 U1766 ( .A(n2022), .B(n3021), .Y(n3429) );
  NAND3XL U1767 ( .A(n3085), .B(n3086), .C(match_reg[31]), .Y(n3435) );
  NAND2XL U1768 ( .A(match_reg[30]), .B(n3085), .Y(n3436) );
  NAND2X1 U1769 ( .A(ispattern), .B(n3562), .Y(n3357) );
  AOI2BB1XL U1770 ( .A0N(n2950), .A1N(n3429), .B0(n3404), .Y(n3469) );
  NOR2XL U1771 ( .A(n3429), .B(n2950), .Y(n3428) );
  OR2X1 U1772 ( .A(n2528), .B(n2165), .Y(n2126) );
  OR2XL U1773 ( .A(n2705), .B(n2615), .Y(n2127) );
  AOI2BB2XL U1774 ( .B0(n2675), .B1(n2512), .A0N(n2759), .A1N(n2167), .Y(n2788) );
  AO22XL U1775 ( .A0(n2561), .A1(n2163), .B0(n2529), .B1(n2164), .Y(n2560) );
  AO22XL U1776 ( .A0(n2561), .A1(n2138), .B0(n2529), .B1(n2139), .Y(n2787) );
  NAND2X1 U1777 ( .A(n2810), .B(n3177), .Y(n2586) );
  NAND2BX1 U1778 ( .AN(n3247), .B(N584), .Y(n2685) );
  OAI221X1 U1779 ( .A0(n2818), .A1(n2169), .B0(n2870), .B1(n2168), .C0(n2871), 
        .Y(n2553) );
  OAI221X1 U1780 ( .A0(n2528), .A1(n2169), .B0(n2818), .B1(n2168), .C0(n2843), 
        .Y(n2544) );
  AOI2BB2XL U1781 ( .B0(n2137), .B1(n2542), .A0N(n2759), .A1N(n2174), .Y(n2843) );
  INVXL U1782 ( .A(n2466), .Y(n2547) );
  CLKXOR2X2 U1783 ( .A(\r1189/A[2] ), .B(\r1189/A[1] ), .Y(N583) );
  NOR2X1 U1784 ( .A(n2808), .B(n2809), .Y(n2735) );
  MXI2XL U1785 ( .A(n2147), .B(n2306), .S0(n2307), .Y(n1919) );
  MXI2XL U1786 ( .A(n2151), .B(n2308), .S0(n2307), .Y(n1917) );
  MXI2XL U1787 ( .A(n2155), .B(n2310), .S0(n2307), .Y(n1915) );
  MXI2XL U1788 ( .A(n2161), .B(n2311), .S0(n2307), .Y(n1912) );
  MXI2XL U1789 ( .A(n2157), .B(n2053), .S0(n2307), .Y(n1914) );
  MXI2XL U1790 ( .A(n2159), .B(n2055), .S0(n2307), .Y(n1913) );
  MXI2XL U1791 ( .A(n2157), .B(n2353), .S0(n2351), .Y(n1850) );
  MXI2XL U1792 ( .A(n2159), .B(n2354), .S0(n2351), .Y(n1849) );
  MXI2XL U1793 ( .A(n2147), .B(n2320), .S0(n2025), .Y(n1903) );
  MXI2XL U1794 ( .A(n2149), .B(n2321), .S0(n2025), .Y(n1902) );
  MXI2XL U1795 ( .A(n2151), .B(n2322), .S0(n2025), .Y(n1901) );
  MXI2XL U1796 ( .A(n2161), .B(n2326), .S0(n2025), .Y(n1896) );
  MXI2XL U1797 ( .A(n2157), .B(n2324), .S0(n2025), .Y(n1898) );
  MXI2XL U1798 ( .A(n2159), .B(n2325), .S0(n2025), .Y(n1897) );
  MXI2XL U1799 ( .A(n2149), .B(n2359), .S0(n2024), .Y(n1838) );
  MXI2XL U1800 ( .A(n2157), .B(n2361), .S0(n2024), .Y(n1834) );
  MXI2XL U1801 ( .A(n2159), .B(n2362), .S0(n2024), .Y(n1833) );
  MXI2XL U1802 ( .A(n2147), .B(n2057), .S0(n2332), .Y(n1887) );
  MXI2XL U1803 ( .A(n2151), .B(n2334), .S0(n2332), .Y(n1885) );
  MXI2XL U1804 ( .A(n2146), .B(n2370), .S0(n2371), .Y(n1823) );
  MXI2XL U1805 ( .A(n2148), .B(n2018), .S0(n2371), .Y(n1822) );
  MXI2XL U1806 ( .A(n2150), .B(n2004), .S0(n2371), .Y(n1821) );
  MXI2XL U1807 ( .A(n2160), .B(n2037), .S0(n2371), .Y(n1816) );
  MXI2XL U1808 ( .A(n2156), .B(n2042), .S0(n2371), .Y(n1818) );
  MXI2XL U1809 ( .A(n2158), .B(n2373), .S0(n2371), .Y(n1817) );
  MXI2XL U1810 ( .A(n2157), .B(n2049), .S0(n2008), .Y(n1866) );
  MXI2XL U1811 ( .A(n2159), .B(n2050), .S0(n2008), .Y(n1865) );
  MXI2XL U1812 ( .A(n2148), .B(n2381), .S0(n2011), .Y(n1806) );
  MXI2XL U1813 ( .A(n2156), .B(n2383), .S0(n2011), .Y(n1802) );
  MXI2XL U1814 ( .A(n2158), .B(n2041), .S0(n2011), .Y(n1801) );
  MXI2XL U1815 ( .A(n2161), .B(n2303), .S0(n2009), .Y(n1920) );
  MXI2XL U1816 ( .A(n2149), .B(n2301), .S0(n2009), .Y(n1926) );
  MXI2XL U1817 ( .A(n2151), .B(n2302), .S0(n2009), .Y(n1925) );
  MXI2XL U1818 ( .A(n2147), .B(n2034), .S0(n2010), .Y(n1863) );
  MXI2XL U1819 ( .A(n2149), .B(n2343), .S0(n2010), .Y(n1862) );
  MXI2XL U1820 ( .A(n2151), .B(n2344), .S0(n2010), .Y(n1861) );
  MXI2XL U1821 ( .A(n2161), .B(n2348), .S0(n2010), .Y(n1856) );
  MXI2XL U1822 ( .A(n2157), .B(n2346), .S0(n2010), .Y(n1858) );
  MXI2XL U1823 ( .A(n2147), .B(n2312), .S0(n2313), .Y(n1911) );
  MXI2XL U1824 ( .A(n2151), .B(n2315), .S0(n2313), .Y(n1909) );
  MXI2XL U1825 ( .A(n2161), .B(n2319), .S0(n2313), .Y(n1904) );
  MXI2XL U1826 ( .A(n2155), .B(n2357), .S0(n2355), .Y(n1843) );
  MXI2XL U1827 ( .A(n2157), .B(n2358), .S0(n2355), .Y(n1842) );
  MXI2XL U1828 ( .A(n2159), .B(n2043), .S0(n2355), .Y(n1841) );
  MXI2XL U1829 ( .A(n2149), .B(n2328), .S0(n2327), .Y(n1894) );
  MXI2XL U1830 ( .A(n2157), .B(n2330), .S0(n2327), .Y(n1890) );
  MXI2XL U1831 ( .A(n2159), .B(n2331), .S0(n2327), .Y(n1889) );
  MXI2XL U1832 ( .A(n2147), .B(n2363), .S0(n2364), .Y(n1831) );
  MXI2XL U1833 ( .A(n2149), .B(n2365), .S0(n2364), .Y(n1830) );
  MXI2XL U1834 ( .A(n2151), .B(n2366), .S0(n2364), .Y(n1829) );
  MXI2XL U1835 ( .A(n2161), .B(n2048), .S0(n2364), .Y(n1824) );
  MXI2XL U1836 ( .A(n2157), .B(n2368), .S0(n2364), .Y(n1826) );
  MXI2XL U1837 ( .A(n2147), .B(n2339), .S0(n1992), .Y(n1879) );
  MXI2XL U1838 ( .A(n2149), .B(n2019), .S0(n1992), .Y(n1878) );
  MXI2XL U1839 ( .A(n2151), .B(n2005), .S0(n1992), .Y(n1877) );
  MXI2XL U1840 ( .A(n2161), .B(n2038), .S0(n1992), .Y(n1872) );
  MXI2XL U1841 ( .A(n2157), .B(n2044), .S0(n1992), .Y(n1874) );
  MXI2XL U1842 ( .A(n2159), .B(n2341), .S0(n1992), .Y(n1873) );
  MXI2XL U1843 ( .A(n2146), .B(n2033), .S0(n2374), .Y(n1815) );
  MXI2XL U1844 ( .A(n2148), .B(n2375), .S0(n2374), .Y(n1814) );
  MXI2XL U1845 ( .A(n2150), .B(n2376), .S0(n2374), .Y(n1813) );
  MXI2XL U1846 ( .A(n2160), .B(n2380), .S0(n2374), .Y(n1808) );
  MXI2XL U1847 ( .A(n2156), .B(n2378), .S0(n2374), .Y(n1810) );
  MXI2XL U1848 ( .A(n2147), .B(n2060), .S0(n2245), .Y(n1983) );
  MXI2XL U1849 ( .A(n2149), .B(n2246), .S0(n2245), .Y(n1982) );
  MXI2XL U1850 ( .A(n2151), .B(n2247), .S0(n2245), .Y(n1981) );
  MXI2XL U1851 ( .A(n2157), .B(n2061), .S0(n2245), .Y(n1978) );
  MXI2XL U1852 ( .A(n2146), .B(n2259), .S0(n2260), .Y(n1967) );
  MXI2XL U1853 ( .A(n2148), .B(n2261), .S0(n2260), .Y(n1966) );
  MXI2XL U1854 ( .A(n2150), .B(n2262), .S0(n2260), .Y(n1965) );
  MXI2XL U1855 ( .A(n2161), .B(n2266), .S0(n2260), .Y(n1960) );
  MXI2XL U1856 ( .A(n2155), .B(n2279), .S0(n2278), .Y(n1947) );
  MXI2XL U1857 ( .A(n2156), .B(n2280), .S0(n2278), .Y(n1946) );
  MXI2XL U1858 ( .A(n1996), .B(n2290), .S0(n2291), .Y(n1935) );
  MXI2XL U1859 ( .A(n1998), .B(n2045), .S0(n2291), .Y(n1928) );
  MXI2XL U1860 ( .A(n1995), .B(n2292), .S0(n2291), .Y(n1934) );
  MXI2XL U1861 ( .A(n1997), .B(n2293), .S0(n2291), .Y(n1933) );
  MXI2XL U1862 ( .A(n2147), .B(n2253), .S0(n2254), .Y(n1975) );
  MXI2XL U1863 ( .A(n2157), .B(n2054), .S0(n2254), .Y(n1970) );
  MXI2XL U1864 ( .A(n2159), .B(n2256), .S0(n2254), .Y(n1969) );
  MXI2XL U1865 ( .A(n2160), .B(n2052), .S0(n2254), .Y(n1968) );
  MXI2XL U1866 ( .A(n2149), .B(n2021), .S0(n2254), .Y(n1974) );
  MXI2XL U1867 ( .A(n2151), .B(n2006), .S0(n2254), .Y(n1973) );
  MXI2XL U1868 ( .A(n2146), .B(n2058), .S0(n2269), .Y(n1959) );
  MXI2XL U1869 ( .A(n2148), .B(n2270), .S0(n2269), .Y(n1958) );
  MXI2XL U1870 ( .A(n2150), .B(n2271), .S0(n2269), .Y(n1957) );
  MXI2XL U1871 ( .A(n1993), .B(n2286), .S0(n2284), .Y(n1938) );
  MXI2XL U1872 ( .A(n2000), .B(n2287), .S0(n2284), .Y(n1937) );
  MXI2XL U1873 ( .A(n1996), .B(n2014), .S0(n2284), .Y(n1943) );
  MXI2XL U1874 ( .A(n1995), .B(n2002), .S0(n2284), .Y(n1942) );
  MXI2XL U1875 ( .A(n1997), .B(n2030), .S0(n2284), .Y(n1941) );
  MXI2XL U1876 ( .A(n2155), .B(n2015), .S0(n2284), .Y(n1939) );
  MXI2XL U1877 ( .A(n1998), .B(n2029), .S0(n2284), .Y(n1936) );
  MXI2XL U1878 ( .A(n2153), .B(n2352), .S0(n2351), .Y(n1852) );
  MXI2XL U1879 ( .A(n2153), .B(n2360), .S0(n2024), .Y(n1836) );
  MXI2XL U1880 ( .A(n2153), .B(n2335), .S0(n2332), .Y(n1884) );
  MXI2XL U1881 ( .A(n2153), .B(n2342), .S0(n2008), .Y(n1868) );
  MXI2XL U1882 ( .A(n2153), .B(n2051), .S0(n2009), .Y(n1924) );
  MXI2XL U1883 ( .A(n2153), .B(n2345), .S0(n2010), .Y(n1860) );
  MXI2XL U1884 ( .A(n1994), .B(n2316), .S0(n2313), .Y(n1908) );
  MXI2XL U1885 ( .A(n2153), .B(n2329), .S0(n2327), .Y(n1892) );
  MXI2XL U1886 ( .A(n2152), .B(n2377), .S0(n2374), .Y(n1812) );
  MXI2XL U1887 ( .A(n2152), .B(n2047), .S0(n2278), .Y(n1948) );
  MXI2XL U1888 ( .A(n1994), .B(n2294), .S0(n2291), .Y(n1932) );
  MXI2XL U1889 ( .A(n2444), .B(n2148), .S0(n2443), .Y(n1726) );
  MXI2XL U1890 ( .A(n2445), .B(n2150), .S0(n2443), .Y(n1725) );
  MXI2XL U1891 ( .A(n2447), .B(n2154), .S0(n2443), .Y(n1723) );
  MXI2XL U1892 ( .A(n2436), .B(n2146), .S0(n2437), .Y(n1735) );
  MXI2XL U1893 ( .A(n2439), .B(n2160), .S0(n2437), .Y(n1728) );
  MXI2XL U1894 ( .A(n2035), .B(n2148), .S0(n2437), .Y(n1734) );
  MXI2XL U1895 ( .A(n2016), .B(n2150), .S0(n2437), .Y(n1733) );
  MXI2XL U1896 ( .A(n2438), .B(n2154), .S0(n2437), .Y(n1731) );
  MXI2XL U1897 ( .A(n2148), .B(n2391), .S0(n2390), .Y(n1790) );
  MXI2XL U1898 ( .A(n2156), .B(n2393), .S0(n2390), .Y(n1786) );
  MXI2XL U1899 ( .A(n2158), .B(n2394), .S0(n2390), .Y(n1785) );
  MXI2XL U1900 ( .A(n2148), .B(n2402), .S0(n2401), .Y(n1774) );
  MXI2XL U1901 ( .A(n2156), .B(n2404), .S0(n2401), .Y(n1770) );
  MXI2XL U1902 ( .A(n2158), .B(n2405), .S0(n2401), .Y(n1769) );
  MXI2XL U1903 ( .A(n2148), .B(n2414), .S0(n2026), .Y(n1758) );
  MXI2XL U1904 ( .A(n2156), .B(n2416), .S0(n2026), .Y(n1754) );
  MXI2XL U1905 ( .A(n2158), .B(n2417), .S0(n2026), .Y(n1753) );
  MXI2XL U1906 ( .A(n2146), .B(n2428), .S0(n2429), .Y(n1743) );
  MXI2XL U1907 ( .A(n2148), .B(n2017), .S0(n2429), .Y(n1742) );
  MXI2XL U1908 ( .A(n2150), .B(n2003), .S0(n2429), .Y(n1741) );
  MXI2XL U1909 ( .A(n2160), .B(n2036), .S0(n2429), .Y(n1736) );
  MXI2XL U1910 ( .A(n2156), .B(n2039), .S0(n2429), .Y(n1738) );
  MXI2XL U1911 ( .A(n2158), .B(n2431), .S0(n2429), .Y(n1737) );
  MXI2XL U1912 ( .A(n2148), .B(n2385), .S0(n2384), .Y(n1798) );
  MXI2XL U1913 ( .A(n2156), .B(n2386), .S0(n2384), .Y(n1794) );
  MXI2XL U1914 ( .A(n2156), .B(n2046), .S0(n2396), .Y(n1778) );
  MXI2XL U1915 ( .A(n2158), .B(n2020), .S0(n2396), .Y(n1777) );
  MXI2XL U1916 ( .A(n2146), .B(n2395), .S0(n2396), .Y(n1783) );
  MXI2XL U1917 ( .A(n2148), .B(n2397), .S0(n2396), .Y(n1782) );
  MXI2XL U1918 ( .A(n2150), .B(n2398), .S0(n2396), .Y(n1781) );
  MXI2XL U1919 ( .A(n2154), .B(n2040), .S0(n2396), .Y(n1779) );
  MXI2XL U1920 ( .A(n2160), .B(n2399), .S0(n2396), .Y(n1776) );
  MXI2XL U1921 ( .A(n2146), .B(n2032), .S0(n2012), .Y(n1767) );
  MXI2XL U1922 ( .A(n2148), .B(n2407), .S0(n2012), .Y(n1766) );
  MXI2XL U1923 ( .A(n2150), .B(n2408), .S0(n2012), .Y(n1765) );
  MXI2XL U1924 ( .A(n2160), .B(n2412), .S0(n2012), .Y(n1760) );
  MXI2XL U1925 ( .A(n2156), .B(n2410), .S0(n2012), .Y(n1762) );
  MXI2XL U1926 ( .A(n2146), .B(n2031), .S0(n2420), .Y(n1751) );
  MXI2XL U1927 ( .A(n2148), .B(n2421), .S0(n2420), .Y(n1750) );
  MXI2XL U1928 ( .A(n2150), .B(n2422), .S0(n2420), .Y(n1749) );
  MXI2XL U1929 ( .A(n2160), .B(n2426), .S0(n2420), .Y(n1744) );
  MXI2XL U1930 ( .A(n2156), .B(n2424), .S0(n2420), .Y(n1746) );
  MXI2XL U1931 ( .A(n2152), .B(n2392), .S0(n2390), .Y(n1788) );
  MXI2XL U1932 ( .A(n2152), .B(n2403), .S0(n2401), .Y(n1772) );
  MXI2XL U1933 ( .A(n2152), .B(n2415), .S0(n2026), .Y(n1756) );
  MXI2XL U1934 ( .A(n2152), .B(n2056), .S0(n2384), .Y(n1796) );
  MXI2XL U1935 ( .A(n2152), .B(n2409), .S0(n2012), .Y(n1764) );
  MXI2XL U1936 ( .A(n2152), .B(n2423), .S0(n2420), .Y(n1748) );
  NOR3XL U1937 ( .A(n2137), .B(n1718), .C(n2563), .Y(N443) );
  NAND2XL U1938 ( .A(n3069), .B(n2296), .Y(n3057) );
  AOI2BB1XL U1939 ( .A0N(n2749), .A1N(n2297), .B0(n3179), .Y(n3141) );
  NAND3XL U1940 ( .A(n2915), .B(n2297), .C(n3069), .Y(n3268) );
  NAND2XL U1941 ( .A(n3069), .B(n2297), .Y(n3119) );
  NOR2XL U1942 ( .A(n2244), .B(n2434), .Y(n2769) );
  AO21XL U1943 ( .A0(N8605), .A1(N8607), .B0(n2484), .Y(n2482) );
  AO21XL U1944 ( .A0(N8605), .A1(N8608), .B0(n2513), .Y(n2506) );
  MXI2XL U1945 ( .A(n2149), .B(n3484), .S0(n2307), .Y(n1918) );
  MXI2XL U1946 ( .A(n2147), .B(n3533), .S0(n2351), .Y(n1855) );
  MXI2XL U1947 ( .A(n2149), .B(n3536), .S0(n2351), .Y(n1854) );
  MXI2XL U1948 ( .A(n2151), .B(n3535), .S0(n2351), .Y(n1853) );
  MXI2XL U1949 ( .A(n2155), .B(n3532), .S0(n2351), .Y(n1851) );
  MXI2XL U1950 ( .A(n2161), .B(n3534), .S0(n2351), .Y(n1848) );
  MXI2XL U1951 ( .A(n2155), .B(n3547), .S0(n2025), .Y(n1899) );
  MXI2XL U1952 ( .A(n2147), .B(n3524), .S0(n2024), .Y(n1839) );
  MXI2XL U1953 ( .A(n2151), .B(n3525), .S0(n2024), .Y(n1837) );
  MXI2XL U1954 ( .A(n2155), .B(n3526), .S0(n2024), .Y(n1835) );
  MXI2XL U1955 ( .A(n2161), .B(n3527), .S0(n2024), .Y(n1832) );
  MXI2XL U1956 ( .A(n2155), .B(n3486), .S0(n2332), .Y(n1883) );
  MXI2XL U1957 ( .A(n2154), .B(n3522), .S0(n2371), .Y(n1819) );
  MXI2XL U1958 ( .A(n2147), .B(n3541), .S0(n2008), .Y(n1871) );
  MXI2XL U1959 ( .A(n2149), .B(n3540), .S0(n2008), .Y(n1870) );
  MXI2XL U1960 ( .A(n2151), .B(n3538), .S0(n2008), .Y(n1869) );
  MXI2XL U1961 ( .A(n2155), .B(n3539), .S0(n2008), .Y(n1867) );
  MXI2XL U1962 ( .A(n2161), .B(n3542), .S0(n2008), .Y(n1864) );
  MXI2XL U1963 ( .A(n2146), .B(n3520), .S0(n2011), .Y(n1807) );
  MXI2XL U1964 ( .A(n2150), .B(n3519), .S0(n2011), .Y(n1805) );
  MXI2XL U1965 ( .A(n2154), .B(n3489), .S0(n2011), .Y(n1803) );
  MXI2XL U1966 ( .A(n2160), .B(n3490), .S0(n2011), .Y(n1800) );
  MXI2XL U1967 ( .A(n2155), .B(n3549), .S0(n2009), .Y(n1923) );
  MXI2XL U1968 ( .A(n2157), .B(n3494), .S0(n2009), .Y(n1922) );
  MXI2XL U1969 ( .A(n2159), .B(n3550), .S0(n2009), .Y(n1921) );
  MXI2XL U1970 ( .A(n2155), .B(n3537), .S0(n2010), .Y(n1859) );
  MXI2XL U1971 ( .A(n2155), .B(n3548), .S0(n2313), .Y(n1907) );
  MXI2XL U1972 ( .A(n2147), .B(n3531), .S0(n2355), .Y(n1847) );
  MXI2XL U1973 ( .A(n2149), .B(n3530), .S0(n2355), .Y(n1846) );
  MXI2XL U1974 ( .A(n2151), .B(n3529), .S0(n2355), .Y(n1845) );
  MXI2XL U1975 ( .A(n2161), .B(n3528), .S0(n2355), .Y(n1840) );
  MXI2XL U1976 ( .A(n2147), .B(n3546), .S0(n2327), .Y(n1895) );
  MXI2XL U1977 ( .A(n2151), .B(n3545), .S0(n2327), .Y(n1893) );
  MXI2XL U1978 ( .A(n2155), .B(n3496), .S0(n2327), .Y(n1891) );
  MXI2XL U1979 ( .A(n2161), .B(n3544), .S0(n2327), .Y(n1888) );
  MXI2XL U1980 ( .A(n2155), .B(n3523), .S0(n2364), .Y(n1827) );
  MXI2XL U1981 ( .A(n2155), .B(n3543), .S0(n1992), .Y(n1875) );
  MXI2XL U1982 ( .A(n2154), .B(n3521), .S0(n2374), .Y(n1811) );
  MXI2XL U1983 ( .A(n2149), .B(n2333), .S0(n2332), .Y(n1886) );
  MXI2XL U1984 ( .A(n2161), .B(n2338), .S0(n2332), .Y(n1880) );
  MXI2XL U1985 ( .A(n2157), .B(n2336), .S0(n2332), .Y(n1882) );
  MXI2XL U1986 ( .A(n2159), .B(n2337), .S0(n2332), .Y(n1881) );
  MXI2XL U1987 ( .A(n2147), .B(n2300), .S0(n2009), .Y(n1927) );
  MXI2XL U1988 ( .A(n2159), .B(n2347), .S0(n2010), .Y(n1857) );
  MXI2XL U1989 ( .A(n2149), .B(n2314), .S0(n2313), .Y(n1910) );
  MXI2XL U1990 ( .A(n2157), .B(n2317), .S0(n2313), .Y(n1906) );
  MXI2XL U1991 ( .A(n2159), .B(n2318), .S0(n2313), .Y(n1905) );
  MXI2XL U1992 ( .A(n2159), .B(n2369), .S0(n2364), .Y(n1825) );
  MXI2XL U1993 ( .A(n2158), .B(n2379), .S0(n2374), .Y(n1809) );
  MXI2XL U1994 ( .A(n2154), .B(n3483), .S0(n2245), .Y(n1979) );
  MXI2XL U1995 ( .A(n1996), .B(n3556), .S0(n2278), .Y(n1951) );
  MXI2XL U1996 ( .A(n1995), .B(n3555), .S0(n2278), .Y(n1950) );
  MXI2XL U1997 ( .A(n1997), .B(n3554), .S0(n2278), .Y(n1949) );
  MXI2XL U1998 ( .A(n2161), .B(n3553), .S0(n2278), .Y(n1944) );
  MXI2XL U1999 ( .A(n2154), .B(n3552), .S0(n2291), .Y(n1931) );
  MXI2XL U2000 ( .A(n1993), .B(n3551), .S0(n2291), .Y(n1930) );
  MXI2XL U2001 ( .A(n2000), .B(n3488), .S0(n2291), .Y(n1929) );
  MXI2XL U2002 ( .A(n1996), .B(n3491), .S0(n2064), .Y(n1991) );
  MXI2XL U2003 ( .A(n1995), .B(n3492), .S0(n2064), .Y(n1990) );
  MXI2XL U2004 ( .A(n1997), .B(n3493), .S0(n2064), .Y(n1989) );
  MXI2XL U2005 ( .A(n2154), .B(n3561), .S0(n2064), .Y(n1987) );
  MXI2XL U2006 ( .A(n1998), .B(n3560), .S0(n2064), .Y(n1984) );
  MXI2XL U2007 ( .A(n2155), .B(n3559), .S0(n2254), .Y(n1971) );
  MXI2XL U2008 ( .A(n2154), .B(n3557), .S0(n2269), .Y(n1955) );
  MXI2XL U2009 ( .A(n2160), .B(n2250), .S0(n2245), .Y(n1976) );
  MXI2XL U2010 ( .A(n2158), .B(n2249), .S0(n2245), .Y(n1977) );
  MXI2XL U2011 ( .A(n2156), .B(n2264), .S0(n2260), .Y(n1962) );
  MXI2XL U2012 ( .A(n2159), .B(n2265), .S0(n2260), .Y(n1961) );
  MXI2XL U2013 ( .A(n2155), .B(n2263), .S0(n2260), .Y(n1963) );
  MXI2XL U2014 ( .A(n2158), .B(n2281), .S0(n2278), .Y(n1945) );
  MXI2XL U2015 ( .A(n1993), .B(n2239), .S0(n2064), .Y(n1986) );
  MXI2XL U2016 ( .A(n2000), .B(n2240), .S0(n2064), .Y(n1985) );
  MXI2XL U2017 ( .A(n1998), .B(n2275), .S0(n2269), .Y(n1952) );
  MXI2XL U2018 ( .A(n1993), .B(n2273), .S0(n2269), .Y(n1954) );
  MXI2XL U2019 ( .A(n2000), .B(n2274), .S0(n2269), .Y(n1953) );
  MXI2XL U2020 ( .A(n2153), .B(n2309), .S0(n2307), .Y(n1916) );
  MXI2XL U2021 ( .A(n2153), .B(n2323), .S0(n2025), .Y(n1900) );
  MXI2XL U2022 ( .A(n2152), .B(n2372), .S0(n2371), .Y(n1820) );
  MXI2XL U2023 ( .A(n2152), .B(n2382), .S0(n2011), .Y(n1804) );
  MXI2XL U2024 ( .A(n2153), .B(n2356), .S0(n2355), .Y(n1844) );
  MXI2XL U2025 ( .A(n2153), .B(n2367), .S0(n2364), .Y(n1828) );
  MXI2XL U2026 ( .A(n2153), .B(n2340), .S0(n1992), .Y(n1876) );
  MXI2XL U2027 ( .A(n2152), .B(n2248), .S0(n2245), .Y(n1980) );
  MXI2XL U2028 ( .A(n1994), .B(n2238), .S0(n2064), .Y(n1988) );
  MXI2XL U2029 ( .A(n2153), .B(n2255), .S0(n2254), .Y(n1972) );
  MXI2XL U2030 ( .A(n2153), .B(n2272), .S0(n2269), .Y(n1956) );
  MXI2XL U2031 ( .A(n1994), .B(n2285), .S0(n2284), .Y(n1940) );
  MXI2XL U2032 ( .A(n1994), .B(n3558), .S0(n2260), .Y(n1964) );
  MXI2XL U2033 ( .A(n3498), .B(n2156), .S0(n2443), .Y(n1722) );
  MXI2XL U2034 ( .A(n3497), .B(n2158), .S0(n2443), .Y(n1721) );
  MXI2XL U2035 ( .A(n3500), .B(n2156), .S0(n2437), .Y(n1730) );
  MXI2XL U2036 ( .A(n3499), .B(n2158), .S0(n2437), .Y(n1729) );
  MXI2XL U2037 ( .A(n2442), .B(n2146), .S0(n2443), .Y(n1727) );
  MXI2XL U2038 ( .A(n2448), .B(n2160), .S0(n2443), .Y(n1720) );
  MXI2XL U2039 ( .A(n2446), .B(n2152), .S0(n2443), .Y(n1724) );
  MXI2XL U2040 ( .A(n2146), .B(n3512), .S0(n2390), .Y(n1791) );
  MXI2XL U2041 ( .A(n2150), .B(n3513), .S0(n2390), .Y(n1789) );
  MXI2XL U2042 ( .A(n2154), .B(n3514), .S0(n2390), .Y(n1787) );
  MXI2XL U2043 ( .A(n2160), .B(n3515), .S0(n2390), .Y(n1784) );
  MXI2XL U2044 ( .A(n2146), .B(n3510), .S0(n2401), .Y(n1775) );
  MXI2XL U2045 ( .A(n2150), .B(n3509), .S0(n2401), .Y(n1773) );
  MXI2XL U2046 ( .A(n2154), .B(n3485), .S0(n2401), .Y(n1771) );
  MXI2XL U2047 ( .A(n2160), .B(n3508), .S0(n2401), .Y(n1768) );
  MXI2XL U2048 ( .A(n2146), .B(n3506), .S0(n2026), .Y(n1759) );
  MXI2XL U2049 ( .A(n2150), .B(n3505), .S0(n2026), .Y(n1757) );
  MXI2XL U2050 ( .A(n2154), .B(n3487), .S0(n2026), .Y(n1755) );
  MXI2XL U2051 ( .A(n2160), .B(n3504), .S0(n2026), .Y(n1752) );
  MXI2XL U2052 ( .A(n2154), .B(n3502), .S0(n2429), .Y(n1739) );
  MXI2XL U2053 ( .A(n2146), .B(n3518), .S0(n2384), .Y(n1799) );
  MXI2XL U2054 ( .A(n2150), .B(n3517), .S0(n2384), .Y(n1797) );
  MXI2XL U2055 ( .A(n2154), .B(n3495), .S0(n2384), .Y(n1795) );
  MXI2XL U2056 ( .A(n2160), .B(n3516), .S0(n2384), .Y(n1792) );
  MXI2XL U2057 ( .A(n2154), .B(n3507), .S0(n2012), .Y(n1763) );
  MXI2XL U2058 ( .A(n2154), .B(n3503), .S0(n2420), .Y(n1747) );
  MXI2XL U2059 ( .A(n2158), .B(n2387), .S0(n2384), .Y(n1793) );
  MXI2XL U2060 ( .A(n2158), .B(n2411), .S0(n2012), .Y(n1761) );
  MXI2XL U2061 ( .A(n2158), .B(n2425), .S0(n2420), .Y(n1745) );
  MXI2XL U2062 ( .A(n2152), .B(n2430), .S0(n2429), .Y(n1740) );
  MXI2XL U2063 ( .A(n2152), .B(n3511), .S0(n2396), .Y(n1780) );
  NAND4XL U2064 ( .A(n2297), .B(n2231), .C(n2434), .D(n2449), .Y(n2441) );
  NAND3XL U2065 ( .A(n2400), .B(n2297), .C(n2232), .Y(n3010) );
  MX2XL U2066 ( .A(n2434), .B(N567), .S0(n2063), .Y(n1696) );
  CLKINVX1 U2067 ( .A(n3225), .Y(n2128) );
  CLKBUFX2 U2068 ( .A(n3562), .Y(n2213) );
  OR2X1 U2069 ( .A(n2500), .B(n2165), .Y(n2130) );
  OR2XL U2070 ( .A(n2583), .B(n2615), .Y(n2131) );
  NAND3X1 U2071 ( .A(n2130), .B(n2131), .C(n2674), .Y(n2501) );
  AOI22XL U2072 ( .A0(n2675), .A1(n2487), .B0(n2136), .B1(n2493), .Y(n2674) );
  AOI22XL U2073 ( .A0(n2164), .A1(n2477), .B0(n2162), .B1(n2501), .Y(n2496) );
  OAI31X1 U2074 ( .A0(n3177), .A1(n2967), .A2(n2587), .B0(n2685), .Y(n2706) );
  NOR2XL U2075 ( .A(n2587), .B(n3110), .Y(n2764) );
  INVX1 U2076 ( .A(n2810), .Y(n2565) );
  CLKBUFX2 U2077 ( .A(n2201), .Y(n2200) );
  OA22XL U2078 ( .A0(n2528), .A1(n2174), .B0(n2166), .B1(n2551), .Y(n2871) );
  AOI2BB2XL U2079 ( .B0(n2137), .B1(n2900), .A0N(n2174), .A1N(n2818), .Y(n2899) );
  AO22XL U2080 ( .A0(n2515), .A1(n2139), .B0(n2514), .B1(n2138), .Y(n2613) );
  OA22XL U2081 ( .A0(n2728), .A1(n2168), .B0(n2555), .B1(n2701), .Y(n2988) );
  NAND3BXL U2082 ( .AN(N585), .B(n2587), .C(n2588), .Y(n2564) );
  CLKBUFX3 U2083 ( .A(n2471), .Y(n2142) );
  AOI2BB2XL U2084 ( .B0(n2563), .B1(n2459), .A0N(n2475), .A1N(n2166), .Y(n2562) );
  AOI2BB1XL U2085 ( .A0N(n2785), .A1N(n2142), .B0(n2578), .Y(n2784) );
  AOI21XL U2086 ( .A0(n2458), .A1(n2952), .B0(n2578), .Y(n2951) );
  AOI2BB1XL U2087 ( .A0N(n2896), .A1N(n2142), .B0(n2578), .Y(n2895) );
  AOI2BB1XL U2088 ( .A0N(n2756), .A1N(n2142), .B0(n2578), .Y(n2755) );
  AOI21XL U2089 ( .A0(n2458), .A1(n2814), .B0(n2578), .Y(n2813) );
  AOI2BB1XL U2090 ( .A0N(n2142), .A1N(n2840), .B0(n2578), .Y(n2839) );
  OAI211XL U2091 ( .A0(n2650), .A1(n2651), .B0(n2652), .C0(n2653), .Y(n2648)
         );
  MXI2XL U2092 ( .A(n2983), .B(n2984), .S0(n2458), .Y(n2982) );
  AOI211XL U2093 ( .A0(n2956), .A1(n2985), .B0(n2986), .C0(n2987), .Y(n2983)
         );
  AOI211XL U2094 ( .A0(n2956), .A1(n3048), .B0(n3049), .C0(n3050), .Y(n3046)
         );
  NOR2X1 U2095 ( .A(n3103), .B(n3130), .Y(n3136) );
  AOI211XL U2096 ( .A0(n2956), .A1(n3089), .B0(n3090), .C0(n3091), .Y(n3075)
         );
  AOI211XL U2097 ( .A0(n2956), .A1(n3019), .B0(n3020), .C0(n3021), .Y(n3017)
         );
  AOI2BB2XL U2098 ( .B0(n2675), .B1(n2900), .A0N(n2168), .A1N(n2577), .Y(n2958) );
  AOI21XL U2099 ( .A0(n2589), .A1(n2434), .B0(n2590), .Y(n2584) );
  NAND2BXL U2100 ( .AN(n2586), .B(n2845), .Y(n3155) );
  INVXL U2101 ( .A(n3450), .Y(n3460) );
  AOI2BB2XL U2102 ( .B0(n2922), .B1(n2675), .A0N(n2168), .A1N(n2952), .Y(n3014) );
  OA22XL U2103 ( .A0(n2984), .A1(n2169), .B0(n3018), .B1(n2168), .Y(n3073) );
  OA22XL U2104 ( .A0(n2984), .A1(n2174), .B0(n2166), .B1(n3076), .Y(n3319) );
  OA22XL U2105 ( .A0(n3043), .A1(n2174), .B0(n3018), .B1(n2166), .Y(n3042) );
  NOR2BXL U2106 ( .AN(n3480), .B(n2574), .Y(n3401) );
  NOR2X1 U2107 ( .A(n3175), .B(n3303), .Y(n3293) );
  AOI2BB1XL U2108 ( .A0N(n2142), .A1N(n2728), .B0(n2578), .Y(n2727) );
  AOI2BB1XL U2109 ( .A0N(n2867), .A1N(n2142), .B0(n2578), .Y(n2866) );
  AOI2BB1XL U2110 ( .A0N(n2142), .A1N(n2611), .B0(n2578), .Y(n2610) );
  AOI2BB2XL U2111 ( .B0(n2458), .B1(n2493), .A0N(n2140), .A1N(n2494), .Y(n2492) );
  AOI2BB2XL U2112 ( .B0(n2458), .B1(n2542), .A0N(n2543), .A1N(n2140), .Y(n2541) );
  NAND3XL U2113 ( .A(n3474), .B(n2497), .C(match_reg[27]), .Y(n3406) );
  NAND2XL U2114 ( .A(match_reg[28]), .B(n3462), .Y(n3407) );
  NAND2XL U2115 ( .A(match_reg[26]), .B(n3474), .Y(n3408) );
  NAND3XL U2116 ( .A(n3462), .B(n2488), .C(match_reg[29]), .Y(n3434) );
  AND2X2 U2117 ( .A(n2546), .B(n1704), .Y(n2517) );
  MXI2XL U2118 ( .A(n2538), .B(n2547), .S0(n1611), .Y(n2546) );
  NAND3XL U2119 ( .A(n3461), .B(n2519), .C(match_reg[24]), .Y(n3394) );
  CLKINVX1 U2120 ( .A(chardata[3]), .Y(n2225) );
  CLKINVX1 U2121 ( .A(chardata[1]), .Y(n2221) );
  NAND2XL U2122 ( .A(match_reg[20]), .B(n3470), .Y(n3395) );
  CLKINVX1 U2123 ( .A(chardata[1]), .Y(n2222) );
  AOI33XL U2124 ( .A0(n2216), .A1(n3411), .A2(match_reg[25]), .B0(n2216), .B1(
        n3417), .B2(match_reg[9]), .Y(n3477) );
  NAND4XL U2125 ( .A(match_reg[19]), .B(n3480), .C(n2574), .D(n2557), .Y(n3397) );
  NAND3XL U2126 ( .A(n3480), .B(n2574), .C(match_reg[18]), .Y(n3399) );
  NAND3XL U2127 ( .A(n3470), .B(n2540), .C(match_reg[21]), .Y(n3400) );
  NAND3XL U2128 ( .A(n3463), .B(n2637), .C(match_reg[16]), .Y(n3392) );
  NAND2XL U2129 ( .A(match_reg[15]), .B(n3463), .Y(n3431) );
  AOI2BB2XL U2130 ( .B0(match_reg[13]), .B1(n3433), .A0N(n2216), .A1N(n3392), 
        .Y(n3432) );
  NAND3XL U2131 ( .A(n3433), .B(n2699), .C(match_reg[14]), .Y(n3430) );
  NAND3XL U2132 ( .A(n3464), .B(n2754), .C(match_reg[12]), .Y(n3415) );
  INVXL U2133 ( .A(ispattern), .Y(n2433) );
  AOI33XL U2134 ( .A0(n3482), .A1(n2217), .A2(match_reg[10]), .B0(n2216), .B1(
        n3433), .B2(match_reg[13]), .Y(n3481) );
  INVXL U2135 ( .A(n3449), .Y(n3482) );
  NAND2XL U2136 ( .A(match_reg[11]), .B(n3464), .Y(n3444) );
  NAND3BXL U2137 ( .AN(n3425), .B(n3424), .C(match_reg[7]), .Y(n3421) );
  OR4XL U2138 ( .A(n2462), .B(N8609), .C(n2028), .D(ispattern), .Y(n3044) );
  NOR4XL U2139 ( .A(match_reg[2]), .B(match_reg[1]), .C(match_reg[0]), .D(
        n2987), .Y(n3447) );
  AOI21XL U2140 ( .A0(n3467), .A1(n3021), .B0(match_reg[1]), .Y(n3466) );
  CLKBUFX2 U2141 ( .A(n3562), .Y(n2175) );
  INVX1 U2142 ( .A(n3293), .Y(n3103) );
  OR2XL U2143 ( .A(n2644), .B(n2165), .Y(n2132) );
  OR2XL U2144 ( .A(n2475), .B(n2615), .Y(n2133) );
  INVX1 U2145 ( .A(n2493), .Y(n2644) );
  AOI2BB2XL U2146 ( .B0(n2136), .B1(n2487), .A0N(n2583), .A1N(n2169), .Y(n2645) );
  AOI22XL U2147 ( .A0(n2473), .A1(n2164), .B0(n2162), .B1(n2495), .Y(n2490) );
  CLKINVX1 U2148 ( .A(n2845), .Y(n2649) );
  INVX3 U2149 ( .A(n2134), .Y(n2172) );
  INVX3 U2150 ( .A(n2134), .Y(n2173) );
  CLKBUFX3 U2151 ( .A(n2460), .Y(n2163) );
  NAND2X4 U2152 ( .A(n2215), .B(n2140), .Y(n2578) );
  CLKBUFX3 U2153 ( .A(n2202), .Y(n2199) );
  CLKBUFX3 U2154 ( .A(n2202), .Y(n2198) );
  CLKBUFX3 U2155 ( .A(n2203), .Y(n2197) );
  CLKBUFX3 U2156 ( .A(n2206), .Y(n2189) );
  CLKBUFX3 U2157 ( .A(n2207), .Y(n2190) );
  CLKBUFX3 U2158 ( .A(n2206), .Y(n2191) );
  CLKBUFX3 U2159 ( .A(n2205), .Y(n2192) );
  CLKBUFX3 U2160 ( .A(n2203), .Y(n2196) );
  CLKBUFX3 U2161 ( .A(n2204), .Y(n2194) );
  CLKBUFX3 U2162 ( .A(n2205), .Y(n2193) );
  CLKBUFX3 U2163 ( .A(n2204), .Y(n2195) );
  CLKBUFX3 U2164 ( .A(n2208), .Y(n2183) );
  CLKBUFX3 U2165 ( .A(n2207), .Y(n2184) );
  CLKBUFX3 U2166 ( .A(n2207), .Y(n2185) );
  CLKBUFX3 U2167 ( .A(n2206), .Y(n2186) );
  CLKBUFX3 U2168 ( .A(n2206), .Y(n2187) );
  CLKBUFX3 U2169 ( .A(n2208), .Y(n2188) );
  CLKBUFX3 U2170 ( .A(n2208), .Y(n2182) );
  INVX3 U2171 ( .A(n2135), .Y(n2171) );
  INVX3 U2172 ( .A(n2135), .Y(n2170) );
  INVX4 U2173 ( .A(n2142), .Y(n2458) );
  CLKBUFX3 U2174 ( .A(n2460), .Y(n2162) );
  CLKBUFX3 U2175 ( .A(n2463), .Y(n2140) );
  CLKINVX1 U2176 ( .A(n2457), .Y(n2463) );
  CLKBUFX3 U2177 ( .A(n2212), .Y(n2202) );
  CLKBUFX3 U2178 ( .A(n2205), .Y(n2177) );
  CLKBUFX3 U2179 ( .A(n2207), .Y(n2178) );
  CLKBUFX3 U2180 ( .A(n2207), .Y(n2179) );
  CLKBUFX3 U2181 ( .A(n2206), .Y(n2180) );
  CLKBUFX3 U2182 ( .A(n2208), .Y(n2181) );
  CLKBUFX3 U2183 ( .A(n2205), .Y(n2176) );
  CLKBUFX3 U2184 ( .A(n2211), .Y(n2205) );
  CLKBUFX3 U2185 ( .A(n2212), .Y(n2204) );
  CLKBUFX3 U2186 ( .A(n2212), .Y(n2203) );
  CLKBUFX3 U2187 ( .A(n2210), .Y(n2207) );
  CLKBUFX3 U2188 ( .A(n2210), .Y(n2206) );
  CLKBUFX3 U2189 ( .A(n2210), .Y(n2208) );
  CLKBUFX3 U2190 ( .A(n2213), .Y(n2201) );
  AND3X2 U2191 ( .A(n2452), .B(n2144), .C(n2135), .Y(n2134) );
  INVX3 U2192 ( .A(n2144), .Y(n2665) );
  NAND2X1 U2193 ( .A(match_ns), .B(n3077), .Y(n2471) );
  CLKBUFX3 U2194 ( .A(n2537), .Y(n2139) );
  NOR2X1 U2195 ( .A(n2981), .B(n2458), .Y(n2537) );
  CLKBUFX3 U2196 ( .A(n2007), .Y(n2164) );
  CLKBUFX3 U2197 ( .A(n2153), .Y(n2152) );
  CLKBUFX3 U2198 ( .A(n1996), .Y(n2147) );
  CLKBUFX3 U2199 ( .A(n1995), .Y(n2149) );
  CLKBUFX3 U2200 ( .A(n1997), .Y(n2151) );
  CLKBUFX3 U2201 ( .A(n1999), .Y(n2155) );
  CLKBUFX3 U2202 ( .A(n1998), .Y(n2161) );
  CLKBUFX3 U2203 ( .A(n1993), .Y(n2157) );
  CLKBUFX3 U2204 ( .A(n2000), .Y(n2159) );
  CLKBUFX3 U2205 ( .A(n2175), .Y(n2212) );
  INVX3 U2206 ( .A(n2217), .Y(n2216) );
  CLKBUFX3 U2207 ( .A(n2615), .Y(n2174) );
  CLKBUFX3 U2208 ( .A(n2555), .Y(n2169) );
  INVX3 U2209 ( .A(n2136), .Y(n2168) );
  INVX3 U2210 ( .A(n2137), .Y(n2165) );
  INVX3 U2211 ( .A(n2136), .Y(n2167) );
  INVX3 U2212 ( .A(n2137), .Y(n2166) );
  CLKBUFX3 U2213 ( .A(n2214), .Y(n2211) );
  CLKBUFX3 U2214 ( .A(n2214), .Y(n2210) );
  CLKINVX1 U2215 ( .A(n3357), .Y(n2451) );
  AND2X2 U2216 ( .A(n3084), .B(n3378), .Y(n2135) );
  CLKBUFX3 U2217 ( .A(n2606), .Y(n2144) );
  NAND4X1 U2218 ( .A(n3088), .B(n2220), .C(n2223), .D(n2224), .Y(n2606) );
  INVX3 U2219 ( .A(n2225), .Y(n2224) );
  INVX3 U2220 ( .A(n2222), .Y(n2220) );
  CLKBUFX3 U2221 ( .A(n2508), .Y(n2138) );
  NOR2X1 U2222 ( .A(n2957), .B(n2458), .Y(n2508) );
  CLKBUFX3 U2223 ( .A(n2607), .Y(n2141) );
  CLKINVX1 U2224 ( .A(n2579), .Y(n2607) );
  CLKBUFX3 U2225 ( .A(n1996), .Y(n2146) );
  CLKBUFX3 U2226 ( .A(n1995), .Y(n2148) );
  CLKBUFX3 U2227 ( .A(n1997), .Y(n2150) );
  CLKBUFX3 U2228 ( .A(n1999), .Y(n2154) );
  CLKBUFX3 U2229 ( .A(n1998), .Y(n2160) );
  CLKBUFX3 U2230 ( .A(n1993), .Y(n2156) );
  CLKBUFX3 U2231 ( .A(n2000), .Y(n2158) );
  CLKBUFX3 U2232 ( .A(n2218), .Y(n2217) );
  CLKBUFX3 U2233 ( .A(n2175), .Y(n2214) );
  CLKBUFX3 U2234 ( .A(n2215), .Y(n2209) );
  CLKBUFX3 U2235 ( .A(n2175), .Y(n2215) );
  NOR3BX1 U2236 ( .AN(n3464), .B(match_reg[11]), .C(match_reg[12]), .Y(n3433)
         );
  NOR3BX1 U2237 ( .AN(n3463), .B(match_reg[15]), .C(match_reg[16]), .Y(n3480)
         );
  NOR2BX1 U2238 ( .AN(n3411), .B(match_reg[25]), .Y(n3474) );
  CLKBUFX3 U2239 ( .A(chardata[7]), .Y(n2229) );
  CLKBUFX3 U2240 ( .A(chardata[5]), .Y(n2227) );
  CLKBUFX3 U2241 ( .A(chardata[0]), .Y(n2219) );
  CLKBUFX3 U2242 ( .A(chardata[2]), .Y(n2223) );
  CLKBUFX3 U2243 ( .A(chardata[6]), .Y(n2228) );
  CLKBUFX3 U2244 ( .A(chardata[4]), .Y(n2226) );
  ADDHXL U2245 ( .A(N9401), .B(N9400), .CO(\add_147_aco/carry [2]), .S(N569)
         );
  ADDHXL U2246 ( .A(N9402), .B(\add_147_aco/carry [2]), .CO(
        \add_147_aco/carry [3]), .S(N570) );
  ADDHXL U2247 ( .A(N9403), .B(\add_147_aco/carry [3]), .CO(
        \add_147_aco/carry [4]), .S(N571) );
  ADDHXL U2248 ( .A(N9404), .B(\add_147_aco/carry [4]), .CO(
        \add_147_aco/carry [5]), .S(N572) );
  CLKBUFX3 U2249 ( .A(N8606), .Y(n2145) );
  AND2X2 U2250 ( .A(n1704), .B(n3361), .Y(n2136) );
  CLKINVX1 U2251 ( .A(str_num[3]), .Y(n2230) );
  AND2X2 U2252 ( .A(n1611), .B(n1704), .Y(n2137) );
  ADDHXL U2253 ( .A(count_s[1]), .B(count_s[0]), .CO(\add_148/carry [2]), .S(
        N563) );
  ADDHXL U2254 ( .A(count_s[2]), .B(\add_148/carry [2]), .CO(
        \add_148/carry [3]), .S(N564) );
  ADDHXL U2255 ( .A(count_s[3]), .B(\add_148/carry [3]), .CO(
        \add_148/carry [4]), .S(N565) );
  ADDHXL U2256 ( .A(count_s[4]), .B(\add_148/carry [4]), .CO(
        \add_148/carry [5]), .S(N566) );
  AOI2BB2XL U2257 ( .B0(n2137), .B1(n2512), .A0N(n2644), .A1N(n2174), .Y(n2732) );
  AOI221X4 U2258 ( .A0(n3212), .A1(n2572), .B0(n2685), .B1(n2845), .C0(n3213), 
        .Y(n2701) );
  XNOR2X1 U2259 ( .A(\sub_189/carry [5]), .B(n2232), .Y(N8610) );
  AND2X1 U2260 ( .A(\sub_189/carry [4]), .B(n2231), .Y(\sub_189/carry [5]) );
  XOR2X1 U2261 ( .A(n2231), .B(\sub_189/carry [4]), .Y(N8609) );
  AND2X1 U2262 ( .A(\sub_189/carry [3]), .B(n2230), .Y(\sub_189/carry [4]) );
  XOR2X1 U2263 ( .A(n2230), .B(\sub_189/carry [3]), .Y(N8608) );
  AND2X1 U2264 ( .A(n2059), .B(n2400), .Y(\sub_189/carry [3]) );
  XOR2X1 U2265 ( .A(n2400), .B(n2059), .Y(N8607) );
  AND2X1 U2266 ( .A(\r1189/carry [4]), .B(\r1189/A[4] ), .Y(N586) );
  XOR2X1 U2267 ( .A(\r1189/A[4] ), .B(\r1189/carry [4]), .Y(N585) );
  XOR2X1 U2268 ( .A(\r1189/A[3] ), .B(\r1189/carry [3]), .Y(N584) );
  AND2X1 U2269 ( .A(count_s[0]), .B(n2063), .Y(N9400) );
  AND2X1 U2270 ( .A(count_s[1]), .B(n2063), .Y(N9401) );
  AND2X1 U2271 ( .A(count_s[2]), .B(n2063), .Y(N9402) );
  AND2X1 U2272 ( .A(count_s[3]), .B(n2063), .Y(N9403) );
  AND2X1 U2273 ( .A(count_s[4]), .B(n2063), .Y(N9404) );
  AND2X1 U2274 ( .A(n2063), .B(n2435), .Y(N9405) );
  CLKINVX1 U2275 ( .A(N9400), .Y(N568) );
  XOR2X1 U2276 ( .A(\add_147_aco/carry [5]), .B(N9405), .Y(N573) );
  XOR2X1 U2277 ( .A(\add_148/carry [5]), .B(n2435), .Y(N567) );
  CLKINVX1 U2278 ( .A(n2235), .Y(\r1189/A[2] ) );
  CLKINVX1 U2279 ( .A(n2237), .Y(N581) );
  NAND3X1 U2280 ( .A(N8605), .B(n2400), .C(n2145), .Y(n2258) );
  NAND3X1 U2281 ( .A(n1708), .B(count_s[1]), .C(N562), .Y(n2257) );
  NAND2X1 U2282 ( .A(n2406), .B(n2400), .Y(n2268) );
  NAND3X1 U2283 ( .A(count_s[1]), .B(count_s[0]), .C(n1708), .Y(n2267) );
  NAND2X1 U2284 ( .A(str_num[2]), .B(n2413), .Y(n2277) );
  NAND3X1 U2285 ( .A(n1709), .B(count_s[2]), .C(N562), .Y(n2276) );
  NAND2X1 U2286 ( .A(n2418), .B(n2419), .Y(n2283) );
  NAND3X1 U2287 ( .A(count_s[2]), .B(count_s[0]), .C(n1709), .Y(n2282) );
  NAND2X1 U2288 ( .A(n2427), .B(N8605), .Y(n2289) );
  NAND3X1 U2289 ( .A(count_s[2]), .B(count_s[1]), .C(N562), .Y(n2288) );
  NOR2X1 U2290 ( .A(n2435), .B(n2062), .Y(n2299) );
  NAND3X1 U2291 ( .A(count_s[1]), .B(count_s[0]), .C(count_s[2]), .Y(n2295) );
  NAND3X1 U2292 ( .A(n1709), .B(n1708), .C(N562), .Y(n2242) );
  NOR2X1 U2293 ( .A(n2063), .B(n2433), .Y(n2449) );
  NAND3X1 U2294 ( .A(n2419), .B(n2400), .C(str_num[0]), .Y(n2252) );
  NAND3X1 U2295 ( .A(n1708), .B(count_s[0]), .C(n1709), .Y(n2251) );
  NAND3X1 U2296 ( .A(n2063), .B(n2435), .C(n1706), .Y(n2440) );
  OA21XL U2297 ( .A0(n2450), .A1(n2216), .B0(n2451), .Y(n1719) );
  NAND2X1 U2298 ( .A(n2214), .B(n2452), .Y(n1717) );
  CLKMX2X2 U2299 ( .A(str_num[4]), .B(N566), .S0(n2063), .Y(n1695) );
  CLKMX2X2 U2300 ( .A(str_num[3]), .B(N565), .S0(n2063), .Y(n1694) );
  CLKMX2X2 U2301 ( .A(str_num[2]), .B(N564), .S0(n2063), .Y(n1693) );
  CLKMX2X2 U2302 ( .A(n2145), .B(N563), .S0(n2063), .Y(n1692) );
  CLKMX2X2 U2303 ( .A(str_num[0]), .B(N562), .S0(n2063), .Y(n1691) );
  OAI211X1 U2304 ( .A0(n2453), .A1(n2454), .B0(n2210), .C0(n2455), .Y(N8679)
         );
  AOI32X1 U2305 ( .A0(n2456), .A1(str_num[0]), .A2(n2457), .B0(n2458), .B1(
        n2459), .Y(n2455) );
  NAND2X1 U2306 ( .A(n2162), .B(n2461), .Y(n2454) );
  OAI211X1 U2307 ( .A0(n2462), .A1(n2140), .B0(n2204), .C0(n2464), .Y(N8678)
         );
  MXI2X1 U2308 ( .A(n2465), .B(n2466), .S0(n2458), .Y(n2464) );
  NOR3X1 U2309 ( .A(n2467), .B(n2468), .C(n2013), .Y(n2465) );
  OAI221XL U2310 ( .A0(n2140), .A1(n2469), .B0(n2470), .B1(n2142), .C0(n2472), 
        .Y(N8677) );
  AOI31X1 U2311 ( .A0(match_reg[31]), .A1(n2473), .A2(n2162), .B0(reset), .Y(
        n2472) );
  OAI221XL U2312 ( .A0(n2474), .A1(n2140), .B0(n2475), .B1(n2142), .C0(n2476), 
        .Y(N8676) );
  AOI31X1 U2313 ( .A0(match_reg[30]), .A1(n2477), .A2(n2162), .B0(reset), .Y(
        n2476) );
  OAI211X1 U2314 ( .A0(n2478), .A1(n2479), .B0(n2210), .C0(n2480), .Y(N8675)
         );
  AOI2BB2X1 U2315 ( .B0(n2458), .B1(n2481), .A0N(n2140), .A1N(n2482), .Y(n2480) );
  AOI22X1 U2316 ( .A0(n2162), .A1(n2483), .B0(n2164), .B1(n2461), .Y(n2478) );
  OAI211X1 U2317 ( .A0(n2140), .A1(n2484), .B0(n2211), .C0(n2485), .Y(N8674)
         );
  MXI2X1 U2318 ( .A(n2486), .B(n2487), .S0(n2458), .Y(n2485) );
  OAI211X1 U2319 ( .A0(n2490), .A1(n2491), .B0(n2203), .C0(n2492), .Y(N8673)
         );
  OAI211X1 U2320 ( .A0(n2496), .A1(n2497), .B0(n2211), .C0(n2498), .Y(N8672)
         );
  AOI2BB2X1 U2321 ( .B0(n2457), .B1(n2499), .A0N(n2500), .A1N(n2142), .Y(n2498) );
  OAI211X1 U2322 ( .A0(n2502), .A1(n2503), .B0(n2199), .C0(n2504), .Y(N8671)
         );
  AOI2BB2X1 U2323 ( .B0(n2458), .B1(n2505), .A0N(n2140), .A1N(n2506), .Y(n2504) );
  AOI222XL U2324 ( .A0(n2163), .A1(n2507), .B0(n2138), .B1(n2461), .C0(n2164), 
        .C1(n2483), .Y(n2502) );
  OAI211X1 U2325 ( .A0(n2509), .A1(n2510), .B0(n2211), .C0(n2511), .Y(N8670)
         );
  AOI2BB2X1 U2326 ( .B0(n2458), .B1(n2512), .A0N(n2140), .A1N(n2513), .Y(n2511) );
  AOI221XL U2327 ( .A0(n2163), .A1(n2514), .B0(n2164), .B1(n2515), .C0(n2516), 
        .Y(n2509) );
  NOR3X1 U2328 ( .A(n2467), .B(n1702), .C(n2458), .Y(n2516) );
  NAND2X1 U2329 ( .A(n2517), .B(n1703), .Y(n2467) );
  OAI211X1 U2330 ( .A0(n2518), .A1(n2519), .B0(n2199), .C0(n2520), .Y(N8669)
         );
  AOI2BB2X1 U2331 ( .B0(n2458), .B1(n2521), .A0N(n2140), .A1N(n2522), .Y(n2520) );
  AOI222XL U2332 ( .A0(n2163), .A1(n2523), .B0(n2138), .B1(n2473), .C0(n2164), 
        .C1(n2495), .Y(n2518) );
  OAI211X1 U2333 ( .A0(n2524), .A1(n2525), .B0(n2204), .C0(n2526), .Y(N8668)
         );
  AOI2BB2X1 U2334 ( .B0(n2457), .B1(n2527), .A0N(n2528), .A1N(n2142), .Y(n2526) );
  AOI222XL U2335 ( .A0(n2163), .A1(n2529), .B0(n2138), .B1(n2477), .C0(n2164), 
        .C1(n2501), .Y(n2524) );
  OAI211X1 U2336 ( .A0(n2530), .A1(n2531), .B0(n2203), .C0(n2532), .Y(N8667)
         );
  AOI2BB2X1 U2337 ( .B0(n2458), .B1(n2533), .A0N(n2140), .A1N(n2534), .Y(n2532) );
  AOI221XL U2338 ( .A0(n2164), .A1(n2507), .B0(n2162), .B1(n2535), .C0(n2536), 
        .Y(n2530) );
  AO22X1 U2339 ( .A0(n2461), .A1(n2139), .B0(n2483), .B1(n2138), .Y(n2536) );
  NOR2X1 U2340 ( .A(n2165), .B(n2538), .Y(n2461) );
  OAI211X1 U2341 ( .A0(n2539), .A1(n2540), .B0(n2199), .C0(n2541), .Y(N8666)
         );
  MXI2X1 U2342 ( .A(n2517), .B(n2515), .S0(n1703), .Y(n2489) );
  OAI211X1 U2343 ( .A0(n2548), .A1(n2549), .B0(n2210), .C0(n2550), .Y(N8665)
         );
  OA22X1 U2344 ( .A0(n2142), .A1(n2551), .B0(n2552), .B1(n2140), .Y(n2550) );
  AO22X1 U2345 ( .A0(n2495), .A1(n2138), .B0(n2473), .B1(n2139), .Y(n2554) );
  CLKINVX1 U2346 ( .A(n2459), .Y(n2538) );
  OAI221XL U2347 ( .A0(n2556), .A1(n2557), .B0(n2558), .B1(n2142), .C0(n2559), 
        .Y(N8664) );
  AOI221XL U2348 ( .A0(n2139), .A1(n2477), .B0(n2138), .B1(n2501), .C0(n2560), 
        .Y(n2556) );
  OAI211X1 U2349 ( .A0(n2564), .A1(n2565), .B0(n2566), .C0(n2567), .Y(n2459)
         );
  NAND4BX1 U2350 ( .AN(n2568), .B(\str_reg[33][5] ), .C(n2569), .D(n2570), .Y(
        n2566) );
  NOR4X1 U2351 ( .A(n2571), .B(n2232), .C(\str_reg[33][1] ), .D(
        \str_reg[33][0] ), .Y(n2570) );
  NAND3X1 U2352 ( .A(n2445), .B(n2444), .C(n2447), .Y(n2571) );
  AND3X1 U2353 ( .A(n3497), .B(n2572), .C(n3498), .Y(n2569) );
  OAI31XL U2354 ( .A0(n2244), .A1(str_num[4]), .A2(str_num[3]), .B0(n2171), 
        .Y(n2568) );
  OAI211X1 U2355 ( .A0(n2573), .A1(n2574), .B0(n2575), .C0(n2576), .Y(N8663)
         );
  AOI2BB1X1 U2356 ( .A0N(n2142), .A1N(n2577), .B0(n2578), .Y(n2576) );
  NAND3X1 U2357 ( .A(n2579), .B(str_num[0]), .C(n2456), .Y(n2575) );
  CLKINVX1 U2358 ( .A(n2462), .Y(n2456) );
  AOI221XL U2359 ( .A0(n2164), .A1(n2535), .B0(n2162), .B1(n2580), .C0(n2581), 
        .Y(n2573) );
  AO22X1 U2360 ( .A0(n2483), .A1(n2139), .B0(n2507), .B1(n2138), .Y(n2581) );
  NOR4X1 U2361 ( .A(n2591), .B(n2592), .C(n2593), .D(n2173), .Y(n2590) );
  XOR2X1 U2362 ( .A(n3500), .B(n2225), .Y(n2593) );
  NAND3X1 U2363 ( .A(n2594), .B(n2595), .C(n2596), .Y(n2592) );
  XOR2X1 U2364 ( .A(n3501), .B(n2227), .Y(n2596) );
  XOR2X1 U2365 ( .A(n3499), .B(chardata[2]), .Y(n2594) );
  NAND4X1 U2366 ( .A(n2597), .B(n2598), .C(n2599), .D(n2600), .Y(n2591) );
  NOR2X1 U2367 ( .A(n2601), .B(n2602), .Y(n2600) );
  XOR2X1 U2368 ( .A(\str_reg[32][7] ), .B(chardata[7]), .Y(n2602) );
  XOR2X1 U2369 ( .A(\str_reg[32][6] ), .B(n2228), .Y(n2601) );
  XOR2X1 U2370 ( .A(n2438), .B(n2226), .Y(n2599) );
  XOR2X1 U2371 ( .A(n2436), .B(n2219), .Y(n2598) );
  XOR2X1 U2372 ( .A(n2439), .B(chardata[1]), .Y(n2597) );
  OAI31XL U2373 ( .A0(n2603), .A1(n2604), .A2(n2605), .B0(n2144), .Y(n2589) );
  NAND2X1 U2374 ( .A(n2436), .B(n2439), .Y(n2605) );
  NAND3X1 U2375 ( .A(n2016), .B(n2035), .C(n2438), .Y(n2604) );
  NAND4BX1 U2376 ( .AN(n3501), .B(n3499), .C(n3500), .D(n2171), .Y(n2603) );
  OAI221XL U2377 ( .A0(n2141), .A1(n2462), .B0(n2608), .B1(n2609), .C0(n2610), 
        .Y(N8662) );
  AOI221XL U2378 ( .A0(n2164), .A1(n2544), .B0(n2162), .B1(n2612), .C0(n2613), 
        .Y(n2608) );
  AOI2BB2X1 U2379 ( .B0(n2137), .B1(n2487), .A0N(n2470), .A1N(n2174), .Y(n2614) );
  CLKINVX1 U2380 ( .A(n2616), .Y(n2470) );
  OAI31XL U2381 ( .A0(n2617), .A1(n2618), .A2(n2619), .B0(n2567), .Y(n2616) );
  AOI22X1 U2382 ( .A0(n2620), .A1(n2595), .B0(n2621), .B1(n2622), .Y(n2619) );
  NOR4X1 U2383 ( .A(n2623), .B(n2624), .C(n2625), .D(n2173), .Y(n2622) );
  XNOR2X1 U2384 ( .A(n3502), .B(chardata[4]), .Y(n2625) );
  XOR2X1 U2385 ( .A(\str_reg[31][1] ), .B(chardata[1]), .Y(n2624) );
  NAND2X1 U2386 ( .A(n2626), .B(n2627), .Y(n2623) );
  XOR2X1 U2387 ( .A(n2428), .B(n2219), .Y(n2627) );
  XOR2X1 U2388 ( .A(n2431), .B(chardata[2]), .Y(n2626) );
  NOR4X1 U2389 ( .A(n2628), .B(n2629), .C(n2630), .D(n2631), .Y(n2621) );
  XOR2X1 U2390 ( .A(\str_reg[31][7] ), .B(chardata[7]), .Y(n2631) );
  XOR2X1 U2391 ( .A(\str_reg[31][6] ), .B(n2228), .Y(n2630) );
  XOR2X1 U2392 ( .A(\str_reg[31][5] ), .B(n2227), .Y(n2629) );
  XOR2X1 U2393 ( .A(\str_reg[31][3] ), .B(n2224), .Y(n2628) );
  OAI21XL U2394 ( .A0(n2296), .A1(n2632), .B0(n2232), .Y(n2595) );
  OAI31XL U2395 ( .A0(n2633), .A1(n2634), .A2(n2635), .B0(n2144), .Y(n2620) );
  NAND2X1 U2396 ( .A(n2036), .B(n2431), .Y(n2635) );
  NAND3X1 U2397 ( .A(n2003), .B(n2017), .C(n2039), .Y(n2634) );
  NAND4X1 U2398 ( .A(n3502), .B(\str_reg[31][5] ), .C(n2170), .D(n2428), .Y(
        n2633) );
  OAI221XL U2399 ( .A0(n2636), .A1(n2637), .B0(n2141), .B1(n2469), .C0(n2638), 
        .Y(N8661) );
  AOI21X1 U2400 ( .A0(n2458), .A1(n2639), .B0(n2578), .Y(n2638) );
  NAND2X1 U2401 ( .A(n2640), .B(n2641), .Y(n2469) );
  AOI221XL U2402 ( .A0(n2007), .A1(n2553), .B0(n2162), .B1(n2642), .C0(n2643), 
        .Y(n2636) );
  NOR4X1 U2403 ( .A(n2654), .B(n2655), .C(n2656), .D(n2657), .Y(n2651) );
  XOR2X1 U2404 ( .A(\str_reg[30][2] ), .B(chardata[2]), .Y(n2657) );
  XOR2X1 U2405 ( .A(\str_reg[30][0] ), .B(n2219), .Y(n2656) );
  NAND3X1 U2406 ( .A(n2134), .B(n2658), .C(n2659), .Y(n2655) );
  XOR2X1 U2407 ( .A(n2426), .B(chardata[1]), .Y(n2659) );
  XOR2X1 U2408 ( .A(n3503), .B(n2226), .Y(n2658) );
  NAND4X1 U2409 ( .A(n2660), .B(n2661), .C(n2662), .D(n2663), .Y(n2654) );
  XOR2X1 U2410 ( .A(n2424), .B(n2224), .Y(n2663) );
  XOR2X1 U2411 ( .A(n2423), .B(n2227), .Y(n2662) );
  XOR2X1 U2412 ( .A(n2422), .B(n2228), .Y(n2661) );
  XOR2X1 U2413 ( .A(n2421), .B(chardata[7]), .Y(n2660) );
  AOI2BB1X1 U2414 ( .A0N(n2664), .A1N(n2665), .B0(n2618), .Y(n2650) );
  NOR4X1 U2415 ( .A(n2666), .B(n2667), .C(\str_reg[30][2] ), .D(
        \str_reg[30][1] ), .Y(n2664) );
  NAND3X1 U2416 ( .A(n2422), .B(n2421), .C(n2424), .Y(n2667) );
  NAND4X1 U2417 ( .A(n3503), .B(\str_reg[30][5] ), .C(n2170), .D(n2031), .Y(
        n2666) );
  OAI221XL U2418 ( .A0(n2141), .A1(n2474), .B0(n2668), .B1(n2669), .C0(n2670), 
        .Y(N8660) );
  AOI2BB1X1 U2419 ( .A0N(n2142), .A1N(n2671), .B0(n2578), .Y(n2670) );
  AOI221XL U2420 ( .A0(n2007), .A1(n2561), .B0(n2162), .B1(n2672), .C0(n2673), 
        .Y(n2668) );
  NAND4X1 U2421 ( .A(n2676), .B(n2677), .C(n2678), .D(n2143), .Y(n2481) );
  OAI211X1 U2422 ( .A0(n2679), .A1(n2665), .B0(n2652), .C0(n2653), .Y(n2678)
         );
  CLKINVX1 U2423 ( .A(n2680), .Y(n2653) );
  NAND2X1 U2424 ( .A(n2618), .B(n2681), .Y(n2652) );
  NOR2X1 U2425 ( .A(n2434), .B(n2427), .Y(n2618) );
  NOR4X1 U2426 ( .A(n2682), .B(n2683), .C(n2135), .D(n2415), .Y(n2679) );
  NAND3X1 U2427 ( .A(n2416), .B(n2414), .C(n2417), .Y(n2683) );
  NAND4X1 U2428 ( .A(n3487), .B(n3504), .C(n3505), .D(n3506), .Y(n2682) );
  NAND2X1 U2429 ( .A(n2684), .B(n2685), .Y(n2677) );
  NAND4X1 U2430 ( .A(n2686), .B(n2687), .C(n2688), .D(n2689), .Y(n2676) );
  NOR4X1 U2431 ( .A(n2690), .B(n2172), .C(n2691), .D(n2692), .Y(n2689) );
  XNOR2X1 U2432 ( .A(n3505), .B(chardata[6]), .Y(n2692) );
  XNOR2X1 U2433 ( .A(n3487), .B(chardata[4]), .Y(n2691) );
  NAND3BX1 U2434 ( .AN(n2693), .B(n2694), .C(n2695), .Y(n2690) );
  XOR2X1 U2435 ( .A(n3506), .B(n2219), .Y(n2695) );
  XOR2X1 U2436 ( .A(n3504), .B(chardata[1]), .Y(n2694) );
  NOR3X1 U2437 ( .A(n2696), .B(n2617), .C(n2697), .Y(n2688) );
  XOR2X1 U2438 ( .A(\str_reg[29][2] ), .B(n2223), .Y(n2697) );
  XOR2X1 U2439 ( .A(\str_reg[29][3] ), .B(n2224), .Y(n2696) );
  XOR2X1 U2440 ( .A(n2414), .B(n2229), .Y(n2687) );
  XOR2X1 U2441 ( .A(n2415), .B(n2227), .Y(n2686) );
  OAI221XL U2442 ( .A0(n2698), .A1(n2699), .B0(n2141), .B1(n2482), .C0(n2700), 
        .Y(N8659) );
  AOI2BB1X1 U2443 ( .A0N(n2142), .A1N(n2701), .B0(n2578), .Y(n2700) );
  AOI221XL U2444 ( .A0(n2007), .A1(n2580), .B0(n2162), .B1(n2702), .C0(n2703), 
        .Y(n2698) );
  AOI2BB2X1 U2445 ( .B0(n2563), .B1(n2487), .A0N(n2705), .A1N(n2166), .Y(n2704) );
  OAI211X1 U2446 ( .A0(n2567), .A1(n2706), .B0(n2707), .C0(n2143), .Y(n2487)
         );
  OAI211X1 U2447 ( .A0(n2708), .A1(n2709), .B0(n2710), .C0(n2711), .Y(n2707)
         );
  NOR4X1 U2448 ( .A(n2712), .B(n2713), .C(n2714), .D(n2715), .Y(n2709) );
  XOR2X1 U2449 ( .A(\str_reg[28][2] ), .B(chardata[2]), .Y(n2715) );
  XOR2X1 U2450 ( .A(\str_reg[28][0] ), .B(n2219), .Y(n2714) );
  NAND3X1 U2451 ( .A(n2134), .B(n2716), .C(n2717), .Y(n2713) );
  XOR2X1 U2452 ( .A(n2412), .B(chardata[1]), .Y(n2717) );
  XOR2X1 U2453 ( .A(n3507), .B(n2226), .Y(n2716) );
  NAND4X1 U2454 ( .A(n2718), .B(n2719), .C(n2720), .D(n2721), .Y(n2712) );
  XOR2X1 U2455 ( .A(n2410), .B(n2224), .Y(n2721) );
  XOR2X1 U2456 ( .A(n2409), .B(n2227), .Y(n2720) );
  XOR2X1 U2457 ( .A(n2408), .B(n2228), .Y(n2719) );
  XOR2X1 U2458 ( .A(n2407), .B(chardata[7]), .Y(n2718) );
  AOI2BB1X1 U2459 ( .A0N(n2722), .A1N(n2665), .B0(n2693), .Y(n2708) );
  NOR4X1 U2460 ( .A(n2723), .B(n2724), .C(\str_reg[28][2] ), .D(
        \str_reg[28][1] ), .Y(n2722) );
  NAND3X1 U2461 ( .A(n2408), .B(n2407), .C(n2410), .Y(n2724) );
  NAND4X1 U2462 ( .A(n3507), .B(\str_reg[28][5] ), .C(n2170), .D(n2032), .Y(
        n2723) );
  OAI221XL U2463 ( .A0(n2725), .A1(n2726), .B0(n2141), .B1(n2484), .C0(n2727), 
        .Y(N8658) );
  AOI221XL U2464 ( .A0(n2007), .A1(n2612), .B0(n2163), .B1(n2730), .C0(n2731), 
        .Y(n2725) );
  NAND2X1 U2465 ( .A(n2735), .B(n2736), .Y(n2680) );
  AOI21X1 U2466 ( .A0(n2737), .A1(n2710), .B0(n2738), .Y(n2733) );
  NOR4X1 U2467 ( .A(n2739), .B(n2740), .C(n2741), .D(n2173), .Y(n2738) );
  XNOR2X1 U2468 ( .A(n3509), .B(chardata[6]), .Y(n2741) );
  NAND3X1 U2469 ( .A(n2742), .B(n2743), .C(n2744), .Y(n2740) );
  XOR2X1 U2470 ( .A(n3485), .B(n2226), .Y(n2744) );
  XOR2X1 U2471 ( .A(n3508), .B(chardata[1]), .Y(n2743) );
  XOR2X1 U2472 ( .A(n3510), .B(n2219), .Y(n2742) );
  NAND4X1 U2473 ( .A(n2745), .B(n2746), .C(n2747), .D(n2748), .Y(n2739) );
  XOR2X1 U2474 ( .A(n2405), .B(chardata[2]), .Y(n2748) );
  XOR2X1 U2475 ( .A(n2404), .B(n2224), .Y(n2747) );
  XOR2X1 U2476 ( .A(n2403), .B(n2227), .Y(n2746) );
  XOR2X1 U2477 ( .A(n2402), .B(chardata[7]), .Y(n2745) );
  NAND2X1 U2478 ( .A(n2693), .B(n2749), .Y(n2710) );
  OAI31XL U2479 ( .A0(n2750), .A1(n2751), .A2(n2752), .B0(n2144), .Y(n2737) );
  NAND2X1 U2480 ( .A(\str_reg[27][5] ), .B(n2171), .Y(n2752) );
  NAND3X1 U2481 ( .A(n2404), .B(n2402), .C(n2405), .Y(n2751) );
  NAND4X1 U2482 ( .A(n3485), .B(n3508), .C(n3509), .D(n3510), .Y(n2750) );
  OAI221XL U2483 ( .A0(n2753), .A1(n2754), .B0(n2141), .B1(n2494), .C0(n2755), 
        .Y(N8657) );
  OAI21XL U2484 ( .A0(n2729), .A1(n2641), .B0(n2499), .Y(n2494) );
  AOI221XL U2485 ( .A0(n2164), .A1(n2642), .B0(n2163), .B1(n2757), .C0(n2758), 
        .Y(n2753) );
  CLKINVX1 U2486 ( .A(n2761), .Y(n2500) );
  OAI221XL U2487 ( .A0(n2762), .A1(n2763), .B0(n2764), .B1(n2567), .C0(n2143), 
        .Y(n2761) );
  AOI22X1 U2488 ( .A0(n2765), .A1(n2736), .B0(n2766), .B1(n2767), .Y(n2762) );
  NOR4X1 U2489 ( .A(n2768), .B(n2172), .C(n2769), .D(n2770), .Y(n2767) );
  XNOR2X1 U2490 ( .A(n3511), .B(chardata[5]), .Y(n2770) );
  NAND2X1 U2491 ( .A(n2771), .B(n2772), .Y(n2768) );
  XOR2X1 U2492 ( .A(n2395), .B(n2219), .Y(n2772) );
  XOR2X1 U2493 ( .A(n2399), .B(chardata[1]), .Y(n2771) );
  NOR4X1 U2494 ( .A(n2773), .B(n2774), .C(n2775), .D(n2776), .Y(n2766) );
  XOR2X1 U2495 ( .A(\str_reg[26][3] ), .B(n2224), .Y(n2776) );
  XOR2X1 U2496 ( .A(\str_reg[26][2] ), .B(chardata[2]), .Y(n2775) );
  XOR2X1 U2497 ( .A(\str_reg[26][4] ), .B(n2226), .Y(n2774) );
  NAND2X1 U2498 ( .A(n2777), .B(n2778), .Y(n2773) );
  XOR2X1 U2499 ( .A(n2398), .B(n2228), .Y(n2778) );
  XOR2X1 U2500 ( .A(n2397), .B(chardata[7]), .Y(n2777) );
  NAND2X1 U2501 ( .A(n2693), .B(n2419), .Y(n2736) );
  NOR2X1 U2502 ( .A(n2434), .B(str_num[2]), .Y(n2693) );
  OAI31XL U2503 ( .A0(n2779), .A1(n2780), .A2(n2781), .B0(n2144), .Y(n2765) );
  NAND2X1 U2504 ( .A(n2020), .B(n2046), .Y(n2781) );
  NAND3X1 U2505 ( .A(n2398), .B(n2397), .C(n2040), .Y(n2780) );
  NAND4BX1 U2506 ( .AN(n3511), .B(n2171), .C(n2395), .D(n2399), .Y(n2779) );
  OAI221XL U2507 ( .A0(n2782), .A1(n2783), .B0(N8608), .B1(n2141), .C0(n2784), 
        .Y(N8656) );
  AOI221XL U2508 ( .A0(n2164), .A1(n2672), .B0(n2163), .B1(n2786), .C0(n2787), 
        .Y(n2782) );
  NAND4X1 U2509 ( .A(n2734), .B(n2789), .C(n2790), .D(n2791), .Y(n2505) );
  OAI211X1 U2510 ( .A0(n2665), .A1(n2792), .B0(n2793), .C0(n2735), .Y(n2791)
         );
  CLKINVX1 U2511 ( .A(n2769), .Y(n2793) );
  NAND2X1 U2512 ( .A(n2413), .B(n2400), .Y(n2244) );
  CLKINVX1 U2513 ( .A(n2794), .Y(n2413) );
  NOR4X1 U2514 ( .A(n2795), .B(n2796), .C(n2135), .D(n2392), .Y(n2792) );
  NAND3X1 U2515 ( .A(n2393), .B(n2391), .C(n2394), .Y(n2796) );
  NAND4X1 U2516 ( .A(n3512), .B(n3513), .C(n3514), .D(n3515), .Y(n2795) );
  NAND4X1 U2517 ( .A(n2797), .B(n2798), .C(n2799), .D(n2800), .Y(n2790) );
  NOR4X1 U2518 ( .A(n2801), .B(n2802), .C(n2803), .D(n2173), .Y(n2800) );
  XNOR2X1 U2519 ( .A(n3513), .B(chardata[6]), .Y(n2803) );
  NAND2X1 U2520 ( .A(n2804), .B(n2805), .Y(n2802) );
  XOR2X1 U2521 ( .A(n3515), .B(chardata[1]), .Y(n2805) );
  XOR2X1 U2522 ( .A(n3514), .B(n2226), .Y(n2804) );
  XNOR2X1 U2523 ( .A(n3512), .B(n2219), .Y(n2801) );
  NOR3X1 U2524 ( .A(n2806), .B(n2617), .C(n2807), .Y(n2799) );
  XOR2X1 U2525 ( .A(\str_reg[25][5] ), .B(n2227), .Y(n2807) );
  CLKINVX1 U2526 ( .A(n2735), .Y(n2617) );
  XOR2X1 U2527 ( .A(\str_reg[25][2] ), .B(n2223), .Y(n2806) );
  XOR2X1 U2528 ( .A(n2393), .B(chardata[3]), .Y(n2798) );
  XOR2X1 U2529 ( .A(n2391), .B(n2229), .Y(n2797) );
  NAND2X1 U2530 ( .A(n2684), .B(n2810), .Y(n2789) );
  OAI221XL U2531 ( .A0(n2811), .A1(n2812), .B0(n2141), .B1(n2506), .C0(n2813), 
        .Y(N8655) );
  AOI221XL U2532 ( .A0(n2007), .A1(n2702), .B0(n2163), .B1(n2815), .C0(n2816), 
        .Y(n2811) );
  AOI2BB2X1 U2533 ( .B0(n2563), .B1(n2512), .A0N(n2818), .A1N(n2166), .Y(n2817) );
  OAI211X1 U2534 ( .A0(n2819), .A1(n2763), .B0(n2820), .C0(n2821), .Y(n2512)
         );
  OA21XL U2535 ( .A0(n2567), .A1(n2586), .B0(n2734), .Y(n2821) );
  NAND4X1 U2536 ( .A(n2822), .B(n2823), .C(n2824), .D(n2825), .Y(n2820) );
  NOR4X1 U2537 ( .A(n2826), .B(n2172), .C(n2827), .D(n2828), .Y(n2825) );
  XNOR2X1 U2538 ( .A(n3517), .B(chardata[6]), .Y(n2828) );
  XNOR2X1 U2539 ( .A(n3495), .B(chardata[4]), .Y(n2827) );
  NAND3X1 U2540 ( .A(n2829), .B(n2830), .C(n2831), .Y(n2826) );
  XOR2X1 U2541 ( .A(n3516), .B(chardata[1]), .Y(n2831) );
  XOR2X1 U2542 ( .A(n3518), .B(chardata[0]), .Y(n2829) );
  NOR3X1 U2543 ( .A(n2832), .B(n2585), .C(n2833), .Y(n2824) );
  XOR2X1 U2544 ( .A(\str_reg[24][2] ), .B(chardata[2]), .Y(n2833) );
  XOR2X1 U2545 ( .A(\str_reg[24][5] ), .B(chardata[5]), .Y(n2832) );
  XOR2X1 U2546 ( .A(n2386), .B(chardata[3]), .Y(n2823) );
  XOR2X1 U2547 ( .A(n2385), .B(chardata[7]), .Y(n2822) );
  CLKINVX1 U2548 ( .A(n2711), .Y(n2763) );
  NOR2X1 U2549 ( .A(n2585), .B(n2809), .Y(n2711) );
  AOI31X1 U2550 ( .A0(n2834), .A1(n2835), .A2(n2836), .B0(n2665), .Y(n2819) );
  AND4X1 U2551 ( .A(n3518), .B(n3516), .C(n3495), .D(n3517), .Y(n2836) );
  NOR3X1 U2552 ( .A(\str_reg[24][2] ), .B(\str_reg[24][7] ), .C(
        \str_reg[24][3] ), .Y(n2835) );
  NOR2X1 U2553 ( .A(n2135), .B(n2056), .Y(n2834) );
  OAI221XL U2554 ( .A0(n2837), .A1(n2838), .B0(n2141), .B1(n2513), .C0(n2839), 
        .Y(N8654) );
  AOI221XL U2555 ( .A0(n2007), .A1(n2730), .B0(n2163), .B1(n2841), .C0(n2842), 
        .Y(n2837) );
  AO22X1 U2556 ( .A0(n2544), .A1(n2139), .B0(n2612), .B1(n2138), .Y(n2842) );
  OAI21XL U2557 ( .A0(n2844), .A1(n2808), .B0(n2734), .Y(n2521) );
  AOI22X1 U2558 ( .A0(n2847), .A1(n2830), .B0(n2848), .B1(n2849), .Y(n2844) );
  NOR4X1 U2559 ( .A(n2850), .B(n2851), .C(n2852), .D(n2853), .Y(n2849) );
  XNOR2X1 U2560 ( .A(n3520), .B(chardata[0]), .Y(n2853) );
  XOR2X1 U2561 ( .A(n3490), .B(n2222), .Y(n2851) );
  NAND2X1 U2562 ( .A(n2854), .B(n2855), .Y(n2850) );
  XOR2X1 U2563 ( .A(n3489), .B(n2226), .Y(n2855) );
  XOR2X1 U2564 ( .A(n3519), .B(n2228), .Y(n2854) );
  NOR4X1 U2565 ( .A(n2856), .B(n2857), .C(n2172), .D(n2858), .Y(n2848) );
  XOR2X1 U2566 ( .A(\str_reg[23][2] ), .B(chardata[2]), .Y(n2858) );
  XOR2X1 U2567 ( .A(\str_reg[23][5] ), .B(chardata[5]), .Y(n2857) );
  NAND2X1 U2568 ( .A(n2859), .B(n2860), .Y(n2856) );
  XOR2X1 U2569 ( .A(n2383), .B(chardata[3]), .Y(n2860) );
  XOR2X1 U2570 ( .A(n2381), .B(chardata[7]), .Y(n2859) );
  OAI21XL U2571 ( .A0(n2296), .A1(n2231), .B0(n2809), .Y(n2830) );
  OAI31XL U2572 ( .A0(n2861), .A1(n2862), .A2(n2863), .B0(n2144), .Y(n2847) );
  NAND2X1 U2573 ( .A(\str_reg[23][5] ), .B(n2171), .Y(n2863) );
  NAND3X1 U2574 ( .A(n2383), .B(n2381), .C(n2041), .Y(n2862) );
  NAND4X1 U2575 ( .A(n3489), .B(n3490), .C(n3519), .D(n3520), .Y(n2861) );
  OAI221XL U2576 ( .A0(n2864), .A1(n2865), .B0(n2141), .B1(n2522), .C0(n2866), 
        .Y(N8653) );
  OAI21XL U2577 ( .A0(n2641), .A1(n2499), .B0(n2527), .Y(n2522) );
  NAND2X1 U2578 ( .A(n2145), .B(N8605), .Y(n2641) );
  AOI221XL U2579 ( .A0(n2139), .A1(n2553), .B0(n2138), .B1(n2642), .C0(n2868), 
        .Y(n2864) );
  AO22X1 U2580 ( .A0(n2869), .A1(n2163), .B0(n2757), .B1(n2164), .Y(n2868) );
  CLKINVX1 U2581 ( .A(n2872), .Y(n2528) );
  OAI211X1 U2582 ( .A0(n2567), .A1(n2873), .B0(n2874), .C0(n2143), .Y(n2872)
         );
  OAI211X1 U2583 ( .A0(n2875), .A1(n2876), .B0(n2877), .C0(n2878), .Y(n2874)
         );
  NOR4X1 U2584 ( .A(n2879), .B(n2880), .C(n2881), .D(n2882), .Y(n2876) );
  XOR2X1 U2585 ( .A(\str_reg[22][2] ), .B(chardata[2]), .Y(n2882) );
  XOR2X1 U2586 ( .A(\str_reg[22][0] ), .B(chardata[0]), .Y(n2881) );
  NAND3X1 U2587 ( .A(n2134), .B(n2883), .C(n2884), .Y(n2880) );
  XOR2X1 U2588 ( .A(n2380), .B(chardata[1]), .Y(n2884) );
  XOR2X1 U2589 ( .A(n3521), .B(n2226), .Y(n2883) );
  NAND4X1 U2590 ( .A(n2885), .B(n2886), .C(n2887), .D(n2888), .Y(n2879) );
  XOR2X1 U2591 ( .A(n2378), .B(chardata[3]), .Y(n2888) );
  XOR2X1 U2592 ( .A(n2377), .B(chardata[5]), .Y(n2887) );
  XOR2X1 U2593 ( .A(n2376), .B(n2228), .Y(n2886) );
  XOR2X1 U2594 ( .A(n2375), .B(chardata[7]), .Y(n2885) );
  AOI2BB1X1 U2595 ( .A0N(n2889), .A1N(n2665), .B0(n2852), .Y(n2875) );
  NOR4X1 U2596 ( .A(n2890), .B(n2891), .C(\str_reg[22][2] ), .D(
        \str_reg[22][1] ), .Y(n2889) );
  NAND3X1 U2597 ( .A(n2376), .B(n2375), .C(n2378), .Y(n2891) );
  NAND4X1 U2598 ( .A(n3521), .B(\str_reg[22][5] ), .C(n2170), .D(n2033), .Y(
        n2890) );
  OAI221XL U2599 ( .A0(n2892), .A1(n2893), .B0(n2894), .B1(n2141), .C0(n2895), 
        .Y(N8652) );
  AOI221XL U2600 ( .A0(n2139), .A1(n2561), .B0(n2138), .B1(n2672), .C0(n2897), 
        .Y(n2892) );
  AO22X1 U2601 ( .A0(n2898), .A1(n2163), .B0(n2786), .B1(n2164), .Y(n2897) );
  OAI221XL U2602 ( .A0(n2901), .A1(n2808), .B0(n2567), .B1(n2902), .C0(n2143), 
        .Y(n2533) );
  AOI22X1 U2603 ( .A0(n2903), .A1(n2877), .B0(n2904), .B1(n2905), .Y(n2901) );
  NOR4X1 U2604 ( .A(n2906), .B(n2907), .C(n2908), .D(n2173), .Y(n2905) );
  XNOR2X1 U2605 ( .A(n3522), .B(chardata[4]), .Y(n2908) );
  XOR2X1 U2606 ( .A(\str_reg[21][1] ), .B(n2220), .Y(n2907) );
  NAND2X1 U2607 ( .A(n2909), .B(n2910), .Y(n2906) );
  XOR2X1 U2608 ( .A(n2370), .B(chardata[0]), .Y(n2910) );
  XOR2X1 U2609 ( .A(n2373), .B(n2223), .Y(n2909) );
  NOR4X1 U2610 ( .A(n2911), .B(n2912), .C(n2913), .D(n2914), .Y(n2904) );
  XOR2X1 U2611 ( .A(\str_reg[21][7] ), .B(chardata[7]), .Y(n2914) );
  XOR2X1 U2612 ( .A(\str_reg[21][6] ), .B(n2228), .Y(n2913) );
  XOR2X1 U2613 ( .A(\str_reg[21][5] ), .B(chardata[5]), .Y(n2912) );
  XOR2X1 U2614 ( .A(\str_reg[21][3] ), .B(chardata[3]), .Y(n2911) );
  OAI21XL U2615 ( .A0(n2681), .A1(n2231), .B0(n2852), .Y(n2877) );
  OA21XL U2616 ( .A0(n2915), .A1(n2231), .B0(n2809), .Y(n2852) );
  OAI31XL U2617 ( .A0(n2916), .A1(n2917), .A2(n2918), .B0(n2144), .Y(n2903) );
  NAND2X1 U2618 ( .A(n2037), .B(n2373), .Y(n2918) );
  NAND3X1 U2619 ( .A(n2004), .B(n2018), .C(n2042), .Y(n2917) );
  NAND4X1 U2620 ( .A(n3522), .B(\str_reg[21][5] ), .C(n2170), .D(n2370), .Y(
        n2916) );
  OAI221XL U2621 ( .A0(n2919), .A1(n2920), .B0(n2141), .B1(n2534), .C0(n2921), 
        .Y(N8651) );
  AOI2BB1X1 U2622 ( .A0N(n2922), .A1N(n2142), .B0(n2578), .Y(n2921) );
  AO21X1 U2623 ( .A0(N8605), .A1(n2894), .B0(n2543), .Y(n2534) );
  CLKINVX1 U2624 ( .A(n2527), .Y(n2894) );
  AOI221XL U2625 ( .A0(n2139), .A1(n2580), .B0(n2138), .B1(n2702), .C0(n2923), 
        .Y(n2919) );
  AO22X1 U2626 ( .A0(n2924), .A1(n2163), .B0(n2815), .B1(n2164), .Y(n2923) );
  AOI2BB2X1 U2627 ( .B0(n2137), .B1(n2926), .A0N(n2870), .A1N(n2174), .Y(n2925) );
  NAND4X1 U2628 ( .A(n2927), .B(n2928), .C(n2929), .D(n2143), .Y(n2542) );
  OAI21XL U2629 ( .A0(n2930), .A1(n2665), .B0(n2931), .Y(n2929) );
  CLKINVX1 U2630 ( .A(n2808), .Y(n2931) );
  NOR4X1 U2631 ( .A(n2934), .B(n2935), .C(\str_reg[20][2] ), .D(
        \str_reg[20][1] ), .Y(n2930) );
  NAND3X1 U2632 ( .A(n2366), .B(n2365), .C(n2368), .Y(n2935) );
  NAND4X1 U2633 ( .A(n3523), .B(\str_reg[20][5] ), .C(n2170), .D(n2363), .Y(
        n2934) );
  OR2X1 U2634 ( .A(n2936), .B(n2567), .Y(n2928) );
  NAND4X1 U2635 ( .A(n2937), .B(n2938), .C(n2939), .D(n2940), .Y(n2927) );
  NOR4X1 U2636 ( .A(n2941), .B(n2942), .C(n2943), .D(n2173), .Y(n2940) );
  XNOR2X1 U2637 ( .A(n3523), .B(chardata[4]), .Y(n2943) );
  NAND2X1 U2638 ( .A(n2944), .B(n2945), .Y(n2941) );
  XOR2X1 U2639 ( .A(n2363), .B(chardata[0]), .Y(n2945) );
  XOR2X1 U2640 ( .A(n2048), .B(chardata[1]), .Y(n2944) );
  NOR3X1 U2641 ( .A(n2946), .B(n2947), .C(n2948), .Y(n2939) );
  XOR2X1 U2642 ( .A(\str_reg[20][5] ), .B(chardata[5]), .Y(n2948) );
  XOR2X1 U2643 ( .A(\str_reg[20][2] ), .B(chardata[2]), .Y(n2947) );
  XOR2X1 U2644 ( .A(\str_reg[20][3] ), .B(chardata[3]), .Y(n2946) );
  XOR2X1 U2645 ( .A(n2366), .B(chardata[6]), .Y(n2938) );
  XOR2X1 U2646 ( .A(n2365), .B(chardata[7]), .Y(n2937) );
  OAI221XL U2647 ( .A0(n2949), .A1(n2950), .B0(n2543), .B1(n2141), .C0(n2951), 
        .Y(N8650) );
  AOI221XL U2648 ( .A0(n2139), .A1(n2612), .B0(n2138), .B1(n2730), .C0(n2953), 
        .Y(n2949) );
  AO22X1 U2649 ( .A0(n2954), .A1(n2163), .B0(n2841), .B1(n2164), .Y(n2953) );
  AND4X1 U2650 ( .A(n2959), .B(n2960), .C(n2961), .D(n2143), .Y(n2551) );
  OAI21XL U2651 ( .A0(n2962), .A1(n2665), .B0(n2932), .Y(n2961) );
  CLKINVX1 U2652 ( .A(n2942), .Y(n2932) );
  NAND2X1 U2653 ( .A(n2963), .B(n2964), .Y(n2942) );
  AO21X1 U2654 ( .A0(n2406), .A1(str_num[4]), .B0(n2933), .Y(n2964) );
  OAI21XL U2655 ( .A0(n2400), .A1(n2231), .B0(n2809), .Y(n2933) );
  NOR2X1 U2656 ( .A(n2434), .B(n2432), .Y(n2809) );
  CLKINVX1 U2657 ( .A(n2632), .Y(n2432) );
  NAND2X1 U2658 ( .A(str_num[4]), .B(str_num[3]), .Y(n2632) );
  CLKINVX1 U2659 ( .A(n2749), .Y(n2406) );
  NOR4X1 U2660 ( .A(n2965), .B(n2966), .C(n2135), .D(n2360), .Y(n2962) );
  NAND3X1 U2661 ( .A(n2361), .B(n2359), .C(n2362), .Y(n2966) );
  NAND4X1 U2662 ( .A(n3524), .B(n3525), .C(n3526), .D(n3527), .Y(n2965) );
  NAND2X1 U2663 ( .A(n2846), .B(n2967), .Y(n2960) );
  CLKINVX1 U2664 ( .A(n2968), .Y(n2846) );
  NAND4X1 U2665 ( .A(n2969), .B(n2970), .C(n2971), .D(n2972), .Y(n2959) );
  NOR4X1 U2666 ( .A(n2973), .B(n2974), .C(n2975), .D(n2976), .Y(n2972) );
  XOR2X1 U2667 ( .A(n3527), .B(n2222), .Y(n2976) );
  XNOR2X1 U2668 ( .A(n3526), .B(chardata[4]), .Y(n2975) );
  XNOR2X1 U2669 ( .A(n3524), .B(n2219), .Y(n2974) );
  NAND3X1 U2670 ( .A(n2134), .B(n2977), .C(n2963), .Y(n2973) );
  XOR2X1 U2671 ( .A(n3525), .B(n2228), .Y(n2977) );
  NOR3X1 U2672 ( .A(n2978), .B(n2979), .C(n2980), .Y(n2971) );
  XOR2X1 U2673 ( .A(\str_reg[19][3] ), .B(chardata[3]), .Y(n2980) );
  XOR2X1 U2674 ( .A(\str_reg[19][2] ), .B(chardata[2]), .Y(n2978) );
  XOR2X1 U2675 ( .A(n2359), .B(chardata[7]), .Y(n2970) );
  XOR2X1 U2676 ( .A(n2360), .B(chardata[5]), .Y(n2969) );
  OAI211X1 U2677 ( .A0(n2552), .A1(n2141), .B0(n2559), .C0(n2982), .Y(N8649)
         );
  OAI222XL U2678 ( .A0(n2955), .A1(n2869), .B0(n2981), .B1(n2642), .C0(n2957), 
        .C1(n2757), .Y(n2986) );
  CLKINVX1 U2679 ( .A(n2900), .Y(n2558) );
  AOI21X1 U2680 ( .A0(n2992), .A1(n2993), .B0(n2994), .Y(n2990) );
  NOR4X1 U2681 ( .A(n2995), .B(n2996), .C(n2997), .D(n2173), .Y(n2994) );
  XNOR2X1 U2682 ( .A(n3529), .B(chardata[6]), .Y(n2997) );
  NAND3X1 U2683 ( .A(n2998), .B(n2999), .C(n3000), .Y(n2996) );
  XOR2X1 U2684 ( .A(n3530), .B(chardata[7]), .Y(n3000) );
  XOR2X1 U2685 ( .A(n3531), .B(chardata[0]), .Y(n2999) );
  XOR2X1 U2686 ( .A(n3528), .B(n2220), .Y(n2998) );
  NAND4BX1 U2687 ( .AN(n3001), .B(n3002), .C(n3003), .D(n3004), .Y(n2995) );
  NOR2X1 U2688 ( .A(n3005), .B(n3006), .Y(n3004) );
  XOR2X1 U2689 ( .A(\str_reg[18][5] ), .B(chardata[5]), .Y(n3006) );
  XOR2X1 U2690 ( .A(\str_reg[18][2] ), .B(n2223), .Y(n3005) );
  XOR2X1 U2691 ( .A(n2357), .B(n2226), .Y(n3003) );
  XOR2X1 U2692 ( .A(n2358), .B(chardata[3]), .Y(n3002) );
  OAI31XL U2693 ( .A0(n3007), .A1(n3008), .A2(n3009), .B0(n2144), .Y(n2993) );
  NAND2X1 U2694 ( .A(\str_reg[18][5] ), .B(n2171), .Y(n3009) );
  NAND3X1 U2695 ( .A(n2358), .B(n2357), .C(n2043), .Y(n3008) );
  NAND4X1 U2696 ( .A(n3528), .B(n3529), .C(n3530), .D(n3531), .Y(n3007) );
  CLKINVX1 U2697 ( .A(n2979), .Y(n2992) );
  OAI21XL U2698 ( .A0(n2145), .A1(n3010), .B0(n3011), .Y(n2979) );
  OAI221XL U2699 ( .A0(n2867), .A1(n2165), .B0(n2785), .B1(n2174), .C0(n3012), 
        .Y(n2869) );
  OAI221XL U2700 ( .A0(n2165), .A1(n2984), .B0(n2174), .B1(n3013), .C0(n3014), 
        .Y(n2985) );
  CLKINVX1 U2701 ( .A(n2578), .Y(n2559) );
  NOR2X1 U2702 ( .A(n2141), .B(N8609), .Y(n2457) );
  NOR2BX1 U2703 ( .AN(n2543), .B(str_num[0]), .Y(n2552) );
  NOR2X1 U2704 ( .A(n2527), .B(n2059), .Y(n2543) );
  NAND2X1 U2705 ( .A(N8608), .B(N8607), .Y(n2527) );
  NAND2X1 U2706 ( .A(n3015), .B(n3016), .Y(N8648) );
  MXI2X1 U2707 ( .A(n3017), .B(n3018), .S0(n2458), .Y(n3015) );
  OAI222XL U2708 ( .A0(n2955), .A1(n2898), .B0(n2981), .B1(n2672), .C0(n2957), 
        .C1(n2786), .Y(n3020) );
  OA22X1 U2709 ( .A0(n2785), .A1(n2166), .B0(n2174), .B1(n2701), .Y(n3022) );
  AOI2BB2X1 U2710 ( .B0(n2136), .B1(n2639), .A0N(n2611), .A1N(n2555), .Y(n3023) );
  OAI211X1 U2711 ( .A0(n2565), .A1(n2968), .B0(n3024), .C0(n2143), .Y(n2926)
         );
  OAI211X1 U2712 ( .A0(n3025), .A1(n3026), .B0(n3011), .C0(n2963), .Y(n3024)
         );
  CLKINVX1 U2713 ( .A(n3027), .Y(n2963) );
  NOR4X1 U2714 ( .A(n3028), .B(n3029), .C(n3030), .D(n3031), .Y(n3026) );
  XNOR2X1 U2715 ( .A(n3536), .B(n2229), .Y(n3031) );
  XNOR2X1 U2716 ( .A(n3535), .B(chardata[6]), .Y(n3030) );
  NAND3X1 U2717 ( .A(n3032), .B(n3033), .C(n3034), .Y(n3029) );
  XOR2X1 U2718 ( .A(n3532), .B(n2226), .Y(n3034) );
  XOR2X1 U2719 ( .A(n3534), .B(n2220), .Y(n3033) );
  XOR2X1 U2720 ( .A(n3533), .B(chardata[0]), .Y(n3032) );
  NAND4X1 U2721 ( .A(n3035), .B(n3036), .C(n3037), .D(n2134), .Y(n3028) );
  XOR2X1 U2722 ( .A(n2354), .B(chardata[2]), .Y(n3037) );
  XOR2X1 U2723 ( .A(n2353), .B(chardata[3]), .Y(n3036) );
  XOR2X1 U2724 ( .A(n2352), .B(chardata[5]), .Y(n3035) );
  AOI2BB1X1 U2725 ( .A0N(n3038), .A1N(n2665), .B0(n3001), .Y(n3025) );
  OAI21XL U2726 ( .A0(n2794), .A1(n3010), .B0(n3011), .Y(n3001) );
  NAND2X1 U2727 ( .A(n2419), .B(N8605), .Y(n2794) );
  NOR4BX1 U2728 ( .AN(n3536), .B(n3039), .C(n3040), .D(n2352), .Y(n3038) );
  NAND3X1 U2729 ( .A(n2354), .B(n2353), .C(n2171), .Y(n3040) );
  NAND4X1 U2730 ( .A(n3532), .B(n3533), .C(n3534), .D(n3535), .Y(n3039) );
  OAI221XL U2731 ( .A0(n2840), .A1(n2555), .B0(n2867), .B1(n2167), .C0(n3041), 
        .Y(n2898) );
  OAI211X1 U2732 ( .A0(N8605), .A1(n3044), .B0(n3016), .C0(n3045), .Y(N8647)
         );
  MXI2X1 U2733 ( .A(n3046), .B(n3047), .S0(n2458), .Y(n3045) );
  OAI222XL U2734 ( .A0(n2955), .A1(n2924), .B0(n2981), .B1(n2702), .C0(n2957), 
        .C1(n2815), .Y(n3049) );
  AOI2BB2X1 U2735 ( .B0(n2137), .B1(n2814), .A0N(n2728), .A1N(n2174), .Y(n3051) );
  CLKINVX1 U2736 ( .A(n3053), .Y(n2611) );
  OAI211X1 U2737 ( .A0(n2586), .A1(n2968), .B0(n3054), .C0(n2143), .Y(n3053)
         );
  OAI211X1 U2738 ( .A0(n3055), .A1(n3056), .B0(n3057), .C0(n2878), .Y(n3054)
         );
  CLKINVX1 U2739 ( .A(n2585), .Y(n2878) );
  NOR4X1 U2740 ( .A(n3058), .B(n3059), .C(n3060), .D(n3061), .Y(n3056) );
  XOR2X1 U2741 ( .A(\str_reg[16][2] ), .B(chardata[2]), .Y(n3061) );
  XOR2X1 U2742 ( .A(\str_reg[16][0] ), .B(chardata[0]), .Y(n3060) );
  NAND3X1 U2743 ( .A(n2134), .B(n3062), .C(n3063), .Y(n3059) );
  XOR2X1 U2744 ( .A(n2348), .B(n2220), .Y(n3063) );
  XOR2X1 U2745 ( .A(n3537), .B(n2226), .Y(n3062) );
  NAND4X1 U2746 ( .A(n3064), .B(n3065), .C(n3066), .D(n3067), .Y(n3058) );
  XOR2X1 U2747 ( .A(n2346), .B(chardata[3]), .Y(n3067) );
  XOR2X1 U2748 ( .A(n2345), .B(chardata[5]), .Y(n3066) );
  XOR2X1 U2749 ( .A(n2344), .B(n2228), .Y(n3065) );
  XOR2X1 U2750 ( .A(n2343), .B(chardata[7]), .Y(n3064) );
  AOI2BB1X1 U2751 ( .A0N(n3068), .A1N(n2665), .B0(n3069), .Y(n3055) );
  NOR4X1 U2752 ( .A(n3070), .B(n3071), .C(\str_reg[16][2] ), .D(
        \str_reg[16][1] ), .Y(n3068) );
  NAND3X1 U2753 ( .A(n2344), .B(n2343), .C(n2346), .Y(n3071) );
  NAND4X1 U2754 ( .A(n3537), .B(\str_reg[16][5] ), .C(n2170), .D(n2034), .Y(
        n3070) );
  CLKINVX1 U2755 ( .A(n2567), .Y(n2684) );
  OAI221XL U2756 ( .A0(n2867), .A1(n2555), .B0(n2896), .B1(n2167), .C0(n3072), 
        .Y(n2924) );
  OA22X1 U2757 ( .A0(n2922), .A1(n2166), .B0(n2174), .B1(n2840), .Y(n3072) );
  OAI221XL U2758 ( .A0(n2165), .A1(n3047), .B0(n2174), .B1(n2952), .C0(n3073), 
        .Y(n3048) );
  NAND3X1 U2759 ( .A(n3016), .B(n3044), .C(n3074), .Y(N8646) );
  MXI2X1 U2760 ( .A(n3075), .B(n3076), .S0(n2458), .Y(n3074) );
  CLKINVX1 U2761 ( .A(n3078), .Y(match_ns) );
  OAI221XL U2762 ( .A0(n3079), .A1(n3080), .B0(n3081), .B1(n3082), .C0(n3083), 
        .Y(n3078) );
  NOR2X1 U2763 ( .A(reset), .B(n2450), .Y(n3083) );
  CLKINVX1 U2764 ( .A(n3084), .Y(n2450) );
  NAND2X1 U2765 ( .A(n3085), .B(n3086), .Y(n3082) );
  NAND3X1 U2766 ( .A(n2468), .B(n2453), .C(n3087), .Y(n3081) );
  NAND4BX1 U2767 ( .AN(star_c), .B(n2223), .C(n2222), .D(n2225), .Y(n3079) );
  OAI222XL U2768 ( .A0(n2955), .A1(n2954), .B0(n2981), .B1(n2730), .C0(n2957), 
        .C1(n2841), .Y(n3090) );
  AOI2BB2X1 U2769 ( .B0(n2136), .B1(n2814), .A0N(n2785), .A1N(n2555), .Y(n3092) );
  CLKINVX1 U2770 ( .A(n3093), .Y(n2785) );
  OAI221XL U2771 ( .A0(n3094), .A1(n3095), .B0(n2764), .B1(n2143), .C0(n3096), 
        .Y(n3093) );
  NAND4X1 U2772 ( .A(n3097), .B(n3098), .C(n3099), .D(n3100), .Y(n3096) );
  NOR4BX1 U2773 ( .AN(n3101), .B(n3102), .C(n3103), .D(n3104), .Y(n3100) );
  XNOR2X1 U2774 ( .A(n3548), .B(chardata[4]), .Y(n3104) );
  NAND3X1 U2775 ( .A(n3105), .B(n2134), .C(n3106), .Y(n3102) );
  XOR2X1 U2776 ( .A(n2312), .B(chardata[0]), .Y(n3106) );
  XOR2X1 U2777 ( .A(n2319), .B(n2220), .Y(n3105) );
  NOR3X1 U2778 ( .A(n3107), .B(n3108), .C(n3109), .Y(n3099) );
  XOR2X1 U2779 ( .A(\str_reg[10][3] ), .B(chardata[3]), .Y(n3109) );
  XOR2X1 U2780 ( .A(\str_reg[10][2] ), .B(chardata[2]), .Y(n3108) );
  XOR2X1 U2781 ( .A(\str_reg[10][7] ), .B(chardata[7]), .Y(n3107) );
  XOR2X1 U2782 ( .A(n2316), .B(chardata[5]), .Y(n3098) );
  XOR2X1 U2783 ( .A(n2315), .B(n2228), .Y(n3097) );
  AOI31X1 U2784 ( .A0(n3111), .A1(n3112), .A2(n3113), .B0(n2665), .Y(n3094) );
  AND4X1 U2785 ( .A(n2312), .B(n2170), .C(\str_reg[10][5] ), .D(n3548), .Y(
        n3113) );
  NOR3X1 U2786 ( .A(\str_reg[10][3] ), .B(\str_reg[10][7] ), .C(
        \str_reg[10][6] ), .Y(n3112) );
  NOR2X1 U2787 ( .A(\str_reg[10][2] ), .B(\str_reg[10][1] ), .Y(n3111) );
  AOI22X1 U2788 ( .A0(n3116), .A1(n3101), .B0(n3117), .B1(n3118), .Y(n3114) );
  NOR4BX1 U2789 ( .AN(n3119), .B(n3120), .C(n2172), .D(n3121), .Y(n3118) );
  XNOR2X1 U2790 ( .A(n3484), .B(n2229), .Y(n3121) );
  NAND2X1 U2791 ( .A(n3122), .B(n3123), .Y(n3120) );
  XOR2X1 U2792 ( .A(n2306), .B(chardata[0]), .Y(n3123) );
  XOR2X1 U2793 ( .A(n2311), .B(n2220), .Y(n3122) );
  NOR4X1 U2794 ( .A(n3124), .B(n3125), .C(n3126), .D(n3127), .Y(n3117) );
  XOR2X1 U2795 ( .A(\str_reg[9][5] ), .B(chardata[5]), .Y(n3127) );
  XOR2X1 U2796 ( .A(\str_reg[9][2] ), .B(chardata[2]), .Y(n3126) );
  XOR2X1 U2797 ( .A(\str_reg[9][3] ), .B(chardata[3]), .Y(n3125) );
  NAND2X1 U2798 ( .A(n3128), .B(n3129), .Y(n3124) );
  XOR2X1 U2799 ( .A(n2310), .B(n2226), .Y(n3129) );
  XOR2X1 U2800 ( .A(n2308), .B(n2228), .Y(n3128) );
  OAI21XL U2801 ( .A0(N8605), .A1(n2297), .B0(n3130), .Y(n3101) );
  OAI31XL U2802 ( .A0(n3131), .A1(n3132), .A2(n3133), .B0(n2144), .Y(n3116) );
  NAND2X1 U2803 ( .A(n2311), .B(n2055), .Y(n3133) );
  NAND3X1 U2804 ( .A(n2310), .B(n2308), .C(n2053), .Y(n3132) );
  NAND4X1 U2805 ( .A(n3484), .B(\str_reg[9][5] ), .C(n2170), .D(n2306), .Y(
        n3131) );
  CLKINVX1 U2806 ( .A(n3134), .Y(n2756) );
  OAI221XL U2807 ( .A0(n3135), .A1(n3095), .B0(N583), .B1(n2143), .C0(n3115), 
        .Y(n3134) );
  CLKINVX1 U2808 ( .A(n3136), .Y(n3095) );
  AOI22X1 U2809 ( .A0(n3137), .A1(n3138), .B0(n3139), .B1(n3140), .Y(n3135) );
  CLKINVX1 U2810 ( .A(n3141), .Y(n3140) );
  OAI31XL U2811 ( .A0(n3142), .A1(n3143), .A2(n3144), .B0(n2144), .Y(n3139) );
  NAND2X1 U2812 ( .A(n2326), .B(n2325), .Y(n3144) );
  NAND3X1 U2813 ( .A(n2322), .B(n2321), .C(n2324), .Y(n3143) );
  NAND4X1 U2814 ( .A(n3547), .B(\str_reg[11][5] ), .C(n2170), .D(n2320), .Y(
        n3142) );
  NOR4X1 U2815 ( .A(n3145), .B(n3146), .C(n3147), .D(n2173), .Y(n3138) );
  XNOR2X1 U2816 ( .A(n3547), .B(chardata[4]), .Y(n3147) );
  XOR2X1 U2817 ( .A(\str_reg[11][1] ), .B(n2220), .Y(n3146) );
  NAND2X1 U2818 ( .A(n3148), .B(n3149), .Y(n3145) );
  XOR2X1 U2819 ( .A(n2320), .B(chardata[0]), .Y(n3149) );
  XOR2X1 U2820 ( .A(n2325), .B(chardata[2]), .Y(n3148) );
  NOR4X1 U2821 ( .A(n3150), .B(n3151), .C(n3152), .D(n3153), .Y(n3137) );
  XOR2X1 U2822 ( .A(\str_reg[11][7] ), .B(chardata[7]), .Y(n3153) );
  XOR2X1 U2823 ( .A(\str_reg[11][6] ), .B(n2228), .Y(n3152) );
  XOR2X1 U2824 ( .A(\str_reg[11][5] ), .B(chardata[5]), .Y(n3151) );
  XOR2X1 U2825 ( .A(\str_reg[11][3] ), .B(n2224), .Y(n3150) );
  AND4X1 U2826 ( .A(n3154), .B(n3155), .C(n3156), .D(n3115), .Y(n2840) );
  OAI211X1 U2827 ( .A0(n3157), .A1(n2665), .B0(n3119), .C0(n3158), .Y(n3156)
         );
  NOR4X1 U2828 ( .A(n3159), .B(n3160), .C(\str_reg[8][0] ), .D(n2135), .Y(
        n3157) );
  NAND3X1 U2829 ( .A(n2302), .B(n2301), .C(n2303), .Y(n3160) );
  NAND4X1 U2830 ( .A(n3494), .B(n3549), .C(n3550), .D(\str_reg[8][5] ), .Y(
        n3159) );
  NAND4X1 U2831 ( .A(n3161), .B(n3162), .C(n3163), .D(n3164), .Y(n3154) );
  NOR4X1 U2832 ( .A(n3165), .B(n2172), .C(n3166), .D(n3103), .Y(n3164) );
  XNOR2X1 U2833 ( .A(n3549), .B(chardata[4]), .Y(n3166) );
  NAND3X1 U2834 ( .A(n3167), .B(n3168), .C(n3169), .Y(n3165) );
  XOR2X1 U2835 ( .A(n3550), .B(chardata[2]), .Y(n3169) );
  XOR2X1 U2836 ( .A(n3494), .B(n2224), .Y(n3167) );
  NOR3X1 U2837 ( .A(n3170), .B(n3171), .C(n3172), .Y(n3163) );
  XOR2X1 U2838 ( .A(\str_reg[8][6] ), .B(n2228), .Y(n3172) );
  XOR2X1 U2839 ( .A(\str_reg[8][0] ), .B(chardata[0]), .Y(n3171) );
  XOR2X1 U2840 ( .A(\str_reg[8][7] ), .B(chardata[7]), .Y(n3170) );
  XOR2X1 U2841 ( .A(n2303), .B(n2220), .Y(n3162) );
  XOR2X1 U2842 ( .A(n2051), .B(n2227), .Y(n3161) );
  NAND2X1 U2843 ( .A(n1703), .B(n2013), .Y(n2957) );
  CLKINVX1 U2844 ( .A(n3174), .Y(n2728) );
  OAI32X1 U2845 ( .A0(n3175), .A1(n3141), .A2(n3176), .B0(n2706), .B1(n2143), 
        .Y(n3174) );
  CLKINVX1 U2846 ( .A(N583), .Y(n2967) );
  AOI21X1 U2847 ( .A0(n3178), .A1(n3179), .B0(n3180), .Y(n3176) );
  NOR4X1 U2848 ( .A(n3181), .B(n3182), .C(n3183), .D(n2173), .Y(n3180) );
  XNOR2X1 U2849 ( .A(n3545), .B(chardata[6]), .Y(n3183) );
  NAND3X1 U2850 ( .A(n3184), .B(n3185), .C(n3186), .Y(n3182) );
  XOR2X1 U2851 ( .A(n3496), .B(n2226), .Y(n3186) );
  XOR2X1 U2852 ( .A(n3544), .B(n2220), .Y(n3185) );
  XOR2X1 U2853 ( .A(n3546), .B(chardata[0]), .Y(n3184) );
  NAND4X1 U2854 ( .A(n3187), .B(n3188), .C(n3189), .D(n3190), .Y(n3181) );
  XOR2X1 U2855 ( .A(n2331), .B(n2223), .Y(n3190) );
  XOR2X1 U2856 ( .A(n2330), .B(n2224), .Y(n3189) );
  XOR2X1 U2857 ( .A(n2329), .B(chardata[5]), .Y(n3188) );
  XOR2X1 U2858 ( .A(n2328), .B(n2229), .Y(n3187) );
  OAI31XL U2859 ( .A0(n3191), .A1(n3192), .A2(n3193), .B0(n2144), .Y(n3178) );
  NAND2X1 U2860 ( .A(\str_reg[12][5] ), .B(n2171), .Y(n3193) );
  NAND3X1 U2861 ( .A(n2330), .B(n2328), .C(n2331), .Y(n3192) );
  NAND4X1 U2862 ( .A(n3496), .B(n3544), .C(n3545), .D(n3546), .Y(n3191) );
  NAND2X1 U2863 ( .A(n2572), .B(n3057), .Y(n3027) );
  AOI31X1 U2864 ( .A0(n3197), .A1(n3198), .A2(n3199), .B0(n2665), .Y(n3196) );
  AND4X1 U2865 ( .A(n3541), .B(n3539), .C(n3538), .D(n3540), .Y(n3199) );
  NOR3X1 U2866 ( .A(n2135), .B(\str_reg[15][3] ), .C(\str_reg[15][2] ), .Y(
        n3198) );
  NOR2BX1 U2867 ( .AN(n3542), .B(n2342), .Y(n3197) );
  NAND4X1 U2868 ( .A(n3200), .B(n3201), .C(n3202), .D(n3203), .Y(n3195) );
  XOR2X1 U2869 ( .A(n2050), .B(n2223), .Y(n3203) );
  NOR2X1 U2870 ( .A(n3204), .B(n2173), .Y(n3202) );
  XOR2X1 U2871 ( .A(n2342), .B(n2227), .Y(n3201) );
  XOR2X1 U2872 ( .A(n2049), .B(n2224), .Y(n3200) );
  NAND4X1 U2873 ( .A(n3205), .B(n3206), .C(n3207), .D(n3208), .Y(n3194) );
  NOR3X1 U2874 ( .A(n3209), .B(n3210), .C(n3211), .Y(n3208) );
  XOR2X1 U2875 ( .A(n3542), .B(n2222), .Y(n3211) );
  XNOR2X1 U2876 ( .A(n3541), .B(chardata[0]), .Y(n3209) );
  XOR2X1 U2877 ( .A(n3540), .B(n2229), .Y(n3207) );
  XOR2X1 U2878 ( .A(n3539), .B(n2226), .Y(n3206) );
  XOR2X1 U2879 ( .A(n3538), .B(chardata[6]), .Y(n3205) );
  AND4X1 U2880 ( .A(n3214), .B(n3215), .C(n3216), .D(n3217), .Y(n3213) );
  NOR4X1 U2881 ( .A(n3218), .B(n3219), .C(n2172), .D(n3220), .Y(n3217) );
  XOR2X1 U2882 ( .A(\str_reg[13][1] ), .B(n2220), .Y(n3220) );
  XOR2X1 U2883 ( .A(\str_reg[13][0] ), .B(n2219), .Y(n3219) );
  NAND3X1 U2884 ( .A(n3221), .B(n3179), .C(n3136), .Y(n3218) );
  XOR2X1 U2885 ( .A(n3486), .B(n2226), .Y(n3221) );
  NOR3X1 U2886 ( .A(n3222), .B(n3223), .C(n3224), .Y(n3216) );
  XOR2X1 U2887 ( .A(\str_reg[13][3] ), .B(n2224), .Y(n3224) );
  XOR2X1 U2888 ( .A(\str_reg[13][2] ), .B(chardata[2]), .Y(n3223) );
  XOR2X1 U2889 ( .A(\str_reg[13][7] ), .B(chardata[7]), .Y(n3222) );
  XOR2X1 U2890 ( .A(n2335), .B(n2227), .Y(n3215) );
  XOR2X1 U2891 ( .A(n2334), .B(chardata[6]), .Y(n3214) );
  CLKINVX1 U2892 ( .A(n3204), .Y(n2572) );
  AOI21X1 U2893 ( .A0(n2145), .A1(str_num[3]), .B0(n3179), .Y(n3130) );
  CLKINVX1 U2894 ( .A(n3226), .Y(n3212) );
  AOI31X1 U2895 ( .A0(n3227), .A1(n3228), .A2(n3229), .B0(n2665), .Y(n3226) );
  AND4X1 U2896 ( .A(n2057), .B(n2171), .C(\str_reg[13][5] ), .D(n3486), .Y(
        n3229) );
  NOR3X1 U2897 ( .A(\str_reg[13][3] ), .B(\str_reg[13][7] ), .C(
        \str_reg[13][6] ), .Y(n3228) );
  NOR2X1 U2898 ( .A(\str_reg[13][2] ), .B(\str_reg[13][1] ), .Y(n3227) );
  OA22X1 U2899 ( .A0(n2647), .A1(n2143), .B0(n3230), .B1(n2585), .Y(n2671) );
  NAND2X1 U2900 ( .A(n3158), .B(n3225), .Y(n2585) );
  OAI21XL U2901 ( .A0(n2681), .A1(n2297), .B0(n3210), .Y(n3225) );
  CLKINVX1 U2902 ( .A(n3231), .Y(n3210) );
  AOI22X1 U2903 ( .A0(n3232), .A1(n3231), .B0(n3233), .B1(n3234), .Y(n3230) );
  NOR4X1 U2904 ( .A(n3235), .B(n3236), .C(n3237), .D(n2173), .Y(n3234) );
  XNOR2X1 U2905 ( .A(n3543), .B(chardata[4]), .Y(n3237) );
  XOR2X1 U2906 ( .A(\str_reg[14][1] ), .B(n2220), .Y(n3236) );
  NAND2X1 U2907 ( .A(n3238), .B(n3239), .Y(n3235) );
  XOR2X1 U2908 ( .A(n2339), .B(chardata[0]), .Y(n3239) );
  XOR2X1 U2909 ( .A(n2341), .B(n2223), .Y(n3238) );
  NOR4X1 U2910 ( .A(n3240), .B(n3241), .C(n3242), .D(n3243), .Y(n3233) );
  XOR2X1 U2911 ( .A(\str_reg[14][7] ), .B(n2229), .Y(n3243) );
  XOR2X1 U2912 ( .A(\str_reg[14][6] ), .B(n2228), .Y(n3242) );
  XOR2X1 U2913 ( .A(\str_reg[14][5] ), .B(chardata[5]), .Y(n3241) );
  XOR2X1 U2914 ( .A(\str_reg[14][3] ), .B(n2224), .Y(n3240) );
  OAI21XL U2915 ( .A0(n2915), .A1(n2297), .B0(n3069), .Y(n3231) );
  OAI31XL U2916 ( .A0(n3244), .A1(n3245), .A2(n3246), .B0(n2144), .Y(n3232) );
  NAND2X1 U2917 ( .A(n2038), .B(n2341), .Y(n3246) );
  NAND3X1 U2918 ( .A(n2005), .B(n2019), .C(n2044), .Y(n3245) );
  NAND4X1 U2919 ( .A(n3543), .B(\str_reg[14][5] ), .C(n2170), .D(n2339), .Y(
        n3244) );
  NOR2X1 U2920 ( .A(n3177), .B(n2685), .Y(n2647) );
  NAND2X1 U2921 ( .A(n2013), .B(n2027), .Y(n2981) );
  AOI2BB2X1 U2922 ( .B0(n2137), .B1(n2952), .A0N(n2867), .A1N(n2174), .Y(n3248) );
  CLKINVX1 U2923 ( .A(n3249), .Y(n2867) );
  OAI31XL U2924 ( .A0(n3250), .A1(n3251), .A2(n3252), .B0(n3115), .Y(n3249) );
  AOI21X1 U2925 ( .A0(n3253), .A1(n3168), .B0(n3254), .Y(n3252) );
  NOR4X1 U2926 ( .A(n3255), .B(n3256), .C(n2172), .D(n3257), .Y(n3254) );
  XOR2X1 U2927 ( .A(\str_reg[7][1] ), .B(n2220), .Y(n3257) );
  NAND3X1 U2928 ( .A(n3258), .B(n3259), .C(n3260), .Y(n3256) );
  XOR2X1 U2929 ( .A(n3552), .B(n2226), .Y(n3260) );
  XOR2X1 U2930 ( .A(n3488), .B(n2223), .Y(n3259) );
  XOR2X1 U2931 ( .A(n3551), .B(n2224), .Y(n3258) );
  NAND4X1 U2932 ( .A(n3261), .B(n3262), .C(n3263), .D(n3264), .Y(n3255) );
  XOR2X1 U2933 ( .A(n2290), .B(chardata[0]), .Y(n3264) );
  XOR2X1 U2934 ( .A(n2294), .B(chardata[5]), .Y(n3263) );
  XOR2X1 U2935 ( .A(n2293), .B(n2228), .Y(n3262) );
  XOR2X1 U2936 ( .A(n2292), .B(chardata[7]), .Y(n3261) );
  CLKINVX1 U2937 ( .A(n2915), .Y(n2427) );
  OAI31XL U2938 ( .A0(n3265), .A1(n3266), .A2(n3267), .B0(n2144), .Y(n3253) );
  NAND2X1 U2939 ( .A(n2171), .B(n2290), .Y(n3267) );
  NAND3X1 U2940 ( .A(n2293), .B(n2292), .C(n2045), .Y(n3266) );
  NAND4X1 U2941 ( .A(n3488), .B(n3551), .C(n3552), .D(\str_reg[7][5] ), .Y(
        n3265) );
  CLKINVX1 U2942 ( .A(n3268), .Y(n3251) );
  NAND4X1 U2943 ( .A(n3271), .B(n3272), .C(n3273), .D(n3274), .Y(n3270) );
  NOR4X1 U2944 ( .A(n2172), .B(n3275), .C(n3276), .D(n3277), .Y(n3274) );
  XOR2X1 U2945 ( .A(\str_reg[4][1] ), .B(n2220), .Y(n3277) );
  XOR2X1 U2946 ( .A(\str_reg[4][0] ), .B(n2219), .Y(n3276) );
  NAND2X1 U2947 ( .A(n3158), .B(n3278), .Y(n3275) );
  XOR2X1 U2948 ( .A(n3557), .B(n2226), .Y(n3278) );
  CLKINVX1 U2949 ( .A(n3175), .Y(n3158) );
  NOR3X1 U2950 ( .A(n3279), .B(n3280), .C(n3281), .Y(n3273) );
  XOR2X1 U2951 ( .A(\str_reg[4][5] ), .B(n2227), .Y(n3281) );
  XOR2X1 U2952 ( .A(\str_reg[4][2] ), .B(n2223), .Y(n3280) );
  XOR2X1 U2953 ( .A(\str_reg[4][3] ), .B(n2224), .Y(n3279) );
  XOR2X1 U2954 ( .A(n2271), .B(chardata[6]), .Y(n3272) );
  XOR2X1 U2955 ( .A(n2270), .B(n2229), .Y(n3271) );
  AO21X1 U2956 ( .A0(N583), .A1(N581), .B0(n2902), .Y(n2936) );
  AOI31X1 U2957 ( .A0(n3282), .A1(n3283), .A2(n3284), .B0(n2665), .Y(n3269) );
  AND4X1 U2958 ( .A(n2058), .B(n2171), .C(\str_reg[4][5] ), .D(n3557), .Y(
        n3284) );
  NOR3X1 U2959 ( .A(\str_reg[4][3] ), .B(\str_reg[4][7] ), .C(\str_reg[4][6] ), 
        .Y(n3283) );
  NOR2X1 U2960 ( .A(\str_reg[4][2] ), .B(\str_reg[4][1] ), .Y(n3282) );
  OAI221XL U2961 ( .A0(n3285), .A1(n3250), .B0(n2902), .B1(n2143), .C0(n3286), 
        .Y(n3043) );
  NAND4X1 U2962 ( .A(n3287), .B(n3288), .C(n3289), .D(n3290), .Y(n3286) );
  NOR3X1 U2963 ( .A(n3291), .B(n3292), .C(n3103), .Y(n3290) );
  XNOR2X1 U2964 ( .A(n3555), .B(n2229), .Y(n3292) );
  NAND3X1 U2965 ( .A(n3294), .B(n3295), .C(n3296), .Y(n3291) );
  XOR2X1 U2966 ( .A(n3554), .B(chardata[6]), .Y(n3296) );
  XOR2X1 U2967 ( .A(n3556), .B(chardata[0]), .Y(n3295) );
  XOR2X1 U2968 ( .A(n3553), .B(n2220), .Y(n3294) );
  NOR3X1 U2969 ( .A(n3297), .B(n2173), .C(n3298), .Y(n3289) );
  XOR2X1 U2970 ( .A(\str_reg[5][2] ), .B(n2223), .Y(n3298) );
  XOR2X1 U2971 ( .A(\str_reg[5][5] ), .B(chardata[5]), .Y(n3297) );
  XOR2X1 U2972 ( .A(n2280), .B(n2224), .Y(n3288) );
  XOR2X1 U2973 ( .A(n2279), .B(n2226), .Y(n3287) );
  NAND2X1 U2974 ( .A(n2587), .B(n3247), .Y(n2902) );
  AOI31X1 U2975 ( .A0(n3299), .A1(n3300), .A2(n3301), .B0(n2665), .Y(n3285) );
  AND4X1 U2976 ( .A(n3556), .B(n3553), .C(n3554), .D(n3555), .Y(n3301) );
  NOR3X1 U2977 ( .A(\str_reg[5][2] ), .B(\str_reg[5][4] ), .C(\str_reg[5][3] ), 
        .Y(n3300) );
  NOR2X1 U2978 ( .A(n2135), .B(n2047), .Y(n3299) );
  OAI22XL U2979 ( .A0(n2873), .A1(n2143), .B0(n3302), .B1(n3250), .Y(n3013) );
  CLKINVX1 U2980 ( .A(n2681), .Y(n2418) );
  NAND2X1 U2981 ( .A(str_num[2]), .B(str_num[0]), .Y(n2681) );
  AOI22X1 U2982 ( .A0(n3304), .A1(n3268), .B0(n3305), .B1(n3306), .Y(n3302) );
  NOR4X1 U2983 ( .A(n3307), .B(n3308), .C(n2172), .D(n3309), .Y(n3306) );
  XOR2X1 U2984 ( .A(\str_reg[6][1] ), .B(n2220), .Y(n3309) );
  XOR2X1 U2985 ( .A(\str_reg[6][0] ), .B(chardata[0]), .Y(n3308) );
  NAND2X1 U2986 ( .A(n3310), .B(n3311), .Y(n3307) );
  XOR2X1 U2987 ( .A(n2287), .B(n2223), .Y(n3311) );
  XOR2X1 U2988 ( .A(n2286), .B(n2224), .Y(n3310) );
  NOR4X1 U2989 ( .A(n3312), .B(n3313), .C(n3314), .D(n3315), .Y(n3305) );
  XOR2X1 U2990 ( .A(\str_reg[6][7] ), .B(n2229), .Y(n3315) );
  XOR2X1 U2991 ( .A(\str_reg[6][6] ), .B(n2228), .Y(n3314) );
  XOR2X1 U2992 ( .A(\str_reg[6][5] ), .B(chardata[5]), .Y(n3313) );
  XOR2X1 U2993 ( .A(\str_reg[6][4] ), .B(chardata[4]), .Y(n3312) );
  CLKINVX1 U2994 ( .A(n3011), .Y(n3069) );
  NAND2X1 U2995 ( .A(n2232), .B(n2231), .Y(n3011) );
  NAND2X1 U2996 ( .A(str_num[2]), .B(n2145), .Y(n2915) );
  OAI31XL U2997 ( .A0(n3316), .A1(n3317), .A2(n3318), .B0(n2144), .Y(n3304) );
  NAND2X1 U2998 ( .A(n2287), .B(n2286), .Y(n3318) );
  NAND3X1 U2999 ( .A(n2030), .B(n2002), .C(n2015), .Y(n3317) );
  NAND4X1 U3000 ( .A(\str_reg[6][5] ), .B(n2171), .C(n2014), .D(n2029), .Y(
        n3316) );
  OAI21XL U3001 ( .A0(n3247), .A1(n3177), .B0(n2587), .Y(n2873) );
  NAND2X1 U3002 ( .A(N583), .B(n2236), .Y(n3247) );
  NAND2X1 U3003 ( .A(n1702), .B(n2027), .Y(n2955) );
  OAI221XL U3004 ( .A0(n2169), .A1(n3018), .B0(n2167), .B1(n3047), .C0(n3319), 
        .Y(n3089) );
  OAI32X1 U3005 ( .A0(n3320), .A1(n3321), .A2(n3322), .B0(n2586), .B1(n3115), 
        .Y(n3076) );
  CLKINVX1 U3006 ( .A(N581), .Y(n3177) );
  NAND2X1 U3007 ( .A(n3491), .B(n3492), .Y(n3322) );
  NAND3X1 U3008 ( .A(n3560), .B(n3561), .C(n3493), .Y(n3321) );
  NAND4X1 U3009 ( .A(n2451), .B(\str_reg[0][5] ), .C(n3323), .D(n2171), .Y(
        n3320) );
  NOR2X1 U3010 ( .A(\str_reg[0][3] ), .B(\str_reg[0][2] ), .Y(n3323) );
  NAND4X1 U3011 ( .A(n3326), .B(n3327), .C(n3328), .D(n3329), .Y(n3325) );
  NOR4BX1 U3012 ( .AN(n3330), .B(n3331), .C(n2172), .D(n3332), .Y(n3329) );
  XNOR2X1 U3013 ( .A(n3558), .B(n2227), .Y(n3332) );
  NAND2X1 U3014 ( .A(n3333), .B(n3334), .Y(n3331) );
  XOR2X1 U3015 ( .A(n2259), .B(n2219), .Y(n3334) );
  XOR2X1 U3016 ( .A(n2266), .B(n2220), .Y(n3333) );
  NOR3X1 U3017 ( .A(n3335), .B(n3336), .C(n3337), .Y(n3328) );
  XOR2X1 U3018 ( .A(\str_reg[3][3] ), .B(chardata[3]), .Y(n3337) );
  XOR2X1 U3019 ( .A(\str_reg[3][2] ), .B(n2223), .Y(n3336) );
  XOR2X1 U3020 ( .A(\str_reg[3][4] ), .B(chardata[4]), .Y(n3335) );
  XOR2X1 U3021 ( .A(n2262), .B(chardata[6]), .Y(n3327) );
  XOR2X1 U3022 ( .A(n2261), .B(n2229), .Y(n3326) );
  OAI2BB1X1 U3023 ( .A0N(n2749), .A1N(n3303), .B0(n3330), .Y(n3175) );
  AND2X1 U3024 ( .A(n3338), .B(n2451), .Y(n3330) );
  NAND2X1 U3025 ( .A(n2145), .B(str_num[0]), .Y(n2749) );
  AOI31X1 U3026 ( .A0(n3339), .A1(n3340), .A2(n3341), .B0(n2665), .Y(n3324) );
  NOR4X1 U3027 ( .A(\str_reg[3][1] ), .B(\str_reg[3][0] ), .C(n3558), .D(n2135), .Y(n3341) );
  NOR3X1 U3028 ( .A(\str_reg[3][4] ), .B(\str_reg[3][7] ), .C(\str_reg[3][6] ), 
        .Y(n3340) );
  NOR2X1 U3029 ( .A(\str_reg[3][3] ), .B(\str_reg[3][2] ), .Y(n3339) );
  OAI211X1 U3030 ( .A0(n2565), .A1(n3115), .B0(n3342), .C0(n3343), .Y(n3047)
         );
  NAND4X1 U3031 ( .A(n3344), .B(n3345), .C(n3346), .D(n3347), .Y(n3343) );
  NOR4X1 U3032 ( .A(n2172), .B(n3348), .C(n3349), .D(n3350), .Y(n3347) );
  XOR2X1 U3033 ( .A(\str_reg[1][1] ), .B(n2220), .Y(n3350) );
  XOR2X1 U3034 ( .A(\str_reg[1][0] ), .B(n2219), .Y(n3349) );
  NAND2X1 U3035 ( .A(n2451), .B(n3351), .Y(n3348) );
  XOR2X1 U3036 ( .A(n3483), .B(chardata[4]), .Y(n3351) );
  NOR3X1 U3037 ( .A(n3352), .B(n3353), .C(n3354), .Y(n3346) );
  XOR2X1 U3038 ( .A(\str_reg[1][5] ), .B(n2227), .Y(n3354) );
  XOR2X1 U3039 ( .A(\str_reg[1][2] ), .B(n2223), .Y(n3353) );
  XOR2X1 U3040 ( .A(\str_reg[1][3] ), .B(chardata[3]), .Y(n3352) );
  XOR2X1 U3041 ( .A(n2247), .B(chardata[6]), .Y(n3345) );
  XOR2X1 U3042 ( .A(n2246), .B(n2229), .Y(n3344) );
  OAI211X1 U3043 ( .A0(n3355), .A1(n2665), .B0(n3356), .C0(n2451), .Y(n3342)
         );
  CLKINVX1 U3044 ( .A(n3358), .Y(n3356) );
  NOR4X1 U3045 ( .A(n3359), .B(n3360), .C(\str_reg[1][2] ), .D(\str_reg[1][1] ), .Y(n3355) );
  NAND3X1 U3046 ( .A(n2247), .B(n2246), .C(n2061), .Y(n3360) );
  NAND4X1 U3047 ( .A(n3483), .B(\str_reg[1][5] ), .C(n2170), .D(n2060), .Y(
        n3359) );
  NOR2X1 U3048 ( .A(n2236), .B(N583), .Y(n2810) );
  OAI32X1 U3049 ( .A0(n3357), .A1(n3358), .A2(n3362), .B0(n2991), .B1(n2143), 
        .Y(n3018) );
  NOR2X1 U3050 ( .A(n2452), .B(n3357), .Y(n2588) );
  NAND2X1 U3051 ( .A(n3110), .B(n2587), .Y(n2991) );
  AOI21X1 U3052 ( .A0(n2236), .A1(N581), .B0(N583), .Y(n3110) );
  AOI22X1 U3053 ( .A0(n3363), .A1(n3338), .B0(n3364), .B1(n3365), .Y(n3362) );
  NOR4X1 U3054 ( .A(n3366), .B(n3367), .C(n3368), .D(n2172), .Y(n3365) );
  XNOR2X1 U3055 ( .A(n3559), .B(chardata[4]), .Y(n3368) );
  XOR2X1 U3056 ( .A(\str_reg[2][1] ), .B(n2220), .Y(n3367) );
  NAND2X1 U3057 ( .A(n3369), .B(n3370), .Y(n3366) );
  XOR2X1 U3058 ( .A(n2253), .B(n2219), .Y(n3370) );
  XOR2X1 U3059 ( .A(n2256), .B(n2223), .Y(n3369) );
  NOR4X1 U3060 ( .A(n3371), .B(n3372), .C(n3373), .D(n3374), .Y(n3364) );
  XOR2X1 U3061 ( .A(\str_reg[2][7] ), .B(n2229), .Y(n3374) );
  XOR2X1 U3062 ( .A(\str_reg[2][6] ), .B(chardata[6]), .Y(n3373) );
  XOR2X1 U3063 ( .A(\str_reg[2][5] ), .B(n2227), .Y(n3372) );
  XOR2X1 U3064 ( .A(\str_reg[2][3] ), .B(chardata[3]), .Y(n3371) );
  OAI31XL U3065 ( .A0(n3375), .A1(n3376), .A2(n3377), .B0(n2144), .Y(n3363) );
  NAND2X1 U3066 ( .A(n2052), .B(n2256), .Y(n3377) );
  NAND3X1 U3067 ( .A(n2006), .B(n2021), .C(n2054), .Y(n3376) );
  NAND4X1 U3068 ( .A(n3559), .B(\str_reg[2][5] ), .C(n2170), .D(n2253), .Y(
        n3375) );
  NAND4X1 U3069 ( .A(n3088), .B(n2223), .C(n2222), .D(n2225), .Y(n3378) );
  NAND2X1 U3070 ( .A(n3380), .B(n3381), .Y(n3084) );
  NOR4BX1 U3071 ( .AN(n2228), .B(n2229), .C(chardata[5]), .D(chardata[0]), .Y(
        n3381) );
  AND4X1 U3072 ( .A(n2226), .B(n2224), .C(chardata[2]), .D(chardata[1]), .Y(
        n3380) );
  NOR2X1 U3073 ( .A(n3338), .B(str_num[0]), .Y(n3358) );
  NAND2X1 U3074 ( .A(n3303), .B(n2419), .Y(n3338) );
  CLKINVX1 U3075 ( .A(n2145), .Y(n2419) );
  NOR2X1 U3076 ( .A(n3010), .B(str_num[4]), .Y(n3303) );
  CLKINVX1 U3077 ( .A(n2675), .Y(n2555) );
  NOR2X1 U3078 ( .A(n2027), .B(n2013), .Y(n2956) );
  NAND2X1 U3079 ( .A(n2640), .B(n2059), .Y(n2462) );
  CLKINVX1 U3080 ( .A(n2474), .Y(n2640) );
  NAND2X1 U3081 ( .A(n2729), .B(n2499), .Y(n2474) );
  CLKINVX1 U3082 ( .A(N8607), .Y(n2729) );
  NOR2X1 U3083 ( .A(reset), .B(n2579), .Y(n3016) );
  NOR3X1 U3084 ( .A(N8610), .B(ispattern), .C(n2028), .Y(n2579) );
  NOR2X1 U3085 ( .A(n1718), .B(n3382), .Y(N445) );
  XOR2X1 U3086 ( .A(n1702), .B(n3383), .Y(n3382) );
  NOR2X1 U3087 ( .A(n1703), .B(n2174), .Y(n3383) );
  NOR2X1 U3088 ( .A(n1718), .B(n3384), .Y(N444) );
  XOR2X1 U3089 ( .A(n2027), .B(n2174), .Y(n3384) );
  CLKINVX1 U3090 ( .A(n2563), .Y(n2615) );
  NOR2X1 U3091 ( .A(n1718), .B(n3361), .Y(N442) );
  CLKINVX1 U3092 ( .A(n1611), .Y(n3361) );
  NAND2X1 U3093 ( .A(ispattern), .B(n2452), .Y(n1718) );
  CLKINVX1 U3094 ( .A(n3077), .Y(n2452) );
  NOR4X1 U3095 ( .A(n3379), .B(n2221), .C(n2225), .D(n2223), .Y(n3077) );
  NAND3BX1 U3096 ( .AN(n2219), .B(n2227), .C(n3385), .Y(n3379) );
  NOR3X1 U3097 ( .A(chardata[4]), .B(n2229), .C(chardata[6]), .Y(n3385) );
  OAI22XL U3098 ( .A0(n3386), .A1(n1697), .B0(star_c), .B1(n2233), .Y(N115) );
  OAI31XL U3099 ( .A0(n3387), .A1(n3388), .A2(n3389), .B0(n2200), .Y(n2233) );
  AO21X1 U3100 ( .A0(n3390), .A1(n2216), .B0(n3391), .Y(n3389) );
  CLKINVX1 U3101 ( .A(n3392), .Y(n3390) );
  NAND3X1 U3102 ( .A(n3393), .B(n3394), .C(n3395), .Y(n3388) );
  NAND4X1 U3103 ( .A(n3396), .B(n3397), .C(n3398), .D(n3399), .Y(n3387) );
  NOR2BX1 U3104 ( .AN(n3400), .B(n3401), .Y(n3398) );
  OAI22XL U3105 ( .A0(n3386), .A1(n1698), .B0(star_c), .B1(n2234), .Y(N114) );
  OAI31XL U3106 ( .A0(n3402), .A1(n3391), .A2(n3403), .B0(n2213), .Y(n2234) );
  OAI2BB1X1 U3107 ( .A0N(n2216), .A1N(n3404), .B0(n3405), .Y(n3403) );
  NAND4X1 U3108 ( .A(n3406), .B(n3407), .C(n3408), .D(n3409), .Y(n3391) );
  AOI221XL U3109 ( .A0(n2217), .A1(n3410), .B0(match_reg[25]), .B1(n3411), 
        .C0(n3412), .Y(n3409) );
  OAI211X1 U3110 ( .A0(n3394), .A1(n2217), .B0(n3413), .C0(n3414), .Y(n3402)
         );
  NOR2BX1 U3111 ( .AN(n3415), .B(n3416), .Y(n3414) );
  OAI21XL U3112 ( .A0(match_reg[10]), .A1(match_reg[9]), .B0(n3417), .Y(n3413)
         );
  OAI22XL U3113 ( .A0(n3386), .A1(n1699), .B0(star_c), .B1(n2235), .Y(N113) );
  OAI221XL U3114 ( .A0(n3395), .A1(n2217), .B0(n3415), .B1(n2217), .C0(n3421), 
        .Y(n3420) );
  NAND3X1 U3115 ( .A(n3396), .B(n3400), .C(n3393), .Y(n3419) );
  AOI221XL U3116 ( .A0(n3424), .A1(n3425), .B0(n2216), .B1(n3426), .C0(n3427), 
        .Y(n3423) );
  CLKINVX1 U3117 ( .A(n3407), .Y(n3426) );
  MXI2X1 U3118 ( .A(n3404), .B(n3428), .S0(n2216), .Y(n3422) );
  AND3X1 U3119 ( .A(n3430), .B(n3431), .C(n3432), .Y(n3405) );
  NAND3X1 U3120 ( .A(n3434), .B(n3435), .C(n3436), .Y(n3412) );
  OAI22XL U3121 ( .A0(n3386), .A1(n1700), .B0(star_c), .B1(n2236), .Y(N112) );
  AO21X1 U3122 ( .A0(n3437), .A1(n3438), .B0(reset), .Y(n2236) );
  NOR4X1 U3123 ( .A(n3439), .B(n3440), .C(n3441), .D(n3442), .Y(n3438) );
  OAI2BB2XL U3124 ( .B0(n3393), .B1(n2217), .A0N(n3443), .A1N(n2216), .Y(n3442) );
  NAND2X1 U3125 ( .A(n3421), .B(n3435), .Y(n3441) );
  NAND2X1 U3126 ( .A(n3406), .B(n3396), .Y(n3440) );
  NAND3X1 U3127 ( .A(n3431), .B(n3444), .C(n3397), .Y(n3439) );
  NOR4X1 U3128 ( .A(n3445), .B(n3446), .C(n3447), .D(n3448), .Y(n3437) );
  OAI22XL U3129 ( .A0(n3408), .A1(n2217), .B0(n3436), .B1(n2217), .Y(n3448) );
  OAI32X1 U3130 ( .A0(n2217), .A1(n3449), .A2(n2783), .B0(n3399), .B1(n2217), 
        .Y(n3446) );
  OAI211X1 U3131 ( .A0(n3430), .A1(n2217), .B0(n3450), .C0(n3451), .Y(n3445)
         );
  NOR2X1 U3132 ( .A(n3452), .B(n3453), .Y(n3451) );
  OAI22XL U3133 ( .A0(star_c), .A1(n2237), .B0(n3386), .B1(n1701), .Y(N111) );
  NAND2X1 U3134 ( .A(star_c), .B(n2212), .Y(n3386) );
  OAI31XL U3135 ( .A0(n3454), .A1(n3455), .A2(n3456), .B0(n2175), .Y(n2237) );
  NAND3BX1 U3136 ( .AN(n3453), .B(n3457), .C(n3458), .Y(n3456) );
  AOI211X1 U3137 ( .A0(n2001), .A1(n3459), .B0(n3452), .C0(n3460), .Y(n3458)
         );
  AOI2BB1X1 U3138 ( .A0N(n2216), .A1N(n3407), .B0(n3427), .Y(n3450) );
  OAI2BB2XL U3139 ( .B0(n2216), .B1(n3394), .A0N(n3410), .A1N(n2218), .Y(n3427) );
  OAI22XL U3140 ( .A0(n2001), .A1(n3415), .B0(n2001), .B1(n3392), .Y(n3452) );
  CLKINVX1 U3141 ( .A(n3396), .Y(n3459) );
  NAND2X1 U3142 ( .A(match_reg[23]), .B(n3461), .Y(n3396) );
  MXI2X1 U3143 ( .A(n3443), .B(n3465), .S0(n2001), .Y(n3457) );
  OAI21XL U3144 ( .A0(match_reg[0]), .A1(n3466), .B0(n3421), .Y(n3465) );
  OAI21XL U3145 ( .A0(match_reg[4]), .A1(n2920), .B0(n2987), .Y(n3467) );
  OAI22XL U3146 ( .A0(n2216), .A1(n3395), .B0(n2001), .B1(n3469), .Y(n3453) );
  NOR4X1 U3147 ( .A(n2838), .B(n3468), .C(n3425), .D(match_reg[7]), .Y(n3404)
         );
  OR2X1 U3148 ( .A(n3471), .B(n3472), .Y(n3455) );
  OAI222XL U3149 ( .A0(n2217), .A1(n3434), .B0(n3393), .B1(n2216), .C0(n3436), 
        .C1(n2216), .Y(n3472) );
  NAND2X1 U3150 ( .A(match_reg[22]), .B(n3473), .Y(n3393) );
  OAI222XL U3151 ( .A0(n2217), .A1(n3406), .B0(n2217), .B1(n3435), .C0(n3408), 
        .C1(n2216), .Y(n3471) );
  NAND4BBXL U3152 ( .AN(n3475), .BN(n3476), .C(n3477), .D(n3478), .Y(n3454) );
  AOI222XL U3153 ( .A0(n2216), .A1(n3416), .B0(n2216), .B1(n3479), .C0(n2216), 
        .C1(n3401), .Y(n3478) );
  CLKINVX1 U3154 ( .A(n3431), .Y(n3479) );
  CLKINVX1 U3155 ( .A(n3444), .Y(n3416) );
  OAI222XL U3156 ( .A0(n3430), .A1(n2216), .B0(n3399), .B1(n2216), .C0(n2217), 
        .C1(n3400), .Y(n3476) );
  OAI21XL U3157 ( .A0(n2217), .A1(n3397), .B0(n3481), .Y(n3475) );
  NAND2X1 U3158 ( .A(n3417), .B(n2812), .Y(n3449) );
  NAND2X1 U3159 ( .A(n2893), .B(n2920), .Y(n3425) );
  CLKINVX1 U3160 ( .A(n3424), .Y(n3468) );
endmodule

