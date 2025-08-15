#> asset:object/2043.lastboss_ice_sword/tick/fall_start
#
#
#
# @within function asset:object/2043.lastboss_ice_sword/tick/unlanded/

# 演出
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 2 0.5
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 2 1

# データ設定
    data modify storage asset:context this.StepPerTick set value 4
