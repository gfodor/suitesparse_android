# set ANDROID_NDK environment in .bashrc

cmake \
  -DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK}/build/cmake/android.toolchain.cmake \
  -DCMAKE_INSTALL_PREFIX="/Users/gfodor/dopple/slam/opt/clapack_cg/" \
  -DCMAKE_BUILD_TYPE=Release \
  -DBUILD_ANDROID=TRUE \
  -DANDROID_NDK=${ANDROID_NDK} \
  -DANDROID_TOOLCHAIN="cmake" \
  -DANDROID_ABI="arm64-v8a" \
  -DANDROID_STL="c++_shared" \
  -DANDROID_CPP_FEATURES="rtti exceptions" \
  -DANDROID_PLATFORM=android-34 \
  -DANDROID_ARM_NEON=TRUE \
  -DANDROID_DISABLE_FORMAT_STRING_CHECKS=TRUE \
  .. && cmake --build .
