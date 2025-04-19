#> asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_3/slash_shot
#
# 斬撃ショットを放つ
#
# @within function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_3/**

# 調整担当へのメモ:
# 近接攻撃部分と、この発射体が両方当たることを考慮したダメージ値ですが、どちらかといえばこの発射体のほうがダメージが高いです。
# …が、それはそれでMP消費なしでとんでも威力の中距離攻撃を撃ててしまうので、調整はお任せします。

# 見た目の角度以外を指定した状態で召喚
    # オブジェクトのID指定
        data modify storage api: Argument.ID set value 1131
    # 発射体の設定: ダメージ
        execute store result storage api: Argument.FieldOverride.Damage int 1 run random value 180..240
    # 発射体の設定: 飛距離(飛距離1につき0.5進みます)
        data modify storage api: Argument.FieldOverride.Range set value 35
    # 発射体の設定: 弾速(0.5にここの数値を掛けたぶんの距離を1tickで進みます)
        data modify storage api: Argument.FieldOverride.Speed set value 5
    # 発射体の設定: 持ち主のID
        execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    # 召喚を確定
        execute positioned ^ ^ ^1 positioned ~ ~-0.5 ~ run function api:object/summon
