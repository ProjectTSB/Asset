#> asset:effect/0206.spirit_state/recover/teleport.m
# @input args
#   PrevX: double
#   PrevY: double
#   PrevZ: double
#   PrevDim: "overworld" | "the_nether" | "the_end"
# @within function asset:effect/0206.spirit_state/recover/

# テレポート
    $execute in $(PrevDim) run tp $(PrevX) $(PrevY) $(PrevZ)
