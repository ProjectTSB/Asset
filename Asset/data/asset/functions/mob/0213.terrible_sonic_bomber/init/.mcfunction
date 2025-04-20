#> asset:mob/0213.terrible_sonic_bomber/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/213/init

# AJロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_terrible_sonic_bomber",Active:true}]
    function asset:datapack/set_activation_state


#> prv
# @private
    #declare score_holder $initial_motion_end_time

#モブの見た目をライドする
#    アニジャバのsummonを実行
#    アニジャバのrootをファントムに乗せる
# TODO:召喚時につけなきゃいけないタグを確認する


# super
    function asset:mob/super.init

#ファントムのNBTをいじる
    data modify entity @s Size set value 16

#モブのデータに以下の情報を記録
    # 初期モーション終了時間を記録
    execute store result score $initial_motion_end_time Temporary run time query gametime
    execute store result storage asset:context this.initial_motion_end_time int 1 run scoreboard players add $initial_motion_end_time Temporary 15

    # 次回攻撃時刻を記録
    execute store result storage asset:context this.next_attack_time int 1 run scoreboard players add $initial_motion_end_time Temporary 120

# 旋回中心座標を示すマーカーを置く
    summon marker ~ ~ ~ {Tags:["Uninterferable","5X.Centre"]}

# 対空砲召喚
    data modify storage api: Argument.ID set value 2088
    function api:object/summon

# 対空砲が埋まっても暗くならないようにする
    execute as @e[type=item_display,tag=PatriotLauncherRoot,distance=..1] on passengers run data modify entity @s brightness set value {sky:15,block:15}

#タイトルで何をやるか説明
    title @a[distance=..128] title {"text":"対空砲を守り敵を迎撃せよ","color":"white","bold":true}

# 対空砲について説明を表示
    tellraw @a[distance=..128] [{"translate": "[TIPS]対空砲は自動で天使を攻撃します。破壊された場合自動で修理され、プレイヤーは%1$sで修理の支援をできます。","with":[{"keybind":"key.sneak"}],"color": "yellow"}]

# 地面の座標を覚えておく
    data modify storage asset:context this.GroundPos set from entity @e[type=marker,tag=5X.Centre,distance=..128,limit=1] Pos[1]
        #tellraw @a[distance=..128] [{"nbt": "this.GroundPos", "storage": "asset:context"}]


# reset
    scoreboard players reset $initial_motion_end_time Temporary
