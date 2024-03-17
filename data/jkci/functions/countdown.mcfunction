schedule function jkci:countdown 1s replace
execute if score #state jkci.mem matches 0 run gamemode adventure @a
execute if score #state jkci.mem matches 1 run scoreboard players remove #time_ jkci.mem 1
execute if score #state jkci.mem matches 1 run title @a[gamemode=survival] actionbar ["",{"text": "剩余时间：","color": "gold"},{"score":{"name": "#time_","objective": "jkci.mem"},"color": "yellow"},{"text": "秒","color": "gold"}]
execute if score #state jkci.mem matches 1 if score #time_ jkci.mem matches ..0 run function jkci:end
execute if score #state jkci.mem matches 1 if score #night_vision jkci.mem matches 1 run effect give @a[gamemode=survival] night_vision 137 0 true