#   honggfuzz Android - Makefile
#   -----------------------------------------
#
#   Author:        Robert Swiecki <swiecki@google.com>
#   Modifications: Anestis Bechtsoudis <anestis@census-labs.com>
#
#   Original:      Copyright 2010 by Google Inc. All Rights Reserved.
#   Modifications: Copyright 2014 by Census SA. All Rights Reserved.
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := honggfuzz
LOCAL_SRC_FILES := honggfuzz.c log.c files.c fuzz.c util.c arch_posix.c
LOCAL_CFLAGS    := -O3 -g -ggdb -c -std=c99 -I. -D_GNU_SOURCE \
	           -Wall -Werror -Wimplicit -Wunused -Wcomment \
                   -Wchar-subscripts -Wuninitialized -Wcast-align \
	           -Wreturn-type -Wpointer-arith -fPIE
LOCAL_LDFLAGS   := -fPIE -pie -lm

include $(BUILD_EXECUTABLE)