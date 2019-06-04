// Copyright (c) 2009-2019 The Nobilitas Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NOBILITAS_TEST_FUZZ_FUZZ_H
#define NOBILITAS_TEST_FUZZ_FUZZ_H

#include <functional>
#include <stdint.h>
#include <vector>


void test_one_input(std::vector<uint8_t> buffer);

#endif // NOBILITAS_TEST_FUZZ_FUZZ_H
