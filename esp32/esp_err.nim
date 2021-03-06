##  Copyright 2015-2016 Espressif Systems (Shanghai) PTE LTD
##
##  Licensed under the Apache License, Version 2.0 (the "License");
##  you may not use this file except in compliance with the License.
##  You may obtain a copy of the License at
##      http://www.apache.org/licenses/LICENSE-2.0
##
##  Unless required by applicable law or agreed to in writing, software
##  distributed under the License is distributed on an "AS IS" BASIS,
##  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
##  See the License for the specific language governing permissions and
##  limitations under the License.

type
  esp_err_t* = int32

##  Definitions for error constants.

const
  ESP_OK* = 0
  ESP_FAIL* = -1
  ESP_ERR_NO_MEM* = 0x00000101
  ESP_ERR_INVALID_ARG* = 0x00000102
  ESP_ERR_INVALID_STATE* = 0x00000103
  ESP_ERR_INVALID_SIZE* = 0x00000104
  ESP_ERR_NOT_FOUND* = 0x00000105
  ESP_ERR_NOT_SUPPORTED* = 0x00000106
  ESP_ERR_TIMEOUT* = 0x00000107
  ESP_ERR_INVALID_RESPONSE* = 0x00000108
  ESP_ERR_INVALID_CRC* = 0x00000109
  ESP_ERR_INVALID_VERSION* = 0x0000010A
  ESP_ERR_INVALID_MAC* = 0x0000010B
  ESP_ERR_WIFI_BASE* = 0x00003000
  ESP_ERR_MESH_BASE* = 0x00004000

## *
##  @brief Returns string for esp_err_t error codes
##
##  This function finds the error code in a pre-generated lookup-table and
##  returns its string representation.
##
##  The function is generated by the Python script
##  tools/gen_esp_err_to_name.py which should be run each time an esp_err_t
##  error is modified, created or removed from the IDF project.
##
##  @param code esp_err_t error code
##  @return string error message
##

proc esp_err_to_name*(code: esp_err_t): cstring {.cdecl,
    importcpp: "esp_err_to_name(@)", header: "esp_err.h".}
## *
##  @brief Returns string for esp_err_t and system error codes
##
##  This function finds the error code in a pre-generated lookup-table of
##  esp_err_t errors and returns its string representation. If the error code
##  is not found then it is attempted to be found among system errors.
##
##  The function is generated by the Python script
##  tools/gen_esp_err_to_name.py which should be run each time an esp_err_t
##  error is modified, created or removed from the IDF project.
##
##  @param code esp_err_t error code
##  @param[out] buf buffer where the error message should be written
##  @param buflen Size of buffer buf. At most buflen bytes are written into the buf buffer (including the terminating null byte).
##  @return buf containing the string error message
##

proc esp_err_to_name_r*(code: esp_err_t; buf: cstring; buflen: csize): cstring {.cdecl,
    importcpp: "esp_err_to_name_r(@)", header: "esp_err.h".}
## * @cond

