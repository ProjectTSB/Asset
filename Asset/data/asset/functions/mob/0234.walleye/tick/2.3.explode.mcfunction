#> asset:mob/0234.walleye/tick/2.3.explode
#
# @within
#   function asset:mob/0234.walleye/tick/

# 音とパーティクル
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 2 1 1
    particle large_smoke ~ ~ ~ 2 2 2 0 300 normal
    particle flame ~ ~ ~ 2 2 2 0 200 normal
    particle lava ~ ~ ~ 2 2 2 0 100 normal

# ダメージを与える
    execute as @e[type=#lib:living_without_player,tag=!Enemy,distance=..6] run function asset:mob/0234.walleye/tick/damage
    execute as @a[distance=..6] run function asset:mob/0234.walleye/tick/damage

# 自死
    function api:mob/remove
