#> asset:artifact/0976.brave_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0976.brave_sword/trigger/2.check_condition

# 先にLatestUseTickを取っておく
# 使用スロットをチェックし、メインハンドかオフハンドかで分岐
    execute if data storage asset:context Items{AutoSlot:"mainhand"} store result score $R4.LatestUseTick Temporary run data get storage asset:context Items.mainhand.tag.TSB.LatestUseTick
    execute if data storage asset:context Items{AutoSlot:"offhand"} store result score $R4.LatestUseTick Temporary run data get storage asset:context Items.offhand.tag.TSB.LatestUseTick

# 使用時に前回の使用時のTickとの差が開いていた場合、コンボカウントをリセットする
    execute unless score @s R4.Combo matches -2147483648..2147483647 run scoreboard players set @s R4.Combo 0
    execute store result score $R4.Temp Temporary run time query gametime
    scoreboard players operation $R4.Temp Temporary -= $R4.LatestUseTick Temporary
    execute unless score $R4.Temp Temporary matches ..30 run scoreboard players set @s R4.Combo 0

# コンボフィニッシュを出したあとは、前回の使用時とのTickの差が13Tick以上でないと使用処理がキャンセルされる
    execute if score @s R4.Combo matches 3.. unless score $R4.Temp Temporary matches 13.. run scoreboard players reset $R4.Temp Temporary
    execute if score @s R4.Combo matches 3.. unless score $R4.Temp Temporary matches 13.. run return fail
    execute if score @s R4.Combo matches 3.. if score $R4.Temp Temporary matches 13.. run scoreboard players reset @s R4.Combo

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# コンボカウント加算
    scoreboard players add @s R4.Combo 1

# 攻撃
    execute if score @s R4.Combo matches 1 anchored eyes run function asset:artifact/0976.brave_sword/trigger/combo/slash1
    execute if score @s R4.Combo matches 2 anchored eyes run function asset:artifact/0976.brave_sword/trigger/combo/slash2
    execute if score @s R4.Combo matches 3 anchored eyes run function asset:artifact/0976.brave_sword/trigger/combo/slash3

# リセット
    scoreboard players reset $R4.Temp Temporary
