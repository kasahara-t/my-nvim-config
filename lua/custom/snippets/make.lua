local ls = require 'luasnip'
local s = ls.s
local t = ls.t

return {

  s('makefile_atcoder', {
    t {
      'CXX = g++',
      'CXXFLAGS = -std=c++23 -O2',
      'SRC = $(wildcard *.cpp)',
      'EXE = $(SRC:.cpp=)',
      'TESTS = $(addprefix test_,$(EXE))',
      '',
      '.PHONY: init',
      'init:',
      '\ttouch input.txt',
      '',
      '$(EXE): %: %.cpp',
      '\t$(CXX) $(CXXFLAGS) -o $@ $<',
      '',
      '.PHONY: $(TESTS)',
      '$(TESTS): test_%: %',
      '\t@echo "Running test for $< with input from input.txt"',
      '\t@echo "Input:"',
      '\t@cat input.txt',
      '\t@echo "Output:"',
      '\t@/usr/bin/time -f "Time: %e s\\nMemory: %M KB" ./$< < input.txt',
      '',
      '.PHONY: clean',
      'clean:',
      '\trm -f $(EXE) input.txt',
      '',
    },
  }),
}
