#!/usr/bin/env bash

# Build for ESP32S3-Devkit
#idf.py -DBOARD=esp32s3-devkitc  build

cd build
esptool.py --chip ESP32S3 merge_bin -o merged-flash.bin --flash_mode dio --flash_freq 80m --flash_size 16MB 0x0 bootloader/bootloader.bin 0x10000 wasmachine.bin 0x8000 partition_table/partition-table.bin 0xd000 ota_data_initial.bin 0x610000 storage.bin

