local ls = require 'luasnip'
local s = ls.s
local t = ls.t
local i = ls.i

return {
  s('!!!', {
    t {
      '#include <bits/stdc++.h>',
      'using namespace std;',
      '',
      'int main() {',
      '    ',
    },
    i(1),
    t {
      '',
      '    return 0;',
      '}',
    },
  }),
}
