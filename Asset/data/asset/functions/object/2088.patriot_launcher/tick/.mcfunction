#> asset:object/2088.patriot_launcher/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2088/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    # kill @s[scores={General.Object.Tick=1000..}]

修理されていた場合
　向きを敵の方へ向く
　次の発車時間が来ているか確認
　来ていた場合
　　ミサイル発射
　来ていない場合
　　なにもしない

修理されていない場合
　修理値をｎ増加
　プレイヤーが修理中の場合修理値をn+m*p増加
　修理値ｇはmaxになったら修理状態へ戻す
