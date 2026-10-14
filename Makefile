# ============================================================
#  cpp-learning  Makefile
#  用法：
#     make FILE=02_matrix/matrix_mul.cpp   # 编译并运行指定文件
#     make                                 # 只有一个源文件时自动选它
#     make list                            # 列出所有源文件
#     make clean                           # 清理 build/
# ============================================================

CXX      := g++
CXXFLAGS := -std=c++17 -Wall -O2 -g -I/usr/include/eigen3
BUILD    := build

# 找出所有源文件（排除 build/ 和隐藏目录）
SRCS := $(shell find . -name '*.cpp' -not -path './build/*' -not -path './.*' 2>/dev/null | sort)
N    := $(words $(SRCS))

# 没指定 FILE 时：只有一个源文件就用它
ifeq ($(FILE),)
  ifeq ($(N),1)
    FILE := $(SRCS)
  endif
endif

OUT := $(BUILD)/$(basename $(notdir $(FILE)))

.PHONY: all run list clean

all: run

run:
ifeq ($(FILE),)
	@echo "❌ 有多个源文件，请指定要运行的文件，例如："
	@echo "     make FILE=02_matrix/matrix_mul.cpp"
	@echo
	@$(MAKE) --no-print-directory list
	@exit 1
else
	@mkdir -p $(BUILD)
	@echo "🔨 编译 $(FILE)"
	$(CXX) $(CXXFLAGS) '$(FILE)' -o '$(OUT)'
	@echo "▶️  运行 $(OUT)"
	@echo "----------------------------------------"
	@'$(OUT)'
	@echo "----------------------------------------"
endif

list:
	@echo "📂 项目中的源文件（共 $(N) 个）："
	@for f in $(SRCS); do echo "   $$f"; done
	@echo
	@echo "用法： make FILE=<上面任意一个>"

clean:
	@rm -rf $(BUILD)
	@echo "🧹 已清理 $(BUILD)/"
