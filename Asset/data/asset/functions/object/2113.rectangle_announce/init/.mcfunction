#> asset:object/2113.rectangle_announce/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2113/init

# this.Duration + 3 をKillTickに指定
    execute store result score @s 2113.KillTick run data get storage asset:context this.Duration
    scoreboard players add @s 2113.KillTick 3

# this.ScaleZの半分をthis.translationZへ
    execute store result storage asset:context this.TranslationZ float 0.05 run data get storage asset:context this.ScaleZ 10
