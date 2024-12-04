#> asset:artifact/0719.sword_of_divine_sound/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/719/attack_melee/

#> Private
# @private
    #declare score_holder $401

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] positioned ~ ~0.3 ~ run function asset:artifact/0719.sword_of_divine_sound/attack_melee/vfx/

# 401を定義
    scoreboard players set $401 Temporary 401

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $401 Temporary
# 最低値を加算
    scoreboard players add $Random Temporary 1600

# 設定
    execute store result storage api: Argument.Damage int 1.0 run scoreboard players get $Random Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $401 Temporary
