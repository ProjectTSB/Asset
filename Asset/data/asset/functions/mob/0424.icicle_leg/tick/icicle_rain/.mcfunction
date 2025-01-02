#> asset:mob/0424.icicle_leg/tick/icicle_rain/
#
# 疑似つらら攻撃
#
# @within function asset:mob/0424.icicle_leg/tick/

#> 拡散用エンティティ
# @private
#declare tag SpreadMarker

# マーカーを召喚して拡散させる
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0.0d,0.0d],[5d,5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..1,limit=1] at @s run function lib:spread_entity/

# 拡散したマーカーに演出
    execute at @e[type=marker,tag=SpreadMarker,distance=..8,limit=1] run function asset:mob/0424.icicle_leg/tick/icicle_rain/vfx

# 範囲表示
    execute positioned ~ ~0.1 ~ rotated ~ 0 run function asset:mob/0424.icicle_leg/tick/icicle_rain/shape

# ダメージ設定
    data modify storage lib: Argument.Damage set value 5f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"

# 補正実行
    function lib:damage/modifier

# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function lib:damage/

# 吹き飛ばし
    data modify storage api: Argument.ID set value 17
    data modify storage api: Argument.Stack set value 5
    data modify storage api: Argument.Duration set value 5
    execute as @a[gamemode=!spectator,distance=..5] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    function lib:damage/reset
     function api:entity/mob/effect/reset
    kill @e[type=marker,tag=SpreadMarker,distance=..8,limit=1]
