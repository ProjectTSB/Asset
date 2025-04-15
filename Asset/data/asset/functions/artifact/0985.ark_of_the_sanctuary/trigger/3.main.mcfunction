#> asset:artifact/0985.ark_of_the_sanctuary/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# 最後に使用してから時間が開いていた場合、コンボカウントをリセットする
    execute if score @s RD.Combo matches 4.. run scoreboard players reset @s RD.Combo
    execute unless score $TickSinceLastUse Temporary matches ..30 run scoreboard players reset @s RD.Combo

# コンボカウント加算
    scoreboard players add @s RD.Combo 1
# VFX
    execute if score @s RD.Combo matches 1 anchored eyes run function asset:artifact/0985.ark_of_the_sanctuary/trigger/vfx/slash1
    execute if score @s RD.Combo matches 2 anchored eyes run function asset:artifact/0985.ark_of_the_sanctuary/trigger/vfx/slash2
    execute if score @s RD.Combo matches 3 anchored eyes run scoreboard players set @s RD.BurstCount 8
    execute if score @s RD.Combo matches 4 anchored eyes run function asset:artifact/0985.ark_of_the_sanctuary/trigger/vfx/slash5

# ダメージ
    execute anchored eyes run function asset:artifact/0985.ark_of_the_sanctuary/trigger/damage

# コンボフィニッシュならば斬撃を飛ばす
    execute if score @s RD.Combo matches 4 anchored eyes run function asset:artifact/0985.ark_of_the_sanctuary/trigger/shot_spin_blade

# スケジュールで実行させる
    schedule function asset:artifact/0985.ark_of_the_sanctuary/trigger/schedule_loop 1t replace
