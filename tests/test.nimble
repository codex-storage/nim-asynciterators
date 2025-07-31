version = "0.1.0"
author = "Async Iterators Authors"
description = "Tests for Nim Async iterator helpers for Chronos"
license = "MIT"

requires "questionable >= 0.10.15 & < 0.11.0"
requires "results"
requires "chronos"
requires "asynctest >= 0.5.4 & < 0.6.0"

task test, "Runs the test suite":
  var options = "-f -r --skipParentCfg"
  when (NimMajor, NimMinor) >= (1, 4):
    options &= " --warningAsError[UnsafeDefault]:on"
    options &= " --warningAsError[ProveInit]:on"
  exec "nim c " & options & " testiter.nim"
  exec "nim c " & options & " testasynciter.nim"
  exec "nim c " & options & " testasyncresultiter.nim"
