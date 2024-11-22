Proof of concent Sentinel policies to demonstrate sourcing both data (lists/maps) and modules (containing functions) from remote sources. 

References:
* https://developer.hashicorp.com/sentinel/docs/configuration/remote-sources
* https://developer.hashicorp.com/sentinel/docs/writing/imports
* https://developer.hashicorp.com/sentinel/docs/configuration/overrides

Sample output from tests (which demonstrates using mocks to test against both main and develop branches):
```
PASS - remote.sentinel
  PASS - test/remote/develop-branch.hcl


    logs:
      ["203982-478625-DEV" "203982-478625-PROD" "402671-256874-TEST" "demo-branch-param"]
        ========================================================================
          This is a function that was sourced from the develop branch.
        ========================================================================
    trace:
      remote.sentinel:9:1 - Rule "main"
        Value:
          true
  PASS - test/remote/main-branch.hcl


    logs:
      ["203982-478625-DEV" "203982-478625-PROD" "402671-256874-TEST"]
        ========================================================================
          This is a function that was sourced from the main branch.
        ========================================================================
    trace:
      remote.sentinel:9:1 - Rule "main"
        Value:
          true
1 tests completed in 3.647083ms
```