#> asset:mob/0393.labyria_first/ai/animation/2_0_sw_move_start/end
#
# 終了処理（移動と技決定）
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/2_0_sw_move_start/
#   asset:mob/0393.labyria_first/ai/animation/2_1_ms_move_start/
#   asset:mob/0393.labyria_first/ai/animation/99_0_sw_stan/end

# スコアをリセットする
    scoreboard players reset @s AZ.AnimationNum
    scoreboard players set @s AZ.AnimationTick 0

# ストレージを用意する
    data modify storage asset:temp AZ.SKill set value []

# ノーマルスキルを追加
    execute if entity @s[tag=!AZ.SuperiorSkill] run data modify storage asset:temp AZ.SKill set value [30,40,50,60,70]

# ハードスキルを追加
    execute if entity @s[tag=AZ.SuperiorSkill] run data modify storage asset:temp AZ.SKill set value [80,90,100,110,120,130,140]

# データシャッフル
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:temp AZ.SKill
    function lib:array/shuffle

# 1番目のデータをスコアに代入
    execute store result score @s AZ.AnimationNum run data get storage lib: Array[0]
    data modify storage asset:context this.AnimationNum set from storage lib: Array[0]

# セッション閉じる
    function lib:array/session/close

# 上位スキルタグの切り替え
    execute if score @s AZ.AnimationNum matches 30..70 run tag @s add AZ.SuperiorSkill
    execute if score @s AZ.AnimationNum matches 80..140 run tag @s remove AZ.SuperiorSkill

# マーカーを用意する
    tp 0-0-0-0-0 ~ ~ ~ ~ ~

# スキル14番のみ中央に移動
    execute if score @s AZ.AnimationNum matches 140 run tp 0-0-0-0-0 @e[type=marker,tag=AZ.Marker.SummonPoint,distance=..100,sort=nearest,limit=1]

# 移動位置を決める
    scoreboard players set $AZ.Temp Temporary 0
    execute unless score @s AZ.AnimationNum matches 140 run function asset:mob/0393.labyria_first/ai/animation/2_0_sw_move_start/move/loop

# 移動する
    tp @s 0-0-0-0-0
    execute at @s rotated ~ 0 facing entity @p[tag=!PlayerShouldInvulnerable,distance=..100] feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0
    function asset:mob/0393.labyria_first/ai/general/3.teleport_effect/

# スキルによってAnimationNumを変更
    execute if score @s AZ.AnimationNum matches 30 run scoreboard players set @s AZ.AnimationNum 23
    execute if score @s AZ.AnimationNum matches 40 run scoreboard players set @s AZ.AnimationNum 22
    execute if score @s AZ.AnimationNum matches 50 run scoreboard players set @s AZ.AnimationNum 22
    execute if score @s AZ.AnimationNum matches 60 run scoreboard players set @s AZ.AnimationNum 22
    execute if score @s AZ.AnimationNum matches 70 run scoreboard players set @s AZ.AnimationNum 22
    execute if score @s AZ.AnimationNum matches 80 run scoreboard players set @s AZ.AnimationNum 22
    execute if score @s AZ.AnimationNum matches 90 run scoreboard players set @s AZ.AnimationNum 22
    execute if score @s AZ.AnimationNum matches 100 run scoreboard players set @s AZ.AnimationNum 22
    execute if score @s AZ.AnimationNum matches 110 run scoreboard players set @s AZ.AnimationNum 22
    execute if score @s AZ.AnimationNum matches 120 run scoreboard players set @s AZ.AnimationNum 23
    execute if score @s AZ.AnimationNum matches 130 run scoreboard players set @s AZ.AnimationNum 23
    execute if score @s AZ.AnimationNum matches 140 run scoreboard players set @s AZ.AnimationNum 22

# スコアとストレージリセット
    scoreboard players reset $AZ.Temp Temporary
    data remove storage asset:temp AZ.SKill

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
