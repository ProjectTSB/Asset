#> asset:object/1153.flare_butterfly/tick/move/summon_move/
#
#
#
# @within function asset:object/1153.flare_butterfly/tick/

# 一定tick後に召喚演出終了判定を出す
    execute store result storage asset:context this.SummonMoveTick int 0.9999999999 run data get storage asset:context this.SummonMoveTick
    execute if data storage asset:context this{SummonMoveTick:0} run data modify storage asset:context this.SummonMoveEnded set value true

# Ownerに近づいてく
    function asset:object/1153.flare_butterfly/tick/move/to_owner/

# 召喚時だけ演出を濃くする
    particle dust 1 0.4 0 0.9 ~ ~ ~ 0.3 0.3 0.3 0 3 normal @a
    execute if predicate lib:random_pass_per/35 run particle small_flame ~ ~ ~ 0.3 0.3 0.3 0 3 normal @a
