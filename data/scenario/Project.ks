[_tb_system_call storage=system/_Project.ks]

[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="rouka.jpg"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
В тот день нам задали очередной школьный проект, который следовало подготовить в паре.[p]
#

[_tb_end_text]

[tb_start_text mode=4 ]
Своим напарником я выбрала...
[_tb_end_text]

[chara_show  name="Joeh"  time="1000"  wait="true"  left="0"  top="150"  width="368"  height="593"  reflect="false"  storage="chara/2/Joeh_.png"  ]
[chara_show  name="Nick"  time="1000"  wait="true"  left="449"  top="150"  width="413"  height="587"  reflect="false"  storage="chara/5/Nick_full.png"  ]
[chara_show  name="Mia"  time="1000"  wait="true"  left="920"  top="130"  width="366"  height="595"  reflect="false"  storage="chara/6/Mia_.png"  ]
[glink  color="btn_22_purple"  storage="Project.ks"  size="20"  text="Джо"  target="*Project_Joeh"  glink_sm="true"  x="120"  y="550"  width="100"  height="25"  _clickable_img=""  ]
[glink  color="btn_22_blue"  storage="Project.ks"  size="20"  text="Ника"  target="*Project_Nick"  glink_sm="true"  x="560"  y="550"  width="100"  height="25"  _clickable_img=""  ]
[glink  color="btn_22_lime"  storage="Project.ks"  size="20"  text="Мию"  target="*Project_Mia"  glink_sm="true"  x="980"  y="550"  width="100"  height="25"  _clickable_img=""  ]
[s  ]
*Project_Joeh

[tb_eval  exp="f.Joeh+=1"  name="Joeh"  cmd="+="  op="t"  val="1"  ]
[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="Room_Joeh.webp"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Джо пригласил меня зайти к нему после школы. [p]
#
[_tb_end_text]

[chara_show  name="Joeh"  time="1000"  wait="true"  storage="chara/2/Joeh_.png"  width="368"  height="594"  left="0"  top="140"  reflect="false"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  storage="chara/1/Krista_.png"  width="465"  height="754"  left="899"  top="140"  reflect="false"  ]
[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
В гостиной и в комнате Джо я невольно отметила большое количество дорогой техники: огромный телевизор, игровая приставка, современный ноутбук.[p]
При этом мебель была достаточно простенькой, а ремонт уже далеко не новым.[p]
Мы провели пару часов за сбором и систематизацией данных и решили закончить на сегодня. [p]
Я уже начала собирать вещи в рюкзак, как Джо повернулся ко мне с улыбкой.[p]
#Джо:
Не хочешь сыграть в приставку? У меня есть классные игры, тебе понравятся.[p]
Если боишься поздно возвращаться, я могу тебя потом подвезти домой.[p]
#
[_tb_end_text]

[tb_start_text mode=4 ]
Немного подумав, я...
[_tb_end_text]

[glink  color="btn_22_purple"  storage="Project.ks"  size="20"  text="Согласилась"  target="*PlayWithJoeh_Yes"  x="500"  y="320"  width="200"  height="25"  _clickable_img=""  glink_sm="true"  ]
[glink  color="btn_22_white"  storage="Project.ks"  size="20"  text="Отказалась"  target="*PlayWithJoeh_No"  x="500"  y="365"  width="200"  height="25"  _clickable_img=""  glink_sm="true"  ]
[s  ]
*PlayWithJoeh_Yes

[tb_eval  exp="f.Joeh+=1"  name="Joeh"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
У меня дома не было своей приставки, и мне было жутко любопытно, что это за зверь такой.[p]
Джо дал мне джойстик, объяснил, как им пользоваться, и запустил игрушку со смешными пластилиновыми человечками.[p]
Мы пили колу, болтали, хохотали... так увлеклись, что остаток вечера пролетел незаметно. [p]
#
[_tb_end_text]

[jump  storage="Project.ks"  target="*ClueBySympathy"  cond="f.Joeh>2"  ]
[jump  storage="Project.ks"  target="*AfterJoeh"  ]
*ClueBySympathy

[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
Уже уходя, я радостно отметила:[p]
#Криста:
А эта приставка - классная штука! Тебе родители подарили?[p]
#Джо:
Неа, я тут нашёл неплохую подработку. Платят прилично, вот и решил себя побаловать.[p]
#

[_tb_end_text]

*AfterJoeh

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
Джо, как и обещал, подбросил меня до дома. [p]
Мама нахмурилась моему позднему возвращению, но ругать не стала:[p]
на следующий день была суббота, а значит не нужно вставать рано в школу.[p]
[_tb_end_text]

[jump  storage="Cafe.ks"  target=""  ]
*PlayWithJoeh_No

[tb_start_text mode=1 ]
Я покачала головой и вежливо улыбнулась:[p]
#Криста:
Спасибо за предложение, может быть в другой раз...[p]
#Джо:
Ну ладно, тогда пока! Увидимся в понедельник в школе![p]
#

[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="Room2.webp"  ]
[tb_start_text mode=1 ]
Вернувшись домой, я радостно плюхнулась на кровать и открыла недочитанную книжку.[p]
Завтра была суббота, а значит можно было лечь позднее, не боясь не выспаться перед школой.[p]
[_tb_end_text]

[jump  storage="Cafe.ks"  target=""  ]
*Project_Nick

[tb_eval  exp="f.Nick+=1"  name="Nick"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="Room1.webp"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  storage="chara/1/Krista_.png"  width="425"  height="692"  left="899"  top="130"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Мы договорились встретиться после занятий у меня дома, но Ник задерживался. [p]
Я начала сама понемногу искать материалы для проекта, как наконец услышала дверной звонок.[p]
#
[_tb_end_text]

[chara_show  name="Nick"  time="1000"  wait="true"  left="0"  top="150"  width="367"  height="592"  reflect="false"  storage="chara/5/Nick_.png"  ]
[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Ник:
Прости, пожалуйста, за опоздание...[p]
Я был у Джо, играл в приставку. Ты бы знала, сколько у него офигенных игр![p]
Даже NightMight 6 есть, а ведь она вышла всего пару месяцев назад![p]
#
[_tb_end_text]

[tb_start_text mode=4 ]
Укоризненно посмотрев на Ника, я...
[_tb_end_text]

[glink  color="btn_22_blue"  storage="Project.ks"  size="20"  text="Приняла&nbsp;извинения"  x="530"  y="310"  width="300"  height="25"  _clickable_img=""  target="*NickSorry"  glink_sm="true"  ]
[glink  color="btn_22_red"  storage="Project.ks"  size="20"  text="Отругала&nbsp;за&nbsp;опоздание"  x="530"  y="422"  width="300"  height="25"  _clickable_img=""  target="*NickNotSorry"  glink_sm="true"  ]
[s  ]
*NickSorry

[tb_eval  exp="f.Nick+=1"  name="Nick"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Криста:
Так и быть, ты прощён.[p]
Но если ещё раз вместо проекта будешь играть в игрушки, не видать тебе моих конспектов, как своих ушей![p]
#
[_tb_end_text]

[tb_start_text mode=1 ]
Ник состроил забавную мордашку, будто жутко испугался моей угрозы.[p]
Я рассмеялась, и мы начали совместную работу.[p]
#
[_tb_end_text]

[jump  storage="Project.ks"  target="*AfterSorry"  ]
*NickNotSorry

[tb_start_text mode=1 ]
#Криста:
Серьёзно? Мы договорились на точное время, Ник. Ты не умеешь смотреть на часы?[p]
#
Махнув рукой на его расстроенную физиономию, я придвинула ему толстенный фолиант из библиотеки.[p]
#Криста:
Давай начинать работу, мы и так задержались.[p]
#
[_tb_end_text]

*AfterSorry

[tb_start_text mode=1 ]
Пара часов прошла в сосредоточенной работе. [p]
Наконец, я довольно откинулась на спинку стула, разминая уставшие пальцы. [p]
#
[_tb_end_text]

[jump  storage="Project.ks"  target="*SympathyNick"  cond="f.Nick>2"  ]
[jump  storage="Project.ks"  target="*NoSympathyNick"  ]
*SympathyNick

[tb_start_text mode=1 ]
Ник аккуратно cложил книги и тетради в рюкзак и уже собрался уходить, как вдруг повернулся ко мне и непривычно-смущённым голосом спросил.[p]
#Ник:
Слушай, Криста... не хочешь завтра... сходить в кафе?[p]
#
[_tb_end_text]

[tb_start_text mode=1 ]
Я немного растерялась, но всё же ответила...[p]
[_tb_end_text]

[glink  color="btn_22_blue"  storage="Project.ks"  size="20"  text="Да,&nbsp;давай"  target="*CafeWithNick"  x="552"  y="312"  width="250"  height="25"  _clickable_img=""  glink_sm="true"  ]
[glink  color="btn_22_white"  storage="Project.ks"  size="20"  text="Извини,&nbsp;другие&nbsp;планы"  target="*RejectCafeWithNick"  x="552"  y="352"  width="250"  height="25"  _clickable_img=""  glink_sm="true"  ]
[s  ]
*NoSympathyNick

[tb_start_text mode=1 ]
Ник аккуратно собрал книги и тетради и, попрощавшись, ушёл.[p]
А я довольно плюхнулась на кровать и открыла недочитанную книжку.[p]
Завтра суббота, а значит можно было лечь позднее, не боясь не выспаться перед школой.[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="Cafe.ks"  target=""  ]
*RejectCafeWithNick

[tb_start_text mode=1 ]
Ник разом поник.[p]
#Ник:
Оу... Ладно, я понимаю, планы...[p]
Тогда... увидимся в школе в понедельник?[p]
#Криста:
Ага, увидимся, пока![p]
#
Проводив Ника до двери, я вернулась в комнату, довольно плюхнулась на кровать и открыла недочитанную книжку.[p]
Завтра суббота, а значит можно было лечь позднее, не боясь не выспаться перед школой.[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="Cafe.ks"  target=""  ]
*CafeWithNick

[tb_eval  exp="f.Nick+=1"  name="Nick"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Nick_Cafe=1"  name="Nick_Cafe"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Ник просиял.[p]
#Ник:
Здорово! Тогда... я заеду часа в три?[p]
Не опоздаю, честное слово![p]
#
Я улыбнулась в ответ.[p]
#Криста:
Ловлю на слове! Значит завтра в три. Увидимся, пока![p]
#
Проводив Ника до двери, я вернулась в комнату, довольно плюхнулась на кровать и открыла недочитанную книжку.[p]
Завтра суббота, а значит можно было лечь позднее, не боясь не выспаться перед школой.[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="Cafe.ks"  target=""  ]
*Project_Mia

[tb_eval  exp="f.Mia+=1"  name="Mia"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="Room_Mia.webp"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Мия предложила заниматься проектом у неё дома. [p]
И после занятий, захватив несколько книг в библиотеке, мы вместе отправились к ней.[p]
#
[_tb_end_text]

[chara_show  name="Mia"  time="1000"  wait="true"  storage="chara/6/Mia_.png"  width="403"  height="652"  left="880"  top="120"  reflect="false"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  storage="chara/1/Krista_.png"  width="447"  height="729"  left="-60"  top="120"  reflect="true"  ]
[tb_start_text mode=1 ]
Мия умела работать с материалом, и вместе мы довольно быстро нашли всё нужное. [p]
Пока я дописывала свои заметки, Мия принесла нам чай с печеньем.[p]
#Мия:
Знаешь, Криста... Мы вроде учимся вместе, сидим за одной партой, а почти и не знаем друг друга... [p]
Какие предметы ты любишь? Чем ты занимаешься после школы? [p]
Я бы хотела узнать тебя получше...[p]
#
Оторвавшись от записей, я взяла чашку и взглянула на Мию.[p]
Действительно, за предыдущие годы у нас даже не возникала мысль общаться вне уроков.[p]
#
[_tb_end_text]

[tb_start_text mode=4 ]
Я задумалась: а хотела бы я узнать Мию получше?
[_tb_end_text]

[glink  color="btn_22_lime"  storage="Project.ks"  size="20"  text="Конечно!"  x="500"  y="320"  width="300"  height="25"  _clickable_img=""  target="*KnowMia_Yes"  glink_sm="true"  ]
[glink  color="btn_22_white"  storage="Project.ks"  size="20"  text="И&nbsp;так&nbsp;достаточно"  x="500"  y="412"  width="300"  height="25"  _clickable_img=""  target="*KnowMia_No"  glink_sm="true"  ]
[s  ]
*KnowMia_No

[tb_start_text mode=1 ]
#Криста:
Я не уверена, что хочу общаться о чём-то кроме уроков.[p]
Извини, но мне кажется этого достаточно.[p]
#
Уголки губ Мии опустились.[p]
#Мия:
Оу...  Ну, ладно... Нет, так нет.[p]
#
Мы допили чай в неуютной тишине и, собрав вещи, я поехала домой.[p]
#

[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
Завтра, к счастью, была суббота. А значит, можно было лечь попозже, не боясь не выспаться к школе.[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="Cafe.ks"  target=""  ]
*KnowMia_Yes

[tb_eval  exp="f.Mia+=1"  name="Mia"  cmd="+="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
Мия просияла.[p]
#Мия:
Здорово! Может тогда сходим в кафе завтра? На Чарринг Роуд открылось новое, говорят, там обалденные корзиночки с ягодами![p]
#

[_tb_end_text]

[tb_start_text mode=4 ]
Задумавшись ненадолго, я ответила:
[_tb_end_text]

[glink  color="btn_22_lime"  storage="Project.ks"  size="20"  text="Давай!"  x="500"  y="320"  width="300"  height="25"  _clickable_img=""  target="*CafeWithMia"  glink_sm="true"  ]
[glink  color="btn_22_white"  storage="Project.ks"  size="20"  text="Может&nbsp;в&nbsp;другой&nbsp;раз..."  x="500"  y="412"  width="300"  height="25"  _clickable_img=""  target="*RejectCafeWithMia"  glink_sm="true"  ]
[s  ]
*RejectCafeWithMia

[tb_start_text mode=1 ]
#Мия:
Конечно... в другой раз...[p]
#
Улыбка Мии померкла, но уже через несколько мгновений вернулась снова.[p]
Мы пили чай, хрустели печеньем, болтали обо всякой ерунде. [p]
Время пролетело незаметно.[p]
Домой я вернулась уже затемно. Пройдя в свою комнату, я плюхнулась на кровать и взяла недочитанную книгу.[p]
К счастью завтра была суббота, а значит можно было не волноваться о том, чтобы не выспаться к школе.[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="Cafe.ks"  target=""  ]
*CafeWithMia

[tb_eval  exp="f.Mia+=1"  name="Mia"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Mia_Cafe=1"  name="Mia_Cafe"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Мия:
Как здорово![p]
#
Мия чуть не запрыгала от радости, а я рассмеялась её непосредственности.[p]
Мы договорились встретиться у кафе в три часа и, собрав вещи, я поехала домой. [p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="Cafe.ks"  target=""  ]
