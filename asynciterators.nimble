version = "0.1.0"
author = "Async Iterators Authors"
description = "Nim Async iterator helpers for Chronos"
license = "MIT"

requires "questionable >= 0.10.15 & < 0.11.0"
requires "results"
requires "chronos"

task test, "Runs the test suite":
  withDir "tests/":
    delEnv "NIMBLE_DIR" # use nimbledeps dir
    exec "nimble install -d -y"
    exec "nimble test -y"
