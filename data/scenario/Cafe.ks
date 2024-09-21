[_tb_system_call storage=system/_Cafe.ks]

[cm  ]
[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="cafe1.webp"  ]
[tb_show_message_window  ]
[jump  storage="Cafe.ks"  target="*WithNick"  cond="f.Nick_Cafe==1"  ]
[jump  storage="Cafe.ks"  target="*WithMia"  cond="f.Mia_Cafe==1"  ]
[jump  storage="Cafe.ks"  target="*Alone"  ]
*WithNick

[chara_show  name="Nick"  time="1000"  wait="true"  storage="chara/5/Nick_.png"  width="377"  height="615"  left="910"  top="150"  reflect="true"  ]
[tb_start_text mode=1 ]
В три часа Ник, как и обещал (в этот раз без опозданий), заехал за мной.[p]
Кафе оказалось уютным, залитым солнечным светом и пропитанным ароматами кофе и выпечки.[p]
Выбрав пирожные с витрины, мы сели за столик в ожидании наших напитков.[p]
#



[_tb_end_text]

[tb_start_text mode=4 ]
Ник забавно лохматил рукой волосы, заметно смущаясь.
А я...
[_tb_end_text]

[glink  color="btn_22_blue"  storage="Cafe.ks"  size="20"  text="Разглядывала&nbsp;его"  x="682"  y="380"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  target="*LookAtNick"  ]
[glink  color="btn_22_green"  storage="Cafe.ks"  size="20"  text="Смотрела&nbsp;по&nbsp;сторонам"  target="*CafeClue"  x="270"  y="380"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  ]
[s  ]
*LookAtNick

[tb_eval  exp="f.Nick+=1"  name="Nick"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Почему-то только сейчас я заметила, какие невероятно голубые у Ника глаза.[p]
Как небо безоблачным летним днём. [p]
А эта прядка, что постоянно падает на лоб? Так и хочется самой её смахнуть.[p]
Я опустила взгляд в тарелку с пирожным, понимая, что начинаю краснеть.[p]
Спустя пару минут там принесли кофе, а с ним как-то сама собой нашлась и тема для разговора.[p]
Болтая обо всём на свете, изредка переглядывась и смущённо улыбаясь друг другу, мы просидели в кафе до самого вечера.[p]
[_tb_end_text]

[jump  storage="Cafe.ks"  target="*AfterCafe"  ]
*WithMia

[chara_show  name="Mia"  time="1000"  wait="true"  storage="chara/6/Mia_.png"  width="378"  height="616"  left="910"  top="130"  reflect="false"  ]
[tb_start_text mode=1 ]
Как и договорились, мы встретились с Мией в три часа.[p]
Кафе оказалось уютным, залитым солнечным светом и пропитанным ароматами кофе и выпечки.[p]
Выбрав пирожные с витрины, мы сели за столик в ожидании наших напитков.[p]
Мия неуверенно начала рассказывать о своих планах на лето и о том, как важно ей хорошо сдать все переводные экзамены.[p]
#
[_tb_end_text]

[tb_start_text mode=4 ]
Я тем временем...
[_tb_end_text]

[glink  color="btn_22_lime"  storage="Cafe.ks"  size="20"  text="Внимательно&nbsp;слушала"  x="740"  y="320"  width="300"  height="25"  _clickable_img=""  target="*ListenMia"  glink_sm="true"  ]
[glink  color="btn_22_green"  storage="Cafe.ks"  size="20"  text="Смотрела&nbsp;по&nbsp;сторонам"  target="*CafeClue"  x="162"  y="322"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  ]
[s  ]
*ListenMia

[tb_eval  exp="f.Mia+=1"  name="Mia"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Мне действительно было любопытно. А заметив мой интерес, Мия постепенно начала говорить более уверенно.[p]
Плавно разговор перешёл на хобби, любимые книги и фильмы, и тут глаза Мии по-настоящему заблестели.[p]
Так, болтая обо всём на свете, обсуждая популярное кино и делясь впечатлениями от прочитанных историй, мы просидели до самого вечера.[p]
#
[_tb_end_text]

[jump  storage="Cafe.ks"  target="*AfterCafe"  ]
*Alone

[chara_show  name="Криста"  time="1000"  wait="true"  storage="chara/1/Krista_.png"  width="399"  height="655"  left="919"  top="120"  reflect="false"  ]
[tb_start_text mode=1 ]
В субботу, заскочив по делам в пару магазинов, я решила зайти в новое кафе, что маняще сияло витриной.[p]
Кафе оказалось уютным, залитым солнечным светом и пропитанным ароматами кофе и выпечки.[p]
Выбрав пирожное с витрины и заказав напиток, я села за столик возле окна. [p]
#
[_tb_end_text]

*CafeClue

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="street.webp"  ]
[chara_show  name="Joeh"  time="1000"  wait="true"  storage="chara/2/Joeh_.png"  width="370"  height="591"  left="0"  top="150"  reflect="false"  ]
[tb_show_message_window  ]
[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Взглянув в окно, я заметила возле соседнего здания Джо.[p]
Он разговаривал с каким-то незнакомым мужчиной в кофте с капюшоном.[p]
Вдруг мужчина быстро оглянулся, протянул Джо пакет, который тот спрятал в рюкзак, и спешно скрылся за углом.[p]
Я несколько раз хлопнула глазами, пытаясь осмыслить увиденное.[p]
Сцена, несомненно, была довольно подозрительной...[p]
#
[_tb_end_text]

*AfterCafe

[tb_hide_message_window  ]
[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="Room1.webp"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Вернувшись домой, я нехотя открыла учебники.[p]
Как бы ни хотелось отдохнуть ещё немного, следовало приниматься за домашнее задание.[p]
Из гостиной, где родители смотрели телевизор, доносился голос диктора.[p]

[_tb_end_text]

[tb_start_text mode=1 ]
Я...[p]
[_tb_end_text]

[glink  color="btn_22_green"  storage="Cafe.ks"  size="20"  text="прислушалась"  x="659"  y="310"  width="300"  height="25"  _clickable_img=""  target="*ListenTV"  glink_sm="true"  ]
[glink  color="btn_22_white"  storage="Cafe.ks"  size="20"  text="надела&nbsp;наушники"  target="*Headphones"  x="340"  y="310"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  ]
[s  ]
*ListenTV

[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Диктор:
... несмотря на запрет использования ZИ несовершеннолетними участились случаи незаконных продаж данного вещества в учебных заведениях.[p]
Поскольку одним из последствий употребления ZИ является снижение уровня тревожности, школьники приобретают его в периоды экзаменов, рассчитывая, очевидно, успокоить свои нервы... [p]
Напоминаем, что условно-легализованный слабый наркотический препарат ZИ допустим к применению с 30 лет.[p]
В несовершеннолетнем  возрасте он вызывает привыкание и хуже воспринимается организмом ввиду неокрепшей нервной системы...[p]
#

[_tb_end_text]

[tb_start_text mode=1 ]
Я нахмурилась и...[p]
[_tb_end_text]

[glink  color="btn_22_green"  storage="Cafe.ks"  size="20"  text="продолжила&nbsp;слушать"  x="659"  y="310"  width="300"  height="25"  _clickable_img=""  target="*ListenTV2"  glink_sm="true"  ]
[glink  color="btn_22_white"  storage="Cafe.ks"  size="20"  text="надела&nbsp;наушники"  target="*Headphones"  x="340"  y="310"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  ]
[s  ]
*ListenTV2

[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
#Диктор:
Препарат имеет характерный ярко-зелёный оттенок, что позволят довольно легко идентифицировать его. [p]
Обратите внимание ваших детей на опасность употребления и распространения ZИ...[p]
#
[_tb_end_text]

*Headphones

[tb_start_text mode=1 ]
Я надела наушники с тихой музыкой без слов, заглушающей внешние звуки, и погрузилась в домашнюю работу...[p]
[_tb_end_text]

[jump  storage="Corner.ks"  target=""  ]
