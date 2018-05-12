#!/bin/bash
cd ../../../..
cd system/core
git apply --reverse -v ../../device/lenovo/manning/patches_mtk/system_core.patch
git apply --reverse -v ../../device/lenovo/manning/patches_mtk/system_core1.patch
cd ../..
cd bionic
git apply --reverse -v ../device/lenovo/manning/patches_mtk/bionic.patch
cd ..
cd system/sepolicy
git apply --reverse -v ../../device/lenovo/manning/patches_mtk/system_sepolicy.patch
cd ../..
cd frameworks/av
git apply --reverse -v ../../device/lenovo/manning/patches_mtk/frameworks_av.patch
git apply --reverse -v ../../device/lenovo/manning/patches_mtk/0002-camera.patch
cd ..
cd native
git apply --reverse -v ../../device/lenovo/manning/patches_mtk/frameworks_native.patch
cd ..
cd base
git apply --reverse -v ../../device/lenovo/manning/patches_mtk/frameworks_base.patch
cd ../..
cd packages/apps/FMRadio
git apply --reverse -v ../../../device/lenovo/manning/patches_mtk/fmradio.patch
cd ../../..
cd system/netd
git apply --reverse -v ../../device/lenovo/manning/patches_mtk/system_netd.patch
cd ../..
cd vendor/cmsdk
git apply --reverse -v ../../device/lenovo/manning/patches_mtk/vendor_cmsdk.patch
cd ../..
