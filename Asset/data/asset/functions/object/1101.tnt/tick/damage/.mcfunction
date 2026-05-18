#> asset:object/1101.tnt/tick/damage/
#
# ダメージを与えて消滅
#
# @within function asset:object/1101.tnt/tick/

#> Private
# @private
    #declare score_holder $UserID

# 範囲内のMobに再帰で壁貫通をしてないかチェック
    execute as @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..8] at @s facing entity @e[type=marker,tag=this,distance=..8.1] feet run function asset:object/1101.tnt/tick/damage/check_block

# User特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID

# ダメージ
    function asset:object/1101.tnt/tick/damage/deal_damage.m {DamagePer:1.0,Distance:"0.0..1.5"}
    function asset:object/1101.tnt/tick/damage/deal_damage.m {DamagePer:0.7,Distance:"1.5..2.5"}
    function asset:object/1101.tnt/tick/damage/deal_damage.m {DamagePer:0.2,Distance:"2.5..5.0"}
    function asset:object/1101.tnt/tick/damage/deal_damage.m {DamagePer:0.1,Distance:"5.0..8.0"}

# リセット
    scoreboard players reset $UserID Temporary
    tag @e[type=#lib:living_without_player,tag=1101.Hit,distance=..8] remove 1101.Hit
    tag @e[type=#lib:living_without_player,tag=1101.AlreadyHit,distance=..8] remove 1101.AlreadyHit

# 消滅
    kill @s
