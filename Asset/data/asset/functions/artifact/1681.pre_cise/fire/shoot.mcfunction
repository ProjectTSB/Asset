#> asset:artifact/1681.pre_cise/fire/shoot
#
# big_preciseから、射程20mの弾を1発発射し、弾道のビームを召喚する
# 向きは発射時点で狙っている敵の目 (いなければ所有者の目線方向) に取り直し、big_preciseのRotationは使わない
#
# @input as big_precise at big_precise
# @within function asset:artifact/1681.pre_cise/trigger/3.main

# 発射演出
    playsound entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 0.3 2
    playsound entity.firework_rocket.blast player @a[distance=..16] ~ ~ ~ 0.5 1.5

# 所有者が狙う敵にPreCise.Aimedを付ける
    execute as @p[tag=this,distance=..32] run function asset:artifact/1681.pre_cise/fire/mark_aim

# 狙う敵の目へ向けて撃つ 狙う敵がいなければ所有者の目線方向へ撃つ
    execute if entity @e[type=#lib:living_without_player,tag=PreCise.Aimed,distance=..32,limit=1] facing entity @e[type=#lib:living_without_player,tag=PreCise.Aimed,distance=..32,limit=1] eyes run function asset:artifact/1681.pre_cise/fire/launch
    execute unless entity @e[type=#lib:living_without_player,tag=PreCise.Aimed,distance=..32,limit=1] rotated as @p[tag=this,distance=..32] run function asset:artifact/1681.pre_cise/fire/launch

# リセット
    tag @e[type=#lib:living_without_player,tag=PreCise.Aimed,distance=..32] remove PreCise.Aimed
