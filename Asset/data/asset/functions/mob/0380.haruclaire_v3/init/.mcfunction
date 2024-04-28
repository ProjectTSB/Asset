#> asset:mob/0380.haruclaire_v3/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/0380.haruclaire_v3/_/init

# Animated Javaモデル召喚
    function animated_java:haruclaire_v3/summon

# モデルにidleアニメーションを再生させる
    execute as @e[tag=AK.ModelRoot] run function animated_java:haruclaire_v3/animations/1_0_rod_idle/play
