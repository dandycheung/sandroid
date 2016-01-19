// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// This header will be kept up to date so that we can compile system-call
// policies even when system headers are old.
// System call numbers are accessible through __NR_syscall_name.

#ifndef SANDBOX_LINUX_SERVICES_LINUX_SYSCALLS_H_
#define SANDBOX_LINUX_SERVICES_LINUX_SYSCALLS_H_

#if defined(__x86_64__)
#include "services/x86_64_linux_syscalls.h"
#endif

#if defined(__i386__)
#include "services/x86_32_linux_syscalls.h"
#endif

#if defined(__arm__) && defined(__ARM_EABI__)
#include "services/arm_linux_syscalls.h"
#endif

#if defined(__mips__) && defined(_ABIO32)
#include "services/mips_linux_syscalls.h"
#endif

#if defined(__aarch64__)
#include "services/arm64_linux_syscalls.h"
#endif

#endif  // SANDBOX_LINUX_SERVICES_LINUX_SYSCALLS_H_

