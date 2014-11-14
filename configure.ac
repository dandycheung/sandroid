AC_INIT([sandroid], [0.0.1], [rchatsiri@treadstone.io])


#Fix -Wall 
AM_INIT_AUTOMAKE([foreign subdir-objects -Wall -Werror])

#unique source file 
AC_CONFIG_SRCDIR([src/bin/sandroidmonitor.cpp])


#build flags
AM_PROG_AR

AC_PROG_CXX
AC_PROG_RANLIB

#AC_PROG_INSTALL
#AM_PROG_LIBTOOL

#check for program
AC_LANG([C++])

#check header file
AC_HEADER_STDC
AC_CHECK_HEADERS([string])
AC_CHECK_HEADERS([iostream])

LIBS="-lgtest -lprotobuf -lglog -lfolly -ldl -lgflags $LIBS"

AC_TYPE_SIZE_T
##################################
##   Libraries declare path     ##
##################################

#check for header files.
AC_SUBST([AM_CXXFLAGS])
AC_SUBST([AM_LDFLAGS])
AC_SUBST([LIBS])

AC_SUBST([AM_CFLAGS])

#check library function
AC_CONFIG_HEADERS([config.h])

AC_CONFIG_FILES([Makefile])
AC_CONFIG_FILES([src/sandroid/Makefile])
AC_CONFIG_FILES([src/seccomp-bpf/Makefile])
AC_CONFIG_FILES([src/seccomp-bpf-helpers/Makefile])
#output file
AC_OUTPUT
