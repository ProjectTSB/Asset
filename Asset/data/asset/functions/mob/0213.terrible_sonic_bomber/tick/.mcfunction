#> asset:mob/0213.terrible_sonic_bomber/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/213/tick

#> prv
# @private
   #declare score_holder $current_gametime
   #declare score_holder $initial_motion_end_time

# 現在時間を記録
execute store result score $current_gametime Temporary run time query gametime


# 初期モーション終了時間前の場合
#     上へゆっくり昇っていく
execute store result score $initial_motion_end_time Temporary run data get storage asset:context this.initial_motion_end_time 
execute if score $initial_motion_end_time Temporary > $current_gametime Temporary run function asset:mob/0213.terrible_sonic_bomber/tick/initial_motion


# 初期モーション終了時間ぴったり
#     モデルを表示
#  TBD

# それ以降
# 巡行移動モーション
execute if score $initial_motion_end_time Temporary < $current_gametime Temporary run function asset:mob/0213.terrible_sonic_bomber/tick/cruise_motion

# 
#     座標が攻撃準備位置だった場合
#         攻撃武器選択
#         攻撃開始距離選択
#         攻撃対象選択
#         攻撃実行

# reset
scoreboard players reset $initial_motion_end_time Temporary
scoreboard players reset $current_gametime Temporary
