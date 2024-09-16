[_tb_system_call storage=system/_scene1.ks]

[cm  ]
[tb_eval  exp="f.Clue=0"  name="Clue"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Joeh=0"  name="Joeh"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Nick=0"  name="Nick"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Mia=0"  name="Mia"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[uiVariable  uiNameDiv="_var"  color="0x000000"  fontColor="0xffffff"  fontSize="22"  uiNameVar="f.Clue"  uiName="Дедукция"  x="590"  y="80"  left="590"  top="80"  width=""  height=""  ]
[uiVariable  uiNameDiv="_varJ"  color="0x000000"  fontColor="0xe9f50a"  fontSize="22"  uiNameVar="f.Joeh"  uiName="Джо"  x="450"  y="10"  left="450"  top="10"  width=""  height=""  ]
[uiVariable  uiNameDiv="_varN"  color="0x000000"  fontColor="0x3de6f5"  fontSize="22"  uiNameVar="f.Nick"  x="590"  y="10"  left="590"  top="10"  width=""  height=""  uiName="Ник"  ]
[uiVariable  uiNameDiv="_varM"  color="0x000000"  fontColor="0x3cf536"  fontSize="22"  uiNameVar="f.Mia"  x="739"  y="10"  left="739"  top="10"  width=""  height=""  uiName="Мия"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Когда разум словно переполнен, и все события кажутся лишь бессмысленным набором фактов, лучше всего вернуться к началу...[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[bg  storage="coridor2_2.jpg"  time="1000"  method="fadeIn"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  left="929"  top="140"  width="359"  height="585"  reflect="false"  storage="chara/1/Krista_.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Меня зовут Криста. Я ученица старшей школы Винстер Хай.[p]
И эта история началась с того, что прямо в середине учебного года в нашу школу перевёлся новенький.[p]
#


[_tb_end_text]

[chara_show  name="Joeh"  time="1000"  wait="true"  left="0"  top="150"  width="369"  height="589"  reflect="false"  storage="chara/2/Joeh_.png"  ]
[tb_start_text mode=4 ]
Его звали Джо. И он сразу показался мне...

[_tb_end_text]

[glink  color="btn_22_purple"  storage="scene1.ks"  size="20"  text="симпатичным"  x="430"  y="360"  width="200"  height="25"  _clickable_img=""  target="*First_impresion_Joeh"  glink_sm="true"  ]
[glink  color="btn_22_green"  storage="scene1.ks"  size="20"  text="подозрительным"  x="650"  y="360"  width="200"  height="25"  _clickable_img=""  target="*First_impresion_Clue"  glink_sm="true"  ]
[s  ]
*First_impresion_Joeh

[tb_eval  exp="f.Joeh+=1"  name="Joeh"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Светлые волосы и голубые глаза - типичный красавчик. [p]
Поэтому я нисколько не удивилась, когда буквально через неделю Джо знала вся школа.[p]
То и дело его можно было заметить в самых разных компаниях,[p]
начиная от смущенных первогодок, с восторгом глядящих ему в рот, до выпускников, с серьёзным видом кивающих ему в ответ.[p]
#
[_tb_end_text]

[jump  storage="scene1.ks"  target="*BackpackScene"  ]
*First_impresion_Clue

[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Для новичка он как-то слишком быстро подружился со всеми одноклассниками и, более того, даже со старшими ребятами.[p]
Я частенько натыкалась на Джо в компании самых разных школьников,[p]
начиная от смущенных первогодок, с восторгом глядящих ему в рот,  до выпускников, с серьёзным видом кивающих ему в ответ.[p]
#
[_tb_end_text]

*BackpackScene

[tb_start_text mode=1 ]
Однажды перед занятиями я случайно столкнулась с Джо в коридоре.[p]
Рюкзак, который он держал в руках, упал, рассыпая по полу всё содержимое.[p]
[_tb_end_text]

[tb_start_text mode=4 ]
Я...
[_tb_end_text]

[glink  color="btn_22_black"  storage="scene1.ks"  size="20"  text="бросилась&nbsp;на&nbsp;помощь"  x="490"  y="330"  width="300"  height="25"  _clickable_img=""  target="*Backpack"  glink_sm="true"  ]
[glink  color="btn_22_black"  storage="scene1.ks"  size="20"  text="извинилась&nbsp;и&nbsp;пошла&nbsp;дальше"  x="490"  y="390"  width="300"  height="25"  _clickable_img=""  target="*Coridor"  glink_sm="true"  ]
[s  ]
*Backpack

[tb_start_text mode=4 ]
внимательно глядя на...
[_tb_end_text]

[glink  color="btn_22_green"  storage="scene1.ks"  size="20"  text="рассыпавшиеся&nbsp;вещи"  x="530"  y="465"  width="300"  height="25"  _clickable_img=""  target="*Backpack_Clue"  glink_sm="true"  ]
[glink  color="btn_22_purple"  storage="scene1.ks"  size="20"  text="лицо&nbsp;Джо"  x="525"  y="224"  width="300"  height="25"  _clickable_img=""  target="*Backpack_Joeh"  glink_sm="true"  ]
[s  ]
*Backpack_Clue

[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
Среди рассыпавшихся по полу карандашей, ручек, пары тетрадей, шоколадного батончика и каких-то мелочей[p]
я заметила странный предмет: маленький пластиковый пакетик с чем-то ярко-зелёным внутри. [p]
Не решившись расспрашивать Джо, я закончила собирать вещи и, встав, направилась дальше по коридору.[p]
#
[_tb_end_text]

[jump  storage="scene1.ks"  target="*Coridor"  ]
*Backpack_Joeh

[tb_eval  exp="f.Joeh+=1"  name="Joeh"  cmd="+="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
Заметив мой взгляд, Джо тепло улыбнулся, и я невольно расплылась в ответной улыбке.[p]
Закончив собирать вещи, я встала, и, махнув Джо на прощание, направилась дальше по коридору.[p]
#
[_tb_end_text]

*Coridor

[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="Nick"  time="1000"  wait="true"  left="0"  top="150"  width="369"  height="587"  reflect="false"  storage="chara/5/Nick_.png"  ]
[tb_start_text mode=1 ]
У окна, быстро дописывая что-то в тетрадь, стоял Ник.[p]
Не могу сказать, что мы близко дружили, скорее приятельствовали: я частенько списывала у него химию, а он у меня математику. Пару раз мы выбирались вместе в кино.[p]
#

[_tb_end_text]

[chara_show  name="Mia"  time="1000"  wait="true"  left="910"  top="130"  width="378"  height="616"  reflect="false"  storage="chara/6/Mia_.png"  ]
[tb_start_text mode=1 ]
А справа у своего шкафчика стояла Мия - моя соседка по парте. [p]
Мы практически не общались, и кроме того, что Мия левша, любит разноцветные стикеры и рисовать на полях сердечки, я вряд ли что-то могла о ней рассказать.[p]
#
[_tb_end_text]

[tb_start_text mode=4 ]
Оставалось ещё немного времени до начала урока, и я направилась...
[_tb_end_text]

[glink  color="btn_22_blue"  storage="scene1.ks"  size="20"  text="к&nbsp;Нику"  x="380"  y="410"  width="150"  height="25"  _clickable_img=""  target="*Coridor_Nick"  glink_sm="true"  ]
[glink  color="btn_22_lime"  storage="scene1.ks"  size="20"  text="к&nbsp;Мие"  x="750"  y="410"  width="150"  height="25"  _clickable_img=""  target="*Coridor_Mia"  glink_sm="true"  ]
[glink  color="btn_22_white"  storage="Project.ks"  size="20"  text="в&nbsp;класс"  x="570"  y="410"  width="150"  height="25"  _clickable_img=""  glink_sm="true"  ]
[s  ]
*Coridor_Nick

[chara_hide  name="Mia"  time="1000"  wait="true"  pos_mode="true"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  storage="chara/1/Krista_.png"  width="447"  height="730"  left="870"  top="120"  reflect="false"  ]
[tb_eval  exp="f.Nick+=1"  name="Nick"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Быстро дострочив предложение и захлопнув тетрадь, Ник обернулся ко мне с умоляющим взглядом.[p]
#Ник:
Криста, мне очень нужна твоя помощь...[p]
Я не успел вовремя сдать работу миссис Томатри, но знаю, что все работы лежат сейчас на её столе в учительской.[p]
Мне нужно быстро подложить свою тетрадь в общую стопку, пока в учительской никого нет.[p]
#
Я вздохнула, с укоризной глядя на Ника. Он не первый раз опаздывал со сдачей работ и не первый раз просил моей помощи.[p]
#
[_tb_end_text]

[tb_start_text mode=4 ]
Быстро всё обдумав, я ответила:
[_tb_end_text]

[glink  color="btn_22_black"  storage="scene1.ks"  size="20"  text="Постой&nbsp;на&nbsp;стрёме,&nbsp;я&nbsp;отнесу"  target="*HelpNick_In"  x="500"  y="350"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  ]
[glink  color="btn_22_black"  storage="scene1.ks"  size="20"  text="Отнеси&nbsp;ты,&nbsp;я&nbsp;постою&nbsp;на&nbsp;стрёме"  target="*HelpNick_Out"  x="500"  y="400"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  ]
[glink  color="btn_22_black"  storage="scene1.ks"  size="20"  text="Давай&nbsp;без&nbsp;меня"  target="*NotHelpNick"  x="500"  y="450"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  ]
[s  ]
*NotHelpNick

[tb_start_text mode=1 ]
#Ник:
Чёрт, ну ладно, сам разберусь...[p]
#
Ник взъерошил свою и без того лохматую шевелюру и умчался в направлении учительской.[p]
#
[_tb_end_text]

[chara_hide  name="Nick"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_start_text mode=1 ]
А я со спокойной совестью отправилась в класс.[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="Project.ks"  target=""  ]
*HelpNick_In

[tb_eval  exp="f.Nick+=1"  name="Nick"  cmd="+="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
И, быстро выхватив у Ника тетрадь, я умчалась в сторону учительской.[p]
#
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="kabinet1.webp"  ]
[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
К счастью внутри действительно никого не было.[p]
Пока я искала взглядом стопку сочинений, в которую нужно было подложить тетрадь Ника, моё внимание привлекла записка на соседнем столе.[p]
"В школе распространяется торговля ZИ.[p]
Уже у пятерых школьников были замечены и изъяты пакеты с этим наркотиком..."[p]
ZИ, он же просто "зи", в последнее время частенько мелькал в новостных лентах.[p]
Формально он был легализован, однако принимать его до тридцати лет не рекомендовалось.[p]
Завершив свою сверхсекретную миссию, я вышла из учительской и, напоследок погрозив Нику пальцем, ушла в класс.[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="Project.ks"  target=""  ]
*HelpNick_Out

[tb_eval  exp="f.Nick+=1"  name="Nick"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Довольно улыбнувшись, Ник умчался в сторону учительской, и я отправилась следом.[p]
#
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="coridor.webp"  ]
[tb_start_text mode=1 ]
Делая вид, что рассматриваю один из плакатов на стене, я внимательно вслушивалась, надеясь заслышать шаги преподавателей в случае их появления.[p]
Коридор был пуст и тих, пока внезапно над ухом не раздалось ехидное...[p]
#Джо:
Что это тут у нас?[p]
#

[_tb_end_text]

[chara_show  name="Joeh"  time="1000"  wait="true"  storage="chara/2/Joeh_.png"  width="386"  height="626"  left="0"  top="110"  reflect="false"  ]
[tb_eval  exp="f.Joeh+=1"  name="Joeh"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Из-за плеча вынырнул Джо, с усмешкой глядя на меня.[p]
#Джо:
Сторожишь учительскую? Ха, не бойся, я тебя не выдам. [p]
Я тоже люблю нарушать правила.[p]
#
И хитро подмигнув, он ускользнул в неизвестном направлении.[p]
#
[_tb_end_text]

[chara_hide  name="Joeh"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_start_text mode=1 ]
Через несколько мгновений дверь учительской приоткрылась, и оттуда вынырнул довольный Ник. [p]
Стукнувшись кулаками в знак отлично выполненной миссии, мы отправились на урок.[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="Project.ks"  target=""  ]
*Coridor_Mia

[chara_hide  name="Nick"  time="1000"  wait="true"  pos_mode="true"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  storage="chara/1/Krista_.png"  width="468"  height="765"  left="-70"  top="110"  reflect="true"  ]
[tb_eval  exp="f.Mia+=1"  name="Mia"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Мия:
О, привет Криста.[p]
Ты очень кстати, я как раз собиралась вернуть тебе...[p]
#
Выудив из ящика учебник по химии, Мия протянула его мне.[p]
#Мия:
Ещё раз спасибо, ты меня тогда очень выручила.[p]
#Криста:
Да не за что.[p]
#
[_tb_end_text]

[chara_hide  name="Mia"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_start_text mode=4 ]
Я улыбнулась и отвернулась, засовывая учебник в сумку, как вдруг из него выскользнул листок.
Я успела заметить почерк Мии и решила...
[_tb_end_text]

[glink  color="btn_22_lime"  storage="scene1.ks"  size="20"  text="вернуть"  x="430"  y="360"  width="200"  height="25"  _clickable_img=""  target="*List_Return"  glink_sm="true"  ]
[glink  color="btn_22_green"  storage="scene1.ks"  size="20"  text="прочитать"  x="650"  y="360"  width="200"  height="25"  _clickable_img=""  target="*List_Read"  glink_sm="true"  ]
[s  ]
*List_Return

[tb_eval  exp="f.Mia+=1"  name="Mia"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Криста:
Мия, ты кажется забыла свой...[p]
#
Я протянула девушке листок.[p]
#
[_tb_end_text]

[chara_show  name="Mia"  time="1000"  wait="true"  left="910"  top="130"  width="378"  height="616"  reflect="false"  storage="chara/6/Mia_.png"  ]
[tb_start_text mode=1 ]
Мия смутилась, но развернув листок и пробежав по нему глазами, вдруг ярко покраснела.[p]
#Мия:
Оу.. Спасибо, Криста. [p]
#
Улыбнувшись в ответ, я убрала наконец учебник в сумку и отправилась на урок.[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[jump  storage="Project.ks"  target=""  ]
*List_Read

[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
На листок в виде таблицы мелким почерком были выписаны названия химических веществ и медицинские препараты, очевидно имеющие данные вещества в составе.[p]
Я узнала несколько наименований успокоительных: их изредка принимала мама в тяжёлые периоды на работе. [p]
Последним в списке препаратов значился ZИ. Рядом с ним в нескольких графах были установлены галочки,[p]
а ниже шла приписка "тот же состав, эффективность выше". [p]
Я удивлённо моргнула и сложив листок, спрятала его обратно.[p]
ZИ, он же просто "зи", был лёгким наркотиком. [p]
Формально он был легализован, однако принимать его до тридцати лет не рекомендовалось.[p]
С чего вдруг Мия решила изучать его состав?[p]
Не решив, что делать с данной информацией, я направилась в класс.[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="Project.ks"  target=""  ]
