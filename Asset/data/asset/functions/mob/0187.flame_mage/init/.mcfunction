#> asset:mob/0187.flame_mage/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/alias/187/init

# スコア初期化
    execute store result score @s General.Mob.Tick run random value -50..-30
