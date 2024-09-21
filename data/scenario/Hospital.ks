[_tb_system_call storage=system/_Hospital.ks]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[cm  ]
[bg  time="1000"  method="crossfade"  storage="clinica.jpg"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  left="909"  top="150"  width="425"  height="694"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Я ждала своей очереди у стойки регистрации, чтобы узнать, в какой палате Мия...[p]
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*HospitalClue"  cond="f.Joeh<5"  ]
[jump  storage="Hospital.ks"  target="*Continue"  ]
*HospitalClue

[tb_start_text mode=1 ]
...и вдруг мой взгляд невольно упал на документы, что лежали на стойке, очевидно забытые кем-то второпях.[p]
Похоже, это был какой-то медицинский отчет: большую часть листа занимали растущие ярко-алые графики. [p]
Осторожно придвинувшись ближе, я рассмотрела текст, что был под графиками:[p]
"за последний месяц процент отравления школьников искуственным наркотиком ZИ увеличился на 30%" [p]
[_tb_end_text]

[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Я невольно задумалась, что бы это могло значить.[p]
[_tb_end_text]

*Continue

[jump  storage="Hospital.ks"  target="*HospitalWithMia"  cond="f.Mia_Hosp==1"  ]
[tb_start_text mode=1 ]
Наконец, освободившаяся девушка в регистратуре устало ответила мне, что приём посетителей закончился час назад.[p]
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*HospitalWithNick"  cond="f.Nick_Hosp==1"  ]
[tb_start_text mode=1 ]
Вдруг откуда-то из-за моего плеча вынырнул Джо. [p]



[_tb_end_text]

[chara_show  name="Joeh"  time="1000"  wait="true"  storage="chara/2/Joeh_.png"  width="359"  height="582"  left="0"  top="150"  reflect="false"  ]
[tb_start_text mode=1 ]
#Джо:
Мия действительно чем-то отравилась. Не уверен, правда, что какой-то запрещёнкой, вроде говорят никаких необычных симптомов нет.[p]
#
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*WhyAreUHere"  cond="f.Joeh_Hosp!=1"  ]
[jump  storage="Hospital.ks"  target="*HospWithJoeh"  ]
*WhyAreUHere

[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Обернувшись к парню, я удивлённо спросила.[p]
#Криста:
А ты что здесь делаешь? [p]
#
Джо смущённо отвёл взгляд.[p]
#Джо:
Да я тут... маму навещал...[p]
А там родителей Мии встретил в коридоре, ну и спросил...[p]
#Криста:
А что с твоей мамой?[p]
#Джо:
Какой-то мерзкий медицинский диагноз на две строчки мелким шрифтом... Давно уже...[p]
Лечение дорогое, но мы с отцом пока тянем... [p]
#
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*JoehEmpathy"  cond="f.Joeh>5"  ]
[jump  storage="Hospital.ks"  target="*JoehNoEmpathy"  ]
*JoehEmpathy

[tb_start_text mode=1 ]
Я коснулась плеча Джо в знак поддержки.[p]
Он грустно улыбнулся и внезапно крепко обнял меня.[p]
Смущённая таким неожиданным действием, я осторожно обняла его в ответ.[p]
Наконец, Джо отстранился. [p]
#Джо:
Поехали, отвезу тебя домой. Всё равно тут больше делать нечего.[p]
#
Я кивнула, и мы вместе вышли из здания больницы.[p]
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*AfterHospital"  ]
*JoehNoEmpathy

[tb_start_text mode=1 ]
#Криста:
Ох...я сочувствую...[p]
#Джо:
Да забей... всё норм...[p]
Поехали, отвезу тебя домой. Всё равно тут больше делать нечего.[p]
#
Я кивнула и следом за Джо вышла из больницы.[p]
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*AfterHospital"  ]
*HospWithJoeh

[tb_start_text mode=1 ]
#Криста:
А ты откуда знаешь? К ней же никого не пускают?[p]
#Джо:
С родителями её случайно столкнулся, они как раз уже уходили.[p]
Поехали, отвезу тебя домой. Всё равно тут больше делать нечего.[p]
#
Я неуверенно кивнула и следом за Джо пошла к парковке.[p]
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*AfterHospital"  ]
*HospitalWithNick

[tb_start_text mode=1 ]
Расстроившись, я села на скамью в холле, не зная, что делать дальше.[p]
Было глупо возвращаться домой, так ничего и не узнав.[p]
Вдруг кто-то осторожно присел рядом, протягивая мне стаканчик с кофе.[p]


[_tb_end_text]

[chara_show  name="Nick"  time="1000"  wait="true"  storage="chara/5/Nick_.png"  width="367"  height="594"  left="0"  top="150"  reflect="false"  ]
[tb_start_text mode=1 ]
#Ник:
Эй, не грусти, всё будет хорошо.[p]
Пока ты стояла в очереди, я подслушал пару разговоров медперсонала.[p]
Похоже у Мии действительно отравление каким-то "палёным" зи, но она быстро идёт на поправку. [p]
#
Слова с трудом проникали в сознание - такими нелогичными они казались.[p]
#Криста:
Как это может быть, Ник? Наша одноклассница и вдруг... наркотик...[p]
#Ник:
Всякое бывает... Я не так хорошо её знаю, чтобы судить...[p]
Да и могли просто подсыпать назло... Не знаю, Криста.[p]
#
Я сделала пару глотков кофе. Оно, как и всегда в больницах, было отвратительным.[p]
Но будто бы всё равно помогало. [p]
Я всё ещё была разбита и поражена случившимся. А ещё бесконечно благодарна Нику за помощь.[p]
И за кофе. Это было очень мило. [p]
#Ник:
Я могу тебе ещё чем-то помочь?[p]
#
[_tb_end_text]

[tb_start_text mode=4 ]
Задумавшись ненадолго, я ответила...
[_tb_end_text]

[glink  color="btn_22_blue"  storage="Hospital.ks"  size="20"  text="Обними&nbsp;меня"  target="*Nick_Hug"  x="493"  y="282"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  ]
[glink  color="btn_22_white"  storage="Hospital.ks"  size="20"  text="Отвези&nbsp;меня&nbsp;домой"  target="*Nick_Home"  x="493"  y="322"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  ]
[s  ]
*Nick_Hug

[tb_eval  exp="f.Nick+=1"  name="Nick"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Ник осторожно заключил меня в объятия, не забывая о стаканчике кофе в моих руках.[p]
Я уткнулась носом в его плечо, почувствовав лёгкий аромат стирального порошка от рубашки Ника и его собственный, какой-то тёплый и очень уютный запах.[p]
Хотелось укутаться в Ника, как в одеяло, спрятавшись от всех проблем. [p]
Но вместо этого я прошептала:[p]
#Криста:
Отвезёшь меня домой?[p]
#Ник:
Конечно.[p]
#
Слегка сжав напоследок мои плечи, Ник отстранился и помог мне встать.[p]
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*JoehSeeU"  cond="f.Joeh>5"  ]
[jump  storage="Hospital.ks"  target="*AfterHospital"  ]
*JoehSeeU

[tb_eval  exp="f.JNFail=1"  name="JNFail"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="Hospital.ks"  target="*AfterHospital"  ]
*Nick_Home

[tb_start_text mode=1 ]
Ник молча кивнул и помог мне дойти до машины.[p]
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*AfterHospital"  ]
*HospitalWithMia

[tb_start_text mode=1 ]
Наконец, узнав палату и получив разрешение на посещение Мии, я направилась по коридору в указанном направлении.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="palata.jpg"  ]
[chara_show  name="Mia"  time="1000"  wait="true"  storage="chara/6/Mia_.png"  width="370"  height="591"  left="0"  top="190"  reflect="true"  ]
[tb_start_text mode=1 ]
Мия радостно улыбнулась, увидев меня. [p]
Она выглядела немного бледной, но в остальном вполне... обычной.[p]
#Криста:
Привет... Как ты?[p]
#Мия:
Я уже почти в порядке, не беспокойся![p]
#Криста:
Твоя мама сказала, ты отравилась...[p]
#
Мия смущённо отвела взгляд, но потом, словно решившись, вновь повернулась ко мне.[p]
#Мия:
Я принимала ZИ...[p]
#Криста:
С ума сошла? Зачем?[p]
#Мия:
Я так волновалась перед экзаменами... Год выдался сложнее предыдущего, а мне важно было сдать все предметы...[p]
#
Опустив глаза, Мия перебирала в пальцах краешек одеяла.[p]
#Мия:
Я пробовала пить обычные препараты, но они почти не помогали. Тогда я провела исследования и выяснила, что ZИ снижает уровень стресса, улучшает память и позволяет сосредоточиться.[p]
В общем я решила попробовать... Всего пару раз. Эффект и вправду был классный. [p]
А потом... последний раз мне, похоже, продали какую-то палёную дрянь... И вот...[p]
#
С каждым словом я буквально чувствовала, как волосы на затылке встают дыбом.[p]
Мия? Принимала ZИ? Вот эта самая Мия, с которой я сидела за одной партой?[p]


[_tb_end_text]

[tb_start_text mode=4 ]
С трудом подбирая слова, я...
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*MiaSympathy3"  cond="f.Mia>2"  ]
[jump  storage="Hospital.ks"  target="*Default"  ]
*MiaSympathy3

[glink  color="btn_22_lime"  storage="Hospital.ks"  size="20"  text="Успокоила&nbsp;её"  x="500"  y="295"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  target="*Mia_Care"  ]
[glink  color="btn_22_green"  storage="Hospital.ks"  size="20"  text="Спросила&nbsp;про&nbsp;продавца"  x="500"  y="335"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  target="*Mia_Buyer"  ]
[glink  color="btn_22_lime"  storage="Hospital.ks"  size="20"  text="Уговорила&nbsp;бросить"  x="502"  y="375"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  target="*Mia_Safe"  ]
[s  ]
*Default

[glink  color="btn_22_lime"  storage="Hospital.ks"  size="20"  text="Успокоила&nbsp;её"  x="500"  y="295"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  target="*Mia_Care"  ]
[glink  color="btn_22_red"  storage="Hospital.ks"  size="20"  text="Отругала&nbsp;её"  x="500"  y="415"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  target="*Mia_Anger"  ]
[s  ]
*Mia_Care

[tb_eval  exp="f.Mia+=1"  name="Mia"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Криста:
Тебе не с кем было поделиться, да? У тебя совсем нет друзей в школе?[p]
#
Мия кивнула с грустной улыбкой.[p]
#Мия:
Раньше я дружила со Стэйси и Катрин, но потом мне пришлось больше времени уделять учёбе, и мы... стали меньше общаться.[p]
Пока не перестали вовсе. [p]
#
Мне вдруг стало так обидно за неё. А ещё стыдно, что я никогда даже не задумывалась, чем живёт моя одноклассница. [p]

[_tb_end_text]

[jump  storage="Hospital.ks"  target="*MiaSympathy5"  cond="f.Mia>5"  ]
[tb_start_text mode=1 ]
Смазанно попрощавшись, я поспешила вернуться в холл и вызвать такси.[p]
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*AfterHospital"  ]
*MiaSympathy5

[tb_start_text mode=1 ]
#Криста:
Знаешь, я совсем не против подруги, которая уделяет внимание учёбе.[p]
#
Мия подняла на меня полные слёз глаза и просияла улыбкой.[p]
#Мия:
Правда?[p]
#
[_tb_end_text]

[tb_start_text mode=4 ]
Вместо ответа я...
[_tb_end_text]

[glink  color="btn_22_lime"  storage="Hospital.ks"  size="20"  glink_sm="true"  text="Улыбнулась"  target="*Mia_Smile"  x="500"  y="294"  width="300"  height="25"  _clickable_img=""  ]
[glink  color="btn_22_lime"  storage="Hospital.ks"  size="20"  text="Обняла&nbsp;её"  target="*Mia_Hug"  x="500"  y="332"  width="300"  height="25"  _clickable_img=""  glink_sm="true"  ]
[s  ]
*Mia_Smile

[tb_start_text mode=1 ]
Мия улыбнулась в ответ.[p]
#Мия:
Тогда ты не будешь против, если я позвоню тебе завтра? Расскажешь, что важного я пропустила на уроках.[p]
#Криста:
Конечно, звони.[p]
#
Мы очень тепло попрощались, и я вызвала такси домой.[p]
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*AfterHospital"  ]
*Mia_Hug

[tb_eval  exp="f.Mia+=1"  name="Mia"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Мия под моими руками показалась очень хрупкой. Я боялась, что смогу просто раздавить её, если сожму чуть сильнее.[p]
#Криста:
Ты только поправляйся скорее, и будем вместе готовиться к контрольным. А ещё ходить в кафе есть мороженное. [p]
#
Мия тихонько рассмеялась.[p]
#Мия:
Хорошо, обещаю поправиться как можно быстрее. Ради мороженного.[p]
#
Мы ещё немного поболтали, пока не начался обход и вредная медсестра не выгнала меня из палаты.[p]
Я вызвала такси до дома, радуясь, что обрела новую подругу.[p]
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*AfterHospital"  ]
*Mia_Anger

[tb_eval  exp="f.Mia-=1"  name="Mia"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Криста:
О чём ты только думала, Мия? Это же наркотик! Самый настоящий! [p]
Даже обычный ZИ жутко вреден, а уж "палёный"... [p]
#
Мия пристыженно смотрела на свои сцепленные на одеяле пальцы.[p]
Я тяжело вздохнула, не зная, что ещё сказать. [p]
Во мне кипел гнев вперемешку с разочарованием.[p]
Никогда не думала, что моя одноклассница додумается до такой дурости, как ZИ.[p]
Скомканно попрощавшись, я поспешила вернуться в холл, пока не наговорила Мие ещё каких-нибудь громких слов.[p]
Вызвав такси, я вернулась домой всё ещё в расстроенных чувствах.[p]
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*AfterHospital"  ]
*Mia_Safe

[tb_start_text mode=1 ]
#Криста:
Мия, пообещай мне, пожалуйста, что больше не притронешься к этой дряни.[p]
Палёная или настоящая - неважно, это же наркотик! Такая глупость не закончится добром. [p]
#
Мия помолчала пару минут и, наконец, проговорила тихим голосом, в котором слышались слёзы.[p]
#Мия:
... хорошо...[p]
Я обещаю, Криста. Правда.[p]
Я уже поняла, что сглупила... не нужно было...[p]
#
Мы ещё немного поболтали, и я попрощалась с Мией, пообещав заехать завтра после уроков и рассказать, что она пропустила в школе.[p]
[_tb_end_text]

[tb_eval  exp="f.MiaLive=1"  name="MiaLive"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="Hospital.ks"  target="*AfterHospital"  ]
*Mia_Buyer

[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Криста:
Подожди... Мия, ты что, покупала эту гадость прямо в школе? У нас в школе кто-то торгует ZИ?[p]
#
Мия смешалась, кусая губы.[p]


[_tb_end_text]

[jump  storage="Hospital.ks"  target="*IsItJoeh"  cond="f.Clue>6"  ]
[jump  storage="Hospital.ks"  target="*WhoIsIt"  ]
*IsItJoeh

[tb_start_text mode=1 ]
Меня вдруг осенила внезапная догадка.[p]
#Криста:
Это был Джо, верно?[p]
#
Мия промолчала, но то, как она быстро опустила глаза и спрятала от меня лицо, говорило больше слов.[p]
Скомканно попрощавшись, я вернулась в холл больницы и вызвала такси до дома.[p]
Мне нужно было обдумать всё в спокойной обстановке.[p]
[_tb_end_text]

[jump  storage="Hospital.ks"  target="*AfterHospital"  ]
*WhoIsIt

[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Мия:
Да... Один из наших одноклассников. Прости, я не уверена, что могу сказать тебе его имя...[p]
#
Я застыла, пытаясь осознать ещё одну страшную правду.[p]
Кто-то в нашем классе распространял ZИ. Это из-за него Мия оказалась здесь.[p]
Из-за него могли пострадать другие...[p]
Скомканно попрощавшись, я вернулась в холл больницы и вызвала такси до дома.[p]
Мне нужно было обдумать всё в спокойной обстановке.[p]
[_tb_end_text]

*AfterHospital

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="Room1.webp"  ]
[tb_start_text mode=1 ]
После возвращения домой, я никак не могла взять себя в руки.[p]
События дня крутились в голове словно безумные фрагменты мозайки на карусели.[p]
Упав спиной на кровать, я долго смотрела в потолок.[p]
Наконец, закрыв глаза, я попыталась мысленно выстроить всю цепочку событий...[p]
[_tb_end_text]

[jump  storage="Final.ks"  target=""  ]
