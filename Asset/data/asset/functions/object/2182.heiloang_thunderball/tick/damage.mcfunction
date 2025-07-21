#> asset:object/2182.heiloang_thunderball/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2182.heiloang_thunderball/tick/

# 対象プレイヤーにタグを付与
    scoreboard players operation $TempUserID Temporary = @s 2182.PlayerId
    execute as @a if score @s UserID = $TempUserID Temporary run tag @s add 2182.TargetPlayer

# 氷柱ヒット判定
    execute at @p[tag=2182.TargetPlayer] if entity @e[type=item_display,tag=2180.Pillar,distance=..4] run tag @s add 2182.Hit
    execute if entity @s[tag=2182.Hit] at @p[tag=2182.TargetPlayer] run tag @e[type=item_display,tag=2180.Pillar,sort=nearest,limit=1] add 2182.Hit

# プレイヤーが一定範囲内に居ない場合、そのまま消去
    execute unless entity @p[tag=2182.TargetPlayer,distance=..80] run function asset:object/2182.heiloang_thunderball/tick/kill

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute if entity @s[tag=!2182.Hit] at @p[tag=2182.TargetPlayer] as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function api:damage/
    function api:damage/reset

# 演出
    execute positioned as @p[tag=2182.TargetPlayer] run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0.7
    data modify storage api: Argument.ID set value 2120
    execute if entity @s[tag=2182.Hit] positioned as @e[type=item_display,tag=2180.Pillar,tag=2182.Hit] positioned ~ ~2 ~ run function api:object/summon
    execute if entity @s[tag=!2182.Hit] positioned as @p[tag=2182.TargetPlayer] run function api:object/summon

# 終了
    function asset:object/2182.heiloang_thunderball/tick/kill
