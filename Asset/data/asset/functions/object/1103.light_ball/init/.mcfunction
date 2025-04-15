#> asset:object/1103.light_ball/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1103/init

# validation
    execute unless data storage asset:context this.Duration run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Duration","color":"red"}]

# 演出
    particle end_rod ~ ~ ~ 0 0 0 0.2 60 force @a[distance=..30]
    playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1 1
