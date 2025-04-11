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
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.GrandSlam
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute if predicate api:global_vars/difficulty/max/normal as @a[tag=!PlayerShouldInvulnerable,distance=..8] run function api:damage/
    execute if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..10] run function api:damage/
# リセット
    function api:damage/reset


# 見た目戻す
    execute on passengers run data modify entity @s item.tag.CustomModelData set value 20052
    execute rotated ~ 0 run function asset:mob/0175.queen_bee/tick/common/tp/

# スコア設定
    scoreboard players set @s General.Mob.Tick 86
