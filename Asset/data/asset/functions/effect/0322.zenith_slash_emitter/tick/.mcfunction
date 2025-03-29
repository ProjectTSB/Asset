#> asset:effect/0322.zenith_slash_emitter/tick/
#
# オブジェクトID:1132を前方に連射する。エフェクトなのかな…コレ？
#
# @within function asset:effect/0322.zenith_slash_emitter/_/tick

#> SpreadLib
# @private
#declare tag SpreadMarker

# サウンド
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.7 1
    playsound ogg:mob.breeze.shoot player @a ~ ~ ~ 0.7 2

# オブジェクトのデータを設定しておく
    data modify storage api: Argument.ID set value 1132
    execute store result storage api: Argument.FieldOverride.Damage int 1 run random value 300..400
    #data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    data modify storage api: Argument.FieldOverride.Range set value 50
    data modify storage api: Argument.FieldOverride.Speed set value 5
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID

# 前方拡散を行い、オブジェクトを召喚する
    # 拡散させるEntityを召喚する。ちょっと高めの位置に出てくる。
        execute positioned ~ ~2 ~ positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    # 拡散度の設定
        data modify storage lib: Argument.Distance set value 0.5
        data modify storage lib: Argument.Spread set value 4
    # ちょっと上の位置から拡散
        execute as @e[type=marker,tag=SpreadMarker,distance=..100,limit=1] run function lib:forward_spreader/circle
    # 拡散が終わったマーカーの位置に、プレイヤーと同じ向きで召喚
        execute at @e[type=marker,tag=SpreadMarker,distance=..100,limit=1] rotated as @s run function api:object/summon
    # リセット
        kill @e[type=marker,tag=SpreadMarker,distance=..100,limit=1]
