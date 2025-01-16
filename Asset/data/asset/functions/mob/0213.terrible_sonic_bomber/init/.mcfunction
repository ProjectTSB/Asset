#> asset:mob/0213.terrible_sonic_bomber/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/213/init

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
data modify entity @s Size set value 32

#モブのデータに以下の情報を記録
   # 初期モーション終了時間を記録
   execute store result score $initial_motion_end_time Temporary run time query gametime
   execute store result storage asset:context this.initial_motion_end_time int 1 run scoreboard players add $initial_motion_end_time Temporary 30

   # 次回攻撃時刻を記録
   execute store result storage asset:context this.next_attack_time int 1 run scoreboard players add $initial_motion_end_time Temporary 120

# 旋回中心座標を示すマーカーを置く
summon marker ~ ~ ~ {Tags:["Uninterferable","5X.Centre"]}

# 対空砲召喚
data modify storage api: Argument.ID set value 2088
function api:object/summon


#タイトルで何をやるか説明
title @a[distance=..128] title {"text":"対空砲を守り敵を迎撃せよ","color":"white","bold":true}


# reset
scoreboard players reset $initial_motion_end_time Temporary
