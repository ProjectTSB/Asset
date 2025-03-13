#> asset:object/2221.aurora_scaffold/tick/check_owner
#
#
#
# @within function asset:object/2221.aurora_scaffold/tick/

#> Private
# @private
    #declare score_holder $OwnerID

# OwernID取得
    execute store result score $OwnerID Temporary run data get storage asset:context this.MobUUID

# 同IDのMobが周囲にいるかチェックし、いればTickを戻す
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10] if score @s MobUUID = $OwnerID Temporary run data modify storage asset:context this.Tick set value 100

# リセット
    scoreboard players reset $OwnerID Temporary
