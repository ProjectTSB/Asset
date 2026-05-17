#> asset:artifact/1252.fox_candle/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1252.fox_candle/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
    #declare score_holder $Damage
    #declare score_holder $MaxHealth

# CanUsedじゃないならreturn
    execute if entity @s[tag=!CanUsed] run return fail

# 死んでるならreturn
    execute if entity @s[tag=Death] run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# ダメージによる体力減少割合を取得
    function api:modifier/max_health/get
    execute store result score $MaxHealth Temporary run data get storage api: Return.MaxHealth 1
    execute store result score $Damage Temporary run data get storage asset:context Damage.Amount 1000
    scoreboard players operation $Damage Temporary /= $MaxHealth Temporary

# スコアに加算
    scoreboard players operation @s YS.DamagePerSum += $Damage Temporary

# リセット
    scoreboard players reset $Damage Temporary
    scoreboard players reset $MaxHealth Temporary

# 効果範囲内に敵がいないならreturn
    execute unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..16,limit=1] run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# スコアが一定以上でないならreturn
    execute unless score @s YS.DamagePerSum matches 90.. run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    function asset:artifact/1252.fox_candle/trigger/3.main
