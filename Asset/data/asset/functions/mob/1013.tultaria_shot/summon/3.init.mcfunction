#> asset:mob/1013.tultaria_shot/summon/3.init
#
#
#
# @within function asset:mob/1013.tultaria_shot/summon/2.summon

#> 行き先マーカーと弾速ストレージ
# @private
#declare tag FacingMarker
#declare storage rw_shotspeed:

# マーカーの方向く
    execute facing entity @e[type=marker,tag=FacingMarker,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# ストレージから速度取得
    execute store result score @s S5.Speed run data get storage rw_shotspeed: Speed