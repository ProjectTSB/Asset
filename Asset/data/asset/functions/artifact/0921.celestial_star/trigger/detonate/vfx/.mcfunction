#> asset:artifact/0921.celestial_star/trigger/detonate/vfx/
#
# 起爆の演出
# 強化段階が最大のときは、星座と雷鳴を加える
#
# @within function asset:artifact/0921.celestial_star/trigger/detonate/positioned.m

# 星の位置で一度光り、全方位へ光を放つ
    particle flash ~ ~ ~ 0 0 0 0 1
    function asset:artifact/0921.celestial_star/trigger/detonate/vfx/shockwave

# 上空に星雲と、星座に属さない星を描く
    function asset:artifact/0921.celestial_star/trigger/detonate/vfx/starfield/

# 最大段階では、上空に3つの星座も描く
    execute if score $921.Multiplier Temporary matches 10 run function asset:artifact/0921.celestial_star/trigger/detonate/vfx/starfield/constellations

# 音
# 余韻のチャイムは、星座に属さない星の表示が続けて鳴らす
    playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 2 1
    playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 2 1.2
    playsound block.amethyst_block.chime player @a ~ ~ ~ 2 1.6
    playsound block.amethyst_block.chime player @a ~ ~ ~ 2 2
    playsound block.amethyst_cluster.break player @a ~ ~ ~ 1.5 1.4
    playsound block.note_block.chime player @a ~ ~ ~ 1.5 2
    playsound block.respawn_anchor.deplete player @a ~ ~ ~ 2 0.9
    execute if score $921.Multiplier Temporary matches 10 run playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 0.8 1.8
