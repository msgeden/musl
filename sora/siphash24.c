
//siphash-2-4 
#ifndef SIPHASH_H
#define SIPHASH_H

#ifdef __cplusplus /* If this is a C++ compiler, use C linkage */
  extern "C" {
#endif
#ifdef __cplusplus /* If this is a C++ compiler, end C linkage */
 }
#endif
#endif // SIPHASH_H

#ifndef SIPHASH_IMPL_H
#define SIPHASH_IMPL_H

#define INLINE __attribute__((always_inline))
#define NOINLINE __attribute__((noinline))
#define ROTL64(a,b) (((a)<<(b))|((a)>>(64-b)))
#define MM16 __attribute__((aligned(16)))

#endif // SIPHASH_IMPL_H

static long INLINE
U8TO64_LE(const unsigned char *p) {
  return *(const long *)p;
}


//siphash-2-4 mockup for MAC generation 
unsigned long __register_mac_mockup(const unsigned char *m, unsigned len) {
   unsigned long sum=0;
   for (int i=0;i<len;i++){
     sum+=*(m+len);
   } 
   return (unsigned long)sum;
} 
//siphash-2-4 mockup for MAC checks, exit with 113 code if MACs do not match.
void __register_check_mockup(const unsigned char *m, unsigned len, unsigned long prev) {
   unsigned long sum=0;
   for (int i=0;i<len;i++){
     sum+=*(m+len);
   } 
   if (prev!=sum){
    //exit(113);
#if defined(__aarch64__)
    asm volatile ("mov   x0, #113");
    asm volatile ("mov   x8, #93");
    asm volatile ("svc   #0");
#else
    asm volatile ("mov   $1, %eax");
    asm volatile ("mov   $113, %ebx");
    asm volatile ("int   $0x80");
#endif
   }
   return;
}  

//Original siphash code has taken from https://github.com/floodyberry/siphash. 
//siphash-2-4 for MAC generation 
unsigned long __register_mac(const unsigned char *m, unsigned len) {
  unsigned long v0, v1, v2, v3;
  unsigned long mi, k0, k1;
  unsigned long last7;
  unsigned i, blocks;
#if defined(__aarch64__)
  //int32x4_t key;
  //asm volatile ("mov    %0, v31.d[0];":"=r"(k0));
  //asm volatile ("fmov   %0, v31.d[1];":"=r"(k1));
#else
  //__m128i key;  
  //asm volatile ("movq    %%xmm14, %0;":"=r"(k0));
  //asm volatile ("movq    %%xmm15, %0;":"=r"(k1));
#endif
  //ATTENTION: These are (k0,k1) hardcoded pseudokey words that must be removed in production environment.
  //The key words must be available on registers given above.
  //k0 = U8TO64_LE(key + 0);
  //k1 = U8TO64_LE(key + 8);
  k0=  0x5f11a9e133fef7a1ull;
  k1=  0x5db6110ca3442ae7ull;
  v0 = k0 ^ 0x736f6d6570736575ull;
  v1 = k1 ^ 0x646f72616e646f6dull;
  v2 = k0 ^ 0x6c7967656e657261ull;
  v3 = k1 ^ 0x7465646279746573ull;

  last7 = (unsigned long)(len & 0xff) << 56;

#define sipcompress() \
  v0 += v1; v2 += v3; \
  v1 = ROTL64(v1,13); v3 = ROTL64(v3,16); \
  v1 ^= v0; v3 ^= v2; \
  v0 = ROTL64(v0,32); \
  v2 += v1; v0 += v3; \
  v1 = ROTL64(v1,17); v3 = ROTL64(v3,21); \
  v1 ^= v2; v3 ^= v0; \
  v2 = ROTL64(v2,32);

  for (i = 0, blocks = (len & ~7); i < blocks; i += 8) {
    mi = U8TO64_LE(m + i);
    v3 ^= mi;
    sipcompress()
    sipcompress()
    v0 ^= mi;
  }

  switch (len - blocks) {
    case 7: last7 |= (unsigned long)m[i + 6] << 48;
    case 6: last7 |= (unsigned long)m[i + 5] << 40;
    case 5: last7 |= (unsigned long)m[i + 4] << 32;
    case 4: last7 |= (unsigned long)m[i + 3] << 24;
    case 3: last7 |= (unsigned long)m[i + 2] << 16;
    case 2: last7 |= (unsigned long)m[i + 1] <<  8;
    case 1: last7 |= (unsigned long)m[i + 0]      ;
    case 0:
    default:;
  };
  v3 ^= last7;
  sipcompress()
  sipcompress()
  v0 ^= last7;
  v2 ^= 0xff;
  sipcompress()
  sipcompress()
  sipcompress()
  sipcompress()
  return v0 ^ v1 ^ v2 ^ v3;
}

//siphash-2-4 for MAC checks with prev vaue, exit with 113 code if MACs do not match.
void __register_check(const unsigned char *m, unsigned len, unsigned long prev) {
  unsigned long v0, v1, v2, v3;
  unsigned long long mi, k0, k1;
  unsigned long last7;
  unsigned i, blocks;
#if defined(__aarch64__)
  //int32x4_t key;
  //asm volatile ("mov    %0, v31.d[0];":"=r"(k0));
  //asm volatile ("fmov   %0, v31.d[1];":"=r"(k1));
#else
  //__m128i key;  
  //asm volatile ("movq    %%xmm14, %0;":"=r"(k0));
  //asm volatile ("movq    %%xmm15, %0;":"=r"(k1));
#endif
  //k0 = U8TO64_LE(key + 0);
  //k1 = U8TO64_LE(key + 8);
  //ATTENTION: These are (k0,k1) hardcoded pseudokey words that must be removed in production environment.
  //The key words must be available on registers given above.
  k0=  0x5f11a9e133fef7a1ull;
  k1=  0x5db6110ca3442ae7ull;
  v0 = k0 ^ 0x736f6d6570736575ull;
  v1 = k1 ^ 0x646f72616e646f6dull;
  v2 = k0 ^ 0x6c7967656e657261ull;
  v3 = k1 ^ 0x7465646279746573ull;

  last7 = (unsigned long)(len & 0xff) << 56;

#define sipcompress() \
  v0 += v1; v2 += v3; \
  v1 = ROTL64(v1,13); v3 = ROTL64(v3,16); \
  v1 ^= v0; v3 ^= v2; \
  v0 = ROTL64(v0,32); \
  v2 += v1; v0 += v3; \
  v1 = ROTL64(v1,17); v3 = ROTL64(v3,21); \
  v1 ^= v2; v3 ^= v0; \
  v2 = ROTL64(v2,32);

  for (i = 0, blocks = (len & ~7); i < blocks; i += 8) {
    mi = U8TO64_LE(m + i);
    v3 ^= mi;
    sipcompress()
    sipcompress()
    v0 ^= mi;
  }

  switch (len - blocks) {
    case 7: last7 |= (unsigned long)m[i + 6] << 48;
    case 6: last7 |= (unsigned long)m[i + 5] << 40;
    case 5: last7 |= (unsigned long)m[i + 4] << 32;
    case 4: last7 |= (unsigned long)m[i + 3] << 24;
    case 3: last7 |= (unsigned long)m[i + 2] << 16;
    case 2: last7 |= (unsigned long)m[i + 1] <<  8;
    case 1: last7 |= (unsigned long)m[i + 0]      ;
    case 0:
    default:;
  };
  v3 ^= last7;
  sipcompress()
  sipcompress()
  v0 ^= last7;
  v2 ^= 0xff;
  sipcompress()
  sipcompress()
  sipcompress()
  sipcompress()
  if (prev!=(v0 ^ v1 ^ v2 ^ v3)){
    //exit(113);
#if defined(__aarch64__)
    asm volatile ("mov   x0, #113");
    asm volatile ("mov   x8, #93");
    asm volatile ("svc   #0");
#else
    asm volatile ("mov   $1, %eax");
    asm volatile ("mov   $113, %ebx");
    asm volatile ("int   $0x80");
#endif
  }
  return;
}