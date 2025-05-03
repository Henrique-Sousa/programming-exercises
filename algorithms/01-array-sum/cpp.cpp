#include <iostream>
#include <vector>
#include <numeric>
#include <cassert>
#include <functional>
#include <execution>

using std::vector;

inline int array_sum(const vector<int>& vec) noexcept {
  int sum = 0;
  for (auto e : vec) {
    sum += e;
  }
  return sum;
}

int main() {
  const vector<int> vec{1, 2, 3, 4, 10, 11};

  auto imper_sum = array_sum(vec);
  auto accum_sum1 = std::accumulate(begin(vec), end(vec), 0, std::plus<int>{});
  auto accum_sum2 = std::accumulate(begin(vec), end(vec), 0);
  auto reduc_sum1 = std::reduce(std::execution::seq, begin(vec), end(vec), 0, std::plus<int>{});
  auto reduc_sum2 = std::reduce(std::execution::seq, begin(vec), end(vec));

  assert(imper_sum == 31);
  assert(accum_sum1 == 31);
  assert(accum_sum2 == 31);
  assert(reduc_sum1 == 31);
  assert(reduc_sum2 == 31);
}
