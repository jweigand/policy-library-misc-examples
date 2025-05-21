/*
import "static" "remote-data" {
  source = "https://raw.githubusercontent.com/jweigand/remote-sentinel-source/refs/heads/main/remote-data.json"
  format = "json"
}

import "module" "common-functions" {
  source = "https://raw.githubusercontent.com/jweigand/remote-sentinel-source/refs/heads/main/modules/common-functions.sentinel"
}

policy "remote" {
    source = "./remote.sentinel"
    enforcement_level = "advisory"
}
*/

policy "seconds_15" {
    source = "./seconds_15.sentinel"
    enforcement_level = "advisory"
}

policy "seconds_25" {
    source = "./seconds_25.sentinel"
    enforcement_level = "advisory"
}