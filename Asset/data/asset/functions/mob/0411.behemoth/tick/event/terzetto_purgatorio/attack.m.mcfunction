#> asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack.m
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/

# 線を消去
    $execute positioned ^$(posx) ^$(posy) ^$(posz) run kill @e[type=item_display,tag=2181.Line,distance=..1]

# ヒット判定を対象ごとに実行
    $execute positioned ^$(posx) ^$(posy) ^$(posz) as @a[tag=BF.FlareTarget] facing entity @s feet rotated ~ ~-0.5 run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_check_hit

# 演出
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 4 0.7
    playsound entity.wither.shoot hostile @a ~ ~ ~ 4 0.5
    playsound entity.wither.hurt hostile @a ~ ~ ~ 4 0.5

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.LockonFlare
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute store result storage api: Argument.MobUUID int 1 run scoreboard players get @e[type=item_display,tag=BF.EntityRoot,limit=1] MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=BG.Temp.AttackHit] run function api:damage/
    function api:damage/reset
    tag @a remove BF.FlareTarget
    tag @a remove BG.Temp.AttackHit
