#
# Author: Yuanhui He <list_view_321@163.com>
# Date: 2024/12/19
# Description:
# 		Makefile of the thirdparty library easyloggingpp
#

M_SRCS :=
M_SRCS += src/easylogging++.cc

CCSRCS += $(foreach src, $(M_SRCS), $(SUB_DIR)/$(src))

VPATH += :$(TOP_DIR)/$(SUB_DIR)
EXT_INCLUDE += -I$(TOP_DIR)/$(SUB_DIR)/src
EXT_LDFLAGS += -lstdc++

ifeq ($(CONFIG_THIRDPART_EASYLOGINGPP_CONFIG_ENABLE), y)
	EXT_CFLAGS += -DELPP_NO_DEFAULT_LOG_FILE
endif
