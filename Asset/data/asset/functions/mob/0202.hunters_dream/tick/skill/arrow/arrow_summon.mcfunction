#> asset:mob/0202.hunters_dream/tick/skill/arrow/arrow_summon
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/skill/arrow/

# 演出
    playsound entity.arrow.shoot hostile @a ~ ~ ~ 1 1
# 矢を召喚する
    data modify storage api: Argument.ID set from storage asset:context this.Arrow.ID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Arrow.Damage
    data modify storage api: Argument.FieldOverride.StepPerTick set from storage asset:context this.Arrow.StepPerTick
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# Hard以下で視点先へ発射、Blessless以上でプレイヤーの方向へ発射
    execute if predicate api:global_vars/difficulty/max/2_hard anchored eyes positioned ^ ^ ^ run function api:object/summon
    execute if predicate api:global_vars/difficulty/min/3_blessless anchored eyes positioned ^ ^ ^ facing entity @p[gamemode=!spectator,distance=..20] eyes run function api:object/summon
