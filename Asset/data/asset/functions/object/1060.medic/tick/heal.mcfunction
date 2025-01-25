#> asset:object/1060.medic/tick/heal
#
#
#
# @within function asset:object/1060.medic/tick/

#> private
# @private
    #declare score_holder $OwnerID

# 演出
    execute at @a[distance=..5] run function asset:object/1060.medic/tick/vfx

# 確率で声を出す。
    execute if predicate lib:random_pass_per/30 run playsound minecraft:entity.allay.hurt neutral @a ~ ~ ~ 1 1.4

# HP回復量
    data modify storage api: Argument.Heal set value 4.5f
# 補正
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute at @a if score $OwnerID Temporary = @p UserID as @p run function api:heal/modifier
# 実行
    execute as @a[distance=..5] run function api:heal/
# リセット
    function api:heal/reset
    scoreboard players reset $OwnerID Temporary
