#> asset:mob/1004.tultaria/tick/void/death/damage
#
# ダメージ、というか死亡処理
#
# @within function asset:mob/1004.tultaria/tick/void/death/

# サウンド: 実行者にしか聞こえない
    playsound ogg:block.respawn_anchor.deplete2 hostile @s ~ ~ ~ 5 1
    playsound ogg:ambient.cave.cave1 hostile @s ~ ~ ~ 5 0.5
    playsound ogg:ambient.cave.cave1 hostile @s ~ ~ ~ 5 0.7

# 致死ダメージ
    data modify storage api: Argument.Damage set value 9999.0f
# 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
# 死亡メッセージ
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは虚空へと消えていった…","with":[{"selector":"@s"}]}]']
# 補正functionを実行
    execute as @e[type=wither_skeleton,tag=RW.This,distance=..128,sort=nearest,limit=1] run function api:damage/modifier
# 対象
    execute as @s[tag=!PlayerShouldInvulnerable] run function api:damage/
# リセット
    function api:damage/reset
