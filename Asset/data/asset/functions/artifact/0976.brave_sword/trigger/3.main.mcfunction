#> asset:artifact/0976.brave_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0976.brave_sword/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# 使用時間の記録
    execute store result score @s R4.LatestUseTick run time query gametime

# 最後に使用してから時間が開いていた場合、コンボカウントをリセットする
    execute if score @s R4.Combo matches 3.. run scoreboard players reset @s R4.Combo
    execute unless score $TickSinceLastUse Temporary matches ..30 run scoreboard players reset @s R4.Combo

# コンボカウント加算
    scoreboard players add @s R4.Combo 1

# VFX
    execute if score @s R4.Combo matches 1 anchored eyes run function asset:artifact/0976.brave_sword/trigger/vfx/slash1
    execute if score @s R4.Combo matches 2 anchored eyes run function asset:artifact/0976.brave_sword/trigger/vfx/slash2
    execute if score @s R4.Combo matches 3 anchored eyes run function asset:artifact/0976.brave_sword/trigger/vfx/slash3

# ダメージ
    execute anchored eyes run function asset:artifact/0976.brave_sword/trigger/damage

# コンボフィニッシュならば斬撃を飛ばす
    execute if score @s R4.Combo matches 3 anchored eyes run function asset:artifact/0976.brave_sword/trigger/shot_blade_wave
