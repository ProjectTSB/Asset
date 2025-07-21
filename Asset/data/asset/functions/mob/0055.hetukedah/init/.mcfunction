#> asset:mob/0055.hetukedah/init/
# @within asset:mob/alias/55/init

# super.init
    function asset:mob/super.init

# ハードならば移動速度を上げる
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.25
# スコアをセットする
    scoreboard players set @s General.Mob.Tick -60
# 最初は鈍足をつけておく
    effect give @s slowness 4 10 true
