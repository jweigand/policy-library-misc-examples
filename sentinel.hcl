import "static" "remote-data" {
  source = "https://s3.amazonaws.com/tfe-logical-horse-storage-sentinel/remote-data.json"
  format = "json"
}

import "module" "common-functions" {
    source = "https://s3.amazonaws.com/tfe-logical-horse-storage-sentinel/modules/common-functions.sentinel"
}

policy "remote" {
    source = "./remote.sentinel"
    enforcement_level = "advisory"
}