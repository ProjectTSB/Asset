#> asset:mob/0104.mad_scientist/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/104/init

# スコア初期化
    scoreboard players set @s General.Mob.Tick -120

# 最初にまず4つの属性に分岐
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0104.mad_scientist/tick/random_element_select
