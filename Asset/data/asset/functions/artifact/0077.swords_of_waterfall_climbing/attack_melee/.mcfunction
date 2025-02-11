#> asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/77/attack_melee/

#> Private
# @private
    #declare score_holder $VectorY

# プレイヤーのベクトルを取得
    function api:player_vector/get
    execute store result score $VectorY Temporary run data get storage api: Return.Vector[1] 100

# 上昇しながらの攻撃
    execute if score $VectorY Temporary matches 1.. at @e[type=#lib:living,tag=Victim,distance=..6] run function asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/attack/upper

# 落下しながらの攻撃
    execute if score $VectorY Temporary matches ..-8 at @e[type=#lib:living,tag=Victim,distance=..6] run function asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/attack/dragon_strike/

# Y軸移動なしの攻撃
    execute if score $VectorY Temporary matches -7..0 at @e[type=#lib:living,tag=Victim,distance=..6] run function asset:artifact/0077.swords_of_waterfall_climbing/attack_melee/attack/neutral

# リセット
    scoreboard players reset $VectorY Temporary
