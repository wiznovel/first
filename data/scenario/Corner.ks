
[cm  ]
[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="outside.webp"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
В один из дней...[p]
Я уже шла домой с занятий, как вдруг заметила...[p]

[_tb_end_text]

[chara_show  name="Mia"  time="1000"  wait="true"  storage="chara/6/Mia_.png"  width="379"  height="620"  left="899"  top="190"  reflect="false"  ]
[chara_show  name="Joeh"  time="1000"  wait="true"  storage="chara/2/Joeh_.png"  width="350"  height="556"  left="0"  top="170"  reflect="false"  ]
[tb_start_text mode=1 ]
Джо и Мию, мило беседующих о чём-то за углом школы.[p]
Мне не было слышно слов, но зато прекрасно было видно, как нагло рука Джо лежала на талии Мии.[p]
[_tb_end_text]

[jump  storage="Corner.ks"  target="*Corner_Joeh"  cond="f.Joeh>3"  ]
[jump  storage="Corner.ks"  target="*Corner_Mia"  cond="f.Mia>3"  ]
[tb_eval  exp="f.Clue+=1"  name="Clue"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Присмотревшись внимательно, я заметила, как Джо опускает в карман Мие маленький пакетик. [p]
А через несколько секунд Мия в ответ протягивает Джо пачку купюр, которые он быстро прячет в рюкзак. [p]
Я нахмурилась, пытаясь сообразить, чему именно сейчас стала случайным свидетелем. [p]
#
[_tb_end_text]

[jump  storage="Corner.ks"  target="*AfterCorner"  ]
*Corner_Joeh

[tb_ptext_show  x="389.99998474121094"  y="620.0000076293945"  size="30"  color="0xf04908"  time="1000"  text="Вы&nbsp;испытываете&nbsp;симпатию&nbsp;к&nbsp;Джо"  name="СимпатияДжо"  anim="false"  face="Georgia"  edge="undefined"  shadow="undefined"  ]
[wait  time="700"  ]
[tb_ptext_hide  time="1000"  ]
[tb_start_text mode=1 ]
Во мне поднялась волна гнева, и я сурово направилась к этой парочке.[p]
[_tb_end_text]

[chara_show  name="Криста"  time="1000"  wait="true"  storage="chara/1/Krista_.png"  width="420"  height="686"  left="449"  top="170"  reflect="false"  ]
[tb_start_text mode=1 ]
#Криста:
Я вам не помешаю? [p]
#
Я произнесла это с милой улыбочкой, хотя весь мой вид говорил о том, что как раз помешать я и намерена.[p]
[_tb_end_text]

[chara_hide  name="Mia"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_eval  exp="f.Mia-=1"  name="Mia"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Joeh+=1"  name="Joeh"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Мия бросила на меня презрительный взгляд и, фыркнув, ушла.[p]
А Джо, напротив, расплылся в довольной ухмылке.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Джо:
Рад тебя видеть! Как там, кстати, дела с проектом? Нужна моя помощь? [p]
#
Я неуверенно пожала плечами: большую часть мы уже сделали, оставались мелочи, которые я могла доделать и сама.[p]
#Джо:
Ты говори, если что, не взваливай на себя слишком много.[p]
Я понимаю: учёба учёбой, но и отдыхать иногда нужно.[p]
#
Он легонько потрепал меня по плечу.[p]
#Джо:
Если что - моя "плойка" всегда к твоим услугам. Захочешь поиграть - только скажи.[p]
#
Я улыбнулась в ответ. Как бы ни хотелось, расслабляться сейчас было не время - приближалась пора контрольных и зачётов. [p]
#Криста:
Может как-нибудь... Спасибо за предложение.[p]
#



[_tb_end_text]

[jump  storage="Corner.ks"  target="*AfterCorner"  ]
*Corner_Mia

[tb_ptext_show  x="389.99998474121094"  y="630.0000076293945"  size="30"  color="0x05eb8f"  time="1000"  text="У&nbsp;Вас&nbsp;хорошие&nbsp;отношения&nbsp;с&nbsp;Мией"  name="СимпатияМия"  anim="false"  face="Georgia"  edge="undefined"  shadow="undefined"  ]
[wait  time="700"  ]
[tb_ptext_hide  time="1000"  ]
[tb_start_text mode=1 ]
Мне совершенно не нравилось то, что я видела.[p]
Быстро прокрутив в голове возможные сценарии, я выбрала один и, приняв запыхавшийся вид, подбежала к ребятам.[p]

[_tb_end_text]

[chara_show  name="Криста"  time="1000"  wait="true"  storage="chara/1/Krista_.png"  width="443"  height="718"  left="399"  top="160"  reflect="true"  ]
[tb_start_text mode=1 ]
#Криста:
Мия, вот ты где! Я тебя всюду обыскалась... [p]
#
Джо, явно недовольный моим появлением, махнул рукой, не то здороваясь со мной, не то прощаясь с Мией, и быстрым шагом пошёл к школьной парковке. [p]
#
[_tb_end_text]

[chara_hide  name="Joeh"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_eval  exp="f.Joeh-=1"  name="Joeh"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Mia+=1"  name="Mia"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Криста:
Нас срочно ждут в учительской, по поводу проекта...[p]
#
Как только спина Джо скрылась за углом, Мия, немного смутившаяся поначалу, просияла улыбкой[p]
и подхватив меня под локоть радостно потащила обратно ко входу в школу. [p]
#Мия:
А ну рассказывай, что на самом деле случилось? Ни за что не поверю, что ты действительно искала меня только для проекта.[p]
#Криста:
Мне просто не понравилось, как Джо нагло вёл себя. Он приставал к тебе?[p]
#
Мия беззаботно рассмеялась, но что-то в её смехе показалось мне фальшивым.[p]
#Мия:
Вовсе нет, мы просто болтали... Ой, сегодня в столовой были такие вкусные блинчики![p]
Как ты думаешь, они ещё остались? Зайдём проверить?[p]
#
Я с улыбкой кивнула, и мы побежали в столовую.[p]
#
[_tb_end_text]

*AfterCorner

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[cm  ]
[bg  time="1000"  method="crossfade"  storage="rouka.jpg"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
А через неделю Мия не пришла на первый урок.[p]
[_tb_end_text]

[tb_start_text mode=4 ]
Я решила....
[_tb_end_text]

[glink  color="btn_22_lime"  storage="Corner.ks"  size="20"  text="позвонить&nbsp;ей"  x="303"  y="333"  width="300"  height="25"  _clickable_img=""  target="*CallMia"  glink_sm="true"  ]
[glink  color="btn_22_purple"  storage="Corner.ks"  size="20"  text="подождать"  x="621"  y="333"  width="300"  height="25"  _clickable_img=""  target="*NotCallMia"  glink_sm="true"  ]
[s  ]
*CallMia

[tb_eval  exp="f.Mia+=1"  name="Mia"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Дождавшись перемены, я набрала номер Мии. [p]
Гудки шли так долго, что я уже подумывала прервать звонок, но наконец в трубке раздался голос.[p]
Но не Мии, а её мамы.[p]
Мия оказалась в больнице. Узнав адрес, я тут же помчалась туда.[p]

[_tb_end_text]

[tb_eval  exp="f.Mia_Hosp=1"  name="Mia_Hosp"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="Hospital.ks"  target=""  ]
*NotCallMia

[tb_start_text mode=4 ]
На следующем занятии нас ждала лабораторная, делать которую нужно было в паре.
И раз уж моей обычной соседки по парте сегодня не было, я попросила помощи у...
[_tb_end_text]

[chara_show  name="Joeh"  time="1000"  wait="true"  storage="chara/2/Joeh_.png"  width="368"  height="590"  left="0"  top="150"  reflect="false"  ]
[chara_show  name="Nick"  time="1000"  wait="true"  storage="chara/5/Nick_.png"  width="404"  height="656"  left="899"  top="150"  reflect="true"  ]
[glink  color="btn_22_purple"  storage="Corner.ks"  size="20"  text="Джо"  x="540"  y="333"  width="100"  height="25"  _clickable_img=""  target="*ClassJoeh"  glink_sm="true"  ]
[glink  color="btn_22_blue"  storage="Corner.ks"  size="20"  text="Ника"  x="640"  y="333"  width="100"  height="25"  _clickable_img=""  target="*ClassNick"  glink_sm="true"  ]
[s  ]
*ClassJoeh

[tb_eval  exp="f.Joeh+=1"  name="Joeh"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[chara_hide  name="Nick"  time="1000"  wait="true"  pos_mode="true"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  left="870"  top="120"  width="469"  height="766"  reflect="false"  ]
[tb_start_text mode=1 ]
Мы быстро распределили обязанности и взялись за работу.[p]
Я зачитывала шаги по методичке, а Джо отмерял нужное количество вещества и переливал из пробирки в пробирку.[p]
[_tb_end_text]

[jump  storage="Corner.ks"  target="*SympathyJoeh"  cond="f.Joeh>5"  ]
[jump  storage="Corner.ks"  target="*NoSympathyJoeh"  ]
*SympathyJoeh

[tb_start_text mode=1 ]
Несмотря на то, что лабораторная была достаточно сложной, и крайне важно было не отвлекаться,[p]
я поймала себя на мысли, что то и дело возвращаю взгляд к Джо.[p]
К тому, как уверенно, с какой-то скрытой силой, он выполняет каждое действие. [p]
Как он сияет довольной улыбкой каждый раз, когда у нас всё получается, как нужно.[p]
Как он хитро подмигивает мне, когда замечает мой взгляд...[p]
Ой![p]
Я смущённо уронила взгляд в тетрадь, понимая, что краснею. [p]
#Джо:
Увидела что-то интересное?[p]
#Криста:
Прости, ты так воодушевлён... сложно не обратить внимание.[p]
#
Джо просиял ещё одной широкой улыбкой.[p]
#Криста:
Любишь химию?[p]
#Джо:
Только за то, что тут можно иногда позабавиться со всякой цветастой жижей.[p]
А вот от всяких формул мозги пухнут. Я больше практик, чем теоретик...[p]
#
[_tb_end_text]

[jump  storage="Corner.ks"  target="*EndClasses"  ]
*NoSympathyJoeh

[tb_start_text mode=1 ]
Джо настолько уверенно выполнял все действия, что через несколько минут я засомневалась, что вообще нужна ему как партнёр.[p]
И несмотря на то, что многое было сделано довольно небрежно и с незначительными неточностями, Джо закончил практическую часть раньше положенного.[p]
Не желая чувствовать себя бесполезной, я занялась отчётом, стараясь как можно подробнее описать выполненную работу.[p]
[_tb_end_text]

[jump  storage="Corner.ks"  target="*EndClasses"  ]
*ClassNick

[tb_eval  exp="f.Nick+=1"  name="Nick"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[chara_hide  name="Joeh"  time="1000"  wait="true"  pos_mode="true"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  left="-50"  top="140"  width="469"  height="762"  reflect="true"  ]
[tb_start_text mode=1 ]
Мы быстро распределили обязанности и взялись за работу.[p]
Я зачитывала шаги по методичке, а Ник осторожно отмерял нужное количество вещества и переливал из пробирки в пробирку.[p]
[_tb_end_text]

[jump  storage="Corner.ks"  target="*SympathyNick"  cond="f.Nick>5"  ]
[jump  storage="Corner.ks"  target="*NoSympathyNick"  ]
*SympathyNick

[tb_start_text mode=1 ]
Несмотря на то, что лабораторная была достаточно сложной, и крайне важно было не отвлекаться,[p]
я поймала себя на мысли, что то и дело возвращаю взгляд к Нику.[p]
К изящным пальцам, которые так осторожно работают со стеклянными прибирками.[p]
К этой дурацкой прядке, что постоянно падает на лицо. [p]
И к невозможно голубым глазам, которые должны быть сосредоточены на работе, но почему-то частенько поглядывают на меня...[p]
Ой![p]
Я смущённо уронила взгляд в тетрадь, понимая, что краснею. [p]
#Криста:
Не смотри на меня так...[p]
#Ник:
Стоит ли мне сказать, что ты первая начала?[p]
#Криста:
Определённо не стоит...[p]
#
Так, дурацки хихикая и переглядываясь весь урок, мы закончили работу.[p]
На удивление даже нигде не напортачив...[p]
[_tb_end_text]

[jump  storage="Corner.ks"  target="*EndClasses"  ]
*NoSympathyNick

[tb_start_text mode=1 ]
Несмотря на то, что лабораторная была достаточно сложной, совместными усилиями мы справились даже раньше положенного срока.[p]
Тщательно проверив всё несколько раз, я удовлетворённо кивнула Нику, благодаря за работу.[p]
[_tb_end_text]

*EndClasses

[chara_hide_all  time="1000"  wait="true"  ]
[tb_start_text mode=1 ]
А к концу дня по всей школе бродили сплетни, что Мия отравилась ZИ и находится в городской больнице.[p]
Такие новости пугали.[p]
[_tb_end_text]

[tb_start_text mode=4 ]
Чтобы узнать всё подробнее, я решила съездить к Мие...
[_tb_end_text]

[chara_show  name="Joeh"  time="1000"  wait="true"  left="0"  top="150"  width="386"  height="626"  reflect="false"  ]
[chara_show  name="Nick"  time="1000"  wait="true"  left="839"  top="150"  width="446"  height="730"  reflect="true"  ]
[glink  color="btn_22_purple"  storage="Corner.ks"  size="20"  text="c&nbsp;Джо"  x="540"  y="333"  width="100"  height="25"  _clickable_img=""  target="*Hospital_Joeh"  glink_sm="true"  ]
[glink  color="btn_22_blue"  storage="Corner.ks"  size="20"  text="c&nbsp;Ником"  x="640"  y="333"  width="100"  height="25"  _clickable_img=""  target="*Hospital_Nick"  glink_sm="true"  ]
[glink  color="btn_22_black"  storage="Hospital.ks"  size="20"  text="в&nbsp;одиночку"  x="537"  y="378"  width="206"  height="25"  _clickable_img=""  glink_sm="true"  ]
[s  ]
*Hospital_Joeh

[tb_eval  exp="f.Joeh_Hosp=1"  name="Joeh_Hosp"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[chara_hide  name="Nick"  time="1000"  wait="true"  pos_mode="true"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  storage="chara/1/Krista_.png"  width="467"  height="762"  left="870"  top="160"  reflect="false"  ]
[tb_start_text mode=1 ]
Подойдя к Джо после занятий, я попросила его подвезти меня до городской больницы.[p]
Джо, кивнув, махнул рукой, показывая мне дорогу к своей машине.[p]
#Джо:
Погнали. Я как раз сам хотел съездить, у меня там... Впрочем, неважно.[p]
Уверен, Мия в порядке. Этим сплетницам лишь бы раздуть муху до размера слона.[p]
#
[_tb_end_text]

[jump  storage="Hospital.ks"  target=""  ]
*Hospital_Nick

[tb_eval  exp="f.Nick_Hosp=1"  name="Nick_Hosp"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[chara_hide  name="Joeh"  time="1000"  wait="true"  pos_mode="true"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  storage="chara/1/Krista_.png"  width="469"  height="768"  left="-80"  top="149"  reflect="true"  ]
[tb_start_text mode=1 ]
Подойдя к Нику после занятий, я попросила его подвезти меня до городской больницы.[p]
#Ник:
К Мие?[p]
#Криста:
Ага...[p]
#Ник:
Конечно, едем.[p]
Не волнуйся, я уверен, с ней всё будет в порядке.[p]
Сплетни скорее всего преувеличивают...[p]
#
[_tb_end_text]

[jump  storage="Hospital.ks"  target=""  ]
