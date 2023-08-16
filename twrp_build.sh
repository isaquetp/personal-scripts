clear
. build/envsetup.sh

lunch twrp_moba-eng

rm -rf out

m clean

clear
m recoveryimage

croc send -code taotao out/target/product/moba/recovery.img
