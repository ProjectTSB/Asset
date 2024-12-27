#> asset:object/2092.ghost_bullet/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2092/kill

# 演出
    playsound ogg:mob.vex.idle1 hostile @a ~ ~ ~ 0.8 0.5 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset

# 消滅
    kill @s
