#> asset:mob/0214.drone/tick/suicide
#
# 
#
# @within function asset:mob/0214.drone/tick/

# 周囲の敵と対空砲にダメージ
execute unless entity @s[tag=5Y.Suicide] run function asset:mob/0214.drone/damage

# 自爆したことのフラグ付け
tag @s add 5Y.Suicide

# エンジン音停止
stopsound @a[distance=..128] hostile minecraft:entity.bee.loop

function api:mob/kill
