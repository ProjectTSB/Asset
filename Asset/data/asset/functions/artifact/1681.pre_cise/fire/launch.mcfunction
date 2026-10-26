#> asset:artifact/1681.pre_cise/fire/launch
#
# 実行位置から実行向きへ、射程20mの弾を1発発射し、弾道のビームを召喚する
#
# @input as big_precise at big_precise (発射する向きを向く)
# @within function asset:artifact/1681.pre_cise/fire/shoot

# 進んだ回数を初期化し、弾を進める再帰を開始する (最初の呼出しで0になる)
    scoreboard players set $Steps Temporary -1
    function asset:artifact/1681.pre_cise/fire/bullet

# 弾道のビームを召喚する (長さは弾の到達距離 原点は発射位置の端から前方へ伸びる)
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.2f,0f,0.2f],Color:16711680,AppearInterpolation:1,DisappearTick:2,DisappearInterpolation:2,LifeTime:8}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 0.5 run scoreboard players get $Steps Temporary
    function api:object/summon

# リセット
    tag @s remove PreCise.Landing
    scoreboard players reset $Steps Temporary
