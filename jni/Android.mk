# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := ffmpeg-x264

FFMPEG_LIBS := $(addprefix ffmpeg/, \
libavformat/libavformat.a \
libavcodec/libavcodec.a \
libswscale/libswscale.a \
libavutil/libavutil.a \
libpostproc/libpostproc.a)

LOCAL_CFLAGS += -g -Iffmpeg -Wno-deprecated-declarations
LOCAL_LDLIBS += -llog -lz $(FFMPEG_LIBS) x264/android_x264/lib/libx264.a
LOCAL_SRC_FILES := com_livecamera_encoder_h264encoder.c

include $(BUILD_SHARED_LIBRARY)