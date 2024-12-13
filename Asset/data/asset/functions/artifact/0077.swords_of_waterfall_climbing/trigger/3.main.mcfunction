#> asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0077.swords_of_waterfall_climbing/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $VectorY

# プレイヤーのベクトルを取得
    function api:player_vector/get
    execute store result score $VectorY Temporary run data get storage api: Return.Vector[1] 100

# 上昇しながらの攻撃
    execute if score $VectorY Temporary matches 1.. at @e[type=#lib:living,tag=Victim,distance=..6] run function asset:artifact/0077.swords_of_waterfall_climbing/trigger/attack/upper

# 落下しながらの攻撃
    execute if score $VectorY Temporary matches ..-8 at @e[type=#lib:living,tag=Victim,distance=..6] run function asset:artifact/0077.swords_of_waterfall_climbing/trigger/attack/dragon_strike/

# Y軸移動なしの攻撃
    execute if score $VectorY Temporary matches -7..0 at @e[type=#lib:living,tag=Victim,distance=..6] run function asset:artifact/0077.swords_of_waterfall_climbing/trigger/attack/neutral

# リセット
    scoreboard players reset $VectorY Temporary
