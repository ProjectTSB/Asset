#> asset:effect/0322.zenith_slash_emitter/tick/
#
# オブジェクトID:1132を前方に連射する。エフェクトなのかな…コレ？
#
# @within function asset:effect/0322.zenith_slash_emitter/_/tick

# 調整担当へのメモ:
# わけあってこんなところにダメージを書き込む羽目になっています。
# 10発の飛び道具を発射します。発射位置がめちゃくちゃ散るので、一人の敵に全弾当たることはあんまりないはず。
# ただ、ヒット判定が巨大な敵…ヘイローンなどには大変なダメージが出る可能性があります。
# ヘルスを大きく削るという行動に説得力をもたせるために出る技ですが、ダメージはそこまで高くなくていいかも。

#> SpreadLib
# @private
#declare tag SpreadMarker

# サウンド
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.7 1
    playsound ogg:mob.breeze.shoot player @a ~ ~ ~ 0.7 2

# 見た目の角度以外を指定した状態で召喚
    # オブジェクトのID指定
        data modify storage api: Argument.ID set value 1132
    # 発射体の設定: ダメージ
        execute store result storage api: Argument.FieldOverride.Damage int 1 run random value 200..250
    # 発射体の設定: 飛距離(飛距離1につき0.5進みます)
        data modify storage api: Argument.FieldOverride.Range set value 50
    # 発射体の設定: 弾速(0.5にここの数値を掛けたぶんの距離を1tickで進みます)
        data modify storage api: Argument.FieldOverride.Speed set value 5
    # 発射体の設定: 持ち主のID
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
