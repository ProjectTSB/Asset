#> asset:mob/0175.queen_bee/tick/skill/grandslam/block_hit
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill/grandslam/

# 演出
    particle explosion_emitter ~ ~ ~ 8 4 8 1 20
    particle flame ~ ~10 ~ 20 10 20 1 200
    particle lava ~ ~10 ~ 20 10 20 1 200
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0.5
    playsound entity.blaze.burn neutral @a ~ ~ ~ 1 0
    playsound entity.blaze.burn neutral @a ~ ~ ~ 1 1

# ダメージ
    data modify storage api: Argument.Damage set value 33.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..9] run function api:damage/
# リセット
    function api:damage/reset


# 見た目戻す
    item replace entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20052}
    data modify entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,0f]

# スコア設定
    scoreboard players set @s General.Mob.Tick 86
