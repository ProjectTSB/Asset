#> asset:mob/0311.blazing_inferno/tick/intro/
#
# 開幕時の動作。
#
# @within function asset:mob/0311.blazing_inferno/tick/

# 着地時の演出
    execute if score @s General.Mob.Tick matches 5 at @e[type=marker,tag=8N.ModelLocator.RightHand,sort=nearest,limit=1] run function asset:mob/0311.blazing_inferno/tick/intro/vfx/knuckle

# ある程度経ったらこっちを向くようになる
    execute if score @s General.Mob.Tick matches 25 run tag @s add 8N.PlayerFacing

# マッスルポーズで大爆発
    execute if score @s General.Mob.Tick matches 30 positioned ^ ^ ^-3 run function asset:mob/0311.blazing_inferno/tick/intro/vfx/muscle

# 戦闘開始
    execute if score @s General.Mob.Tick matches 50 run function asset:mob/0311.blazing_inferno/tick/intro/battle_start
