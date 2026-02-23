#> asset:artifact/1273.maidchan_plush/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1273.maidchan_plush/trigger/1.trigger

#> Private
# @private
    #declare score_holder $MPPer

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

# MPが50%以上あるかみる
    function api:entity/player/get_mp_per
    execute store result score $MPPer Temporary run data get storage api: Return.MPPer 100
    execute unless score $MPPer Temporary matches 49.. run tag @s remove CanUsed
    scoreboard players reset $MPPer Temporary

# 敵がいるかみる
    execute unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..6] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1273.maidchan_plush/trigger/3.main
