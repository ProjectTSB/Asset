#> asset:object/1119.staff_of_the_willless_ending/tick/direction
#
#
#
# @within function asset:object/1119.staff_of_the_willless_ending/tick/

# タイトルコマンド
    title @a times 10 60 30
    title @a title [{"text":"WORLD PURIFIED","bold":true,"color":"yellow"}]

# Particle
    execute at @a run particle end_rod ~ ~1.1 ~ 0.15 0.15 0.15 2 150 force @a
# SE
    playsound ogg:random.levelup player @a ~ ~ ~ 1 0.8 1

# 神の花火（いらんかも
# ウィキ
    summon firework_rocket 3060 117 -501 {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Flicker:1b,Trail:1b,Colors:[I;8913151],FadeColors:[I;13391103]}]}}}}
# ウルバン
    summon firework_rocket 3060 117 -523 {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;16715535],FadeColors:[I;16725558]}]}}}}
# フローラ
    summon firework_rocket 3071 117 -529 {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4b,Flicker:1b,Trail:1b,Colors:[I;16774912],FadeColors:[I;6749952]}]}}}}
# ルーモア
    summon firework_rocket 3082 117 -501 {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:2b,Colors:[I;16774912]}]}}}}
# ニャプトフ
    summon firework_rocket 3082 117 -523 {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4b,Colors:[I;16751831]}]}}}}
