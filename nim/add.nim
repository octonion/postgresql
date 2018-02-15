
proc add*(x,y: int): int {. exportc, dynlib .} =
  return x+y
