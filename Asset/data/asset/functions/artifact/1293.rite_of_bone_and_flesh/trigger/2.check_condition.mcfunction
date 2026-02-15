#> asset:artifact/1293.rite_of_bone_and_flesh/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1293.rite_of_bone_and_flesh/trigger/1.trigger

#> private
# @private
    #declare score_holder $ZX.Time

# 最後の使用からの時間を取得
    execute store result score $ZX.Time Temporary run data get storage global Time
    scoreboard players operation $ZX.Time Temporary -= @s ZX.LatestUseTick
# 最後の使用から 10s 経っていれば回数リセット
    execute if score $ZX.Time Temporary matches 200.. run scoreboard players reset @s ZX.RemainingCount
# リセット
    scoreboard players reset $ZX.Time

# 連続使用回数が 9回 以下なら TCD を無視
    execute if score @s ZX.RemainingCount matches 1.. run data modify storage asset:context DisabledCheckFlag set value {TypeCooldown:true}
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1293.rite_of_bone_and_flesh/trigger/3.main
