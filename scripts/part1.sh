#!/bin/bash
cd /root/lab0 || exit 1
git init
#создание каталогов
mkdir -p claude_monet/kitchen/hot_station
mkdir -p claude_monet/kitchen/cold_station
mkdir -p claude_monet/hall
mkdir -p claude_monet/office
mkdir -p locker_room

#заполнение
echo "Подготовить горячий цех к вечерней смене" > claude_monet/kitchen/hot_station/barinov_order
echo "Проверить рабочие места поваров" >> claude_monet/kitchen/hot_station/barinov_order
echo "Макса к плите без разрешения не подпускать" >> claude_monet/kitchen/hot_station/barinov_order

echo "Сеня отвечает за мясные блюда" > claude_monet/kitchen/hot_station/senya_task
echo "Получить продукты на складе" >> claude_monet/kitchen/hot_station/senya_task
echo "Перед закрытием проверить остатки" >> claude_monet/kitchen/hot_station/senya_task

echo "Федя отвечает за рыбные блюда" > claude_monet/kitchen/cold_station/fedya_task
echo "Проверить свежесть сибаса и дорадо" >> claude_monet/kitchen/cold_station/fedya_task
echo "Подготовить холодные закуски для гостей" >> claude_monet/kitchen/cold_station/fedya_task

echo "Утиная ножка с овощами" > claude_monet/kitchen/menu_draft
echo "Луковый суп по рецепту шефа" >> claude_monet/kitchen/menu_draft
echo "Фирменный десерт от Луи" >> claude_monet/kitchen/menu_draft
echo "Новое блюдо Макса отправлено на доработку" >> claude_monet/kitchen/menu_draft

echo "Столик 3 забронирован на восемнадцать часов" > claude_monet/hall/reservations
echo "Столик 7 подготовить для постоянных гостей" >> claude_monet/hall/reservations
echo "Большой стол оставить для вечернего банкета" >> claude_monet/hall/reservations

echo "Гости похвалили десерт и работу официантов" > claude_monet/hall/guest_reviews
echo "Один гость слишком долго ждал горячее блюдо" >> claude_monet/hall/guest_reviews
echo "Постоянные гости попросили вернуть старое меню" >> claude_monet/hall/guest_reviews
echo "Новый повар Макс показался гостям растерянным" >> claude_monet/hall/guest_reviews

echo "Вика проводит собрание перед открытием ресторана" > claude_monet/office/vika_schedule
echo "В семнадцать часов проверить готовность зала" >> claude_monet/office/vika_schedule
echo "После смены принять отчёт от Макса" >> claude_monet/office/vika_schedule

echo "Максим Лавров приехал в Москву из Воронежа" > locker_room/max_resume
echo "Хочет стать профессиональным поваром" >> locker_room/max_resume
echo "Готов работать в ресторане Claude Monet" >> locker_room/max_resume
echo "Опыта мало, но желания много" >> locker_room/max_resume

echo "Лёва должен показать Максу рабочее место" > locker_room/leva_note
echo "Объяснить правила кухни и порядок выдачи блюд" >> locker_room/leva_note
echo "О результате доложить Виктору Петровичу" >> locker_room/leva_note

echo "Владелец ресторана приедет вечером" > nagiev_message
echo "Подготовить лучший стол в зале" >> nagiev_message
echo "Баринов должен лично представить новое меню" >> nagiev_message

echo "Макс прибыл в ресторан вовремя" > first_shift
echo "Лёва выдал ему форму" >> first_shift
echo "Первая задача получена от шефа" >> first_shift

#права_каталоги
chmod 755 claude_monet
chmod u=rwx,g=rx,o= claude_monet/kitchen
chmod 770 claude_monet/kitchen/hot_station
chmod u=rwx,g=rx,o= claude_monet/kitchen/cold_station
chmod 755 claude_monet/hall
chmod u=rwx,g=x,o= claude_monet/office
chmod u=rwx,g=rx,o= locker_room

#права_файлыы
chmod u=rw,g=r,o= claude_monet/kitchen/hot_station/barinov_order
chmod 640 claude_monet/kitchen/hot_station/senya_task
chmod 600 claude_monet/kitchen/cold_station/fedya_task
chmod u=rw,g=r,o=r claude_monet/kitchen/menu_draft
chmod u=rw,g=rw,o=r claude_monet/hall/reservations
chmod 444 claude_monet/hall/guest_reviews
chmod 640 claude_monet/office/vika_schedule
chmod 600 locker_room/max_resume
chmod u=r,g=r,o= locker_room/leva_note
chmod 444 nagiev_message
chmod u=rw,g=r,o=r first_shift

echo "Часть 1 завершена"
ls -lR
git add .
git commit -m "first cmmt"
