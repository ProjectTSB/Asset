#> asset:object/2086.storm_shadow_cluster/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2086/kill

# hit entityとhit block両方で同じ処理書くのも冗長なのでここで書く
# 音
    playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..32] ~ ~ ~ 1 1 1

# particle
    particle minecraft:large_smoke ~ ~0.7 ~ 2.5 1.4 2.5 0.1 400 normal

# クラスター弾頭召喚
    data modify storage asset:temp args.x set from storage asset:context this.target_pos[0]
    data modify storage asset:temp args.y set from storage asset:context this.GroundPos
    data modify storage asset:temp args.z set from storage asset:context this.target_pos[2]
    function asset:object/2086.storm_shadow_cluster/kill/summon_cluster.m with storage asset:temp args

# reset
    data remove storage asset:temp args

# 消滅
    kill @s
