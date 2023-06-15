/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t monet_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "monet",
    .marketname = "Mi 10 Lite 5G",
    .model = "M2002J9G",
    .build_fingerprint = "Xiaomi/monet_global/monet:12/RKQ1.200826.002/V13.0.4.0.SJIMIXM:user/release-keys",

    .nfc = true,
};

static const std::vector<variant_info_t> variants = {
    monet_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
