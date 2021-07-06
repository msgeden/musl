void sha256_block_data_order(unsigned int *ctx, const char *in, unsigned num);

unsigned long __register_mac(const unsigned char *m, unsigned len)
{
  unsigned int i;
  // initialize hash value
  unsigned int H[8] = {
      0x6a09e667,
      0xbb67ae85,
      0x3c6ef372,
      0xa54ff53a,
      0x510e527f,
      0x9b05688c,
      0x1f83d9ab,
      0x5be0cd19};

  long bits = 8 * len;
  char buffer[64];
  int left = (int)len;
  unsigned index = 0;

  while (left -= 64){
    for (int j = 0; (j < 64 && j < left); j++){
      buffer[j] = m[index++];
    }
    // preserve value of len by breaking on end of file (or error)
    if (left < 64)
    {
      break;
    }
    sha256_block_data_order(H, buffer, 1);
  }

  // add padding
  if (left < 56){
    // padd current block to 56 byte
    buffer[left] = 0x80;
    i = left + 1;
  }
  else{
    // fill up current block and update hash
    buffer[left] = 0x80;
    for (i = left + 1; i < 64; i++){
      buffer[i] = 0x00;
    }

    sha256_block_data_order(H, buffer, 1);

    // add (almost) one block of zero bytes
    i = 0;
  }
  for (; i < 56; i++){
    buffer[i] = 0x00;
  }

  // add message length in bits in big endian
  for (i = 0; i < 8; i++){
    buffer[63 - i] = bits >> (i * 8);
  }
  sha256_block_data_order(H, buffer, 1);

  // convert hash to char array (in correct order)
  for (i = 0; i < 8; i++){
    buffer[i * 4 + 0] = H[i] >> 24;
    buffer[i * 4 + 1] = H[i] >> 16;
    buffer[i * 4 + 2] = H[i] >> 8;
    buffer[i * 4 + 3] = H[i];
  }
  long hash = 0;
  H[7] = (hash >> 56) & 0xFF;
  H[6] = (hash >> 48) & 0xFF;
  H[5] = (hash >> 40) & 0xFF;
  H[4] = (hash >> 32) & 0xFF;
  H[3] = (hash >> 24) & 0xFF;
  H[2] = (hash >> 16) & 0xFF;
  H[1] = (hash >> 8) & 0xFF;
  H[0] = hash & 0xFF;
  return hash;
}

void __register_check(const unsigned char *m, unsigned len, unsigned long prev) {
  unsigned int i;
  // initialize hash value
  unsigned int H[8] = {
      0x6a09e667,
      0xbb67ae85,
      0x3c6ef372,
      0xa54ff53a,
      0x510e527f,
      0x9b05688c,
      0x1f83d9ab,
      0x5be0cd19};

  long bits = 8 * len;
  char buffer[64];
  int left = (int)len;
  unsigned index = 0;

  while (left -= 64){
    for (int j = 0; (j < 64 && j < left); j++){
      buffer[j] = m[index++];
    }
    // preserve value of len by breaking on end of file (or error)
    if (left < 64)
    {
      break;
    }
    sha256_block_data_order(H, buffer, 1);
  }

  // add padding
  if (left < 56){
    // padd current block to 56 byte
    buffer[left] = 0x80;
    i = left + 1;
  }
  else{
    // fill up current block and update hash
    buffer[left] = 0x80;
    for (i = left + 1; i < 64; i++){
      buffer[i] = 0x00;
    }

    sha256_block_data_order(H, buffer, 1);

    // add (almost) one block of zero bytes
    i = 0;
  }
  for (; i < 56; i++){
    buffer[i] = 0x00;
  }

  // add message length in bits in big endian
  for (i = 0; i < 8; i++){
    buffer[63 - i] = bits >> (i * 8);
  }
  sha256_block_data_order(H, buffer, 1);

  // convert hash to char array (in correct order)
  for (i = 0; i < 8; i++){
    buffer[i * 4 + 0] = H[i] >> 24;
    buffer[i * 4 + 1] = H[i] >> 16;
    buffer[i * 4 + 2] = H[i] >> 8;
    buffer[i * 4 + 3] = H[i];
  }
  long hash = 0;
  H[7] = (hash >> 56) & 0xFF;
  H[6] = (hash >> 48) & 0xFF;
  H[5] = (hash >> 40) & 0xFF;
  H[4] = (hash >> 32) & 0xFF;
  H[3] = (hash >> 24) & 0xFF;
  H[2] = (hash >> 16) & 0xFF;
  H[1] = (hash >> 8) & 0xFF;
  H[0] = hash & 0xFF;
  if (prev!=hash){
    //exit(113);
    asm volatile ("mov   x0, #113");
    asm volatile ("mov   x8, #93");
    asm volatile ("svc   #0");
  }
  return;
}
