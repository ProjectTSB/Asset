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


#ファントムのNBTをいじる
data modify entity @s Size set value 32

#モブのデータに以下の情報を記録

# 経由座標
data modify storage asset:context this.Waypoints set value [[-3357,190,-897],[-3557,190,-897],[-3457,190,-797],[-3457,190,-997]]

# 現在の目標座標を初期設定
data modify storage asset:context this.CurrentWaypoint set from storage asset:context this.Waypoints[0]
data modify storage asset:context this.CurrentWaypointIndex set value 0

# 初期モーション終了時間を記録
execute store result score $initial_motion_end_time Temporary run time query gametime
execute store result storage asset:context this.initial_motion_end_time int 1 run scoreboard players add $initial_motion_end_time Temporary 30

# 旋回中心座標を示すマーカーを置く
summon marker ~ ~ ~ {Tags:["Uninterferable","5X.Centre"]}

#タイトルで何をやるか説明



# reset
scoreboard players reset $initial_motion_end_time Temporary
