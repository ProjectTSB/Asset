#> asset:mob/0175.queen_bee/tick/skill/tackle_formation/set_formation
#
# 隊列を組む
#
# @within function asset:mob/0175.queen_bee/tick/skill/tackle_formation/

#> Private
# @private
    #declare tag TargetBee

# 自身のMobUUIDと同じQueenIDを持つハチ(ID:429)にTagを付与
    execute as @e[type=zombie,scores={MobID=429},distance=..30] if score @s 4V.QueenID = @e[type=ravager,tag=this,distance=..0.01,sort=nearest,limit=1] MobUUID run tag @s add TargetBee

# ハチたちのGeneral.Mob.Tickを調整しておく
    scoreboard players set @e[type=zombie,tag=TargetBee,scores={4V.Count=1..2},distance=..30] General.Mob.Tick -5
    scoreboard players set @e[type=zombie,tag=TargetBee,scores={4V.Count=3..4},distance=..30] General.Mob.Tick -8
    scoreboard players set @e[type=zombie,tag=TargetBee,scores={4V.Count=5..6},distance=..30] General.Mob.Tick -11

# 隊列を組む
    tp @e[type=zombie,tag=TargetBee,scores={4V.Count=1},distance=..30] ^2.5 ^0.5 ^ ~ ~
    tp @e[type=zombie,tag=TargetBee,scores={4V.Count=2},distance=..30] ^-2.5 ^0.5 ^ ~ ~
    tp @e[type=zombie,tag=TargetBee,scores={4V.Count=3},distance=..30] ^4.0 ^0.5 ^ ~ ~
    tp @e[type=zombie,tag=TargetBee,scores={4V.Count=4},distance=..30] ^-4.0 ^0.5 ^ ~ ~
    tp @e[type=zombie,tag=TargetBee,scores={4V.Count=5},distance=..30] ^5.5 ^0.5 ^ ~ ~
    tp @e[type=zombie,tag=TargetBee,scores={4V.Count=6},distance=..30] ^-5.5 ^0.5 ^ ~ ~

# リセット
    tag @e[type=zombie,tag=TargetBee,distance=..30] remove TargetBee
