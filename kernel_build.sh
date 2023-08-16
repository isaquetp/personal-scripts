rm -rf out
make O=out ARCH=arm64 mrproper
make O=out ARCH=arm64 moba_defconfig

PATH="/home/taotao/clang/tymario/clang-11/bin:/home/taotao/clang/google/aarch64/bin:/home/taotao/clang/google/arm/bin:${PATH}" \
make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      CC=clang \
                      CLANG_TRIPLE=aarch64-linux-gnu- \
                      CROSS_COMPILE=aarch64-linux-android- \
                      CROSS_COMPILE_ARM32=arm-linux-androideabi-
