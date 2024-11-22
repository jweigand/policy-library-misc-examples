import "static" "remote-data" {
  source = "https://raw.githubusercontent.com/jweigand/remote-sentinel-source/refs/heads/main/remote-data.json"
  format = "json"
}

import "module" "common-functions" {
    source = "https://raw.githubusercontent.com/jweigand/remote-sentinel-source/refs/heads/main/modules/common-functions.sentinel"
}

test {
    rules  = {
        main = true
    }
}