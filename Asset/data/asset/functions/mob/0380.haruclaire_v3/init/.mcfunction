#> asset:mob/0380.haruclaire_v3/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/0380.haruclaire_v3/_/init

# Animated Javaモデル召喚
    function animated_java:haruclaire_v3/summon

# TODO：以下の処理はいずれ登場アニメーションに置換
# デバッグ：待機開始
    tag @s add AK.Skill.Rod.Idle
