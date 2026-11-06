#> asset:artifact/1651.rune_blaster/using_item/2.check_condition
#
#
#
# @within function asset:artifact/1651.rune_blaster/using_item/1.trigger

#> Private
# @private
    #declare score_holder $Gametime
    #declare score_holder $TCD

# 最後に使用してから(TCD)tick以内なら、TCDを無視する
# (魔法陣を確実に維持するため)
    execute store result score $TCD Temporary run data get storage asset:context Items.mainhand.tag.TSB.TypeCooldown.Duration
    execute store result score $Gametime Temporary run data get storage global Time
    scoreboard players operation $Gametime Temporary -= @s 19V.LatestUseTick
    execute if score @s 19V.LatestUseTick matches -2147483648..2147483647 if score $Gametime Temporary < $TCD Temporary run data modify storage asset:artifact DisabledCheckFlag.TypeCooldown set value true

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1651.rune_blaster/using_item/3.main

# リセット
    tag @s remove CanUsed
    scoreboard players reset $Gametime Temporary
    scoreboard players reset $TCD Temporary
