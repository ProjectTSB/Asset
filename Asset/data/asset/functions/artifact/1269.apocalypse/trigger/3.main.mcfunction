#> asset:artifact/1269.apocalypse/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1269.apocalypse/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $Damage
    #declare score_holder $Z9.Stack

# スタックをスコアへ
    execute store result score $Z9.Stack Temporary run data get storage api: Return.Effect.Stack

# 演出
    execute if score $Z9.Stack Temporary matches 2.. positioned as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..10] rotated ~ 0 positioned ~ ~0.2 ~ run function asset:artifact/1269.apocalypse/trigger/vfx/

# スタック毎のダメージ設定
    execute if score $Z9.Stack Temporary matches 1 run scoreboard players set $Damage Temporary 3000
    execute if score $Z9.Stack Temporary matches 2 run scoreboard players set $Damage Temporary 3500
    execute if score $Z9.Stack Temporary matches 3 run scoreboard players set $Damage Temporary 4100
    execute if score $Z9.Stack Temporary matches 4 run scoreboard players set $Damage Temporary 4500
    execute if score $Z9.Stack Temporary matches 5 run scoreboard players set $Damage Temporary 5000
    execute if score $Z9.Stack Temporary matches 6 run scoreboard players set $Damage Temporary 5500
    execute if score $Z9.Stack Temporary matches 7 run scoreboard players set $Damage Temporary 6000
    execute if score $Z9.Stack Temporary matches 8 run scoreboard players set $Damage Temporary 6800

# ダメージ
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..10] run function api:damage/
    function api:damage/reset

# バフ解除
    data modify storage api: Argument.ID set value 334
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Z9.Stack Temporary
